uint64_t sub_2196CF050()
{
  v1 = *v0;
  v2 = 0x646573756170;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x676E6979616C70;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x646570706F7473;
  }
}

uint64_t sub_2196CF0C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = sub_219BF53D4();
  }

  else
  {
    v6 = 0;
    a1 = 0x3E6C696E3CLL;
  }

  v7 = FCUpdateSharedAudioPlaybackState();

  sub_2186C66AC();
  v8 = sub_219BF6F74();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v9 + 64) = v11;
  v12 = 0xE500000000000000;
  if (a2)
  {
    v12 = a2;
  }

  *(v9 + 32) = a1;
  *(v9 + 40) = v12;
  if (v7)
  {
    v13 = 0xE600000000000000;
    v14 = 0x646573756170;
    v15 = 0x6E776F6E6B6E75;
    if (a3 == 1)
    {
      v15 = 0x676E6979616C70;
    }

    if (a3 != 2)
    {
      v14 = v15;
      v13 = 0xE700000000000000;
    }

    v16 = a3 == 0;
    if (a3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0x646570706F7473;
    }

    if (v16)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = v13;
    }

    MEMORY[0x21CECC330](v17, v18);

    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = 0;
    *(v9 + 80) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();

    sub_219BF51F4();
    sub_219BF51E4();
    sub_219BF51D4();
  }

  else
  {
    v20 = 0xE600000000000000;
    v21 = 0x646573756170;
    v22 = 0x6E776F6E6B6E75;
    if (a3 == 1)
    {
      v22 = 0x676E6979616C70;
    }

    if (a3 != 2)
    {
      v21 = v22;
      v20 = 0xE700000000000000;
    }

    v23 = a3 == 0;
    if (a3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0x646570706F7473;
    }

    if (v23)
    {
      v25 = 0xE700000000000000;
    }

    else
    {
      v25 = v20;
    }

    MEMORY[0x21CECC330](v24, v25);

    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = 0;
    *(v9 + 80) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_2196CF468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v5[20] = type metadata accessor for SportsFavoritesLayoutModel();
  v5[21] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  sub_218C3F7A0();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = sub_219BE9FA4();
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v9 = sub_219BDCB14();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v10 = sub_219BEE074();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91990, MEMORY[0x277D32218]);
  v5[42] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91548, MEMORY[0x277D325F8]);
  v5[43] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  v5[44] = swift_task_alloc();
  sub_2196D1194(0, &qword_27CC0BBC8, MEMORY[0x277D6D710]);
  v5[45] = v11;
  v5[46] = *(v11 - 8);
  v5[47] = swift_task_alloc();
  sub_218A2702C();
  v5[48] = v12;
  v5[49] = *(v12 - 8);
  v5[50] = swift_task_alloc();
  v13 = sub_219BE8944();
  v5[51] = v13;
  v5[52] = *(v13 - 8);
  v5[53] = swift_task_alloc();
  v14 = sub_219BE8164();
  v5[54] = v14;
  v5[55] = *(v14 - 8);
  v5[56] = swift_task_alloc();
  sub_219BEF6B4();
  v5[57] = swift_task_alloc();
  v15 = sub_219BEF594();
  v5[58] = v15;
  v5[59] = *(v15 - 8);
  v5[60] = swift_task_alloc();
  sub_219BEF5B4();
  v5[61] = swift_task_alloc();
  sub_219BEF604();
  v5[62] = swift_task_alloc();
  sub_219BEF644();
  v5[63] = swift_task_alloc();
  sub_219BEF664();
  v5[64] = swift_task_alloc();
  v16 = sub_219BEF694();
  v5[65] = v16;
  v5[66] = *(v16 - 8);
  v5[67] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[68] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[69] = swift_task_alloc();
  v17 = sub_219BEF6C4();
  v5[70] = v17;
  v5[71] = *(v17 - 8);
  v5[72] = swift_task_alloc();
  sub_219BDCAF4();
  v5[73] = swift_task_alloc();
  v18 = sub_219BDCAE4();
  v5[74] = v18;
  v5[75] = *(v18 - 8);
  v5[76] = swift_task_alloc();
  v19 = sub_219BDCAB4();
  v5[77] = v19;
  v5[78] = *(v19 - 8);
  v5[79] = swift_task_alloc();
  sub_2189BD6B0(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[80] = swift_task_alloc();
  v20 = sub_219BF0634();
  v5[81] = v20;
  v5[82] = *(v20 - 8);
  v5[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196CFDB4, 0, 0);
}

