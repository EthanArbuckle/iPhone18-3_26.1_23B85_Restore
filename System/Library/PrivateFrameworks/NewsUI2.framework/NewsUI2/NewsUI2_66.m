uint64_t sub_218E23D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E23DE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186DD5C0(255, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E23E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218E23EEC()
{
  type metadata accessor for SportsScoreSortingMatchFilter(319);
  if (v0 <= 0x3F)
  {
    sub_218C42540();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_218E23F70()
{
  result = qword_280EAAFE0;
  if (!qword_280EAAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAAFE0);
  }

  return result;
}

uint64_t sub_218E23FC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E2400C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218E24074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E23F70();
    v7 = a3(a1, &type metadata for SportsScoreSortingSubsetFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E240EC()
{
  result = qword_27CC12740;
  if (!qword_27CC12740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12740);
  }

  return result;
}

unint64_t sub_218E24144()
{
  result = qword_280EAAFD0;
  if (!qword_280EAAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAAFD0);
  }

  return result;
}

unint64_t sub_218E2419C()
{
  result = qword_280EAAFD8;
  if (!qword_280EAAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAAFD8);
  }

  return result;
}

uint64_t sub_218E241F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 200))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 129);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_218E24244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 129) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_218E242C8(__int128 *a1)
{
  v1 = a1[5];
  v22 = a1[4];
  v23 = v1;
  v24 = a1[6];
  v25 = *(a1 + 112);
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v3 = a1[3];
  v20 = a1[2];
  v21 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = v18;
    v15 = v23;
    v16 = v24;
    v17 = v25;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = v22;
    if (*(&v18 + 1))
    {
      swift_getObjectType();
      v9[5] = v23;
      v9[6] = v24;
      v9[0] = v18;
      v9[1] = v19;
      v9[2] = v20;
      v10 = v25;
      v9[3] = v21;
      v9[4] = v22;
      sub_2189EB2A8(v9, v7);
      sub_219BE9B34();
      sub_219BE20E4();

      v6 = v7[0];
      v7[0] = v5;
      v7[5] = v15;
      v7[6] = v16;
      v8 = v17;
      v7[1] = v11;
      v7[2] = v12;
      v7[4] = v14;
      v7[3] = v13;
      sub_218E2444C(v6, v7);

      return sub_218E2558C(&v18, &unk_280EC8900, &type metadata for ContinueReadingContent);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218E2444C(char a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  if (v4)
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09BA0;
    v36 = 0;
    v37 = 0xE000000000000000;
    v6 = *(a2 + 80);
    v32 = *(a2 + 64);
    v33 = v6;
    v34 = *(a2 + 96);
    v7 = *(a2 + 16);
    v28 = *a2;
    v29 = v7;
    v8 = *(a2 + 48);
    v30 = *(a2 + 32);
    v31 = v8;
    v35 = v4;
    sub_219BF7484();
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_2186FC3BC();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();

    v9 = *(a2 + 80);
    v32 = *(a2 + 64);
    v33 = v9;
    v34 = *(a2 + 96);
    v10 = *(a2 + 16);
    v28 = *a2;
    v29 = v10;
    v11 = *(a2 + 48);
    v30 = *(a2 + 32);
    v31 = v11;
    v35 = v4;
    sub_218E24D7C(&v28);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      return sub_219BE5314();
    }

    else
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09BA0;
      v36 = 0;
      v37 = 0xE000000000000000;
      v20 = *(a2 + 80);
      v32 = *(a2 + 64);
      v33 = v20;
      v34 = *(a2 + 96);
      v21 = *(a2 + 16);
      v28 = *a2;
      v29 = v21;
      v22 = *(a2 + 48);
      v30 = *(a2 + 32);
      v31 = v22;
      v35 = v4;
      sub_219BF7484();
      v23 = v36;
      v24 = v37;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_2186FC3BC();
      *(v19 + 32) = v23;
      *(v19 + 40) = v24;
      sub_219BF6214();
      sub_219BE5314();

      v25 = *(a2 + 80);
      v32 = *(a2 + 64);
      v33 = v25;
      v34 = *(a2 + 96);
      v26 = *(a2 + 16);
      v28 = *a2;
      v29 = v26;
      v27 = *(a2 + 48);
      v30 = *(a2 + 32);
      v31 = v27;
      v35 = v4;
      return sub_218E24D7C(&v28);
    }
  }

  else
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v36 = 0;
    v37 = 0xE000000000000000;
    v14 = *(a2 + 80);
    v32 = *(a2 + 64);
    v33 = v14;
    v34 = *(a2 + 96);
    v15 = *(a2 + 16);
    v28 = *a2;
    v29 = v15;
    v16 = *(a2 + 48);
    v30 = *(a2 + 32);
    v31 = v16;
    v35 = v4;
    sub_219BF7484();
    v17 = v36;
    v18 = v37;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = v17;
    *(v13 + 40) = v18;
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_218E248DC(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (v1 >> 58) & 0x3C | (v1 >> 1) & 3;
    v4 = v3 > 0x3B;
    v5 = (1 << v3) & 0x800000040F0011ELL;
    if (v4 || v5 == 0)
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_219C09BA0;
      v12 = NewsActivity2.identifier.getter();
      v14 = v13;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_2186FC3BC();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      sub_219BF6214();
      sub_219BE5314();
    }

    else
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_219C09BA0;
      v8 = NewsActivity2.identifier.getter();
      v10 = v9;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_2186FC3BC();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      sub_219BF6214();
      sub_219BE5314();

      sub_218E24B58();
    }
  }

  return result;
}

uint64_t sub_218E24B58()
{

  sub_219BE20E4();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v12 = v3;
  v13 = v4;
  v16 = v7;
  v17 = v8;
  v11 = v9;
  v18 = v9;
  v14 = v5;
  v15 = v6;
  if (*(&v2 + 1))
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_219C09BA0;
    sub_219BF7484();
    *(v0 + 56) = MEMORY[0x277D837D0];
    *(v0 + 64) = sub_2186FC3BC();
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();

    sub_218E2558C(v10, &unk_280EC8900, &type metadata for ContinueReadingContent);
  }

  sub_219BE20C4();
}

uint64_t sub_218E24D7C(__int128 *a1)
{
  sub_21896FA3C();
  v40 = *(v3 - 8);
  v4 = *(v40 + 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = a1[5];
  v62 = a1[4];
  v63 = v8;
  v64 = a1[6];
  v65 = *(a1 + 112);
  v9 = a1[1];
  v58 = *a1;
  v59 = v9;
  v10 = a1[3];
  v60 = a1[2];
  v61 = v10;
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  *&v48[0] = 0;
  *(&v48[0] + 1) = 0xE000000000000000;
  v12 = a1[5];
  v54 = a1[4];
  v55 = v12;
  v56 = a1[6];
  v57 = *(a1 + 112);
  v13 = a1[1];
  v50 = *a1;
  v51 = v13;
  v14 = a1[3];
  v52 = a1[2];
  v53 = v14;
  sub_219BF7484();
  v15 = v48[0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = v15;
  sub_219BF6214();
  sub_219BE5314();

  v16 = *(v1 + 16);
  v17 = swift_allocObject();
  v18 = v63;
  *(v17 + 80) = v62;
  *(v17 + 96) = v18;
  *(v17 + 112) = v64;
  *(v17 + 128) = v65;
  v19 = v59;
  *(v17 + 16) = v58;
  *(v17 + 32) = v19;
  v20 = v61;
  v21 = v17 | 0xC000000000000006;
  *(v17 + 48) = v60;
  *(v17 + 64) = v20;
  v22 = sub_219BDFA44();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = v16;
  sub_2187B1814(v46, &v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v41 = v1;
  if (v43)
  {
    sub_21875F93C(&v42, v44);
    sub_2189EB2A8(&v58, &v50);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v24 = qword_280ED32D8;
    v23 = qword_280ED32E0;
    v25 = qword_280ED32E8;

    v39 = v23;
    sub_2188202A8(v23);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_2189EB2A8(&v58, &v50);
    sub_2187B1D30(&v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v24 = qword_280ED32D8;
    v26 = qword_280ED32E0;
    v25 = qword_280ED32E8;

    v39 = v26;
    sub_2188202A8(v26);
  }

  *&v42 = v21;
  memset(v44, 0, 32);
  v27 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189B4E2C(v7, v27);
  sub_2187B1814(v48, &v50, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v28 = (v40[80] + 24) & ~v40[80];
  v29 = (v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = v7;
  v30 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  sub_2189B4EAC(v27, v31 + v28);
  v32 = v31 + v29;
  v33 = v51;
  *v32 = v50;
  *(v32 + 16) = v33;
  *(v32 + 32) = v52;
  v34 = (v31 + v30);
  v35 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v34 = 0;
  v34[1] = 0;
  v36 = v39;
  *v35 = v24;
  v35[1] = v36;
  v35[2] = v25;

  sub_2188202A8(v36);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v36);
  sub_2187B1D30(v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1D30(v48, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218A42D80(v40);
  sub_218E2558C(v44, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;

  sub_219BE20C4();
}

uint64_t sub_218E25450()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218E25498(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 48);
  v19 = *(a1 + 64);
  v20 = v1;
  v3 = *(a1 + 80);
  v21 = *(a1 + 96);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v5;
  v6 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v6;
  v22 = *(a1 + 112);
  v12 = v19;
  v13 = v3;
  v14 = *(a1 + 96);
  v8 = v16[0];
  v9 = v4;
  v15 = *(a1 + 112);
  v10 = v17;
  v11 = v2;

  sub_2189EB2A8(v16, v23);
  sub_219BE20C4();

  v23[4] = v12;
  v23[5] = v13;
  v23[6] = v14;
  v24 = v15;
  v23[0] = v8;
  v23[1] = v9;
  v23[2] = v10;
  v23[3] = v11;
  return sub_218E2558C(v23, &unk_280EC8900, &type metadata for ContinueReadingContent);
}

uint64_t sub_218E2558C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2186F8548(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t MagazineSectionKind.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v11 = 0x79726F6765746163;
    MEMORY[0x21CECC330](v1, v2);
    return v11;
  }

  if (*(v0 + 16) == 1)
  {
    v11 = 0x3A64656546676174;
    v3 = [v1 identifier];
    v4 = sub_219BF5414();
    v6 = v5;

    MEMORY[0x21CECC330](v4, v6);

    return v11;
  }

  v8 = 0x676F6C61746163;
  if (v1 ^ 3 | v2)
  {
    v9 = 0x657061707377656ELL;
  }

  else
  {
    v9 = 0x697A6167614D796DLL;
  }

  if (v1 ^ 2 | v2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x656E697A6167616DLL;
  }

  if (v1 | v2)
  {
    v8 = 0x64616F6C6E776F64;
  }

  if (v1 <= 1)
  {
    return v8;
  }

  else
  {
    return v10;
  }
}

BOOL _s7NewsUI219MagazineSectionKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        sub_2189666A0();
        sub_218C04F4C(v6, v5, 1);
        sub_218C04F4C(v3, v2, 1);
        v8 = sub_219BF6DD4();
        sub_218A518E8(v3, v2, 1);
        sub_218A518E8(v6, v5, 1);
        return v8 & 1;
      }

      goto LABEL_6;
    }

    if (v3 <= 1)
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_218A518E8(*a1, v2, 2);
          v10 = 1;
          sub_218A518E8(1, 0, 2);
          return v10;
        }

        goto LABEL_6;
      }

      if (v7 == 2 && !(v5 | v6))
      {
        sub_218A518E8(*a1, v2, 2);
        v11 = 0;
        goto LABEL_32;
      }
    }

    else if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v7 == 2 && v6 == 4 && !v5)
        {
          sub_218A518E8(*a1, v2, 2);
          v11 = 4;
          goto LABEL_32;
        }
      }

      else if (v7 == 2 && v6 == 3 && !v5)
      {
        sub_218A518E8(*a1, v2, 2);
        v11 = 3;
LABEL_32:
        v15 = 0;
        v16 = 2;
        goto LABEL_38;
      }
    }

    else if (v7 == 2 && v6 == 2 && !v5)
    {
      sub_218A518E8(*a1, v2, 2);
      v11 = 2;
      goto LABEL_32;
    }
  }

  else if (!*(a2 + 16))
  {
    v12 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v14 = sub_219BF78F4();
      sub_218C04F4C(v6, v5, 0);
      sub_218C04F4C(v3, v2, 0);
      sub_218A518E8(v3, v2, 0);
      sub_218A518E8(v6, v5, 0);
      return (v14 & 1) != 0;
    }

    sub_218C04F4C(v12, v2, 0);
    sub_218C04F4C(v3, v2, 0);
    sub_218A518E8(v3, v2, 0);
    v11 = v3;
    v15 = v2;
    v16 = 0;
LABEL_38:
    sub_218A518E8(v11, v15, v16);
    return 1;
  }

LABEL_6:
  sub_218C04F4C(*a2, *(a2 + 8), v7);
  sub_218C04F4C(v3, v2, v4);
  sub_218A518E8(v3, v2, v4);
  sub_218A518E8(v6, v5, v7);
  return 0;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI219MagazineSectionKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_218E25AA4()
{
  v0 = sub_219BE9C04();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDF074();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1524();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v28 + 16);
  v14 = sub_219BE9924();
  v24[0] = v15;
  v24[1] = v14;
  v16 = v6;
  v17 = v25;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3E8], v16);
  sub_219BE9934();
  v18 = v26;
  v19 = (*(v17 + 88))(v2, v26);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D2D868], v27);
  }

  else
  {
    v20 = *(v3 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v5, *MEMORY[0x277D2D810], v27);
    }

    else
    {
      v20(v5, *MEMORY[0x277D2D850], v27);
      (*(v17 + 8))(v2, v18);
    }
  }

  sub_219BE1514();
  sub_218E25F54(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  sub_219BDD1F4();
  (*(v11 + 8))(v13, v10);
  return sub_219BDD134();
}

