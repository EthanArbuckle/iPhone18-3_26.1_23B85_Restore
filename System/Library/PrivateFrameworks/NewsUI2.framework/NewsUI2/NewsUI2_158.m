uint64_t sub_219877D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v77 = a7;
  v78 = a8;
  v71 = a5;
  v72 = a3;
  v74 = MEMORY[0x277D32010];
  sub_21987A71C(0, &qword_280E91C10, MEMORY[0x277D32010], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v59 - v13;
  v14 = sub_219BE59F4();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BF0504();
  v67 = *(v70 - 8);
  v16 = MEMORY[0x28223BE20](v70);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v59 - v18;
  v64 = sub_219BF0EE4();
  v19 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF0F34();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v65 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  v79 = a4;
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v31;
  (*(v31 + 32))(v30, a2, a4);
  v32 = a6(0);
  v60 = a1;
  sub_219BF07D4();
  v33 = sub_219BF0F14();
  v61 = v22;
  v62 = v33;
  v34 = *(v23 + 8);
  v34(v28, v22);
  sub_219BF07D4();
  sub_219BF0EF4();
  v34(v28, v22);
  v35 = v63;
  sub_219BF0EC4();
  (*(v19 + 8))(v21, v64);
  v36 = v66;
  v37 = v67;
  v38 = v70;
  (*(v67 + 104))(v66, *MEMORY[0x277D32D20], v70);
  sub_219BF04F4();
  v39 = *(v37 + 8);
  v39(v36, v38);
  v39(v35, v38);
  v70 = v30;
  v40 = sub_219BF4F74();
  v41 = sub_2194797A4(v40, v72);
  v42 = v65;
  v43 = v60;
  sub_219BF07D4();
  v44 = v69;
  sub_219BF0E24();
  v45 = v62;
  v34(v42, v61);
  v46 = v68;
  v47 = sub_219BEE404();
  LODWORD(v34) = (*(*(v47 - 8) + 48))(v44, 1, v47);
  sub_21987A6A8(v44, &qword_280E91C10, v74);
  swift_unknownObjectRetain();
  v48 = v32;
  v49 = sub_219BF07B4();
  *v46 = v45;
  v51 = v46 + 1;
  if (v34 == 1)
  {
    *v51 = 0;
    v46[2] = 0;
    v51 = v46 + 3;
    v52 = MEMORY[0x277D31A58];
    v53 = 4;
  }

  else
  {
    v52 = MEMORY[0x277D31A20];
    v53 = 2;
  }

  *v51 = v49;
  v46[v53] = v50;
  v55 = v75;
  v54 = v76;
  (*(v75 + 104))(v46, *v52, v76);
  sub_219BE5A14();
  MEMORY[0x21CEBC780](v46, v41);
  v56 = swift_allocObject();
  *(v56 + 16) = v45;
  *(v56 + 24) = v41;
  v57 = sub_219BE59A4();
  (*(*(v48 - 8) + 8))(v43, v48);
  (*(v55 + 8))(v46, v54);
  (*(v73 + 8))(v70, v79);
  return v57;
}

uint64_t sub_219878438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v54 = a6;
  v55 = a7;
  v45 = a4;
  v42 = a5(0);
  v52 = *(v42 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v42);
  v51 = &v42 - v10;
  v50 = sub_219BE59F4();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF0AC4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = *(v21 + 32);
  v46 = a3;
  v47 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22(v47, a2, a3);
  v44 = sub_219BE5A14();
  sub_219BF07D4();
  v23 = sub_219BF0A74();
  v24 = *(v14 + 8);
  v24(v19, v13);
  v25 = sub_219BF4F74();
  v45 = sub_2194797A4(v25, v23);
  sub_21987A3EC();
  v27 = *(v26 + 48);
  v28 = v42;
  sub_219BF07D4();
  v29 = sub_219BF0AA4();
  v30 = v13;
  v24(v19, v13);
  *v12 = v29;
  v31 = v43;
  v32 = v28;
  sub_219BF07D4();
  sub_219BF0A44();
  v24(v31, v30);
  sub_219BF1CF4();
  v33 = sub_219BF1D14();
  (*(*(v33 - 8) + 56))(v12 + v27, 0, 1, v33);
  v34 = v48;
  v35 = v50;
  (*(v48 + 104))(v12, *MEMORY[0x277D31A38], v50);
  MEMORY[0x21CEBC780](v12, v45);

  (*(v34 + 8))(v12, v35);
  v37 = v51;
  v36 = v52;
  (*(v52 + 16))(v51, a1, v32);
  v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v39 = swift_allocObject();
  (*(v36 + 32))(v39 + v38, v37, v32);
  v40 = sub_219BE59A4();
  (*(v36 + 8))(a1, v32);
  (*(v49 + 8))(v47, v46);
  return v40;
}

uint64_t sub_219878938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v38 = a5;
  v39 = a3;
  v40 = a1;
  v34 = a6(0);
  v10 = *(v34 - 8);
  v42 = *(v10 + 64);
  MEMORY[0x28223BE20](v34);
  v41 = &v33 - v11;
  v36 = sub_219BEDB94();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BE59F4();
  v15 = *(v35 - 8);
  v16 = MEMORY[0x28223BE20](v35);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a4;
  v19 = *(a4 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 32))(v21, a2, a4);
  v33 = sub_219BE5A14();
  v22 = sub_219BF4F74();
  v23 = sub_2194797A4(v22, v39);
  v24 = v40;
  sub_219BF07D4();
  v25 = sub_219BEDB74();
  (*(v12 + 8))(v14, v36);
  *v18 = v25;
  v18[1] = 0;
  v26 = v35;
  (*(v15 + 104))(v18, *MEMORY[0x277D31A10], v35);
  MEMORY[0x21CEBC780](v18, v23);

  (*(v15 + 8))(v18, v26);
  v27 = v41;
  v28 = v34;
  (*(v10 + 16))(v41, v24, v34);
  v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v30 = swift_allocObject();
  (*(v10 + 32))(v30 + v29, v27, v28);
  v31 = sub_219BE59A4();
  (*(v10 + 8))(v24, v28);
  (*(v19 + 8))(v21, v37);
  return v31;
}

uint64_t sub_219878D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a3;
  v39 = MEMORY[0x277D32010];
  sub_21987A71C(0, &qword_280E91C10, MEMORY[0x277D32010], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_219BE59F4();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v17;
  (*(v17 + 32))(v16, a2, a4);
  sub_218985EAC();
  v19 = v18;
  sub_219BF07D4();
  v20 = *(v44 + 16);
  swift_unknownObjectRetain();

  sub_219BF07D4();

  v43 = a4;
  v21 = sub_219BF4F74();
  v38 = sub_2194797A4(v21, v38);
  sub_219BF07D4();
  v22 = v39;
  sub_21987AAC0(v44 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v10, &qword_280E91C10, v39);

  v23 = sub_219BEE404();
  v24 = (*(*(v23 - 8) + 48))(v10, 1, v23);
  v25 = a1;
  sub_21987A6A8(v10, &qword_280E91C10, v22);
  swift_unknownObjectRetain();
  v26 = sub_219BF07B4();
  *v14 = v20;
  v28 = v14 + 1;
  if (v24 == 1)
  {
    *v28 = 0;
    v14[2] = 0;
    v28 = v14 + 3;
    v29 = MEMORY[0x277D31A58];
    v30 = 4;
  }

  else
  {
    v29 = MEMORY[0x277D31A20];
    v30 = 2;
  }

  *v28 = v26;
  v14[v30] = v27;
  v32 = v41;
  v31 = v42;
  (*(v41 + 104))(v14, *v29, v42);
  sub_219BE5A14();
  v33 = v38;
  MEMORY[0x21CEBC780](v14, v38);
  v34 = swift_allocObject();
  *(v34 + 16) = v20;
  *(v34 + 24) = v33;
  v35 = sub_219BE59A4();
  (*(*(v19 - 8) + 8))(v25, v19);
  (*(v32 + 8))(v14, v31);
  (*(v40 + 8))(v16, v43);
  return v35;
}

uint64_t sub_21987915C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v77 = a7;
  v75 = a6;
  v81 = a2;
  v82 = a5;
  v10 = MEMORY[0x277D83D88];
  sub_21987A71C(0, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v64 - v12;
  v76 = sub_219BF3B34();
  v74 = *(v76 - 1);
  v13 = MEMORY[0x28223BE20](v76);
  v64 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v64 - v15;
  v72 = sub_219BE59F4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21987A71C(0, &unk_280E90A30, MEMORY[0x277D33058], v10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_219BF1094();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v66 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - v25;
  v27 = sub_219BF0F34();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v69 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v30;
  MEMORY[0x28223BE20](v29);
  v70 = &v64 - v31;
  v85[3] = a3;
  v85[4] = a4;
  v78 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  v33 = *(*(a3 - 8) + 32);
  v80 = a3;
  v33(boxed_opaque_existential_1, v81, a3);
  v79 = sub_219BE5A14();
  v81 = v82(0);
  v82 = a1;
  sub_219BF07D4();
  sub_219BF1074();
  v34 = *(v22 + 8);
  v68 = v21;
  v34(v26, v21);
  v35 = v27;
  if ((*(v28 + 48))(v20, 1, v27) == 1)
  {
    v36 = v79;
    v37 = v80;
    sub_21987A6A8(v20, &unk_280E90A30, MEMORY[0x277D33058]);
    v38 = v66;
    v39 = v82;
    sub_219BF07D4();
    v40 = v73;
    sub_219BF1014();
    v34(v38, v68);
    v41 = v74;
    v42 = v76;
    if ((*(v74 + 48))(v40, 1, v76) == 1)
    {
      (*(*(v81 - 8) + 8))(v39);
      sub_21987A6A8(v40, &qword_27CC20280, MEMORY[0x277D34048]);
      v43 = 0;
    }

    else
    {
      v57 = v65;
      (*(v41 + 32))(v65, v40, v42);
      v58 = v64;
      (*(v41 + 16))(v64, v57, v42);
      sub_218718690(v85, v83);
      v59 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
      MEMORY[0x28223BE20](v59);
      v61 = &v64 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v62 + 16))(v61);
      v43 = sub_2198772D4(v58, v61, v36, v37, v78);
      (*(*(v81 - 8) + 8))(v39);
      (*(v41 + 8))(v57, v42);
      __swift_destroy_boxed_opaque_existential_1(v83);
    }
  }

  else
  {
    v44 = v28;
    v76 = *(v28 + 32);
    v45 = v70;
    (v76)(v70, v20, v35);
    sub_219BF0F24();
    v46 = sub_219BF4F74();
    v80 = v46;
    v47 = sub_219BF0F14();
    v48 = v81;
    v49 = sub_219BF07B4();
    *v17 = v47;
    v17[1] = 0;
    v17[2] = 0;
    v17[3] = v49;
    v17[4] = v50;
    v51 = v71;
    v52 = v72;
    (*(v71 + 104))(v17, *MEMORY[0x277D31A58], v72);
    v78 = MEMORY[0x21CEBC780](v17, v46);
    (*(v51 + 8))(v17, v52);
    v53 = v69;
    (*(v44 + 16))(v69, v45, v35);
    v54 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v55 = (v67 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    (v76)(v56 + v54, v53, v35);
    *(v56 + v55) = v80;
    v43 = sub_219BE59A4();
    (*(*(v48 - 8) + 8))(v82, v48);
    (*(v44 + 8))(v45, v35);
  }

  __swift_destroy_boxed_opaque_existential_1(v85);
  return v43;
}

uint64_t sub_219879A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v45 = a6;
  v46 = a7;
  v39[1] = a4;
  v44 = sub_219BE59F4();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF07A4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 32);
  v40 = a3;
  v21(v19, a2, a3);
  v39[2] = sub_219BE5A14();
  v22 = a5(0);
  v41 = a1;
  sub_219BF07D4();
  v39[0] = sub_219BF06B4();
  v23 = *(v14 + 8);
  v23(v17, v13);
  sub_219BF07D4();
  sub_219BF0684();
  v23(v17, v13);
  v24 = sub_219BF4F74();
  sub_21987A71C(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
  v25 = sub_219BEAAD4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09EC0;
  v30 = v29 + v28;
  v31 = *(v26 + 104);
  v31(v30, *MEMORY[0x277D31B18], v25);
  v31(v30 + v27, *MEMORY[0x277D31B10], v25);
  v32 = v39[0];
  *v12 = v39[0];
  v12[1] = v29;
  v12[2] = 0;
  v33 = v42;
  v34 = v44;
  (*(v42 + 104))(v12, *MEMORY[0x277D31A28], v44);
  v35 = v32;
  MEMORY[0x21CEBC780](v12, v24);
  (*(v33 + 8))(v12, v34);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v24;
  v37 = sub_219BE59A4();
  (*(*(v22 - 8) + 8))(v41, v22);
  (*(v43 + 8))(v19, v40);
  return v37;
}

uint64_t sub_219879E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v35 = a1;
  sub_21987A35C(0, &qword_280E90E40, sub_2189699BC, sub_218969A10);
  v6 = v5;
  v7 = *(v5 - 8);
  v34 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - v8;
  v30 = sub_219BE59F4();
  v9 = *(v30 - 8);
  v10 = MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 32))(v14, a2, a3);
  v29 = sub_219BE5A14();
  v16 = sub_219BF4F74();
  sub_21987A3EC();
  v18 = *(v17 + 48);
  sub_219BF07D4();
  v19 = v37[0];
  swift_unknownObjectRetain();
  sub_218969A64(v37);
  *v12 = v19;
  sub_219BF07D4();
  v20 = v36[2];
  sub_218969A64(v36);
  sub_219BF1CF4();
  v21 = sub_219BF1D14();
  (*(*(v21 - 8) + 56))(&v12[v18], 0, 1, v21);
  v22 = v30;
  (*(v9 + 104))(v12, *MEMORY[0x277D31A38], v30);
  MEMORY[0x21CEBC780](v12, v16);

  (*(v9 + 8))(v12, v22);
  v23 = v33;
  v24 = v35;
  (*(v7 + 16))(v33, v35, v6);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v7 + 32))(v26 + v25, v23, v6);
  v27 = sub_219BE59A4();
  (*(v7 + 8))(v24, v6);
  (*(v32 + 8))(v14, v31);
  return v27;
}

uint64_t sub_21987A2C4()
{
  sub_21987A35C(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00);

  return sub_2198761B8();
}

void sub_21987A35C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BF0854();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21987A3EC()
{
  if (!qword_27CC20248)
  {
    sub_21873FA4C();
    sub_21987A71C(255, &unk_27CC10910, MEMORY[0x277D335C0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20248);
    }
  }
}

uint64_t objectdestroy_21Tm_1(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  sub_21987A35C(0, a1, a2, a3);
  (*(*(v4 - 8) + 8))(v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80)), v4);

  return swift_deallocObject();
}

uint64_t sub_21987A528()
{
  sub_21987A35C(0, &qword_280E90E40, sub_2189699BC, sub_218969A10);

  return sub_219875500();
}

uint64_t sub_21987A6A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21987A71C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21987A71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_75Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_21987AAC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21987A71C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_30Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = sub_219BF0F34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21987AC38()
{
  sub_219BF0F34();

  return sub_219874E04();
}

uint64_t sub_21987ACD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_219BDDB54();
  v16 = *(v6 - 8);
  v7 = (*(v16 + 88))(a1, v6);
  if (v7 == *MEMORY[0x277D2FC50])
  {

    v8 = MEMORY[0x277D6E598];
LABEL_10:
    v9 = *v8;
    v10 = sub_219BE9414();
    v11 = *(*(v10 - 8) + 104);

    return v11(a3, v9, v10);
  }

  if (v7 == *MEMORY[0x277D2FC58])
  {

    v8 = MEMORY[0x277D6E5A0];
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277D2FC40])
  {

    *a3 = 0;
    a3[1] = 0;
LABEL_9:
    v8 = MEMORY[0x277D6E590];
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277D2FC48])
  {
    *a3 = a2;
    a3[1] = 0;
    goto LABEL_9;
  }

  v13 = *MEMORY[0x277D6E598];
  v14 = sub_219BE9414();
  (*(*(v14 - 8) + 104))(a3, v13, v14);
  v15 = *(v16 + 8);

  return v15(a1, v6);
}

uint64_t sub_21987AED4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  LOBYTE(a3) = (*(a3 + 64))(v6, v8, a2, a3);

  return a3 & 1;
}

uint64_t OfflineIssueManagerType.download(issue:source:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  v11 = (*(a4 + 24))(v8, v10, a2, a3, a4);

  return v11;
}

uint64_t sub_21987B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 56))(a3, a4);
  sub_219BE2184();

  LOBYTE(a2) = sub_2188537B8(a1, a2, v7);

  return a2 & 1;
}

uint64_t OfflineIssueManagerType.isDownloaded(issue:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  LOBYTE(a3) = sub_21987B00C(v6, v8, a2, a3);

  return a3 & 1;
}

uint64_t sub_21987B1AC(uint64_t *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_issueIDsAvailableOffline);
    v4 = result;

    v5 = *(v1 + 32);
    LODWORD(v4) = v5 & 0x3F;
    v6 = ((1 << v5) + 63) >> 6;
    v7 = 8 * v6;

    if (v4 > 0xD)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v23 = v6;
      v24 = v3;
      v22[1] = v22;
      MEMORY[0x28223BE20](v8);
      v9 = v22 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v9, v7);
      v7 = 0;
      v10 = 0;
      v11 = 1 << *(v1 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v6 = v12 & *(v1 + 56);
      v13 = (v11 + 63) >> 6;
      while (v6)
      {
        v14 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
LABEL_13:
        v17 = v14 | (v10 << 6);

        v3 = sub_219BF5624();

        if (v3)
        {
          *&v9[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v7++, 1))
          {
            __break(1u);
LABEL_17:
            v19 = sub_21987C7C8(v9, v23, v7, v1);
            goto LABEL_18;
          }
        }
      }

      v15 = v10;
      while (1)
      {
        v10 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v10 >= v13)
        {
          goto LABEL_17;
        }

        v16 = *(v1 + 56 + 8 * v10);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v6 = (v16 - 1) & v16;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v20 = swift_slowAlloc();
    v21 = sub_21987C3DC(v20, v6, v1, sub_21987B484);

    MEMORY[0x21CECF960](v20, -1, -1);
    v19 = v21;