uint64_t sub_2196CFDB4()
{
  v75 = v0[83];
  v84 = v0[81];
  v86 = v0[82];
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v105 = v0[76];
  v97 = v0[75];
  v101 = v0[74];
  v82 = v0[72];
  v87 = v0[71];
  v89 = v0[70];
  v64 = v0[68];
  v5 = v0[66];
  v66 = v0[67];
  v67 = v0[65];
  v62 = v0[69];
  v77 = v0[60];
  v73 = v0[59];
  v63 = *(*(v0[19] + 24) + OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_log);
  v69 = v0[58];
  v94 = v0[56];
  v91 = v0[55];
  v93 = v0[54];
  v100 = v0[53];
  v96 = v0[52];
  v99 = v0[51];
  v6 = v0[17];
  (*(v86 + 16))();
  v7 = sub_219BF0BD4();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  v65 = v63;
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v8 = sub_219BEF624();
  (*(*(v8 - 8) + 56))(v62, 1, 1, v8);
  v9 = sub_219BEF684();
  (*(*(v9 - 8) + 56))(v64, 1, 1, v9);
  (*(v5 + 104))(v66, *MEMORY[0x277D326B0], v67);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v73 + 104))(v77, *MEMORY[0x277D32680], v69);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  sub_219BEE0E4();

  (*(v87 + 8))(v82, v89);
  (*(v97 + 8))(v105, v101);
  (*(v3 + 8))(v2, v4);
  sub_218864B10(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v86 + 8))(v75, v84);
  (*(v91 + 16))(v94, v6, v93);
  (*(v96 + 104))(v100, *MEMORY[0x277D6E078], v99);
  sub_2196D1174(0);
  sub_2196D12A8(&qword_27CC1E088, sub_2196D1174);
  v10 = sub_219BF5E44();
  if (v10)
  {
    v11 = v10;
    v106 = MEMORY[0x277D84F90];
    sub_218C37F50(0, v10 & ~(v10 >> 63), 0);
    v12 = v106;
    result = sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v14 = v0;
      v15 = 0;
      v81 = v0 + 7;
      v16 = v0[46];
      v17 = v0[39];
      v80 = (v16 + 16);
      v85 = (v0[36] + 8);
      v78 = (v17 + 16);
      v76 = (v0[29] + 104);
      v68 = v0[23];
      v98 = v0[26];
      v72 = *MEMORY[0x277D6E980];
      v71 = *MEMORY[0x277D6E988];
      v83 = (v16 + 8);
      v74 = v0[49];
      v70 = (v17 + 8);
      v79 = v11;
      while (1)
      {
        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
          break;
        }

        v88 = v19;
        v95 = v12;
        v20 = v14[47];
        v21 = v14[44];
        v22 = v14[42];
        v23 = v14[43];
        v24 = v14[33];
        v90 = v14[34];
        v92 = v14[32];
        v102 = v14[31];
        v25 = sub_219BF5EC4();
        (*v80)(v20);
        v25(v81, 0);
        sub_219BE6934();
        v26 = sub_219BEDB64();
        (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
        v27 = sub_219BEF4E4();
        (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
        v28 = sub_219BEEA64();
        (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
        sub_2196D1254();
        sub_2196D12A8(&qword_27CC18A20, type metadata accessor for SportsFavoritesModel);
        sub_219BE69F4();
        sub_218864B10(v22, &qword_280E91990, MEMORY[0x277D32218]);
        sub_218864B10(v23, &qword_280E91548, MEMORY[0x277D325F8]);
        sub_218864B10(v21, &qword_280E924F8, MEMORY[0x277D31DD0]);
        v29 = sub_219BDCB24();
        *(v14 + 1) = 0u;
        *(v14 + 2) = 0u;
        v14[6] = 0;
        v30 = *(*(v29 - 8) + 56);
        v30(v90, 1, 1, v29);
        v30(v24, 1, 1, v29);
        v30(v92, 1, 1, v29);
        v30(v102, 1, 1, v29);
        sub_219BDCB04();
        sub_219BEE0B4();
        v31 = v14[41];
        v32 = v14[40];
        v34 = v14[37];
        v33 = v14[38];
        v35 = v14[35];
        v36 = v14[30];
        v37 = v14[28];

        (*v85)(v34, v35);
        sub_218864B10((v14 + 2), &qword_280E91020, sub_2189BD704);
        (*v78)(v32, v31, v33);
        v38 = v32;
        v39 = v14;
        v14[11] = sub_218AC3A94(v38);
        v14[12] = v40;
        v41 = sub_219BE9F84();
        (*(*(v41 - 8) + 104))(v36, v72, v41);
        (*v76)(v36, v71, v37);
        v42 = sub_219BEE004();
        v43 = *(v42 + 16);
        if (v43)
        {
          v107 = MEMORY[0x277D84F90];
          sub_218C37FA0(0, v43, 0);
          v44 = v42 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
          v103 = *(v68 + 16);
          v104 = *(v68 + 72);
          do
          {
            v45 = v39[24];
            v47 = v39[21];
            v46 = v39[22];
            v103(v45, v44, v46);
            v103(v47, v45, v46);
            sub_2196D12A8(&qword_27CC0C960, type metadata accessor for SportsFavoritesLayoutModel);
            sub_219BE75D4();
            (*(v68 + 8))(v45, v46);
            v49 = *(v107 + 16);
            v48 = *(v107 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_218C37FA0(v48 > 1, v49 + 1, 1);
            }

            v50 = v39[27];
            v51 = v39[25];
            *(v107 + 16) = v49 + 1;
            (*(v98 + 32))(v107 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v49, v50, v51);
            v44 += v104;
            --v43;
          }

          while (v43);
        }

        v52 = v39[47];
        v53 = v39[45];
        v54 = v39[41];
        v55 = v39[38];
        sub_218AC3A40();
        v56 = v39;
        sub_2196D12A8(&qword_27CC18960, type metadata accessor for SportsFavoritesLayoutModel);
        sub_219BE81A4();

        (*v70)(v54, v55);
        (*v83)(v52, v53);
        v12 = v95;
        v58 = *(v95 + 16);
        v57 = *(v95 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_218C37F50(v57 > 1, v58 + 1, 1);
          v12 = v95;
        }

        v59 = v56[50];
        v60 = v56[48];
        *(v12 + 16) = v58 + 1;
        (*(v74 + 32))(v12 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v58, v59, v60);
        result = sub_219BF5E94();
        v15 = v88;
        v14 = v56;
        if (v88 == v79)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v14 = v0;
LABEL_15:
    sub_218AC3A40();
    sub_2196D12A8(&qword_27CC18960, type metadata accessor for SportsFavoritesLayoutModel);
    sub_219BE6564();
    sub_219BEE0C4();

    v61 = v14[1];

    return v61();
  }

  return result;
}

uint64_t sub_2196D10B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_2196CF468(a1, a2, a3, a4);
}

void sub_2196D1194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsFavoritesSectionDescriptor;
    v8[1] = type metadata accessor for SportsFavoritesModel();
    v8[2] = sub_2189A3D68();
    v8[3] = sub_2196D12A8(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2196D1254()
{
  result = qword_27CC1E090;
  if (!qword_27CC1E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E090);
  }

  return result;
}

uint64_t sub_2196D12A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2196D12F0(uint64_t a1)
{
  v80 = a1;
  sub_2196D2A78(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v3 = v2;
  v75 = *(v2 - 8);
  v73 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v66 - v4;
  v79 = sub_219BE22B4();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196D2A78(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v70 = *(v6 - 8);
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v66 - v9;
  v10 = sub_219BE26D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE22F4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - v18;
  v20 = v1;
  result = [*(v1 + 80) narrativeAudio];
  if (result)
  {
    v69 = v3;
    sub_219BE2594();
    sub_219BE22E4();
    v22 = *(v15 + 8);
    v68 = v15 + 8;
    v67 = v22;
    v22(v19, v14);
    v23 = sub_219BE2634();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = v20;
    if (v25)
    {
      *&v90 = v23;
      *(&v90 + 1) = v25;
      *&v87 = 0x6F696475612FLL;
      *(&v87 + 1) = 0xE600000000000000;
      sub_218B9E340();
      sub_218B9E394();
      v27 = sub_219BF5314();

      if (v27)
      {
        v28 = sub_218DB24B0();
        v29 = *(v20 + 24);
        if (v28)
        {
          v30 = sub_219BDFA44();
          v31 = v72;
          (*(*(v30 - 8) + 56))(v72, 1, 1, v30);
          v92 = 0;
          v90 = 0u;
          v91 = 0u;
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
          v86 = v29;
          sub_2187B1A88(&v87, &v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v66 = v14;
          if (*(&v83 + 1))
          {
            sub_21875F93C(&v82, v84);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v32 = qword_280ED32E0;
            v33 = qword_280ED32E8;
            v34 = qword_280ED32D8;

            v35 = v33;
            sub_2188202A8(v32);
            __swift_destroy_boxed_opaque_existential_1(v84);
          }

          else
          {
            sub_2196D2D24(&v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v32 = qword_280ED32E0;
            v36 = qword_280ED32E8;
            v34 = qword_280ED32D8;

            v35 = v36;
            sub_2188202A8(v32);
          }

          v81 = 0xF000000000000000;
          v83 = 0u;
          v82 = 0u;
          v37 = v31;
          v38 = v71;
          sub_2189B4E2C(v37, v71);
          sub_2187B1A88(&v90, v84, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v39 = (*(v70 + 80) + 24) & ~*(v70 + 80);
          v40 = (v7 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = (v40 + 47) & 0xFFFFFFFFFFFFFFF8;
          v42 = swift_allocObject();
          *(v42 + 16) = 0;
          sub_2189B4EAC(v38, v42 + v39);
          v43 = v42 + v40;
          v44 = v84[1];
          *v43 = v84[0];
          *(v43 + 16) = v44;
          *(v43 + 32) = v85;
          v45 = (v42 + v41);
          v46 = (v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v45 = 0;
          v45[1] = 0;
          *v46 = v34;
          v46[1] = v32;
          v46[2] = v35;

          sub_2188202A8(v32);
          sub_2186CF94C();
          sub_2196D2B8C(&qword_280EE5A90, 255, sub_2186CF94C);
          sub_219BEB464();

          sub_2187FABEC(v32);
          sub_2196D2D24(&v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
          sub_2196D2D24(&v90, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
          sub_218745BEC(v72, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2196D2A78);
          sub_218745BEC(&v82, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
          v14 = v66;
        }

        else
        {
          *&v90 = *(v20 + 24);
          *&v87 = 0xF000000000000000;
          sub_2186CF94C();
          sub_2196D2B8C(&qword_280EE5A90, 255, sub_2186CF94C);
          sub_219BEB484();
        }
      }
    }

    v47 = [*(v26 + 72) cachedSubscription];
    if (objc_getAssociatedObject(v47, v47 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v48 = v80;
    v90 = v87;
    v91 = v88;
    if (*(&v88 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v49 = *&v84[0];
        v50 = [*&v84[0] integerValue];
        if (v50 == -1)
        {

          v55 = v69;
          goto LABEL_34;
        }

        v51 = v50;
LABEL_23:
        if (objc_getAssociatedObject(v47, ~v51))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v87 = 0u;
          v88 = 0u;
        }

        v90 = v87;
        v91 = v88;
        if (*(&v88 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20);
          if (swift_dynamicCast())
          {
            v52 = *&v84[0];
            v53 = [v52 integerValue];

            v54 = v53 ^ v51;
            v55 = v69;
            if ((v54 & 1) == 0)
            {
              return 1;
            }

LABEL_34:
            v56 = v76;
            sub_219BE2594();
            v57 = v77;
            sub_219BE22D4();
            v67(v56, v14);
            sub_219BE22C4();
            v59 = v58;
            (*(v78 + 8))(v57, v79);
            if (v59)
            {
              __swift_project_boxed_opaque_existential_1((v26 + 32), *(v26 + 56));
              sub_219BDE774();

              __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
              sub_219BDDD04();
              v60 = sub_219BE1C44();
              v61 = swift_allocObject();
              swift_weakInit();
              v62 = v75;
              v63 = v74;
              (*(v75 + 16))(v74, v48, v55);
              v64 = (*(v62 + 80) + 24) & ~*(v62 + 80);
              v65 = swift_allocObject();
              *(v65 + 16) = v61;
              (*(v62 + 32))(v65 + v64, v63, v55);
              sub_219BE2F74();

              __swift_destroy_boxed_opaque_existential_1(&v90);
            }

            return 1;
          }
        }

        else
        {
          sub_218745BEC(&v90, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
        }

        v55 = v69;
        if ((v51 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_218745BEC(&v90, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }

    v49 = 0;
    v51 = 0;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_2196D22EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  sub_2196D2A78(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v33 - v5;
  v6 = sub_219BF1324();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1C74();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2A04();
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v42 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE26D4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE22F4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = v22;
    sub_2196D2A78(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2594();
    sub_219BE22E4();
    (*(v19 + 8))(v21, v18);
    v24 = sub_219BE2634();
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    if (v26)
    {
      *&v47 = v24;
      *(&v47 + 1) = v26;
      v49 = 0x7478654E79616C70;
      v50 = 0xE800000000000000;
      sub_2187F3BD4();
      v27 = sub_219BF7084();

      if (v27)
      {
        v49 = v33;
        (*(v34 + 104))(v35, *MEMORY[0x277D33A68], v10);
        (*(v36 + 104))(v38, *MEMORY[0x277D33570], v37);
        v47 = 0u;
        v48 = 0u;
        (*(v39 + 104))(v41, *MEMORY[0x277D33290], v40);
        sub_218731D50();
        swift_unknownObjectRetain();
        v28 = v42;
        sub_219BF2564();
        swift_getObjectType();
        sub_219BEACF4();
        v30 = v43;
        v29 = v44;
        v31 = v45;
        (*(v43 + 16))(v45, v28, v44);
        (*(v30 + 56))(v31, 0, 1, v29);
        v32 = v51;
        sub_219BE7094();
        if (v32)
        {
        }

        sub_218745BEC(v31, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88], sub_2196D2A78);
        (*(v30 + 8))(v28, v29);
      }
    }
  }

  return result;
}

uint64_t sub_2196D2984()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2196D2A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2196D2B8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2196D2BD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2196D2C30(void *a1)
{
  sub_2196D2A78(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2196D2D24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2196D2BD4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

BOOL sub_2196D2D80()
{
  v1 = v0;
  v2 = sub_219BE22B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE22F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C4E41C();
  sub_219BE2594();
  sub_219BE22D4();
  (*(v7 + 8))(v9, v6);
  v10 = sub_219BE22C4();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    v13 = sub_219BE7174();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 rootViewController];

      if (v15)
      {
        v16 = v1[6];
        v17 = v1[7];
        __swift_project_boxed_opaque_existential_1(v1 + 3, v16);
        v18 = sub_218DB24B0();
        (*(v17 + 8))(v10, v12, v15, v18 & 1, v16, v17);
      }
    }
  }

  return v12 != 0;
}

uint64_t sub_2196D2FDC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_2196D3074()
{
  result = qword_280EC8A98;
  if (!qword_280EC8A98)
  {
    type metadata accessor for AudioOptionsURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8A98);
  }

  return result;
}

uint64_t sub_2196D30C8()
{
  v0 = sub_219BEDA64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 15;
  sub_2189AE994(0);
  v4 = sub_219BEE964();
  sub_2186E4D00(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  (*(v1 + 104))(v3, *MEMORY[0x277D31D18], v0);
  type metadata accessor for TodayFeedServiceConfig();
  sub_2196D41FC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  sub_219BEEC24();
  (*(v1 + 8))(v3, v0);
  v7 = v4;
  sub_2191EE478(v5);
  return v7;
}

uint64_t sub_2196D3308(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E4D00(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_219BEF554();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  type metadata accessor for SeenContentMarkTodayFeedGroup();
  v3[8] = swift_task_alloc();
  sub_2186E4D00(0, &qword_280E90380, MEMORY[0x277D339F0], v4);
  v3[9] = swift_task_alloc();
  sub_2186E4D00(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[10] = swift_task_alloc();
  sub_2186E4D00(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[11] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_2186E4D00(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  v3[15] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for SeenContentMarkTodayFeedGroupConfigData();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196D3648, 0, 0);
}

uint64_t sub_2196D3648()
{
  v1 = *(v0 + 120);
  v18 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 72);
  v2 = *(v0 + 32);
  v21 = *(v2 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_formatService + 32);
  v22 = *(v2 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_formatService), v22);
  *(v0 + 160) = OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_config;
  sub_2186E0BC0();
  *(v0 + 168) = v3;
  sub_219BEDD14();
  v4 = sub_219BEC004();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v5);
  sub_219A951A0(v5);
  sub_219A951B8(v5);
  sub_219A952CC(v5);
  sub_219A952E4(v5);
  sub_219A953F8(v5);
  sub_219BF2024();
  v6 = OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_knobs;
  *(v0 + 176) = OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v8 = v7;
  *(v0 + 184) = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v18, v2 + v6, v7);
  (*(v9 + 56))(v18, 0, 1, v8);
  v10 = sub_219BF35D4();
  (*(*(v10 - 8) + 56))(v19, 1, 1, v10);
  *(v0 + 216) = 15;
  sub_218D451AC();
  swift_allocObject();

  sub_219BF38D4();
  v11 = sub_219BF2774();
  (*(*(v11 - 8) + 56))(v20, 1, 1, v11);
  v12 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v12 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_2196D3A34;
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  v16 = *(v0 + 112);

  return MEMORY[0x2821921B8](v15, v14, v16, v22, v21);
}

uint64_t sub_2196D3A34(uint64_t a1)
{
  v4 = *v2;
  v4[25] = v1;

  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = v4[16];
  v9 = v4[14];
  v10 = v4[13];
  v11 = v4[12];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = sub_219BF1934();
    (*(*(v12 - 8) + 8))(v5, v12);
    v13 = sub_2196D3F18;
  }

  else
  {
    v4[26] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v14 = sub_219BF1934();
    (*(*(v14 - 8) + 8))(v5, v14);
    v13 = sub_2196D3CBC;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2196D3CBC()
{
  v3 = v0[8];
  v4 = v0[2];
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
  sub_2189AE9B4(0);
  sub_219BEEC84();
  sub_219BED834();
  sub_218EEF99C(v3, v4);
  type metadata accessor for TodayFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2196D3F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196D4004()
{
  v1 = OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_config;
  sub_2186E0BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2196D4980(v0 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_knobs, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SeenContentMarkTodayFeedGroupEmitter()
{
  result = qword_280E9A8C8;
  if (!qword_280E9A8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2196D4128()
{
  sub_2186E0BC0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2196D41FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2196D4244(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2196D3308(a1, a2);
}

uint64_t sub_2196D42F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2196D4310, 0, 0);
}

uint64_t sub_2196D4310()
{
  v1 = v0[2];
  sub_2196D48E4(v0[3], v1, sub_218D3BC94);
  sub_218D3BC94();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2196D43CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_config;
  sub_2186E0BC0();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2196D4460@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
  a1[4] = sub_2196D41FC(&qword_280E9F108, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  a1[5] = sub_2196D41FC(&qword_280E9F110, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2196D48E4(v3 + v4, boxed_opaque_existential_1, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
}

uint64_t sub_2196D4588@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4D00(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0BC0();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2196D4980(inited + 32, sub_2188317B0);
  sub_2196D494C(0);
  a1[3] = v5;
  a1[4] = sub_2196D41FC(&unk_280EE7638, sub_2196D494C);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2196D4710()
{
  sub_2196D41FC(&qword_280E9A8E0, type metadata accessor for SeenContentMarkTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2196D48E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196D4980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DateRangeTagFeedGroupCursor()
{
  result = qword_27CC1E098;
  if (!qword_27CC1E098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2196D4A54()
{
  result = sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2196D4AD0(uint64_t a1, uint64_t a2)
{
  sub_2196D5DA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v45 = *a2;
  v46 = v12;
  v47 = v13;
  v48 = v14;
  v49 = v15;
  sub_21897010C(v45, v12, v13, v14, v15);
  sub_2196D5010(a1, &v45, v43);
  result = sub_218DFAEC4(v45, v46, v47, v48, v49);
  v17 = *&v43[0];
  if ((~*&v43[0] & 0xF000000000000007) != 0)
  {
    v18 = *(v2 + 112);
    v19 = *(v2 + 64);
    v20 = sub_219BDFA44();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_218718690(v2 + 72, &v45);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v42 = v18;
    sub_21896FEF0(v43, &v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v39)
    {
      sub_21875F93C(&v38, v40);
      *&v38 = v17;
      v21 = sub_2194DA78C(v40);
      v23 = v22;
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_21896FF74(&v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v21 = qword_280ED32D8;
      v23 = qword_280ED32E0;
      v25 = qword_280ED32E8;

      sub_2188202A8(v23);
    }

    v37 = v17;
    v39 = sub_219BDD274();
    *&v38 = v19;
    sub_2189B4E2C(v11, v9);
    sub_21896FEF0(&v45, v40, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v26 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = v11;
    v28 = (v27 + 47) & 0xFFFFFFFFFFFFFFF8;
    v35 = v17;
    v29 = swift_allocObject();
    *(v29 + 16) = v19;
    sub_2189B4EAC(v9, v29 + v26);
    v30 = v29 + v27;
    v31 = v40[1];
    *v30 = v40[0];
    *(v30 + 16) = v31;
    *(v30 + 32) = v41;
    v32 = (v29 + v28);
    v33 = (v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v32 = 0;
    v32[1] = 0;
    *v33 = v21;
    v33[1] = v23;
    v33[2] = v25;
    swift_retain_n();

    sub_2188202A8(v23);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v23);
    sub_21896FF74(v43, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_21896FF74(&v45, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2196D5F30(v36, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218806FD0(&v38);
    return sub_218970170(v35);
  }

  return result;
}

uint64_t sub_2196D5010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a3;
  v5 = sub_219BDD944();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196D5DA8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v59 = type metadata accessor for AudioFeedTrack(0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDD664();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AudioFeedRouteModel();
  MEMORY[0x28223BE20](v17);
  v19 = (&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a2;
  v55 = *(a2 + 8);
  v56 = v20;
  v21 = *(a2 + 16);
  v53 = *(a2 + 24);
  v54 = v21;
  v22 = *(a2 + 32);
  sub_2196D5EC8(a1, v19, type metadata accessor for AudioFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v19;
      v25 = v58[18];
      v26 = v58[19];
      __swift_project_boxed_opaque_existential_1(v58 + 15, v25);
      (*(v26 + 8))(v24, v25, v26);
      swift_unknownObjectRelease();
      (*(v57 + 56))(v10, 0, 1, v59);
      sub_2196D5F8C(v10, v12, type metadata accessor for AudioFeedTrack);
      v48 = swift_allocBox();
      result = sub_2196D5F8C(v12, v49, type metadata accessor for AudioFeedTrack);
      v51 = v48 | 0x1000000000000002;
    }

    else
    {
      sub_2196D5F8C(v19, v7, MEMORY[0x277D2FB40]);
      sub_2187B2C48();
      v40 = v39;
      v41 = swift_allocBox();
      v43 = v42;
      v44 = *(v40 + 48);
      sub_2187B2DA0();
      v46 = *(v45 + 48);
      sub_2196D5EC8(v7, v43, MEMORY[0x277D2FB40]);
      v47 = MEMORY[0x277D84F90];
      *(v43 + v46) = MEMORY[0x277D84F90];
      result = sub_218BF9888(v7, MEMORY[0x277D2FB40]);
      *(v43 + v44) = v47;
      v51 = v41 | 2;
    }

    *v60 = v51;
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    v27 = v22;
    v28 = sub_219BDD654();
    v29 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    v30 = swift_allocObject();
    v31 = [v28 identifier];
    v32 = sub_219BF5414();
    v34 = v33;
    swift_unknownObjectRelease();

    (*(v14 + 8))(v16, v13);
    *(v30 + 16) = v32;
    *(v30 + 24) = v34;
    *(v30 + 32) = v29;
    *(v30 + 40) = 0;
    *(v30 + 48) = 1;
    v36 = v55;
    v35 = v56;
    *(v30 + 56) = 0;
    *(v30 + 64) = v35;
    v38 = v53;
    v37 = v54;
    *(v30 + 72) = v36;
    *(v30 + 80) = v37;
    *(v30 + 88) = v38;
    *(v30 + 96) = v27;
    *v60 = v30 | 0x2000000000000006;
    return sub_218F20858(v35, v36, v37, v38, v27);
  }

  return result;
}

uint64_t sub_2196D5548(uint64_t a1)
{
  sub_21896F9B8();
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsActivity2.Article(0);
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196D5DA8(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v54 = sub_219BDD944();
  v10 = MEMORY[0x28223BE20](v54);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v50 - v13;
  sub_2196D5DA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v61 = 0u;
  v62 = 0u;
  LOBYTE(v63) = -1;
  sub_2196D5010(a1, &v61, v58);
  v20 = 0;
  v21 = *&v58[0];
  if ((~*&v58[0] & 0xF000000000000007) != 0)
  {
    v22 = *(v1 + 112);
    v50 = *(v1 + 64);
    v23 = sub_219BDFA44();
    v24 = v19;
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60[5] = v22;
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9210 != -1)
    {
      swift_once();
    }

    v25 = sub_219BDC8C4();

    v26 = v19;
    if (v25)
    {
      v27 = (v21 >> 58) & 0x3C | (v21 >> 1) & 3;
      if ((v27 - 9) < 0x34 || (v39 = 1 << v27, (v39 & 0xF9) != 0))
      {
        (*(v56 + 56))(v9, 1, 1, v5);
        sub_2196D5F30(v9, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
      }

      else
      {
        if ((v39 & 6) != 0)
        {
          sub_2187B2C48();
        }

        v40 = swift_projectBox();
        sub_2196D5EC8(v40, v9, type metadata accessor for NewsActivity2.Article);
        (*(v56 + 56))(v9, 0, 1, v5);
        v41 = v55;
        sub_2196D5EC8(v9, v55, type metadata accessor for NewsActivity2.Article);
        sub_2187B2DA0();

        sub_2196D5F8C(v41, v12, MEMORY[0x277D2FB40]);
        sub_218BF9888(v9, type metadata accessor for NewsActivity2.Article);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = swift_projectBox();
          v43 = v51;
          sub_2196D5EC8(v42, v51, sub_21896F9B8);
          v44 = v53;
          sub_2196D5F8C(v43 + *(v52 + 48), v53, MEMORY[0x277D2FB40]);
          __swift_destroy_boxed_opaque_existential_1(v43);

          sub_2186C66AC();
          v45 = sub_219BF6F44();
          sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_219C09BA0;
          v47 = sub_219BDD8C4();
          v49 = v48;
          *(v46 + 56) = MEMORY[0x277D837D0];
          *(v46 + 64) = sub_2186FC3BC();
          *(v46 + 32) = v47;
          *(v46 + 40) = v49;
          sub_219BF6214();
          sub_219BE5314();

          sub_218BF9888(v44, MEMORY[0x277D2FB40]);
          sub_21896FF74(&v61, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_2196D5F30(v24, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_218970170(v21);
          return 0;
        }

        sub_218BF9888(v12, MEMORY[0x277D2FB40]);
      }
    }

    v60[4] = v21;
    v60[3] = sub_219BDD274();
    v28 = v50;
    v60[0] = v50;
    sub_2189B4E2C(v26, v17);
    v29 = MEMORY[0x277D2D578];
    sub_21896FEF0(&v61, v58, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v30 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v31 = v21;
    v32 = v26;
    v33 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v28;
    sub_2189B4EAC(v17, v34 + v30);
    v35 = v34 + v33;
    v36 = v58[1];
    *v35 = v58[0];
    *(v35 + 16) = v36;
    *(v35 + 32) = v59;
    v37 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v37 = 0;
    v37[1] = 0;
    sub_2186CF94C();
    sub_2189B4DD4();
    swift_retain_n();
    v20 = sub_219BEB454();

    sub_21896FF74(&v61, &qword_280EE33A0, &qword_280EE33B0, v29);
    sub_2196D5F30(v32, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218806FD0(v60);
    sub_218970170(v31);
  }

  return v20;
}

void sub_2196D5DA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2196D5DFC(void *a1)
{
  sub_2196D5DA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);

  return sub_2194DAF24(a1);
}

uint64_t sub_2196D5EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196D5F30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2196D5DA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2196D5F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196D5FF4(void *a1)
{
  sub_2196D5DA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData()
{
  result = qword_280E97CE8;
  if (!qword_280E97CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2196D6148@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196D6678(0, &qword_280E8C760, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196D6624();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 23;
    v13 = type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2196D63B0(void *a1)
{
  v3 = v1;
  sub_2196D6678(0, &qword_27CC1E0A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196D6624();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196D657C(uint64_t a1)
{
  v2 = sub_2196D6624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196D65B8(uint64_t a1)
{
  v2 = sub_2196D6624();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2196D6624()
{
  result = qword_280E97D28[0];
  if (!qword_280E97D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E97D28);
  }

  return result;
}

void sub_2196D6678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196D6624();
    v7 = a3(a1, &type metadata for SportsKeyPlayersTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2196D66F0()
{
  result = qword_27CC1E0B0;
  if (!qword_27CC1E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E0B0);
  }

  return result;
}

unint64_t sub_2196D6748()
{
  result = qword_280E97D18;
  if (!qword_280E97D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97D18);
  }

  return result;
}

unint64_t sub_2196D67A0()
{
  result = qword_280E97D20;
  if (!qword_280E97D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97D20);
  }

  return result;
}

uint64_t sub_2196D67F4()
{
  sub_218DF5B4C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2196D6850(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v24 = sub_219BDFC44();
  v23[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196D6BCC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDCC14();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v23 - v14, a1, v13);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v16 = sub_219BDCC04();
    v17 = sub_219BDD084();
    v19 = v18;

    if (!v3)
    {
      sub_2196D6C60(&qword_280EE85C0, MEMORY[0x277D2DFE8]);
      v20 = v24;
      sub_219BE1974();
      sub_2186C6190(v17, v19);
      (*(v23[0] + 32))(a3, v7, v20);
      v21 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  else
  {
    v22 = type metadata accessor for EngagementEvent();
    (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }
}

void sub_2196D6BCC()
{
  if (!qword_280EE8FA8)
  {
    sub_219BDFC54();
    sub_2196D6C60(&qword_280EE85B8, MEMORY[0x277D2DFF8]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8FA8);
    }
  }
}

uint64_t sub_2196D6C60(unint64_t *a1, void (*a2)(uint64_t))
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

void Reference<A>.init(value:)(void *a1)
{
  v2 = sub_219BE1EF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_218C8CC74(v6, v11);
  v10 = v6;
  v7 = qword_280EE7C68;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_280EE7C70);
  (*(v3 + 16))(v5, v9, v2);
  sub_218C8B8B4();
  v13 = v11[0];
  sub_2189AD3D8(&v13);
  v12 = *(&v11[1] + 8);
  sub_2189D2CDC(&v12);
  sub_2186FAF08();
  sub_219BE3364();
}

uint64_t Reference<A>.init(value:)(uint64_t a1)
{
  v2 = sub_219BE1EF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = a1;
  v6 = qword_280EE7C40;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280EE7C48);
  (*(v3 + 16))(v5, v7, v2);
  sub_21872F37C();
  sub_219BE3364();
  return swift_unknownObjectRelease();
}

uint64_t sub_2196D7014@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE1EF4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2196D70C8()
{
  sub_218954350();
  sub_219BE6934();
  v0 = (v2 >> 58) & 0x3C | (v2 >> 1) & 3;

  return (v0 < 0x21) & (0x148000002uLL >> v0);
}

void sub_2196D71EC(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_219BF53D4();

  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v12, &v13);
    type metadata accessor for TagFeedViewController();
    v8 = swift_dynamicCast();
    MEMORY[0x28223BE20](v8);
    sub_2196D73D8();
    swift_allocObject();
    sub_219BE30B4();

    v9 = sub_219BE1C44();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    sub_219BE2F74();
  }

  else
  {
    __break(1u);
  }
}

void sub_2196D73D8()
{
  if (!qword_27CC1CB90)
  {
    sub_2196D7430();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CB90);
    }
  }
}

void sub_2196D7430()
{
  if (!qword_27CC1CB98)
  {
    sub_219BDC104();
    sub_21898BF70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1CB98);
    }
  }
}

id sub_2196D74D4()
{
  v1 = OBJC_IVAR____TtC7NewsUI223AudioFeedViewController____lazy_storage___audioControlBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController____lazy_storage___audioControlBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController____lazy_storage___audioControlBarButtonItem);
  }

  else
  {
    v4 = sub_2196D7538(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2196D7538(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_2196DAD9C(0, &qword_280EE5320, sub_2196DAC30, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v29 - v4;
  v5 = sub_219BEEF64();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196DACFC();
  MEMORY[0x28223BE20](v7 - 8);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BF1324();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BF1C74();
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2A04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196DAD9C(0, &qword_280E90400, sub_218EEDBB8, v2);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v20 = sub_219BE89F4();
  MEMORY[0x28223BE20](v20);
  v32 = *(a1 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_commandCenter + 8);
  (*(v22 + 104))(&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E0E8]);
  v23 = *(a1 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_tracker);
  *(&v40 + 1) = sub_219BDD274();
  v41 = sub_2196DB130(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
  *&v39 = v23;
  v42 = 0u;
  v43 = 0u;
  v44 = 1;
  sub_219BE8314();
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_219BE82F4();
  sub_219BEABD4();
  (*(v14 + 104))(v16, *MEMORY[0x277D33A68], v13);
  (*(v10 + 104))(v12, *MEMORY[0x277D33570], v29);
  (*(v31 + 104))(v30, *MEMORY[0x277D33298], v33);
  v39 = 0u;
  v40 = 0u;
  sub_219BF2564();
  sub_218EEDBB8();
  (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  (*(v36 + 104))(v34, *MEMORY[0x277D324A0], v37);
  sub_2196DB130(&unk_280E91770, 255, MEMORY[0x277D324B8]);
  sub_219BE7204();
  sub_2196DAC30();
  (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
  sub_2196DAE00(0, &unk_280EE4730, MEMORY[0x277D6E370]);
  v27 = objc_allocWithZone(v26);
  return sub_219BE8E14();
}

void sub_2196D7BFC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BEEF64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D324A0] || v8 == *MEMORY[0x277D324A8] || v8 == *MEMORY[0x277D32498] || v8 == *MEMORY[0x277D324B0])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_219BDB5E4();
    v13 = v12;

    *a2 = v11;
    a2[1] = v13;
  }

  else
  {
    type metadata accessor for Localized();
    v14 = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_219BDB5E4();
    v18 = v17;

    *a2 = v16;
    a2[1] = v18;
    (*(v5 + 8))(v7, v4);
  }
}

void sub_2196D8100()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v41.receiver = v0;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_blueprintViewController];
  [v0 addChildViewController_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v3 view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v5 addSubview_];

  [v3 didMoveToParentViewController_];
  v8 = [v3 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v1 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame_];
  sub_219BE8664();
  v20 = sub_219BE7BC4();

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass_];
  sub_219BDB5E4();

  v24 = sub_219BF53D4();

  [v20 setAccessibilityLabel_];

  sub_219BE8664();
  v25 = sub_219BE7BC4();

  sub_218807578();
  sub_2196DB130(&qword_280E90610, 255, sub_218807578);
  sub_219BF6C74();

  if (sub_219BED0C4())
  {
    sub_2196D88DC(0);
  }

  v26 = [v1 traitCollection];
  sub_2196DAEF8();

  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_2196DB130(&qword_280EC5D20, v27, type metadata accessor for AudioFeedViewController);
    sub_219BE5E44();
  }

  sub_2196DAD9C(0, &qword_280E8BD50, sub_2187C4338, MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  v29 = sub_219BEBA34();
  v30 = MEMORY[0x277D74C50];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  *(swift_allocObject() + 16) = ObjectType;
  sub_219BF6604();
  swift_unknownObjectRelease();

  swift_getObjectType();
  if (qword_280EE3860 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE7014();

  __swift_destroy_boxed_opaque_existential_1(v40);
  if (sub_219BED0C4())
  {
    sub_219BE2CF4();
    v31 = v40[0];
    v33 = sub_2196DB130(&qword_280EC5D10, v32, type metadata accessor for AudioFeedViewController);
    sub_219BE8894();
    v34 = sub_219BE88A4();
    v34(v1, v33);
    sub_2188050C0();
    v35 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v31 action:sel_bannerTapped];
    [*(v31 + qword_280EABEF0) addGestureRecognizer_];
  }

  v36 = [v22 bundleForClass_];
  sub_219BDB5E4();

  v37 = sub_219BF65B4();
  v38 = sub_219BF53D4();

  [v37 setBackButtonTitle_];

  v39 = sub_219BF65B4();
  [v39 setBackButtonDisplayMode_];
}

uint64_t sub_2196D87E8()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2196DB130(&qword_280E92580, 255, MEMORY[0x277D31D00]);
  return sub_219BF1C54();
}

void sub_2196D88DC(char a1)
{
  sub_219BE2CF4();
  v2 = sub_219BE8854();

  v3 = sub_219BF65B4();
  v4 = v3;
  if (v2)
  {
    [v3 setRightBarButtonItem:0 animated:a1 & 1];
  }

  else
  {
    v5 = sub_2196D74D4();
    [v4 setRightBarButtonItem:v5 animated:a1 & 1];

    v4 = v5;
  }
}

void sub_2196D899C(void *a1, uint64_t a2)
{
  sub_2196DB130(&qword_280EC5D20, a2, type metadata accessor for AudioFeedViewController);
  sub_219BE5E44();
  v4 = [a1 traitCollection];
  sub_2196DB130(&qword_280EC5D18, v3, type metadata accessor for AudioFeedViewController);
  sub_219BE6504();
}

void sub_2196D8A90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2196D8AE4();
  }
}

void sub_2196D8AE4()
{
  sub_219BE86E4();
  v1 = objc_allocWithZone(sub_219BE9274());
  v5 = sub_219BE9254();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];

    v4 = off_282A60A88;
    type metadata accessor for AudioFeedInteractor();
    v4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2196D8E20()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A40 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61928);
  v7[3] = v8;
  v7[4] = sub_2196DB130(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196D9178()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196D9354()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_2196D9590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BE86E4();
  v5 = objc_allocWithZone(sub_219BE9274());
  v16 = sub_219BE9254();
  v6 = [v3 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v17[0] = v16;
    v17[1] = v9;
    v17[2] = v11;
    v17[3] = v13;
    v17[4] = v15;
    sub_21914B32C(v17, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_2196D96AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  sub_219BE86E4();
  v7 = objc_allocWithZone(sub_219BE9274());
  v18 = sub_219BE9254();
  v8 = [v5 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v19[0] = v18;
    v19[1] = v11;
    v19[2] = v13;
    v19[3] = v15;
    v19[4] = v17;
    a5(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_2196D97B0(uint64_t a1, uint64_t a2, char a3)
{
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:a3 & 1 scrollToTop:1 dismissKeyboard:?];
}

uint64_t sub_2196D9828(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v2 = sub_219BE8C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC0F4();
  sub_2189F3FBC(0);
  sub_219BEB364();
  sub_219BE8C04();
  sub_219A6A488(v10);
  sub_21914C6C8(v13, v10);
  (*(v3 + 8))(v5, v2);
  return (*(v8 + 8))(v10, v7);
}

void sub_2196D99F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    sub_21914C398();
    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    sub_219BE86E4();
    v10 = objc_allocWithZone(sub_219BE9274());
    v11 = sub_219BE9254();
    v12 = [v3 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v23[1] = v11;
      v23[2] = v15;
      v23[3] = v17;
      v23[4] = v19;
      v23[5] = v21;
      sub_219149A90();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948] || v9 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E958])
    {
      if (v9 == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      (*(v6 + 8))(v8, v5);
    }
  }
}

void sub_2196D9C5C(uint64_t a1, void *a2)
{
  sub_219BE86E4();
  v4 = objc_allocWithZone(sub_219BE9274());
  v15 = sub_219BE9254();
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v16[0] = v15;
    v16[1] = v8;
    v16[2] = v10;
    v16[3] = v12;
    v16[4] = v14;
    sub_21914A4BC(v16, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2196D9D68(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v12 = sub_219BF01B4();
    v13 = __swift_project_value_buffer(v12, qword_280F61940);
    v11[3] = v12;
    v11[4] = sub_2196DB130(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v17 = sub_219BF54E4();
    v19 = v18;

    v11[5] = v17;
    v11[6] = v19;
    (*(v8 + 104))(v11, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_2196DA0C4(uint64_t a1, uint64_t a2)
{
  sub_218953904();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC0F4();
  sub_2189F3FBC(0);
  sub_219BEB364();
  sub_219A6A488(v7);
  sub_21914C6C8(a2, v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196DA328@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  *a1 = v2;
  v3 = *MEMORY[0x277D6DA10];
  v4 = sub_219BE74B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_2196DA3CC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_eventHandler) + 88);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  (*(v3 + 8))(v1[2], v2, v3);
  return sub_21914DC20();
}

id sub_2196DA444()
{
  swift_getObjectType();
  if (sub_219BED0C4())
  {
    return 0;
  }

  sub_2196DB130(&qword_280EC5D18, v1, type metadata accessor for AudioFeedViewController);
  v3 = sub_219BE64F4();
  if (!v3)
  {
    return [objc_allocWithZone(sub_219BEA3E4()) init];
  }

  v4 = v3;
  v5 = [v3 navigationBar];

  if (!v5)
  {
    return [objc_allocWithZone(sub_219BEA3E4()) init];
  }

  v6 = [v0 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 1)
  {
    v8 = [objc_allocWithZone(sub_219BEA3E4()) init];

    return v8;
  }

  else
  {
    v9 = [v0 navigationItem];
    sub_219BE8664();
    sub_219BE7BC4();

    sub_2186F8B0C();
    sub_219BF6D44();
    v10 = objc_allocWithZone(sub_219BEA4D4());
    return sub_219BEA4C4();
  }
}

uint64_t sub_2196DA6A0()
{
  sub_219BE2CF4();
  v0 = sub_219BE8854();

  return v0 & 1;
}

double sub_2196DA6F0()
{
  sub_219BE2CF4();
  sub_219BE8864();
  v1 = v0;

  return v1;
}

uint64_t sub_2196DA74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v22 = a3;
  v23 = a4;
  v30 = a1;
  v24 = a9;
  sub_2189F3FBC(0);
  v11 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86A4();
  v41 = v33;
  sub_21898746C();
  sub_2196DB130(&unk_280EE54C0, 255, sub_21898746C);
  sub_219BE7B94();

  sub_2196DAD9C(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  v32 = xmmword_219C09BA0;
  v29 = v14;
  *(v14 + 16) = xmmword_219C09BA0;
  v15 = swift_allocObject();
  *(v15 + 16) = v32;
  v16 = sub_219BE6684();
  type metadata accessor for AudioFeedServiceConfig();
  sub_2196DB130(&unk_280EC8DD0, 255, type metadata accessor for AudioFeedServiceConfig);
  *&v32 = v11;
  v17 = sub_219BEB284();
  v33 = a2;
  v34 = v22;
  v35 = v23;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v24;
  sub_219BE57D4();
  type metadata accessor for AudioFeedSectionDescriptor();
  type metadata accessor for AudioFeedModel(0);
  sub_2196DB130(&qword_280EBC460, 255, type metadata accessor for AudioFeedSectionDescriptor);
  sub_2196DB130(&qword_280EDCBF0, 255, type metadata accessor for AudioFeedModel);
  sub_219BE57A4();
  v18 = sub_219BE6624();

  sub_218ED1AFC(v17);
  if (v18)
  {
    v19 = MEMORY[0x277D6D630];
  }

  else
  {
    v16 = 0;
    v19 = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
  }

  *(v15 + 32) = v18;
  *(v15 + 56) = v16;
  *(v15 + 64) = v19;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v20 = sub_219BE59D4();
  (*(v31 + 8))(v13, v32);
  return v20;
}

void sub_2196DAC30()
{
  if (!qword_280EE5328)
  {
    sub_219BEEF64();
    sub_2196DAE00(255, &qword_280EE4748, MEMORY[0x277D6E368]);
    sub_2196DB130(&unk_280E91770, 255, MEMORY[0x277D324B8]);
    v0 = sub_219BE7214();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5328);
    }
  }
}

void sub_2196DACFC()
{
  if (!qword_280EE5318)
  {
    sub_219BEEF64();
    sub_2196DB130(&unk_280E91770, 255, MEMORY[0x277D324B8]);
    v0 = sub_219BE7214();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5318);
    }
  }
}

void sub_2196DAD9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2196DAE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_218EEDBB8();
    v7 = v6;
    v8 = sub_219BEEF64();
    v9 = MEMORY[0x277D324B8];
    v12[0] = v7;
    v12[1] = v8;
    v12[2] = sub_2196DB130(&unk_280E91760, 255, MEMORY[0x277D324B8]);
    v12[3] = sub_2196DB130(&unk_280E91770, 255, v9);
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2196DAEF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [v4 setBackgroundColor_];

  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = [v5 clearColor];
  [v7 setBackgroundColor_];

  [v7 setAlwaysBounceVertical_];
  [v7 setKeyboardDismissMode_];

  v9 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_styler], *&v1[OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_styler + 24]);
  v11 = sub_2196DB130(&qword_280EC5D20, v10, type metadata accessor for AudioFeedViewController);
  v12 = MEMORY[0x21CEBCBD0](ObjectType, v11);
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = *v9;
  v16 = [v12 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = *(*__swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  [v16 setBackgroundColor_];
}

uint64_t sub_2196DB130(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2196DB178(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  sub_2196DC534(0, &qword_27CC152D8, MEMORY[0x277D6DF88]);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  sub_21902C624();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2196DC534(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_218A5CB84(*(v3 + 16), &v30);
  v27 = v3;
  v28 = v30;
  v29 = v31;
  v11 = sub_218F90A28(sub_2196DC628, v26);
  sub_218F935EC();
  v13 = v12;
  v14 = sub_2196DC4EC(&unk_27CC1E150, sub_218F935EC);
  v15 = sub_2196DC4EC(&qword_27CC152E0, sub_218F935EC);
  MEMORY[0x21CEB9170](v11, v13, v14, v15);
  type metadata accessor for SearchMoreSectionDescriptor();
  type metadata accessor for SearchMoreModel(0);
  sub_2196DC4EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
  sub_2196DC4EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
  sub_219BEB2D4();
  type metadata accessor for SearchMoreFeedServiceConfig();
  sub_2196DC4EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v16 = sub_219BEEFC4();

  v17 = 0;
  if (v16)
  {
    v17 = sub_219BEDC74();
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v30 = v16;
  v33 = v17;
  v18 = v21;
  sub_219BEB2C4();

  sub_219BE85C4();
  v25(v6);
  (*(v22 + 8))(v6, v23);
  return (*(v20 + 8))(v10, v18);
}

uint64_t sub_2196DB5C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v93 = a3;
  v92 = a2;
  v94 = a1;
  v96 = a4;
  v82 = type metadata accessor for SearchMoreFeedGapLocation(0);
  MEMORY[0x28223BE20](v82);
  v83 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = type metadata accessor for TagsSearchMoreFeedGroup();
  v5 = MEMORY[0x28223BE20](v84);
  v85 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v86 = &v81 - v7;
  v8 = type metadata accessor for RecipesSearchMoreFeedGroup();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v81 - v12;
  v14 = sub_219BF0BD4();
  v90 = *(v14 - 8);
  v91 = v14;
  MEMORY[0x28223BE20](v14);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v87);
  v89 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v81 - v21;
  v23 = type metadata accessor for SearchMoreSectionDescriptor();
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F935EC();
  v95 = v26;
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v85 = type metadata accessor for ArticlesSearchMoreFeedGroup;
      sub_2189650B8(v25, v22, type metadata accessor for ArticlesSearchMoreFeedGroup);
      v28 = v94;
      v86 = *(v94 + 16);
      v29 = sub_218A5C36C(v86);
      v97 = *&v22[*(v17 + 24)];

      sub_2191ED6C8(v29);
      sub_218A4247C(0, &qword_280E8EC00, &qword_280E8E260);
      sub_218A42544(&qword_280E8EBF0, &qword_280E8EC00, &qword_280E8E260);
      v30 = v99;
      v31 = sub_219BF56E4();
      v99 = v30;

      v33 = *v22;
      v32 = *(v22 + 1);
      v34 = *(v17 + 20);
      v35 = sub_219BED8D4();
      (*(*(v35 - 8) + 16))(&v20[v34], &v22[v34], v35);
      *v20 = v33;
      *(v20 + 1) = v32;
      *&v20[*(v17 + 24)] = v31;
      __swift_project_boxed_opaque_existential_1((v28 + 24), *(v28 + 48));
      v36 = v85;
      sub_218A5CFF4(0, &qword_27CC0D1E0, v85);
      v38 = v89;
      v39 = v89 + *(v37 + 48);
      sub_2196DC6E4(v20, v89, v36);
      *v39 = v92;
      *(v39 + 8) = v93 & 1;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SearchMoreFeedServiceConfig();
      sub_2196DC4EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);

      sub_219BEF3D4();
      v40 = v88;
      sub_219BEE7A4();

      v41 = v96;
      sub_219A972C0(v38, v40, v96);
      (*(v90 + 8))(v40, v91);
      sub_2196DC74C(v38, type metadata accessor for SearchMoreFeedGroup);
      sub_2196DC74C(v20, type metadata accessor for ArticlesSearchMoreFeedGroup);
      sub_2196DC74C(v22, type metadata accessor for ArticlesSearchMoreFeedGroup);
      return (*(*(v95 - 8) + 56))(v41, 0, 1);
    }

    sub_2189650B8(v25, v13, type metadata accessor for RecipesSearchMoreFeedGroup);
    v62 = v94;
    v86 = *(v94 + 16);
    v63 = sub_218A5C70C(v86);
    v97 = *&v13[*(v8 + 24)];

    sub_2191ED69C(v63);
    sub_218799754(0);
    sub_2196DC4EC(&qword_280E8EB10, sub_218799754);
    v64 = v99;
    v65 = sub_219BF56E4();
    v99 = v64;

    v67 = *v13;
    v66 = *(v13 + 1);
    v68 = *(v8 + 20);
    v69 = sub_219BED8D4();
    (*(*(v69 - 8) + 16))(&v11[v68], &v13[v68], v69);
    *v11 = v67;
    *(v11 + 1) = v66;
    *&v11[*(v8 + 24)] = v65;
    __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
    sub_218A5CFF4(0, &qword_27CC0D1D8, type metadata accessor for RecipesSearchMoreFeedGroup);
    v71 = v89;
    v72 = v89 + *(v70 + 48);
    sub_2196DC6E4(v11, v89, type metadata accessor for RecipesSearchMoreFeedGroup);
    *v72 = v92;
    *(v72 + 8) = v93 & 1;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_2196DC4EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);

    sub_219BEF3D4();
    v73 = v88;
    sub_219BEE7A4();

    v59 = v96;
    sub_219A972C0(v71, v73, v96);
    (*(v90 + 8))(v73, v91);
    sub_2196DC74C(v71, type metadata accessor for SearchMoreFeedGroup);
    sub_2196DC74C(v11, type metadata accessor for RecipesSearchMoreFeedGroup);
    v60 = v13;
    v61 = type metadata accessor for RecipesSearchMoreFeedGroup;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v43 = v86;
    sub_2189650B8(v25, v86, type metadata accessor for TagsSearchMoreFeedGroup);
    v44 = v94;
    v83 = *(v94 + 16);
    v45 = sub_218A5C948(v83);
    v46 = v84;
    v97 = *&v43[*(v84 + 24)];

    sub_2191ED550(v45);
    sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
    sub_218A42544(&qword_280E8ECF0, &qword_280E8ED00, &qword_280E8E680);
    v47 = v99;
    v48 = sub_219BF56E4();
    v99 = v47;

    v50 = *v43;
    v49 = *(v43 + 1);
    v51 = v43;
    v52 = *(v46 + 20);
    v53 = sub_219BED8D4();
    v54 = v85;
    (*(*(v53 - 8) + 16))(v85 + v52, &v51[v52], v53);
    *v54 = v50;
    *(v54 + 1) = v49;
    *(v54 + *(v46 + 24)) = v48;
    __swift_project_boxed_opaque_existential_1((v44 + 24), *(v44 + 48));
    sub_218A5CFF4(0, &qword_27CC0D1D0, type metadata accessor for TagsSearchMoreFeedGroup);
    v56 = v89;
    v57 = v89 + *(v55 + 48);
    sub_2196DC6E4(v54, v89, type metadata accessor for TagsSearchMoreFeedGroup);
    *v57 = v92;
    *(v57 + 8) = v93 & 1;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_2196DC4EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);

    sub_219BEF3D4();
    v58 = v88;
    sub_219BEE7A4();

    v59 = v96;
    sub_219A972C0(v56, v58, v96);
    (*(v90 + 8))(v58, v91);
    sub_2196DC74C(v56, type metadata accessor for SearchMoreFeedGroup);
    sub_2196DC74C(v54, type metadata accessor for TagsSearchMoreFeedGroup);
    v60 = v86;
    v61 = type metadata accessor for TagsSearchMoreFeedGroup;
LABEL_7:
    sub_2196DC74C(v60, v61);
    return (*(*(v95 - 8) + 56))(v59, 0, 1);
  }

  type metadata accessor for SearchMoreFeedServiceConfig();
  sub_2196DC4EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
  sub_219BEF3D4();
  if (sub_219BEF394())
  {
    if ((sub_219BEE854() & 1) == 0)
    {
      (*(*(v95 - 8) + 56))(v96, 1, 1);
    }

    v74 = swift_allocObject();
    sub_2196DC648(0, &unk_27CC1E160, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v74 + 16) = sub_219BEE874();
    v75 = v83;
    *v83 = v74;
    v76 = MEMORY[0x277D33068];
  }

  else
  {
    v77 = swift_allocObject();
    sub_2196DC648(0, &unk_27CC1E160, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v77 + 16) = sub_219BEE874();
    v75 = v83;
    *v83 = v77;
    v76 = MEMORY[0x277D33090];
  }

  v78 = *v76;
  sub_2196DC648(0, &qword_27CC20A10, MEMORY[0x277D33098]);
  (*(*(v79 - 8) + 104))(v75, v78, v79);
  swift_storeEnumTagMultiPayload();
  v97 = v92;
  v98 = v93 & 1;
  v80 = v96;
  sub_2192FDB8C(v75, &v97, v96);

  sub_2196DC74C(v75, type metadata accessor for SearchMoreFeedGapLocation);
  return (*(*(v95 - 8) + 56))(v80, 0, 1);
}

uint64_t sub_2196DC3C8(uint64_t a1)
{
  v2 = sub_218F9F988();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2196DC408()
{
  result = qword_27CC1E130;
  if (!qword_27CC1E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E130);
  }

  return result;
}

uint64_t sub_2196DC4EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2196DC534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor();
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_2196DC4EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    v8[3] = sub_2196DC4EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2196DC648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchMoreFeedServiceConfig();
    v7 = sub_2196DC4EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2196DC6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196DC74C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2196DC7CC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F61BB8);
  __swift_project_value_buffer(v0, qword_280F61BB8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_2196DCA20()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8DD8);
  __swift_project_value_buffer(v0, qword_27CCD8DD8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196DCBD0()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8DF0);
  __swift_project_value_buffer(v0, qword_27CCD8DF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_2196DCE2C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8E08);
  __swift_project_value_buffer(v0, qword_27CCD8E08);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196DCFE0()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8E20);
  __swift_project_value_buffer(v0, qword_27CCD8E20);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196DD26C()
{
  sub_2193C3554();
  swift_allocObject();
  sub_218C11434();

  return sub_219BE6E64();
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2196DD2F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_2196DD338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2196DD38C(void *a1)
{
  v3 = v1;
  sub_2196DDDD0(0, &qword_27CC1E180, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196DDD7C();
  sub_219BF7B44();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = 1;
    sub_2186E3374();
    sub_21897A7C0();
    sub_219BF7834();
    *&v11 = *(v3 + 24);
    v12 = 2;
    sub_218F357C4();
    sub_2196DDE34(&qword_27CC1E188, &qword_27CC1E190);
    sub_219BF7834();
    LOBYTE(v11) = 3;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196DD5EC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2196DD6BC()
{
  sub_219BF5524();
}

uint64_t sub_2196DD778()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2196DD844@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2196DE024();
  *a1 = result;
  return result;
}

void sub_2196DD874(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xEA00000000007365;
  v5 = 0x69726F6765746163;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000017;
    v4 = 0x8000000219CD7500;
  }

  if (*v1)
  {
    v3 = 0x62755370756F7267;
    v2 = 0xED0000656C746974;
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

unint64_t sub_2196DD900()
{
  v1 = 1701869940;
  v2 = 0x69726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x62755370756F7267;
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

uint64_t sub_2196DD988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2196DE024();
  *a1 = result;
  return result;
}

uint64_t sub_2196DD9B0(uint64_t a1)
{
  v2 = sub_2196DDD7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196DD9EC(uint64_t a1)
{
  v2 = sub_2196DDD7C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2196DDA28@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2196DDA88(a1, v6);
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

uint64_t sub_2196DDA88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2196DDDD0(0, &qword_280E8C820, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196DDD7C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24) = 1;
  sub_219BF7674();
  v18 = v23;
  v19 = v22;
  sub_218F357C4();
  LOBYTE(v20) = 2;
  sub_2196DDE34(&qword_280E8F118, qword_280EC7E40);
  sub_219BF7674();
  v11 = v7;
  v12 = v24;
  LOBYTE(v20) = 3;
  sub_219BF7674();
  v17 = v21;
  if (!v12)
  {
    v12 = MEMORY[0x277D84F90];
  }

  v20 = v12;
  sub_2196DDEC4(&unk_280E8F120, sub_218F357C4);
  v13 = sub_219BF56E4();
  (*(v11 + 8))(v9, v6);

  v14 = (v17 == 2) | v17;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  v15 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 33) = v14 & 1;
  return result;
}

unint64_t sub_2196DDD7C()
{
  result = qword_280E99DC8;
  if (!qword_280E99DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99DC8);
  }

  return result;
}

void sub_2196DDDD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196DDD7C();
    v7 = a3(a1, &type metadata for CategoriesMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2196DDE34(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_218F357C4();
    sub_2196DDEC4(a2, type metadata accessor for MagazineCategoryConfig);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2196DDEC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2196DDF20()
{
  result = qword_27CC1E198;
  if (!qword_27CC1E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E198);
  }

  return result;
}

unint64_t sub_2196DDF78()
{
  result = qword_280E99DB8;
  if (!qword_280E99DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99DB8);
  }

  return result;
}

unint64_t sub_2196DDFD0()
{
  result = qword_280E99DC0;
  if (!qword_280E99DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99DC0);
  }

  return result;
}

uint64_t sub_2196DE024()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

BOOL sub_2196DE070(uint64_t a1)
{
  v2 = v1;
  v26 = sub_219BDDD74();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE22B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE22F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C4E41C();
  v25 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  (*(v12 + 8))(v14, v11);
  v15 = sub_219BE22C4();
  v17 = v16;
  (*(v8 + 8))(v10, v7);
  if (v17)
  {
    v18 = __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D84F90];
    *(v19 + 16) = v15;
    *(v19 + 24) = v17;
    *(v19 + 32) = v20;
    *(v19 + 56) = 0x4000000000000000;
    v21 = v19 | 0x5000000000000000;
    sub_219BDDD54();
    v22 = *v18;
    v23 = swift_allocObject();
    *(v23 + 16) = v21;

    sub_218C4E768(v25, v6, sub_218C4E474, v23, v22);

    (*(v4 + 8))(v6, v26);
  }

  return v17 != 0;
}

unint64_t sub_2196DE3C0()
{
  result = qword_280EDA400;
  if (!qword_280EDA400)
  {
    type metadata accessor for IssueURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDA400);
  }

  return result;
}

uint64_t sub_2196DE414(unint64_t a1)
{
  if (a1 > 5)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_219BDB5E4();

    return v3;
  }

  return result;
}

uint64_t sub_2196DE640(unint64_t a1)
{
  if (a1 > 5)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else if (((1 << a1) & 0x31) != 0)
  {
    return 0;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();

    return v4;
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2196DE86C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 233))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 193);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2196DE8C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 233) = 0;
    }

    if (a2)
    {
      *(result + 193) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for HistoryFeedLayoutModel()
{
  result = qword_280EC80F8;
  if (!qword_280EC80F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2196DE99C()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196DF12C(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_2196DEB00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196DF12C(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_2196DEBEC(uint64_t a1)
{
  v2 = sub_2196DF190(&qword_280EC8140);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2196DEC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196DF12C(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_2196DEE84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196DF12C(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2196DEFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196DF12C(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_2196DF12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2196DF190(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HistoryFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2196DF1E4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8E38);
  __swift_project_value_buffer(v0, qword_27CCD8E38);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_2196DF438()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8E50);
  __swift_project_value_buffer(v0, qword_27CCD8E50);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196DF5E4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8E68);
  __swift_project_value_buffer(v0, qword_27CCD8E68);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196DF794()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8E80);
  __swift_project_value_buffer(v0, qword_27CCD8E80);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_2196DF9E4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8E98);
  __swift_project_value_buffer(v0, qword_27CCD8E98);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196DFB94()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8EB0);
  __swift_project_value_buffer(v0, qword_27CCD8EB0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196DFDF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196E05FC(0, &qword_27CC1E1B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196E0544();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2196E0660(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2196E0598(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2196E00A0(uint64_t a1)
{
  v2 = sub_2196E0544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196E00DC(uint64_t a1)
{
  v2 = sub_2196E0544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2196E0158(void *a1)
{
  sub_2196E05FC(0, &qword_27CC1E1C8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196E0544();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2196E0660(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2196E03B8(uint64_t a1)
{
  result = sub_2196E0660(&qword_27CC1A540, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2196E0410(void *a1)
{
  a1[1] = sub_2196E0660(&qword_27CC1E1B0, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
  a1[2] = sub_2196E0660(&qword_27CC1C7A8, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
  result = sub_2196E0660(&qword_27CC1C8B0, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_2196E04BC(uint64_t a1)
{
  v2 = sub_2196E0660(&qword_27CC1E1B0, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_2196E0544()
{
  result = qword_27CC1E1C0;
  if (!qword_27CC1E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E1C0);
  }

  return result;
}

uint64_t sub_2196E0598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2196E05FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196E0544();
    v7 = a3(a1, &type metadata for ChannelSectionDirectoryTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2196E0660(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2196E06BC()
{
  result = qword_27CC1E1D0;
  if (!qword_27CC1E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E1D0);
  }

  return result;
}

unint64_t sub_2196E0714()
{
  result = qword_27CC1E1D8;
  if (!qword_27CC1E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E1D8);
  }

  return result;
}

unint64_t sub_2196E076C()
{
  result = qword_27CC1E1E0;
  if (!qword_27CC1E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E1E0);
  }

  return result;
}

uint64_t sub_2196E07C0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = __swift_destroy_boxed_opaque_existential_1(v10))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_218718690(*(v1 + 56) + 40 * (v9 | (v8 << 6)), v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_219BDCCC4();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MagazineFeedFailedData()
{
  result = qword_27CC1E1E8;
  if (!qword_27CC1E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2196E09B4()
{
  result = type metadata accessor for MagazineFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2196E0A30(unsigned __int8 *a1)
{
  v2 = sub_219BDBD64();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BEE714();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E12B60();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEE704();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF0644();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BEE754();
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x28223BE20](v18);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v42 = v42[3];
  v21 = (v11 + 104);
  v22 = *(v15 + 104);
  if (v20)
  {
    if (v20 == 1)
    {
      v22(v17, *MEMORY[0x277D32EF8], v14);
      v23 = MEMORY[0x277D32110];
    }

    else
    {
      v22(v17, *MEMORY[0x277D32EF8], v14);
      v23 = MEMORY[0x277D32118];
    }

    (*v21)(v13, *v23, v10);
    v27 = sub_219BEE734();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  }

  else
  {
    v22(v17, *MEMORY[0x277D32EF0], v14);
    (*v21)(v13, *MEMORY[0x277D32110], v10);
    v24 = *MEMORY[0x277D32140];
    v25 = sub_219BEE734();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v9, v24, v25);
    (*(v26 + 56))(v9, 0, 1, v25);
  }

  (*(v4 + 104))(v6, *MEMORY[0x277D32130], v41);
  v28 = v42;
  v29 = v42;
  v30 = v43;
  sub_219BEE744();
  v31 = v44;
  sub_219BDBD54();
  v32 = sub_219BDBD44();
  v34 = v33;
  (*(v47 + 8))(v31, v48);
  v35 = qword_280E8D7F8;
  v36 = *MEMORY[0x277D30BC0];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_280F61708;
  type metadata accessor for TagFeedServiceContext();
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v28;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  *(v38 + 56) = 0;
  (*(v45 + 32))(v38 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v30, v46);
  v39 = v37;
  return v38;
}

unint64_t sub_2196E0FD8()
{
  result = qword_280EC9730;
  if (!qword_280EC9730)
  {
    type metadata accessor for TagFeedServiceContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC9730);
  }

  return result;
}

uint64_t sub_2196E1030@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2196E0A30(a1);
  *a2 = result;
  return result;
}

uint64_t LocalRegionManager.__allocating_init(locationManager:localAreasManager:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LocalRegionManager.init(locationManager:localAreasManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void LocalRegionManager.fetchRegions(_:)(void (*a1)(void), uint64_t a2)
{
  v5 = [*(v2 + 16) mostFrequentLocation];
  if (v5)
  {
    v6 = v5;
    v7 = *(v2 + 24);
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v6;
    v11[4] = sub_2196E11DC;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_218C1CBB4;
    v11[3] = &block_descriptor_156;
    v9 = _Block_copy(v11);

    v10 = v6;

    [v7 fetchLocalAreasProvider_];
    _Block_release(v9);
  }

  else
  {
    a1(MEMORY[0x277D84F90]);
  }
}

void LocalRegionManager.fetchLocalAreas(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = [*(v2 + 16) mostFrequentLocation];
  if (v5)
  {
    v6 = v5;
    v7 = *(v2 + 24);
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v6;
    v13[4] = sub_2196E1480;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_218C1CBB4;
    v13[3] = &block_descriptor_6_2;
    v9 = _Block_copy(v13);

    v10 = v6;

    [v7 fetchLocalAreasProvider_];
    _Block_release(v9);
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790);
    v11 = sub_219BF6F44();
    sub_219BF6214();
    v12 = MEMORY[0x277D84F90];
    sub_219BE5314();

    a1(v12);
  }
}

uint64_t sub_2196E139C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, SEL *a6, unint64_t *a7)
{
  if (!a1)
  {
    return a3(MEMORY[0x277D84F90]);
  }

  v9 = [swift_unknownObjectRetain() *a6];
  sub_2186C6148(0, a7);
  v10 = sub_219BF5924();

  a3(v10);
  swift_unknownObjectRelease();
}

void sub_2196E14D0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_2186C6148(0, a3);
  v4 = sub_219BF5904();
  (*(a2 + 16))(a2, v4);
}

uint64_t LocalRegionManager.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LocalRegionManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2196E15D8(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  _Block_copy(a2);
  v6 = [v5 mostFrequentLocation];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 24);
    v9 = swift_allocObject();
    v9[2] = sub_2196E17FC;
    v9[3] = v4;
    v9[4] = v7;
    aBlock[4] = sub_2196E1860;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C1CBB4;
    aBlock[3] = &block_descriptor_19_3;
    v10 = _Block_copy(aBlock);

    v11 = v7;

    [v8 fetchLocalAreasProvider_];
    _Block_release(v10);
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790);
    v12 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    sub_2186C6148(0, &qword_27CC1E1F8);
    v13 = sub_219BF5904();
    (a2)[2](a2, v13);
  }
}

void sub_2196E1874(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer);
  v8 = [v7 subviews];
  sub_2186C6148(0, &qword_280E8DAE0);
  v9 = sub_219BF5924();

  if (v9 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 removeFromSuperview];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v15 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v15 setAxis_];
  v16 = sub_219BED0C4();
  v17 = 1.17549435e-38;
  if ((v16 & 1) == 0)
  {
    v17 = 26.0;
  }

  [v15 setSpacing_];
  [v15 setBaselineRelativeArrangement_];
  if (a1)
  {
    v18 = objc_opt_self();
    v19 = a1;
    v20 = [v18 defaultMetrics];
    [v20 scaledValueForValue_];
    v22 = v21;

    v23 = sub_2196E4958(v22, 6515053, 0xE300000000000000, v19, 0);
    [v15 addArrangedSubview_];
  }

  if (a2)
  {
    v24 = objc_opt_self();
    v25 = a2;
    v26 = [v24 defaultMetrics];
    [v26 scaledValueForValue_];
    v28 = v27;

    v29 = sub_2196E4958(v28, 0x696C612E74786574, 0xEE007466656C6E67, v25, 0);
    [v15 addArrangedSubview_];
  }

  if (a3)
  {
    v30 = objc_opt_self();
    v31 = a3;
    v32 = [v30 defaultMetrics];
    [v32 scaledValueForValue_];
    v34 = v33;

    v35 = sub_2196E4958(v34, 0x6B636F6C63, 0xE500000000000000, v31, a4);
    [v15 addArrangedSubview_];
  }

  v36 = v15;
  [v7 addSubview_];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = objc_opt_self();
  sub_218725F94();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C24300;
  v39 = [v36 leadingAnchor];
  v40 = [v7 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v38 + 32) = v41;
  v42 = [v36 firstBaselineAnchor];

  v43 = [v7 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:26.0];

  *(v38 + 40) = v44;
  v45 = [v36 trailingAnchor];

  v46 = [v7 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v38 + 48) = v47;
  v48 = [v36 bottomAnchor];

  v49 = [v7 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v38 + 56) = v50;
  sub_2186C6148(0, &qword_280E8E320);
  v53 = sub_219BF5904();

  [v37 activateConstraints_];
}

uint64_t sub_2196E1E24(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_2196E517C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v15];
  *(v5 + v13) = v14;
  v16 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageViewContainer;
  *(v5 + v16) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v17 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageView;
  v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v18 setAccessibilityIgnoresInvertColors_];
  LODWORD(v19) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v18 setContentHuggingPriority:1 forAxis:v20];
  [v18 setContentMode_];

  v238 = v17;
  *&v17[v5] = v18;
  v21 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headlineLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v22 setNumberOfLines_];
  LODWORD(v23) = 1132068864;
  [v22 setContentHuggingPriority:1 forAxis:v23];
  *(v5 + v21) = v22;
  v24 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView;
  *(v5 + v24) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v25 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_progressView;
  *(v5 + v25) = [objc_allocWithZone(sub_219BE5E54()) initWithFrame_];
  v26 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_remainingTimeLabel;
  *(v5 + v26) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v27 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  LODWORD(v29) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v29];
  LODWORD(v30) = 1132068864;
  [v28 setContentHuggingPriority:0 forAxis:v30];
  *(v5 + v27) = v28;
  v31 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v32 setNumberOfLines_];
  *(v5 + v31) = v32;
  v33 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_playPauseButton;
  v34 = objc_opt_self();
  *(v5 + v33) = [v34 buttonWithType_];
  v35 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_readButton;
  *(v5 + v35) = [v34 buttonWithType_];
  v36 = [v34 buttonWithType_];
  if (sub_219BED0C4())
  {
    sub_219BF6EA4();
    v37 = sub_219BF6ED4();
    (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
    sub_219BF6EE4();
  }

  *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_closeButton) = v36;
  v38 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer;
  *(v5 + v38) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v39 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonStack;
  v40 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v40 setAxis_];
  [v40 setSpacing_];
  [v40 setDistribution_];
  *(v5 + v39) = v40;
  v41 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_durationStack;
  v42 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v42 setAxis_];
  [v42 setAlignment_];
  [v42 setSpacing_];
  *(v5 + v41) = v42;
  v43 = [*&v238[v5] widthAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageWidthConstraint) = v44;
  if (sub_219BED0C4())
  {
    v45 = 0;
    *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView) = 0;
    *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptSeparator) = 0;
    *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionSeparator) = 0;
  }

  else
  {
    v46 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v46 setAccessibilityIgnoresInvertColors_];
    *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView) = v46;
    v47 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptSeparator) = v47;
    v48 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionSeparator) = v48;
    v45 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  }

  *(v5 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonSeparator) = v45;
  v241.receiver = v5;
  v241.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v241, sel_initWithFrame_, a1, a2, a3, a4);
  if ((sub_219BED0C4() & 1) == 0)
  {
    v50 = objc_opt_self();
    v51 = [v50 systemBackgroundColor];
    v52 = [v50 tertiarySystemBackgroundColor];
    v53 = [v50 ts:v51 dynamicColor:v52 withDarkStyleVariant:?];

    [v49 setBackgroundColor_];
  }

  v54 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptSeparator;
  v55 = *(v49 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptSeparator);
  if (v55)
  {
    v56 = objc_opt_self();
    v57 = v55;
    v58 = [v56 separatorColor];
    [v57 setBackgroundColor_];
  }

  v230 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionSeparator;
  v59 = *(v49 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionSeparator);
  if (v59)
  {
    v60 = objc_opt_self();
    v61 = v59;
    v62 = [v60 separatorColor];
    [v61 setBackgroundColor_];
  }

  v229 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonSeparator;
  v63 = *(v49 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonSeparator);
  if (v63)
  {
    v64 = objc_opt_self();
    v65 = v63;
    v66 = [v64 separatorColor];
    [v65 setBackgroundColor_];
  }

  v67 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView;
  if (*(v49 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView))
  {
    [v49 addSubview_];
  }

  v68 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel;
  v69 = *(v49 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel);
  v70 = v49;
  [v70 addSubview_];
  v71 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageViewContainer;
  [v70 addSubview_];
  v72 = *(v70 + v71);
  v231 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageView;
  v232 = v71;
  [v72 addSubview_];
  v238 = v68;
  [v70 addSubview_];
  ObjectType = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headlineLabel;
  [v70 addSubview_];
  v73 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_durationStack;
  v74 = *(v70 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_durationStack);
  v233 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView;
  [v74 addArrangedSubview_];
  v75 = *(v70 + v73);
  v225 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel;
  [v75 addArrangedSubview_];
  v76 = *(v70 + v73);
  v235 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_progressView;
  [v76 addArrangedSubview_];
  v77 = *(v70 + v73);
  v234 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_remainingTimeLabel;
  [v77 addArrangedSubview_];
  v237 = v73;
  [v70 addSubview_];
  if (*(v49 + v54))
  {
    [v70 addSubview_];
  }

  v78 = v54;
  v236 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel;
  [v70 addSubview_];
  if (*(v49 + v230))
  {
    [v70 addSubview_];
  }

  v79 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer;
  [v70 addSubview_];
  if (*(v49 + v229))
  {
    [v70 addSubview_];
  }

  v80 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonStack;
  v81 = *(v70 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonStack);
  v228 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_playPauseButton;
  [v81 addArrangedSubview_];
  v82 = *(v70 + v80);
  v227 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_readButton;
  [v82 addArrangedSubview_];
  [v70 addSubview_];
  v83 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_closeButton;
  [v70 addSubview_];
  if ((sub_219BED0C4() & 1) == 0)
  {
    [v70 setLayoutMargins_];
  }

  v84 = *(v49 + v67);
  if (v84)
  {
    [v84 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  [*&v238[v49] setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v70 + v232) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v70 + v231) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(ObjectType + v70) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v70 + v233) setTranslatesAutoresizingMaskIntoConstraints_];
  v85 = v235;
  [*&v235[v70] setTranslatesAutoresizingMaskIntoConstraints_];
  v86 = v234;
  [*(v70 + v234) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v70 + v83) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v70 + v237) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v49 + v78) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v70 + v236) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v49 + v230) setTranslatesAutoresizingMaskIntoConstraints_];
  v226 = v79;
  [*(v70 + v79) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v49 + v229) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v70 + v80) setTranslatesAutoresizingMaskIntoConstraints_];
  v87 = [*&v85[v70] heightAnchor];
  v88 = [v87 constraintEqualToConstant_];
  v229 = v88;

  LODWORD(v89) = 1144750080;
  [v88 setPriority_];
  v90 = [*(v70 + v86) widthAnchor];
  v91 = [v90 &selRef:88.0 addShortcut:? + 1];
  v230 = v91;

  LODWORD(v92) = 1144750080;
  [v91 setPriority_];
  v93 = sub_2196E3798(v70);
  v94 = sub_2196E39B4(v70);
  v95 = sub_2196E3D28(v70, &OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptSeparator, &OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel, 15.5);
  v96 = sub_2196E3D28(v70, &OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionSeparator, &OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel, 19.5);
  v97 = sub_2196E3D28(v70, &OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonSeparator, &OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer, 11.5);
  v98 = sub_2196E3F54(v70);
  v240 = v93;
  sub_2191F0600(v94);
  sub_2191F0600(v95);
  sub_2191F0600(v96);
  sub_2191F0600(v97);
  sub_2191F0600(v98);
  sub_218725F94();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C9D620;
  v100 = [*(v70 + v83) topAnchor];
  v101 = [v70 layoutMarginsGuide];

  v102 = [v101 &selRef_setNewIssueNotificationsEnabled_];
  v103 = [v100 constraintEqualToAnchor:v102 constant:7.0];

  *(inited + 32) = v103;
  v104 = [*(v70 + v83) widthAnchor];
  v105 = [v104 constraintLessThanOrEqualToConstant_];

  *(inited + 40) = v105;
  v106 = *(v70 + v83);
  v224 = v83;
  v107 = [v106 trailingAnchor];
  v108 = [v70 layoutMarginsGuide];

  v109 = [v108 &selRef_totalTime + 4];
  v110 = [v107 constraintEqualToAnchor:v109 constant:-7.0];

  *(inited + 48) = v110;
  v111 = [*(v70 + v83) heightAnchor];
  v112 = [v111 constraintLessThanOrEqualToConstant_];

  *(inited + 56) = v112;
  v113 = v232;
  v114 = [*(v70 + v232) topAnchor];
  v115 = v238;
  v116 = [*&v238[v49] topAnchor];
  v117 = [v114 constraintEqualToAnchor_];

  *(inited + 64) = v117;
  v118 = [*(v70 + v113) leadingAnchor];
  v119 = [*&v115[v49] &selRef_setDoesRelativeDateFormatting_ + 1];
  v120 = [v118 constraintEqualToAnchor_];

  *(inited + 72) = v120;
  v121 = [*(v70 + v113) trailingAnchor];
  v122 = [*(v70 + v224) &selRef_setDoesRelativeDateFormatting_ + 1];
  v123 = [v121 constraintEqualToAnchor:v122 constant:-7.0];

  *(inited + 80) = v123;
  v124 = [*(v70 + v113) heightAnchor];
  v125 = sub_219BED0C4();
  v126 = 14.0;
  if (v125)
  {
    v126 = 23.0;
  }

  v127 = [v124 constraintEqualToConstant_];

  *(inited + 88) = v127;
  v128 = v231;
  v129 = [*(v70 + v231) topAnchor];
  v130 = [*(v70 + v113) topAnchor];
  v131 = [v129 constraintEqualToAnchor_];

  *(inited + 96) = v131;
  v132 = [*(v70 + v128) leadingAnchor];
  v133 = [*(v70 + v113) leadingAnchor];
  v134 = [v132 constraintEqualToAnchor_];

  *(inited + 104) = v134;
  v135 = [*(v70 + v128) bottomAnchor];
  v136 = [*(v70 + v113) &selRef_initWithTarget_action_ + 5];
  v137 = [v135 constraintEqualToAnchor_];

  *(inited + 112) = v137;
  v138 = [*(v70 + v128) widthAnchor];
  v139 = [*(v70 + v113) widthAnchor];
  v140 = [v138 constraintLessThanOrEqualToAnchor_];

  *(inited + 120) = v140;
  v141 = *(v70 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageWidthConstraint);
  *(inited + 128) = v141;
  v142 = ObjectType;
  v143 = *(ObjectType + v70);
  v144 = v141;
  v145 = [v143 topAnchor];
  v146 = v238;
  v147 = [*&v238[v49] bottomAnchor];
  v148 = sub_219BED0C4();
  v149 = 4.0;
  if (v148)
  {
    v149 = 10.0;
  }

  v150 = [v145 constraintEqualToAnchor:v147 constant:v149];

  *(inited + 136) = v150;
  v151 = [*(v142 + v70) leadingAnchor];
  v152 = [*&v146[v49] leadingAnchor];
  v153 = [v151 constraintEqualToAnchor_];

  *(inited + 144) = v153;
  v154 = [*(v142 + v70) trailingAnchor];
  v155 = [*&v146[v49] trailingAnchor];
  v156 = [v154 constraintEqualToAnchor_];

  *(inited + 152) = v156;
  v157 = [*(v142 + v70) bottomAnchor];
  v158 = [*(v70 + v225) topAnchor];
  v159 = [v157 constraintLessThanOrEqualToAnchor_];

  *(inited + 160) = v159;
  v160 = v233;
  v161 = [*(v70 + v233) widthAnchor];
  v162 = objc_opt_self();
  v163 = [v162 defaultMetrics];
  [v163 scaledValueForValue_];
  v165 = v164;

  v166 = [v161 constraintEqualToConstant_];
  *(inited + 168) = v166;
  v167 = [*(v70 + v160) heightAnchor];
  v168 = [v162 defaultMetrics];
  [v168 scaledValueForValue_];
  v170 = v169;

  v171 = [v167 constraintEqualToConstant_];
  *(inited + 176) = v171;
  *(inited + 184) = sub_2196E42E8(v70);
  v172 = v235;
  v173 = [*&v235[v70] leadingAnchor];
  v174 = [*(v70 + v160) leadingAnchor];
  v175 = [v173 constraintEqualToAnchor_];

  *(inited + 192) = v175;
  v176 = [*&v172[v70] centerYAnchor];
  v177 = v237;
  v178 = [*(v70 + v237) centerYAnchor];
  v179 = [v176 constraintEqualToAnchor_];

  *(inited + 200) = v179;
  v180 = [*&v172[v70] widthAnchor];
  v181 = [v180 constraintGreaterThanOrEqualToConstant_];

  v182 = v229;
  *(inited + 208) = v181;
  *(inited + 216) = v182;
  v183 = *(v70 + v234);
  v238 = v182;
  v184 = [v183 leadingAnchor];
  v185 = [*&v172[v70] trailingAnchor];
  v186 = [v184 constraintEqualToAnchor:v185 constant:10.0];

  v187 = v230;
  *(inited + 224) = v186;
  *(inited + 232) = v187;
  v188 = v177;
  v189 = *(v70 + v177);
  v235 = v187;
  v190 = [v189 leadingAnchor];
  v191 = ObjectType;
  v192 = [*(ObjectType + v70) leadingAnchor];
  v193 = [v190 constraintEqualToAnchor_];

  *(inited + 240) = v193;
  v194 = [*(v70 + v188) bottomAnchor];
  v195 = [v70 bottomAnchor];

  v196 = [v194 constraintEqualToAnchor_];
  *(inited + 248) = v196;
  v197 = [*(v70 + v188) trailingAnchor];
  v198 = [*(v191 + v70) trailingAnchor];
  v199 = [v197 &selRef:v198 setDownloadLimits:? + 5];

  *(inited + 256) = v199;
  *(inited + 264) = sub_2196E440C(v70);
  *(inited + 272) = sub_2196E4538(v70);
  v200 = [*(v70 + v236) trailingAnchor];
  v201 = [v70 layoutMarginsGuide];

  v202 = [v201 trailingAnchor];
  v203 = [v200 &selRef:v202 setDownloadLimits:? + 5];

  *(inited + 280) = v203;
  *(inited + 288) = sub_2196E4654(v70);
  v204 = v226;
  v205 = [*(v70 + v226) leadingAnchor];
  v206 = [v70 layoutMarginsGuide];

  v207 = [v206 leadingAnchor];
  v208 = [v205 &selRef:v207 setDownloadLimits:? + 5];

  *(inited + 296) = v208;
  v209 = [*(v70 + v204) trailingAnchor];
  v210 = [v70 layoutMarginsGuide];

  v211 = [v210 trailingAnchor];
  v212 = [v209 &selRef:v211 setDownloadLimits:? + 5];

  *(inited + 304) = v212;
  v213 = v228;
  v214 = [*(v70 + v228) heightAnchor];
  if (sub_219BED0C4())
  {
    v215 = 48.0;
  }

  else
  {
    v215 = 42.0;
  }

  v216 = objc_opt_self();
  v217 = [v214 constraintEqualToConstant_];

  *(inited + 312) = v217;
  v218 = [*(v70 + v227) heightAnchor];
  v219 = [*(v70 + v213) heightAnchor];
  v220 = [v218 &selRef:v219 setDownloadLimits:? + 5];

  *(inited + 320) = v220;
  sub_2191F0600(inited);
  sub_2186C6148(0, &qword_280E8E320);
  v221 = sub_219BF5904();

  [v216 activateConstraints_];

  [v70 setAccessibilityViewIsModal_];
  return v70;
}

uint64_t sub_2196E3798(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  sub_218725F94();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C24300;
  v4 = v1;
  v5 = [v4 leadingAnchor];
  v6 = [a1 layoutMarginsGuide];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v3 + 32) = v8;
  v9 = [v4 topAnchor];
  v10 = [a1 layoutMarginsGuide];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v3 + 40) = v12;
  v13 = [v4 widthAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v3 + 48) = v14;
  v15 = [v4 heightAnchor];
  v16 = [v4 widthAnchor];

  v17 = [v15 constraintEqualToAnchor_];
  *(v3 + 56) = v17;

  return v3;
}

uint64_t sub_2196E39B4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView];
  sub_218725F94();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C189E0;
  if (v2)
  {
    v4 = *&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel];
    v5 = v2;
    v6 = [v4 topAnchor];
    v7 = v5;
    v8 = [v7 topAnchor];
    v9 = [v6 constraintEqualToAnchor_];

    *(v3 + 32) = v9;
    v10 = [v4 leadingAnchor];
    v11 = [v7 trailingAnchor];

    v12 = [v10 constraintEqualToAnchor:v11 constant:12.0];
    *(v3 + 40) = v12;
    v13 = [v4 trailingAnchor];
    v14 = [a1 layoutMarginsGuide];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintEqualToAnchor_];
    *(v3 + 48) = v16;
  }

  else
  {
    v17 = *&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel];
    v18 = [v17 topAnchor];
    v19 = [a1 layoutMarginsGuide];
    v20 = [v19 topAnchor];

    v21 = [v18 constraintEqualToAnchor:v20 constant:15.0];
    *(v3 + 32) = v21;
    v22 = [v17 leadingAnchor];
    v23 = [a1 layoutMarginsGuide];
    v24 = [v23 leadingAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    *(v3 + 40) = v25;
    v26 = [v17 trailingAnchor];
    v27 = [a1 layoutMarginsGuide];
    v28 = [v27 trailingAnchor];

    v29 = [v26 constraintEqualToAnchor_];
    *(v3 + 48) = v29;
  }

  return v3;
}

uint64_t sub_2196E3D28(char *a1, void *a2, void *a3, double a4)
{
  v4 = *&a1[*a2];
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_218725F94();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C24300;
  v9 = v4;
  v10 = [v9 topAnchor];
  v11 = [*&a1[*a3] bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:a4];

  *(v8 + 32) = v12;
  v13 = [v9 leadingAnchor];
  v14 = [a1 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [v9 trailingAnchor];
  v18 = [a1 layoutMarginsGuide];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [v9 heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v8 + 56) = v22;
  return v8;
}

uint64_t sub_2196E3F54(char *a1)
{
  v2 = sub_219BED0C4();
  sub_218725F94();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C24300;
  v4 = *&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonStack];
  v5 = [v4 topAnchor];
  if (v2)
  {
    v6 = [*&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel] bottomAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:15.5];

    *(v3 + 32) = v7;
    v8 = [v4 leadingAnchor];
    v9 = [a1 layoutMarginsGuide];
    v10 = [v9 leadingAnchor];

    v11 = [v8 constraintEqualToAnchor_];
    *(v3 + 40) = v11;
    v12 = [v4 trailingAnchor];
    v13 = [a1 layoutMarginsGuide];
    v14 = [v13 trailingAnchor];

    v15 = [v12 constraintEqualToAnchor_];
    *(v3 + 48) = v15;
    v4 = *&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer];
  }

  else
  {
    v16 = [*&a1[OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer] bottomAnchor];
    v17 = [v5 constraintEqualToAnchor:v16 constant:12.0];

    *(v3 + 32) = v17;
    v18 = [v4 leadingAnchor];
    v19 = [a1 layoutMarginsGuide];
    v20 = [v19 leadingAnchor];

    v21 = [v18 constraintEqualToAnchor_];
    *(v3 + 40) = v21;
    v22 = [v4 trailingAnchor];
    v23 = [a1 layoutMarginsGuide];
    v24 = [v23 trailingAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    *(v3 + 48) = v25;
  }

  v26 = [v4 bottomAnchor];
  v27 = [a1 layoutMarginsGuide];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v3 + 56) = v29;
  return v3;
}