uint64_t sub_218E25E98()
{
  sub_219BE17A4();
  sub_218E25F54(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

uint64_t sub_218E25F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E25F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_219BE8004();
  v7 = v6;
  sub_219BE8014();
  sub_219BF6034();
  v9 = v7 - v8;
  sub_219BE7FF4();
  sub_219BF6034();
  v11 = v9 - v10;
  v12 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutOptions();
  v50 = v12[7];
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v14 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  sub_219BF0CD4();
  v15 = sub_2186C6148(0, &qword_280E8DB00);
  v16 = v14;
  v17 = sub_219BF6BD4();
  v18 = sub_219BF6BE4();

  v19 = sub_219BF0CB4();
  *(inited + 40) = v19;
  v20 = *MEMORY[0x277D740C0];
  *(inited + 64) = v15;
  *(inited + 72) = v20;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 blackColor];
  v24 = [v21 whiteColor];
  v25 = [v21 ts:v23 dynamicColor:v24 withDarkStyleVariant:?];

  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v25;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v28 = sub_219BF5204();

  v29 = [v26 initWithString:v27 attributes:v28];

  [v29 boundingRectWithSize:33 options:0 context:{v11, 1.79769313e308}];
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  v34 = *(a3 + v12[5]);
  v35 = CGRectGetWidth(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v36 = CGRectGetHeight(v52);
  sub_219BE8014();
  v38 = v37;
  sub_219BE7FF4();
  v40 = v38 + v39;
  v53.origin.x = 0.0;
  v53.origin.y = v34;
  v53.size.width = v35;
  v53.size.height = v36;
  MaxY = CGRectGetMaxY(v53);

  v42 = MaxY + *(a3 + v12[6]);
  v43 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
  v44 = *(v43 + 24);
  v45 = sub_219BDCAF4();
  (*(*(v45 - 8) + 16))(a4 + v44, a3 + v50, v45);
  *a4 = v40;
  *(a4 + 8) = 0;
  *(a4 + 16) = v11;
  *(a4 + 24) = v42;
  *(a4 + 32) = 0;
  *(a4 + 40) = v34;
  *(a4 + 48) = v35;
  *(a4 + 56) = v36;
  v46 = (a4 + *(v43 + 28));
  *v46 = a1;
  v46[1] = a2;
}

uint64_t sub_218E263D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v65 = sub_219BF1214();
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v62);
  v63 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E26F88();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v67 = sub_219BF1934();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E27250(0, &qword_280E8C808, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E26FE0();
  v17 = v68;
  sub_219BF7B34();
  if (v17)
  {
    v26 = a1;
  }

  else
  {
    v68 = v10;
    v18 = v14;
    v58 = v8;
    v19 = v65;
    LOBYTE(v69) = 0;
    sub_218E2735C(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    LOBYTE(v69) = 1;
    sub_218E27034();
    v20 = v16;
    sub_219BF76E4();
    v21 = v75;
    v22 = v76;
    v77 = 2;
    sub_218E27088();
    sub_219BF76E4();
    v23 = v64;
    v53 = v22;
    v56 = v21;
    v54 = v69;
    v57 = v70;
    v55 = v71;
    v52 = v72;
    v24 = v73;
    v25 = v74;
    v77 = 3;
    sub_218E2735C(&qword_280E90948, MEMORY[0x277D33218]);
    sub_219BF76E4();
    v49 = v25;
    v51 = v20;
    v28 = v63;
    (*(v23 + 16))(v63, v66, v67);
    v29 = v56;
    if (v56)
    {
      v30 = v53;
    }

    else
    {
      v29 = sub_2194AD74C(&unk_282A24130);
      swift_arrayDestroy();
      v30 = sub_2194AD74C(&unk_282A24170);
      v28 = v63;
      swift_arrayDestroy();
    }

    v31 = v62;
    v32 = &v28[*(v62 + 20)];
    *v32 = v29;
    v32[1] = v30;
    v33 = v61;
    v34 = v57;
    v50 = a1;
    if (v57)
    {
      v35 = v24;
      v36 = v52;
      v37 = v49;
      v38 = v55;
      v39 = v54;
    }

    else
    {
      v37 = 0xEA00000000006C72;
      v35 = 0x752D726564616568;
      v36 = 0xEF656C7469746275;
      v38 = 0x732D726564616568;
      v34 = 0xEC000000656C7469;
      v39 = 0x742D726564616568;
    }

    v40 = &v28[*(v31 + 24)];
    *v40 = v39;
    v40[1] = v34;
    v40[2] = v38;
    v40[3] = v36;
    v40[4] = v35;
    v40[5] = v37;
    v41 = v68;
    v42 = v58;
    sub_218E2712C(v68, v58);
    v43 = *(v33 + 48);
    if (v43(v42, 1, v19) == 1)
    {
      v44 = v60;
      sub_219BF1204();
      sub_218E27190(v41);
      (*(v64 + 8))(v66, v67);
      (*(v18 + 8))(v51, v13);
      v45 = v43(v42, 1, v65);
      v46 = v44;
      v19 = v65;
      if (v45 != 1)
      {
        sub_218E27190(v42);
      }
    }

    else
    {
      sub_218E27190(v41);
      (*(v64 + 8))(v66, v67);
      (*(v18 + 8))(v51, v13);
      v46 = v60;
      (*(v33 + 32))(v60, v42, v19);
    }

    v47 = v63;
    (*(v33 + 32))(&v63[*(v62 + 28)], v46, v19);
    sub_218E271EC(v47, v59);
    v26 = v50;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_218E26B7C(void *a1)
{
  v3 = v1;
  sub_218E27250(0, &qword_280E8C230, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E26FE0();
  sub_219BF7B44();
  LOBYTE(v17[0]) = 0;
  sub_219BF1934();
  sub_218E2735C(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
    v17[0] = *(v3 + *(v10 + 20));
    v20 = 1;
    sub_218E272B4();
    sub_219BF7834();
    v11 = (v3 + *(v10 + 24));
    v12 = *v11;
    v13 = v11[1];
    v15 = *(v11 + 4);
    v14 = *(v11 + 5);
    v17[0] = v12;
    v17[1] = v13;
    v18 = v15;
    v19 = v14;
    v20 = 2;
    sub_218E27308();
    sub_219BF7834();
    LOBYTE(v17[0]) = 3;
    sub_219BF1214();
    sub_218E2735C(&qword_280E90950, MEMORY[0x277D33218]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218E26E24()
{
  v1 = 0x746E65746E6F63;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x4372616365646973;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_218E26EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E274BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E26EE0(uint64_t a1)
{
  v2 = sub_218E26FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E26F1C(uint64_t a1)
{
  v2 = sub_218E26FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218E26F88()
{
  if (!qword_280E90940)
  {
    sub_219BF1214();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90940);
    }
  }
}

unint64_t sub_218E26FE0()
{
  result = qword_280E997D8[0];
  if (!qword_280E997D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E997D8);
  }

  return result;
}

unint64_t sub_218E27034()
{
  result = qword_280EBCDB8;
  if (!qword_280EBCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDB8);
  }

  return result;
}

unint64_t sub_218E27088()
{
  result = qword_280ECED28;
  if (!qword_280ECED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECED28);
  }

  return result;
}

uint64_t sub_218E270DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_218E2712C(uint64_t a1, uint64_t a2)
{
  sub_218E26F88();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E27190(uint64_t a1)
{
  sub_218E26F88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218E271EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E27250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E26FE0();
    v7 = a3(a1, &type metadata for IntroToSportsTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E272B4()
{
  result = qword_280EBCDC0;
  if (!qword_280EBCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDC0);
  }

  return result;
}

unint64_t sub_218E27308()
{
  result = qword_280ECED30;
  if (!qword_280ECED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECED30);
  }

  return result;
}

uint64_t sub_218E2735C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218E273B8()
{
  result = qword_27CC12748;
  if (!qword_27CC12748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12748);
  }

  return result;
}

unint64_t sub_218E27410()
{
  result = qword_280E997C8;
  if (!qword_280E997C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E997C8);
  }

  return result;
}

unint64_t sub_218E27468()
{
  result = qword_280E997D0;
  if (!qword_280E997D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E997D0);
  }

  return result;
}

uint64_t sub_218E274BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CFB120 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CFB140 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4372616365646973 && a2 == 0xED00006769666E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for TagFeedAsyncConfig()
{
  result = qword_280ED2AF8;
  if (!qword_280ED2AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E276A8()
{
  type metadata accessor for FCFeedDescriptorConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedViewContext();
    if (v1 <= 0x3F)
    {
      sub_218E27774();
      if (v2 <= 0x3F)
      {
        sub_219BE5434();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_218E27774()
{
  if (!qword_280ECD8F0)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280ECD8F0);
    }
  }
}

uint64_t sub_218E277C4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result == 0xD000000000000016 && 0x8000000219CFB1A0 == a2 || (v3 = result, (sub_219BF78F4() & 1) != 0) || v3 == 0xD000000000000010 && 0x8000000219CFB180 == a2 || (sub_219BF78F4() & 1) != 0 || v3 == 0xD00000000000001CLL && 0x8000000219CFB160 == a2 || (sub_219BF78F4() & 1) != 0)
    {

      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t type metadata accessor for SportsOnboardingTagFeedGroupKnobs()
{
  result = qword_280EA1A68;
  if (!qword_280EA1A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E27960()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_218D528A0();
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218E279FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_2189AD5C8();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v49 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = v39 - v11;
  sub_218E28500(0, &qword_280E8C970, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E28448();
  v17 = v51;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v51 = v7;
  LOBYTE(v54) = 0;
  sub_21877C8B8(&qword_280E91A88, sub_2189AD5C8);
  v19 = v50;
  v20 = v46;
  sub_219BF7674();
  sub_218D528A0();
  v22 = v21;
  LOBYTE(v53) = 1;
  sub_21877C8B8(&qword_280E914A8, sub_218D528A0);
  v39[0] = v22;
  sub_219BF7674();
  v40 = v54;
  sub_2186F9548();
  v24 = v23;
  LOBYTE(v52) = 2;
  sub_21877C8B8(&qword_280E913B8, sub_2186F9548);
  v25 = v13;
  v39[1] = v24;
  sub_219BF7674();
  v41 = v53;
  v26 = v49;
  sub_2189ADE64(v19, v49);
  v27 = v45;
  v28 = *(v45 + 48);
  if (v28(v26, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C8B8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v29 = v47;
    sub_219BEE974();
    v30 = v28(v26, 1, v20);
    v31 = v44;
    if (v30 != 1)
    {
      sub_2189ADEC8(v49);
    }
  }

  else
  {
    v29 = v47;
    (*(v27 + 32))(v47, v26, v20);
    v31 = v44;
  }

  v32 = v51;
  (*(v27 + 32))(v51, v29, v20);
  v33 = v25;
  v34 = v40;
  if (!v40)
  {
    LOBYTE(v52) = 1;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v48;
  v36 = v50;
  v37 = v43;
  *(v32 + *(v5 + 20)) = v34;
  v38 = v41;
  if (!v41)
  {
    v52 = 7;
    swift_allocObject();
    v38 = sub_219BEF534();
  }

  sub_2189ADEC8(v36);
  (*(v37 + 8))(v16, v33);
  *(v32 + *(v5 + 24)) = v38;
  sub_218E2849C(v32, v35);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_218E27FB4(void *a1)
{
  v3 = v1;
  sub_218E28500(0, &qword_27CC12750, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E28448();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2189AD5C8();
  sub_21877C8B8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
    v13 = *(v3 + *(v10 + 20));
    HIBYTE(v12) = 1;
    sub_218D528A0();
    sub_21877C8B8(&qword_280E914B0, sub_218D528A0);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_2186F9548();
    sub_21877C8B8(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E2824C()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218E282A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E2867C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E282D0(uint64_t a1)
{
  v2 = sub_218E28448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E2830C(uint64_t a1)
{
  v2 = sub_218E28448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E28378()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C8B8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_218D528A0();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  return sub_219BEF504() & 1;
}

unint64_t sub_218E28448()
{
  result = qword_280EA1A90[0];
  if (!qword_280EA1A90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1A90);
  }

  return result;
}

uint64_t sub_218E2849C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E28500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E28448();
    v7 = a3(a1, &type metadata for SportsOnboardingTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E28578()
{
  result = qword_27CC12758;
  if (!qword_27CC12758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12758);
  }

  return result;
}

unint64_t sub_218E285D0()
{
  result = qword_280EA1A80;
  if (!qword_280EA1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1A80);
  }

  return result;
}

unint64_t sub_218E28628()
{
  result = qword_280EA1A88;
  if (!qword_280EA1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1A88);
  }

  return result;
}

uint64_t sub_218E2867C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF4FA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CF9890 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_218E2879C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_219BE3DF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280EE99F8 != -1)
  {
    swift_once();
  }

  sub_218E2A178(qword_280EB0E98, v4, type metadata accessor for EmailSignupAutomaticPresentor);
  sub_219BDC7D4();
  if (v15[15] != 1)
  {
    if (qword_280E8D950 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v15[14] = 0;
    sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  swift_getObjectType();
  sub_219BE44E4();
  v7 = sub_219BE3DC4();
  v8 = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_280E8D950 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v15[13] = 0;
    sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  MEMORY[0x28223BE20](v8);
  *&v15[-16] = v1;
  sub_218E2A220(0, &qword_280EE69D0, &qword_280E8E890);
  swift_allocObject();
  v10 = sub_219BE30B4();
  MEMORY[0x28223BE20](v10);
  *&v15[-16] = v1;
  sub_218E2A220(0, &unk_280EE6970, &qword_280E8E208);
  swift_allocObject();
  v11 = sub_219BE30B4();
  MEMORY[0x28223BE20](v11);
  *&v15[-16] = v1;
  sub_2186DD624(0, &qword_280EE6980, sub_218E2A280, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  sub_219BE31B4();
  v12 = sub_219BE2E54();
  sub_219BE2F84();

  v13 = sub_219BE2E54();
  v14 = sub_219BE3054();

  return v14;
}

void sub_218E28CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *&a5[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_userInfo];
  v10 = swift_allocObject();
  v10[2] = sub_218846958;
  v10[3] = v8;
  v10[4] = a5;
  v13[4] = sub_218E2ADBC;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_218E28EBC;
  v13[3] = &block_descriptor_42_0;
  v11 = _Block_copy(v13);

  v12 = a5;

  [v9 forceSyncWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_218E28E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (qword_280E8D950 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return a3(*(a5 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_userInfo));
}

void sub_218E28EBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_218E28F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_bundleSubscriptionManager);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218C1DDD4;
  *(v10 + 24) = v8;
  v12[4] = sub_218E2ADB4;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218B66540;
  v12[3] = &block_descriptor_33_2;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_218E29054(void *a1, uint64_t (*a2)(void *))
{
  if (qword_280E8D950 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186DD624(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [a1 subscriptionState];
  v6 = MEMORY[0x277D83ED0];
  *(v4 + 56) = MEMORY[0x277D83E88];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  sub_219BE5314();

  sub_219BF6214();
  sub_219BE5314();
  return a2(a1);
}

void sub_218E291BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *&a5[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_newsletterManager];

  v12 = [v11 updateSubscription];
  v13 = swift_allocObject();
  v13[2] = sub_218846958;
  v13[3] = v10;
  v13[4] = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_218E2AD14;
  *(v14 + 24) = v13;
  v25 = sub_218E2AD20;
  v26 = v14;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_218E294D4;
  v24 = &block_descriptor_62;
  v15 = _Block_copy(&v21);

  v16 = a5;

  v17 = [v12 then_];
  _Block_release(v15);

  if (v17)
  {

    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v25 = sub_218E2AD58;
    v26 = v18;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_218E29720;
    v24 = &block_descriptor_24_3;
    v19 = _Block_copy(&v21);

    v20 = [v17 error_];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218E29428(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (qword_280E8D950 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return a2(*(a4 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_newsletterManager));
}

id sub_218E294D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_218751558(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v3(&v11, v13);

  sub_21874510C(v13, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F240);
  v4 = ObjectType;
  if (ObjectType)
  {
    v5 = __swift_project_boxed_opaque_existential_1(&v11, ObjectType);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_219BF78D4();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_218E2969C(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    sub_218E2AD60();
    v3 = swift_allocError();
    a1 = 0;
  }

  v4 = a1;
  a2(v3);
}

void sub_218E29720(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_218E2978C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_emailSignupModelFactory + 24);
  v7 = *(a2 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_emailSignupModelFactory + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_emailSignupModelFactory), v6);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_featureAvailability);
  v9 = v3;
  v10 = v4;
  swift_unknownObjectRetain();
  (*(v7 + 8))(&v18, v5, [v8 useFineGrainedNewsletterManagement], 1, v6, v7);
  v12 = v18;
  v11 = v19;
  v13 = v20;
  v14 = HIBYTE(v20);
  if (qword_280E8D950 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218E2A2E4(v9, v5);
  v18 = v12;
  v19 = v11;
  LOBYTE(v20) = v13;
  HIBYTE(v20) = v14;
  if (sub_218E2A9CC(&v18, v9, v5))
  {
    if (v14)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v18 = v12;
    v19 = v11;
    v20 = v15 | v13;

    sub_219BE2E94();

    LOBYTE(v18) = 1;
  }

  else
  {

    LOBYTE(v18) = 0;
  }

  sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  v16 = sub_219BE3014();

  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_218E299B4()
{
  if (qword_280E8D950 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186DD624(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  swift_getErrorValue();
  v1 = sub_219BF7A04();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_219BE5314();

  sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218E29C58(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v5 = Strong;

  sub_219BE2E84();

  v6 = v15;
  if (v15 == 1)
  {
LABEL_8:

LABEL_9:
    v12 = sub_219BE8B44();
    sub_218E2A178(&qword_27CC127C0, 255, MEMORY[0x277D6E190]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D6E188], v12);
    a1(v13, 1);

    return;
  }

  v7 = v16;
  v8 = v17;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_218E2A1C0(v15);
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
      v15 = v6;
      v16 = v7;
      v17 = v8 & 0x101;

      sub_2195CC0C0(&v15, sub_218E2A204, v10);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_218E2A1C0(v6);
    }

    else
    {

      sub_218E29F98(2, a1);

      swift_unknownObjectRelease();
      sub_218E2A1C0(v6);

      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_218E29F98(2, a1);

    swift_unknownObjectRelease();
    sub_218E2A1C0(v6);
  }
}

uint64_t sub_218E29F98(uint64_t a1, uint64_t (*a2)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_featureAvailability) useFineGrainedNewsletterManagement])
    {
      v6 = *&v5[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_fineGrainedNewslettersHandler + 24];
      v7 = *&v5[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_fineGrainedNewslettersHandler + 32];
      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_fineGrainedNewslettersHandler], v6);
      (*(v7 + 8))(a1, v6, v7);
    }
  }

  return a2(0, 0);
}

void (*sub_218E2A098())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_218E2A170;
}

uint64_t sub_218E2A178(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218E2A1C0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_218E2A220(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3);
    v4 = sub_219BE3114();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218E2A280()
{
  result = qword_280E8E240;
  if (!qword_280E8E240)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E240);
  }

  return result;
}

uint64_t sub_218E2A2E4(void *a1, void *a2)
{
  v4 = sub_219BDBD34();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD624(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  if (qword_280E8D950 != -1)
  {
    swift_once();
  }

  v13 = 0x6E776F6E6B6E75;
  v41 = qword_280F617E8;
  v37 = sub_219BF6214();
  sub_2186DD624(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0B8C0;
  v15 = [a2 activeNewsletter];
  v36 = v6;
  v38 = a1;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {
        v16 = 0x8000000219CFB460;
        v17 = 0xD000000000000016;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v17 = 0x7474656C7377656ELL;
    v16 = 0xEA00000000007265;
  }

  else
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = 0xE400000000000000;
        v17 = 1701736302;
        goto LABEL_13;
      }

LABEL_10:
      v16 = 0xE700000000000000;
      v17 = 0x64696C61766E69;
      goto LABEL_13;
    }

    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E75;
  }

LABEL_13:
  *(v14 + 56) = MEMORY[0x277D837D0];
  v18 = sub_2186FC3BC();
  *(v14 + 64) = v18;
  *(v14 + 32) = v17;
  *(v14 + 40) = v16;
  v19 = [a2 subscription];
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 == 3)
      {
        v20 = 0x8000000219CFB460;
        v21 = 0xD000000000000016;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v21 = 0x7474656C7377656ELL;
    v20 = 0xEA00000000007265;
  }

  else
  {
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = 0xE400000000000000;
        v21 = 1701736302;
        goto LABEL_23;
      }

LABEL_20:
      v20 = 0xE700000000000000;
      v21 = 0x64696C61766E69;
      goto LABEL_23;
    }

    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
  }

LABEL_23:
  v22 = v40;
  *(v14 + 96) = MEMORY[0x277D837D0];
  *(v14 + 104) = v18;
  *(v14 + 72) = v21;
  *(v14 + 80) = v20;
  v23 = [a2 subscriptionStatusForNewsletter_];
  v24 = 0xE700000000000000;
  if (v23 <= 3)
  {
    if (v23 == 1)
    {
      v24 = 0xEF65626972637362;
      v13 = 0x75536F54656C6261;
      goto LABEL_37;
    }

    if (v23 != 2)
    {
      if (v23 == 3)
      {
        v24 = 0xEB00000000656C62;
        v13 = 0x616C696176616E75;
      }

      goto LABEL_37;
    }

    v13 = 0xD000000000000011;
    v25 = "alreadySubscribed";
LABEL_36:
    v24 = (v25 - 32) | 0x8000000000000000;
    goto LABEL_37;
  }

  switch(v23)
  {
    case 4:
      v24 = 0xEF6E4964656E6769;
      v13 = 0x53746F4E72657375;
      break;
    case 5:
      v13 = 0xD000000000000011;
      v25 = "unableToDowngrade";
      goto LABEL_36;
    case 6:
      v24 = 0xEB0000000064656CLL;
      v13 = 0x6961466863746566;
      break;
  }

LABEL_37:
  *(v14 + 136) = MEMORY[0x277D837D0];
  *(v14 + 144) = v18;
  *(v14 + 112) = v13;
  *(v14 + 120) = v24;
  sub_219BE5314();

  sub_219BF6214();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = [v38 newsletterSignupLastSeenDate];
  if (v27)
  {
    v28 = v27;
    sub_219BDBCA4();

    v29 = v39;
    (*(v39 + 56))(v10, 0, 1, v4);
  }

  else
  {
    v29 = v39;
    (*(v39 + 56))(v10, 1, 1, v4);
  }

  v30 = 7104878;
  sub_218A5DD60(v10, v12);
  if ((*(v29 + 48))(v12, 1, v4))
  {
    sub_21874510C(v12, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD624);
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v18;
  }

  else
  {
    v32 = v36;
    (*(v29 + 16))(v36, v12, v4);
    sub_21874510C(v12, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD624);
    v33 = sub_219BDBBA4();
    v31 = v34;
    (*(v29 + 8))(v32, v4);
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v18;
    if (v31)
    {
      v30 = v33;
      goto LABEL_45;
    }
  }

  v31 = 0xE300000000000000;
LABEL_45:
  *(v26 + 32) = v30;
  *(v26 + 40) = v31;
  sub_219BE5314();
}

uint64_t sub_218E2A9CC(uint64_t a1, void *a2, void *a3)
{
  sub_2186DD624(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (!*(a1 + 8))
  {
    if (qword_280E8D950 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (![a3 canSubscribeToNewsletter_])
  {
    if (qword_280E8D950 == -1)
    {
LABEL_9:
      sub_219BF6214();
      sub_219BE5314();
      return 0;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  v9 = [a2 newsletterSignupLastSeenDate];
  if (v9)
  {
    v10 = v9;
    sub_219BDBCA4();

    v11 = sub_219BDBD34();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    sub_21874510C(v8, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD624);
    if (qword_280E8D950 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v13 = sub_219BDBD34();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_21874510C(v8, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD624);
  return 1;
}

uint64_t sub_218E2AD20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *(a1 + 24) = MEMORY[0x277D84F78] + 8;
  return v2();
}

unint64_t sub_218E2AD60()
{
  result = qword_27CC127D0;
  if (!qword_27CC127D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC127D0);
  }

  return result;
}

unint64_t sub_218E2ADDC()
{
  result = qword_27CC127E0;
  if (!qword_27CC127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC127E0);
  }

  return result;
}

uint64_t sub_218E2AE4C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a2;
  sub_218E2C134(0, &qword_27CC127F8, MEMORY[0x277D6DF88]);
  v57 = v6;
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = v52 - v7;
  sub_218E2C0C0();
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2C134(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v67 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v52 - v14;
  sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v16);
  v18 = v52 - v17;
  v53 = v19;
  v20 = *(v19 + 16);
  v54 = a1;
  v70 = v21;
  v52[1] = v19 + 16;
  v52[0] = v20;
  v20(v18, a1);
  v22 = *(a4 + 16);
  if (v22)
  {
    v23 = a4;
    v66 = (v11 + 48);
    v61 = (v11 + 16);
    v62 = (v11 + 32);
    v60 = (v11 + 8);
    v24 = (a4 + 40);
    v69 = v15;
    v63 = v18;
    v64 = a4;
    while (1)
    {
      v25 = *(v24 - 1);
      v26 = *v24 >> 6;
      if (v26 <= 1)
      {
        break;
      }

      if (v26 == 2)
      {
        j__swift_retain();
        sub_218E2C384(v25, v18);
LABEL_4:
        j__swift_release();
        goto LABEL_5;
      }

      type metadata accessor for FollowingTagModel();
      inited = swift_initStackObject();
      *(inited + 16) = 2;
      *(inited + 24) = v25;
      *(inited + 32) = 1;
      v29 = *(v25 + 16);
      j__swift_retain();

      v30 = [v29 tagType];
      if (v30 > 1)
      {
        v31 = v68;
        if (v30 != 2)
        {
LABEL_24:
          result = sub_219BF7514();
          __break(1u);
          return result;
        }
      }

      else
      {
        v31 = v68;
        if (v30 != 1)
        {
          goto LABEL_24;
        }
      }

      sub_219BEB354();
      v32 = v67;
      if ((*v66)(v31, 1, v67) == 1)
      {
        j__swift_release();

        sub_218E2C2B4(v31);
      }

      else
      {
        v33 = v69;
        (*v62)(v69, v31, v32);
        v34 = v65;
        (*v61)(v65, v33, v32);
        v72[0] = 0;
        v72[1] = 0xE000000000000000;
        LOBYTE(v71) = 2;
        sub_219BF7484();
        MEMORY[0x21CECC330](58, 0xE100000000000000);
        v35 = [*(v25 + 16) identifier];
        v36 = sub_219BF5414();
        v38 = v37;

        MEMORY[0x21CECC330](v36, v38);
        v39 = v34;

        sub_219BE69C4();

        sub_218E2C310();
        sub_219BF5DF4();
        sub_219BF5E84();
        if (v72[0] == v71)
        {
          sub_219BE6944();
          v18 = v63;
          sub_219BEB214();
        }

        else
        {
          v18 = v63;
          sub_219BEB234();
        }

        v40 = v39;
        v23 = v64;
        j__swift_release();
        v41 = *v60;
        (*v60)(v40, v32);
        v41(v69, v32);
      }

LABEL_5:
      v24 += 16;
      if (!--v22)
      {
        goto LABEL_20;
      }
    }

    if (v26)
    {
      goto LABEL_5;
    }

    sub_218E2B6C0(v27, v18, v23);
    goto LABEL_4;
  }

LABEL_20:
  sub_218E2C1B8();
  sub_2189528B0();
  sub_218952904();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  if (sub_219BE6E54())
  {
    v42 = MEMORY[0x277D6DF80];
    v43 = v55;
  }

  else
  {
    sub_218E2C20C();
    v45 = *(v44 + 48);
    v46 = *(v44 + 64);
    v43 = v55;
    (v52[0])(v55, v18, v70);
    sub_218718690(v72, &v43[v45]);
    v47 = *MEMORY[0x277D6D868];
    v48 = sub_219BE6DF4();
    (*(*(v48 - 8) + 104))(&v43[v46], v47, v48);
    v42 = MEMORY[0x277D6DF78];
  }

  v49 = v56;
  v50 = v57;
  (*(v56 + 104))(v43, *v42, v57);
  v59(v43);
  (*(v49 + 8))(v43, v50);
  (*(v53 + 8))(v18, v70);
  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_218E2B6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  sub_218C72018();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2C94C(0, &qword_27CC12818, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v43 - v9;
  sub_218E2C0C0();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  sub_218E2C134(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v44 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v45 = &v43 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v43 - v26;
  type metadata accessor for FollowingTagModel();
  v28 = swift_allocObject();
  *(v28 + 16) = 2;
  *(v28 + 24) = a1;
  *(v28 + 32) = 1;

  sub_218BDEDE4();
  sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
  v48 = v7;
  v46 = v23;
  sub_219BEB354();
  v29 = *(v18 + 48);
  if (v29(v15, 1, v17) == 1)
  {
    sub_218E2C2B4(v15);
  }

  else
  {
    v43 = a2;
    (*(v18 + 32))(v27, v15, v17);
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    v53 = 0;
    v54 = 0xE000000000000000;
    v52 = v30;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v32 = [*(v31 + 16) identifier];
    v33 = sub_219BF5414();
    v35 = v34;

    MEMORY[0x21CECC330](v33, v35);

    v36 = v49;
    sub_219BE6A64();

    (*(v18 + 8))(v27, v17);
    if ((*(v50 + 48))(v36, 1, v51) != 1)
    {

      return sub_218E2CA54(v36);
    }

    sub_218E2CA54(v36);
  }

  sub_218BDEDE4();
  sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
  sub_219BEB354();
  if (v29(v13, 1, v17) == 1)
  {
    sub_218E2C2B4(v13);
    v37 = v44;
    sub_218E2BDFC();
    sub_218E2C9AC();
    sub_219BEB324();

    return (*(v18 + 8))(v37, v17);
  }

  else
  {
    v39 = v45;
    (*(v18 + 32))(v45, v13, v17);
    v40 = v46;
    (*(v18 + 16))(v46, v39, v17);
    if (sub_218BDEDE4())
    {
      v53 = v28 | 0x8000000000000000;
    }

    else
    {
      v53 = v28;
    }

    sub_218952904();

    v41 = v48;
    sub_219BE5FB4();
    sub_218E2CA00();
    sub_219BE6A44();
    (*(v50 + 8))(v41, v51);
    sub_219BEB234();

    v42 = *(v18 + 8);
    v42(v40, v17);
    return (v42)(v39, v17);
  }
}

uint64_t sub_218E2BD80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v3 = *a1;
    if (v2 < 0)
    {
      goto LABEL_7;
    }

    return 1;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return 1;
  }

  v3 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
  v5 = *(v3 + 24);
  v6 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  sub_218E2CACC();
  LOBYTE(v5) = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v5, v6);
  sub_21892DE98();
  return v5 & 1;
}

uint64_t sub_218E2BDFC()
{
  sub_218E2CAD4();
  MEMORY[0x28223BE20](v0 - 8);
  if (sub_218BDEDE4())
  {
    sub_2197EC9B8(v8);
    v1 = 2;
  }

  else
  {
    sub_2197EC8C8(v8);
    v1 = 1;
  }

  v8[72] = v1;
  sub_218E2C94C(0, &qword_27CC0F958, MEMORY[0x277D84560]);
  sub_218C72018();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_218BDEDE4();
  sub_218952904();

  sub_219BE5FB4();
  v5 = sub_218E2CB84(&qword_27CC12838);
  v6 = sub_218E2CB84(&qword_27CC12840);
  MEMORY[0x21CEB9150](v4, v3, v5, v6);
  sub_2189528B0();
  sub_218952904();
  return sub_219BE6924();
}

uint64_t sub_218E2C024(uint64_t a1)
{
  v2 = sub_2189B0A18();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218E2C064()
{
  result = qword_27CC127F0;
  if (!qword_27CC127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC127F0);
  }

  return result;
}

void sub_218E2C0C0()
{
  if (!qword_27CC12800)
  {
    sub_218E2C134(255, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12800);
    }
  }
}

void sub_218E2C134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDislikedDescriptor;
    v8[1] = &type metadata for FollowingDislikedModel;
    v8[2] = sub_2189528B0();
    v8[3] = sub_218952904();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218E2C1B8()
{
  result = qword_27CC12808;
  if (!qword_27CC12808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12808);
  }

  return result;
}

void sub_218E2C20C()
{
  if (!qword_27CC12810)
  {
    sub_218E2C134(255, &qword_27CC0B008, MEMORY[0x277D6EC60]);
    sub_218A7BBF4();
    sub_219BE6DF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC12810);
    }
  }
}

uint64_t sub_218E2C2B4(uint64_t a1)
{
  sub_218E2C0C0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218E2C310()
{
  result = qword_27CC0B028;
  if (!qword_27CC0B028)
  {
    sub_218E2C134(255, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B028);
  }

  return result;
}

uint64_t sub_218E2C384(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  sub_218E2C94C(0, &qword_27CC12818, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  sub_218C72018();
  v45 = v6;
  v43 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - v9;
  sub_218E2C0C0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2C134(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  type metadata accessor for FollowingTagModel();
  v20 = swift_allocObject();
  *(v20 + 16) = 2;
  *(v20 + 24) = a1;
  *(v20 + 32) = 1;
  v48 = 0;
  v49 = 0xE000000000000000;
  v47 = 2;

  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v21 = [*(a1 + 16) identifier];
  v22 = sub_219BF5414();
  v24 = v23;

  MEMORY[0x21CECC330](v22, v24);

  sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
  sub_219BEB244();

  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {

    return sub_218E2C2B4(v12);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v14);
    v26 = *(v20 + 16);
    v27 = *(v20 + 24);
    v48 = 0;
    v49 = 0xE000000000000000;
    v47 = v26;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v28 = [*(v27 + 16) identifier];
    v29 = sub_219BF5414();
    v31 = v30;

    MEMORY[0x21CECC330](v29, v31);

    sub_219BE6A64();

    v32 = v43;
    v33 = v45;
    if ((*(v43 + 48))(v5, 1, v45) == 1)
    {
      (*(v15 + 8))(v19, v14);

      return sub_218E2CA54(v5);
    }

    else
    {
      (*(v32 + 32))(v44, v5, v33);
      if (sub_218BDEDE4())
      {
        v48 = v20 | 0x8000000000000000;
      }

      else
      {
        v48 = v20;
      }

      sub_218952904();

      v34 = v42;
      sub_219BE5FB4();
      v35 = v41;
      (*(v15 + 16))(v41, v19, v14);
      v36 = v44;
      sub_219BE69E4();
      sub_219BEB234();

      v37 = *(v15 + 8);
      v37(v35, v14);
      v38 = *(v32 + 8);
      v39 = v45;
      v38(v34, v45);
      v38(v36, v39);
      return (v37)(v19, v14);
    }
  }
}

void sub_218E2C94C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218C72018();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E2C9AC()
{
  result = qword_27CC12820;
  if (!qword_27CC12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12820);
  }

  return result;
}

unint64_t sub_218E2CA00()
{
  result = qword_27CC12828;
  if (!qword_27CC12828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12828);
  }

  return result;
}

uint64_t sub_218E2CA54(uint64_t a1)
{
  sub_218E2C94C(0, &qword_27CC12818, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218E2CAD4()
{
  if (!qword_27CC12830)
  {
    sub_218C72018();
    sub_218E2CB84(&qword_27CC12838);
    sub_218E2CB84(&qword_27CC12840);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12830);
    }
  }
}

uint64_t sub_218E2CB84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218C72018();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E2CBEC(uint64_t a1)
{
  v28 = sub_219BE9EC4();
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE15B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD0A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v30 = a1;
  sub_219BEA7B4();
  if (v34)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v6 + 104))(v8, *MEMORY[0x277D2F450], v5);
      sub_219BDD094();
      (*(v6 + 8))(v8, v5);
      sub_219BDD204();

      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_218806FD0(v33);
  }

  v13 = v29;
  sub_218A54C74(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_218FE7680(0x6546756F59726F46, 0xEA00000000006465, v4);

    (*(v2 + 8))(v4, v28);
    if (v16)
    {
      sub_219BEA7A4();
      v17 = v33[0];
      if (((v17 >> 58) & 0x3C | (v17 >> 1) & 3) == 0x11)
      {
        v19 = *((v33[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v18 = *((v33[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        sub_2188382C8(v19, v18);
        sub_218932F9C(v17);
        if (v18)
        {
          if (v18 != 1)
          {
            v20 = v19;
            v21 = v18;
LABEL_18:
            sub_2188398B4(v20, v21);
          }
        }

        else
        {
          v26 = sub_219BF6594();
          if (!v26)
          {
            v20 = v19;
            v21 = 0;
            goto LABEL_18;
          }

          [v26 scrollToTopAnimated_];
          sub_2188398B4(v19, 0);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        sub_218932F9C(v33[0]);
      }

      return v16;
    }
  }

  else
  {
    (*(v2 + 8))(v4, v28);
  }

  __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
  sub_218E2D0D4();
  sub_219BEA794();
  sub_219BE1E14();

  if (v32)
  {
    sub_2186CB1F0(&v31, v33);
    v23 = v34;
    v24 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v16 = (*(v24 + 8))(v23, v24);
    v25 = sub_219BEA784();
    v25(v16);

    __swift_destroy_boxed_opaque_existential_1(v33);
    return v16;
  }

  __break(1u);
  return result;
}

unint64_t sub_218E2D0D4()
{
  result = qword_280ED9050;
  if (!qword_280ED9050)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED9050);
  }

  return result;
}

uint64_t type metadata accessor for RecentStoriesTagFeedGroupKnobs()
{
  result = qword_280EAB928;
  if (!qword_280EAB928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E2D1AC()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186ECA28();
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        sub_2186EDCB0(319, &qword_280E912E0, MEMORY[0x277D32720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_218E2D28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v25 = a4;
  sub_2186EDCB0(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  sub_2189AD5C8();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_218D0B510(a1, v13, &qword_280E91A70, sub_2189AD5C8);
  v19 = *(v16 + 48);
  if (v19(v13, 1, v15) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C900(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    if (v19(v13, 1, v15) != 1)
    {
      sub_218D0B57C(v13, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v13, v15);
  }

  (*(v16 + 32))(a7, v18, v15);
  v20 = v25;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v29 = 0x7FEFFFFFFFFFFFFFLL;
    sub_2186ECA28();
    swift_allocObject();
    v21 = sub_219BEF534();
  }

  v22 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  *(a7 + v22[5]) = v21;
  if (a3)
  {
  }

  else
  {
    v29 = 1;
    sub_2186F9548();
    swift_allocObject();

    a3 = sub_219BEF534();
  }

  *(a7 + v22[6]) = a3;
  if (!v20)
  {
    v29 = 5;
    sub_2186F9548();
    swift_allocObject();
    v20 = sub_219BEF534();
  }

  sub_218D0B57C(v26, &qword_280E91A70, sub_2189AD5C8);
  *(a7 + v22[7]) = v20;
  *(a7 + v22[8]) = (v27 == 2) | v27 & 1;
  return sub_218E2E3D4(v28, a7 + v22[9]);
}

uint64_t sub_218E2D668@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_2189AD5C8();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v45 - v9;
  sub_2186EDCB0(0, &qword_280E91A70, sub_2189AD5C8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v60 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v45 - v13;
  sub_218E2E50C(0, &qword_280E8CB10, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E2E454();
  v19 = v61;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v16;
  v51 = 0;
  v52 = v7;
  v49 = a1;
  v50 = v5;
  LOBYTE(v66) = 0;
  sub_21877C900(&qword_280E91A88, sub_2189AD5C8);
  v21 = v59;
  v22 = v55;
  sub_219BF7674();
  sub_2186ECA28();
  v24 = v23;
  LOBYTE(v65) = 1;
  sub_21877C900(&qword_280E913D8, sub_2186ECA28);
  v45 = v24;
  sub_219BF7674();
  v48 = v66;
  sub_2186F9548();
  LOBYTE(v64) = 2;
  sub_21877C900(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v46 = v65;
  LOBYTE(v62) = 3;
  sub_219BF7674();
  v53 = v64;
  LOBYTE(v62) = 4;
  sub_219BF7674();
  v47 = v63;
  sub_219BEF814();
  LOBYTE(v62) = 5;
  sub_21877C900(&qword_280E912E8, MEMORY[0x277D32720]);
  v25 = v18;
  sub_219BF7674();
  v26 = v60;
  sub_218D0B510(v21, v60, &qword_280E91A70, sub_2189AD5C8);
  v27 = v54;
  v28 = *(v54 + 48);
  v29 = v28(v26, 1, v22);
  v30 = v22;
  if (v29 == 1)
  {
    v31 = v27;
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C900(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v32 = v56;
    sub_219BEE974();
    v33 = v28(v60, 1, v30);
    v34 = v49;
    v35 = v57;
    v36 = v61;
    if (v33 != 1)
    {
      sub_218D0B57C(v60, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    v31 = v27;
    v32 = v56;
    (*(v27 + 32))(v56, v60, v30);
    v34 = v49;
    v35 = v57;
    v36 = v61;
  }

  v37 = *(v31 + 32);
  v38 = v52;
  v37(v52, v32, v30);
  v39 = v50;
  if (v48)
  {
    v40 = v48;
  }

  else
  {
    v62 = 0x7FEFFFFFFFFFFFFFLL;
    swift_allocObject();
    v40 = sub_219BEF534();
    v36 = v61;
  }

  *(v38 + v39[5]) = v40;
  v41 = v46;
  if (v46)
  {
  }

  else
  {
    v62 = 1;
    swift_allocObject();

    v42 = sub_219BEF534();
    v36 = v61;
    v41 = v42;
  }

  *(v38 + v39[6]) = v41;
  if (v53)
  {

    sub_218D0B57C(v59, &qword_280E91A70, sub_2189AD5C8);
    (*(v36 + 8))(v25, v15);
    v43 = v53;
  }

  else
  {
    v62 = 5;
    swift_allocObject();
    v44 = v36;
    v43 = sub_219BEF534();

    sub_218D0B57C(v59, &qword_280E91A70, sub_2189AD5C8);
    (*(v44 + 8))(v25, v15);
  }

  *(v38 + v39[7]) = v43;
  *(v38 + v39[8]) = (v47 == 2) | v47 & 1;
  sub_218E2E3D4(v58, v38 + v39[9]);
  sub_218E2E4A8(v38, v35);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_218E2DEB8(void *a1)
{
  v3 = v1;
  sub_218E2E50C(0, &qword_27CC12848, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E2E454();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C900(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186ECA28();
    sub_21877C900(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_2186F9548();
    sub_21877C900(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_219BF7834();
    LOBYTE(v14) = 4;
    sub_219BF7804();
    LOBYTE(v14) = 5;
    sub_219BEF814();
    sub_21877C900(&qword_280E912F0, MEMORY[0x277D32720]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218E2E238()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000017;
  if (v1 != 4)
  {
    v4 = 0x6972657473756C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65674178616DLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_218E2E300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E2EAB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E2E328(uint64_t a1)
{
  v2 = sub_218E2E454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E2E364(uint64_t a1)
{
  v2 = sub_218E2E454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E2E3D4(uint64_t a1, uint64_t a2)
{
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218E2E454()
{
  result = qword_280EAB950;
  if (!qword_280EAB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAB950);
  }

  return result;
}

uint64_t sub_218E2E4A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E2E50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E2E454();
    v7 = a3(a1, &type metadata for RecentStoriesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_218E2E570(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  sub_218CC85CC();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C900(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  v15 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0 || *(a1 + *(v15 + 32)) != *(a2 + *(v15 + 32)))
  {
    return 0;
  }

  v16 = *(v15 + 36);
  v17 = *(v12 + 48);
  v18 = MEMORY[0x277D32720];
  v19 = a1 + v16;
  v20 = v17;
  sub_218D0B510(v19, v14, &qword_280E912E0, MEMORY[0x277D32720]);
  sub_218D0B510(a2 + v16, &v14[v20], &qword_280E912E0, v18);
  v21 = *(v5 + 48);
  if (v21(v14, 1, v4) == 1)
  {
    if (v21(&v14[v20], 1, v4) == 1)
    {
      sub_218D0B57C(v14, &qword_280E912E0, MEMORY[0x277D32720]);
      return 1;
    }

    goto LABEL_11;
  }

  sub_218D0B510(v14, v10, &qword_280E912E0, MEMORY[0x277D32720]);
  if (v21(&v14[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_218D0BBC4(v14);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v20], v4);
  sub_21877C900(&qword_27CC10CD8, MEMORY[0x277D32720]);
  v23 = sub_219BF53A4();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
  sub_218D0B57C(v14, &qword_280E912E0, MEMORY[0x277D32720]);
  return (v23 & 1) != 0;
}

unint64_t sub_218E2E9B0()
{
  result = qword_27CC12850;
  if (!qword_27CC12850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12850);
  }

  return result;
}

unint64_t sub_218E2EA08()
{
  result = qword_280EAB940;
  if (!qword_280EAB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAB940);
  }

  return result;
}

unint64_t sub_218E2EA60()
{
  result = qword_280EAB948;
  if (!qword_280EAB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAB948);
  }

  return result;
}

uint64_t sub_218E2EAB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_218E2ECBC()
{
  v1 = sub_219BE14C4();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE14A4();
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF074();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1544();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE1524();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 16);
  sub_219BE9924();
  (*(v10 + 104))(v12, *MEMORY[0x277D2F3B8], v9);
  sub_218E2F0D0(v0, v8);
  sub_219BE1514();
  sub_218E34F18(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v16 = v21;
  sub_219BDD1F4();
  (*(v13 + 8))(v15, v16);
  (*(v24 + 104))(v23, *MEMORY[0x277D2F300], v25);
  v17 = v22;
  sub_219BE1484();
  sub_218E34F18(&qword_280EE8010, MEMORY[0x277D2F280]);
  v18 = v26;
  sub_219BDD1F4();
  (*(v27 + 8))(v17, v18);
  return sub_219BDD134();
}

uint64_t sub_218E2F0D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDCD34();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D6E830])
  {
    v15 = *MEMORY[0x277D2D868];
    v16 = sub_219BDF074();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  else if (v14 == *MEMORY[0x277D6E840] || v14 == *MEMORY[0x277D6E848] || v14 == *MEMORY[0x277D6E838])
  {
    sub_219BDD184();
    sub_218E34EB4(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F548], v3);
    sub_219BDD094();
    (*(v4 + 8))(v6, v3);
    v20 = sub_219BDCD14();

    (*(v7 + 8))(v9, v24);
    v21 = sub_219BDF074();
    if (v20)
    {
      v22 = MEMORY[0x277D2D820];
    }

    else
    {
      v22 = MEMORY[0x277D2D810];
    }

    return (*(*(v21 - 8) + 104))(a2, *v22, v21);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218E2F514(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_218E34F18(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_218E3239C(v37, sub_21880702C);
  sub_219BE8F44();
  (*(v10 + 32))(v13, v15, v9);
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v13, v9);
    }
  }

  sub_219BDF234();
  sub_218E34EB4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_218E34F18(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_218E34F18(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_218E2FB3C(uint64_t a1)
{
  v2 = sub_219BE35B4();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BEEC14();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v7 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A74FF4();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E324C0(0, &unk_280EE50D8, MEMORY[0x277D6DA48]);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v15 + 8))(v17, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = v30;
      v20 = v32;
      (*(v30 + 32))(v5, v12, v32);
      v21 = v31;
      sub_219BEEBC4();
      sub_218E301A4(a1, v21);
      (*(v33 + 8))(v21, v34);
      return (*(v19 + 8))(v5, v20);
    }

    sub_218E32330();
    v26 = &v12[*(v27 + 48)];
    return sub_218E3239C(v26, type metadata accessor for SavedFeedGapLocation);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v24 = *(v23 + 48);
    v25 = sub_219BF1584();
    (*(*(v25 - 8) + 8))(&v12[v24], v25);
    v26 = v12;
    return sub_218E3239C(v26, type metadata accessor for SavedFeedGapLocation);
  }

  v28 = v29;
  (*(v29 + 32))(v9, v12, v7);
  sub_219BF07D4();
  sub_218E2FFA0(a1, v35);

  return (*(v28 + 8))(v9, v7);
}

uint64_t sub_218E2FFA0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  sub_218E324C0(0, &unk_280EE50D8, MEMORY[0x277D6DA48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v17 - v8;
  v10 = v2[8];
  v17[1] = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v10);
  v11 = [*(a2 + 16) identifier];
  sub_219BF5414();

  v12 = sub_219BF4774();

  (*(v6 + 16))(v9, v19, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  (*(v6 + 32))(v14 + v13, v9, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v2;
  *(v15 + 8) = v12 & 1;

  sub_219BDD154();
}

uint64_t sub_218E301A4(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  sub_218E324C0(0, &unk_280EE50D8, MEMORY[0x277D6DA48]);
  v46 = v3;
  v43 = *(v3 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v33 - v4;
  v5 = sub_219BE35B4();
  v33 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3514();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = sub_219BE3554();
  v37 = v16;
  v38 = v15;
  v40 = v14;
  sub_219BE35A4();
  v17 = sub_219BE3594();
  v35 = v18;
  v36 = v17;
  v39 = *(v45 + 16);
  v19 = v14;
  v20 = v8;
  (*(v9 + 16))(v12, v19, v8);
  (*(v6 + 16))(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v21 = v43;
  (*(v43 + 16))(v44, v41, v46);
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v6 + 80) + v23 + 16) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v21 + 80) + v25 + 8) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 16) = v38;
  *(v27 + 24) = v28;
  (*(v9 + 32))(v27 + v22, v12, v20);
  v29 = (v27 + v23);
  v30 = v35;
  *v29 = v36;
  v29[1] = v30;
  (*(v6 + 32))(v27 + v24, v34, v33);
  v31 = v44;
  *(v27 + v25) = v45;
  (*(v43 + 32))(v27 + v26, v31, v46);

  sub_219BDD154();

  return (*(v9 + 8))(v40, v20);
}

uint64_t sub_218E30550()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A74FF4();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218A7535C();
      v12 = *(v11 + 48);
      v13 = sub_219BF1584();
      (*(*(v13 - 8) + 8))(&v6[v12], v13);
      v14 = type metadata accessor for SavedFeedGapLocation;
LABEL_8:
      v9 = v14;
      v10 = v6;
      return sub_218E3239C(v10, v9);
    }

    *v3 = 0x656E696C64616568;
    v3[1] = 0xE800000000000000;
    (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
    sub_219BDD204();
    (*(v1 + 8))(v3, v0);
LABEL_7:
    v14 = type metadata accessor for SavedFeedModel;
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  sub_218E32330();
  v9 = type metadata accessor for SavedFeedGapLocation;
  v10 = &v6[*(v8 + 48)];
  return sub_218E3239C(v10, v9);
}

uint64_t sub_218E30794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v148 = a5;
  v160 = a4;
  v165 = a3;
  v175 = a1;
  v131 = sub_219BDBD34();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_218E34EB4(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v113 - v9;
  v156 = sub_219BDF754();
  v163 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v119 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BE0444();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E34EB4(0, &unk_280EE5C30, sub_218A74FF4, v7);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v113 - v13;
  sub_218A74FF4();
  v162 = v14;
  v161 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v150 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E324C0(0, &qword_280EE3668, MEMORY[0x277D6EC60]);
  v153 = v16;
  v152 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v149 = &v113 - v17;
  sub_218A75210(0);
  MEMORY[0x28223BE20](v18 - 8);
  v151 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E324C0(0, &qword_280EE5790, MEMORY[0x277D6D710]);
  v155 = v20;
  v154 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v132 = &v113 - v21;
  v127 = sub_219BE09E4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BDF104();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E34EB4(0, &qword_280EE8330, MEMORY[0x277D2E738], v7);
  MEMORY[0x28223BE20](v24 - 8);
  v145 = &v113 - v25;
  v147 = sub_219BE0724();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v120 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_219BE1774();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BDF8A4();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BEFBD4();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BDF1A4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BDFCE4();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BE0D44();
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDF0E4();
  v172 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v34 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = *(a2 + 16);
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_218E34EB4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v171 = v35;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = (v38 + 32) & ~v38;
  v173 = v39 + *(v37 + 72);
  v40 = swift_allocObject();
  v177 = xmmword_219C09BA0;
  *(v40 + 16) = xmmword_219C09BA0;
  v41 = *MEMORY[0x277CEAD18];
  v42 = *(v37 + 104);
  v42(v40 + v39, v41, v36);
  v174 = "_TtC7NewsUI216SavedFeedTracker";
  sub_218E34F18(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  v43 = v170;
  sub_219BDCCC4();

  (*(v172 + 8))(v34, v43);
  v44 = v157;
  sub_219BF6834();
  v168 = v38;
  v45 = swift_allocObject();
  *(v45 + 16) = v177;
  v169 = v39;
  v170 = v36;
  v167 = v41;
  v172 = v37 + 104;
  v166 = v42;
  v42(v45 + v39, v41, v36);
  sub_218E34F18(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v46 = v158;
  sub_219BDCCC4();

  (*(v159 + 8))(v44, v46);
  sub_218E324C0(0, &unk_280EE50D8, MEMORY[0x277D6DA48]);
  v48 = v47;
  v49 = sub_218E34F18(&qword_27CC12858, type metadata accessor for SavedFeedModel);
  v159 = v48;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v158 = v49;
  v51 = v133;
  sub_219BDFCD4();
  v52 = swift_allocObject();
  *(v52 + 16) = v177;
  v53 = v169;
  v54 = v166;
  v166(v52 + v169, v167, v170);
  sub_218E34F18(&unk_280EE8590, MEMORY[0x277D2E058]);
  v55 = v135;
  sub_219BDCCC4();

  (*(v134 + 8))(v51, v55);
  v56 = v137;
  v57 = v136;
  v58 = v138;
  (*(v137 + 104))(v136, *MEMORY[0x277D329E0], v138);
  v59 = v139;
  sub_219BE02C4();
  (*(v56 + 8))(v57, v58);
  v60 = swift_allocObject();
  *(v60 + 16) = v177;
  v61 = v60 + v53;
  v62 = v167;
  v63 = v170;
  v54(v61, v167, v170);
  sub_218E34F18(&unk_280EE8850, MEMORY[0x277D2D950]);
  v64 = v141;
  sub_219BDCCC4();

  (*(v140 + 8))(v59, v64);
  v65 = v142;
  sub_219BDF894();
  v66 = swift_allocObject();
  *(v66 + 16) = v177;
  v54(v66 + v169, v62, v63);
  sub_218E34F18(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v67 = v144;
  sub_219BDCCC4();

  (*(v143 + 8))(v65, v67);
  v68 = [v176 scoreProfile];
  v69 = v163;
  v70 = v162;
  v71 = v161;
  v72 = v147;
  v73 = v146;
  if (v68)
  {
    v74 = v68;
    if ([v68 hasShadowScores])
    {
      [v74 shadowTabiScore];
      [v74 shadowAgedPersonalizationScore];
      v75 = v113;
      sub_219BE1764();
      v76 = swift_allocObject();
      *(v76 + 16) = v177;
      v166(v76 + v169, v167, v170);
      sub_218E34F18(&unk_280EE7F40, MEMORY[0x277D2F8F0]);
      v77 = v70;
      v78 = v115;
      sub_219BDCCC4();

      v79 = v75;
      v69 = v163;
      v80 = v78;
      v70 = v77;
      (*(v114 + 8))(v79, v80);
    }

    else
    {
    }
  }

  v81 = v145;
  sub_219BF6824();
  if ((*(v73 + 48))(v81, 1, v72) == 1)
  {
    sub_218E325B4(v81, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v82 = v120;
    (*(v73 + 32))(v120, v81, v72);
    v83 = swift_allocObject();
    *(v83 + 16) = v177;
    v166(v83 + v169, v167, v170);
    sub_218E34F18(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v73 + 8))(v82, v72);
  }

  v84 = [v176 sourceChannel];
  if (v84)
  {
    v160 = *(v160 + 32);
    v85 = v122;
    v157 = v84;
    sub_219BE01F4();
    v86 = swift_allocObject();
    *(v86 + 16) = v177;
    v88 = v169;
    v87 = v170;
    v89 = v167;
    v166(v86 + v169, v167, v170);
    sub_218E34F18(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v90 = v124;
    sub_219BDCCC4();
    v71 = v161;

    (*(v123 + 8))(v85, v90);
    v91 = v125;
    sub_219BE01E4();
    v69 = v163;
    v92 = swift_allocObject();
    *(v92 + 16) = v177;
    v166(v92 + v88, v89, v87);
    sub_218E34F18(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v93 = v127;
    v70 = v162;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v126 + 8))(v91, v93);
  }

  v94 = v149;
  sub_219BE7594();
  v95 = v150;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v71 + 8))(v95, v70);
  v96 = v151;
  v97 = v153;
  sub_219BEB244();
  v98 = v96;

  (*(v152 + 8))(v94, v97);
  v99 = v154;
  v100 = v155;
  if ((*(v154 + 48))(v98, 1, v155) != 1)
  {
    (*(v99 + 32))(v132, v98, v100);
    v102 = v121;
    sub_219BE7564();
    (*(v71 + 56))(v102, 0, 1, v70);
    v103 = sub_219BE6A34();
    result = sub_218E325B4(v102, &unk_280EE5C30, sub_218A74FF4);
    v101 = v156;
    if (v103 >= 0xFFFFFFFF80000000)
    {
      if (v103 <= 0x7FFFFFFF)
      {
        v104 = v116;
        sub_219BE0434();
        v105 = swift_allocObject();
        *(v105 + 16) = v177;
        v166(v105 + v169, v167, v170);
        sub_218E34F18(&unk_280EE8400, MEMORY[0x277D2E530]);
        v106 = v118;
        sub_219BDCCC4();

        (*(v117 + 8))(v104, v106);
        (*(v99 + 8))(v132, v100);
        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_218E3239C(v98, sub_218A75210);
  v101 = v156;
LABEL_17:
  v107 = v128;
  sub_219BF6804();
  if ((*(v69 + 48))(v107, 1, v101) == 1)
  {
    sub_218E325B4(v107, &unk_280EE8690, MEMORY[0x277D2DD28]);
  }

  else
  {
    v108 = v119;
    (*(v69 + 32))(v119, v107, v101);
    v109 = swift_allocObject();
    *(v109 + 16) = v177;
    v166(v109 + v169, v167, v170);
    sub_218E34F18(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v69 + 8))(v108, v101);
  }

  sub_219BE0834();
  v110 = v129;
  sub_219BE75A4();
  sub_218E34F18(&qword_280EE82C0, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v111 = *(v130 + 8);
  v112 = v131;
  v111(v110, v131);
  sub_219BE7574();
  v178[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v178);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v111(v110, v112);
  return sub_218E3239C(v178, sub_21880702C);
}

void sub_218E32330()
{
  if (!qword_280E8F9D0)
  {
    type metadata accessor for SavedFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F9D0);
    }
  }
}

uint64_t sub_218E3239C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E323FC(uint64_t a1)
{
  sub_218E324C0(0, &unk_280EE50D8, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_218E30794(a1, v6, v1 + v5, v8, v9);
}

void sub_218E324C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor();
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_218E34F18(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    v8[3] = sub_218E34F18(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218E325B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218E34EB4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E32624(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v118 = a7;
  v119 = a1;
  v101 = a4;
  v111 = a9;
  v11 = sub_219BDBD34();
  v112 = *(v11 - 8);
  v113 = v11;
  MEMORY[0x28223BE20](v11);
  v110 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BDF3D4();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BDF3C4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_218E34EB4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v104 = v77 - v17;
  v18 = sub_219BE3C04();
  v106 = *(v18 - 8);
  v107 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v84 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = v77 - v21;
  v83 = sub_219BE1314();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E34EB4(0, &qword_280EE8070, MEMORY[0x277D2F168], v15);
  MEMORY[0x28223BE20](v23 - 8);
  v98 = v77 - v24;
  v99 = sub_219BE3794();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BE1324();
  v95 = *(v96 - 8);
  v26 = MEMORY[0x28223BE20](v96);
  v78 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v79 = v77 - v28;
  v29 = sub_219BDF134();
  MEMORY[0x28223BE20](v29 - 8);
  v103 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BDF824();
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE06D4();
  v102 = *(v100 - 1);
  MEMORY[0x28223BE20](v100);
  v33 = v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE34F4();

  v108 = a2;
  v109 = a3;
  sub_219BE06C4();
  sub_218E34EB4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v115 = v34;
  v35 = sub_219BDCD44();
  v114 = v35;
  v36 = *(v35 - 8);
  v117 = *(v36 + 72);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  v116 = xmmword_219C09BA0;
  *(v39 + 16) = xmmword_219C09BA0;
  v40 = *MEMORY[0x277CEAD18];
  v41 = *(v36 + 104);
  v41(v39 + v38, v40, v35);
  sub_218E34F18(&unk_280EE8350, MEMORY[0x277D2E6F8]);
  v42 = v100;
  sub_219BDCCC4();

  (*(v102 + 1))(v33, v42);
  sub_219756890(v103);
  v43 = v91;
  sub_219BDF814();
  v44 = swift_allocObject();
  *(v44 + 16) = v116;
  v103 = v38;
  v45 = v44 + v38;
  v46 = v36 + 104;
  LODWORD(v101) = v40;
  v100 = v41;
  v41(v45, v40, v114);
  sub_218E34F18(&unk_280EE8650, MEMORY[0x277D2DD98]);
  v102 = "_TtC7NewsUI216SavedFeedTracker";
  v47 = v92;
  sub_219BDCCC4();

  (*(v93 + 8))(v43, v47);
  v48 = v94;
  sub_219BE3584();
  v49 = v98;
  sub_21926F2DC(v98);
  v50 = v49;
  (*(v97 + 8))(v48, v99);
  v51 = v95;
  v52 = v96;
  v53 = (*(v95 + 48))(v49, 1);
  v80 = v37;
  v77[1] = v46;
  if (v53 == 1)
  {
    sub_218E325B4(v49, &qword_280EE8070, MEMORY[0x277D2F168]);
    v54 = v114;
  }

  else
  {
    v55 = v79;
    (*(v51 + 32))(v79, v50, v52);
    (*(v51 + 16))(v78, v55, v52);
    v56 = v81;
    sub_219BE1304();
    v57 = v103;
    v58 = swift_allocObject();
    *(v58 + 16) = v116;
    v59 = v114;
    (v100)(v58 + v57, v101, v114);
    sub_218E34F18(&qword_280EE8078, MEMORY[0x277D2F150]);
    v60 = v83;
    sub_219BDCCC4();

    (*(v82 + 8))(v56, v60);
    (*(v51 + 8))(v55, v52);
    v54 = v59;
  }

  v61 = v104;
  sub_219BE3564();
  v63 = v106;
  v62 = v107;
  if ((*(v106 + 48))(v61, 1, v107) == 1)
  {
    sub_218E325B4(v61, &qword_280EE6510, MEMORY[0x277D318F8]);
  }

  else
  {
    v64 = v105;
    (*(v63 + 32))(v105, v61, v62);
    v65 = v84;
    (*(v63 + 16))(v84, v64, v62);
    v66 = (*(v63 + 88))(v65, v62);
    if (v66 == *MEMORY[0x277D318F0])
    {
      (*(v85 + 104))(v87, *MEMORY[0x277D2DA48], v86);
      v67 = v103;
      v68 = v101;
    }

    else
    {
      v67 = v103;
      if (v66 == *MEMORY[0x277D318E8])
      {
        (*(v85 + 104))(v87, *MEMORY[0x277D2DA50], v86);
        v68 = v101;
      }

      else
      {
        v69 = *(v85 + 104);
        v68 = v101;
        if (v66 == *MEMORY[0x277D318E0])
        {
          v69(v87, *MEMORY[0x277D2DA70], v86);
        }

        else
        {
          v69(v87, *MEMORY[0x277D2DA58], v86);
          (*(v63 + 8))(v65, v62);
        }
      }
    }

    v70 = v88;
    sub_219BDF3B4();
    v71 = swift_allocObject();
    *(v71 + 16) = v116;
    (v100)(v71 + v67, v68, v54);
    sub_218E34F18(&qword_280EE87E0, MEMORY[0x277D2DA30]);
    v72 = v90;
    sub_219BDCCC4();

    (*(v89 + 8))(v70, v72);
    (*(v63 + 8))(v105, v62);
  }

  sub_218E34980(v119, v108, v109);
  sub_219BE0F44();
  sub_218E324C0(0, &unk_280EE50D8, MEMORY[0x277D6DA48]);
  v73 = v110;
  sub_219BE75A4();
  sub_218E34F18(&unk_280EE8140, MEMORY[0x277D2EE08]);
  sub_219BDCC64();
  v74 = v113;
  v75 = *(v112 + 8);
  v75(v73, v113);
  sub_219BE7574();
  sub_219BDCC74();
  return (v75)(v73, v74);
}

uint64_t sub_218E335A0(uint64_t a1)
{
  v3 = *(sub_219BE3514() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BE35B4() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218E324C0(0, &unk_280EE50D8, MEMORY[0x277D6DA48]);
  return sub_218E32624(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), v1 + v7, *(v1 + v8), v1 + ((v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80)));
}

uint64_t sub_218E3371C(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v48 = sub_219BE1314();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E34EB4(0, &qword_280EE8070, MEMORY[0x277D2F168], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v44 - v5;
  v56 = sub_219BE1324();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v44 - v8;
  v9 = sub_219BDF134();
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF824();
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  MEMORY[0x28223BE20](v11);
  v57 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BE1464();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_219BE06D4();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for EngagementAction();

  sub_219BE34F4();
  v17 = a2;

  sub_219BE06C4();
  sub_218E34EB4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v19 = v18;
  v50 = sub_219BDCD44();
  v20 = *(v50 - 8);
  v69 = *(v20 + 72);
  v21 = *(v20 + 80);
  v22 = (v21 + 32) & ~v21;
  v65 = v19;
  v23 = swift_allocObject();
  v68 = xmmword_219C09BA0;
  *(v23 + 16) = xmmword_219C09BA0;
  v67 = *MEMORY[0x277CEAD18];
  v24 = *(v20 + 104);
  v24(v23 + v22);
  v63 = v24;
  v64 = "_TtC7NewsUI216SavedFeedTracker";
  sub_218E34F18(&unk_280EE8350, MEMORY[0x277D2E6F8]);
  v25 = v51;
  sub_219BDCCC4();

  (*(v52 + 8))(v16, v25);
  v49 = v17;
  sub_219BDB804();
  v26 = v53;
  sub_219BE1454();
  v27 = swift_allocObject();
  *(v27 + 16) = v68;
  v28 = v50;
  (v24)(v27 + v22, v67, v50);
  sub_218E34F18(&qword_280EE8020, MEMORY[0x277D2F270]);
  v29 = v54;
  sub_219BDCCC4();

  v30 = v26;
  v31 = v59;
  (*(v55 + 8))(v30, v29);
  sub_219756890(v58);
  v32 = v57;
  sub_219BDF814();
  v58 = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = v68;
  v55 = v22;
  (v63)(v33 + v22, v67, v28);
  sub_218E34F18(&unk_280EE8650, MEMORY[0x277D2DD98]);
  v34 = v60;
  sub_219BDCCC4();

  (*(v61 + 8))(v32, v34);
  v35 = v62;
  sub_21926F2DC(v62);
  v36 = v31;
  v37 = v56;
  if ((*(v31 + 48))(v35, 1) == 1)
  {
    sub_218E325B4(v35, &qword_280EE8070, MEMORY[0x277D2F168]);
  }

  else
  {
    v38 = v45;
    (*(v31 + 32))(v45, v35, v37);
    (*(v31 + 16))(v44, v38, v37);
    v39 = v46;
    sub_219BE1304();
    v40 = v55;
    v41 = swift_allocObject();
    *(v41 + 16) = v68;
    (v63)(v41 + v40, v67, v28);
    sub_218E34F18(&qword_280EE8078, MEMORY[0x277D2F150]);
    v42 = v48;
    sub_219BDCCC4();

    (*(v47 + 8))(v39, v42);
    (*(v36 + 8))(v38, v37);
  }

  sub_219BE0D84();
  sub_218E34F18(&unk_27CC18740, MEMORY[0x277D2ECD0]);
  memset(v71, 0, sizeof(v71));
  sub_219BDCCE4();
  return sub_218E3239C(v71, sub_21880702C);
}

uint64_t sub_218E34118(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v45 = sub_219BE1314();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E34EB4(0, &qword_280EE8070, MEMORY[0x277D2F168], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v38 - v5;
  v6 = sub_219BE1324();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v38 - v9;
  v10 = sub_219BDF134();
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF824();
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  MEMORY[0x28223BE20](v12);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE06D4();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for EngagementDismissal();
  v59 = a2;

  sub_219BE34F4();

  sub_219BE06C4();
  sub_218E34EB4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v58 = v18;
  v19 = sub_219BDCD44();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  v56 = xmmword_219C09BA0;
  *(v24 + 16) = xmmword_219C09BA0;
  v46 = *MEMORY[0x277CEAD18];
  v25 = *(v20 + 104);
  v25(v24 + v23);
  v57 = "_TtC7NewsUI216SavedFeedTracker";
  sub_218E34F18(&unk_280EE8350, MEMORY[0x277D2E6F8]);
  sub_219BDCCC4();

  v26 = v52;
  (*(v47 + 8))(v17, v15);
  sub_219756890(v50);
  v27 = v48;
  sub_219BDF814();
  v47 = v21;
  v40 = v22;
  v28 = v46;
  v29 = swift_allocObject();
  *(v29 + 16) = v56;
  v50 = v19;
  v39 = v25;
  (v25)(v29 + v23, v28, v19);
  sub_218E34F18(&unk_280EE8650, MEMORY[0x277D2DD98]);
  v30 = v53;
  sub_219BDCCC4();

  (*(v54 + 8))(v27, v30);
  v31 = v55;
  sub_21926F2DC(v55);
  v32 = v51;
  if ((*(v51 + 48))(v31, 1, v26) == 1)
  {
    sub_218E325B4(v31, &qword_280EE8070, MEMORY[0x277D2F168]);
  }

  else
  {
    v33 = v42;
    (*(v32 + 32))(v42, v31, v26);
    (*(v32 + 16))(v41, v33, v26);
    v34 = v43;
    sub_219BE1304();
    v35 = swift_allocObject();
    *(v35 + 16) = v56;
    v39(v35 + v23, v28, v50);
    sub_218E34F18(&qword_280EE8078, MEMORY[0x277D2F150]);
    v36 = v45;
    sub_219BDCCC4();

    (*(v44 + 8))(v34, v36);
    (*(v32 + 8))(v33, v26);
  }

  sub_219BE1054();
  sub_218E34F18(&qword_280EE8120, MEMORY[0x277D2EEA0]);
  memset(v61, 0, 32);
  sub_219BDCCE4();
  return sub_218E3239C(v61, sub_21880702C);
}

uint64_t sub_218E34980(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v32 = a3;
  v5 = sub_219BDF074();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1544();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDBD64();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1524();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D2F398];
  sub_218E34EB4(0, &unk_280EE7FD0, MEMORY[0x277D2F398], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v30 - v18;
  v30[1] = sub_218E34F18(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v39 = a1;
  sub_219BDCCB4();
  LODWORD(a1) = (*(v13 + 48))(v19, 1, v12);
  result = sub_218E325B4(v19, &unk_280EE7FD0, v16);
  if (a1 == 1)
  {
    if (qword_280EE5F28 != -1)
    {
      swift_once();
    }

    v21 = sub_219BE5434();
    __swift_project_value_buffer(v21, qword_280F62550);
    v22 = v32;

    v23 = sub_219BE5414();
    v24 = sub_219BF6214();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v30[0] = v9;
      v26 = v22;
      v27 = v25;
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      v29 = v26;
      v9 = v30[0];
      *(v27 + 4) = sub_2186D1058(a2, v29, &v40);
      _os_log_impl(&dword_2186C1000, v23, v24, "Augmenting engagement event with unknown view data, identifier=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CECF960](v28, -1, -1);
      MEMORY[0x21CECF960](v27, -1, -1);
    }

    sub_219BDBD54();
    sub_219BDBD44();
    (*(v31 + 8))(v11, v33);
    (*(v34 + 104))(v9, *MEMORY[0x277D2F3F0], v35);
    (*(v37 + 104))(v36, *MEMORY[0x277D2D850], v38);
    sub_219BE1514();
    sub_219BDCCC4();
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

void sub_218E34EB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218E34F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E34F94(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v82 = a3;
  v83 = a2;
  sub_218C6994C(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = (v66 - v6);
  v73 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v73);
  v70 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v69);
  v9 = (v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C6994C(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v11 = v10;
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v75 = v66 - v12;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v17 = v16;
  v77 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v72 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v78 = v66 - v20;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24);
  v74 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v66 - v29;
  v31 = a1;
  sub_219BEB354();
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    v32 = sub_218A2D984;
    v33 = v23;
LABEL_5:
    sub_218E35A04(v33, v32);
    sub_218E359B0();
    v35 = swift_allocError();
    v37 = v79;
    v36 = v80;
    *v79 = v35;
    v38 = v81;
    (*(v36 + 104))(v37, *MEMORY[0x277D6DF68], v81);
    v83(v37);
    return (*(v36 + 8))(v37, v38);
  }

  (*(v26 + 32))(v30, v23, v25);
  sub_219BEB1C4();
  v34 = v77;
  if ((*(v77 + 48))(v15, 1, v17) == 1)
  {
    (*(v26 + 8))(v30, v25);
    v32 = sub_218A7BA30;
    v33 = v15;
    goto LABEL_5;
  }

  v40 = *(v34 + 32);
  v68 = v17;
  v40(v78, v15, v17);
  v67 = v26;
  v41 = v30;
  (*(v26 + 16))(v74, v30, v25);
  v42 = *(v76 + 16);
  v66[2] = v31;
  v66[1] = v76 + 16;
  v66[0] = v42;
  v42(v75, v31, v11);
  v43 = v11;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = [objc_opt_self() bundleForClass_];
  v46 = sub_219BDB5E4();
  v48 = v47;

  *v9 = v46;
  v9[1] = v48;
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = 0;
  v49 = v69;
  v50 = *(v69 + 28);
  v51 = sub_219BDB954();
  (*(*(v51 - 8) + 56))(v9 + v50, 1, 1, v51);
  *(v9 + v49[8]) = 1;
  *(v9 + v49[9]) = 10;
  v52 = v75;
  v53 = v70;
  *(v9 + v49[10]) = v71;
  sub_218E35A64(v9, v53);
  swift_storeEnumTagMultiPayload();
  sub_218C698F4();
  v54 = v72;
  sub_219BE5FB4();
  sub_218E35A04(v9, type metadata accessor for FollowingPuzzleHubModel);
  sub_219BE69E4();
  sub_219BEB234();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  if (sub_219BE6E54())
  {
    v55 = MEMORY[0x277D6DF80];
    v56 = v79;
  }

  else
  {
    sub_218A2DA58();
    v58 = *(v57 + 48);
    v56 = v79;
    (v66[0])(v79, v52, v43);
    v59 = *MEMORY[0x277D6D868];
    v60 = sub_219BE6DF4();
    (*(*(v60 - 8) + 104))(v56 + v58, v59, v60);
    v55 = MEMORY[0x277D6DF70];
  }

  v62 = v80;
  v61 = v81;
  (*(v80 + 104))(v56, *v55, v81);
  v83(v56);
  (*(v62 + 8))(v56, v61);
  v63 = *(v77 + 8);
  v64 = v68;
  v63(v54, v68);
  (*(v76 + 8))(v52, v43);
  v65 = *(v67 + 8);
  v65(v74, v25);
  v63(v78, v64);
  v65(v41, v25);
  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_218E3591C(uint64_t a1)
{
  v2 = sub_218B127DC();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218E3595C()
{
  result = qword_280E9D960;
  if (!qword_280E9D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D960);
  }

  return result;
}

unint64_t sub_218E359B0()
{
  result = qword_27CC12860;
  if (!qword_27CC12860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12860);
  }

  return result;
}

uint64_t sub_218E35A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E35A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingPuzzleHubModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218E35ADC()
{
  result = qword_27CC12868;
  if (!qword_27CC12868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12868);
  }

  return result;
}

uint64_t sub_218E35C28(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems))
  {
    v1 = *(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (*(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems))
  {
    v2 = *(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v14 = v1;

  sub_2191EDAB0(v2);
  if (v14 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v4 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v4, v14);
      }

      else
      {
        if (v4 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v14 + 8 * v4 + 32);
      }

      v6 = v7;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v7 customView];
      if (v9)
      {
        v10 = v9;
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = [v11 contextMenuInteraction];
          [v12 dismissMenu];

          v5 = v10;
        }

        else
        {
          v5 = v6;
          v6 = v10;
        }
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
}

uint64_t sub_218E35DD8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_218E35C28(Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218E35F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v78 = a3;
  sub_218E3716C(0, &qword_280E91AA0, sub_21872F4C4);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v62 - v5;
  v68 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E3716C(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v72 = type metadata accessor for AudioHistoryFeedGroupKnobs();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E3716C(0, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v62 - v16;
  sub_218E3716C(0, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v79 = type metadata accessor for AudioHistoryFeedKnobsConfig();
  v20 = *(v79 - 8);
  v21 = MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v62 - v23;
  sub_218E3716C(0, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for AudioHistoryFeedConfig();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_218E371C0(a1, v26, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v32 = sub_219BDBD34();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = *(v27 + 24);
    v34 = sub_219BEE5B4();
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    *&v30[*(v27 + 20)] = MEMORY[0x277D84F90];
    if (v31(v26, 1, v27) != 1)
    {
      sub_218E3722C(v26, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
    }
  }

  else
  {
    sub_218E37288(v26, v30, type metadata accessor for AudioHistoryFeedConfig);
  }

  v35 = v78;
  sub_218E37288(v30, v78, type metadata accessor for AudioHistoryFeedConfig);
  v36 = v74;
  sub_218E371C0(v74, v19, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
  v37 = *(v20 + 48);
  v38 = v37(v19, 1, v79);
  v39 = v76;
  if (v38 == 1)
  {
    v63 = v37;
    v40 = v77;
    v41 = v72;
    (*(v77 + 56))(v76, 1, 1, v72);
    v42 = v70;
    sub_218E371C0(v39, v70, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
    v43 = *(v40 + 48);
    v77 = v40 + 48;
    if (v43(v42, 1, v41) == 1)
    {
      v62 = v43;
      v44 = v65;
      v45 = v68;
      (*(v65 + 56))(v11, 1, 1, v68);
      v46 = v67;
      sub_218E371C0(v11, v67, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
      v47 = *(v44 + 48);
      v48 = v47(v46, 1, v45);
      v49 = v71;
      if (v48 == 1)
      {
        sub_21872F4C4();
        v51 = v64;
        (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
        v52 = v66;
        v53 = v51;
        v54 = v67;
        sub_2191B93B0(v53, v66);
        sub_218E3722C(v11, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
        if (v47(v54, 1, v68) != 1)
        {
          sub_218E3722C(v54, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
        }
      }

      else
      {
        sub_218E3722C(v11, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
        v52 = v66;
        sub_218E37288(v46, v66, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
      }

      sub_218E37288(v52, v49, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
      sub_218E3722C(v36, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
      sub_218E3722C(v75, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
      sub_218E3722C(v76, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
      v56 = v62(v42, 1, v72);
      v35 = v78;
      if (v56 != 1)
      {
        sub_218E3722C(v42, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
      }
    }

    else
    {
      sub_218E3722C(v36, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
      sub_218E3722C(v75, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
      sub_218E3722C(v39, &qword_280EBC360, type metadata accessor for AudioHistoryFeedGroupKnobs);
      v49 = v71;
      sub_218E37288(v42, v71, type metadata accessor for AudioHistoryFeedGroupKnobs);
    }

    v57 = v69;
    sub_218E37288(v49, v69, type metadata accessor for AudioHistoryFeedGroupKnobs);
    v58 = v79;
    *(v57 + *(v79 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    v59 = v57;
    v55 = v73;
    sub_218E37288(v59, v73, type metadata accessor for AudioHistoryFeedKnobsConfig);
    if (v63(v19, 1, v58) != 1)
    {
      sub_218E3722C(v19, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
    }
  }

  else
  {
    sub_218E3722C(v36, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
    sub_218E3722C(v75, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
    v55 = v73;
    sub_218E37288(v19, v73, type metadata accessor for AudioHistoryFeedKnobsConfig);
  }

  v60 = type metadata accessor for AudioHistoryFeedContentConfig();
  return sub_218E37288(v55, v35 + *(v60 + 20), type metadata accessor for AudioHistoryFeedKnobsConfig);
}

uint64_t sub_218E36A24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_218E3716C(0, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_218E3716C(0, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_218E37074();
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E370D0();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for AudioHistoryFeedConfig();
    v18 = 0;
    sub_218E37124(&qword_280EC8BF8, type metadata accessor for AudioHistoryFeedConfig);
    sub_219BF7674();
    type metadata accessor for AudioHistoryFeedKnobsConfig();
    v17 = 1;
    sub_218E37124(qword_280EB93A0, type metadata accessor for AudioHistoryFeedKnobsConfig);
    sub_219BF7674();
    sub_218E35F24(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218E36CEC@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_218E36D4C@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_218E36DB0(uint64_t a1)
{
  v2 = sub_218E370D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E36DEC(uint64_t a1)
{
  v2 = sub_218E370D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E36EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218E3716C(0, qword_280EB9360, type metadata accessor for AudioHistoryFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_218E3716C(0, qword_280EC8BB0, type metadata accessor for AudioHistoryFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_218E372F0(a1, &v16 - v11, type metadata accessor for AudioHistoryFeedConfig);
  v13 = type metadata accessor for AudioHistoryFeedConfig();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_218E372F0(v3 + *(a2 + 20), v9, type metadata accessor for AudioHistoryFeedKnobsConfig);
  v14 = type metadata accessor for AudioHistoryFeedKnobsConfig();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_218E35F24(v12, v9, a3);
}

void sub_218E37074()
{
  if (!qword_280E8CBE0)
  {
    sub_218E370D0();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CBE0);
    }
  }
}

unint64_t sub_218E370D0()
{
  result = qword_280EB14B8[0];
  if (!qword_280EB14B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB14B8);
  }

  return result;
}

uint64_t sub_218E37124(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218E3716C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218E371C0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218E3716C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218E3722C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218E3716C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E37288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E372F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218E3736C()
{
  result = qword_27CC12888;
  if (!qword_27CC12888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12888);
  }

  return result;
}

unint64_t sub_218E373C4()
{
  result = qword_280EB14A8;
  if (!qword_280EB14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB14A8);
  }

  return result;
}

unint64_t sub_218E3741C()
{
  result = qword_280EB14B0;
  if (!qword_280EB14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB14B0);
  }

  return result;
}

uint64_t ShortcutIcon.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = type metadata accessor for ShortcutIconURL();
  MEMORY[0x28223BE20](v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E38838(0, &qword_27CC12890, MEMORY[0x277D844C8]);
  v6 = v5;
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ShortcutIcon();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E386D4();
  v12 = v23;
  sub_219BF7B34();
  if (!v12)
  {
    v13 = v4;
    v14 = v22;
    v23 = v11;
    v28 = 0;
    sub_218E38728();
    sub_219BF7734();
    if (v24)
    {
      LOBYTE(v24) = 1;
      sub_218E38954(&qword_27CC128A8);
      sub_219BF7734();
      (*(v14 + 8))(v8, v6);
      v16 = v23;
      sub_218E3877C(v13, v23, type metadata accessor for ShortcutIconURL);
      swift_storeEnumTagMultiPayload();
      v17 = v21;
    }

    else
    {
      v28 = 1;
      sub_218E387E4();
      sub_219BF7734();
      v17 = v21;
      (*(v14 + 8))(v8, v6);
      v18 = v25;
      v16 = v23;
      *v23 = v24;
      v16[1] = v18;
      v19 = v27;
      v16[2] = v26;
      v16[3] = v19;
      swift_storeEnumTagMultiPayload();
    }

    sub_218E3877C(v16, v17, type metadata accessor for ShortcutIcon);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ShortcutIcon.encode(to:)(void *a1)
{
  v2 = v1;
  v19 = type metadata accessor for ShortcutIconURL();
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShortcutIcon();
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218E38838(0, &qword_27CC128B8, MEMORY[0x277D84538]);
  v10 = v9;
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E386D4();
  sub_219BF7B44();
  sub_218E3889C(v2, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218E3877C(v8, v5, type metadata accessor for ShortcutIconURL);
    LOBYTE(v26) = 1;
    LOBYTE(v22) = 0;
    sub_218E38900();
    v13 = v20;
    sub_219BF7834();
    if (!v13)
    {
      LOBYTE(v26) = 1;
      sub_218E38954(&qword_27CC128C8);
      sub_219BF7834();
    }

    sub_218E38C78(v5, type metadata accessor for ShortcutIconURL);
    return (*(v21 + 8))(v12, v10);
  }

  else
  {
    v15 = v8[1];
    v26 = *v8;
    v27 = v15;
    v16 = v8[3];
    v28 = v8[2];
    v29 = v16;
    LOBYTE(v22) = 0;
    v30 = 0;
    sub_218E38900();
    v17 = v20;
    sub_219BF7834();
    if (!v17)
    {
      v22 = v26;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v30 = 1;
      sub_218E389EC();
      sub_219BF7834();
    }

    (*(v21 + 8))(v12, v10);
    return sub_218E38998(&v26);
  }
}

uint64_t sub_218E37BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_218E37C7C(uint64_t a1)
{
  v2 = sub_218E386D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E37CB8(uint64_t a1)
{
  v2 = sub_218E386D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E37CF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7107189;
  }

  else
  {
    v3 = 0x6D6574737973;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7107189;
  }

  else
  {
    v5 = 0x6D6574737973;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218E37D90()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218E37E08()
{
  sub_219BF5524();
}

uint64_t sub_218E37E6C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218E37EE0@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

void sub_218E37F40(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (!*v1)
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ShortcutIcon.pillViewImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ShortcutIconURL();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShortcutIcon();
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E3889C(v2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218E3877C(v18, v15, type metadata accessor for ShortcutIconURL);
    v19 = *(v4 + 16);
    v19(v12, v15, v3);
    v19(v9, &v15[v13[5]], v3);
    v19(v6, &v15[v13[6]], v3);
    v20 = &v15[v13[7]];
    if (*v20)
    {
      v21 = [objc_opt_self() ts:*v20 dynamicColor:*(v20 + 1) withDarkStyleVariant:?];
    }

    v26 = v32;
    sub_219BE67C4();
    sub_218E38C78(v15, type metadata accessor for ShortcutIconURL);
    v27 = MEMORY[0x277D6D470];
  }

  else
  {
    v22 = *(v18 + 2);
    v23 = *(v18 + 3);
    if (v22)
    {
      v24 = objc_opt_self();

      v25 = [v24 ts:v22 dynamicColor:v23 withDarkStyleVariant:?];
    }

    else
    {
    }

    v26 = v32;
    sub_219BE7794();

    sub_218966644(v22, v23);
    v27 = MEMORY[0x277D6D460];
  }

  v28 = *v27;
  v29 = sub_219BE6034();
  return (*(*(v29 - 8) + 104))(v26, v28, v29);
}

BOOL _s7NewsUI212ShortcutIconO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIconURL();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShortcutIcon();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v29 - v11);
  sub_218E38C14();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 56)];
  sub_218E3889C(a1, v16);
  sub_218E3889C(a2, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218E3889C(v16, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_218E3877C(v17, v6, type metadata accessor for ShortcutIconURL);
      v18 = _s7NewsUI215ShortcutIconURLV2eeoiySbAC_ACtFZ_0(v10, v6);
      sub_218E38C78(v6, type metadata accessor for ShortcutIconURL);
      sub_218E38C78(v10, type metadata accessor for ShortcutIconURL);
LABEL_9:
      sub_218E38C78(v16, type metadata accessor for ShortcutIcon);
      return v18;
    }

    sub_218E38C78(v10, type metadata accessor for ShortcutIconURL);
  }

  else
  {
    sub_218E3889C(v16, v12);
    v19 = v12[1];
    v32[0] = *v12;
    v32[1] = v19;
    v20 = v12[3];
    v32[2] = v12[2];
    v32[3] = v20;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = *(v17 + 1);
      v31[0] = *v17;
      v31[1] = v21;
      v22 = *(v17 + 3);
      v24 = *v17;
      v23 = *(v17 + 1);
      v31[2] = *(v17 + 2);
      v31[3] = v22;
      v25 = v12[1];
      v30[0] = *v12;
      v30[1] = v25;
      v26 = v12[3];
      v30[2] = v12[2];
      v30[3] = v26;
      v29[0] = v24;
      v29[1] = v23;
      v27 = *(v17 + 3);
      v29[2] = *(v17 + 2);
      v29[3] = v27;
      v18 = _s7NewsUI223ShortcutIconSystemImageV2eeoiySbAC_ACtFZ_0(v30, v29);
      sub_218E38998(v31);
      sub_218E38998(v32);
      goto LABEL_9;
    }

    sub_218E38998(v32);
  }

  sub_218E38C78(v16, sub_218E38C14);
  return 0;
}

unint64_t sub_218E386D4()
{
  result = qword_27CC12898;
  if (!qword_27CC12898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12898);
  }

  return result;
}

unint64_t sub_218E38728()
{
  result = qword_27CC128A0;
  if (!qword_27CC128A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128A0);
  }

  return result;
}

uint64_t sub_218E3877C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218E387E4()
{
  result = qword_27CC128B0;
  if (!qword_27CC128B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128B0);
  }

  return result;
}

void sub_218E38838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E386D4();
    v7 = a3(a1, &type metadata for ShortcutIcon.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218E3889C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIcon();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218E38900()
{
  result = qword_27CC128C0;
  if (!qword_27CC128C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128C0);
  }

  return result;
}

uint64_t sub_218E38954(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShortcutIconURL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218E389EC()
{
  result = qword_27CC128D0;
  if (!qword_27CC128D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128D0);
  }

  return result;
}

unint64_t sub_218E38A64()
{
  result = qword_27CC128D8;
  if (!qword_27CC128D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128D8);
  }

  return result;
}

unint64_t sub_218E38ABC()
{
  result = qword_27CC128E0;
  if (!qword_27CC128E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128E0);
  }

  return result;
}

unint64_t sub_218E38B14()
{
  result = qword_27CC128E8;
  if (!qword_27CC128E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128E8);
  }

  return result;
}

unint64_t sub_218E38B6C()
{
  result = qword_27CC128F0;
  if (!qword_27CC128F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128F0);
  }

  return result;
}

unint64_t sub_218E38BC0()
{
  result = qword_27CC128F8;
  if (!qword_27CC128F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC128F8);
  }

  return result;
}

void sub_218E38C14()
{
  if (!qword_27CC12900)
  {
    type metadata accessor for ShortcutIcon();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12900);
    }
  }
}

uint64_t sub_218E38C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E38D00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E39200(0, &qword_27CC12908, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E391AC();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218E38F50(void *a1)
{
  sub_218E39200(0, &qword_27CC12918, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E391AC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v1)
  {
    v9[14] = 1;
    sub_218E39264();
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E39104(uint64_t a1)
{
  v2 = sub_218E391AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E39140(uint64_t a1)
{
  v2 = sub_218E391AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218E391AC()
{
  result = qword_27CC12910;
  if (!qword_27CC12910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12910);
  }

  return result;
}

void sub_218E39200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E391AC();
    v7 = a3(a1, &type metadata for ArticleListSharedWithYouFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E39264()
{
  result = qword_27CC12920;
  if (!qword_27CC12920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12920);
  }

  return result;
}

unint64_t sub_218E392CC()
{
  result = qword_27CC12928;
  if (!qword_27CC12928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12928);
  }

  return result;
}

unint64_t sub_218E39324()
{
  result = qword_27CC12930;
  if (!qword_27CC12930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12930);
  }

  return result;
}

unint64_t sub_218E3937C()
{
  result = qword_27CC12938;
  if (!qword_27CC12938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12938);
  }

  return result;
}

unint64_t sub_218E393D0@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E39D50(0, &qword_280EE8C50, MEMORY[0x277D30008]);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218E39DB4();
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E39464(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E39D50(0, &qword_280EE8C50, MEMORY[0x277D30008]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E394D4()
{
  type metadata accessor for AdContextFactory();

  return swift_allocObject();
}

uint64_t sub_218E39508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsReferralFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for AdContextFactory();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for ArticleContextFactory();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A48A48;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218E395D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsReferralFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for AdContextFactory();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for FeedViewContextFactory();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218E396C8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_27CC12948);
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = a2(0);
    result = swift_allocObject();
    *(result + 16) = v8;
    a4[3] = v9;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218E3976C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  if (v7)
  {
    v6 = type metadata accessor for MagazineGridItemModelFactory();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v9;
    result[4] = v10;
    result[5] = v7;
    result[6] = v8;
    a2[3] = v6;
    a2[4] = &off_282A39B30;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218E398D0(void *a1)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0);
  result = sub_219BE1E34();
  if (v7)
  {
    type metadata accessor for TagFeedViewerViewControllerFactory();
    v5 = swift_allocObject();
    sub_2186CB1F0(v8, v5 + 24);
    *(v5 + 16) = v3;
    *(v5 + 64) = v4;
    sub_2186CB1F0(&v6, v5 + 72);
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218E39A1C()
{
  sub_218E39D50(0, &qword_280EE8C50, MEMORY[0x277D30008]);
  sub_219BE2904();

  sub_219BDD5F4();
  sub_219BE2914();
}

uint64_t sub_218E39ACC(void *a1)
{
  sub_218E39CF8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E39D50(0, &qword_280EE5A80, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_219BDD5F4();
  sub_219BE1E34();
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v9[4])
  {
    sub_218E39D50(0, &qword_280EE8C50, MEMORY[0x277D30008]);
    v8 = objc_allocWithZone(v7);
    return sub_219BDE494();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218E39CA4()
{
  v0 = [objc_opt_self() systemBlueColor];

  return MEMORY[0x28218DB78](v0);
}

void sub_218E39CF8()
{
  if (!qword_280EE8E40)
  {
    sub_219BDD5F4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8E40);
    }
  }
}

void sub_218E39D50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2186CF9A8();
    v7 = a3(a1, &type metadata for NewsActivity2, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E39DB4()
{
  result = qword_27CC12950;
  if (!qword_27CC12950)
  {
    sub_218E39D50(255, &qword_280EE8C50, MEMORY[0x277D30008]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12950);
  }

  return result;
}

uint64_t type metadata accessor for PromotedArticleListTagFeedGroupKnobs()
{
  result = qword_280E9AD30;
  if (!qword_280E9AD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E39E9C()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_218E3A8DC(319, &qword_280E913C8, sub_2186ECA28);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218E39F54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2189AD5C8();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PromotedArticleListTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E3A8DC(0, &qword_280E91A70, sub_2189AD5C8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - v11;
  sub_218E3A9E8(0, &qword_27CC12960, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E3A930();
  v17 = v51;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v51 = v7;
  v41 = v5;
  LOBYTE(v54) = 0;
  sub_21877C6C0(&qword_280E91A88, sub_2189AD5C8);
  v19 = v45;
  v20 = v47;
  sub_219BF7674();
  sub_2186F9548();
  v22 = v21;
  LOBYTE(v53) = 1;
  sub_21877C6C0(&qword_280E913B8, sub_2186F9548);
  v38 = v22;
  sub_219BF7674();
  v40 = v54;
  sub_2186ECA28();
  LOBYTE(v52) = 2;
  sub_21877C6C0(&qword_280E913D8, sub_2186ECA28);
  sub_219BF7674();
  v39 = v53;
  v23 = v50;
  sub_2189ADE64(v19, v50);
  v24 = v46;
  v25 = *(v46 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v24;
  v28 = v16;
  v29 = v19;
  if (v26 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C6C0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v30 = v48;
    sub_219BEE974();
    v31 = v25(v50, 1, v20);
    v32 = v30;
    v33 = v49;
    v34 = v44;
    if (v31 != 1)
    {
      sub_2189ADEC8(v50);
    }
  }

  else
  {
    v32 = v48;
    (*(v27 + 32))(v48, v50, v20);
    v33 = v49;
    v34 = v44;
  }

  v35 = v51;
  (*(v27 + 32))(v51, v32, v20);
  v36 = v40;
  if (!v40)
  {
    v52 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v36 = sub_219BEF534();
  }

  sub_2189ADEC8(v29);
  (*(v43 + 8))(v28, v13);
  v37 = v41;
  *(v35 + *(v41 + 20)) = v36;
  *(v35 + *(v37 + 24)) = v39;
  sub_218E3A984(v35, v33);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_218E3A514(void *a1)
{
  v3 = v1;
  sub_218E3A9E8(0, &qword_27CC12970, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E3A930();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2189AD5C8();
  sub_21877C6C0(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for PromotedArticleListTagFeedGroupKnobs();
    v13 = *(v3 + *(v10 + 20));
    HIBYTE(v12) = 1;
    sub_2186F9548();
    sub_21877C6C0(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_2186ECA28();
    sub_21877C6C0(&qword_280E913E0, sub_2186ECA28);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E3A7AC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218E3A80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E3AB64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E3A834(uint64_t a1)
{
  v2 = sub_218E3A930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E3A870(uint64_t a1)
{
  v2 = sub_218E3A930();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218E3A8DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_218E3A930()
{
  result = qword_27CC12968;
  if (!qword_27CC12968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12968);
  }

  return result;
}

uint64_t sub_218E3A984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromotedArticleListTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E3A9E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E3A930();
    v7 = a3(a1, &type metadata for PromotedArticleListTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E3AA60()
{
  result = qword_27CC12978;
  if (!qword_27CC12978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12978);
  }

  return result;
}

unint64_t sub_218E3AAB8()
{
  result = qword_27CC12980;
  if (!qword_27CC12980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12980);
  }

  return result;
}

unint64_t sub_218E3AB10()
{
  result = qword_27CC12988;
  if (!qword_27CC12988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12988);
  }

  return result;
}

uint64_t sub_218E3AB64(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000015 && 0x8000000219CFB7A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_218E3AC84@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BF11C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277D32EF0];
  v9 = sub_219BF0644();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  (*(v5 + 104))(v7, *MEMORY[0x277D331F8], v4);
  v10 = *(v2 + 32);
  if ([v10 useOfflineMode])
  {
    v11 = sub_219BF1AE4();
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(v2 + 16) cachedSubscription];
  v13 = [v12 isSubscribed];

  if ([v10 useOfflineMode])
  {
    v14 = sub_219BF1B84();
  }

  else
  {
    v14 = 1;
  }

  v15 = type metadata accessor for MastheadModelContext();
  (*(v5 + 16))(&a1[*(v15 + 28)], v7, v4);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v16 = sub_2187FF474(v7);
  (*(v5 + 8))(v7, v4);
  *a1 = v11 & 1;
  a1[1] = v13;
  a1[2] = v14 & 1;
  a1[*(v15 + 32)] = v16 & 1;
  sub_21895F570();
  return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
}

uint64_t type metadata accessor for HistoryFeedConfigFetchResult()
{
  result = qword_280EB42A0;
  if (!qword_280EB42A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E3AF6C()
{
  type metadata accessor for HistoryFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218E3AFF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  sub_2189AE9B4(0);
  v107 = v3;
  v104 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v103 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v100 = v5;
  v99 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v101 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  MEMORY[0x28223BE20](v102);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = v80 - v13;
  sub_2189AF720(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v98 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v109 = v80 - v17;
  sub_218E3CCD0(0, &qword_280E8CFB0, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = v80 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E3CC7C();
  v23 = v110;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v81 = v12;
  v85 = 0;
  v110 = v20;
  v86 = v8;
  v87 = a1;
  LOBYTE(v123) = 0;
  sub_2186DFB48(&qword_280E91A28, sub_2189AE994);
  v25 = v100;
  sub_219BF7674();
  LOBYTE(v123) = 1;
  sub_2186DFB48(&qword_280E91868, sub_2189AE9B4);
  sub_219BF7674();
  sub_2186ECA28();
  v27 = v26;
  LOBYTE(v122) = 2;
  sub_2186DFB48(&qword_280E913D8, sub_2186ECA28);
  sub_219BF7674();
  v97 = v123;
  sub_2186F95C4();
  v29 = v28;
  LOBYTE(v121) = 3;
  sub_2186DFB48(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v88 = v122;
  LOBYTE(v120) = 4;
  sub_219BF7674();
  v96 = v121;
  LOBYTE(v119) = 5;
  v80[2] = v29;
  sub_219BF7674();
  v95 = v120;
  LOBYTE(v118) = 6;
  v80[1] = v27;
  sub_219BF7674();
  v83 = v119;
  sub_218D398D0();
  v31 = v30;
  LOBYTE(v117) = 7;
  sub_2186DFB48(&qword_280E91410, sub_218D398D0);
  v80[0] = v31;
  sub_219BF7674();
  v106 = v118;
  sub_2186F9548();
  LOBYTE(v116) = 8;
  sub_2186DFB48(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v94 = v117;
  LOBYTE(v115) = 9;
  sub_219BF7674();
  v90 = v116;
  LOBYTE(v114) = 10;
  sub_219BF7674();
  v93 = v115;
  LOBYTE(v113) = 9;
  sub_219BF7674();
  v89 = v114;
  LOBYTE(v112) = 12;
  sub_219BF7674();
  v91 = v113;
  LOBYTE(v111) = 13;
  sub_219BF7674();
  v92 = v112;
  v32 = v98;
  sub_2189AF794(v109, v98, sub_2189AF720);
  v33 = v99;
  v34 = *(v99 + 48);
  v35 = v34(v32, 1, v25);
  v82 = v19;
  v36 = v22;
  v37 = v25;
  v84 = v36;
  if (v35 == 1)
  {
    v38 = v81;
    if (qword_280E91AC8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v25, qword_280F61830);
    v40 = v101;
    (*(v33 + 16))(v101, v39, v25);
    v41 = v34(v32, 1, v25);
    v42 = v86;
    if (v41 != 1)
    {
      sub_2189AF7FC(v32, sub_2189AF720);
    }
  }

  else
  {
    v40 = v101;
    (*(v33 + 32))(v101, v32, v25);
    v42 = v86;
    v38 = v81;
  }

  (*(v33 + 32))(v42, v40, v37);
  v43 = v108;
  sub_2189AF794(v108, v38, sub_2189AF700);
  v44 = v104;
  v45 = *(v104 + 48);
  v46 = v38;
  v47 = v38;
  v48 = v107;
  if (v45(v46, 1, v107) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFB48(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v49 = v103;
    v43 = v108;
    sub_219BEEC74();
    v50 = v45(v47, 1, v48);
    v51 = v110;
    if (v50 != 1)
    {
      sub_2189AF7FC(v47, sub_2189AF700);
    }
  }

  else
  {
    v49 = v103;
    (*(v44 + 32))(v103, v47, v48);
    v51 = v110;
  }

  v52 = v102;
  (*(v44 + 32))(v42 + *(v102 + 20), v49, v48);
  if (v97)
  {
    v53 = v97;
  }

  else
  {
    sub_219BF5CF4();
    *&v111 = v54 * 12.0;
    swift_allocObject();
    v53 = sub_219BEF534();
    v51 = v110;
  }

  v55 = v88;
  *(v42 + v52[6]) = v53;
  if (v55)
  {

    v56 = v55;
  }

  else
  {
    LOBYTE(v111) = 1;
    swift_allocObject();

    v56 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[7]) = v56;
  v57 = v96;
  if (v96)
  {

    v58 = v57;
  }

  else
  {
    LOBYTE(v111) = 0;
    swift_allocObject();

    v58 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[8]) = v58;
  v59 = v95;
  if (v95)
  {

    v60 = v59;
  }

  else
  {
    LOBYTE(v111) = 0;
    swift_allocObject();

    v60 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[9]) = v60;
  v61 = v83;
  v62 = v106;
  if (v83)
  {

    v63 = v61;
  }

  else
  {

    sub_219BF5D04();
    v111 = v64;
    swift_allocObject();
    v63 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[10]) = v63;
  if (v62)
  {

    v65 = v62;
  }

  else
  {
    sub_2186F0704(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_219C09EC0;
    v67 = qword_280EB0610;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = byte_280F61A98 | 0x80;
    *(v66 + 32) = qword_280F61A90;
    *(v66 + 40) = v68;
    *(v66 + 48) = 5;
    *(v66 + 56) = 0;
    v111 = v66;
    swift_allocObject();
    v65 = sub_219BEF534();
    v43 = v108;
    v51 = v110;
  }

  *(v42 + v52[11]) = v65;
  v69 = v94;
  if (v94)
  {

    v70 = v69;
  }

  else
  {
    v111 = 1;
    swift_allocObject();

    v70 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[12]) = v70;
  v71 = v90;
  if (v90)
  {

    v72 = v71;
  }

  else
  {
    v111 = 1;
    swift_allocObject();

    v72 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[13]) = v72;
  v73 = v93;
  if (v93)
  {

    v74 = v73;
  }

  else
  {
    v111 = 1;
    swift_allocObject();

    v74 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[14]) = v74;
  v75 = v89;
  if (v89)
  {

    v76 = v75;
  }

  else
  {
    v111 = 3;
    swift_allocObject();

    v76 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[15]) = v76;
  if (v91)
  {

    v77 = v91;
  }

  else
  {
    *&v111 = 0.0;
    swift_allocObject();

    v77 = sub_219BEF534();
    v51 = v110;
  }

  *(v42 + v52[16]) = v77;
  if (v92)
  {

    sub_2189AF7FC(v43, sub_2189AF700);
    sub_2189AF7FC(v109, sub_2189AF720);
    (*(v51 + 8))(v84, v82);
    v78 = v92;
  }

  else
  {
    v111 = 4;
    swift_allocObject();
    v79 = v51;
    v78 = sub_219BEF534();

    sub_2189AF7FC(v43, sub_2189AF700);
    sub_2189AF7FC(v109, sub_2189AF720);
    (*(v79 + 8))(v84, v82);
  }

  *(v42 + v52[17]) = v78;
  sub_218D39B34(v42, v105);
  return __swift_destroy_boxed_opaque_existential_1(v87);
}

unint64_t sub_218E3C0C4(char a1)
{
  result = 0x73656C7572;
  switch(a1)
  {
    case 1:
      result = 0x6C6F6F706572;
      break;
    case 2:
      result = 0x6E69576863746566;
      break;
    case 3:
      result = 0x456F54706D616C63;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218E3C250(void *a1)
{
  v3 = v1;
  sub_218E3CCD0(0, &qword_280E8C680, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E3CC7C();
  sub_219BF7B44();
  LOBYTE(v16) = 0;
  sub_2189AE994(0);
  sub_2186DFB48(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
    LOBYTE(v16) = 1;
    sub_2189AE9B4(0);
    sub_2186DFB48(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    v16 = *(v3 + v10[6]);
    v15 = 2;
    sub_2186ECA28();
    sub_2186DFB48(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v16 = *(v3 + v10[7]);
    v15 = 3;
    sub_2186F95C4();
    v12 = v11;
    v14[1] = sub_2186DFB48(&qword_280E91400, sub_2186F95C4);
    v14[2] = v12;
    sub_219BF7834();
    v16 = *(v3 + v10[8]);
    v15 = 4;
    sub_219BF7834();
    v16 = *(v3 + v10[9]);
    v15 = 5;
    sub_219BF7834();
    v16 = *(v3 + v10[10]);
    v15 = 6;
    sub_219BF7834();
    v16 = *(v3 + v10[11]);
    v15 = 7;
    sub_218D398D0();
    sub_2186DFB48(&qword_280E91418, sub_218D398D0);
    sub_219BF7834();
    v16 = *(v3 + v10[12]);
    v15 = 8;
    sub_2186F9548();
    sub_2186DFB48(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v16 = *(v3 + v10[13]);
    v15 = 9;
    sub_219BF7834();
    v16 = *(v3 + v10[14]);
    v15 = 10;
    sub_219BF7834();
    v16 = *(v3 + v10[15]);
    v15 = 11;
    sub_219BF7834();
    v16 = *(v3 + v10[16]);
    v15 = 12;
    sub_219BF7834();
    v16 = *(v3 + v10[17]);
    v15 = 13;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E3C848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E3CF8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E3C87C(uint64_t a1)
{
  v2 = sub_218E3CC7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E3C8B8(uint64_t a1)
{
  v2 = sub_218E3CC7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E3C928()
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DFB48(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(), (sub_219BEEC64()) && (sub_2186ECA28(), (sub_219BEF504()) && (sub_2186F95C4(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_218D398D0(), (sub_219BEF504()) && (sub_2186F9548(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs()
{
  result = qword_280EE1460;
  if (!qword_280EE1460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E3CB84()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      sub_2186ECA28();
      if (v2 <= 0x3F)
      {
        sub_2186F95C4();
        if (v3 <= 0x3F)
        {
          sub_218D398D0();
          if (v4 <= 0x3F)
          {
            sub_2186F9548();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_218E3CC7C()
{
  result = qword_280EE1490;
  if (!qword_280EE1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1490);
  }

  return result;
}

void sub_218E3CCD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E3CC7C();
    v7 = a3(a1, &type metadata for LocalNewsTodayFeedGroupSubtypeKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MagazineFeedGroupKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MagazineFeedGroupKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218E3CE88()
{
  result = qword_27CC12990;
  if (!qword_27CC12990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12990);
  }

  return result;
}

unint64_t sub_218E3CEE0()
{
  result = qword_280EE1480;
  if (!qword_280EE1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1480);
  }

  return result;
}

unint64_t sub_218E3CF38()
{
  result = qword_280EE1488;
  if (!qword_280EE1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1488);
  }

  return result;
}

uint64_t sub_218E3CF8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456F54706D616C63 && a2 == 0xEE006E6F69746964 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CF0870 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CE9710 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CE9730 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF08D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF08F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CF0890 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CF08B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0910 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0930 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_218E3D400()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218E3D4C8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218E3D58C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_219BF09E4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_219BDB734();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_219BDBE34();
  v2[10] = swift_task_alloc();
  sub_219BF53C4();
  v2[11] = swift_task_alloc();
  sub_219BDB744();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218E3D72C, 0, 0);
}

uint64_t sub_218E3D72C()
{
  v1 = sub_218845E04();
  v2 = v1;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_31;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0xA)
  {
    v5 = 10;
  }

  else
  {
    v5 = result;
  }

  if (result < v5)
  {
LABEL_40:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {

        if (v5)
        {
          type metadata accessor for TagModel();
          v6 = 0;
          do
          {
            v7 = v6 + 1;
            sub_219BF7334();
            v6 = v7;
          }

          while (v5 != v7);
        }
      }

      else
      {
      }

      if (v3)
      {
        sub_219BF7564();
        v8 = v9;
        v3 = v10;
        v12 = v11;

        v5 = v12 >> 1;
      }

      else
      {
        v8 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      swift_unknownObjectRetain();
      if (v5 == v3)
      {
        break;
      }

      v17 = v0[5];
      v18 = v5 - v3;
      if (v5 <= v3)
      {
        v19 = v3;
      }

      else
      {
        v19 = v5;
      }

      v20 = v8 + 8 * v3;
      v3 = v19 - v3;
      v2 = MEMORY[0x277D84F90];
      while (v3)
      {
        swift_unknownObjectRetain();
        sub_219BF09D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2191F7EC4(0, *(v2 + 16) + 1, 1, v2);
        }

        v22 = *(v2 + 16);
        v21 = *(v2 + 24);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_2191F7EC4(v21 > 1, v22 + 1, 1, v2);
        }

        v23 = v0[6];
        v24 = v0[4];
        *(v2 + 16) = v22 + 1;
        (*(v17 + 32))(v2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, v23, v24);
        v20 += 8;
        --v3;
        if (!--v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      v25 = sub_219BF7214();
      if (sub_219BF7214() < 0)
      {
        __break(1u);
      }

      if (v25 >= 0xA)
      {
        v26 = 10;
      }

      else
      {
        v26 = v25;
      }

      if (v25 >= 0)
      {
        v5 = v26;
      }

      else
      {
        v5 = 10;
      }

      result = sub_219BF7214();
      if (result < v5)
      {
        goto LABEL_40;
      }
    }

LABEL_16:
    v13 = v0[9];
    v15 = v0[7];
    v14 = v0[8];
    swift_unknownObjectRelease_n();
    sub_219BF53B4();
    sub_219BDBDF4();
    (*(v14 + 104))(v13, *MEMORY[0x277CC9110], v15);
    sub_219BDB754();
    sub_218BB6E28();
    sub_219BDAE04();

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_218E3DABC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_218E3D58C(a1);
}

uint64_t sub_218E3DB60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 312))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_218E3DBBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_218E3DC70(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x67616D49656D616ELL;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 16:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0x616D497265766F63;
      break;
    case 10:
    case 11:
      result = 0x4976614E64656566;
      break;
    case 12:
      result = 0x75467374726F7073;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x7365707954676174;
      break;
    case 19:
      result = 0x74695470756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218E3DEC0(void *a1)
{
  v3 = v1;
  sub_218E3FFAC(0, &qword_27CC12998, sub_218E3E4D8, &type metadata for SearchTagMetadata.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E3E4D8();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BF7794();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_219BF7794();
    LOBYTE(v12) = 2;
    sub_219BF7794();
    LOBYTE(v12) = 3;
    sub_219BF7794();
    LOBYTE(v12) = 4;
    sub_219BF7794();
    LOBYTE(v12) = 5;
    sub_219BF77C4();
    LOBYTE(v12) = 6;
    sub_219BF77B4();
    LOBYTE(v12) = 7;
    sub_219BF7794();
    LOBYTE(v12) = 8;
    sub_219BF7794();
    LOBYTE(v12) = 9;
    sub_219BF7794();
    LOBYTE(v12) = 10;
    sub_219BF7794();
    LOBYTE(v12) = 11;
    sub_219BF7794();
    LOBYTE(v12) = 12;
    sub_219BF7794();
    LOBYTE(v12) = 13;
    sub_219BF7794();
    LOBYTE(v12) = 14;
    sub_219BF7794();
    LOBYTE(v12) = 15;
    sub_219BF7794();
    LOBYTE(v12) = 16;
    sub_219BF7794();
    LOBYTE(v12) = 17;
    sub_219BF7794();
    v12 = *(v3 + 288);
    v11[15] = 18;
    sub_218E3FFAC(0, &qword_27CC129A8, sub_218E3E52C, &type metadata for SearchTagType, MEMORY[0x277D83B48]);
    sub_218E40014(&qword_27CC129B8, sub_218E3E580);
    sub_219BF77E4();
    LOBYTE(v12) = 19;
    sub_219BF7794();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E3E37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E3EB94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E3E3A4(uint64_t a1)
{
  v2 = sub_218E3E4D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E3E3E0(uint64_t a1)
{
  v2 = sub_218E3E4D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_218E3E41C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_218E3F1DC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x138uLL);
  }

  return result;
}

BOOL sub_218E3E480(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_218E3E5D4(v4, __dst);
}

unint64_t sub_218E3E4D8()
{
  result = qword_27CC129A0;
  if (!qword_27CC129A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC129A0);
  }

  return result;
}

unint64_t sub_218E3E52C()
{
  result = qword_27CC129B0;
  if (!qword_27CC129B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC129B0);
  }

  return result;
}

unint64_t sub_218E3E580()
{
  result = qword_27CC129C0;
  if (!qword_27CC129C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC129C0);
  }

  return result;
}

BOOL sub_218E3E5D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_219BF78F4();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_219BF78F4();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_219BF78F4();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = *(a1 + 56);
  v22 = *(a2 + 56);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_219BF78F4();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = *(a1 + 72);
  v28 = *(a2 + 72);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = sub_219BF78F4();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v34 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = *(a1 + 120);
  v36 = *(a2 + 120);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    if (*(a1 + 112) != *(a2 + 112) || v35 != v36)
    {
      v37 = a1;
      v38 = a2;
      v39 = sub_219BF78F4();
      a2 = v38;
      v40 = v39;
      a1 = v37;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v41 = *(a1 + 136);
  v42 = *(a2 + 136);
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    if (*(a1 + 128) != *(a2 + 128) || v41 != v42)
    {
      v43 = a1;
      v44 = a2;
      v45 = sub_219BF78F4();
      a2 = v44;
      v46 = v45;
      a1 = v43;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v42)
  {
    return 0;
  }

  v47 = *(a1 + 152);
  v48 = *(a2 + 152);
  if (v47)
  {
    if (!v48)
    {
      return 0;
    }

    if (*(a1 + 144) != *(a2 + 144) || v47 != v48)
    {
      v49 = a1;
      v50 = a2;
      v51 = sub_219BF78F4();
      a2 = v50;
      v52 = v51;
      a1 = v49;
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v48)
  {
    return 0;
  }

  v53 = *(a1 + 168);
  v54 = *(a2 + 168);
  if (v53)
  {
    if (!v54)
    {
      return 0;
    }

    if (*(a1 + 160) != *(a2 + 160) || v53 != v54)
    {
      v55 = a1;
      v56 = a2;
      v57 = sub_219BF78F4();
      a2 = v56;
      v58 = v57;
      a1 = v55;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v54)
  {
    return 0;
  }

  v59 = *(a1 + 184);
  v60 = *(a2 + 184);
  if (v59)
  {
    if (!v60)
    {
      return 0;
    }

    v61 = a1;
    v62 = a2;
    if ((*(a1 + 176) != *(a2 + 176) || v59 != v60) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v61 = a1;
    v62 = a2;
    if (v60)
    {
      return 0;
    }
  }

  v63 = v61[25];
  v64 = v62[25];
  if (v63)
  {
    if (!v64 || (v61[24] != v62[24] || v63 != v64) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v65 = v61[27];
  v66 = v62[27];
  if (v65)
  {
    if (!v66 || (v61[26] != v62[26] || v65 != v66) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = v61[29];
  v68 = v62[29];
  if (v67)
  {
    if (!v68 || (v61[28] != v62[28] || v67 != v68) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v69 = v61[31];
  v70 = v62[31];
  if (v69)
  {
    if (!v70 || (v61[30] != v62[30] || v69 != v70) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  v71 = v61[33];
  v72 = v62[33];
  if (v71)
  {
    if (!v72 || (v61[32] != v62[32] || v71 != v72) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v72)
  {
    return 0;
  }

  v73 = v61[35];
  v74 = v62[35];
  if (v73)
  {
    if (!v74 || (v61[34] != v62[34] || v73 != v74) && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  v75 = v61[36];
  v76 = v62[36];
  if (v75)
  {
    if (!v76)
    {
      return 0;
    }

    v77 = sub_21947B630(v75, v76);

    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  v78 = v61[38];
  v79 = v62[38];
  if (v78)
  {
    return v79 && (v61[37] == v62[37] && v78 == v79 || (sub_219BF78F4() & 1) != 0);
  }

  return !v79;
}

uint64_t sub_218E3EB94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67616D49656D616ELL && a2 == 0xE900000000000065 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67616D49656D616ELL && a2 == 0xED00006B73614D65 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CFBA30 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CFBA50 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CFBA70 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CFBA90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CFBAB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000219CFBAD0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x616D497265766F63 && a2 == 0xEA00000000006567 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4976614E64656566 && a2 == 0xEC0000006567616DLL || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4976614E64656566 && a2 == 0xEE0051486567616DLL || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x75467374726F7073 && a2 == 0xEE00656D614E6C6CLL || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CFBAF0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CFBB10 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CFBB30 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CFBB50 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CFBB70 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7365707954676174 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x74695470756F7267 && a2 == 0xEF726F6C6F43656CLL)
  {

    return 19;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

void *sub_218E3F1DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218E3FFAC(0, &qword_27CC129C8, sub_218E3E4D8, &type metadata for SearchTagMetadata.CodingKeys, MEMORY[0x277D844C8]);
  v84 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_218E3E4D8();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v122);
  }

  v10 = v6;
  v11 = a2;
  LOBYTE(v86[0]) = 0;
  v13 = sub_219BF7694();
  v82 = v14;
  LOBYTE(v86[0]) = 1;
  v15 = sub_219BF7694();
  v78 = v16;
  v17 = v15;
  LOBYTE(v86[0]) = 2;
  v77 = 0;
  v81 = sub_219BF7694();
  v76 = v18;
  LOBYTE(v86[0]) = 3;
  v80 = sub_219BF7694();
  v75 = v19;
  LOBYTE(v86[0]) = 4;
  v79 = sub_219BF7694();
  v74 = v20;
  LOBYTE(v86[0]) = 5;
  v65 = sub_219BF76C4();
  v121 = v21 & 1;
  LOBYTE(v86[0]) = 6;
  v64 = sub_219BF76B4();
  v119 = v22 & 1;
  LOBYTE(v86[0]) = 7;
  v63 = sub_219BF7694();
  v73 = v23;
  LOBYTE(v86[0]) = 8;
  v62 = sub_219BF7694();
  v83 = 0;
  v24 = v17;
  v72 = v25;
  LOBYTE(v86[0]) = 9;
  v26 = sub_219BF7694();
  v71 = v27;
  v83 = 0;
  v28 = v26;
  LOBYTE(v86[0]) = 10;
  v29 = sub_219BF7694();
  v70 = v30;
  v83 = 0;
  v31 = v29;
  LOBYTE(v86[0]) = 11;
  v61 = sub_219BF7694();
  v69 = v32;
  v83 = 0;
  LOBYTE(v86[0]) = 12;
  v60 = sub_219BF7694();
  v68 = v33;
  v83 = 0;
  LOBYTE(v86[0]) = 13;
  v59 = sub_219BF7694();
  v67 = v34;
  v83 = 0;
  LOBYTE(v86[0]) = 14;
  v58 = sub_219BF7694();
  v66 = v35;
  v83 = 0;
  LOBYTE(v86[0]) = 15;
  v56 = sub_219BF7694();
  v57 = v36;
  v83 = 0;
  LOBYTE(v86[0]) = 16;
  v54 = sub_219BF7694();
  v55 = v37;
  v77 = 0;
  LOBYTE(v86[0]) = 17;
  v51 = sub_219BF7694();
  v53 = v38;
  v83 = 0;
  sub_218E3FFAC(0, &qword_27CC129A8, sub_218E3E52C, &type metadata for SearchTagType, MEMORY[0x277D83B48]);
  LOBYTE(v85[0]) = 18;
  sub_218E40014(&qword_27CC129D0, sub_218E400B8);
  v39 = v83;
  sub_219BF76E4();
  v83 = v39;
  if (v39)
  {
    (*(v10 + 8))(v8, v84);
    __swift_destroy_boxed_opaque_existential_1(v122);

    if (!v77)
    {
    }
  }

  else
  {
    v52 = v86[0];
    v117 = 19;
    v40 = sub_219BF7694();
    v49 = v41;
    v50 = v40;
    v83 = 0;
    (*(v10 + 8))(v8, v84);
    v85[0] = v13;
    v85[1] = v82;
    v48 = v24;
    v85[2] = v24;
    v85[3] = v78;
    v85[4] = v81;
    v85[5] = v76;
    v85[6] = v80;
    v85[7] = v75;
    v85[8] = v79;
    v85[9] = v74;
    v85[10] = v65;
    LODWORD(v84) = v121;
    LOBYTE(v85[11]) = v121;
    *(&v85[11] + 1) = *v120;
    HIDWORD(v85[11]) = *&v120[3];
    v85[12] = v64;
    HIDWORD(v85[13]) = *&v118[3];
    *(&v85[13] + 1) = *v118;
    v42 = v119;
    LOBYTE(v85[13]) = v119;
    v43 = v72;
    v85[14] = v63;
    v85[15] = v73;
    v85[16] = v62;
    v85[17] = v72;
    v47 = v28;
    v44 = v70;
    v45 = v71;
    v85[18] = v28;
    v85[19] = v71;
    v85[20] = v31;
    v85[21] = v70;
    v85[22] = v61;
    v85[23] = v69;
    v85[24] = v60;
    v85[25] = v68;
    v85[26] = v59;
    v85[27] = v67;
    v85[28] = v58;
    v85[29] = v66;
    v85[30] = v56;
    v85[31] = v57;
    v46 = v55;
    v85[32] = v54;
    v85[33] = v55;
    v85[34] = v51;
    v85[35] = v53;
    v85[36] = v52;
    v85[37] = v50;
    v85[38] = v49;
    sub_218E4010C(v85, v86);
    __swift_destroy_boxed_opaque_existential_1(v122);
    v86[0] = v13;
    v86[1] = v82;
    v86[2] = v48;
    v86[3] = v78;
    v86[4] = v81;
    v86[5] = v76;
    v86[6] = v80;
    v86[7] = v75;
    v86[8] = v79;
    v86[9] = v74;
    v86[10] = v65;
    v87 = v84;
    *v88 = *v120;
    *&v88[3] = *&v120[3];
    v89 = v64;
    v90 = v42;
    *&v91[3] = *&v118[3];
    *v91 = *v118;
    v92 = v63;
    v93 = v73;
    v94 = v62;
    v95 = v43;
    v96 = v47;
    v97 = v45;
    v98 = v31;
    v99 = v44;
    v100 = v61;
    v101 = v69;
    v102 = v60;
    v103 = v68;
    v104 = v59;
    v105 = v67;
    v106 = v58;
    v107 = v66;
    v108 = v56;
    v109 = v57;
    v110 = v54;
    v111 = v46;
    v112 = v51;
    v113 = v53;
    v114 = v52;
    v115 = v50;
    v116 = v49;
    sub_218E40144(v86);
    return memcpy(v11, v85, 0x138uLL);
  }
}