LABEL_18:
    v25 = v19;
    sub_21987CA0C();
    sub_219BE21B4();
  }

  return result;
}

void sub_21987B4BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 backgroundRefreshStatus];

    v1[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshEnabled] = v3 != 1;
  }
}

id sub_21987B560()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshChangeObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21987B760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_219BF1584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21987D8F0(0, &unk_27CC16B98, sub_2186FB5EC, &type metadata for IssueOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29[-v12];
  if (a3 < 2)
  {
    goto LABEL_2;
  }

  if (a3 != 2)
  {
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  if (*(v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshEnabled))
  {
LABEL_2:
    sub_219BF1B74();
    if ((*(v8 + 48))(v13, 1, v7) == 1)
    {
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_storageLevelProvider), *(v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_storageLevelProvider + 24));

      sub_219BE2CF4();

      sub_219BE2184();

      if (v29[7] == 2)
      {
        type metadata accessor for OfflineIssueManager.Errors();
        sub_21987C394(&qword_27CC202C8, 255, type metadata accessor for OfflineIssueManager.Errors);
        v14 = swift_allocError();
        v16 = v15;
        sub_2186F083C();
        (*(*(v17 - 8) + 56))(v16, 3, 7, v17);
      }

      else
      {
        v24 = *(v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);
        v25 = sub_219BF53D4();
        v26 = [v24 containsIssueID_];

        if (!v26 || a3 == 1)
        {
          v27 = sub_219BF53D4();
          [v24 addIssueID:v27 source:a3];
        }

        return sub_21987BC68(a1, a2);
      }
    }

    else
    {
      (*(v8 + 32))(v10, v13, v7);
      type metadata accessor for OfflineIssueManager.Errors();
      sub_21987C394(&qword_27CC202C8, 255, type metadata accessor for OfflineIssueManager.Errors);
      v14 = swift_allocError();
      v19 = v18;
      (*(v8 + 16))(v18, v10, v7);
      sub_2186F083C();
      (*(*(v20 - 8) + 56))(v19, 0, 7, v20);
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    type metadata accessor for OfflineIssueManager.Errors();
    sub_21987C394(&qword_27CC202C8, 255, type metadata accessor for OfflineIssueManager.Errors);
    v14 = swift_allocError();
    v22 = v21;
    sub_2186F083C();
    (*(*(v23 - 8) + 56))(v22, 7, 7, v23);
  }

  return v14;
}

uint64_t sub_21987BC68(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE6234();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager + 24);
  v10 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager), v9);
  (*(v10 + 40))(a1, a2, v9, v10);
  v11 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);

  v12 = sub_219BF53D4();
  v13 = [v11 sourceForIssueID_];

  type metadata accessor for IssueDownload();
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  (*(v6 + 104))(v8, *MEMORY[0x277D6D560], v5);
  sub_2191E3E58();
  swift_allocObject();
  *(v14 + 72) = sub_219BE2174();
  v19[0] = 0;
  sub_21987D9A4(0, &qword_280EE7AB0, MEMORY[0x277D839F8], MEMORY[0x277D6CB78]);
  swift_allocObject();
  *(v14 + 80) = sub_219BE2174();
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;
  *(v14 + 64) = v13;
  sub_219BE2184();
  sub_219BE2164();
  (*(v6 + 8))(v8, v5);

  v15 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_219BE2184();
  v18 = v19[0];
  sub_219BE21B4();

  v16 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_destroy_boxed_opaque_existential_1(v19);

  return v14;
}