id sub_2196E42E8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView);
    v3 = v1;
    v4 = [v2 bottomAnchor];
    v5 = [v3 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor_];
  }

  else
  {
    v4 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView) topAnchor];
    v5 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headlineLabel) bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:4.0];
  }

  return v6;
}

id sub_2196E440C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptSeparator);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel);
    v3 = v1;
    v4 = [v2 firstBaselineAnchor];
    v5 = [v3 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:28.0];
  }

  else
  {
    v4 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel) topAnchor];
    v5 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonStack) bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:10.0];
  }

  return v6;
}

id sub_2196E4538(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_thumbnailImageView);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel);
    v3 = v1;
    v4 = [v2 leadingAnchor];
    v5 = [v3 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];
  }

  else
  {
    v4 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel) leadingAnchor];
    v5 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel) leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];
  }

  return v6;
}

id sub_2196E4654(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionSeparator);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer);
    v3 = v1;
    v4 = [v2 topAnchor];
    v5 = [v3 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor_];
  }

  else
  {
    v4 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer) topAnchor];
    v5 = [*(a1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel) bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:5.0];
  }

  return v6;
}

id sub_2196E4958(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v8 setAxis_];
  [v8 setAlignment_];
  if (sub_219BED0C4())
  {
    [v8 setSpacing_];
  }

  v9 = [objc_opt_self() configurationWithPointSize_];
  v10 = sub_219BF53D4();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    v12 = [objc_opt_self() secondaryLabelColor];
    v13 = [v11 imageWithTintColor:v12 renderingMode:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v16];
  [v14 setContentMode_];
  if ((sub_219BED0C4() & 1) == 0)
  {
    v17 = objc_opt_self();
    sub_218725F94();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C146A0;
    v19 = [v14 widthAnchor];
    v20 = [v19 constraintEqualToConstant_];

    *(v18 + 32) = v20;
    sub_2186C6148(0, &qword_280E8E320);
    v21 = sub_219BF5904();

    [v17 activateConstraints_];
  }

  [v8 addArrangedSubview_];
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v22 setAttributedText_];
  [v22 setAccessibilityAttributedLabel_];
  [v8 addArrangedSubview_];

  return v8;
}

uint64_t sub_2196E4C80()
{
  v1 = v0;
  v39[1] = swift_getObjectType();
  sub_2196E517C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherNameLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:1 forAxis:v7];
  *(v1 + v5) = v6;
  v8 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageViewContainer;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_publisherLogoImageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v10 setAccessibilityIgnoresInvertColors_];
  LODWORD(v11) = 1148846080;
  [v10 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v10 setContentHuggingPriority:1 forAxis:v12];
  [v10 setContentMode_];

  *(v1 + v9) = v10;
  v13 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headlineLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setNumberOfLines_];
  LODWORD(v15) = 1132068864;
  [v14 setContentHuggingPriority:1 forAxis:v15];
  *(v1 + v13) = v14;
  v16 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_headphoneIconView;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v17 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_progressView;
  *(v1 + v17) = [objc_allocWithZone(sub_219BE5E54()) initWithFrame_];
  v18 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_remainingTimeLabel;
  *(v1 + v18) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_timeLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  LODWORD(v21) = 1148846080;
  [v20 setContentHuggingPriority:1 forAxis:v21];
  LODWORD(v22) = 1132068864;
  [v20 setContentHuggingPriority:0 forAxis:v22];
  *(v1 + v19) = v20;
  v23 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_excerptLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setNumberOfLines_];
  *(v1 + v23) = v24;
  v25 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_playPauseButton;
  v26 = objc_opt_self();
  *(v1 + v25) = [v26 buttonWithType_];
  v27 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_readButton;
  *(v1 + v27) = [v26 buttonWithType_];
  v28 = [v26 buttonWithType_];
  if (sub_219BED0C4())
  {
    sub_219BF6EA4();
    v29 = sub_219BF6ED4();
    (*(*(v29 - 8) + 56))(v4, 0, 1, v29);
    sub_219BF6EE4();
  }

  *(v1 + OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_closeButton) = v28;
  v30 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_attributionContainer;
  *(v1 + v30) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v31 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_buttonStack;
  v32 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v32 setAxis_];
  [v32 setSpacing_];
  [v32 setDistribution_];
  *(v1 + v31) = v32;
  v33 = OBJC_IVAR____TtC7NewsUI221AudioTrackDetailsView_durationStack;
  v34 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v34 setAxis_];
  [v34 setAlignment_];
  [v34 setSpacing_];
  *(v1 + v33) = v34;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_219BF7314();
  v35 = sub_219BF7C74();
  v37 = v36;

  v40 = v35;
  v41 = v37;
  MEMORY[0x21CECC330](46, 0xE100000000000000);
  MEMORY[0x21CECC330](0x646F632874696E69, 0xEC000000293A7265);
  MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219D2FB00);
  result = sub_219BF7514();
  __break(1u);
  return result;
}