uint64_t sub_21987C03C()
{
  sub_21987D9A4(0, &qword_280EE69D8, MEMORY[0x277D83B88], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21987C0BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);
  v2 = sub_219BF53D4();
  v3 = [v1 everContainedIssueID_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_219BF53D4();
  v5 = [v1 containsIssueID_];

  return v5 ^ 1;
}

uint64_t sub_21987C15C(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_219BF5414();
  v4 = v3;

  sub_219BE2184();
  v5 = sub_2188537B8(v2, v4, v7);

  return v5 & 1;
}

void *sub_21987C1F4(uint64_t a1, uint64_t a2)
{
  result = sub_21987B760(a1, a2, 1uLL);
  if ((v3 & 1) == 0)
  {
    sub_218BFF748(result, 0);
    return 0;
  }

  return result;
}

void sub_21987C230(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);
  sub_21987D9A4(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_219BF5904();

  [v5 removeIssueIDs_];
}

uint64_t sub_21987C310(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_21987C394(qword_280ED0B38, a2, type metadata accessor for OfflineIssueManager);
  result = sub_21987C394(&qword_280ED0B30, v3, type metadata accessor for OfflineIssueManager);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21987C394(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_21987C3DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_21987D718(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_21987C46C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SearchFilterItem();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_2194B79E8();
  result = sub_219BF72E4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v29 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v32 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v30 + 72);
    sub_218736148(v19 + v33 * (v16 | (v14 << 6)), v10, type metadata accessor for SearchFilterItem);
    sub_219BF7AA4();
    sub_219BF5524();
    MEMORY[0x21CECE850](v10[32]);
    sub_219BF5524();
    sub_219BDBD34();
    sub_21987C394(&qword_27CC1AD70, 255, MEMORY[0x277CC9578]);
    sub_219BF52F4();
    result = sub_219BF7AE4();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v29;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v29;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_21872D1E4(v10, *(v11 + 48) + v23 * v33, type metadata accessor for SearchFilterItem);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v32;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v32 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987C7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_218726BC4(0, &unk_280E8D620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_219BF7AA4();

    sub_219BF5524();
    result = sub_219BF7AE4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21987CA0C()
{
  result = qword_280E8E9C0;
  if (!qword_280E8E9C0)
  {
    sub_218726BC4(255, &qword_280E8E9E0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E9C0);
  }

  return result;
}

uint64_t sub_21987CA90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AudioFeedTrack(0);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v26 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_2194B567C();
  result = sub_219BF72E4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v25 = result + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v29 = (v12 - 1) & v12;
LABEL_16:
    v17 = a4;
    v18 = v26;
    v19 = *(v27 + 72);
    v20 = *(a4 + 48) + v19 * (v14 | (v13 << 6));
    v30 = type metadata accessor for AudioFeedTrack;
    v31 = v19;
    sub_218736148(v20, v26, type metadata accessor for AudioFeedTrack);
    sub_219BF7AA4();
    v21 = [*v18 identifier];
    sub_219BF5414();

    sub_219BF5524();

    sub_2198DA178();
    sub_219BF7AE4();
    v22 = v25;
    v23 = sub_219BF71A4();
    *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_21872D1E4(v18, *(v10 + 48) + v23 * v31, v30);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v17;
    v12 = v29;
    if (!a3)
    {
LABEL_18:

      return v10;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_18;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v29 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21987CD38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_21987D8F0(0, &qword_27CC1A958, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = *(a4 + 48) + 16 * (v12 | (v11 << 6));
    result = sub_2194A1250(*v15, *(v15 + 8), v6);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21987CE94(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_218726BC4(0, &unk_27CC1AA60, MEMORY[0x277D83B88], MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_219BF7A94();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987D0A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_21987D8F0(0, &qword_280E8D690, sub_218F0014C, &type metadata for TodayFeedPoolServiceContent, MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_219BF7AA4();
    MEMORY[0x21CECE850](v16);
    result = sub_219BF7AE4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987D2D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_218726BC4(0, &unk_27CC1A930, MEMORY[0x277D849A8], MEMORY[0x277D849B8], MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    result = MEMORY[0x21CECE820](*(v9 + 40), v16, 4);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987D4E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_21987D8F0(0, &unk_280E8D6B0, sub_2194B5C2C, &type metadata for EmailNewsletterFeature, MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_219BF7AA4();
    MEMORY[0x21CECE850](v16);
    result = sub_219BF7AE4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987D718(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_21987C7C8(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_21987D8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata accessor for OfflineIssueManager.Errors()
{
  result = qword_27CC202D0;
  if (!qword_27CC202D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21987D9A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21987DA1C()
{
  sub_2186F083C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21987DAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_218D37B4C();
  v30 = v3;
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E28A4(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v32 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = sub_219BED8D4();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21987E864(0, &unk_27CC202E8, MEMORY[0x277D844C8]);
  v36 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21987E750();
  v35 = v12;
  v16 = v37;
  sub_219BF7B34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v32;
  v25 = v13;
  v37 = v15;
  LOBYTE(v38) = 0;
  sub_21987E8C8(&unk_280E92630, MEMORY[0x277D31C50]);
  v18 = v33;
  sub_219BF7734();
  (*(v31 + 32))(v37, v18, v8);
  LOBYTE(v38) = 1;
  sub_21950EEF0(&unk_280EE6780);
  sub_219BF7734();
  v33 = v8;
  sub_219BE3384();
  (*(v29 + 8))(v7, v17);
  v19 = v25;
  v20 = v37;
  *&v37[*(v25 + 20)] = v38;
  LOBYTE(v38) = 2;
  sub_21987E8C8(&unk_280EE6800, sub_218D37B4C);
  v21 = v28;
  v22 = v30;
  sub_219BF7734();
  sub_219BE3384();
  (*(v26 + 8))(v21, v22);
  (*(v34 + 8))(v35, v36);
  *(v20 + *(v19 + 24)) = v38;
  sub_21987E7A4(v20, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21987E808(v20);
}

uint64_t sub_21987E080(void *a1)
{
  v2 = v1;
  sub_218D37B4C();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E28A4(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  sub_21987E864(0, &unk_280E8C4D0, MEMORY[0x277D84538]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21987E750();
  sub_219BF7B44();
  v27 = 0;
  sub_219BED8D4();
  sub_21987E8C8(&qword_280E92640, MEMORY[0x277D31C50]);
  v15 = v23;
  sub_219BF7834();
  if (v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v12;
  v17 = v20;
  v18 = type metadata accessor for NewspaperMagazineFeedGroup();
  sub_2186D6710(0, &qword_280E8E390);
  swift_unknownObjectRetain();
  sub_219BE3404();
  v26 = 1;
  sub_21950EEF0(&unk_280EE6790);
  sub_219BF7834();
  (*(v21 + 8))(v9, v22);
  v24 = *(v2 + *(v18 + 24));
  sub_2186E28A4(0, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
  sub_218D37E78();

  sub_219BE33B4();
  v25 = 2;
  sub_21987E8C8(&qword_280EE6810, sub_218D37B4C);
  sub_219BF7834();
  (*(v19 + 8))(v6, v17);
  return (*(v23 + 8))(v14, v11);
}

uint64_t sub_21987E508(uint64_t a1)
{
  v2 = sub_21987E8C8(&unk_280EBB0D0, type metadata accessor for NewspaperMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21987E574(void *a1)
{
  a1[1] = sub_21987E8C8(&unk_280EBB0D0, type metadata accessor for NewspaperMagazineFeedGroup);
  a1[2] = sub_21987E8C8(&qword_280EBB098, type metadata accessor for NewspaperMagazineFeedGroup);
  result = sub_21987E8C8(&qword_280EBB0B0, type metadata accessor for NewspaperMagazineFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_21987E6F8(uint64_t a1)
{
  result = sub_21987E8C8(&qword_280EBB090, type metadata accessor for NewspaperMagazineFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21987E750()
{
  result = qword_280EBB0F0;
  if (!qword_280EBB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB0F0);
  }

  return result;
}

uint64_t sub_21987E7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperMagazineFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21987E808(uint64_t a1)
{
  v2 = type metadata accessor for NewspaperMagazineFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21987E864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21987E750();
    v7 = a3(a1, &type metadata for NewspaperMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21987E8C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21987E920(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v4 = 0x736E6F6974636573;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x724774616D726F66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB0000000070756FLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C656E6E616863;
  if (*a2 != 1)
  {
    v8 = 0x736E6F6974636573;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x724774616D726F66;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB0000000070756FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21987EA28()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21987EAD4()
{
  sub_219BF5524();
}

uint64_t sub_21987EB6C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21987EC14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21987EEB8();
  *a1 = result;
  return result;
}

void sub_21987EC44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000070756FLL;
  v4 = 0xE700000000000000;
  v5 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v5 = 0x736E6F6974636573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x724774616D726F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21987ECAC()
{
  v1 = 0x6C656E6E616863;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_21987ED10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21987EEB8();
  *a1 = result;
  return result;
}

uint64_t sub_21987ED38(uint64_t a1)
{
  v2 = sub_21987E750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21987ED74(uint64_t a1)
{
  v2 = sub_21987E750();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21987EDB4()
{
  result = qword_27CC202F8;
  if (!qword_27CC202F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC202F8);
  }

  return result;
}

unint64_t sub_21987EE0C()
{
  result = qword_280EBB0E0;
  if (!qword_280EBB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB0E0);
  }

  return result;
}

unint64_t sub_21987EE64()
{
  result = qword_280EBB0E8;
  if (!qword_280EBB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB0E8);
  }

  return result;
}

uint64_t sub_21987EEB8()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21987EF04(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v8 = sub_218B8EA70(a2, *a3);
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
    v10 = *(v9 + 16);

    v25 = v10;

    MEMORY[0x21CECC690](v11);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    type metadata accessor for SportsScores();
    v12 = swift_allocObject();
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = v25;
    swift_beginAccess();
    v13 = *a3;
    if ((*a3 & 0xC000000000000001) == 0)
    {
      goto LABEL_10;
    }

    if (v13 < 0)
    {
      v14 = *a3;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = sub_219BF7214();
    if (!__OFADD__(v15, 1))
    {
      *a3 = sub_21945DC60(v14, v15 + 1);
LABEL_10:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a3;
      sub_21948C258(v12, a2, isUniquelyReferenced_nonNull_native);
      *a3 = v24;
      return swift_endAccess();
    }

    __break(1u);
    goto LABEL_22;
  }

  swift_endAccess();
  sub_218BE55B8(0, &qword_280E8B5A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C146A0;
  *(v17 + 32) = a1;
  type metadata accessor for SportsScores();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v17;
  swift_beginAccess();
  v19 = *a3;
  if ((*a3 & 0xC000000000000001) == 0)
  {

LABEL_18:
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a3;
    sub_21948C258(v18, a2, v22);
    *a3 = v26;
    swift_endAccess();
    swift_beginAccess();

    MEMORY[0x21CECC690](v23);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      sub_219BF5A54();
      return swift_endAccess();
    }

LABEL_22:
    sub_219BF5A14();
    goto LABEL_19;
  }

  if (v19 < 0)
  {
    v20 = *a3;
  }

  else
  {
    v20 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_219BF7214();
  if (!__OFADD__(result, 1))
  {
    *a3 = sub_21945DC60(v20, result + 1);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_21987F1F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v12 = sub_219BF4034();
  if (v12)
  {
    v13 = [v12 name];
    swift_unknownObjectRelease();
    a3 = sub_219BF5414();
    a4 = v14;
  }

  else
  {
  }

  swift_beginAccess();
  v15 = *a5;
  if (*(*a5 + 16))
  {
    v16 = sub_21931ED80(a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      swift_endAccess();
      if (*(v18 + 16))
      {

        v19 = sub_21870F700(a3, a4);
        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * v19);

          v22 = *(v21 + 16);

          v46 = v22;

          MEMORY[0x21CECC690](v23);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v24 = v46;
          swift_beginAccess();
          v26 = sub_218D26A4C(v44, a2);
          if (*v25)
          {
            v27 = v25;
            type metadata accessor for SportsScores();
            v28 = swift_allocObject();
            v28[2] = v24;
            v28[3] = a3;
            v28[4] = a4;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v43 = *v27;
            *v27 = 0x8000000000000000;
            sub_21948C3B8(v28, a3, a4, isUniquelyReferenced_nonNull_native);

            *v27 = v43;
            (v26)(v44, 0);
            swift_endAccess();
          }

          else
          {
            (v26)(v44, 0);
            swift_endAccess();
          }
        }
      }

      swift_beginAccess();
      v38 = sub_218D26A4C(v44, a2);
      if (*v37)
      {
        v39 = v37;
        sub_218BE55B8(0, &qword_280E8B5A0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_219C146A0;
        *(v40 + 32) = a1;
        type metadata accessor for SportsScores();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = a3;
        v41[4] = a4;

        v42 = swift_isUniquelyReferenced_nonNull_native();
        v46 = *v39;
        *v39 = 0x8000000000000000;
        sub_21948C3B8(v41, a3, a4, v42);

        *v39 = v46;
        (v38)(v44, 0);
        return swift_endAccess();
      }

      (v38)(v44, 0);
      swift_endAccess();
    }
  }

  swift_endAccess();
  sub_2186DE050(0, &qword_27CC20300, sub_21988051C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  sub_218BE55B8(0, &qword_280E8B5A0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C146A0;
  *(v31 + 32) = a1;
  type metadata accessor for SportsScores();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a3;
  v32[4] = a4;
  *(inited + 48) = v32;

  v33 = sub_2194AEF7C(inited);
  swift_setDeallocating();
  sub_219880584(inited + 32);
  swift_beginAccess();
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *a5;
  *a5 = 0x8000000000000000;
  sub_21948C3E4(v33, a2, v34);

  *a5 = v45;
  swift_endAccess();
  swift_beginAccess();

  MEMORY[0x21CECC690](v35);
  if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return swift_endAccess();
}

void *sub_21987F774()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();
  v4 = v3;

  type metadata accessor for SportsDateHeader();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v4;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t sub_21987F8B4(unint64_t a1)
{
  sub_2186DE050(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v35 = sub_219BF4AC4();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F90];
  *&v36 = a1;
  if (a1 >> 62)
  {
    result = sub_219BF7214();
    v11 = v36;
    v14 = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = (v9 + 48);
  v33 = (v9 + 32);
  v34 = v11 & 0xC000000000000001;
  v32 = (v9 + 8);
  do
  {
    if (v34)
    {
      v18 = MEMORY[0x21CECE0F0](v15);
    }

    else
    {
      v18 = *(v11 + 8 * v15 + 32);
    }

    sub_219BF3FA4();
    sub_219BF4AB4();
    (*(v5 + 8))(v7, v35);
    if ((*v16)(v4, 1, v8) == 1)
    {

      sub_2189DD39C(v4);
    }

    else
    {
      (*v33)(v13, v4, v8);
      v17 = sub_218A9EC28();
      sub_21987EF04(v18, v17, &v41, &v40);

      (*v32)(v13, v8);
    }

    ++v15;
    v11 = v36;
  }

  while (v14 != v15);
LABEL_13:
  v39 = MEMORY[0x277D84F90];
  result = swift_beginAccess();
  v19 = v40;
  if (v40 >> 62)
  {
    result = sub_219BF7214();
    v20 = result;
    if (result)
    {
LABEL_15:
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = MEMORY[0x277D84F90];
        v36 = xmmword_219C146A0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x21CECE0F0](v21, v19);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          swift_beginAccess();
          v24 = v41;
          if ((v41 & 0xC000000000000001) != 0)
          {

            v25 = sub_219BF74F4();

            if (v25)
            {
              v37 = v25;
              type metadata accessor for SportsScores();
              swift_dynamicCast();
              v26 = v38;
              if (v38)
              {
                goto LABEL_29;
              }
            }
          }

          else if (*(v41 + 16))
          {
            v27 = sub_21931ED80(v23);
            if (v28)
            {
              v26 = *(*(v24 + 56) + 8 * v27);

              if (v26)
              {
LABEL_29:
                swift_endAccess();
                sub_218BE55B8(0, &qword_280E8B5A0);
                v29 = swift_allocObject();
                *(v29 + 16) = v36;
                *(v29 + 32) = v26;
                type metadata accessor for SportsScoreSection();
                v30 = swift_allocObject();
                *(v30 + 16) = v23;
                *(v30 + 24) = v29;

                MEMORY[0x21CECC690](v31);
                if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v35 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_219BF5A14();
                }

                sub_219BF5A54();

                v22 = v39;
                goto LABEL_18;
              }
            }
          }

          swift_endAccess();

LABEL_18:
          if (v20 == ++v21)
          {
            goto LABEL_34;
          }
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    v20 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_15;
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_34:

  return v22;
}

uint64_t sub_21987FE38(char *a1)
{
  sub_2186DE050(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v51 = sub_219BF4AC4();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x277D84F98];
  v56 = MEMORY[0x277D84F90];
  v52 = a1;
  if (a1 >> 62)
  {
    v18 = sub_219BF7214();
    v10 = v52;
    v13 = v18;
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_52:

    __break(1u);
    return result;
  }

  v14 = 0;
  v15 = (v9 + 48);
  v49 = (v9 + 32);
  v50 = v10 & 0xC000000000000001;
  v48 = (v9 + 8);
  do
  {
    if (v50)
    {
      v17 = MEMORY[0x21CECE0F0](v14);
    }

    else
    {
      v17 = *&v10[8 * v14 + 32];
    }

    sub_219BF3FA4();
    sub_219BF4AB4();
    (*(v5 + 8))(v7, v51);
    if ((*v15)(v4, 1, v8) == 1)
    {

      sub_2189DD39C(v4);
    }

    else
    {
      (*v49)(v12, v4, v8);
      v16 = sub_218A9EC28();
      sub_21987F1F4(v17, v16, 45, 0xE100000000000000, &v57, &v56);

      (*v48)(v12, v8);
    }

    ++v14;
    v10 = v52;
  }

  while (v13 != v14);
LABEL_13:
  v55 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v19 = v56;
  if (v56 >> 62)
  {
    goto LABEL_50;
  }

  v20 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = 0;
    v23 = v19 & 0xC000000000000001;
    v51 = v19 & 0xFFFFFFFFFFFFFF8;
    v52 = 0;
    v50 = v19 + 32;
    v24 = MEMORY[0x277D84F90];
    v47 = v20;
    v48 = v19;
    v46 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v23)
      {
        v25 = MEMORY[0x21CECE0F0](v22, v19);
        v26 = __OFADD__(v22++, 1);
        if (v26)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v22 >= *(v51 + 16))
        {
          goto LABEL_48;
        }

        v25 = *(v50 + 8 * v22);

        v26 = __OFADD__(v22++, 1);
        if (v26)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          v20 = sub_219BF7214();
          goto LABEL_15;
        }
      }

      swift_beginAccess();
      v27 = v57;
      if (*(v57 + 16) && (v28 = sub_21931ED80(v25), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);
        swift_endAccess();
        v54 = v21;
        v31 = *(v30 + 16);
        if (v31)
        {
          sub_218BE55B8(0, &qword_280E8B750);
          v32 = swift_allocObject();
          v33 = _swift_stdlib_malloc_size_0(v32);
          v34 = v33 - 32;
          if (v33 < 32)
          {
            v34 = v33 - 17;
          }

          v32[2] = v31;
          v32[3] = 2 * (v34 >> 4);
          v49 = sub_2194B7E3C(v53, v32 + 4, v31, v30);
          v19 = v53[4];
          swift_bridgeObjectRetain_n();
          sub_21892DE98();
          if (v49 != v31)
          {
            goto LABEL_49;
          }

          v21 = MEMORY[0x277D84F90];
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v32 = v21;
        }

        v53[0] = v32;
        v4 = v52;
        sub_21871B098(v53);
        if (v4)
        {
          goto LABEL_52;
        }

        v52 = 0;

        v35 = *(v53[0] + 2);
        if (v35)
        {
          v49 = v53[0];
          v36 = (v53[0] + 40);
          do
          {
            if (*(v30 + 16))
            {
              v38 = *(v36 - 1);
              v37 = *v36;

              sub_21870F700(v38, v37);
              v40 = v39;

              if (v40)
              {
                v41 = swift_retain_n();
                MEMORY[0x21CECC690](v41);
                if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_219BF5A14();
                }

                sub_219BF5A54();

                v21 = v54;
              }
            }

            v36 += 2;
            --v35;
          }

          while (v35);
        }

        type metadata accessor for SportsScoreSection();
        v42 = swift_allocObject();
        *(v42 + 16) = v25;
        *(v42 + 24) = v21;

        MEMORY[0x21CECC690](v43);
        v20 = v47;
        v19 = v48;
        v23 = v46;
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();

        v24 = v55;
        v21 = MEMORY[0x277D84F90];
        if (v22 == v20)
        {
          goto LABEL_46;
        }
      }

      else
      {
        swift_endAccess();

        if (v22 == v20)
        {
          goto LABEL_46;
        }
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_46:

  return v24;
}

void sub_21988051C()
{
  if (!qword_27CC20308)
  {
    type metadata accessor for SportsScores();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20308);
    }
  }
}

uint64_t sub_219880584(uint64_t a1)
{
  sub_21988051C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2198805E0(unint64_t a1, int a2)
{
  v55 = a2;
  sub_2186DE050(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - v7;
  v61 = sub_219BF4AC4();
  v9 = *(v61 - 8);
  v10 = MEMORY[0x28223BE20](v61);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v46 - v13;
  v62 = sub_219BDBD34();
  v15 = *(v62 - 8);
  v16 = MEMORY[0x28223BE20](v62);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v46 - v19;
  v56 = a1;
  if (a1 >> 62)
  {
    v21 = sub_219BF7214();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
    return v22;
  }

  v60 = v56 & 0xC000000000000001;
  v48 = v21;
  if ((v56 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x21CECE0F0](0);
  }

  else
  {
    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v23 = *(v56 + 32);
  }

  sub_219BF3FA4();
  sub_219BF4AB4();
  v58 = *(v9 + 8);
  v59 = v9 + 8;
  v58(v14, v61);
  v24 = v62;
  v57 = *(v15 + 48);
  if (v57(v8, 1, v62) == 1)
  {

    sub_2189DD39C(v8);
    return MEMORY[0x277D84F90];
  }

  v46[1] = v23;
  v52 = *(v15 + 32);
  v53 = v15 + 32;
  v52(v20, v8, v24);
  v47 = v20;
  v20 = sub_218A9EC28();
  v64 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  v25 = sub_21987F774();
  v14 = v48;
  if (v48 < 1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v46[0] = v25;
  v26 = 0;
  v54 = (v15 + 8);
  v50 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v27 = v56;
  v49 = v20;
  do
  {
    if (v60)
    {
      MEMORY[0x21CECE0F0](v26, v27);
    }

    else
    {
    }

    sub_219BF3FA4();
    sub_219BF4AB4();
    v58(v12, v61);
    v28 = v62;
    if (v57(v6, 1, v62) == 1)
    {

      sub_2189DD39C(v6);
      goto LABEL_12;
    }

    v52(v18, v6, v28);
    v29 = sub_218A9EC28();
    v30 = v29;
    if ((v55 & 1) != 0 || (v29[2] != *(v20 + 2) || v29[3] != *(v20 + 3)) && (sub_219BF78F4() & 1) == 0)
    {
LABEL_18:

      MEMORY[0x21CECC690](v31);
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
        v20 = v49;
      }

      sub_219BF5A54();

      (*v54)(v18, v62);
      v51 = v64;
      goto LABEL_21;
    }

    v32 = v30[5];
    v33 = *(v20 + 5);
    if (v32)
    {
      if (!v33 || (v30[4] != *(v20 + 4) || v32 != v33) && (sub_219BF78F4() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v33)
    {
      goto LABEL_18;
    }

    MEMORY[0x21CECC690](v34);
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    (*v54)(v18, v62);
    v50 = v65;
    v20 = v49;
LABEL_21:
    v27 = v56;
LABEL_12:
    ++v26;
  }

  while (v14 != v26);
  v63 = MEMORY[0x277D84F90];
  v14 = v50;
  if (!(v50 >> 62))
  {
    v35 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_37;
  }

LABEL_50:
  v35 = sub_219BF7214();
LABEL_37:
  v36 = v46[0];
  if (v35)
  {
    sub_218BE55B8(0, &qword_280E8B5A0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C146A0;
    type metadata accessor for SportsScores();
    v38 = swift_allocObject();
    v38[3] = 0;
    v38[4] = 0;
    v38[2] = v14;
    *(v37 + 32) = v38;
    type metadata accessor for SportsScoreSection();
    v39 = swift_allocObject();
    *(v39 + 16) = v20;
    *(v39 + 24) = v37;

    MEMORY[0x21CECC690](v40);
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
  }

  else
  {
  }

  sub_218BE55B8(0, &qword_280E8B5A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_219C146A0;
  type metadata accessor for SportsScores();
  v42 = swift_allocObject();
  v42[3] = 0;
  v42[4] = 0;
  v42[2] = v51;
  *(v41 + 32) = v42;
  type metadata accessor for SportsScoreSection();
  v43 = swift_allocObject();
  *(v43 + 16) = v36;
  *(v43 + 24) = v41;

  MEMORY[0x21CECC690](v44);
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

  (*v54)(v47, v62);
  return v63;
}

uint64_t sub_219880E00()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219880EC8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t type metadata accessor for TagFeedLayoutModel()
{
  result = qword_280ED2700;
  if (!qword_280ED2700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_219880FEC()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_219881150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_21988123C(uint64_t a1)
{
  v2 = sub_219881C8C(&unk_280ED2740);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2198812E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

double sub_2198814EC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_219BEF974();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v1, v9);
  (*(v4 + 32))(v6, v9, v3);
  sub_219BEF964();
  (*(v4 + 8))(v6, v3);
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_2198816B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v4, v13);
  (*(v8 + 32))(v10, v13, v7);
  v14 = a4(a1);
  (*(v8 + 8))(v10, v7);
  return v14;
}

uint64_t sub_219881824(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  LOBYTE(a3) = a3(v12);
  (*(v6 + 8))(v8, v5);
  return a3 & 1;
}

uint64_t sub_219881980(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_219881ADC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_219881C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219881C8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TagFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219881CE0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v22[1] = a1;
  v24 = sub_219BE6DF4();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988218C(0, &qword_27CC1B9C8, MEMORY[0x277D6DF88]);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  sub_21954934C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_21988218C(0, &qword_27CC0B180, MEMORY[0x277D6EC60]);
  v23 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - v13;
  v30 = v3;
  v15 = sub_21894CB20(sub_219882294, v29);
  sub_218953FB4();
  v17 = v16;
  v18 = sub_21988224C(&qword_27CC1B9E0, sub_218953FB4);
  v19 = sub_21988224C(&qword_27CC1B9E8, sub_218953FB4);
  MEMORY[0x21CEB9170](v15, v17, v18, v19);
  type metadata accessor for MyRecipesModel();
  sub_21895406C();
  sub_21988224C(&qword_27CC1AE10, type metadata accessor for MyRecipesModel);
  sub_219BEB2D4();
  v20 = v24;
  (*(v4 + 104))(v6, *MEMORY[0x277D6D868], v24);
  sub_219549548();
  sub_219BE85A4();
  (*(v4 + 8))(v6, v20);
  v28(v9);
  (*(v25 + 8))(v9, v26);
  return (*(v12 + 8))(v14, v23);
}

unint64_t sub_2198820F0()
{
  result = qword_27CC20310;
  if (!qword_27CC20310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20310);
  }

  return result;
}

void sub_21988218C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyRecipesSectionDescriptor;
    v8[1] = type metadata accessor for MyRecipesModel();
    v8[2] = sub_21895406C();
    v8[3] = sub_21988224C(&qword_27CC1AE10, type metadata accessor for MyRecipesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21988224C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SportsBoxScoresTagFeedGroupKnobs()
{
  result = qword_280EA4A10;
  if (!qword_280EA4A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219882370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v21 = a2;
    sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a2 = v21;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v17 = sub_219BF1F54();
    sub_218C3DB88(v17);

    sub_218BE9934();
    swift_allocObject();
    a2 = sub_219BEEE04();
  }

  v18 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
  *(a4 + *(v18 + 20)) = a2;
  if (!a3)
  {
    sub_218BE9934();
    swift_allocObject();
    a3 = sub_219BEEE04();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v18 + 24)) = a3;
  return result;
}

uint64_t sub_219882670@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_2189AD5C8();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v49 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = v38 - v11;
  sub_219882FD8(0, &qword_280E8CA08, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219882F20();
  v17 = v50;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38[1] = 0;
  v40 = v14;
  v41 = a1;
  v42 = v7;
  LOBYTE(v53) = 0;
  sub_21877C828(&qword_280E91A88, sub_2189AD5C8);
  v19 = v44;
  v20 = v46;
  sub_219BF7674();
  sub_218BE9934();
  LOBYTE(v52) = 1;
  sub_21877C828(&qword_280E917C0, sub_218BE9934);
  sub_219BF7674();
  v38[0] = v53;
  v51 = 2;
  v50 = v13;
  v39 = v16;
  sub_219BF7674();
  v43 = v52;
  v21 = v19;
  v22 = v49;
  sub_2189ADE64(v19, v49);
  v23 = v45;
  v24 = *(v45 + 48);
  if (v24(v22, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v25 = v47;
    sub_219BEE974();
    v26 = v24(v22, 1, v20);
    v27 = v25;
    v29 = v40;
    v28 = v41;
    if (v26 != 1)
    {
      sub_2189ADEC8(v49);
    }
  }

  else
  {
    v27 = v47;
    (*(v23 + 32))(v47, v22, v20);
    v29 = v40;
    v28 = v41;
  }

  v30 = v42;
  (*(v23 + 32))(v42, v27, v20);
  v31 = v50;
  v32 = v38[0];
  if (!v38[0])
  {
    v33 = sub_219BF1F54();
    sub_218C3DB88(v33);

    swift_allocObject();
    v32 = sub_219BEEE04();
    v31 = v50;
  }

  v34 = v39;
  *(v30 + *(v5 + 20)) = v32;
  v35 = v48;
  if (v43)
  {
    v36 = v43;
  }

  else
  {
    swift_allocObject();
    v37 = sub_219BEEE04();
    v31 = v50;
    v36 = v37;
  }

  sub_2189ADEC8(v21);
  (*(v29 + 8))(v34, v31);
  *(v30 + *(v5 + 24)) = v36;
  sub_219882F74(v30, v35);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_219882C14(void *a1)
{
  v3 = v1;
  sub_219882FD8(0, &qword_27CC20318, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219882F20();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C828(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
    v14 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_218BE9934();
    sub_21877C828(&qword_27CC0EE30, sub_218BE9934);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219882E78(uint64_t a1)
{
  v2 = sub_219882F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219882EB4(uint64_t a1)
{
  v2 = sub_219882F20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219882F20()
{
  result = qword_280EA4A38[0];
  if (!qword_280EA4A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA4A38);
  }

  return result;
}

uint64_t sub_219882F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219882FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219882F20();
    v7 = a3(a1, &type metadata for SportsBoxScoresTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219883050()
{
  result = qword_27CC20320;
  if (!qword_27CC20320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20320);
  }

  return result;
}

unint64_t sub_2198830A8()
{
  result = qword_280EA4A28;
  if (!qword_280EA4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4A28);
  }

  return result;
}

unint64_t sub_219883100()
{
  result = qword_280EA4A30;
  if (!qword_280EA4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4A30);
  }

  return result;
}

uint64_t type metadata accessor for SportsTopStoriesTagFeedGroupKnobs()
{
  result = qword_280EA18E8;
  if (!qword_280EA18E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2198831C8()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_2186F95C4();
      if (v2 <= 0x3F)
      {
        sub_2186ECA28();
        if (v3 <= 0x3F)
        {
          sub_2190E9B64();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_219883298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v35 = a3;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v14);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v31 = a8;
    sub_21877CDC8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a8 = v31;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189ADEC8(v14);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a8, v19, v16);
  v22 = v32;
  v21 = v33;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();
    v23 = sub_219BEF534();
  }

  v25 = v34;
  v24 = v35;
  v26 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
  *(a8 + v26[5]) = v23;
  if (v24)
  {

    v27 = v24;
  }

  else
  {
    v36 = 1;
    sub_2186F9548();
    swift_allocObject();

    v27 = sub_219BEF534();
  }

  *(a8 + v26[6]) = v27;
  if (v25)
  {

    v28 = v25;
  }

  else
  {
    LOBYTE(v36) = 1;
    sub_2186F95C4();
    swift_allocObject();

    v28 = sub_219BEF534();
  }

  *(a8 + v26[7]) = v28;
  if (v21)
  {

    v29 = v21;
  }

  else
  {
    v36 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v29 = sub_219BEF534();
  }

  *(a8 + v26[8]) = v29;
  if (v22)
  {
  }

  else
  {
    LOBYTE(v36) = 1;
    sub_2190E9B64();
    swift_allocObject();

    v22 = sub_219BEF534();
  }

  *(a8 + v26[9]) = v22;
  if (!a7)
  {
    v36 = 0x7FEFFFFFFFFFFFFFLL;
    sub_2186ECA28();
    swift_allocObject();
    a7 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a8 + v26[10]) = a7;
  return result;
}

uint64_t sub_219883710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_2189AD5C8();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v9 - 8);
  v64 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v47 - v12;
  sub_219884654(0, &qword_280E8C968, MEMORY[0x277D844C8]);
  v63 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21988459C();
  v17 = v65;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = v5;
  v51 = 0;
  v52 = v14;
  v53 = v6;
  v54 = v8;
  v48 = a1;
  LOBYTE(v72) = 0;
  sub_21877CDC8(&qword_280E91A88, sub_2189AD5C8);
  v19 = v59;
  v20 = v62;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v71) = 1;
  sub_21877CDC8(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v58 = v72;
  LOBYTE(v70) = 2;
  sub_219BF7674();
  v57 = v71;
  sub_2186F95C4();
  v22 = v21;
  LOBYTE(v69) = 3;
  sub_21877CDC8(&qword_280E913F8, sub_2186F95C4);
  v47[0] = v22;
  sub_219BF7674();
  v55 = v70;
  sub_2186ECA28();
  v24 = v23;
  LOBYTE(v68) = 4;
  sub_21877CDC8(&qword_280E913D8, sub_2186ECA28);
  sub_219BF7674();
  v65 = v69;
  sub_2190E9B64();
  v26 = v25;
  LOBYTE(v67) = 5;
  sub_21877CDC8(&qword_280E91518, sub_2190E9B64);
  v47[1] = v26;
  sub_219BF7674();
  v56 = v68;
  LOBYTE(v66) = 6;
  v47[2] = v24;
  sub_219BF7674();
  v49 = v67;
  v27 = v19;
  v28 = v64;
  sub_2189ADE64(v19, v64);
  v29 = *(v61 + 48);
  if (v29(v28, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CDC8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v30 = v50;
    sub_219BEE974();
    v31 = v62;
    v32 = v29(v64, 1, v62);
    v33 = v61;
    if (v32 != 1)
    {
      sub_2189ADEC8(v64);
    }
  }

  else
  {
    v33 = v61;
    v31 = v62;
    v30 = v50;
    (*(v61 + 32))(v50, v64, v62);
  }

  v64 = v16;
  v34 = v54;
  (*(v33 + 32))(v54, v30, v31);
  v35 = v58;
  if (!v58)
  {
    v66 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v35 = sub_219BEF534();
  }

  v36 = v60;
  v37 = v52;
  v38 = v53;
  v39 = v49;
  *(v34 + v53[5]) = v35;
  v40 = v57;
  v41 = v65;
  if (v57)
  {

    v42 = v40;
  }

  else
  {
    v66 = 1;
    swift_allocObject();

    v42 = sub_219BEF534();
    v41 = v65;
  }

  *(v34 + v38[6]) = v42;
  v43 = v55;
  if (v55)
  {

    v44 = v43;
  }

  else
  {
    LOBYTE(v66) = 1;
    swift_allocObject();

    v44 = sub_219BEF534();
    v41 = v65;
  }

  *(v34 + v38[7]) = v44;
  if (v41)
  {

    v45 = v41;
  }

  else
  {
    v66 = 0;
    swift_allocObject();

    v45 = sub_219BEF534();
  }

  *(v34 + v38[8]) = v45;
  if (v56)
  {

    v46 = v56;
  }

  else
  {
    LOBYTE(v66) = 1;
    swift_allocObject();

    v46 = sub_219BEF534();
  }

  *(v34 + v38[9]) = v46;
  if (!v39)
  {
    v66 = 0x7FEFFFFFFFFFFFFFLL;
    swift_allocObject();
    v39 = sub_219BEF534();
  }

  sub_2189ADEC8(v27);
  (*(v37 + 8))(v64, v63);
  *(v34 + v38[10]) = v39;
  sub_2198845F0(v34, v36);
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_219883FB8(void *a1)
{
  v3 = v1;
  sub_219884654(0, &qword_27CC20328, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21988459C();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877CDC8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877CDC8(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F95C4();
    sub_21877CDC8(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186ECA28();
    sub_21877CDC8(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2190E9B64();
    sub_21877CDC8(&qword_27CC20330, sub_2190E9B64);
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2198843D0()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x64724F70756F7267;
  if (v1 != 5)
  {
    v3 = 0x65674178616DLL;
  }

  v4 = 0x6F43657269707865;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_2198844CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2198847D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2198844F4(uint64_t a1)
{
  v2 = sub_21988459C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219884530(uint64_t a1)
{
  v2 = sub_21988459C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21988459C()
{
  result = qword_280EA1910[0];
  if (!qword_280EA1910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1910);
  }

  return result;
}

uint64_t sub_2198845F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219884654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21988459C();
    v7 = a3(a1, &type metadata for SportsTopStoriesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2198846CC()
{
  result = qword_27CC20338;
  if (!qword_27CC20338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20338);
  }

  return result;
}

unint64_t sub_219884724()
{
  result = qword_280EA1900;
  if (!qword_280EA1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1900);
  }

  return result;
}

unint64_t sub_21988477C()
{
  result = qword_280EA1908;
  if (!qword_280EA1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1908);
  }

  return result;
}

uint64_t sub_2198847D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64724F70756F7267 && a2 == 0xED0000676E697265 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for WebEmbedContainerViewController()
{
  result = qword_280EA7478;
  if (!qword_280EA7478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219884CAC()
{
  result = type metadata accessor for WebEmbedResource();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_219884D74(double a1)
{
  v1 = a1 + -150.0;
  if (v1 > 672.0)
  {
    v1 = 672.0;
  }

  return fmax(v1, 533.0);
}

uint64_t sub_219884DB4()
{
  v1 = type metadata accessor for WebEmbedResource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = *v0;
  v5 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource;
  __swift_project_boxed_opaque_existential_1((*(*v0 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler) + 88), *(*(*v0 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler) + 112));
  sub_219886C04(v4 + v5, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebEmbedResource);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_2190972A8(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_219BDD154();
}

id sub_219884F2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_219BF31E4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v0;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v5);
  v8 = *&v0[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController];
  [v1 addChildViewController_];
  [v8 didMoveToParentViewController_];
  (*(v4 + 104))(v7, *MEMORY[0x277D33D60], v3);
  sub_219BF31F4();
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = result;
  result = [v8 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [v10 addSubview_];

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BF3224();

  MEMORY[0x28223BE20](v12);
  *(&v18 - 2) = v1;
  sub_219886C90();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v13 = sub_219BF66A4();
  sub_219BE2F94();

  v14 = sub_219BF66A4();
  sub_219BE3084();

  v15 = [v1 traitCollection];
  sub_218718690(v1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_styler, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  result = [v1 view];
  if (result)
  {
    v16 = result;

    type metadata accessor for WebEmbedResource();
    v17 = sub_219BE76B4();
    [v16 setBackgroundColor_];

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2198852CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_219885320();
  }
}

uint64_t sub_219885320()
{
  v1 = v0;
  result = sub_219BF3214();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [v0 navigationItem];
  v5 = [v3 title];
  if (!v5)
  {
    sub_219BF5414();
    v5 = sub_219BF53D4();
  }

  [v4 setTitle_];

  v6 = [v3 shareConfiguration];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [v6 shareItems];
  sub_219886BA0();
  v8 = sub_219BF5924();

  if (v8 >> 62)
  {
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v11 = [v1 navigationItem];
    sub_2186C6148(0, &qword_280E8E5D0);
    v14 = sub_219BF5904();
    [v11 setRightBarButtonItems_];
    goto LABEL_12;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:v1 action:sel_showShareSheet_];
  v11 = [v1 navigationItem];
  sub_218725F94();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C146A0;
  *(v12 + 32) = v10;
  sub_2186C6148(0, &qword_280E8E5D0);
  v13 = v10;
  v14 = sub_219BF5904();

  [v11 setRightBarButtonItems_];
  swift_unknownObjectRelease();

LABEL_12:

  return swift_unknownObjectRelease();
}

uint64_t sub_2198855C0(uint64_t a1)
{
  sub_219BDB924();
  if (v2)
  {

    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedDataSourceService), *(a1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedDataSourceService + 24));
    return sub_219BF42B4();
  }

  else
  {
    sub_2194B1C58(MEMORY[0x277D84F90]);
    sub_219886CF8(0, &unk_27CC20388, sub_219886C90, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

id sub_2198856A0(uint64_t *a1, char *a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_219886CF8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v51 - v6;
  v59 = sub_219BDB954();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v11;
  v12 = sub_219BF4C84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  sub_219886CF8(0, &qword_27CC20280, MEMORY[0x277D34048], v4);
  MEMORY[0x28223BE20](v22 - 8);
  v60 = &v51 - v23;
  v24 = *a1;
  v58 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource;
  v25 = sub_219BDB924();
  if (v26)
  {
    if (*(v24 + 16))
    {
      v52 = sub_21870F700(v25, v26);
      v28 = v27;

      if (v28)
      {
        v29 = *(v13 + 16);
        v29(v18, *(v24 + 56) + *(v13 + 72) * v52, v12);
        (*(v13 + 32))(v21, v18, v12);
        v29(v15, v21, v12);
        v30 = v55;
        (v55)[2](v53, &a2[v58], v59);
        v31 = v60;
        sub_219BF3694();
        (*(v13 + 8))(v21, v12);
        v32 = *MEMORY[0x277D34040];
        v33 = sub_219BF3B34();
        v34 = *(v33 - 8);
        (*(v34 + 104))(v31, v32, v33);
        (*(v34 + 56))(v31, 0, 1, v33);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v35 = sub_219BF3B34();
  (*(*(v35 - 8) + 56))(v60, 1, 1, v35);
  v30 = v55;
LABEL_7:
  v55 = [*&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
  result = [a2 view];
  v38 = v56;
  v37 = v57;
  if (result)
  {
    sub_2186C6148(0, &qword_27CC20370);
    v39 = sub_219BF61A4();
    v52 = *&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController];
    v53 = v39;
    v40 = v30;
    v41 = v30[2];
    v42 = v58;
    v43 = v59;
    v41(v38, &a2[v58], v59);
    (v30[7])(v37, 1, 1, v43);
    v44 = v38;
    v51 = *&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_embedLocation];
    v45 = v54;
    v41(v54, &a2[v42], v43);
    result = [a2 view];
    if (result)
    {
      v46 = result;
      [result bounds];

      v47 = v55;
      v48 = v53;
      v49 = v60;
      sub_219BF3244();

      v50 = v40[1];
      v50(v45, v43);
      sub_2187BC950(v37, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v50(v44, v43);
      return sub_2187BC950(v49, &qword_27CC20280, MEMORY[0x277D34048]);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_219885D20(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x277D83D88];
  sub_219886CF8(0, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - v5;
  sub_219886CF8(0, &unk_280EE9D00, MEMORY[0x277CC9260], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v30 - v7;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v30 - v12;
  sub_219BF61F4();
  sub_219886CF8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  swift_getErrorValue();
  v14 = sub_219BF7A04();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_2186C6148(0, &qword_280E8D790);
  v17 = sub_219BF6F44();
  sub_219BE5314();

  v31 = [*&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
  result = [a2 view];
  if (result)
  {
    sub_2186C6148(0, &qword_27CC20370);
    v19 = sub_219BF61A4();
    v20 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource;
    v21 = *(v9 + 16);
    v21(v34, &a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource], v8);
    (*(v9 + 56))(v35, 1, 1, v8);
    v21(v33, &a2[v20], v8);
    result = [a2 view];
    if (result)
    {
      v22 = result;
      [result bounds];

      v23 = sub_219BF3B34();
      v24 = v32;
      (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
      v25 = v31;
      v27 = v34;
      v26 = v35;
      v28 = v33;
      sub_219BF3244();

      sub_2187BC950(v24, &qword_27CC20280, MEMORY[0x277D34048]);
      v29 = *(v9 + 8);
      v29(v28, v8);
      sub_2187BC950(v26, &unk_280EE9D00, MEMORY[0x277CC9260]);
      return (v29)(v27, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21988625C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  sub_218718690(v1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_styler, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  result = [v1 view];
  if (result)
  {
    v5 = result;

    type metadata accessor for WebEmbedResource();
    v6 = sub_219BE76B4();
    [v5 setBackgroundColor_];

    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2198863D0()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  if (![v0 view])
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2186C6148(0, &qword_27CC20370);
  v2 = sub_219BF61A4();
  v3 = *&v0[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController];
  sub_219BF3234();
  v4 = [v3 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v5 setFrame_];
    v16 = [*&v1[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
    sub_219BF3204();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_219886594(uint64_t a1)
{
  v2 = v1;
  v55 = sub_219BDB954();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = v45 - v7;
  v8 = type metadata accessor for WebEmbedShareItem();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = v45 - v12;
  v13 = sub_219BF3214();
  if (!v13)
  {
    return;
  }

  v14 = [v13 shareConfiguration];
  swift_unknownObjectRelease();
  if (!v14)
  {
    return;
  }

  v15 = [v14 shareItems];
  sub_219886BA0();
  v16 = sub_219BF5924();

  v17 = sub_218954B5C(v16);

  v60 = MEMORY[0x277D84F90];
  v18 = v17[2];
  if (!v18)
  {

    v39 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_9;
    }

LABEL_14:
    if (sub_219BF7214())
    {
      goto LABEL_10;
    }

LABEL_15:
    swift_unknownObjectRelease();

    return;
  }

  v46 = a1;
  v47 = v2;
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v45[1] = v17;
  v20 = v17 + v19;
  v21 = *(v9 + 72);
  v50 = (v4 + 32);
  v51 = v21;
  v48 = (v4 + 8);
  v49 = v4 + 16;
  v52 = v14;
  v22 = (v4 + 16);
  do
  {
    v57 = v18;
    v23 = v58;
    sub_219886C04(v20, v58, type metadata accessor for WebEmbedShareItem);
    v24 = v23;
    v25 = v53;
    sub_219886C04(v24, v53, type metadata accessor for WebEmbedShareItem);
    v26 = v54;
    v27 = v55;
    (*v50)(v54, v25, v55);
    v28 = [v14 title];
    v29 = sub_219BF5414();
    v31 = v30;

    v32 = *v22;
    v33 = v56;
    (*v22)(v56, v26, v27);
    v34 = type metadata accessor for WebEmbedShareActivityItemSource();
    v35 = objc_allocWithZone(v34);
    v32(&v35[OBJC_IVAR____TtC7NewsUI231WebEmbedShareActivityItemSource_shareURL], v33, v27);
    v36 = &v35[OBJC_IVAR____TtC7NewsUI231WebEmbedShareActivityItemSource_title];
    *v36 = v29;
    v36[1] = v31;
    v59.receiver = v35;
    v59.super_class = v34;
    objc_msgSendSuper2(&v59, sel_init);
    v37 = *v48;
    (*v48)(v33, v27);
    v37(v26, v27);
    v38 = sub_219886D5C(v58, type metadata accessor for WebEmbedShareItem);
    MEMORY[0x21CECC690](v38);
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v14 = v52;
    v20 += v51;
    v18 = v57 - 1;
  }

  while (v57 != 1);
  v39 = v60;

  a1 = v46;
  v2 = v47;
  if (v39 >> 62)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_218ACF86C(v39);

  v40 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v41 = sub_219BF5904();

  v42 = [v40 initWithActivityItems:v41 applicationActivities:0];

  v43 = [v42 popoverPresentationController];
  if (v43)
  {
    v44 = v43;
    [v43 setSourceItem_];
  }

  [v2 presentViewController:v42 animated:1 completion:0];
  swift_unknownObjectRelease();
}

uint64_t sub_219886B30()
{
  type metadata accessor for WebEmbedResource();

  return sub_21953AE30();
}

unint64_t sub_219886BA0()
{
  result = qword_27CC20368;
  if (!qword_27CC20368)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC20368);
  }

  return result;
}

uint64_t sub_219886C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219886C90()
{
  if (!qword_27CC20378)
  {
    sub_219BF4C84();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC20378);
    }
  }
}

void sub_219886CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219886D5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_219886DBC(uint64_t a1, uint64_t a2)
{
  *&v337 = a2;
  sub_219889AAC();
  MEMORY[0x28223BE20](v3 - 8);
  v325 = &v253 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v262 = &v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = type metadata accessor for CuratedMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v331);
  v328 = &v253 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v330 = &v253 - v8;
  sub_2186ECF58();
  v329 = v9;
  v327 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v322 = &v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v326 = &v253 - v12;
  v321 = type metadata accessor for NewspaperMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v321);
  v318 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v320 = &v253 - v15;
  sub_218DF04EC();
  v319 = v16;
  v317 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v316 = &v253 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v315);
  v312 = &v253 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v314 = &v253 - v20;
  sub_218F05748();
  v313 = v21;
  v311 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v310 = &v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = type metadata accessor for CategoriesMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v309);
  v307 = &v253 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v308 = &v253 - v25;
  sub_219889B04(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v306 = v26;
  v305 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v304 = &v253 - v27;
  v303 = type metadata accessor for TrendingMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v303);
  v300 = &v253 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v302 = &v253 - v30;
  sub_218D7EFE8();
  v301 = v31;
  v299 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v296 = &v253 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v33 - 8);
  v294 = &v253 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v261);
  v259 = &v253 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v260 = (&v253 - v37);
  sub_2186E60B0();
  v298 = v38;
  v297 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v290 = &v253 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v295 = &v253 - v41;
  v42 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v42 - 8);
  v333 = &v253 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v255);
  v253 = &v253 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v254 = &v253 - v46;
  sub_21915A40C();
  v293 = v47;
  v292 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v332 = &v253 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v291 = &v253 - v50;
  v289 = type metadata accessor for PaywallMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v289);
  v286 = &v253 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v288 = &v253 - v53;
  sub_218B87670();
  v287 = v54;
  v285 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v284 = &v253 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for NewIssueMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v283);
  v279 = &v253 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v282 = &v253 - v58;
  sub_2186ECD30();
  v281 = v59;
  v277 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v276 = &v253 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v61 - 8);
  v335 = &v253 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for MyMagazinesMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v258);
  v256 = &v253 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v257 = &v253 - v65;
  sub_218B8773C();
  v280 = v66;
  v278 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v334 = &v253 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v336 = &v253 - v69;
  v275 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v275);
  v273 = &v253 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v274 = &v253 - v72;
  sub_219889B04(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v272 = v73;
  v271 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v270 = &v253 - v74;
  v269 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v269);
  v266 = &v253 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v268 = &v253 - v77;
  sub_2186EC3A4();
  v267 = v78;
  v265 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v264 = &v253 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v80);
  v263 = &v253 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v84 = &v253 - v83;
  sub_218D77C80();
  v86 = v85;
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = &v253 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
  MEMORY[0x28223BE20](v90);
  v92 = &v253 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v95 = &v253 - v94;
  sub_2186E3594();
  v97 = v96;
  MEMORY[0x28223BE20](a1);
  v101 = &v253 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(v98 >> 60)
  {
    case 1uLL:
      v179 = v99;
      v180 = swift_projectBox();
      v181 = *(v179 + 16);
      v181(v101, v180, v97);
      v181(v95, v101, v97);
      v182 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v183 = type metadata accessor for MagazineFeedGroupKnobs();
      sub_219889C7C(v182 + *(v183 + 24), &v95[v90[5]], type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, &v95[v90[6]]);
      v184 = &v95[v90[7]];
      *v184 = 0xD000000000000010;
      *(v184 + 1) = 0x8000000219CF22C0;
      sub_219889C7C(v95, v92, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280E97518, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
      v113 = sub_219BEDF84();
      sub_219889CE4(v95, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
      (*(v179 + 8))(v101, v97);
      return v113;
    case 2uLL:
      v159 = swift_projectBox();
      v160 = *(v87 + 16);
      v160(v89, v159, v86);
      v160(v84, v89, v86);
      v161 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v162 = type metadata accessor for MagazineFeedGroupKnobs();
      sub_219889C7C(v161 + *(v162 + 32), &v84[v80[5]], type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, &v84[v80[6]]);
      v163 = &v84[v80[7]];
      strcpy(v163, "Featured Issue");
      v163[15] = -18;
      sub_219889C7C(v84, v263, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_27CC203B0, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
      v113 = sub_219BEDF84();
      sub_219889CE4(v84, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
      (*(v87 + 8))(v89, v86);
      return v113;
    case 3uLL:
      v164 = swift_projectBox();
      v129 = v265;
      v165 = *(v265 + 16);
      v131 = v264;
      v132 = v267;
      v165(v264, v164, v267);
      v133 = v268;
      v165(v268, v131, v132);
      v166 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v167 = type metadata accessor for MagazineFeedGroupKnobs();
      v168 = v269;
      sub_219889C7C(v166 + *(v167 + 28), v133 + *(v269 + 20), type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, v133 + *(v168 + 24));
      v169 = (v133 + *(v168 + 28));
      *v169 = 0xD000000000000016;
      v169[1] = 0x8000000219CF22A0;
      sub_219889C7C(v133, v266, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_27CC203A8, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 4uLL:
      v128 = swift_projectBox();
      v129 = v271;
      v130 = *(v271 + 16);
      v131 = v270;
      v132 = v272;
      v130(v270, v128, v272);
      v133 = v274;
      v130(v274, v131, v132);
      v134 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v135 = type metadata accessor for MagazineFeedGroupKnobs();
      v136 = v275;
      sub_219889C7C(v134 + *(v135 + 36), v133 + *(v275 + 20), type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
      v137 = v338;
      sub_218718690(v338 + 168, v133 + v136[6]);
      sub_218718690(v137 + 128, v133 + v136[7]);
      v138 = (v133 + v136[8]);
      *v138 = 0xD000000000000011;
      v138[1] = 0x8000000219CF2280;
      sub_219889C7C(v133, v273, type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280E963F0, type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 5uLL:
      v185 = swift_projectBox();
      v186 = v278;
      v187 = *(v278 + 16);
      v188 = v336;
      v189 = v280;
      v187(v336, v185, v280);
      v187(v334, v188, v189);
      v190 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v191 = type metadata accessor for MagazineFeedGroupKnobs();
      sub_219889C7C(v190 + *(v191 + 40), v335, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
      v192 = v338;
      v193 = [objc_msgSend(*(v338 + 232) appConfiguration)];
      swift_unknownObjectRelease();
      if (v193)
      {
        v194 = sub_219BF5414();
        v196 = v195;
      }

      else
      {
        v194 = 0;
        v196 = 0;
      }

      v243 = v258;
      v244 = v257;
      v245 = v256;
      v246 = *(v192 + 584);
      sub_218718690(v192 + 544, &v257[*(v258 + 32)]);
      v247 = *(v192 + 592);
      v248 = v244 + v243[11];
      strcpy(v248, "My Magazines");
      *(v248 + 13) = 0;
      *(v248 + 14) = -5120;
      v249 = *(v186 + 32);
      v338 = *(v192 + 16);
      v249(v244, v334, v189);
      sub_219889C14(v335, v244 + v243[5], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
      v250 = (v244 + v243[6]);
      *v250 = v194;
      v250[1] = v196;
      *(v244 + v243[7]) = v246;
      *(v244 + v243[9]) = v338;
      *(v244 + v243[10]) = v247;
      sub_219889C7C(v244, v245, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280E9D098, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
      v251 = v246;
      swift_unknownObjectRetain();
      v252 = v247;
      v113 = sub_219BEDF84();
      sub_219889CE4(v244, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
      (*(v186 + 8))(v336, v189);
      return v113;
    case 6uLL:
      v209 = swift_projectBox();
      v116 = v277;
      v210 = *(v277 + 16);
      v118 = v276;
      v119 = v281;
      v210(v276, v209, v281);
      v120 = v282;
      v210(v282, v118, v119);
      v211 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v212 = type metadata accessor for MagazineFeedGroupKnobs();
      v213 = v283;
      sub_219889C7C(v211 + *(v212 + 44), v120 + *(v283 + 20), type metadata accessor for NewIssueMagazineFeedGroupKnobs);
      v214 = v338;
      sub_218718690(v338 + 88, v120 + v213[6]);
      sub_218718690(v214 + 32, v120 + v213[7]);
      v215 = *(v214 + 216);
      sub_218718690(v214 + 328, v120 + v213[9]);
      sub_218718690(v214 + 448, v120 + v213[10]);
      *(v120 + v213[11]) = 4;
      v216 = (v120 + v213[12]);
      *v216 = 0x757373492077654ELL;
      v216[1] = 0xE900000000000065;
      *(v120 + v213[8]) = v215;
      sub_219889C7C(v120, v279, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&unk_280EA5BD0, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      v127 = type metadata accessor for NewIssueMagazineFeedGroupEmitter;
      goto LABEL_22;
    case 7uLL:
      v170 = swift_projectBox();
      v116 = v285;
      v171 = *(v285 + 16);
      v118 = v284;
      v119 = v287;
      v171(v284, v170, v287);
      v120 = v288;
      v171(v288, v118, v119);
      v172 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v173 = type metadata accessor for MagazineFeedGroupKnobs();
      v174 = v289;
      sub_219889C7C(v172 + *(v173 + 48), v120 + *(v289 + 20), type metadata accessor for PaywallMagazineFeedGroupKnobs);
      v175 = v338;
      v176 = *(v338 + 232);
      sub_218718690(v338 + 488, v120 + v174[7]);
      v177 = (v120 + v174[9]);
      *v177 = 0x6C6C6177796150;
      v177[1] = 0xE700000000000000;
      *(v120 + v174[6]) = v176;
      v178 = v174[8];
      v338 = *(v175 + 528);
      *(v120 + v178) = v338;
      sub_219889C7C(v120, v286, type metadata accessor for PaywallMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280EA89D8, type metadata accessor for PaywallMagazineFeedGroupEmitter);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      v127 = type metadata accessor for PaywallMagazineFeedGroupEmitter;
      goto LABEL_22;
    case 8uLL:
      v223 = swift_projectBox();
      v224 = v292;
      v225 = *(v292 + 16);
      v226 = v291;
      v227 = v293;
      v225(v291, v223, v293);
      v225(v332, v226, v227);
      v228 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v229 = type metadata accessor for MagazineFeedGroupKnobs();
      sub_219889C7C(v228 + *(v229 + 52), v333, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
      v230 = v338;
      v231 = *(v338 + 208);
      result = [v231 subscriptionController];
      if (!result)
      {
        goto LABEL_34;
      }

      v232 = result;
      result = [v231 bundleSubscriptionManager];
      if (!result)
      {
        goto LABEL_35;
      }

      v233 = result;
      v234 = *(v230 + 224);
      v235 = v255;
      v236 = v254;
      sub_218718690(v230 + 248, &v254[*(v255 + 36)]);
      v237 = *(v230 + 232);
      sub_218718690(v230 + 600, v236 + v235[11]);
      v238 = (v236 + v235[12]);
      *v238 = 0xD000000000000012;
      v238[1] = 0x8000000219CF2260;
      (*(v224 + 32))(v236, v332, v227);
      sub_219889C14(v333, v236 + v235[5], type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
      *(v236 + v235[6]) = v232;
      *(v236 + v235[7]) = v233;
      *(v236 + v235[8]) = v234;
      *(v236 + v235[10]) = v237;
      sub_219889C7C(v236, v253, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280E955E0, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
      v239 = v234;
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      sub_219889CE4(v236, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
      (*(v224 + 8))(v226, v227);
      return v113;
    case 9uLL:
      v147 = swift_projectBox();
      v129 = v297;
      v148 = *(v297 + 16);
      v131 = v295;
      v132 = v298;
      v148(v295, v147, v298);
      v149 = v290;
      v148(v290, v131, v132);
      v150 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v151 = type metadata accessor for MagazineFeedGroupKnobs();
      v152 = v294;
      sub_219889C7C(v150 + *(v151 + 56), v294, type metadata accessor for TopicMagazineFeedGroupKnobs);
      v153 = v338;
      sub_218718690(v338 + 448, &v340);
      v154 = *(v153 + 80);
      sub_218718690(v153 + 88, &v339);
      v155 = *(v153 + 208);

      result = [v155 subscriptionController];
      if (result)
      {
        v157 = result;
        v133 = v260;
        *v260 = 0x6369706F54;
        *(v133 + 8) = 0xE500000000000000;
        v158 = v261;
        (*(v129 + 32))(v133 + *(v261 + 20), v149, v132);
        sub_219889C14(v152, v133 + v158[6], type metadata accessor for TopicMagazineFeedGroupKnobs);
        sub_2186CB1F0(&v340, v133 + v158[7]);
        *(v133 + v158[8]) = v154;
        sub_2186CB1F0(&v339, v133 + v158[9]);
        *(v133 + v158[10]) = v157;
        sub_219889C7C(v133, v259, type metadata accessor for TopicMagazineFeedGroupEmitter);
        sub_219889B80();
        swift_allocObject();
        sub_2186EC998(&unk_27CC20398, type metadata accessor for TopicMagazineFeedGroupEmitter);
        v113 = sub_219BEDF84();
        v139 = type metadata accessor for TopicMagazineFeedGroupEmitter;
LABEL_24:
        sub_219889CE4(v133, v139);
        (*(v129 + 8))(v131, v132);
        return v113;
      }

      else
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      return result;
    case 0xAuLL:
      v217 = swift_projectBox();
      v129 = v299;
      v218 = *(v299 + 16);
      v131 = v296;
      v132 = v301;
      v218(v296, v217, v301);
      v133 = v302;
      v218(v302, v131, v132);
      v219 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v220 = type metadata accessor for MagazineFeedGroupKnobs();
      v221 = v303;
      sub_219889C7C(v219 + *(v220 + 60), v133 + *(v303 + 20), type metadata accessor for TrendingMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, v133 + *(v221 + 24));
      v222 = (v133 + *(v221 + 28));
      *v222 = 0x676E69646E657254;
      v222[1] = 0xE800000000000000;
      sub_219889C7C(v133, v300, type metadata accessor for TrendingMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280EA41E0, type metadata accessor for TrendingMagazineFeedGroupEmitter);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for TrendingMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 0xBuLL:
      v115 = swift_projectBox();
      v116 = v311;
      v117 = *(v311 + 16);
      v118 = v310;
      v119 = v313;
      v117(v310, v115, v313);
      v120 = v314;
      v117(v314, v118, v119);
      v121 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v122 = type metadata accessor for MagazineFeedGroupKnobs();
      v123 = v315;
      sub_219889C7C(v121 + *(v122 + 64), v120 + *(v315 + 20), type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
      v124 = v338;
      sub_218718690(v338 + 448, v120 + v123[6]);
      sub_218718690(v124 + 88, v120 + v123[7]);
      sub_218718690(v124 + 32, v120 + v123[8]);
      v125 = *(v124 + 72);
      sub_218718690(v124 + 640, v120 + v123[10]);
      v126 = (v120 + v123[11]);
      strcpy(v126, "Best of Bundle");
      v126[15] = -18;
      *(v120 + v123[9]) = v125;
      sub_219889C7C(v120, v312, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280E9BD60, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      v127 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter;
LABEL_22:
      sub_219889CE4(v120, v127);
      (*(v116 + 8))(v118, v119);
      return v113;
    case 0xCuLL:
      v140 = swift_projectBox();
      v129 = v317;
      v141 = *(v317 + 16);
      v131 = v316;
      v132 = v319;
      v141(v316, v140, v319);
      v133 = v320;
      v141(v320, v131, v132);
      v142 = v337 + *(type metadata accessor for MagazineKnobsConfig() + 20);
      v143 = type metadata accessor for MagazineFeedGroupKnobs();
      v144 = v321;
      sub_219889C7C(v142 + *(v143 + 68), v133 + *(v321 + 20), type metadata accessor for NewspaperMagazineFeedGroupKnobs);
      v145 = v338;
      sub_218718690(v338 + 408, v133 + v144[6]);
      sub_218718690(v145 + 88, v133 + v144[7]);
      v146 = (v133 + v144[8]);
      *v146 = 0x657061707377654ELL;
      v146[1] = 0xE900000000000072;
      sub_219889C7C(v133, v318, type metadata accessor for NewspaperMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&unk_280EA2F38, type metadata accessor for NewspaperMagazineFeedGroupEmitter);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for NewspaperMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 0xDuLL:
      v197 = v338;
      v198 = swift_projectBox();
      v199 = v327;
      v200 = *(v327 + 16);
      v201 = v326;
      v202 = v329;
      v200(v326, v198, v329);
      v203 = v322;
      v200(v322, v201, v202);
      type metadata accessor for MagazineKnobsConfig();
      v204 = v325;
      sub_21893C4C0(v325);
      v205 = *(v323 + 48);
      v206 = v324;
      if (v205(v204, 1, v324) == 1)
      {
        v207 = v262;
        if (qword_280EB1128 != -1)
        {
          swift_once();
        }

        v208 = __swift_project_value_buffer(v206, qword_280F61AA0);
        sub_219889C7C(v208, v207, type metadata accessor for CuratedMagazineFeedGroupKnobs);
        if (v205(v204, 1, v206) != 1)
        {
          sub_219889CE4(v204, sub_219889AAC);
        }
      }

      else
      {
        v207 = v262;
        sub_219889C14(v204, v262, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      }

      v240 = v331;
      v241 = v197 + 448;
      v242 = v330;
      sub_218718690(v241, &v330[*(v331 + 24)]);
      (*(v199 + 32))(v242, v203, v202);
      sub_219889C14(v207, v242 + *(v240 + 20), type metadata accessor for CuratedMagazineFeedGroupKnobs);
      sub_219889C7C(v242, v328, type metadata accessor for CuratedMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280EA98F0, type metadata accessor for CuratedMagazineFeedGroupEmitter);
      v113 = sub_219BEDF84();
      sub_219889CE4(v242, type metadata accessor for CuratedMagazineFeedGroupEmitter);
      (*(v199 + 8))(v201, v202);
      return v113;
    case 0xEuLL:
      v114 = *((v98 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v113 = sub_219886DBC(v114, v337);

      return v113;
    default:
      v102 = swift_projectBox();
      v103 = v305;
      v104 = *(v305 + 16);
      v105 = v304;
      v106 = v306;
      v104(v304, v102, v306);
      v107 = v308;
      v104(v308, v105, v106);
      v108 = *(v337 + *(type metadata accessor for MagazineKnobsConfig() + 20) + 8);
      v109 = v309;
      v110 = v338;
      sub_218718690(v338 + 128, v107 + *(v309 + 24));
      v111 = v109[8];
      v337 = *(v110 + 16);
      sub_218718690(v110 + 288, v107 + v111);
      v112 = (v107 + v109[9]);
      *v112 = 0x69726F6765746143;
      v112[1] = 0xEA00000000007365;
      *(v107 + v109[5]) = v108;
      *(v107 + v109[7]) = v337;
      sub_219889C7C(v107, v307, type metadata accessor for CategoriesMagazineFeedGroupEmitter);
      sub_219889B80();
      swift_allocObject();
      sub_2186EC998(&qword_280EA0F78, type metadata accessor for CategoriesMagazineFeedGroupEmitter);
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      sub_219889CE4(v107, type metadata accessor for CategoriesMagazineFeedGroupEmitter);
      (*(v103 + 8))(v105, v106);
      return v113;
  }
}

id *sub_219889978()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 4));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 11));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 21));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 31));
  __swift_destroy_boxed_opaque_existential_1((v0 + 36));
  __swift_destroy_boxed_opaque_existential_1((v0 + 41));
  __swift_destroy_boxed_opaque_existential_1((v0 + 46));
  __swift_destroy_boxed_opaque_existential_1((v0 + 51));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 61));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 68));

  __swift_destroy_boxed_opaque_existential_1((v0 + 75));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  return v0;
}

uint64_t sub_219889A50()
{
  sub_219889978();

  return swift_deallocClassInstance();
}

void sub_219889AAC()
{
  if (!qword_280EB10B0)
  {
    type metadata accessor for CuratedMagazineFeedGroupKnobs();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EB10B0);
    }
  }
}

void sub_219889B04(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BEDD94();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219889B80()
{
  if (!qword_280E91DB8)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC998(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v0 = sub_219BEDFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91DB8);
    }
  }
}

uint64_t sub_219889C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219889C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219889CE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219889D58(uint64_t a1)
{
  v2 = sub_21988B074();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219889D98()
{
  result = qword_27CC203B8;
  if (!qword_27CC203B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC203B8);
  }

  return result;
}

uint64_t sub_219889E7C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v95 = a3;
  v96 = a2;
  v117 = sub_219BDBD64();
  v125 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v124);
  v114 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v86 - v9;
  sub_218C40500();
  v12 = v11;
  v122 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v118 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v126 = &v86 - v15;
  sub_21934EC04();
  MEMORY[0x28223BE20](v16 - 8);
  v99 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SharedWithYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v101);
  v104 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v86 - v20;
  sub_218C40594();
  v23 = v22;
  v107 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v123 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v111 = &v86 - v26;
  v94 = sub_219BE6DF4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988AE58(0, &qword_27CC1DA28, MEMORY[0x277D6DF88]);
  v29 = v28;
  v90 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v89 = &v86 - v30;
  sub_219682348();
  MEMORY[0x28223BE20](v31 - 8);
  v86 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8AAD8();
  v34 = v33;
  v88 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v87 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_218713A88(&qword_27CC10500, sub_218C8AAD8);
  v37 = sub_219BF5E44();
  v38 = MEMORY[0x277D84F90];
  v100 = v34;
  v91 = v29;
  if (!v37)
  {
LABEL_25:
    v79 = sub_218713A88(&qword_27CC1DA38, sub_218C40594);
    v80 = sub_218713A88(&qword_27CC1DA40, sub_218C40594);
    MEMORY[0x21CEB9170](v38, v23, v79, v80);
    sub_218713A88(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    v81 = v87;
    sub_219BEB2D4();
    v82 = v93;
    v83 = v92;
    v84 = v94;
    (*(v93 + 104))(v92, *MEMORY[0x277D6D868], v94);
    sub_218713A88(&qword_27CC203C0, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    v85 = v89;
    sub_219BE85E4();
    (*(v82 + 8))(v83, v84);
    v96(v85);
    (*(v90 + 8))(v85, v91);
    return (*(v88 + 8))(v81, v100);
  }

  v129 = MEMORY[0x277D84F90];
  v106 = v37;
  sub_218C38210(0, v37 & ~(v37 >> 63), 0);
  v38 = v129;
  v105 = v36;
  result = sub_219BF5DF4();
  if (v106 < 0)
  {
    goto LABEL_28;
  }

  v40 = 0;
  v103 = (v107 + 16);
  v108 = (v107 + 32);
  v120 = (v122 + 16);
  v113 = (v125 + 1);
  v112 = (v122 + 8);
  v125 = (v122 + 32);
  v97 = (v107 + 8);
  v121 = v23;
  v102 = v21;
  v98 = a1;
  while (1)
  {
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      __break(1u);
      goto LABEL_27;
    }

    v109 = v42;
    v110 = v38;
    v43 = sub_219BF5EC4();
    v44 = a1;
    v45 = v123;
    (*v103)(v123);
    v43(v128, 0);
    sub_219BE6934();
    v46 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v21, 1, v46) == 1)
    {
      break;
    }

    (*v108)(v111, v45, v23);
    sub_21988AF4C(v21, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    a1 = v44;
LABEL_22:
    v38 = v110;
    v129 = v110;
    v78 = *(v110 + 16);
    v77 = *(v110 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_218C38210(v77 > 1, v78 + 1, 1);
      v38 = v129;
    }

    *(v38 + 16) = v78 + 1;
    (*(v107 + 32))(v38 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v78, v111, v23);
    result = sub_219BF5E94();
    v40 = v109;
    v21 = v102;
    if (v109 == v106)
    {
      goto LABEL_25;
    }
  }

  (*(v47 + 56))(v104, 1, 1, v46);
  v48 = sub_218713A88(&qword_27CC203C8, sub_218C40594);
  v49 = sub_219BF5E44();
  if (!v49)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_21:
    v75 = sub_218713A88(&qword_27CC19078, sub_218C40500);
    v76 = sub_218713A88(&qword_27CC19080, sub_218C40500);
    MEMORY[0x21CEB9170](v51, v12, v75, v76);
    sub_218713A88(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    sub_219BE6924();
    (*v97)(v45, v23);
    a1 = v98;
    goto LABEL_22;
  }

  v50 = v49;
  v127 = MEMORY[0x277D84F90];
  sub_218C37120(0, v49 & ~(v49 >> 63), 0);
  v51 = v127;
  result = sub_219BF5DF4();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v52 = v118;
    while (1)
    {
      v53 = v48;
      v54 = sub_219BF5EC4();
      (*v120)(v52);
      v54(v128, 0);
      sub_219BE5FC4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v71 = type metadata accessor for SharedWithYouFeedModel;
        v72 = v10;
        goto LABEL_14;
      }

      sub_218EA8964();
      v119 = *(v56 + 48);
      v57 = v10;
      v58 = v10;
      v59 = v115;
      sub_21988AFAC(v57, v115);
      sub_218EA89D8();
      v61 = *(v60 + 48);
      v62 = v116;
      sub_219BDBD54();
      v63 = v12;
      v64 = sub_219BDBD44();
      v66 = v65;
      (*v113)(v62, v117);
      v67 = v114;
      *v114 = v64;
      v67[1] = v66;
      v12 = v63;
      sub_21988B010(v59, v67 + v61);
      swift_storeEnumTagMultiPayload();
      sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
      sub_219BE5FB4();
      v68 = v59;
      v10 = v58;
      v52 = v118;
      sub_21988AF4C(v68, type metadata accessor for SharedWithYouFeedGapLocation);
      (*v112)(v52, v63);
      v69 = sub_219BF1584();
      (*(*(v69 - 8) + 8))(&v58[v119], v69);
LABEL_15:
      v127 = v51;
      v74 = *(v51 + 16);
      v73 = *(v51 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_218C37120(v73 > 1, v74 + 1, 1);
        v51 = v127;
      }

      *(v51 + 16) = v74 + 1;
      (*(v122 + 32))(v51 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v74, v126, v12);
      v45 = v123;
      v23 = v121;
      v48 = v53;
      sub_219BF5E94();
      if (!--v50)
      {
        goto LABEL_21;
      }
    }

    sub_218EA89D8();
    v71 = type metadata accessor for SharedWithYouFeedGapLocation;
    v72 = &v10[*(v70 + 48)];
LABEL_14:
    sub_21988AF4C(v72, v71);
    (*v125)(v126, v52, v12);
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_21988AE58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_218713A88(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    v8[3] = sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21988AF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21988AFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21988B010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21988B074()
{
  result = qword_27CC203D0;
  if (!qword_27CC203D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC203D0);
  }

  return result;
}

uint64_t sub_21988B198(uint64_t a1, uint64_t a2)
{
  v134 = a1;
  sub_2187C5110();
  v119 = v4;
  v118 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v120 = v5;
  v121 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_219BF2624();
  v124 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v123 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988C490();
  MEMORY[0x28223BE20](v7 - 8);
  v129 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BF1584();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v127 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BF2634();
  v136 = *(v137 - 8);
  v10 = MEMORY[0x28223BE20](v137);
  v126 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v143 = &v118 - v12;
  v145 = sub_219BF1D74();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v158 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988D6A4(0, &qword_280E902A0, MEMORY[0x277D33BC8]);
  MEMORY[0x28223BE20](v14 - 8);
  v157 = (&v118 - v15);
  v16 = sub_219BE92E4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v153 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v118 - v20;
  v22 = sub_219BE9EC4();
  v154 = *(v22 - 8);
  v155 = v22;
  MEMORY[0x28223BE20](v22);
  v152 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDD804();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v122 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v125 = &v118 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v133 = (&v118 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v135 = &v118 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v118 - v34;
  v141 = v2;
  v156 = *(v2 + 56);
  v138 = a2;
  sub_219BDE5F4();
  v142 = sub_219BDD7F4();
  v151 = v36;
  v132 = v25;
  v37 = *(v25 + 8);
  v140 = v24;
  v139 = v25 + 8;
  v146 = v37;
  v37(v35, v24);
  sub_218A55778();
  v39 = v38;
  v40 = *(v38 + 48);
  v149 = *MEMORY[0x277D6E4C0];
  v41 = v149;
  v42 = sub_219BE92A4();
  v43 = *(v42 - 8);
  v148 = *(v43 + 104);
  v150 = v43 + 104;
  v44 = v21;
  v147 = v21;
  v148(v21, v41, v42);
  v45 = *MEMORY[0x277D6E500];
  v46 = sub_219BE92B4();
  v47 = *(*(v46 - 8) + 104);
  v47(&v44[v40], v45, v46);
  v48 = *MEMORY[0x277D6E4F0];
  v49 = *(v17 + 104);
  v50 = v44;
  v51 = v16;
  v49(v50, v48, v16);
  v52 = *(v39 + 48);
  v53 = v153;
  v148(v153, v149, v42);
  v54 = v152;
  v47(&v53[v52], *MEMORY[0x277D6E508], v46);
  v49(v53, v48, v51);
  sub_219BE9EB4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = sub_218FE7680(v142, v151, v54);

    (*(v154 + 8))(v54, v155);
    result = v57;
    if (v57)
    {
      return result;
    }
  }

  else
  {

    (*(v154 + 8))(v54, v155);
  }

  v59 = v135;
  sub_219BDE5F4();
  v60 = sub_219BDD7F4();
  v62 = v61;
  v63 = v140;
  v146(v59, v140);
  v64 = v157;
  *v157 = v60;
  v64[1] = v62;
  v65 = *MEMORY[0x277D33B80];
  v66 = sub_219BF2CB4();
  v67 = *(v66 - 8);
  (*(v67 + 104))(v64, v65, v66);
  (*(v67 + 56))(v64, 0, 1, v66);
  v68 = v141;
  v69 = v144;
  v70 = v145;
  (*(v144 + 104))(v158, *MEMORY[0x277D335F8], v145);
  v71 = v64;
  v72 = v143;
  sub_2189A4BB8(v71, v68, v143);
  __swift_project_boxed_opaque_existential_1((v68 + 528), *(v68 + 552));
  if (sub_219BEED54() & 1) != 0 || (sub_219BF2614())
  {
    (*(v136 + 8))(v72, v137);
    (*(v69 + 8))(v158, v70);
    sub_21988D648(v157, &qword_280E902A0, MEMORY[0x277D33BC8]);
    v73 = v133;
    sub_219BDE5F4();
    v74 = v132;
    v75 = (*(v132 + 88))(v73, v63);
    if (v75 == *MEMORY[0x277D2FB08])
    {
      (*(v74 + 96))(v73, v63);

      sub_218A27458();
    }

    else
    {
      if (v75 != *MEMORY[0x277D2FAF8])
      {
        if (v75 != *MEMORY[0x277D2FAF0])
        {
          if (v75 == *MEMORY[0x277D2FB00])
          {
            (*(v74 + 96))(v73, v63);
            v91 = *v73;
            sub_21988D06C();
            v93 = v92;
            v158 = v91;
            v94 = swift_projectBox();
            v95 = *(v93 + 48);
            sub_218718690(v94, v160);
            v96 = *(v74 + 16);
            v97 = v94 + v95;
            v98 = v125;
            v96(v125, v97, v63);
            v157 = sub_219BDE624();
            v96(v122, v98, v63);
            sub_219BDE644();
            sub_219BDE674();
            swift_allocObject();
            v99 = sub_219BDE604();
            v100 = swift_unknownObjectWeakLoadStrong();
            if (v100)
            {
              v101 = v100;
              if ([*(v68 + 168) improvedBlockingBehaviorEnabled])
              {
                sub_218718690(v160, &v159);
                sub_219BEA744();
                swift_allocObject();
                v156 = v101;
                v153 = sub_219BEA6C4();
                v102 = swift_allocObject();
                swift_weakInit();
                v103 = v118;
                v104 = *(v118 + 16);
                v154 = v118 + 16;
                v155 = v104;
                v105 = v121;
                v106 = v119;
                v104(v121, v134, v119);
                v107 = *(v103 + 80);
                v108 = (v107 + 24) & ~v107;
                v109 = (v120 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
                v110 = swift_allocObject();
                *(v110 + 16) = v102;
                v111 = *(v103 + 32);
                v111(v110 + v108, v105, v106);
                v157 = v99;
                *(v110 + v109) = v99;

                sub_219BEA6F4();

                sub_219BEA714();

                v112 = swift_allocObject();
                swift_weakInit();
                sub_218718690(v160, &v159);
                v113 = v121;
                v155(v121, v134, v106);
                v114 = swift_allocObject();
                sub_2186CB1F0(&v159, v114 + 16);
                *(v114 + 56) = v112;
                v111(v114 + ((v107 + 64) & ~v107), v113, v106);

                sub_219BEA734();

                v115 = v156;
                v116 = sub_219BF6534();
                sub_219BEA6D4();

                v146(v125, v140);
                __swift_destroy_boxed_opaque_existential_1(v160);

                return 0;
              }
            }

            else
            {
            }

            v146(v125, v63);
            __swift_destroy_boxed_opaque_existential_1(v160);
          }

          else
          {
            v146(v73, v63);
          }

          return sub_21988CD8C(v134);
        }

        (*(v74 + 96))(v73, v63);

        sub_2197195C0();
        v77 = *(v82 + 64);
LABEL_12:
        v78 = sub_219BDDBF4();
        (*(*(v78 - 8) + 8))(v73 + v77, v78);
        return sub_21988CD8C(v134);
      }

      (*(v74 + 96))(v73, v63);

      sub_2191B3054();
    }

    v77 = *(v76 + 48);
    goto LABEL_12;
  }

  v79 = v129;
  sub_219BF1B74();
  v80 = v130;
  v81 = v131;
  if ((*(v130 + 48))(v79, 1, v131) == 1)
  {
    (*(v136 + 8))(v72, v137);
    (*(v69 + 8))(v158, v70);
    sub_21988D648(v157, &qword_280E902A0, MEMORY[0x277D33BC8]);
    sub_21988C4F4(v79);
    return 0;
  }

  else
  {
    v83 = v127;
    (*(v80 + 32))(v127, v79, v81);
    v84 = v136;
    v85 = v126;
    v86 = v137;
    (*(v136 + 16))(v126, v72, v137);
    if ((*(v84 + 88))(v85, v86) == *MEMORY[0x277D33980])
    {
      (*(v84 + 96))(v85, v86);
      v87 = v124;
      v88 = v85;
      v89 = v123;
      (*(v124 + 32))(v123, v88, v128);
      __swift_project_boxed_opaque_existential_1((v68 + 128), *(v68 + 152));
      v90 = sub_219BF4984();
      sub_2189A46C0(v134, v90);

      (*(v87 + 8))(v89, v128);
      (*(v80 + 8))(v83, v131);
      (*(v84 + 8))(v143, v86);
      (*(v144 + 8))(v158, v145);
      sub_21988D648(v157, &qword_280E902A0, MEMORY[0x277D33BC8]);
    }

    else
    {
      (*(v80 + 8))(v83, v81);
      v117 = *(v84 + 8);
      v117(v72, v86);
      (*(v69 + 8))(v158, v70);
      sub_21988D648(v157, &qword_280E902A0, MEMORY[0x277D33BC8]);
      v117(v85, v86);
    }

    return 0;
  }
}

void sub_21988C490()
{
  if (!qword_27CC203D8)
  {
    sub_219BDDBC4();
    sub_2186FB7D0();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC203D8);
    }
  }
}

uint64_t sub_21988C4F4(uint64_t a1)
{
  sub_21988C490();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21988C550(uint64_t a1, unsigned __int8 *a2)
{
  v35 = a1;
  v4 = sub_219BE92E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_219BE9EC4();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *a2;
  v34 = *(a2 + 8);
  v33 = *(a2 + 24);
  v36 = v2;
  v13 = *(v2 + 56);
  v40 = v12;
  v14 = v12 == 0;
  v15 = 0xED0000676F6C6174;
  if (!v14)
  {
    v15 = 0xE900000000000078;
  }

  v38 = v13;
  v39 = v15;
  v16 = *MEMORY[0x277D6E528];
  v17 = sub_219BE92D4();
  v18 = *(*(v17 - 8) + 104);
  v18(v10, v16, v17);
  v19 = *MEMORY[0x277D6E518];
  v20 = *(v5 + 104);
  v20(v10, v19, v4);
  v18(v7, v16, v17);
  v21 = v37;
  v20(v7, v19, v4);
  sub_219BE9EB4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v40;
    if (v40)
    {
      v25 = 0x6F42657069636572;
    }

    else
    {
      v25 = 0x6143657069636572;
    }

    v26 = sub_218FE7680(v25, v39, v21);

    (*(v41 + 8))(v21, v42);
    v27 = v24;
    if (v26)
    {
      return v26;
    }
  }

  else
  {

    (*(v41 + 8))(v21, v42);
    v27 = v40;
  }

  __swift_project_boxed_opaque_existential_1((v36 + 16), *(v36 + 40));
  sub_2186CFDE4(0, &qword_280EC7050);
  result = sub_219BE1E34();
  if (v45)
  {
    sub_2186CB1F0(&v43, v46);
    v29 = v47;
    v30 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v43 = v27;
    v44 = v34;
    v45 = v33;
    v31 = (*(v30 + 8))(&v43, v29, v30);
    v26 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    [v26 setModalInPresentation_];
    sub_2187C5110();
    v32 = sub_219BEA784();
    v32(v26);

    __swift_destroy_boxed_opaque_existential_1(v46);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_21988C970(uint64_t a1, uint64_t a2)
{
  sub_21988D6A4(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_219BE92E4();
  v46 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = sub_219BE9EC4();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = sub_21988CD8C(a2);
    if (v17)
    {
      v18 = *(v16 + 56);
      v42 = v17;
      v43 = v18;
      sub_218A55778();
      v40 = v19;
      v44 = *(v19 + 48);
      v37 = *MEMORY[0x277D6E4C0];
      v20 = v37;
      v21 = sub_219BE92A4();
      v41 = v5;
      v22 = v21;
      v23 = *(v21 - 8);
      v36 = *(v23 + 104);
      v38 = v23 + 104;
      v36(v11, v20, v21);
      v24 = *MEMORY[0x277D6E500];
      v25 = sub_219BE92B4();
      v39 = v14;
      v26 = v25;
      v35 = *(*(v25 - 8) + 104);
      v35(&v11[v44], v24, v25);
      v27 = *MEMORY[0x277D6E4F0];
      v44 = v16;
      v28 = *(v46 + 104);
      v28(v11, v27, v6);
      v46 = v12;
      v29 = *(v40 + 48);
      v36(v9, v37, v22);
      v35(&v9[v29], *MEMORY[0x277D6E508], v26);
      v28(v9, v27, v6);
      v30 = v39;
      sub_219BE9EB4();
      v31 = sub_219BE94F4();
      v32 = v41;
      (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
      v33 = v42;
      sub_21909BA64(v42, v30, v32);

      sub_21988D648(v32, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v45 + 8))(v30, v46);
    }
  }

  return result;
}

uint64_t sub_21988CD8C(uint64_t a1)
{
  v3 = sub_219BDD804();
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDDC14();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186CFDE4(0, &unk_27CC203E8);
  sub_2187C5110();
  v15[1] = v9;
  v18 = a1;
  sub_219BEA794();
  sub_219BE1E14();

  if (v21)
  {
    sub_2186CB1F0(&v20, v22);

    sub_219BDDC04();
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v11 = sub_219BDE1C4();
    if ((sub_219BED0C4() & 1) == 0)
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      sub_219BDE5F4();
      sub_219BDD7F4();
      (*(v16 + 8))(v5, v17);
      v12 = sub_219BE9CE4();
      v13 = sub_219BEA784();
      v14 = v12;
      v13();

      v11 = v14;
    }

    (*(v6 + 8))(v8, v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21988D06C()
{
  if (!qword_27CC203E0)
  {
    sub_2186CFDE4(255, &qword_280EE37C8);
    sub_219BDD804();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC203E0);
    }
  }
}

uint64_t sub_21988D0EC()
{
  sub_2187C5110();
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_21988C970(v3, v4);
}

uint64_t sub_21988D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  sub_21988D6A4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988D6A4(0, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_219BDDDA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(a1, v27);
  sub_2186CFDE4(0, &qword_280EE37C8);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v14);
    (*(v15 + 32))(v17, v13, v14);
    sub_219BDDD84();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v15 + 8))(v17, v14);
      return sub_21988D648(v6, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v21 = sub_218CF8A44(v26);

        if (v21)
        {
          [v21 setModalPresentationStyle_];
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v23 = Strong;
              v24 = sub_219BF6534();

              [v24 presentViewController:v21 animated:1 completion:0];
            }

            else
            {
            }
          }
        }
      }

      (*(v8 + 8))(v10, v7);
      return (*(v15 + 8))(v17, v14);
    }
  }

  else
  {
    v19(v13, 1, 1, v14);
    return sub_21988D648(v13, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  }
}

uint64_t sub_21988D5E0()
{
  sub_2187C5110();
  v2 = *(v0 + 56);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  return sub_21988D17C(v0 + 16, v2, v3);
}

uint64_t sub_21988D648(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21988D6A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21988D6A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21988D720(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_21988D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_219BDB954();
  v37 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:13 inDomains:1];
  v17 = sub_219BF5924();

  if (*(v17 + 16))
  {
    v36 = a3;
    (*(v37 + 16))(v12, v17 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v6);

    v18 = *(v37 + 32);
    v18(v14, v12, v6);
    v38 = a1;
    v39 = a2;

    MEMORY[0x21CECC330](1735290926, 0xE400000000000000);
    sub_219BDB874();

    sub_219BDB8F4();
    v19 = sub_219BF53D4();

    v20 = [v15 fileExistsAtPath_];

    if (v20)
    {
      (*(v37 + 8))(v14, v6);

LABEL_10:
      v32 = v36;
      v18(v36, v9, v6);
      return (*(v37 + 56))(v32, 0, 1, v6);
    }

    v23 = sub_219BF53D4();
    v24 = [objc_opt_self() imageNamed_];

    if (v24)
    {
      v25 = UIImagePNGRepresentation(v24);
      if (v25)
      {
        v26 = v25;
        v27 = sub_219BDBA04();
        v34 = v28;
        v35 = v27;

        sub_219BDB8F4();
        v29 = sub_219BF53D4();

        v30 = v34;
        v31 = sub_219BDB9E4();
        [v15 createFileAtPath:v29 contents:v31 attributes:0];

        sub_2186C6190(v35, v30);
        (*(v37 + 8))(v14, v6);
        goto LABEL_10;
      }
    }

    v33 = *(v37 + 8);
    v33(v9, v6);
    v33(v14, v6);
    return (*(v37 + 56))(v36, 1, 1, v6);
  }

  else
  {

    v21 = *(v37 + 56);

    return v21(a3, 1, 1, v6);
  }
}

uint64_t sub_21988DB98(void *a1, void *a2, double a3, double a4, double a5)
{
  v10 = sub_219BDD2E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:0.0 cornerRadii:{0.0, a3, a4, a5, a5}];
  v15 = [a1 CGContext];
  v16 = [v14 CGPath];
  CGContextAddPath(v15, v16);

  v17 = [a1 CGContext];
  v18 = [a2 CGColor];
  CGContextSetFillColorWithColor(v17, v18);

  v19 = [a1 CGContext];
  CGContextClosePath(v19);

  v20 = [a1 CGContext];
  (*(v11 + 104))(v13, *MEMORY[0x277CBF258], v10);
  sub_219BF5FE4();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21988DDD0(void *a1, double a2, double a3)
{
  if (sub_219BED0C4())
  {
    v6 = 7.0;
  }

  else
  {
    v6 = 3.0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v6;
  *(v8 + 40) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21988DF90;
  *(v9 + 24) = v8;
  v14[4] = sub_218BFF7C4;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21988D720;
  v14[3] = &block_descriptor_179;
  v10 = _Block_copy(v14);
  v11 = a1;

  v12 = [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21988DFA0()
{
  v1 = v0;
  v2 = [v0 backingChannel];
  if (v2)
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = [objc_msgSend(v0 backingTag)];
  }

  v4 = v3;
  swift_unknownObjectRelease();
  v5 = sub_219BF5414();
  v7 = v6;

  v8 = [v1 backingChannel];
  if (v8)
  {
    v9 = [v8 name];
  }

  else
  {
    v9 = [objc_msgSend(v1 backingTag)];
  }

  v10 = v9;
  swift_unknownObjectRelease();
  v11 = sub_219BF5414();
  v13 = v12;

  MEMORY[0x21CECC330](10272, 0xE200000000000000);
  MEMORY[0x21CECC330](v11, v13);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  MEMORY[0x21CECC330](v5, v7);

  v14 = [objc_msgSend(v1 backingTag)];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_219BF7314();

    v15 = [v14 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    MEMORY[0x21CECC330](v16, v18);

    MEMORY[0x21CECC330](10272, 0xE200000000000000);
    v19 = [v14 name];
    v20 = sub_219BF5414();
    v22 = v21;

    MEMORY[0x21CECC330](v20, v22);

    MEMORY[0x21CECC330](23849, 0xE200000000000000);
    MEMORY[0x21CECC330](0x6F69746365735B20, 0xEA00000000003D6ELL);
    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_21988E274(uint64_t *a1@<X8>)
{
  v3 = [v1 feedConfiguration];
  if (v3 <= 9)
  {
    if (v3 != 3)
    {
      if (v3 == 9)
      {
        v4 = [v1 alternativeFeedDescriptor];
        if (!v4)
        {
          v5 = xmmword_219C43500;
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v4 = [v1 alternativeFeedDescriptor];
    if (!v4)
    {
      v5 = xmmword_219C43510;
      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v3 != 10)
  {
    if (v3 != 12)
    {
      if (v3 == 13)
      {
        v4 = [v1 alternativeFeedDescriptor];
        if (!v4)
        {
          v5 = xmmword_219C43560;
LABEL_21:
          *a1 = v5;
          return;
        }

        goto LABEL_19;
      }

LABEL_20:
      v5 = xmmword_219CAF2B0;
      goto LABEL_21;
    }

    v4 = [v1 alternativeFeedDescriptor];
    if (!v4)
    {
      v5 = xmmword_219C43550;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v4 = [v1 alternativeFeedDescriptor];
  if (v4)
  {
    goto LABEL_19;
  }

  v6 = [objc_msgSend(v1 backingTag)];
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_20;
  }

  swift_getObjectType();
  sub_2190C093C(a1);

  swift_unknownObjectRelease();
}

unint64_t sub_21988E41C()
{
  sub_21988E274(&v7);
  if (v8 <= 5)
  {
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        sub_218ED0F50(v7, 3uLL);
        return 0xD00000000000001ALL;
      }

      if (v8 != 4)
      {
        sub_218ED0F50(v7, 5uLL);
        return 0xD000000000000016;
      }
    }

    else if (v8 >= 3)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v8 < 9)
  {
LABEL_13:
    sub_218ED0F50(v7, v8);
    return 0;
  }

  switch(v8)
  {
    case 9:
      sub_218ED0F50(v7, 9uLL);
      return 0xD000000000000018;
    case 10:
      sub_218ED0F50(v7, 0xAuLL);
      return 0xD00000000000001ELL;
    case 11:
      return 0;
  }

LABEL_18:
  v1 = v7;
  v2 = v8;
  sub_218720448(v7, v8);
  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v3 = v1;
  v4 = v1;
  v5 = v2;
  v6 = sub_21962F2B0(v4, v2);

  sub_218ED0F50(v3, v5);
  sub_218ED0F50(v3, v5);
  return v6;
}

uint64_t sub_21988E608@<X0>(uint64_t a1@<X8>)
{
  sub_21988E274(&v8);
  v2 = 1;
  v3 = v8;
  v4 = v9;
  if (v9 > 5)
  {
    if (v9 >= 9)
    {
      if (v9 == 11)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if (v9 > 2)
  {
    if (v9 != 4)
    {
LABEL_9:
      swift_getKeyPath();
      swift_unknownObjectRetain();
      sub_219BEE534();
      v2 = 0;
    }
  }

  else if (v9 >= 3)
  {
    goto LABEL_9;
  }

  sub_218ED0F50(v3, v4);
LABEL_11:
  v5 = sub_219BEE544();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v2, 1, v5);
}

id sub_21988E764@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sportsFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E7A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 puzzleHubFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E7DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 puzzleTypeFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E818@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 foodHubFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E854@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipeCatalogFeedRules];
  *a2 = result;
  return result;
}

uint64_t sub_21988E8A8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        sub_21988ECA4();
        v8 = sub_219BF3154();
        v15 = *(v8 - 8);
        v10 = *(v15 + 72);
        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_219C09EC0;
        v12 = v1 + v16;
        v13 = *(v15 + 104);
        v13(v12, *MEMORY[0x277D33D40], v8);
        v14 = MEMORY[0x277D33D48];
        break;
      case 9:
        sub_21988ECA4();
        v8 = sub_219BF3154();
        v19 = *(v8 - 8);
        v20 = *(v19 + 72);
        v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_219C0EE20;
        v22 = v1 + v21;
        v13 = *(v19 + 104);
        v13(v22, *MEMORY[0x277D33D40], v8);
        v13(v22 + v20, *MEMORY[0x277D33D38], v8);
        v13(v22 + 2 * v20, *MEMORY[0x277D33D48], v8);
        v17 = *MEMORY[0x277D33D50];
        v18 = v22 + 3 * v20;
        goto LABEL_11;
      case 10:
        sub_21988ECA4();
        v8 = sub_219BF3154();
        v9 = *(v8 - 8);
        v10 = *(v9 + 72);
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_219C09EC0;
        v12 = v1 + v11;
        v13 = *(v9 + 104);
        v13(v12, *MEMORY[0x277D33D40], v8);
        v14 = MEMORY[0x277D33D50];
        break;
      default:
        return v1;
    }

    v17 = *v14;
    v18 = v12 + v10;
LABEL_11:
    v13(v18, v17, v8);
    return v1;
  }

  if (a1 < 3)
  {
    sub_21988ECA4();
    v2 = sub_219BF3154();
    v3 = *(v2 - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_219C0B8C0;
    v6 = v1 + v5;
    v7 = *(v3 + 104);
    v7(v6, *MEMORY[0x277D33D40], v2);
    v7(v6 + v4, *MEMORY[0x277D33D38], v2);
    v7(v6 + 2 * v4, *MEMORY[0x277D33D48], v2);
  }

  return v1;
}

void sub_21988ECA4()
{
  if (!qword_280E8B7D0)
  {
    sub_219BF3154();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B7D0);
    }
  }
}

void *sub_21988ECFC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChatterboxURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_66;
  }

  sub_219897A00(qword_280ECF0C0, type metadata accessor for ChatterboxURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AlternateUniversalLinkURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_219897A00(&qword_280EA7360, type metadata accessor for AlternateUniversalLinkURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_219897A00(&unk_280ED1390, type metadata accessor for FollowingURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCategoryURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  sub_219897A00(qword_280EBB438, type metadata accessor for MagazineCategoryURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  sub_219897A00(&qword_280EC7BA0, type metadata accessor for MagazineFeedURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  sub_219897A00(&unk_280EBA358, type metadata accessor for SportsManagementURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MyMagazinesURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_219897A00(&qword_280ECA790, type metadata accessor for MyMagazinesURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RootPathURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_219897A00(&qword_280ED2FE0, type metadata accessor for RootPathURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BundleSubscriptionURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_219897A00(qword_280EB51D0, type metadata accessor for BundleSubscriptionURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AlacarteSubscriptionURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_219897A00(&qword_280EADC68, type metadata accessor for AlacarteSubscriptionURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for IssueURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_219897A00(&qword_280EDA400, type metadata accessor for IssueURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for EmailSignupURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sub_219897A00(&qword_280ECB468, type metadata accessor for EmailSignupURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FamilySetupURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_219897A00(&qword_280ECB2C0, type metadata accessor for FamilySetupURLHandler);
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SavedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_219897A00(qword_280ED9C70, type metadata accessor for SavedURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharedWithYouURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_219897A00(qword_280EC34D0, type metadata accessor for SharedWithYouURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HistoryURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_219897A00(qword_280ED61E8, type metadata accessor for HistoryURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BrowseChannelsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_219897A00(qword_280EC25F0, type metadata accessor for BrowseChannelsURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BrowseChannelsPlusURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  sub_219897A00(qword_280EB5280, type metadata accessor for BrowseChannelsPlusURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NotificationsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_219897A00(&unk_280EC4280, type metadata accessor for NotificationsURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ForYouFeedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  sub_219897A00(qword_280ECEA80, type metadata accessor for ForYouFeedURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  sub_219897A00(&unk_280ED2030, type metadata accessor for WebEmbedURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  sub_219897A00(qword_280ED6E38, type metadata accessor for ArticleURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticlePreviewURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  sub_219897A00(qword_280EC2AB0, type metadata accessor for ArticlePreviewURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsEventURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  sub_219897A00(qword_280EC9BB8, type metadata accessor for SportsEventURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SpotlightURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_219897A00(&unk_280ED02B0, type metadata accessor for SpotlightURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TagURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  sub_219897A00(qword_280EDD468, type metadata accessor for TagURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for InterstitialPreviewURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  sub_219897A00(&qword_280EB0500, type metadata accessor for InterstitialPreviewURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for UserSegmentationURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_219897A00(&qword_280EB9850, type metadata accessor for UserSegmentationURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OpenInNewsErrorHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_219897A00(qword_280EE0EA0, type metadata accessor for OpenInNewsErrorHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  sub_219897A00(qword_280ED78C8, type metadata accessor for SearchURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SmarterMessagingURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  sub_219897A00(&qword_280EBA430, type metadata accessor for SmarterMessagingURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SystemNotificationsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  sub_219897A00(qword_280EAE880, type metadata accessor for SystemNotificationsURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MySportsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  sub_219897A00(qword_280ED33C0, type metadata accessor for MySportsURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleHubURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  sub_219897A00(&unk_280ED0A50, type metadata accessor for PuzzleHubURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  sub_219897A00(&qword_280ED81B0, type metadata accessor for PuzzleURLHandler);
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleTypeURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  sub_219897A00(qword_280ECDF90, type metadata accessor for PuzzleTypeURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageSubscriptionsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_219897A00(qword_280EB0070, type metadata accessor for ManageSubscriptionsURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for LocationSharingURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  sub_219897A00(&qword_280EBE268, type metadata accessor for LocationSharingURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NewsSettingsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_219897A00(&qword_280EE0A10, type metadata accessor for NewsSettingsURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeBoxURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_219897A00(&qword_280ED08D0, type metadata accessor for RecipeBoxURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  sub_219897A00(&qword_280ED80C0, type metadata accessor for RecipeURLHandler);
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FoodHubURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_219897A00(qword_280ED6578, type metadata accessor for FoodHubURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeCatalogURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_219897A00(&qword_280EC3C10, type metadata accessor for RecipeCatalogURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (![result narrativeAudio])
  {
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDDD24();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_219897A00(&qword_280EE8D28, MEMORY[0x277D2FD10]);
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioFeedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  sub_219897A00(&unk_280ED1E70, type metadata accessor for AudioFeedURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioHistoryURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  sub_219897A00(qword_280EC8B50, type metadata accessor for AudioHistoryURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  sub_219897A00(qword_280EC5C40, type metadata accessor for AudioPlaylistURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioOptionsURLHandler();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219897A00(&qword_280EC8A98, type metadata accessor for AudioOptionsURLHandler);
    sub_219BE25E4();

LABEL_52:
    sub_219BE1CC4();
    if (sub_219BE1CB4())
    {
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      type metadata accessor for TTRURLHandler();
      result = sub_219BE1E24();
      if (!result)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      sub_219897A00(qword_280EDD820, type metadata accessor for TTRURLHandler);
      sub_219BE25E4();
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BE3FC4();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219897A00(&qword_280EE6468, MEMORY[0x277D34EC8]);
      sub_219BE25D4();

      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      type metadata accessor for UnrecognizedURLRetryHandler();
      result = sub_219BE1E24();
      if (result)
      {
        sub_219897A00(qword_280EB6000, type metadata accessor for UnrecognizedURLRetryHandler);
        sub_219BE25D4();

        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        type metadata accessor for UnsupportedRecordURLHandler();
        result = sub_219BE1E24();
        if (result)
        {
          sub_219897A00(qword_280EB5F40, type metadata accessor for UnsupportedRecordURLHandler);
          sub_219BE25D4();

          __swift_project_boxed_opaque_existential_1(a2, a2[3]);
          type metadata accessor for WebViewControllerURLHandler();
          result = sub_219BE1E24();
          if (result)
          {
            sub_219897A00(qword_280EB5C10, type metadata accessor for WebViewControllerURLHandler);
            sub_219BE25D4();

            __swift_project_boxed_opaque_existential_1(a2, a2[3]);
            type metadata accessor for AdPreviewURLHandlerProcessor();
            result = sub_219BE1E24();
            if (result)
            {
              sub_219897A00(qword_280EB5B60, type metadata accessor for AdPreviewURLHandlerProcessor);
              sub_219BE25F4();

              __swift_project_boxed_opaque_existential_1(a2, a2[3]);
              sub_219BE4224();
              result = sub_219BE1E24();
              if (result)
              {
                sub_219897A00(&qword_280EE63E0, MEMORY[0x277D34FF0]);
                sub_219BE25F4();

                __swift_project_boxed_opaque_existential_1(a2, a2[3]);
                sub_219BE42D4();
                result = sub_219BE1E24();
                if (result)
                {
                  sub_219897A00(&unk_280EE6378, MEMORY[0x277D35048]);
                  sub_219BE25F4();

                  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
                  type metadata accessor for FollowLiveActivityURLProcessor();
                  result = sub_219BE1E24();
                  if (result)
                  {
                    sub_219897A00(qword_280EACE00, type metadata accessor for FollowLiveActivityURLProcessor);
                    sub_219BE25F4();

                    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
                    type metadata accessor for EngagementJourneyURLHandlerProcessor();
                    result = sub_219BE1E24();
                    if (result)
                    {
                      sub_219897A00(&qword_280E9BB08, type metadata accessor for EngagementJourneyURLHandlerProcessor);
                      sub_219BE25F4();

                      return swift_unknownObjectRelease();
                    }

                    goto LABEL_117;
                  }

LABEL_116:
                  __break(1u);
LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

LABEL_115:
                __break(1u);
                goto LABEL_116;
              }

LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_219890F3C()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE42D4();
  sub_219BE2904();
  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  type metadata accessor for AudioFeedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BDDD24();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for FollowingURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MagazineFeedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SportsManagementURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MagazineCategoryURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MyMagazinesURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for IssueURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for RootPathURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for BundleSubscriptionURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AlacarteSubscriptionURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &unk_280EB0440);
  sub_219BE2914();

  type metadata accessor for MagazineActivityNavigator();
  sub_219BE2904();

  sub_219BE4224();
  sub_219BE2904();

  sub_219BE3FC4();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for EmailSignupURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for FamilySetupURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ChatterboxURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for WebViewControllerURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SavedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SharedWithYouURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for HistoryURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for BrowseChannelsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for BrowseChannelsPlusURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for NotificationsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SystemNotificationsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MySportsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ForYouFeedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ArticleURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ArticlePreviewURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioOptionsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for TagURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SportsEventURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SpotlightURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AlternateUniversalLinkURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for OpenInNewsErrorHandler();
  sub_219BE2904();

  type metadata accessor for SearchURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SmarterMessagingURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for WebEmbedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for InterstitialPreviewURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for UserSegmentationURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AdPreviewURLHandlerProcessor();
  sub_219BE2904();

  type metadata accessor for FollowLiveActivityURLProcessor();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioHistoryURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioPlaylistURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for PuzzleHubURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for PuzzleTypeURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for UnrecognizedURLRetryHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for PuzzleURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for UnsupportedRecordURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ManageSubscriptionsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for LocationSharingURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for NewsSettingsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for RecipeBoxURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for RecipeURLHandler();
  sub_219BE2904();

  type metadata accessor for FoodHubURLHandler();
  sub_219BE2904();

  type metadata accessor for RecipeCatalogURLHandler();
  sub_219BE2904();

  type metadata accessor for TTRURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for EngagementJourneyURLHandlerProcessor();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  return (v6)(v3, v0);
}

uint64_t sub_219892A24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310);
  result = sub_219BE1E34();
  if (v3)
  {
    swift_getObjectType();
    v2 = sub_219BE44F4();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219892AC0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8B88);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v8)
  {
    type metadata accessor for AudioFeedURLHandler();
    v6 = swift_allocObject();
    sub_219897824(MEMORY[0x277D84F90]);
    v7 = sub_219BE2684();

    v6[2] = v7;
    v6[3] = v3;
    sub_2186CB1F0(&v10, (v6 + 4));
    v6[9] = v4;
    v6[10] = v5;
    v6[11] = v8;
    v6[12] = v9;
    return v6;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219892D04(void *a1)
{
  v2 = sub_219BE26B4();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8B88);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE8D30);
    result = sub_219BE1E34();
    if (v4)
    {
      sub_219BE26A4();
      sub_219BDDD24();
      swift_allocObject();
      return sub_219BDDD14();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219892EB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for SportsManagementURLHandler();
      v5 = swift_allocObject();
      sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
      v6 = *(sub_219BE2644() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_219C09BA0;
      v9 = (v8 + v7);
      *v9 = 0x4449676174;
      v9[1] = 0xE500000000000000;
      (*(v6 + 104))();
      sub_219897824(MEMORY[0x277D84F90]);
      v10 = sub_219BE2684();

      v5[2] = v10;
      v5[3] = v3;
      v5[4] = v4;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2198930EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440);
  result = sub_219BE1E34();
  if (v17)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v2);
    v4 = (v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for MagazineActivityNavigator();
    v15[3] = v7;
    v15[4] = &off_282A634B0;
    v15[0] = v6;
    type metadata accessor for MagazineCategoryURLHandler();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[6] = v7;
    v8[7] = &off_282A634B0;
    v8[3] = v13;
    sub_219897824(MEMORY[0x277D84F90]);
    v14 = sub_219BE2674();

    v8[2] = v14;
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219893380(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for MagazineActivityNavigator();
    v17[3] = v9;
    v17[4] = &off_282A634B0;
    v17[0] = v8;
    a2(0);
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v11);
    v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v10[6] = v9;
    v10[7] = &off_282A634B0;
    v10[3] = v15;
    sub_219897824(MEMORY[0x277D84F90]);
    v16 = sub_219BE2674();

    v10[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198935E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for MagazineActivityNavigator();
    v14[3] = v7;
    v14[4] = &off_282A634B0;
    v14[0] = v6;
    type metadata accessor for IssueURLHandler();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_2198975C8(*v11, v8);
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21989381C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440);
  result = sub_219BE1E34();
  if (!v43)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6398);
  result = sub_219BE1E34();
  if (!v41)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v35 = v38;
  if (v38)
  {
    v33 = v39;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v34 = v32;
    MEMORY[0x28223BE20](v4);
    v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for MagazineActivityNavigator();
    v37[3] = v9;
    v37[4] = &off_282A634B0;
    v37[0] = v8;
    type metadata accessor for BundleSubscriptionURLHandler();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v37, v9);
    v32[1] = v32;
    MEMORY[0x28223BE20](v11);
    v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v10[6] = v9;
    v10[7] = &off_282A634B0;
    v10[3] = v15;
    sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
    v16 = sub_219BE2644();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v32[0] = 8 * v18;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C870B0;
    v21 = (v20 + v19);
    *v21 = 0x6E676961706D6163;
    *(v21 + 1) = 0xEB0000000064695FLL;
    v22 = *(v17 + 104);
    (v22)(v20 + v19, *MEMORY[0x277D6CC80], v16);
    strcpy(&v21[v18], "campaign_type");
    *&v21[v18 + 14] = -4864;
    v22();
    v23 = &v21[2 * v18];
    *v23 = 0x6576697461657263;
    *(v23 + 1) = 0xEB0000000064695FLL;
    v22();
    v24 = &v21[3 * v18];
    *v24 = 0x6E656B6F7471;
    *(v24 + 1) = 0xE600000000000000;
    v22();
    v25 = &v21[4 * v18];
    *v25 = 0xD000000000000010;
    *(v25 + 1) = 0x8000000219CE9690;
    v22();
    v26 = &v21[5 * v18];
    *v26 = 0x644964656566;
    *(v26 + 1) = 0xE600000000000000;
    v22();
    v27 = &v21[6 * v18];
    *v27 = 0x49656C6369747261;
    *(v27 + 1) = 0xE900000000000064;
    v22();
    v28 = v32[0];
    v29 = &v21[v32[0] - v18];
    *v29 = 0x795468636E75616CLL;
    *(v29 + 1) = 0xEA00000000006570;
    v22();
    strcpy(&v21[v28], "purchaseOrigin");
    v21[v28 + 15] = -18;
    v22();
    sub_219897824(MEMORY[0x277D84F90]);
    v30 = sub_219BE2684();

    v10[2] = v30;
    v10[8] = v36;
    sub_2186CB1F0(&v40, (v10 + 9));
    v31 = v33;
    v10[14] = v35;
    v10[15] = v31;
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219893E68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE6338);
    result = sub_219BE1E34();
    if (v5)
    {
      type metadata accessor for AlacarteSubscriptionURLHandler();
      swift_allocObject();
      return sub_218B7F224(v3, &v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219893F80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for MagazineActivityNavigator();
  result = sub_219BE1E24();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_282A634B0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219893FF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for MagazineActivityNavigator();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21989410C()
{
  sub_219897824(MEMORY[0x277D84F90]);
  sub_219BE2674();

  sub_219BE4224();
  swift_allocObject();
  return sub_219BE4214();
}

uint64_t sub_219894184(void *a1)
{
  sub_219897824(MEMORY[0x277D84F90]);
  sub_219BE2674();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_219BE3FC4();
    swift_allocObject();
    return sub_219BE3FB4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219894264(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB8D80);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA37A0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for EmailSignupURLHandler();
    v6 = swift_allocObject();
    sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
    v7 = *(sub_219BE2644() - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    v10 = (v9 + v8);
    strcpy(v10, "subscriptionId");
    v10[15] = -18;
    (*(v7 + 104))();
    sub_219897824(MEMORY[0x277D84F90]);
    v11 = sub_219BE2684();

    v6[2] = v11;
    v6[3] = v3;
    v6[4] = v4;
    sub_2186CB1F0(&v14, (v6 + 5));
    sub_2186CB1F0(&v12, (v6 + 10));
    v6[15] = v5;
    return v6;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2198945B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E8FEC0);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for FamilySetupURLHandler();
      v4 = swift_allocObject();
      sub_219897824(MEMORY[0x277D84F90]);
      v5 = sub_219BE2684();

      v4[2] = v5;
      v4[3] = v3;
      v4[4] = v6;
      v4[5] = v7;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219894704(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D9594(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_219BE1E24();
  if (result)
  {
    type metadata accessor for ChatterboxURLHandler();
    swift_allocObject();
    v2 = sub_2196EC390();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219894828(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    a2(0);
    v5 = swift_allocObject();
    sub_219897824(MEMORY[0x277D84F90]);
    v6 = sub_219BE2684();

    *(v5 + 16) = v6;
    *(v5 + 24) = v4;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198949C4(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2(0);
    swift_allocObject();
    return a3(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219894AEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBF930);
  result = sub_219BE1E34();
  if (!v57)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E98578);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (!v53)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v51)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EAF5E0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedViewContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5700);
  result = sub_219BE1E34();
  if (!v49[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BF00);
  result = sub_219BE1E34();
  if (!v48)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD28);
  result = sub_219BE1E34();
  if (!v46[3])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v7;
  v35 = v6;
  v36 = v5;
  v37 = v4;
  v38 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD30);
  result = sub_219BE1E34();
  if (v45[3])
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v33[3] = v33;
    MEMORY[0x28223BE20](v8);
    v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
    v33[2] = v33;
    MEMORY[0x28223BE20](v12);
    v14 = (v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v10;
    v17 = *v14;
    v18 = type metadata accessor for ArticleContextFactory();
    v44[3] = v18;
    v44[4] = &off_282A48A48;
    v44[0] = v16;
    v19 = type metadata accessor for ArticleLinkBehaviorConfigManager();
    v42 = v19;
    v43 = &off_282A7E598;
    v41[0] = v17;
    type metadata accessor for ArticleURLHandler();
    v20 = swift_allocObject();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v44, v18);
    v33[1] = v33;
    MEMORY[0x28223BE20](v21);
    v23 = (v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x28223BE20](v25);
    v27 = (v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v23;
    v30 = *v27;
    v40[3] = v18;
    v40[4] = &off_282A48A48;
    v39[4] = &off_282A7E598;
    v40[0] = v29;
    v39[3] = v19;
    v39[0] = v30;
    v20[3] = v38;
    sub_218718690(v40, (v20 + 4));
    sub_218718690(v54, (v20 + 9));
    v20[14] = v37;
    sub_218718690(v52, (v20 + 15));
    sub_218718690(v50, (v20 + 20));
    v31 = v35;
    v20[25] = v36;
    v20[26] = v31;
    v20[32] = v34;
    sub_218718690(v49, (v20 + 33));
    sub_218718690(v39, (v20 + 27));
    sub_218718690(v46, (v20 + 38));
    sub_218718690(v45, (v20 + 43));
    __swift_project_boxed_opaque_existential_1(v20 + 38, v20[41]);
    v32 = sub_219BF4C64();
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v20[2] = v32;
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return v20;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_219895340(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE8C20);
    result = sub_219BE1E34();
    if (v7)
    {
      type metadata accessor for ArticlePreviewURLHandler();
      v4 = swift_allocObject();
      sub_2186D9594(0, &qword_280E8C098, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
      sub_219BE26D4();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_219C09BA0;
      sub_219BE2664();
      *(v4 + 64) = v5;
      *(v4 + 16) = v3;
      sub_2186CB1F0(&v6, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}