void sub_2196E517C()
{
  if (!qword_280E8D9C0)
  {
    sub_219BF6ED4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D9C0);
    }
  }
}

uint64_t SiriSuggestionStatusProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_2196E52D0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_21870F700(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_2186D1230(*(a1 + 56) + 32 * v4, &v37), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v35;
    v6 = v36;
    if (!*(a1 + 16))
    {
      goto LABEL_19;
    }
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v7 = sub_219BDB5E4();
    v6 = v10;

    if (!*(a1 + 16))
    {
      goto LABEL_19;
    }
  }

  v11 = sub_21870F700(0x7370756F7267, 0xE600000000000000);
  if (v12)
  {
    sub_2186D1230(*(a1 + 56) + 32 * v11, &v37);
    sub_2196E5C54();
    if (swift_dynamicCast())
    {

      v13 = 0;
      v14 = *(v35 + 16);
      v15 = MEMORY[0x277D84F90];
LABEL_10:
      v16 = v13;
      while (1)
      {
        if (v14 == v16)
        {

          *a2 = v7;
          a2[1] = v6;
          a2[2] = v15;
          return;
        }

        if (v16 >= *(v35 + 16))
        {
          break;
        }

        v13 = v16 + 1;

        sub_218A18E78(v17, &v37);
        v18 = v38;
        v16 = v13;
        if (v38)
        {
          v33 = v40;
          v34 = v39;
          v31 = v37;
          v32 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_2191F7698(0, *(v15 + 2) + 1, 1, v15);
          }

          v20 = *(v15 + 2);
          v19 = *(v15 + 3);
          if (v20 >= v19 >> 1)
          {
            v15 = sub_2191F7698((v19 > 1), v20 + 1, 1, v15);
          }

          *(v15 + 2) = v20 + 1;
          v21 = &v15[56 * v20];
          *(v21 + 4) = v31;
          *(v21 + 5) = v18;
          *(v21 + 3) = v34;
          *(v21 + 4) = v33;
          *(v21 + 10) = v32;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

LABEL_19:
  if (qword_280EE5F80 != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = sub_219BE5434();
  __swift_project_value_buffer(v22, qword_280F625E0);

  v23 = sub_219BE5414();
  v24 = sub_219BF61F4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136315138;
    v27 = sub_219BF5224();
    v29 = v28;

    v30 = sub_2186D1058(v27, v29, &v37);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_2186C1000, v23, v24, "Failed parsing PuzzleSettingsConfiguration. Missing groups entry: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CECF960](v26, -1, -1);
    MEMORY[0x21CECF960](v25, -1, -1);
  }

  else
  {
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_2196E56E8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PuzzleSetting();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PuzzleSettingsItem();
  v39 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(a1 + 48);
  v37 = *(v40 + 16);
  if (v37)
  {
    v11 = 0;
    v12 = *(result + 28);
    v35 = v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v36 = v12;
    v34 = a2;
    while (v11 < *(v40 + 16))
    {
      sub_2196E5B2C(v35 + *(v39 + 72) * v11, v10, type metadata accessor for PuzzleSettingsItem);
      v14 = *v10;
      v13 = v10[1];
      v15 = v10;
      v16 = v10 + v36;
      v17 = v6;
      sub_2196E5B2C(v16, v6, type metadata accessor for PuzzleSetting);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *a2;
      v19 = v41;
      *a2 = 0x8000000000000000;
      v21 = sub_21870F700(v14, v13);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_17;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2194927BC();
        }
      }

      else
      {
        sub_2194818AC(v24, isUniquelyReferenced_nonNull_native);
        v26 = sub_21870F700(v14, v13);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_19;
        }

        v21 = v26;
      }

      v6 = v17;
      v28 = v41;
      v10 = v15;
      if (v25)
      {
        sub_2196E5BF0(v6, v41[7] + *(v38 + 72) * v21);
      }

      else
      {
        v41[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v28[6] + 16 * v21);
        *v29 = v14;
        v29[1] = v13;
        sub_21911A720(v6, v28[7] + *(v38 + 72) * v21);
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_18;
        }

        v28[2] = v32;
      }

      ++v11;
      sub_2196E5B94(v15);
      a2 = v34;
      *v34 = v28;

      if (v37 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_219BF79A4();
    __break(1u);
  }

  return result;
}

__n128 sub_2196E5A28(__int128 *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v19 = a1[2];
  v20 = *(a1 + 6);
  sub_218A18138(a3, a4, a5, v15);
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2191F7698(0, *(v7 + 2) + 1, 1, v7);
    *a2 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2191F7698((v9 > 1), v10 + 1, 1, v7);
    *a2 = v7;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[56 * v10];
  result = v15[0];
  v13 = v15[1];
  v14 = v15[2];
  *(v11 + 10) = v16;
  *(v11 + 3) = v13;
  *(v11 + 4) = v14;
  *(v11 + 2) = result;
  return result;
}

uint64_t sub_2196E5B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196E5B94(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleSettingsItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2196E5BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleSetting();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2196E5C54()
{
  if (!qword_27CC0C7A0)
  {
    sub_218A19674();
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C7A0);
    }
  }
}

uint64_t sub_2196E5CAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_280E8D8A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 8);

      v4(v5, &off_282A82840, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2196E5DD8()
{
  v0 = CACurrentMediaTime();
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v1 = sub_219BE5314();
  MEMORY[0x28223BE20](v1);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v0;
  v3 = sub_219BE2E54();
  v4 = sub_219BE2FD4();

  return v4;
}

uint64_t sub_2196E5FD8(uint64_t a1, uint64_t a2)
{
  v4 = CACurrentMediaTime();
  v5 = qword_280E8D8A0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  sub_219BF6214();
  sub_219BE5314();

  type metadata accessor for AudioPlaylistFeedServiceConfig();

  sub_219BE31D4();

  sub_2196E75D8();
  sub_219BE2F84();

  v7 = swift_allocObject();
  v7[2] = v4;
  *(v7 + 3) = a1;
  *(v7 + 4) = a2;
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v4;
  v8 = sub_219BE2E54();
  v9 = sub_219BE2FD4();

  return v9;
}

uint64_t sub_2196E6244()
{
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();

  sub_21870F2E8(0, &qword_27CC1E2A0);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_2196E6390()
{
  v0 = sub_219BDBD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v4 = sub_219BDBD44();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v9[0] = v4;
  v9[1] = v6;
  v7 = sub_219BED564();

  return v7;
}

uint64_t sub_2196E649C(uint64_t a1, uint64_t a2)
{
  sub_2196E76B4();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(a2 + 40);
  type metadata accessor for AudioPlaylistFeedServiceConfig();
  sub_2187079F0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);

  sub_219BF0F44();
  sub_21872F750();
  sub_2187079F0(&qword_27CC1E2D0, sub_21872F750);
  v8 = sub_219BEDF24();
  (*(v5 + 8))(v7, v4);

  return v8;
}

uint64_t sub_2196E6640()
{
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();

  sub_21870F2E8(0, &qword_27CC1E2B8);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_2196E6790()
{
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 96) = MEMORY[0x277D837D0];
  *(v0 + 104) = sub_2186FC3BC();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2196E68E8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 72), *(a1 + 96));
  sub_2186C66AC();
  v2 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE3204();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2195C53F0;
  *(v3 + 24) = v1;

  v4 = sub_219BE2E54();
  sub_2196E7410(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  v5 = sub_219BE2F64();

  return v5;
}

uint64_t sub_2196E6A54(uint64_t *a1, char *a2)
{
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshResult();
  MEMORY[0x28223BE20](refreshed);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314();

  v12 = *a2;
  v11 = *(a2 + 1);
  v13 = *(type metadata accessor for AudioPlaylistFeedRefreshRequest() + 20);
  v14 = *(refreshed + 20);
  v15 = sub_219BF0BD4();
  (*(*(v15 - 8) + 16))(&v6[v14], &a2[v13], v15);
  *v6 = v12;
  *(v6 + 1) = v11;
  *&v6[*(refreshed + 24)] = v7;
  sub_2196E7410(0, &qword_27CC1E2D8, type metadata accessor for AudioPlaylistFeedRefreshResult, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_2196E6C70(void *a1, uint64_t a2)
{
  v41 = a2;
  v43 = a1;
  sub_21883F194();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2196E7410(0, &unk_280EDC8D0, sub_218D58B4C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2196E7410(0, &qword_280EDCA40, sub_218D58C8C, v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_2196E7410(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v6);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for AudioFeedTrack(0);
  v39 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  v21 = (&v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for AudioState(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2;
  v40 = *(v2 + 48);

  sub_219BE20E4();

  sub_218736590(&v25[*(v23 + 32)], v21, type metadata accessor for AudioState.UpNextTrackData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218C162E4(v21, v18);
      sub_2196E7410(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_219C09BA0;
      sub_218C162E4(v18, v28 + v27);
      sub_2196E7474(v25, type metadata accessor for AudioState);
    }

    else
    {
      sub_2196E7474(v25, type metadata accessor for AudioState);
      v28 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_2196E7474(v25, type metadata accessor for AudioState);
    v28 = *v21;
  }

  v29 = v43;
  sub_2196E7248(v41, v28, v15);

  sub_219BE20E4();
  sub_218D5862C(v9);
  sub_2196E7474(v5, sub_21883F194);
  sub_218D58B4C();
  v31 = v30;
  if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
  {
    sub_2196E74D4(v9, &unk_280EDC8D0, sub_218D58B4C);
    sub_218D58C8C();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
  }

  else
  {
    v33 = *&v9[*(v31 + 48)];
    sub_218D58C8C();
    v35 = v34;
    v36 = *(v34 + 48);
    sub_218C162E4(v9, v12);
    *&v12[v36] = v33;
    (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
  }

  sub_2197D6114(v29, v15, v12);
  sub_2196E74D4(v12, &qword_280EDCA40, sub_218D58C8C);
  return sub_2196E74D4(v15, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
}

uint64_t sub_2196E7248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 - 1;
  if (a1 >= 1)
  {
    v6 = *(a2 + 16);
    if (v6 > a1)
    {
LABEL_5:
      v7 = type metadata accessor for AudioFeedTrack(0);
      v14 = *(v7 - 8);
      sub_218736590(a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v4, a3, type metadata accessor for AudioFeedTrack);
      v8 = *(v14 + 56);
      v9 = a3;
      v10 = 0;
      v11 = v7;
      goto LABEL_7;
    }

    if (v6)
    {
      v4 = v6 - 1;
      goto LABEL_5;
    }
  }

  v12 = type metadata accessor for AudioFeedTrack(0);
  v8 = *(*(v12 - 8) + 56);
  v11 = v12;
  v9 = a3;
  v10 = 1;
LABEL_7:

  return v8(v9, v10, 1, v11);
}

uint64_t sub_2196E7384()
{
  sub_218774F78(v0 + 16);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_2196E7410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2196E7474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2196E74D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2196E7410(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2196E75D8()
{
  if (!qword_27CC1E2A8)
  {
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_2187079F0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    v0 = sub_219BEF3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E2A8);
    }
  }
}

void sub_2196E76B4()
{
  if (!qword_27CC1E2C0)
  {
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_2187079F0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    v0 = sub_219BF0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E2C0);
    }
  }
}

uint64_t sub_2196E7748(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_21870B65C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_219BF7174();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_21870B65C((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v13 + 1;
    v14 = v25 + 16 * v13;
    *(v14 + 32) = 0xD000000000000013;
    *(v14 + 40) = 0x8000000219CD6BF0;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_2187BC250(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_2187BC250(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2196E7980(uint64_t a1)
{
  v3 = sub_2196E7AA8();
  v4 = sub_2196E7F64(a1);
  v5 = sub_2196E85C8(a1);
  v6 = sub_2196E8994(a1);
  v7 = sub_2196E8CF8(a1);
  v8 = sub_2196E8EE8(a1);
  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedLocationSharingStatus);
  v10 = *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_locationSharingStatus);
  v11 = v9 != 5 && v9 == v10;
  v12 = !v11;
  if (!v11)
  {
    *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedLocationSharingStatus) = v10;
  }

  result = sub_2196E9454();
  if (((v12 | (((v3 | v4 | v5 | v6 | v7 | v8) & 0x100) >> 8)) & 1) == 0 && (result & 0x100) == 0)
  {
    sub_218C10298();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2196E7AA8()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v33 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218C82694();
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186DCF58();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v36 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v31[-v14];
  v34 = *(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userInfo);
  v16 = [v34 userStartDate];
  if (v16)
  {
    v17 = v16;
    sub_219BDBCA4();

    v18 = *(v2 + 56);
    v19 = v15;
    v20 = 0;
  }

  else
  {
    v18 = *(v2 + 56);
    v19 = v15;
    v20 = 1;
  }

  v35 = v18;
  v18(v19, v20, 1, v1);
  v21 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_firstAppLaunchDate;
  swift_beginAccess();
  v22 = *(v5 + 48);
  sub_219236804(v15, v7, sub_2186DCF58);
  sub_219236804(v0 + v21, &v7[v22], sub_2186DCF58);
  v23 = *(v2 + 48);
  if (v23(v7, 1, v1) == 1)
  {
    sub_2192368D0(v15, sub_2186DCF58);
    if (v23(&v7[v22], 1, v1) == 1)
    {
      sub_2192368D0(v7, sub_2186DCF58);
      return 1;
    }

    goto LABEL_9;
  }

  sub_219236804(v7, v13, sub_2186DCF58);
  if (v23(&v7[v22], 1, v1) == 1)
  {
    sub_2192368D0(v15, sub_2186DCF58);
    (*(v2 + 8))(v13, v1);
LABEL_9:
    sub_2192368D0(v7, sub_218C82694);
    goto LABEL_10;
  }

  v29 = v33;
  (*(v2 + 32))(v33, &v7[v22], v1);
  sub_2196EAB94();
  v32 = sub_219BF53A4();
  v30 = *(v2 + 8);
  v30(v29, v1);
  sub_2192368D0(v15, sub_2186DCF58);
  v30(v13, v1);
  sub_2192368D0(v7, sub_2186DCF58);
  if (v32)
  {
    return 1;
  }

LABEL_10:
  v25 = [v34 userStartDate];
  if (v25)
  {
    v26 = v36;
    v27 = v25;
    sub_219BDBCA4();

    v28 = 0;
  }

  else
  {
    v28 = 1;
    v26 = v36;
  }

  v35(v26, v28, 1, v1);
  swift_beginAccess();
  sub_218B9E4D4(v26, v0 + v21);
  swift_endAccess();
  return 257;
}

uint64_t sub_2196E7F64(uint64_t a1)
{
  v58 = a1;
  v1 = sub_219BE0154();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE0BA4();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v9 = sub_219BE05A4();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0DF4();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE0DE4();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDFC94();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219236804(v58, v23, type metadata accessor for EngagementEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = v47;
    v38 = v48;
    (*(v47 + 32))(v11, v23, v48);
    sub_219BE0584();
    v30 = v57;
    v40 = *(v57 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_newsletterSubscription);
    v41 = sub_219BE0B94();
    (*(v55 + 8))(v8, v56);
    (*(v39 + 8))(v11, v38);
    if ((v40 & 0xFE) == 2)
    {
      v36 = v40;
    }

    else
    {
      v36 = 2;
    }

    v37 = (v41 & 1) == 0;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = v52;
    v31 = v53;
    v33 = v54;
    (*(v53 + 32))(v52, v23, v54);
    sub_219BE0134();
    v30 = v57;
    v34 = *(v57 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_newsletterSubscription);
    v35 = sub_219BE0B94();
    (*(v55 + 8))(v6, v56);
    (*(v31 + 8))(v32, v33);
    if ((v34 & 0xFE) == 2)
    {
      v36 = v34;
    }

    else
    {
      v36 = 2;
    }

    v37 = (v35 & 1) == 0;
LABEL_14:
    if (v37)
    {
      v29 = 1;
    }

    else
    {
      v29 = v36;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_2192368D0(v23, type metadata accessor for EngagementEvent);
    v43 = 0;
    v42 = 0;
    return v42 | v43;
  }

  (*(v18 + 32))(v20, v23, v17);
  sub_219BDFC74();
  v25 = v49;
  sub_219BE0DC4();
  (*(v46 + 8))(v16, v14);
  (*(v18 + 8))(v20, v17);
  v27 = v50;
  v26 = v51;
  v28 = (*(v50 + 88))(v25, v51);
  if (v28 == *MEMORY[0x277D2ED20])
  {
    v29 = 0;
    v30 = v57;
  }

  else
  {
    v30 = v57;
    if (v28 == *MEMORY[0x277D2ED18])
    {
      v29 = 1;
    }

    else if (v28 == *MEMORY[0x277D2ED10])
    {
      v29 = 2;
    }

    else if (v28 == *MEMORY[0x277D2ED08])
    {
      v29 = 3;
    }

    else
    {
      (*(v27 + 8))(v25, v26);
      v29 = 0;
    }
  }

LABEL_17:
  if (v29 == *(v30 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_newsletterSubscription))
  {
    v42 = 0;
  }

  else
  {
    *(v30 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_newsletterSubscription) = v29;
    v42 = 256;
  }

  v43 = 1;
  return v42 | v43;
}

uint64_t sub_2196E85C8(uint64_t a1)
{
  v2 = sub_219BE0154();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE0BA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE05A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x277D84FA0];
  sub_219236804(a1, v15, type metadata accessor for EngagementEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v19 = v30;
    v18 = v31;
    (*(v30 + 32))(v4, v15, v31);
    sub_219BE0134();
    v20 = sub_219BE0B84();
    (*(v6 + 8))(v8, v5);
    if (v20)
    {
      sub_21949951C();
    }

    (*(v19 + 8))(v4, v18);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_2192368D0(v15, type metadata accessor for EngagementEvent);
      v27 = 0;
      v26 = 0;
      return v26 | v27;
    }

    (*(v10 + 32))(v12, v15, v9);
    sub_219BE0584();
    v17 = sub_219BE0B84();
    (*(v6 + 8))(v8, v5);
    if (v17)
    {
      sub_21949951C();
    }

    (*(v10 + 8))(v12, v9);
  }

  v21 = v32;
  v22 = v33;
  v23 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationCategoriesAllowlist;
  swift_beginAccess();
  v24 = *(v21 + v23);

  v25 = sub_21947BE18(v22, v24);

  if (v25)
  {

    v26 = 0;
  }

  else
  {
    *(v21 + v23) = v22;

    v26 = 256;
  }

  v27 = 1;
  return v26 | v27;
}

char *sub_2196E8994(uint64_t a1)
{
  v3 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_configurationManager) possiblyUnfetchedAppConfiguration];
  if ([v6 respondsToSelector_])
  {
    v7 = [v6 smarterMessagingConfig];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
  }

  sub_219236804(a1, v5, type metadata accessor for EngagementEvent);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {

    sub_2192368D0(v5, type metadata accessor for EngagementEvent);
    goto LABEL_22;
  }

  sub_2192368D0(v5, type metadata accessor for EngagementEvent);
  if (!v7)
  {
LABEL_22:
    v22 = 0;
    v23 = 0;
    return (v23 | v22);
  }

  v8 = [v7 segmentSetIdsAllowlist];
  if (!v8)
  {
LABEL_21:

    goto LABEL_22;
  }

  v9 = v8;
  sub_21870AD58();
  v10 = sub_219BF5924();

  v11 = sub_2196EA684(v1);
  if (!v11)
  {

    goto LABEL_21;
  }

  v12 = v11;
  v31 = v1;
  if (!(v10 >> 62))
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_25:

    v16 = MEMORY[0x277D84F90];
LABEL_26:
    v24 = v31;
    v25 = sub_218C3DB14(v16);

    v26 = sub_219209074(v25, v12);

    v27 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userSegmentsSetIDs;
    v28 = sub_21947BF48(*(v24 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userSegmentsSetIDs), v26);

    if (v28)
    {

      v23 = 0;
    }

    else
    {
      *(v24 + v27) = v26;

      v23 = 256;
    }

    v22 = 1;
    return (v23 | v22);
  }

  v13 = sub_219BF7214();
  if (!v13)
  {
    goto LABEL_25;
  }

LABEL_10:
  v30 = v12;
  v32 = MEMORY[0x277D84F90];
  result = sub_218C350A0(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v32;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x21CECE0F0](v15, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 integerValue];

      v32 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_218C350A0((v20 > 1), v21 + 1, 1);
        v16 = v32;
      }

      ++v15;
      *(v16 + 16) = v21 + 1;
      *(v16 + 8 * v21 + 32) = v19;
    }

    while (v13 != v15);

    v12 = v30;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_2196E8CF8(uint64_t a1)
{
  v3 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219236804(a1, v5, type metadata accessor for EngagementEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2192368D0(v5, type metadata accessor for EngagementEvent);
    v8 = *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedSettings);
    if (v8)
    {
      v10 = *(v8 + OBJC_IVAR___TSNotificationSettings_authorizationStatus);
      if (*(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_authorizationStatus) == v10)
      {
        v9 = 0;
      }

      else
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_authorizationStatus) = v10;
        v9 = 256;
      }

      LODWORD(v8) = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for NotificationSettings();
      sub_219BE3204();
      v7 = sub_219BE2E54();
      sub_219BE2F94();
    }

    sub_2192368D0(v5, type metadata accessor for EngagementEvent);
    LODWORD(v8) = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_2196E8EE8(uint64_t a1)
{
  v3 = sub_219BDBD34();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C82694();
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  sub_219236804(a1, v11, type metadata accessor for EngagementEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userInfo);
    v23 = sub_219BF2FA4();
    v24 = v23 == 1;
    if (!v23)
    {
      v24 = 2;
    }

    v46 = v24;
    v25 = [v22 sportsOnboardingCompletedDate];
    if (v25)
    {
      v26 = v25;
      sub_219BDBCA4();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v31 = v47;
    (*(v47 + 56))(v18, v27, 1, v3);
    sub_218A5DD60(v18, v20);
    sub_2192368D0(v11, type metadata accessor for EngagementEvent);
    v32 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingStatus;
    v33 = &off_280EE1000;
    v34 = v46;
    if (v46 != *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingStatus))
    {
      goto LABEL_16;
    }

    v44 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingStatus;
    v35 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingCompletedDate;
    swift_beginAccess();
    v36 = *(v6 + 48);
    sub_219236804(v20, v8, sub_2186DCF58);
    sub_219236804(v1 + v35, &v8[v36], sub_2186DCF58);
    v37 = *(v31 + 48);
    if (v37(v8, 1, v3) == 1)
    {
      if (v37(&v8[v36], 1, v3) == 1)
      {
        sub_2192368D0(v8, sub_2186DCF58);
LABEL_19:
        v28 = sub_2186DCF58;
        v29 = v20;
        goto LABEL_7;
      }
    }

    else
    {
      sub_219236804(v8, v15, sub_2186DCF58);
      if (v37(&v8[v36], 1, v3) != 1)
      {
        v40 = v47;
        v41 = v45;
        (*(v47 + 32))(v45, &v8[v36], v3);
        sub_2196EAB94();
        v42 = sub_219BF53A4();
        v43 = *(v40 + 8);
        v43(v41, v3);
        v43(v15, v3);
        sub_2192368D0(v8, sub_2186DCF58);
        v34 = v46;
        v32 = v44;
        v33 = &off_280EE1000;
        if (v42)
        {
          goto LABEL_19;
        }

LABEL_16:
        *(v1 + v32) = v34;
        v38 = v33[99];
        swift_beginAccess();
        sub_21923686C(v20, v38 + v1);
        swift_endAccess();
        sub_2192368D0(v20, sub_2186DCF58);
        v30 = 256;
        return v30 | (EnumCaseMultiPayload == 1);
      }

      (*(v47 + 8))(v15, v3);
    }

    sub_2192368D0(v8, sub_218C82694);
    v34 = v46;
    v32 = v44;
    v33 = &off_280EE1000;
    goto LABEL_16;
  }

  v28 = type metadata accessor for EngagementEvent;
  v29 = v11;
LABEL_7:
  sub_2192368D0(v29, v28);
  v30 = 0;
  return v30 | (EnumCaseMultiPayload == 1);
}

uint64_t sub_2196E9454()
{
  v1 = v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_recipeImportVersion;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_recipeImportVersion);
  v3 = *(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_recipeImportVersion + 8);
  v4 = *(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userInfo);
  v5 = [v4 importSavedToRecipeVersion];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 integerValue];

    if (v2 == v7)
    {
      v8 = v3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_6;
    }

    return 1;
  }

  if (v3)
  {
    return 1;
  }

LABEL_6:
  v9 = [v4 importSavedToRecipeVersion];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0;
  }

  *v1 = v11;
  *(v1 + 8) = v10 == 0;
  return 257;
}

uint64_t sub_2196E9544()
{
  v1 = v0;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE5294();
  if (*(v5 + 16))
  {
    v6 = sub_21870F700(0xD00000000000001BLL, 0x8000000219D30030);
    if (v7)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v6, v45);
      if (swift_dynamicCast())
      {
        sub_219BDBC74();
        v8 = sub_219BDBD34();
        (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
        v9 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_firstAppLaunchDate;
        swift_beginAccess();
        sub_218B9E4D4(v4, v1 + v9);
        swift_endAccess();
      }
    }
  }

  if (*(v5 + 16))
  {
    v10 = sub_21870F700(0xD00000000000001CLL, 0x8000000219D2FFA0);
    if (v11)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v10, v45);
      if ((swift_dynamicCast() & 1) != 0 && v46 <= 3)
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_newsletterSubscription) = v46;
      }
    }
  }

  if (!*(v5 + 16))
  {
    goto LABEL_22;
  }

  v12 = sub_21870F700(0xD00000000000001FLL, 0x8000000219D2FE50);
  if ((v13 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_2186D1230(*(v5 + 56) + 32 * v12, v45);
  sub_2186D0DDC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

  v42 = v5;
  v43 = v4;
  v15 = v46;
  v16 = *(v46 + 16);
  if (!v16)
  {
LABEL_21:

    v5 = v42;
    v4 = v43;
LABEL_22:
    if (*(v5 + 16))
    {
      v24 = sub_21870F700(0xD000000000000012, 0x8000000219D2FFC0);
      if (v25)
      {
        sub_2186D1230(*(v5 + 56) + 32 * v24, v45);
        sub_2186D0DDC(0, &unk_280E8ED80, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
        if (swift_dynamicCast())
        {
          v26 = sub_218C3DB14(v46);

          *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userSegmentsSetIDs) = v26;
        }
      }
    }

    if (*(v5 + 16))
    {
      v27 = sub_21870F700(0xD00000000000001FLL, 0x8000000219D2FFE0);
      if (v28)
      {
        sub_2186D1230(*(v5 + 56) + 32 * v27, v45);
        if ((swift_dynamicCast() & 1) != 0 && v46 <= 2)
        {
          *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_authorizationStatus) = v46;
        }
      }
    }

    if (*(v5 + 16))
    {
      v29 = sub_21870F700(0xD000000000000026, 0x8000000219D30000);
      if (v30)
      {
        sub_2186D1230(*(v5 + 56) + 32 * v29, v45);
        if (swift_dynamicCast())
        {
          sub_219BDBC74();
          v31 = sub_219BDBD34();
          (*(*(v31 - 8) + 56))(v4, 0, 1, v31);
          v32 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingCompletedDate;
          swift_beginAccess();
          sub_218B9E4D4(v4, v1 + v32);
          swift_endAccess();
        }
      }
    }

    if (*(v5 + 16))
    {
      v33 = sub_21870F700(0xD000000000000015, 0x8000000219CD6E30);
      if (v34)
      {
        sub_2186D1230(*(v5 + 56) + 32 * v33, v45);
        if ((swift_dynamicCast() & 1) != 0 && v46 <= 2)
        {
          *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingStatus) = v46;
        }
      }
    }

    if (*(v5 + 16))
    {
      v35 = sub_21870F700(0xD000000000000015, 0x8000000219D2FF40);
      if (v36)
      {
        sub_2186D1230(*(v5 + 56) + 32 * v35, v45);
        if (swift_dynamicCast())
        {
          v37 = v46;
          if (v46 <= 4)
          {
            *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_locationSharingStatus) = v46;
            *(v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedLocationSharingStatus) = v37;
          }
        }
      }
    }

    if (!*(v5 + 16))
    {
    }

    v38 = sub_21870F700(0xD000000000000013, 0x8000000219D2FF60);
    if ((v39 & 1) == 0)
    {
    }

    sub_2186D1230(*(v5 + 56) + 32 * v38, v45);

    result = swift_dynamicCast();
    if (result)
    {
      v40 = v1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_recipeImportVersion;
      *v40 = v46;
      *(v40 + 8) = 0;
    }

    return result;
  }

  v17 = 0;
  v18 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationCategoriesAllowlist;
  v44 = "open-notification-settings";
  v19 = v46 + 40;
  while (v17 < *(v15 + 16))
  {

    if (!sub_219BF7614())
    {
      v20 = v15;
      swift_beginAccess();
      v21 = *(v1 + v18);
      sub_219BF7AA4();
      sub_219BF5524();
      v22 = sub_219BF7AE4() & ~(-1 << *(v21 + 32));
      if (((*(v21 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[0] = *(v1 + v18);
        sub_2194A300C(v22, isUniquelyReferenced_nonNull_native);
        *(v1 + v18) = v45[0];
      }

      swift_endAccess();
      v15 = v20;
    }

    ++v17;

    v19 += 16;
    if (v16 == v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2196E9C94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2186DCF58();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v71 = MEMORY[0x277D84F98];
  v15 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_firstAppLaunchDate;
  swift_beginAccess();
  sub_219236804(v2 + v15, v8, sub_2186DCF58);
  v16 = *(v10 + 48);
  v63 = v10 + 48;
  v62 = v16;
  if (v16(v8, 1, v9) == 1)
  {
    sub_2192368D0(v8, sub_2186DCF58);
    v17 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    sub_219BDBC84();
    v68 = MEMORY[0x277D839F8];
    *&v67 = v18 * 1000.0;
    sub_218751558(&v67, v70);
    v19 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v19;
    sub_21948CB08(v70, 0xD00000000000001BLL, 0x8000000219D30030, isUniquelyReferenced_nonNull_native);
    (*(v10 + 8))(v14, v9);
    v17 = v69;
  }

  v21 = *(v2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_newsletterSubscription);
  v68 = MEMORY[0x277D83B88];
  *&v67 = v21;
  sub_218751558(&v67, v70);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v17;
  sub_21948CB08(v70, 0xD00000000000001CLL, 0x8000000219D2FFA0, v22);
  v23 = v69;
  v71 = v69;
  swift_beginAccess();

  v25 = sub_2196E7748(v24);

  sub_2186D0DDC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v68 = v26;
  *&v67 = v25;
  sub_218751558(&v67, v70);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v23;
  sub_21948CB08(v70, 0xD00000000000001FLL, 0x8000000219D2FE50, v27);
  v28 = v66;
  v29 = *(v2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userSegmentsSetIDs);
  v30 = *(v29 + 16);
  if (v30)
  {
    v57 = v10;
    v58 = v9;
    v59 = v2;
    v60 = a1;
    v31 = sub_21947D47C(v30, 0);
    v32 = sub_2194AC028(&v67, v31 + 4, v30, v29);

    result = sub_218E5B79C();
    if (v32 != v30)
    {
      __break(1u);
      return result;
    }

    a1 = v60;
    v2 = v59;
    v9 = v58;
    v10 = v57;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v34 = MEMORY[0x277D83B88];
  sub_2186D0DDC(0, &unk_280E8ED80, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  v68 = v35;
  *&v67 = v31;
  sub_218751558(&v67, v70);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v28;
  sub_21948CB08(v70, 0xD000000000000012, 0x8000000219D2FFC0, v36);
  v37 = v66;
  v38 = *(v2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_authorizationStatus);
  v68 = v34;
  *&v67 = v38;
  sub_218751558(&v67, v70);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v37;
  sub_21948CB08(v70, 0xD00000000000001FLL, 0x8000000219D2FFE0, v39);
  v40 = v66;
  v71 = v66;
  v41 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingCompletedDate;
  swift_beginAccess();
  v42 = v2 + v41;
  v43 = v64;
  sub_219236804(v42, v64, sub_2186DCF58);
  if (v62(v43, 1, v9) == 1)
  {
    sub_2192368D0(v43, sub_2186DCF58);
  }

  else
  {
    v44 = v61;
    (*(v10 + 32))(v61, v43, v9);
    sub_219BDBC84();
    v68 = MEMORY[0x277D839F8];
    *&v67 = v45 * 1000.0;
    sub_218751558(&v67, v70);
    v46 = v71;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v46;
    sub_21948CB08(v70, 0xD000000000000026, 0x8000000219D30000, v47);
    (*(v10 + 8))(v44, v9);
    v40 = v65;
  }

  v48 = *(v2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingStatus);
  v68 = v34;
  *&v67 = v48;
  sub_218751558(&v67, v70);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v40;
  sub_21948CB08(v70, 0xD000000000000015, 0x8000000219CD6E30, v49);
  v50 = v65;
  v51 = *(v2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_locationSharingStatus);
  v68 = v34;
  *&v67 = v51;
  sub_218751558(&v67, v70);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v50;
  sub_21948CB08(v70, 0xD000000000000015, 0x8000000219D2FF40, v52);
  v53 = v65;
  v71 = v65;
  if (*(v2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_recipeImportVersion + 8))
  {
    sub_2195EA4A0(0xD000000000000013, 0x8000000219D2FF60, &v67);
    sub_218806FD0(&v67);
  }

  else
  {
    v54 = *(v2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_recipeImportVersion);
    v68 = v34;
    *&v67 = v54;
    sub_218751558(&v67, v70);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v53;
    sub_21948CB08(v70, 0xD000000000000013, 0x8000000219D2FF60, v55);
    v71 = v65;
  }

  sub_219BE52B4();
  v56 = sub_219BE52A4();
  return (*(*(v56 - 8) + 56))(a1, 0, 1, v56);
}

uint64_t sub_2196EA4B0()
{

  v1 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_configuration;
  v2 = sub_219BE5244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_bundleSubscriptionStatus;
  v4 = sub_219BE0B14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_2192368D0(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_firstAppLaunchDate, sub_2186DCF58);

  sub_2192368D0(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingCompletedDate, sub_2186DCF58);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationService);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2196EA604()
{
  sub_2196EA4B0();

  return swift_deallocClassInstance();
}

char *sub_2196EA684(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_configurationManager);
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  result = [v1 segmentSetIDs];
  if (result)
  {
    v3 = result;
    sub_21870AD58();
    v4 = sub_219BF5924();

    if (v4 >> 62)
    {
      v5 = sub_219BF7214();
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_5:
        v14 = MEMORY[0x277D84F90];
        result = sub_218C350A0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
          return result;
        }

        v6 = 0;
        v7 = v14;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x21CECE0F0](v6, v4);
          }

          else
          {
            v8 = *(v4 + 8 * v6 + 32);
          }

          v9 = v8;
          v10 = [v8 integerValue];

          v12 = *(v14 + 16);
          v11 = *(v14 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_218C350A0((v11 > 1), v12 + 1, 1);
          }

          ++v6;
          *(v14 + 16) = v12 + 1;
          *(v14 + 8 * v12 + 32) = v10;
        }

        while (v5 != v6);

        goto LABEL_17;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_17:
    v13 = sub_218C3DB14(v7);

    return v13;
  }

  return result;
}

void sub_2196EA84C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedSettings);
  *(a2 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedSettings) = *a1;
  v4 = v2;
}

unint64_t sub_2196EA8CC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2196EAC50(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2196EA8FC()
{
  result = qword_27CC1E2E0;
  if (!qword_27CC1E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E2E0);
  }

  return result;
}

uint64_t sub_2196EA950()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2196EA9C4()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2196EAA18@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_2196EAA90()
{
  result = qword_280EA2D28;
  if (!qword_280EA2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2D28);
  }

  return result;
}

unint64_t sub_2196EAAE8()
{
  result = qword_27CC1E2F0;
  if (!qword_27CC1E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E2F0);
  }

  return result;
}

unint64_t sub_2196EAB40()
{
  result = qword_27CC1E2F8;
  if (!qword_27CC1E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E2F8);
  }

  return result;
}

unint64_t sub_2196EAB94()
{
  result = qword_280EE9C80;
  if (!qword_280EE9C80)
  {
    sub_219BDBD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9C80);
  }

  return result;
}

uint64_t sub_2196EABEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationService + 24);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationService), v1);
  return (*(v2 + 24))(v1, v2);
}

unint64_t sub_2196EAC50(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t type metadata accessor for SportsNavigationTagFeedGroupKnobs()
{
  result = qword_280EA1AF8;
  if (!qword_280EA1AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2196EACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189ADEC8(v6);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2196EAF18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196EB374(0, &qword_27CC1E300, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196EB320();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8();
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8);
    sub_219BF7674();
    sub_2196EACD4(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2196EB108(uint64_t a1)
{
  v2 = sub_2196EB320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196EB144(uint64_t a1)
{
  v2 = sub_2196EB320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2196EB198(void *a1)
{
  sub_2196EB374(0, &qword_27CC1E310, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196EB320();
  sub_219BF7B44();
  sub_2189AD5C8();
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2196EB320()
{
  result = qword_27CC1E308;
  if (!qword_27CC1E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E308);
  }

  return result;
}

void sub_2196EB374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196EB320();
    v7 = a3(a1, &type metadata for SportsNavigationTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2196EB3EC()
{
  result = qword_27CC1E318;
  if (!qword_27CC1E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E318);
  }

  return result;
}

unint64_t sub_2196EB444()
{
  result = qword_27CC1E320;
  if (!qword_27CC1E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E320);
  }

  return result;
}

unint64_t sub_2196EB49C()
{
  result = qword_27CC1E328;
  if (!qword_27CC1E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E328);
  }

  return result;
}

uint64_t sub_2196EB4F0(uint64_t a1)
{
  v27 = a1;
  sub_2196EC520(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v28 = v1;
  v2 = *(v1 - 8);
  v33 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v27 - v3;
  v4 = sub_219BE22F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDB954();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  sub_219BE2594();
  v13 = v12;
  sub_219BE22A4();
  (*(v5 + 8))(v7, v4);
  v14 = objc_allocWithZone(MEMORY[0x277D547A0]);
  v30 = v12;
  v15 = sub_219BDB854();
  v31 = [v14 initWithURL_];

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v29;
  (*(v8 + 16))(v17, v13, v29);
  v19 = v32;
  v20 = v28;
  (*(v2 + 16))(v32, v27, v28);
  v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v22 = (v9 + *(v2 + 80) + v21) & ~*(v2 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  (*(v8 + 32))(v23 + v21, v17, v18);
  (*(v2 + 32))(v23 + v22, v19, v20);
  aBlock[4] = sub_2196EC584;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21923D780;
  aBlock[3] = &block_descriptor_157;
  v24 = _Block_copy(aBlock);

  v25 = v31;
  [v31 resolveWithCompletionHandler_];

  _Block_release(v24);
  (*(v8 + 8))(v30, v18);
  return 1;
}

void sub_2196EB90C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v58 = a5;
  v60 = a4;
  sub_2196EC520(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v57 = v7;
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  sub_2196EC520(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_219BDB954();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v21 = swift_weakLoadStrong();
  if (!v21)
  {
    goto LABEL_21;
  }

  v56 = v21;
  sub_2188383F8(a1, v12);
  v22 = v61;
  if ((*(v61 + 48))(v12, 1, v13) == 1)
  {
    sub_2187BC880(v12, &unk_280EE9D00, MEMORY[0x277CC9260]);
    if (a2)
    {
      v23 = a2;
      if (qword_27CC08628 != -1)
      {
        swift_once();
      }

      v24 = sub_219BE5434();
      __swift_project_value_buffer(v24, qword_27CCD8BA0);
      v25 = a2;
      v26 = sub_219BE5414();
      v27 = sub_219BF61F4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = a2;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_2186C1000, v26, v27, "failed to resolve chatterbox URL with error: %@", v28, 0xCu);
        sub_218962D30(v29);
        MEMORY[0x21CECF960](v29, -1, -1);
        MEMORY[0x21CECF960](v28, -1, -1);
      }

      else
      {
      }

      return;
    }

    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v51 = sub_219BE5434();
    __swift_project_value_buffer(v51, qword_27CCD8BA0);
    v52 = sub_219BE5414();
    v53 = sub_219BF61F4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2186C1000, v52, v53, "got no URL, no error in resolving chatterbox URL", v54, 2u);
      MEMORY[0x21CECF960](v54, -1, -1);
    }

LABEL_21:

    return;
  }

  v55 = *(v22 + 32);
  v55(v18, v12, v13);
  sub_2196EC69C(&qword_280EE9D20, 255, MEMORY[0x277CC9260]);
  if (sub_219BF53A4())
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v32 = sub_219BE5434();
    __swift_project_value_buffer(v32, qword_27CCD8BA0);
    v33 = sub_219BE5414();
    v34 = sub_219BF61F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2186C1000, v33, v34, "chatterbox URL resolved to itself", v35, 2u);
      MEMORY[0x21CECF960](v35, -1, -1);
    }

    else
    {
    }

    (*(v61 + 8))(v18, v13);
  }

  else
  {
    sub_2196EC520(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_219C09BA0;
    sub_2196EC69C(&qword_27CC15940, 255, MEMORY[0x277CC9260]);
    v37 = sub_219BF7894();
    v60 = v20;
    v39 = v38;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_2186FC3BC();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    sub_2186C6148(0, &qword_280E8D790);
    v40 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    v41 = v61;
    (*(v61 + 16))(v16, v18, v13);
    v42 = v58;
    v43 = v59;
    v44 = *(v59 + 16);
    v58 = v18;
    v45 = v57;
    v44(v9, v42, v57);
    v46 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v47 = (v14 + *(v43 + 80) + v46) & ~*(v43 + 80);
    v48 = swift_allocObject();
    v49 = v55;
    *(v48 + 16) = v56;
    v49(v48 + v46, v16, v13);
    (*(v43 + 32))(v48 + v47, v9, v45);
    aBlock[4] = sub_2196EC864;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_10_4;
    v50 = _Block_copy(aBlock);

    FCPerformBlockOnMainThread();
    _Block_release(v50);

    (*(v61 + 8))(v58, v13);
  }
}

uint64_t sub_2196EC1C4()
{
  v0 = MEMORY[0x277D6D700];
  sub_2196EC520(0, &qword_280EE59D8, MEMORY[0x277D6D700], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - v2;
  sub_219BE2554();
  sub_219BE2544();
  sub_219BE25C4();

  return sub_2187BC880(v3, &qword_280EE59D8, v0);
}

uint64_t sub_2196EC2BC()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_2196EC390()
{
  sub_2196EC520(0, &qword_280E8C098, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_219BE26D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09EC0;
  sub_219BE2664();
  sub_219BE2664();
  *(v0 + 16) = v1;
  swift_weakInit();
  swift_weakAssign();
  return v0;
}

void sub_2196EC520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2196EC584(uint64_t a1, void *a2)
{
  v5 = *(sub_219BDB954() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_2196EC520(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v9 = *(v2 + 16);
  v10 = (v2 + ((v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80)));

  sub_2196EB90C(a1, a2, v9, v2 + v6, v10);
}

uint64_t sub_2196EC69C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t objectdestroy_3Tm_14()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_2196EC520(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_2196EC864()
{
  sub_219BDB954();
  sub_2196EC520(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);

  return sub_2196EC1C4();
}

uint64_t sub_2196EC994(void *a1)
{
  sub_2196ED3D8(0, &qword_27CC1E348, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196ED2C4();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2186E60B0();
  sub_2196ED43C(&qword_27CC1E350, sub_2186E60B0);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for TopicMagazineFeedGroup();
    v9[14] = 1;
    sub_219BED8D4();
    sub_2196ED43C(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196ECBA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_219BED8D4();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196ED3D8(0, &qword_27CC1E330, MEMORY[0x277D844C8]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196ED2C4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v32 = 0;
  sub_2196ED43C(&qword_27CC1E340, sub_2186E60B0);
  v17 = v27;
  sub_219BF7734();
  v18 = *(v16 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_2196ED43C(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v15);
  sub_2196ED318(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2196ED37C(v19);
}

uint64_t sub_2196ECFD4(uint64_t a1)
{
  v2 = sub_2196ED2C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196ED010(uint64_t a1)
{
  v2 = sub_2196ED2C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2196ED07C(uint64_t a1)
{
  v2 = sub_2196ED43C(&qword_280EC6340, type metadata accessor for TopicMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2196ED0E8(void *a1)
{
  a1[1] = sub_2196ED43C(&qword_280EC6340, type metadata accessor for TopicMagazineFeedGroup);
  a1[2] = sub_2196ED43C(&qword_27CC10E90, type metadata accessor for TopicMagazineFeedGroup);
  result = sub_2196ED43C(&qword_27CC10EA8, type metadata accessor for TopicMagazineFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_2196ED26C(uint64_t a1)
{
  result = sub_2196ED43C(&qword_27CC10E78, type metadata accessor for TopicMagazineFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2196ED2C4()
{
  result = qword_27CC1E338;
  if (!qword_27CC1E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E338);
  }

  return result;
}

uint64_t sub_2196ED318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2196ED37C(uint64_t a1)
{
  v2 = type metadata accessor for TopicMagazineFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2196ED3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196ED2C4();
    v7 = a3(a1, &type metadata for TopicMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2196ED43C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2196ED498()
{
  result = qword_27CC1E358;
  if (!qword_27CC1E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E358);
  }

  return result;
}

unint64_t sub_2196ED4F0()
{
  result = qword_27CC1E360;
  if (!qword_27CC1E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E360);
  }

  return result;
}

unint64_t sub_2196ED548()
{
  result = qword_27CC1E368;
  if (!qword_27CC1E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E368);
  }

  return result;
}

uint64_t sub_2196ED5B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_218C34270(0, v1, 0);
    v2 = v28;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v4 + 3);
      v25 = *(v4 + 1);
      v26 = v9;
      v27 = v4[5];
      if (v4[6])
      {
        v23 = &type metadata for MyMagazinesSectionHeaderSeparatorViewLayoutAttributes;
        v10 = sub_2196ED878();
        v24 = v10;
        v11 = swift_allocObject();
        *(v11 + 16) = v6;
        *(v11 + 24) = v5;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        v12 = &type metadata for MyMagazinesSectionHeaderSeparatorViewLayoutAttributes;
      }

      else
      {
        v23 = &type metadata for MyMagazinesSectionHeaderViewLayoutAttributes;
        v10 = sub_2196ED8CC();
        v24 = v10;
        v11 = swift_allocObject();
        *(v11 + 16) = v6;
        *(v11 + 24) = v5;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        v13 = v26;
        *(v11 + 48) = v25;
        *(v11 + 64) = v13;
        *(v11 + 80) = v27;
        v12 = &type metadata for MyMagazinesSectionHeaderViewLayoutAttributes;
      }

      v22[0] = v11;
      v28 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_218C34270((v14 > 1), v15 + 1, 1);
        v12 = v23;
        v10 = v24;
      }

      v4 += 10;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v12);
      MEMORY[0x28223BE20](v16);
      v18 = &v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      sub_218DD76AC(v15, v18, &v28, v12, v10);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v2 = v28;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2196ED7FC(uint64_t a1)
{
  v2 = sub_2196ED920();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2196ED838(uint64_t a1)
{
  v2 = sub_219626F78();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2196ED878()
{
  result = qword_27CC1E370;
  if (!qword_27CC1E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E370);
  }

  return result;
}

unint64_t sub_2196ED8CC()
{
  result = qword_27CC1E378;
  if (!qword_27CC1E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E378);
  }

  return result;
}

unint64_t sub_2196ED920()
{
  result = qword_27CC1E380;
  if (!qword_27CC1E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MyMagazinesLayoutSectionDescriptor.Supplement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MyMagazinesLayoutSectionDescriptor.Supplement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

void sub_2196EDA38(void *a1, uint64_t a2, char *a3)
{
  v4 = a3;
  v7 = *&a3[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel];
  [v7 setFrame_];
  v8 = *&v4[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel];
  [v8 setFrame_];
  v9 = [v8 accessibilityTraits];
  v10 = v9;
  v11 = *MEMORY[0x277D76558];
  if (!v9)
  {
    if (!v11)
    {
      v10 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v10 = v11 | v9;
    goto LABEL_7;
  }

  if ((v11 & ~v9) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  [v8 setAccessibilityTraits_];
  v45 = v3;
  v12 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v13 = a1[5];
  type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  if (v13)
  {
    v44 = v4;
    v14 = *v12;
    sub_21899E550();
    v43 = v7;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    v16 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    sub_219BF0CD4();
    v42 = a1;
    v17 = sub_2186C6148(0, &qword_280E8DB00);
    v18 = v16;
    v19 = sub_219BF6BD4();
    v20 = sub_219BF6BE4();

    v21 = sub_219BF0CB4();
    *(inited + 40) = v21;
    v22 = *MEMORY[0x277D740C0];
    *(inited + 64) = v17;
    *(inited + 72) = v22;
    v23 = *(v14 + 40);
    v24 = (v14 + 16);
    v4 = v44;
    v25 = *(*__swift_project_boxed_opaque_existential_1(v24, v23) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 56);
    *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
    *(inited + 80) = v25;
    v26 = v22;
    v27 = v25;
    sub_2188195F4(inited);
    v7 = v43;
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v29 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_21899E604();
    v30 = sub_219BF5204();

    v31 = [v28 initWithString:v29 attributes:v30];

    a1 = v42;
  }

  else
  {
    v31 = 0;
  }

  [v7 setAttributedText_];

  [v8 setAttributedText_];
  if (a1[6] && (*(a2 + 160) & 1) == 0)
  {
    v33 = a1[7];
    v32 = a1[8];
    v34 = *(a2 + 152);
    v35 = *(a2 + 136);
    v47[0] = *(a2 + 120);
    v47[1] = v35;
    v48 = v34;
    v36 = *&v4[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_moreActionsButton];
    swift_unknownObjectRetain();
    v37 = v33;

    [v36 setHidden_];
    __swift_project_boxed_opaque_existential_1((v45 + 56), *(v45 + 80));
    sub_218D7AA84(v32, v47, v36);
    sub_2192F7B28(v36);

    swift_unknownObjectRelease();
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_moreActionsButton] setHidden_];
  }

  v46 = MEMORY[0x277D84F90];
  v38 = v8;
  MEMORY[0x21CECC690]();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v39 = v46;
  if (v13 && sub_219BF5554() >= 1)
  {
    v40 = v7;
    MEMORY[0x21CECC690]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v39 = v46;
  }

  sub_218ACE3AC(v39);

  v41 = sub_219BF5904();

  [v4 setAccessibilityElements_];
}

uint64_t sub_2196EDF8C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2196EE08C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v9 = [v5 bundleForClass_];
    a1 = sub_219BDB5E4();
    v8 = v10;
  }

  *(v7 + 32) = a1;
  *(v7 + 40) = v8;

  v11 = sub_219BF5454();

  return v11;
}

id sub_2196EE258()
{
  v1 = OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectAllBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectAllBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectAllBarButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v19[3] = ObjectType;
    v19[0] = v0;
    v7 = v0;
    v8 = sub_219BF53D4();

    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v19, ObjectType);
      v10 = *(ObjectType - 8);
      MEMORY[0x28223BE20](v9);
      v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = sub_219BF78D4();
      (*(v10 + 8))(v12, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v15 = [v14 initWithTitle:v8 style:0 target:v13 action:{sel_doSelectAllAction, v19[0]}];

    swift_unknownObjectRelease();
    v16 = *&v0[v1];
    *&v0[v1] = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

id sub_2196EE4AC()
{
  v1 = OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___doneBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___doneBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___doneBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_doDoneAction];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2196EE534()
{
  v1 = OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___downloadBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___downloadBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___downloadBarButtonItem);
  }

  else
  {
    v4 = sub_219BF53D4();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v5 style:0 target:v0 action:sel_doDownloadAction];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2196EE614(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_219BF53D4();
    v8 = [objc_opt_self() systemImageNamed_];

    v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v8 style:0 target:v2 action:*a2];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_2196EE6F0()
{
  v1 = OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem);
  }

  else
  {
    v4 = sub_2196EE780();
    v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2196EE780()
{
  v1 = OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountLabel;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v5 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x277D743F8]];
    [v4 setFont_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2196EEA10()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController];
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  v4 = [v3 collectionViewLayout];

  [v4 setTs:1 sortItemsLogicallyForAccessibility:?];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  [v6 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v8 setFrame_];
    sub_219BE86B4();
    sub_2196F3EC0(&qword_27CC1E410, v18, type metadata accessor for MagazineGridViewController);
    sub_219BE8CA4();
    swift_allocObject();
    v19 = v1;
    sub_219BE8C94();
    sub_219BE70B4();

    sub_219BE8664();
    v20 = sub_219BE7BC4();

    sub_218807578();
    sub_2196F3EC0(&qword_280E90610, 255, sub_218807578);
    sub_219BF6C74();

    v21 = [v19 traitCollection];
    sub_2196F4468();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2196F3EC0(&qword_27CC1E418, v22, type metadata accessor for MagazineGridViewController);
    sub_2196F3EC0(&qword_27CC1E420, v23, type metadata accessor for MagazineGridViewController);

    sub_219BEEA54();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2196EEDF0()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2196F3EC0(&qword_280E92580, 255, MEMORY[0x277D31D00]);
  return sub_219BF1C54();
}

void sub_2196EEF30()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_viewWillLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = [v0 tabBarController];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  if ([v0 isEditing])
  {
    v15 = [v0 view];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 traitCollection];

      v18 = [v17 horizontalSizeClass];
      v19 = v18 == 1;
      if (v19 == [v14 isTabBarHidden])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if ([v14 isTabBarHidden])
  {
    v19 = 0;
LABEL_10:
    [v14 setTabBarHidden:v19 animated:0];
  }

LABEL_11:
}

void sub_2196EF140(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillAppear_, a1 & 1);
  if (v2[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig] == 1)
  {
    v9 = *&v2[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_toolbarManager + 8];
    swift_getObjectType();
    sub_219BE7544();
    v10 = sub_219BF65B4();
    v11 = [v10 title];

    if (v11)
    {
      v12 = sub_219BF5414();
      v15[0] = v9;
      v14 = v13;

      sub_219BE5CC4();
      v15[1] = sub_219BE5CA4();
      *v8 = v12;
      v8[1] = v14;
      (*(v6 + 104))(v8, *MEMORY[0x277D6DCB0], v5);
      sub_219BE7C24();
      sub_2196F3EC0(&qword_280EE4E50, 255, MEMORY[0x277D6DCC8]);
      sub_219BE7514();
      (*(v6 + 8))(v8, v5);
    }
  }
}

void sub_2196EF3D0(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  if ((sub_219BF6564() & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig + 8];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 window];

        if (v7)
        {
          v8 = [v7 windowScene];

          if (v8)
          {
            sub_219BF63C4();
            v9 = sub_219BF53D4();

            [v8 setTitle_];
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_2196EF774(char a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v74 = [v7 collectionViewLayout];

  sub_2196F41E8();
  if (swift_dynamicCastClass())
  {
    sub_219BEA214();
    swift_dynamicCast();
    v8 = v75;
    sub_219BEA1F4();

    if ((a1 & 1) == 0)
    {
      v16 = sub_2196F3EC0(&qword_27CC1E408, v9, type metadata accessor for MagazineGridViewController);
      v17 = MEMORY[0x21CEBCBD0](ObjectType, v16);
      if (v17)
      {
        v73 = a3;
        v18 = a2;
        v19 = v17;
        v20 = sub_219BF65B4();
        v21 = sub_2196EE258();
        v22 = v19;
        v23 = sub_219BF65B4();

        v24 = [v23 leftBarButtonItems];
        if (v24)
        {
          sub_219399E20();
          v25 = sub_219BF5924();
        }

        else
        {
          v25 = 0;
        }

        sub_2196F0340(v21, v25);

        sub_219399E20();
        v31 = sub_219BF5904();

        [v20 setLeftBarButtonItems_];

        v32 = v22;
        v33 = sub_219BF65B4();

        v34 = sub_2196EE4AC();
        v35 = v32;
        v36 = sub_219BF65B4();

        v37 = [v36 rightBarButtonItems];
        if (v37)
        {
          v38 = sub_219BF5924();
        }

        else
        {
          v38 = 0;
        }

        sub_2196F0340(v34, v38);
        goto LABEL_32;
      }

      v26 = sub_219BF65B4();
      v27 = sub_2196EE258();
      v28 = sub_219BF65B4();
      v29 = [v28 leftBarButtonItems];

      if (v29)
      {
        sub_219399E20();
        v30 = sub_219BF5924();
      }

      else
      {
        v30 = 0;
      }

      sub_2196F0340(v27, v30);

      sub_219399E20();
      v59 = sub_219BF5904();

      [v26 setLeftBarButtonItems_];

      v33 = sub_219BF65B4();
      v60 = sub_2196EE4AC();
      v61 = sub_219BF65B4();
      v62 = [v61 rightBarButtonItems];

      if (v62)
      {
        v63 = sub_219BF5924();
      }

      else
      {
        v63 = 0;
      }

      sub_2196F0340(v60, v63);
LABEL_43:

      v58 = sub_219BF5904();

      [v33 setRightBarButtonItems_];
      goto LABEL_44;
    }

    if ((a3 & 1) == 0)
    {
LABEL_22:
      v39 = sub_2196F3EC0(&qword_27CC1E408, v9, type metadata accessor for MagazineGridViewController);
      v40 = MEMORY[0x21CEBCBD0](ObjectType, v39);
      if (v40)
      {
        v73 = a3;
        v18 = a2;
        v41 = v40;
        v42 = sub_219BF65B4();
        v43 = sub_2196EE258();
        v44 = v41;
        v45 = sub_219BF65B4();

        v46 = [v45 leftBarButtonItems];
        if (v46)
        {
          sub_219399E20();
          v47 = sub_219BF5924();
        }

        else
        {
          v47 = 0;
        }

        sub_2196F0150(v43, v47);

        sub_219399E20();
        v53 = sub_219BF5904();

        [v42 setLeftBarButtonItems_];

        v54 = v44;
        v33 = sub_219BF65B4();

        v34 = sub_2196EE4AC();
        v35 = v54;
        v55 = sub_219BF65B4();

        v56 = [v55 rightBarButtonItems];
        if (v56)
        {
          v57 = sub_219BF5924();
        }

        else
        {
          v57 = 0;
        }

        sub_2196F0150(v34, v57);
LABEL_32:

        v58 = sub_219BF5904();

        [v33 setRightBarButtonItems_];

        a2 = v18;
        a3 = v73;
LABEL_44:

        sub_2196F0470((a1 & 1) == 0, a2 & 1);
        v69 = sub_2196F3EC0(&qword_27CC1E408, v68, type metadata accessor for MagazineGridViewController);
        v70 = MEMORY[0x21CEBCBD0](ObjectType, v69);
        if (v70)
        {
          v71 = v70;
          swift_getObjectType();
          sub_219BE90C4();
        }

        sub_219BE2114();
        v72 = v75;
        sub_2196F05A0(v72, a3 & 1);

        return;
      }

      v48 = sub_219BF65B4();
      v49 = sub_2196EE258();
      v50 = sub_219BF65B4();
      v51 = [v50 leftBarButtonItems];

      if (v51)
      {
        sub_219399E20();
        v52 = sub_219BF5924();
      }

      else
      {
        v52 = 0;
      }

      sub_2196F0150(v49, v52);

      sub_219399E20();
      v64 = sub_219BF5904();

      [v48 setLeftBarButtonItems_];

      v33 = sub_219BF65B4();
      v60 = sub_2196EE4AC();
      v65 = sub_219BF65B4();
      v66 = [v65 rightBarButtonItems];

      if (v66)
      {
        v67 = sub_219BF5924();
      }

      else
      {
        v67 = 0;
      }

      sub_2196F0150(v60, v67);
      goto LABEL_43;
    }

    sub_219BE8664();
    v10 = sub_219BE7BC4();

    [v10 selectItemAtIndexPath:0 animated:a2 & 1 scrollPosition:0];

    sub_219BE8664();
    v11 = sub_219BE7BC4();

    v12 = [v11 indexPathsForSelectedItems];

    if (v12)
    {
      sub_219BDC104();
      v13 = sub_219BF5924();

      if (*(v13 + 16))
      {
LABEL_6:
        v14 = [objc_allocWithZone(MEMORY[0x277D75310]) init];
        sub_219BDC104();
        v15 = sub_219BF5904();

        [v14 invalidateItemsAtIndexPaths_];

        [v75 invalidateLayoutWithContext_];
        goto LABEL_22;
      }
    }

    else if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }
}