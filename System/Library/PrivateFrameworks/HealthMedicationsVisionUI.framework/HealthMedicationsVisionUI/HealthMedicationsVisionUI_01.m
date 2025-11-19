uint64_t sub_2518D4428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2518E1708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2518D4468(uint64_t a1)
{
  v2 = sub_2518D478C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2518D44A4(uint64_t a1)
{
  v2 = sub_2518D478C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScanningSystemState.encode(to:)(void *a1)
{
  sub_2518DD45C(0, &qword_27F464B68, sub_2518D478C, &type metadata for ScanningSystemState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v8;
  v15 = *(v1 + 48);
  v14 = *(v1 + 56);
  LODWORD(v8) = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518D478C();
  sub_2518F09C8();
  v26 = 0;
  v9 = v18;
  sub_2518F08A8();
  if (!v9)
  {
    v25 = 1;
    sub_2518F08B8();
    v24 = 2;
    sub_2518F08B8();
    v23 = 3;
    sub_2518F08B8();
    v22 = 4;
    sub_2518F08D8();
    v21 = 5;
    sub_2518F0888();
    v20 = 6;
    sub_2518F0888();
    v19 = 7;
    sub_2518F0888();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2518D478C()
{
  result = qword_27F464B70;
  if (!qword_27F464B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464B70);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ScanningSystemState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2518DD45C(0, &qword_27F464B78, sub_2518D478C, &type metadata for ScanningSystemState.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2518D478C();
  sub_2518F09B8();
  if (!v2)
  {
    v11 = v7;
    v43 = 0;
    v12 = v6;
    v13 = sub_2518F0828();
    v42 = 1;
    sub_2518F0838();
    v15 = v14;
    v41 = 2;
    sub_2518F0838();
    v17 = v16;
    v40 = 3;
    sub_2518F0838();
    v19 = v18;
    v39 = 4;
    v20 = sub_2518F0858();
    v38 = 5;
    v34 = sub_2518F0808();
    v46 = v21 & 1;
    v37 = 6;
    v33 = sub_2518F0808();
    v45 = v23 & 1;
    v36 = 7;
    v24 = v13 & 1;
    v25 = sub_2518F0808();
    v26 = v9;
    v28 = v27;
    (*(v11 + 8))(v26, v12);
    v44 = v28 & 1;
    v29 = v46;
    v30 = v45;
    *a2 = v24;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17;
    *(a2 + 24) = v19;
    v31 = v34;
    *(a2 + 32) = v20;
    *(a2 + 40) = v31;
    *(a2 + 48) = v29;
    *(a2 + 56) = v33;
    *(a2 + 64) = v30;
    *(a2 + 72) = v25;
    *(a2 + 80) = v28 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t ScanningSession.mrcResult.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 ScanningSession.systemState.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 32) = *(v1 + 96);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 128);
  *(a1 + 80) = *(v1 + 144);
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 ScanningSession.systemState.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v4;
  return result;
}

uint64_t ScanningSession.filteredResults.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t ScanningSession.expandedResults.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

double ScanningSession.init(from:usedTranscripts:seenMRCs:pbsResults:mrcResult:attachments:systemState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, void *a9@<X8>)
{
  v59 = a7;
  v58 = a6;
  v57 = a5;
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v60 = a9;
  v53 = sub_2518EF618();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a8[3];
  v71 = a8[2];
  v72 = v12;
  v73 = a8[4];
  v74 = *(a8 + 80);
  v13 = a8[1];
  v69 = *a8;
  v70 = v13;
  if (a4 >> 62)
  {
    goto LABEL_37;
  }

  v14 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = 0;
    v64 = a4 & 0xFFFFFFFFFFFFFF8;
    v65 = a4 & 0xC000000000000001;
    v62 = a4;
    v63 = a4 + 32;
    v61 = v14;
    do
    {
      if (v65)
      {
        v17 = MEMORY[0x253086400](v16, a4);
        v18 = __OFADD__(v16, 1);
        v19 = v16 + 1;
        if (v18)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v16 >= *(v64 + 16))
        {
          goto LABEL_36;
        }

        v17 = *(v63 + 8 * v16);
        v18 = __OFADD__(v16, 1);
        v19 = v16 + 1;
        if (v18)
        {
          goto LABEL_35;
        }
      }

      v68 = v19;
      v66 = v17;
      v20 = [v17 subHgIds];
      sub_2518BC1A8(0, &qword_27F464A40);
      v21 = sub_2518F01B8();

      if (v21 >> 62)
      {
        v22 = sub_2518F0648();
        v67 = v15;
        if (v22)
        {
LABEL_10:
          v23 = 0;
          v24 = MEMORY[0x277D84F90];
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x253086400](v23, v21);
            }

            else
            {
              if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v25 = *(v21 + 8 * v23 + 32);
            }

            v26 = v25;
            v27 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            v28 = [v25 hgId];
            [v26 jaccardSimilarity];
            v30 = v29;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_2518DC860(0, *(v24 + 2) + 1, 1, v24);
            }

            a4 = *(v24 + 2);
            v31 = *(v24 + 3);
            if (a4 >= v31 >> 1)
            {
              v24 = sub_2518DC860((v31 > 1), a4 + 1, 1, v24);
            }

            *(v24 + 2) = a4 + 1;
            v32 = &v24[16 * a4];
            *(v32 + 4) = v28;
            *(v32 + 10) = v30;
            ++v23;
            if (v27 == v22)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v14 = sub_2518F0648();
          goto LABEL_3;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v67 = v15;
        if (v22)
        {
          goto LABEL_10;
        }
      }

      v24 = MEMORY[0x277D84F90];
LABEL_27:

      v33 = v66;
      v34 = [v66 primaryHgId];
      [v33 maxJaccardSimilarity];
      v36 = v35;

      v15 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2518DC728(0, *(v15 + 2) + 1, 1, v15);
      }

      v37 = v61;
      a4 = v62;
      v16 = v68;
      v39 = *(v15 + 2);
      v38 = *(v15 + 3);
      if (v39 >= v38 >> 1)
      {
        v15 = sub_2518DC728((v38 > 1), v39 + 1, 1, v15);
      }

      *(v15 + 2) = v39 + 1;
      v40 = &v15[24 * v39];
      *(v40 + 4) = v34;
      *(v40 + 10) = v36;
      *(v40 + 6) = v24;
    }

    while (v16 != v37);
  }

  v41 = v51;
  sub_2518EF608();
  sub_2518EF5D8();
  v43 = v42;
  (*(v52 + 8))(v41, v53);
  v44 = v60;
  v45 = v55;
  *v60 = v54;
  v44[1] = v45;
  v44[2] = v56;
  v44[3] = v15;
  v46 = v58;
  v44[4] = v57;
  v44[5] = v46;
  v44[6] = v43;
  v44[7] = v59;
  v47 = v72;
  *(v44 + 6) = v71;
  *(v44 + 7) = v47;
  *(v44 + 8) = v73;
  *(v44 + 144) = v74;
  result = *&v69;
  v49 = v70;
  *(v44 + 4) = v69;
  *(v44 + 5) = v49;
  v50 = MEMORY[0x277D84F90];
  v44[19] = MEMORY[0x277D84F90];
  v44[20] = v50;
  return result;
}

uint64_t sub_2518D51B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x74536D6574737973;
    v6 = 0x64657265746C6966;
    if (a1 != 8)
    {
      v6 = 0x6465646E61707865;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D617473656D6974;
    if (a1 != 5)
    {
      v7 = 0x656D686361747461;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736E6172546C6C61;
    v2 = 0x7343524D6E656573;
    v3 = 0x6C75736552736270;
    if (a1 != 3)
    {
      v3 = 0x6C7573655263726DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E61725464657375;
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

uint64_t sub_2518D5394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2518E19BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2518D53C8(uint64_t a1)
{
  v2 = sub_2518DC978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2518D5404(uint64_t a1)
{
  v2 = sub_2518DC978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScanningSession.encode(to:)(void *a1)
{
  sub_2518DD45C(0, &qword_27F464B80, sub_2518DC978, &type metadata for ScanningSession.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v25 = v1[1];
  v9 = v1[3];
  v24 = v1[2];
  v23 = v9;
  v10 = v1[5];
  v21 = v1[4];
  v22 = v10;
  v20 = v1[7];
  v11 = *(v1 + 7);
  v36 = *(v1 + 6);
  v37 = v11;
  v38 = *(v1 + 8);
  v39 = *(v1 + 144);
  v12 = *(v1 + 5);
  v34 = *(v1 + 4);
  v35 = v12;
  v13 = v1[20];
  v19 = v1[19];
  v18 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518DC978();

  sub_2518F09C8();
  *&v27 = v8;
  v33 = 0;
  sub_2518E25AC(0, &qword_27F464B90, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2518DCCF0(&qword_27F464B98);
  v14 = v26;
  sub_2518F08E8();
  if (v14)
  {
  }

  else
  {
    v15 = v24;

    *&v27 = v25;
    v33 = 1;
    sub_2518F08E8();
    *&v27 = v15;
    v33 = 2;
    sub_2518F08E8();
    *&v27 = v23;
    v33 = 3;
    sub_2518E25AC(0, &qword_27F464BA0, &type metadata for ClinicalProductResultGroup, MEMORY[0x277D83940]);
    sub_2518DC9CC();
    sub_2518F08E8();
    LOBYTE(v27) = 4;
    sub_2518F0878();
    LOBYTE(v27) = 5;
    sub_2518F08B8();
    *&v27 = v20;
    v33 = 6;
    sub_2518E25AC(0, &qword_27F464BB8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    sub_2518DCABC();
    sub_2518F08E8();
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v27 = v34;
    v28 = v35;
    v33 = 7;
    sub_2518DCBAC();
    sub_2518F08E8();
    *&v27 = v19;
    v33 = 8;
    sub_2518F08E8();
    *&v27 = v18;
    v33 = 9;
    sub_2518E25AC(0, &qword_27F464BD8, &type metadata for ExpandedMedicationCluster, MEMORY[0x277D83940]);
    sub_2518DCC00();
    sub_2518F08E8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ScanningSession.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2518DD45C(0, &qword_27F464BF0, sub_2518DC978, &type metadata for ScanningSession.CodingKeys, MEMORY[0x277D844C8]);
  v37 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2518DC978();
  sub_2518F09B8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v36 = v6;
    sub_2518E25AC(0, &qword_27F464B90, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    LOBYTE(v39) = 0;
    sub_2518DCCF0(&qword_27F464BF8);
    sub_2518F0868();
    v35 = v50[0];
    LOBYTE(v39) = 1;
    sub_2518F0868();
    v34 = v50[0];
    LOBYTE(v39) = 2;
    sub_2518F0868();
    v33 = v50[0];
    sub_2518E25AC(0, &qword_27F464BA0, &type metadata for ClinicalProductResultGroup, MEMORY[0x277D83940]);
    LOBYTE(v39) = 3;
    v10 = sub_2518DCD74();
    sub_2518F0868();
    v30 = v10;
    v32 = v50[0];
    LOBYTE(v50[0]) = 4;
    v11 = sub_2518F07F8();
    v31 = v12;
    v13 = v11;
    LOBYTE(v50[0]) = 5;
    v29 = 0;
    sub_2518F0838();
    v15 = v14;
    sub_2518E25AC(0, &qword_27F464BB8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    LOBYTE(v39) = 6;
    sub_2518DCE64();
    sub_2518F0868();
    v28 = v13;
    v16 = v50[0];
    v62 = 7;
    sub_2518DCF54();
    sub_2518F0868();
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v75 = v68;
    v70 = v63;
    v71 = v64;
    LOBYTE(v39) = 8;
    sub_2518F0868();
    v17 = v33;
    v30 = v50[0];
    sub_2518E25AC(0, &qword_27F464BD8, &type metadata for ExpandedMedicationCluster, MEMORY[0x277D83940]);
    v60 = 9;
    sub_2518DCFA8();
    sub_2518F0868();
    (*(v36 + 8))(v8, v37);
    v18 = v61;
    v19 = v35;
    *&v39 = v35;
    *(&v39 + 1) = v34;
    v20 = v31;
    *&v40 = v17;
    *(&v40 + 1) = v32;
    *&v41 = v28;
    *(&v41 + 1) = v31;
    *&v42 = v15;
    *(&v42 + 1) = v16;
    v45 = v72;
    v46 = v73;
    v47 = v74;
    LOBYTE(v48) = v75;
    v43 = v70;
    v44 = v71;
    DWORD1(v48) = *&v69[3];
    *(&v48 + 1) = *v69;
    *(&v48 + 1) = v30;
    v49 = v61;
    *(a2 + 160) = v61;
    v21 = v46;
    *(a2 + 96) = v45;
    *(a2 + 112) = v21;
    v22 = v44;
    *(a2 + 64) = v43;
    *(a2 + 80) = v22;
    v23 = v42;
    *(a2 + 32) = v41;
    *(a2 + 48) = v23;
    v24 = v40;
    *a2 = v39;
    *(a2 + 16) = v24;
    v25 = v48;
    *(a2 + 128) = v47;
    *(a2 + 144) = v25;
    sub_2518C6E30(&v39, v50);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v50[0] = v19;
    v50[1] = v34;
    v50[2] = v17;
    v50[3] = v32;
    v50[4] = v28;
    v50[5] = v20;
    v50[6] = v15;
    v50[7] = v16;
    v53 = v72;
    v54 = v73;
    v55 = v74;
    v56 = v75;
    v51 = v70;
    v52 = v71;
    *&v57[3] = *&v69[3];
    *v57 = *v69;
    v58 = v30;
    v59 = v18;
    return sub_2518DD098(v50);
  }
}

unint64_t sub_2518D61A0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2518D61F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2518E1D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2518D6224(uint64_t a1)
{
  v2 = sub_2518DD0C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2518D6260(uint64_t a1)
{
  v2 = sub_2518DD0C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClinicalProductResultGroup.encode(to:)(void *a1)
{
  sub_2518DD45C(0, &qword_27F464C38, sub_2518DD0C8, &type metadata for ClinicalProductResultGroup.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518DD0C8();
  sub_2518F09C8();
  v17 = 0;
  v8 = v13;
  sub_2518F08D8();
  if (!v8)
  {
    v9 = v12;
    v16 = 1;
    sub_2518F08C8();
    v15 = v9;
    v14 = 2;
    sub_2518E25AC(0, &qword_27F464C48, &type metadata for SpecificProductResult, MEMORY[0x277D83940]);
    sub_2518DD11C();
    sub_2518F08E8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ClinicalProductResultGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2518DD45C(0, &qword_27F464C60, sub_2518DD0C8, &type metadata for ClinicalProductResultGroup.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518DD0C8();
  sub_2518F09B8();
  if (!v2)
  {
    v9 = v6;
    v10 = v16;
    v20 = 0;
    v11 = sub_2518F0858();
    v19 = 1;
    sub_2518F0848();
    v13 = v12;
    sub_2518E25AC(0, &qword_27F464C48, &type metadata for SpecificProductResult, MEMORY[0x277D83940]);
    v17 = 2;
    sub_2518DD20C();
    sub_2518F0868();
    (*(v9 + 8))(v8, v5);
    v15 = v18;
    *v10 = v11;
    *(v10 + 8) = v13;
    *(v10 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2518D6754()
{
  v1 = *v0;
  sub_2518F0978();
  MEMORY[0x253086690](v1);
  return sub_2518F09A8();
}

uint64_t sub_2518D679C()
{
  v1 = *v0;
  sub_2518F0978();
  MEMORY[0x253086690](v1);
  return sub_2518F09A8();
}

unint64_t sub_2518D67E0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2518D681C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000002518F6A90 == a2;
  if (v5 || (sub_2518F0918() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002518F6AB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2518F0918();

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

uint64_t sub_2518D690C(uint64_t a1)
{
  v2 = sub_2518DD2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2518D6948(uint64_t a1)
{
  v2 = sub_2518DD2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpecificProductResult.encode(to:)(void *a1)
{
  sub_2518DD45C(0, &qword_27F464C78, sub_2518DD2FC, &type metadata for SpecificProductResult.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518DD2FC();
  sub_2518F09C8();
  v11 = 0;
  v7 = v9;
  sub_2518F08D8();
  if (!v7)
  {
    v10 = 1;
    sub_2518F08C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SpecificProductResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2518DD45C(0, &qword_27F464C88, sub_2518DD2FC, &type metadata for SpecificProductResult.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518DD2FC();
  sub_2518F09B8();
  if (!v2)
  {
    v9 = v14;
    v16 = 0;
    v10 = sub_2518F0858();
    v15 = 1;
    sub_2518F0848();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    *(v9 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2518D6D34@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_2518E23D4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2518F1EA0;
  v4 = [a1 specificProduct];
  v5 = [v4 identifier];
  v6 = [v5 numberRepresentation];

  v7 = [v6 stringValue];
  v8 = sub_2518F00B8();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v11 = [a1 specificProduct];
  v12 = sub_2518F0598();
  v14 = v13;

  *(inited + 48) = v12;
  *(inited + 56) = v14;
  v76 = sub_2518E14B0(inited);
  swift_setDeallocating();
  sub_2518E243C(inited + 32);
  v15 = [a1 tradeNameProduct];
  if (v15)
  {
    v16 = v15;
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_2518F1EA0;
    v18 = [v16 identifier];
    v19 = [v18 numberRepresentation];

    v20 = [v19 stringValue];
    v21 = sub_2518F00B8();
    v23 = v22;

    *(v17 + 32) = v21;
    *(v17 + 40) = v23;
    *(v17 + 48) = sub_2518F0598();
    *(v17 + 56) = v24;
    v75 = sub_2518E14B0(v17);
    swift_setDeallocating();
    sub_2518E243C(v17 + 32);
  }

  else
  {
    v75 = 0;
  }

  v25 = &selRef_begin;
  v26 = [a1 routedDoseFormProducts];
  sub_2518BC1A8(0, &qword_27F464A18);
  v27 = sub_2518F01B8();

  if (v27 >> 62)
  {
    goto LABEL_24;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v28; i = a1)
  {
    v29 = 0;
    v84 = v27 & 0xC000000000000001;
    v88 = MEMORY[0x277D84F90];
    v80 = v28;
    v82 = v27 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v84)
      {
        v30 = MEMORY[0x253086400](v29, v27);
      }

      else
      {
        if (v29 >= *(v82 + 16))
        {
          goto LABEL_21;
        }

        v30 = *(v27 + 8 * v29 + 32);
      }

      v31 = v30;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v86 = v29 + 1;
      v32 = v27;
      v33 = [v30 identifier];
      v34 = [v33 numberRepresentation];

      v35 = [v34 v25[57]];
      v36 = sub_2518F00B8();
      v38 = v37;

      v25 = sub_2518F0598();
      v27 = v39;
      sub_2518E2668(0, &qword_27F464E28, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
      v40 = sub_2518F07C8();

      v41 = sub_2518DDEC8(v36, v38);
      a1 = v42;

      if (a1)
      {
        goto LABEL_22;
      }

      v40[(v41 >> 6) + 8] |= 1 << v41;
      v43 = (v40[6] + 16 * v41);
      *v43 = v36;
      v43[1] = v38;
      v44 = (v40[7] + 16 * v41);
      *v44 = v25;
      v44[1] = v27;

      v45 = v40[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_23;
      }

      v40[2] = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_2518DD958(0, v88[2] + 1, 1, v88);
      }

      v25 = &selRef_begin;
      v27 = v32;
      v49 = v88[2];
      v48 = v88[3];
      if (v49 >= v48 >> 1)
      {
        v88 = sub_2518DD958((v48 > 1), v49 + 1, 1, v88);
      }

      v88[2] = v49 + 1;
      v88[v49 + 4] = v40;
      ++v29;
      if (v86 == v80)
      {
        goto LABEL_26;
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
    v28 = sub_2518F0648();
  }

  v88 = MEMORY[0x277D84F90];
LABEL_26:

  v50 = [i ingredientProducts];
  v51 = sub_2518F01B8();

  if (v51 >> 62)
  {
    goto LABEL_46;
  }

  for (j = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2518F0648())
  {
    v53 = 0;
    v85 = v51 & 0xC000000000000001;
    v54 = MEMORY[0x277D84F90];
    v81 = j;
    v83 = v51 & 0xFFFFFFFFFFFFFF8;
    v79 = v51;
    while (1)
    {
      if (v85)
      {
        v55 = MEMORY[0x253086400](v53, v51);
      }

      else
      {
        if (v53 >= *(v83 + 16))
        {
          goto LABEL_43;
        }

        v55 = *(v51 + 8 * v53 + 32);
      }

      v56 = v55;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      v87 = v53 + 1;
      v57 = [v55 identifier];
      v58 = [v57 numberRepresentation];

      v59 = [v58 v25[57]];
      v60 = sub_2518F00B8();
      v25 = v61;

      v51 = sub_2518F0598();
      v63 = v62;
      sub_2518E2668(0, &qword_27F464E28, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
      v64 = sub_2518F07C8();

      v65 = sub_2518DDEC8(v60, v25);
      v67 = v66;

      if (v67)
      {
        goto LABEL_44;
      }

      v64[(v65 >> 6) + 8] |= 1 << v65;
      v68 = (v64[6] + 16 * v65);
      *v68 = v60;
      v68[1] = v25;
      v69 = (v64[7] + 16 * v65);
      *v69 = v51;
      v69[1] = v63;

      v70 = v64[2];
      v46 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v46)
      {
        goto LABEL_45;
      }

      v64[2] = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_2518DD958(0, v54[2] + 1, 1, v54);
      }

      v25 = &selRef_begin;
      v51 = v79;
      v73 = v54[2];
      v72 = v54[3];
      if (v73 >= v72 >> 1)
      {
        v54 = sub_2518DD958((v72 > 1), v73 + 1, 1, v54);
      }

      v54[2] = v73 + 1;
      v54[v73 + 4] = v64;
      ++v53;
      if (v87 == v81)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_48:

  *a2 = v76;
  a2[1] = v75;
  a2[2] = v88;
  a2[3] = v54;
  return result;
}

unint64_t sub_2518D74BC()
{
  v1 = 0x6369666963657073;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2518D7550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2518E1E44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2518D7584(uint64_t a1)
{
  v2 = sub_2518DD350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2518D75C0(uint64_t a1)
{
  v2 = sub_2518DD350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExpandedMedicationCluster.encode(to:)(void *a1)
{
  sub_2518DD45C(0, &qword_27F464C90, sub_2518DD350, &type metadata for ExpandedMedicationCluster.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518DD350();

  sub_2518F09C8();
  v20 = v9;
  v19 = 0;
  sub_2518E2668(0, &qword_27F464CA0, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
  sub_2518DD4C4(&qword_27F464CA8);
  v11 = v18;
  sub_2518F08E8();
  if (v11)
  {
  }

  else
  {
    v12 = v16;

    v20 = v17;
    v19 = 1;
    sub_2518F0898();
    v20 = v12;
    v19 = 2;
    sub_2518E24A8(0, &qword_27F464CB0, MEMORY[0x277D83940]);
    sub_2518DD3A4();
    sub_2518F08E8();
    v20 = v15;
    v19 = 3;
    sub_2518F08E8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ExpandedMedicationCluster.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2518DD45C(0, &qword_27F464CC0, sub_2518DD350, &type metadata for ExpandedMedicationCluster.CodingKeys, MEMORY[0x277D844C8]);
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2518DD350();
  sub_2518F09B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  sub_2518E2668(0, &qword_27F464CA0, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
  v19 = 0;
  sub_2518DD4C4(&qword_27F464CC8);
  v10 = v18;
  sub_2518F0868();
  v17 = v20;
  v19 = 1;
  sub_2518F0818();
  v16 = v20;
  sub_2518E24A8(0, &qword_27F464CB0, MEMORY[0x277D83940]);
  v19 = 2;
  sub_2518DD548();
  sub_2518F0868();
  v15 = v20;
  v19 = 3;
  sub_2518F0868();
  (*(v9 + 8))(v8, v10);
  v12 = v20;
  v13 = v16;
  *a2 = v17;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2518D7CF4()
{
  type metadata accessor for ScanningSessionLogger();
  v0 = swift_allocObject();
  result = sub_2518D80D0(120.0);
  qword_27F464B60 = v0;
  return result;
}

uint64_t static ScanningSessionLogger.shared.getter()
{
  if (qword_27F464550 != -1)
  {
    swift_once();
  }
}

__n128 sub_2518D7D98@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2518DD600();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518DD670(&v51);
  sub_2518EF6B8();
  v9 = *(v1 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionIds);
  v10 = *(v9 + 16);
  if (v10)
  {
    sub_2518DD690(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v10 - 1), v8);
    v11 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (*(v12 + 16))
    {

      v13 = sub_2518DDDCC(v8);
      if (v14)
      {
        v15 = (*(v12 + 56) + 168 * v13);
        v17 = v15[1];
        v16 = v15[2];
        v36[0] = *v15;
        v36[1] = v17;
        v36[2] = v16;
        v18 = v15[3];
        v19 = v15[4];
        v20 = v15[6];
        v36[5] = v15[5];
        v36[6] = v20;
        v36[3] = v18;
        v36[4] = v19;
        v21 = v15[7];
        v22 = v15[8];
        v23 = v15[9];
        v37 = *(v15 + 20);
        v36[8] = v22;
        v36[9] = v23;
        v36[7] = v21;
        memmove(v38, v15, 0xA8uLL);
        nullsub_1(v38);
        sub_2518C6E30(v36, &v35);

        v48 = v38[8];
        v49 = v38[9];
        v50 = v39;
        v44 = v38[4];
        v45 = v38[5];
        v46 = v38[6];
        v47 = v38[7];
        v40 = v38[0];
        v41 = v38[1];
        v25 = v38[2];
        v24 = v38[3];
LABEL_8:
        v42 = v25;
        v43 = v24;
        v26 = *(v5 + 48);
        v27 = sub_2518EF618();
        (*(*(v27 - 8) + 8))(&v8[v26], v27);
        v28 = sub_2518EF648();
        (*(*(v28 - 8) + 8))(v8, v28);
        goto LABEL_9;
      }
    }

    v48 = v59;
    v49 = v60;
    v50 = v61;
    v44 = v55;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v40 = v51;
    v41 = v52;
    v24 = v54;
    v25 = v53;
    goto LABEL_8;
  }

  v48 = v59;
  v49 = v60;
  v50 = v61;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v40 = v51;
  v41 = v52;
  v42 = v53;
  v43 = v54;
LABEL_9:
  sub_2518EF6C8();
  v29 = v49;
  *(a1 + 128) = v48;
  *(a1 + 144) = v29;
  *(a1 + 160) = v50;
  v30 = v45;
  *(a1 + 64) = v44;
  *(a1 + 80) = v30;
  v31 = v47;
  *(a1 + 96) = v46;
  *(a1 + 112) = v31;
  v32 = v41;
  *a1 = v40;
  *(a1 + 16) = v32;
  result = v43;
  *(a1 + 32) = v42;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2518D80D0(double a1)
{
  v2 = v1;
  v4 = sub_2518EF5B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_2518EF598();
  sub_2518EF588();
  (*(v5 + 8))(v7, v4);
  v10 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_encoder;
  sub_2518EF538();
  swift_allocObject();
  *(v2 + v10) = sub_2518EF528();
  v11 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_lock;
  sub_2518EF6E8();
  swift_allocObject();
  *(v2 + v11) = sub_2518EF6D8();
  *(v2 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_controlTimer) = 0;
  *(v2 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_persistedLogTimer) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionIds) = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
  *(v2 + v13) = sub_2518DFC28(v12);
  *(v2 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionValidPeriod) = a1;
  sub_2518D840C();
  sub_2518DC48C();
  return v2;
}

uint64_t ScanningSessionLogger.deinit()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_controlTimer;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_controlTimer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_persistedLogTimer;
  v4 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_persistedLogTimer);
  if (v4)
  {
    [v4 invalidate];
  }

  sub_2518DC48C();
  v5 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_logDirectory;
  v6 = sub_2518EF5B8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t ScanningSessionLogger.__deallocating_deinit()
{
  ScanningSessionLogger.deinit();

  return swift_deallocClassInstance();
}

void sub_2518D840C()
{
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionValidPeriod);
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_2518E21FC;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2518D866C;
  v7[3] = &block_descriptor_2;
  v4 = _Block_copy(v7);

  v5 = [v1 scheduledTimerWithTimeInterval:1 repeats:v4 block:v2];
  _Block_release(v4);
  v6 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_controlTimer);
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_controlTimer) = v5;
}

uint64_t sub_2518D8530(void *a1)
{
  v2 = sub_2518EF618();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = [a1 fireDate];
    sub_2518EF5F8();

    sub_2518EF5D8();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    sub_2518DBB28(v9);
  }

  return result;
}

void sub_2518D866C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2518D86D4@<X0>(uint64_t a1@<X8>)
{
  sub_2518DD600();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2518EF618();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EF638();
  sub_2518EF6B8();
  sub_2518EF608();
  v12 = *(v4 + 56);
  v13 = sub_2518EF648();
  (*(*(v13 - 8) + 16))(v7, a1, v13);
  (*(v9 + 32))(&v7[v12], v11, v8);
  v14 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionIds;
  v15 = *(v1 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionIds);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_2518DDAB4(0, v15[2] + 1, 1, v15, &qword_27F464E38, sub_2518DD600, sub_2518DD600);
    *(v1 + v14) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_2518DDAB4(v17 > 1, v18 + 1, 1, v15, &qword_27F464E38, sub_2518DD600, sub_2518DD600);
  }

  v15[2] = v18 + 1;
  sub_2518DDE64(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
  *(v1 + v14) = v15;
  return sub_2518EF6C8();
}

int64_t sub_2518D8980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, __int128 *a8)
{
  v73 = a5;
  v74 = a6;
  v78 = a3;
  v79 = a4;
  v77 = a2;
  v75 = a1;
  v11 = sub_2518EF618();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a8[3];
  v102 = a8[2];
  v103 = v13;
  v104 = a8[4];
  v14 = a8[1];
  v100 = *a8;
  v105 = *(a8 + 80);
  v101 = v14;
  v76 = v8;
  v15 = *(v8 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_lock);
  sub_2518EF6B8();
  if (a7)
  {
    v16 = [a7 resolvedIds];
    sub_2518BC1A8(0, &qword_27F464868);
    v17 = sub_2518F01B8();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v18 = v17 >> 62;
  if (v17 >> 62)
  {
    goto LABEL_73;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0xA)
  {
    v20 = 10;
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v20)
  {
    goto LABEL_85;
  }

  do
  {
    v69 = v15;
    if ((v17 & 0xC000000000000001) != 0 && v20)
    {
      sub_2518BC1A8(0, &qword_27F464868);

      v21 = 0;
      do
      {
        v22 = v21 + 1;
        sub_2518F06E8();
        v21 = v22;
      }

      while (v20 != v22);
    }

    else
    {
    }

    if (v18)
    {
      v24 = sub_2518F0798();
      v25 = v27;
      v23 = v28;
      v26 = v29;

      if ((v26 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v23 = 0;
      v24 = v17 & 0xFFFFFFFFFFFFFF8;
      v25 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
      v26 = (2 * v20) | 1;
      if ((v26 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_2518F0928();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCastClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = MEMORY[0x277D84F90];
    }

    v32 = *(v31 + 16);

    if (__OFSUB__(v26 >> 1, v23))
    {
      __break(1u);
LABEL_77:
      swift_unknownObjectRelease_n();
LABEL_19:
      sub_2518DE414(v24, v25, v23, v26, &qword_27F464868);
      v18 = v30;
LABEL_26:
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    if (v32 != (v26 >> 1) - v23)
    {
      goto LABEL_77;
    }

    v18 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v18)
    {
      v18 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

LABEL_27:
    v33 = objc_opt_self();
    v15 = 0x2796D3000;
    if ([v33 isAppleInternalInstall])
    {
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
    }

    if ([v33 isAppleInternalInstall])
    {
    }

    else
    {
      v78 = MEMORY[0x277D84F90];
    }

    if ([v33 isAppleInternalInstall])
    {
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
    }

    if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
    {
LABEL_75:
      v34 = sub_2518F0648();
    }

    else
    {
      v34 = *(v18 + 16);
    }

    v17 = MEMORY[0x277D84F90];
    if (!v34)
    {
LABEL_68:

      v60 = v74;

      v61 = v70;
      sub_2518EF608();
      sub_2518EF5D8();
      v63 = v62;
      (*(v71 + 8))(v61, v72);
      v93 = v102;
      v94 = v103;
      v95 = v104;
      v96 = v105;
      v91 = v100;
      v92 = v101;
      v90[0] = v77;
      v90[1] = v78;
      v90[2] = v79;
      v90[3] = v17;
      v90[4] = v73;
      v90[5] = v60;
      v90[6] = v63;
      v90[7] = MEMORY[0x277D84F90];
      *&v97[3] = *(v89 + 3);
      *v97 = v89[0];
      v98 = MEMORY[0x277D84F90];
      v99 = MEMORY[0x277D84F90];
      v64 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
      v65 = v76;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v65 + v64);
      *(v65 + v64) = 0x8000000000000000;
      sub_2518DF024(v90, v75, isUniquelyReferenced_nonNull_native);
      *(v65 + v64) = v88;
      swift_endAccess();
      return sub_2518EF6C8();
    }

    v35 = 0;
    v82 = v18 + 32;
    v83 = v18 & 0xC000000000000001;
    v80 = v34;
    v81 = v18;
    while (1)
    {
      if (v83)
      {
        v36 = MEMORY[0x253086400](v35, v18);
        v37 = __OFADD__(v35, 1);
        v38 = v35 + 1;
        if (v37)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v35 >= *(v18 + 16))
        {
          goto LABEL_72;
        }

        v36 = *(v82 + 8 * v35);
        v37 = __OFADD__(v35, 1);
        v38 = v35 + 1;
        if (v37)
        {
          goto LABEL_71;
        }
      }

      v84 = v36;
      v85 = v38;
      v15 = [v36 subHgIds];
      sub_2518BC1A8(0, &qword_27F464A40);
      v39 = sub_2518F01B8();

      if (v39 >> 62)
      {
        break;
      }

      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v17;
      if (v40)
      {
        goto LABEL_46;
      }

LABEL_62:
      v42 = MEMORY[0x277D84F90];
LABEL_63:

      v52 = v84;
      v53 = [v84 primaryHgId];
      [v52 maxJaccardSimilarity];
      v55 = v54;

      v17 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2518DC728(0, *(v17 + 16) + 1, 1, v17);
      }

      v56 = v80;
      v18 = v81;
      v35 = v85;
      v58 = *(v17 + 16);
      v57 = *(v17 + 24);
      v15 = (v58 + 1);
      if (v58 >= v57 >> 1)
      {
        v17 = sub_2518DC728((v57 > 1), v58 + 1, 1, v17);
      }

      *(v17 + 16) = v15;
      v59 = v17 + 24 * v58;
      *(v59 + 32) = v53;
      *(v59 + 40) = v55;
      *(v59 + 48) = v42;
      if (v35 == v56)
      {
        goto LABEL_68;
      }
    }

    v40 = sub_2518F0648();
    v86 = v17;
    if (!v40)
    {
      goto LABEL_62;
    }

LABEL_46:
    v41 = 0;
    v87 = v39 & 0xC000000000000001;
    v18 = v39 & 0xFFFFFFFFFFFFFF8;
    v42 = MEMORY[0x277D84F90];
    v43 = v39;
    v44 = v40;
    while (1)
    {
      if (v87)
      {
        v45 = MEMORY[0x253086400](v41, v39);
      }

      else
      {
        if (v41 >= *(v18 + 16))
        {
          goto LABEL_70;
        }

        v45 = *(v39 + 8 * v41 + 32);
      }

      v15 = v45;
      v46 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v17 = [v45 hgId];
      [v15 jaccardSimilarity];
      v48 = v47;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2518DC860(0, *(v42 + 2) + 1, 1, v42);
      }

      v50 = *(v42 + 2);
      v49 = *(v42 + 3);
      v15 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        v42 = sub_2518DC860((v49 > 1), v50 + 1, 1, v42);
      }

      *(v42 + 2) = v15;
      v51 = &v42[16 * v50];
      *(v51 + 4) = v17;
      *(v51 + 10) = v48;
      ++v41;
      v39 = v43;
      if (v46 == v44)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v67 = sub_2518F0648();
    if (sub_2518F0648() < 0)
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v67 >= 0xA)
    {
      v68 = 10;
    }

    else
    {
      v68 = v67;
    }

    if (v67 >= 0)
    {
      v20 = v68;
    }

    else
    {
      v20 = 10;
    }

    result = sub_2518F0648();
  }

  while (result >= v20);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_2518D9168(unint64_t a1, void *a2)
{
  v3 = v2;
  sub_2518EF6B8();
  v6 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
  swift_beginAccess();
  v49 = v6;
  v50 = v3;
  v7 = *(v3 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_2518DDDCC(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 168 * v8;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v63 = *v10;
      v64 = v12;
      v65 = v11;
      v13 = *(v10 + 48);
      v14 = *(v10 + 64);
      v15 = *(v10 + 96);
      v68 = *(v10 + 80);
      v69 = v15;
      v66 = v13;
      v67 = v14;
      v16 = *(v10 + 112);
      v17 = *(v10 + 128);
      v18 = *(v10 + 144);
      v73 = *(v10 + 160);
      v71 = v17;
      v72 = v18;
      v70 = v16;
      sub_2518C6E30(&v63, v84);

      v80 = v69;
      v81 = v70;
      v82 = v71;
      v47 = v73;
      v83 = v72;
      v76 = v65;
      v77 = v66;
      v78 = v67;
      v79 = v68;
      v74 = v63;
      v75 = v64;
      v19 = [a2 resolvedIds];
      sub_2518BC1A8(0, &qword_27F464868);
      v20 = sub_2518F01B8();

      if (v20 >> 62)
      {
        goto LABEL_39;
      }

      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v20; v21; i = v20)
      {
        v22 = 0;
        v54 = v20 & 0xFFFFFFFFFFFFFF8;
        v55 = v20 & 0xC000000000000001;
        v23 = MEMORY[0x277D84F90];
        v52 = a1;
        v53 = v20 + 32;
        v51 = v21;
        while (1)
        {
          if (v55)
          {
            v24 = MEMORY[0x253086400](v22, i);
            v25 = __OFADD__(v22, 1);
            v26 = v22 + 1;
            if (v25)
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (v22 >= *(v54 + 16))
            {
              goto LABEL_38;
            }

            v24 = *(v53 + 8 * v22);
            v25 = __OFADD__(v22, 1);
            v26 = v22 + 1;
            if (v25)
            {
              goto LABEL_37;
            }
          }

          v56 = v24;
          v57 = v26;
          v27 = [v24 subHgIds];
          sub_2518BC1A8(0, &qword_27F464A40);
          v20 = sub_2518F01B8();

          if (v20 >> 62)
          {
            break;
          }

          v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v58 = v23;
          if (v28)
          {
            goto LABEL_11;
          }

LABEL_27:
          v30 = MEMORY[0x277D84F90];
LABEL_28:

          v39 = [v56 primaryHgId];
          [v56 maxJaccardSimilarity];
          v41 = v40;

          v23 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_2518DC728(0, *(v58 + 2) + 1, 1, v58);
          }

          a1 = v52;
          v43 = *(v23 + 2);
          v42 = *(v23 + 3);
          v20 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            v23 = sub_2518DC728((v42 > 1), v43 + 1, 1, v23);
          }

          *(v23 + 2) = v20;
          v44 = &v23[24 * v43];
          *(v44 + 4) = v39;
          *(v44 + 10) = v41;
          *(v44 + 6) = v30;
          v22 = v57;
          if (v57 == v51)
          {
            goto LABEL_41;
          }
        }

        v28 = sub_2518F0648();
        v58 = v23;
        if (!v28)
        {
          goto LABEL_27;
        }

LABEL_11:
        v29 = 0;
        v30 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x253086400](v29, v20);
          }

          else
          {
            if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v31 = *(v20 + 8 * v29 + 32);
          }

          v32 = v31;
          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          v34 = [v31 hgId];
          [v32 jaccardSimilarity];
          v36 = v35;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2518DC860(0, *(v30 + 2) + 1, 1, v30);
          }

          a1 = *(v30 + 2);
          v37 = *(v30 + 3);
          if (a1 >= v37 >> 1)
          {
            v30 = sub_2518DC860((v37 > 1), a1 + 1, 1, v30);
          }

          *(v30 + 2) = a1 + 1;
          v38 = &v30[16 * a1];
          *(v38 + 4) = v34;
          *(v38 + 10) = v36;
          ++v29;
          if (v33 == v28)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v21 = sub_2518F0648();
      }

      v23 = MEMORY[0x277D84F90];
LABEL_41:

      v84[6] = v80;
      v84[7] = v81;
      v84[8] = v82;
      v84[2] = v76;
      v84[3] = v77;
      v84[4] = v78;
      v84[5] = v79;
      v84[0] = v74;
      v84[1] = v75;
      v85 = v83;
      v86 = v23;
      v87 = v47;
      swift_beginAccess();
      sub_2518C6E30(v84, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v59[0] = *(v50 + v49);
      *(v50 + v49) = 0x8000000000000000;
      sub_2518DF024(v84, a1, isUniquelyReferenced_nonNull_native);
      *(v50 + v49) = *&v59[0];
      swift_endAccess();
      v59[7] = v81;
      v59[8] = v82;
      v59[2] = v76;
      v59[3] = v77;
      v59[4] = v78;
      v59[5] = v79;
      v59[6] = v80;
      v59[0] = v74;
      v59[1] = v75;
      v60 = v83;
      v61 = v23;
      v62 = v47;
      sub_2518DD098(v59);
    }

    else
    {
    }
  }

  return sub_2518EF6C8();
}

uint64_t sub_2518D96E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_2518EF6B8();
  v6 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_2518DDDCC(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 168 * v8;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v38 = *v10;
      v39 = v12;
      v40 = v11;
      v13 = *(v10 + 48);
      v14 = *(v10 + 64);
      v15 = *(v10 + 96);
      v43 = *(v10 + 80);
      v44 = v15;
      v41 = v13;
      v42 = v14;
      v16 = *(v10 + 112);
      v17 = *(v10 + 128);
      v18 = *(v10 + 144);
      v48 = *(v10 + 160);
      v46 = v17;
      v47 = v18;
      v45 = v16;
      sub_2518C6E30(&v38, &v59);

      v55 = v44;
      v56 = v45;
      v57 = v46;
      v58 = v47;
      v51 = v40;
      v52 = v41;
      v53 = v42;
      v54 = v43;
      v49 = v38;
      v50 = v39;
      if (a2 >> 62)
      {
        goto LABEL_26;
      }

      v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v31 = v6;
      v32 = a1;
      v33 = v3;
      if (v19)
      {
        v20 = 0;
        v34 = a2 & 0xC000000000000001;
        v21 = a2 & 0xFFFFFFFFFFFFFF8;
        v22 = MEMORY[0x277D84F90];
        v23 = a2;
        a1 = v19;
        while (1)
        {
          if (v34)
          {
            v24 = MEMORY[0x253086400](v20, a2);
            v25 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v20 >= *(v21 + 16))
            {
              goto LABEL_25;
            }

            v24 = *(a2 + 8 * v20 + 32);
            v25 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              v19 = sub_2518F0648();
              goto LABEL_5;
            }
          }

          sub_2518D6D34(v24, &v59);
          v6 = *(&v59 + 1);
          v3 = v59;
          v35 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_2518DDCA8(0, *(v22 + 2) + 1, 1, v22);
          }

          v27 = *(v22 + 2);
          v26 = *(v22 + 3);
          if (v27 >= v26 >> 1)
          {
            v22 = sub_2518DDCA8((v26 > 1), v27 + 1, 1, v22);
          }

          *(v22 + 2) = v27 + 1;
          v28 = &v22[32 * v27];
          *(v28 + 4) = v3;
          *(v28 + 5) = v6;
          *(v28 + 3) = v35;
          ++v20;
          a2 = v23;
          if (v25 == a1)
          {
            goto LABEL_22;
          }
        }
      }

      v22 = MEMORY[0x277D84F90];
LABEL_22:

      v65 = v55;
      v66 = v56;
      v67 = v57;
      v68 = v58;
      v61 = v51;
      v62 = v52;
      v63 = v53;
      v64 = v54;
      v59 = v49;
      v60 = v50;
      v69 = v22;
      swift_beginAccess();
      sub_2518C6E30(&v59, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36[0] = *(v33 + v31);
      *(v33 + v31) = 0x8000000000000000;
      sub_2518DF024(&v59, v32, isUniquelyReferenced_nonNull_native);
      *(v33 + v31) = *&v36[0];
      swift_endAccess();
      v36[7] = v56;
      v36[8] = v57;
      v36[9] = v58;
      v36[2] = v51;
      v36[3] = v52;
      v36[4] = v53;
      v36[5] = v54;
      v36[6] = v55;
      v36[0] = v49;
      v36[1] = v50;
      v37 = v22;
      sub_2518DD098(v36);
    }

    else
    {
    }
  }

  return sub_2518EF6C8();
}

uint64_t sub_2518D9A30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v8 = v7;
  sub_2518EF6B8();
  if (![objc_opt_self() isAppleInternalInstall])
  {
    return sub_2518EF6C8();
  }

  v34 = a6;
  v16 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
  swift_beginAccess();
  v17 = *(v7 + v16);
  if (!*(v17 + 16))
  {
    return sub_2518EF6C8();
  }

  v18 = sub_2518DDDCC(a1);
  if ((v19 & 1) == 0)
  {

    return sub_2518EF6C8();
  }

  v20 = *(v17 + 56) + 168 * v18;
  v22 = *(v20 + 16);
  v21 = *(v20 + 32);
  v38 = *v20;
  v39 = v22;
  v40 = v21;
  v23 = *(v20 + 48);
  v24 = *(v20 + 64);
  v25 = *(v20 + 96);
  v43 = *(v20 + 80);
  v44 = v25;
  v41 = v23;
  v42 = v24;
  v26 = *(v20 + 112);
  v27 = *(v20 + 128);
  v28 = *(v20 + 144);
  *&v47[16] = *(v20 + 160);
  v46 = v27;
  *v47 = v28;
  v45 = v26;
  sub_2518C6E30(&v38, v55);

  v52 = v42;
  v53 = v43;
  v54 = v44;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v29 = *(&v45 + 1);
  v30 = v47[0];
  v37 = v45;
  v36 = v46;
  if (a3)
  {
    a2 = *(&v44 + 1);
    if (a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v37 = 0;
  if ((a5 & 1) == 0)
  {
LABEL_9:
    v36 = 0;
    v29 = a4;
  }

LABEL_10:
  if (a7)
  {
    v31 = *(&v46 + 1);
  }

  else
  {
    v30 = 0;
    v31 = v34;
  }

  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55[0] = v48;
  v55[1] = v49;
  v55[2] = v50;
  v55[3] = v51;
  v55[4] = v42;
  v55[5] = v43;
  v56 = v44;
  v57 = a2;
  v58 = v37;
  *v59 = *(&v45 + 1);
  *&v59[3] = DWORD1(v45);
  v60 = v29;
  v61 = v36;
  *v62 = *(&v46 + 1);
  *&v62[3] = DWORD1(v46);
  v63 = v31;
  v64 = v30;
  *&v65[15] = *&v47[16];
  *v65 = *&v47[1];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v8 + v16);
  *(v8 + v16) = 0x8000000000000000;
  sub_2518DF024(v55, a1, isUniquelyReferenced_nonNull_native);
  *(v8 + v16) = v35;
  swift_endAccess();
  return sub_2518EF6C8();
}

void sub_2518D9CC8(uint64_t a1@<X0>, void *a2@<X1>, id a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_2518EF618();
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518DD600();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    a3 = [a2 firstConceptIdentifier];
  }

  else
  {
    v15 = a3;
  }

  v16 = sub_2518EF648();
  if ((*(*(v16 - 8) + 48))(a1, 1, v16) != 1)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_10:
    *a4 = xmmword_2518F22E0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    return;
  }

  v17 = *(v4 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionIds);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_9:

    goto LABEL_10;
  }

  v34 = a3;
  v19 = v37;
  sub_2518DD690(v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * (v18 - 1), v37);
  sub_2518D7D98(v38);
  v47 = v38[8];
  v48 = v38[9];
  v49 = v39;
  v43 = v38[4];
  v44 = v38[5];
  v45 = v38[6];
  v46 = v38[7];
  v40[0] = v38[0];
  v40[1] = v38[1];
  v41 = v38[2];
  v42 = v38[3];
  if (sub_2518BBF18(v40) == 1)
  {
    sub_2518DF1F4(v19);

    goto LABEL_10;
  }

  sub_2518EF608();
  sub_2518EF5E8();
  v21 = v20;
  v22 = v20;
  (*(v36 + 8))(v11, v9);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v33 = *(&v41 + 1);
  v23 = [v34 numberRepresentation];
  v24 = [v23 stringValue];

  v35 = sub_2518F00B8();
  v36 = v25;

  v26 = v49;

  sub_2518DF250(v38, &unk_27F464648, &type metadata for ScanningSession, MEMORY[0x277D83D88], sub_2518E25AC);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = v26 + 56;
    while (v28 < *(v26 + 16))
    {
      if (*(*(v29 - 24) + 16))
      {

        sub_2518DDEC8(v35, v36);
        if (v30)
        {

          v31 = 0;
          goto LABEL_23;
        }
      }

      ++v28;
      v29 += 32;
      if (v27 == v28)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_21:

  v28 = 0;
  v31 = 1;
LABEL_23:
  v32 = v33 == 0;
  sub_2518DF1F4(v37);
  *a4 = v21;
  *(a4 + 8) = v32;
  *(a4 + 16) = v28;
  *(a4 + 24) = v31;
}

uint64_t sub_2518DA190(uint64_t a1)
{
  v169 = *MEMORY[0x277D85DE8];
  v2 = sub_2518F00D8();
  v3 = *(v2 - 8);
  v153 = v2;
  v154 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v139 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v152 = &v123 - v6;
  v7 = sub_2518EF5B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v144 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v146 = &v123 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v123 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v140 = &v123 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v123 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v147 = &v123 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v148 = &v123 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v150 = &v123 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v123 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v123 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v157 = &v123 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v123 - v34;
  v36 = *a1;
  v155 = *(a1 + 8);
  v156 = v36;
  v37 = *(a1 + 24);
  v151 = *(a1 + 16);
  v149 = v37;
  v38 = *(a1 + 40);
  v138 = *(a1 + 32);
  v141 = v38;
  v143 = *(a1 + 56);
  v39 = *(a1 + 112);
  v165 = *(a1 + 96);
  v166 = v39;
  v167 = *(a1 + 128);
  v168 = *(a1 + 144);
  v40 = *(a1 + 80);
  v163 = *(a1 + 64);
  v164 = v40;
  v42 = *(a1 + 152);
  v41 = *(a1 + 160);
  if (![objc_opt_self() isAppleInternalInstall])
  {
    return MEMORY[0x277D84F90];
  }

  v132 = v41;
  v133 = v42;
  v131 = v19;
  v134 = v28;
  v136 = v31;
  v142 = v8;
  v145 = v7;
  sub_2518F02B8();
  sub_2518EF588();

  v43 = [objc_opt_self() defaultManager];
  v44 = sub_2518EF578();
  sub_2518DF2B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2518F1EA0;
  v46 = *MEMORY[0x277CCA1B0];
  *(inited + 32) = *MEMORY[0x277CCA1B0];
  v47 = *MEMORY[0x277CCA1A0];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v48;
  *(inited + 40) = v47;
  v49 = v46;
  v50 = v47;
  sub_2518E138C(inited, sub_2518E2334, &qword_27F464D18, type metadata accessor for FileAttributeKey);
  swift_setDeallocating();
  sub_2518DF250(inited + 32, &qword_27F464D18, type metadata accessor for FileAttributeKey, MEMORY[0x277D84F70] + 8, sub_2518E25FC);
  type metadata accessor for FileAttributeKey(0);
  sub_2518E2564(&qword_27F464628, type metadata accessor for FileAttributeKey);
  v51 = sub_2518F0048();
  v52 = v43;

  *&v161[0] = 0;
  LODWORD(v47) = [v43 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:v51 error:v161];

  if (v47)
  {
    v53 = *&v161[0];
    v54 = v157;
    v135 = v35;
    sub_2518EF588();
    v55 = *(v158 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_encoder);
    *&v161[0] = v156;
    sub_2518E25AC(0, &qword_27F464B90, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v57 = v56;
    v58 = sub_2518DCCF0(&qword_27F464B98);

    v59 = v159;
    v60 = sub_2518EF518();
    if (v59)
    {

      v62 = *(v142 + 8);
      v66 = v145;
      v62(v54, v145);
      return (v62)(v135, v66);
    }

    else
    {
      v64 = v61;
      v129 = v58;
      v130 = v55;
      v159 = v57;
      v65 = v60;

      sub_2518EF5C8();
      v128 = v65;
      v156 = v52;
      sub_2518EF588();
      *&v161[0] = v155;

      v68 = sub_2518EF518();
      v70 = v69;

      sub_2518EF5C8();
      v129 = v68;
      v155 = v70;
      sub_2518EF588();
      *&v161[0] = v151;
      sub_2518DFEF0();

      v71 = sub_2518F0068();
      v73 = v72;

      *&v161[0] = v71;
      *(&v161[0] + 1) = v73;
      v74 = v152;
      sub_2518F00C8();
      v75 = sub_2518DFF6C();
      sub_2518F05E8();
      v76 = v74;
      v78 = v154 + 1;
      v77 = v154[1];
      v151 = v75;
      v152 = v77;
      (v77)(v76, v153);

      sub_2518EF588();
      *&v161[0] = v149;
      sub_2518E25AC(0, &qword_27F464BA0, &type metadata for ClinicalProductResultGroup, MEMORY[0x277D83940]);
      v79 = sub_2518DC9CC();

      v80 = sub_2518EF518();
      v82 = v81;
      v159 = v79;
      v154 = v78;
      v83 = v80;

      sub_2518EF5C8();
      v127 = v83;
      v149 = v82;
      sub_2518EF588();
      *&v161[0] = v133;

      v84 = 0;
      v85 = sub_2518EF518();
      v87 = v86;

      sub_2518EF5C8();
      v126 = v85;
      v133 = v87;
      sub_2518EF588();
      *&v161[0] = v132;
      sub_2518E25AC(0, &qword_27F464BD8, &type metadata for ExpandedMedicationCluster, MEMORY[0x277D83940]);
      sub_2518DCC00();

      v124 = sub_2518EF518();
      v125 = v88;

      sub_2518EF5C8();
      sub_2518EF588();
      v161[2] = v165;
      v161[3] = v166;
      v161[4] = v167;
      v162 = v168;
      v161[0] = v163;
      v161[1] = v164;
      sub_2518DCBAC();
      v89 = v130;
      v132 = sub_2518EF518();
      v130 = v90;
      sub_2518EF5C8();
      v159 = 0;
      if (!v141)
      {
        v154 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }

      sub_2518EF588();
      *&v161[0] = v138;
      *(&v161[0] + 1) = v141;
      sub_2518F00C8();
      v91 = v159;
      sub_2518F05E8();
      v159 = v91;
      if (v91)
      {
        sub_2518DFE9C(v132, v130);
        sub_2518DFE9C(v124, v125);
        sub_2518DFE9C(v126, v133);
        sub_2518DFE9C(v127, v149);
        sub_2518DFE9C(v129, v155);
        sub_2518DFE9C(v128, v64);

        (v152)(v139, v153);
        v92 = *(v142 + 8);
        v93 = v145;
        v92(v140, v145);
        v92(v131, v93);
        v92(v147, v93);
        v92(v148, v93);
        v92(v150, v93);
        v92(v134, v93);
        v92(v136, v93);
        v92(v157, v93);
        return (v92)(v135, v93);
      }

      else
      {
        (v152)(v139, v153);
        (*(v142 + 16))(v137, v140, v145);
        v94 = sub_2518DDAB4(0, 1, 1, MEMORY[0x277D84F90], &qword_27F464D30, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
        v84 = v94[2];
        v95 = v94[3];
        v154 = v94;
        v89 = v84 + 1;
        if (v84 >= v95 >> 1)
        {
          goto LABEL_25;
        }

        while (1)
        {
          v96 = v142;
          v97 = v145;
          (*(v142 + 8))(v140, v145);
          v98 = v154;
          v154[2] = v89;
          (*(v96 + 32))(v98 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v84, v137, v97);
LABEL_13:
          v99 = *(v143 + 16);

          if (!v99)
          {
            break;
          }

          v100 = 0;
          v152 = (v142 + 16);
          v153 = (v142 + 8);
          v151 = v142 + 32;
          v95 = v143;
          v101 = (v143 + 40);
          while (v100 < v99)
          {
            v103 = *(v101 - 1);
            v102 = *v101;
            *&v161[0] = 0;
            *(&v161[0] + 1) = 0xE000000000000000;
            sub_2518DFFC0(v103, v102);
            sub_2518F06D8();

            v160 = v100;
            *&v161[0] = 0x656D686361747461;
            *(&v161[0] + 1) = 0xEB000000005F746ELL;
            v104 = sub_2518F08F8();
            MEMORY[0x253085E70](v104);

            MEMORY[0x253085E70](1735290926, 0xE400000000000000);
            sub_2518EF588();

            v105 = v159;
            sub_2518EF5C8();
            v159 = v105;
            if (v105)
            {
              sub_2518DFE9C(v103, v102);
              sub_2518DFE9C(v132, v130);
              sub_2518DFE9C(v124, v125);
              sub_2518DFE9C(v126, v133);
              sub_2518DFE9C(v127, v149);
              sub_2518DFE9C(v129, v155);
              sub_2518DFE9C(v128, v64);

              v121 = *v153;
              v122 = v145;
              (*v153)(v146, v145);

              v121(v131, v122);
              v121(v147, v122);
              v121(v148, v122);
              v121(v150, v122);
              v121(v134, v122);
              v121(v136, v122);
              v121(v157, v122);
              v121(v135, v122);
            }

            (*v152)(v144, v146, v145);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v154 = sub_2518DDAB4(0, v154[2] + 1, 1, v154, &qword_27F464D30, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
            }

            v107 = v154[2];
            v106 = v154[3];
            v89 = v107 + 1;
            if (v107 >= v106 >> 1)
            {
              v154 = sub_2518DDAB4(v106 > 1, v107 + 1, 1, v154, &qword_27F464D30, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
            }

            ++v100;
            sub_2518DFE9C(v103, v102);
            v108 = v142;
            v84 = v145;
            (*(v142 + 8))(v146, v145);
            v109 = v154;
            v154[2] = v89;
            (*(v108 + 32))(v109 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v107, v144, v84);
            v95 = v143;
            v99 = *(v143 + 16);
            v101 += 2;
            if (v100 == v99)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_25:
          v154 = sub_2518DDAB4(v95 > 1, v89, 1, v154, &qword_27F464D30, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
        }

LABEL_22:

        sub_2518DC300();
        sub_2518E0014(0, &qword_27F464D30, MEMORY[0x277CC9260], MEMORY[0x277D84560]);
        v110 = v142;
        v111 = *(v142 + 72);
        v112 = (*(v142 + 80) + 32) & ~*(v142 + 80);
        v113 = swift_allocObject();
        v158 = v113;
        *(v113 + 16) = xmmword_2518F22F0;
        v114 = v113 + v112;
        v115 = *(v110 + 16);
        v116 = v145;
        v115(v114, v157, v145);
        v115(v114 + v111, v136, v116);
        v115(v114 + 2 * v111, v134, v116);
        v115(v114 + 3 * v111, v150, v116);
        v115(v114 + 4 * v111, v148, v116);
        v117 = v147;
        v115(v114 + 5 * v111, v147, v116);
        v118 = v114 + 6 * v111;
        v119 = v131;
        v115(v118, v131, v116);
        *&v161[0] = v158;
        sub_2518D3FB8(v154);
        sub_2518DFE9C(v132, v130);
        sub_2518DFE9C(v124, v125);
        sub_2518DFE9C(v126, v133);
        sub_2518DFE9C(v127, v149);
        sub_2518DFE9C(v129, v155);
        sub_2518DFE9C(v128, v64);

        v120 = *(v110 + 8);
        v120(v119, v116);
        v120(v117, v116);
        v120(v148, v116);
        v120(v150, v116);
        v120(v134, v116);
        v120(v136, v116);
        v120(v157, v116);
        v120(v135, v116);
        return *&v161[0];
      }
    }
  }

  else
  {
    v63 = *&v161[0];
    sub_2518EF568();

    swift_willThrow();
    return (*(v142 + 8))(v35, v145);
  }
}

uint64_t sub_2518DBB28(double a1)
{
  v2 = v1;
  sub_2518E0014(0, &qword_27F464800, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v68 - v5;
  v7 = sub_2518EF648();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = v68 - v11;
  sub_2518DD600();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v68 - v18;
  v68[1] = *(v1 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_lock);
  sub_2518EF6B8();
  v20 = *(v1 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionIds);
  v21 = *(v20 + 16);
  v80 = v2;
  if (!v21)
  {
    v25 = MEMORY[0x277D84F90];
    v42 = *(MEMORY[0x277D84F90] + 16);
    if (v42)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v79 = v7;
  v22 = *(v2 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionValidPeriod);
  v23 = v8;
  v24 = v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v75 = *(v14 + 72);
  v74 = (v23 + 8);
  v73 = (v23 + 32);
  v72 = (v23 + 56);
  v69 = v23;
  v70 = (v23 + 48);
  v68[0] = v20;

  v25 = MEMORY[0x277D84F90];
  v77 = v13;
  v76 = v17;
  do
  {
    v82 = v25;
    v81 = v21;
    sub_2518DD690(v24, v19);
    sub_2518DD690(v19, v17);
    v26 = *(v13 + 48);
    sub_2518EF5D8();
    v28 = v27;
    v29 = sub_2518EF618();
    v30 = v19;
    v31 = *(*(v29 - 8) + 8);
    v31(&v17[v26], v29);
    v32 = v17;
    v33 = v17;
    v34 = v79;
    (*v74)(v32, v79);
    if (v22 > a1 - v28)
    {
      sub_2518DF1F4(v30);
      (*v72)(v6, 1, 1, v34);
      v19 = v30;
      v25 = v82;
LABEL_4:
      sub_2518E209C(v6);
      v13 = v77;
      v17 = v76;
      goto LABEL_5;
    }

    sub_2518DDE64(v30, v33);
    v35 = *(v13 + 48);
    v36 = *v73;
    (*v73)(v6, v33, v34);
    (*v72)(v6, 0, 1, v34);
    v37 = (v33 + v35);
    v25 = v82;
    v31(v37, v29);
    v19 = v30;
    if ((*v70)(v6, 1, v34) == 1)
    {
      goto LABEL_4;
    }

    v38 = v79;
    v36(v71, v6, v79);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v76;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_2518DDAB4(0, v25[2] + 1, 1, v25, &qword_27F464DE8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F0]);
    }

    v41 = v25[2];
    v40 = v25[3];
    if (v41 >= v40 >> 1)
    {
      v25 = sub_2518DDAB4(v40 > 1, v41 + 1, 1, v25, &qword_27F464DE8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F0]);
    }

    v25[2] = v41 + 1;
    v36(v25 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41, v71, v38);
    v13 = v77;
LABEL_5:
    v24 += v75;
    v21 = v81 - 1;
  }

  while (v81 != 1);

  v8 = v69;
  v7 = v79;
  v42 = v25[2];
  if (v42)
  {
LABEL_14:
    v43 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
    v45 = *(v8 + 16);
    v44 = v8 + 16;
    v79 = v45;
    v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
    v82 = v25;
    v47 = v25 + v46;
    v81 = *(v44 + 56);
    v48 = (v44 - 8);
    do
    {
      v58 = v78;
      v79(v78, v47, v7);
      swift_beginAccess();
      v59 = sub_2518DDDCC(v58);
      v61 = v60;
      v62 = *v48;
      (*v48)(v58, v7);
      if (v61)
      {
        v63 = v44;
        v64 = v80;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v64 + v43);
        v85 = v66;
        *(v64 + v43) = 0x8000000000000000;
        if (!v65)
        {
          sub_2518DF594();
          v66 = v85;
        }

        v62(*(v66 + 48) + v59 * v81, v7);
        v49 = *(v66 + 56) + 168 * v59;
        v51 = *(v49 + 16);
        v50 = *(v49 + 32);
        v83[0] = *v49;
        v83[1] = v51;
        v83[2] = v50;
        v52 = *(v49 + 48);
        v53 = *(v49 + 64);
        v54 = *(v49 + 96);
        v83[5] = *(v49 + 80);
        v83[6] = v54;
        v83[4] = v53;
        v83[3] = v52;
        v55 = *(v49 + 112);
        v56 = *(v49 + 128);
        v57 = *(v49 + 144);
        v84 = *(v49 + 160);
        v83[8] = v56;
        v83[9] = v57;
        v83[7] = v55;
        sub_2518DD098(v83);
        sub_2518DED2C(v59, v66);
        *(v64 + v43) = v66;
        v44 = v63;
      }

      swift_endAccess();
      v47 += v81;
      --v42;
    }

    while (v42);
  }

LABEL_22:

  return sub_2518EF6C8();
}

void sub_2518DC300()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_persistedLogTimer;
  [*(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_persistedLogTimer) invalidate];
  v2 = objc_opt_self();
  v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessionValidPeriod);
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_2518E232C;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2518D866C;
  v8[3] = &block_descriptor_74;
  v5 = _Block_copy(v8);

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:v3];
  _Block_release(v5);
  v7 = *(v0 + v1);
  *(v0 + v1) = v6;
}

uint64_t sub_2518DC434()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2518DC48C();
  }

  return result;
}

void sub_2518DC48C()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2518EFAF8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  sub_2518EF5A8();
  v4 = sub_2518F0088();

  v5 = [v15 fileExistsAtPath_];

  if (v5)
  {
    v6 = sub_2518EF578();
    v16[0] = 0;
    v7 = [v15 removeItemAtURL:v6 error:v16];

    if (v7)
    {
      v8 = v16[0];
    }

    else
    {
      v10 = v16[0];
      v11 = sub_2518EF568();

      swift_willThrow();
      sub_2518EFAC8();
      v12 = sub_2518EFAE8();
      v13 = sub_2518F0318();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2518B7000, v12, v13, "Failed to clear scanning persisted logs", v14, 2u);
        MEMORY[0x253086D30](v14, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
    }
  }

  else
  {
    v9 = v15;
  }
}

char *sub_2518DC728(char *result, int64_t a2, char a3, char *a4)
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
    sub_2518E25AC(0, &qword_27F464E48, &type metadata for ClinicalProductResultGroup, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2518DC860(char *result, int64_t a2, char a3, char *a4)
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
    sub_2518E25AC(0, &qword_27F464E50, &type metadata for SpecificProductResult, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t sub_2518DC978()
{
  result = qword_27F464B88;
  if (!qword_27F464B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464B88);
  }

  return result;
}

unint64_t sub_2518DC9CC()
{
  result = qword_27F464BA8;
  if (!qword_27F464BA8)
  {
    sub_2518E25AC(255, &qword_27F464BA0, &type metadata for ClinicalProductResultGroup, MEMORY[0x277D83940]);
    sub_2518DCA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464BA8);
  }

  return result;
}

unint64_t sub_2518DCA68()
{
  result = qword_27F464BB0;
  if (!qword_27F464BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464BB0);
  }

  return result;
}

unint64_t sub_2518DCABC()
{
  result = qword_27F464BC0;
  if (!qword_27F464BC0)
  {
    sub_2518E25AC(255, &qword_27F464BB8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    sub_2518DCB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464BC0);
  }

  return result;
}

unint64_t sub_2518DCB58()
{
  result = qword_27F464BC8;
  if (!qword_27F464BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464BC8);
  }

  return result;
}

unint64_t sub_2518DCBAC()
{
  result = qword_27F464BD0;
  if (!qword_27F464BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464BD0);
  }

  return result;
}

unint64_t sub_2518DCC00()
{
  result = qword_27F464BE0;
  if (!qword_27F464BE0)
  {
    sub_2518E25AC(255, &qword_27F464BD8, &type metadata for ExpandedMedicationCluster, MEMORY[0x277D83940]);
    sub_2518DCC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464BE0);
  }

  return result;
}

unint64_t sub_2518DCC9C()
{
  result = qword_27F464BE8;
  if (!qword_27F464BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464BE8);
  }

  return result;
}

uint64_t sub_2518DCCF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2518E25AC(255, &qword_27F464B90, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2518DCD74()
{
  result = qword_27F464C00;
  if (!qword_27F464C00)
  {
    sub_2518E25AC(255, &qword_27F464BA0, &type metadata for ClinicalProductResultGroup, MEMORY[0x277D83940]);
    sub_2518DCE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C00);
  }

  return result;
}

unint64_t sub_2518DCE10()
{
  result = qword_27F464C08;
  if (!qword_27F464C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C08);
  }

  return result;
}

unint64_t sub_2518DCE64()
{
  result = qword_27F464C10;
  if (!qword_27F464C10)
  {
    sub_2518E25AC(255, &qword_27F464BB8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    sub_2518DCF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C10);
  }

  return result;
}

unint64_t sub_2518DCF00()
{
  result = qword_27F464C18;
  if (!qword_27F464C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C18);
  }

  return result;
}

unint64_t sub_2518DCF54()
{
  result = qword_27F464C20;
  if (!qword_27F464C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C20);
  }

  return result;
}

unint64_t sub_2518DCFA8()
{
  result = qword_27F464C28;
  if (!qword_27F464C28)
  {
    sub_2518E25AC(255, &qword_27F464BD8, &type metadata for ExpandedMedicationCluster, MEMORY[0x277D83940]);
    sub_2518DD044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C28);
  }

  return result;
}

unint64_t sub_2518DD044()
{
  result = qword_27F464C30;
  if (!qword_27F464C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C30);
  }

  return result;
}

unint64_t sub_2518DD0C8()
{
  result = qword_27F464C40;
  if (!qword_27F464C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C40);
  }

  return result;
}

unint64_t sub_2518DD11C()
{
  result = qword_27F464C50;
  if (!qword_27F464C50)
  {
    sub_2518E25AC(255, &qword_27F464C48, &type metadata for SpecificProductResult, MEMORY[0x277D83940]);
    sub_2518DD1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C50);
  }

  return result;
}

unint64_t sub_2518DD1B8()
{
  result = qword_27F464C58;
  if (!qword_27F464C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C58);
  }

  return result;
}

unint64_t sub_2518DD20C()
{
  result = qword_27F464C68;
  if (!qword_27F464C68)
  {
    sub_2518E25AC(255, &qword_27F464C48, &type metadata for SpecificProductResult, MEMORY[0x277D83940]);
    sub_2518DD2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C68);
  }

  return result;
}

unint64_t sub_2518DD2A8()
{
  result = qword_27F464C70;
  if (!qword_27F464C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C70);
  }

  return result;
}

unint64_t sub_2518DD2FC()
{
  result = qword_27F464C80;
  if (!qword_27F464C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C80);
  }

  return result;
}

unint64_t sub_2518DD350()
{
  result = qword_27F464C98;
  if (!qword_27F464C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464C98);
  }

  return result;
}

unint64_t sub_2518DD3A4()
{
  result = qword_27F464CB8;
  if (!qword_27F464CB8)
  {
    sub_2518E24A8(255, &qword_27F464CB0, MEMORY[0x277D83940]);
    sub_2518DD4C4(&qword_27F464CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464CB8);
  }

  return result;
}

void sub_2518DD45C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2518DD4C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2518E2668(255, &qword_27F464CA0, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2518DD548()
{
  result = qword_27F464CD0;
  if (!qword_27F464CD0)
  {
    sub_2518E24A8(255, &qword_27F464CB0, MEMORY[0x277D83940]);
    sub_2518DD4C4(&qword_27F464CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464CD0);
  }

  return result;
}

void sub_2518DD600()
{
  if (!qword_27F464CD8)
  {
    sub_2518EF648();
    sub_2518EF618();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F464CD8);
    }
  }
}

double sub_2518DD670(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2518DD690(uint64_t a1, uint64_t a2)
{
  sub_2518DD600();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_2518DD6F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2518E25AC(0, &qword_27F464DC8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2518DD818(char *result, int64_t a2, char a3, char *a4)
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
    sub_2518E25AC(0, &qword_27F464DD8, &type metadata for ScanResultGroupItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2518DD958(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2518E24A8(0, &qword_27F464E30, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2518E2668(0, &qword_27F464CA0, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2518DDAB4(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2518E0014(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2518DDCA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2518E25AC(0, &qword_27F464E10, &type metadata for ExpandedMedicationCluster, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2518DDDCC(uint64_t a1)
{
  sub_2518EF648();
  sub_2518E2564(&qword_27F464DF0, MEMORY[0x277CC95F0]);
  v2 = sub_2518F0058();

  return sub_2518DDFD0(a1, v2);
}

uint64_t sub_2518DDE64(uint64_t a1, uint64_t a2)
{
  sub_2518DD600();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2518DDEC8(uint64_t a1, uint64_t a2)
{
  sub_2518F0978();
  sub_2518F0148();
  v4 = sub_2518F09A8();

  return sub_2518DE190(a1, a2, v4);
}

unint64_t sub_2518DDF40(uint64_t a1)
{
  sub_2518F00B8();
  sub_2518F0978();
  sub_2518F0148();
  v2 = sub_2518F09A8();

  return sub_2518DE248(a1, v2);
}

unint64_t sub_2518DDFD0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2518EF648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2518E2564(&qword_27F464E40, MEMORY[0x277CC95F0]);
      v15 = sub_2518F0078();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2518DE190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2518F0918())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2518DE248(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2518F00B8();
      v8 = v7;
      if (v6 == sub_2518F00B8() && v8 == v9)
      {
        break;
      }

      v11 = sub_2518F0918();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2518DE34C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2518F0648();
LABEL_9:
  result = sub_2518F0708();
  *v1 = result;
  return result;
}

void sub_2518DE414(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_2518BC1A8(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2518E25AC(0, &qword_27F464660, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2518DE52C(uint64_t a1, int a2)
{
  v3 = v2;
  v60 = sub_2518EF648();
  v5 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2518E2128();
  v62 = a2;
  result = sub_2518F07B8();
  v9 = result;
  if (*(v7 + 16))
  {
    v55 = v2;
    v10 = 0;
    v61 = v7;
    v13 = *(v7 + 64);
    v12 = (v7 + 64);
    v11 = v13;
    v14 = 1 << *(v12 - 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v11;
    v17 = (v14 + 63) >> 6;
    v56 = v5 + 16;
    v57 = result;
    v63 = (v5 + 32);
    v18 = result + 64;
    v58 = v5;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v24 = (v16 - 1) & v16;
LABEL_15:
      v27 = v23 | (v10 << 6);
      v71 = v24;
      v28 = v61;
      v29 = *(v61 + 48);
      v70 = *(v5 + 72);
      v30 = v29 + v70 * v27;
      v31 = v59;
      if (v62)
      {
        (*(v5 + 32))(v59, v30, v60);
        v32 = *(v28 + 56) + 168 * v27;
        v33 = *(v32 + 16);
        v64 = *v32;
        v65 = v33;
        v34 = *(v32 + 32);
        v66 = *(v32 + 40);
        v67 = v34;
        v35 = *(v32 + 48);
        v68 = *(v32 + 56);
        v75 = *(v32 + 96);
        v76 = *(v32 + 112);
        v77 = *(v32 + 128);
        v78 = *(v32 + 144);
        v73 = *(v32 + 64);
        v74 = *(v32 + 80);
        v69 = *(v32 + 152);
      }

      else
      {
        (*(v5 + 16))(v59, v30, v60);
        v36 = *(v28 + 56) + 168 * v27;
        v37 = *(v36 + 112);
        v38 = *(v36 + 128);
        v39 = *(v36 + 144);
        *&v88[1] = *(v36 + 160);
        v87 = v38;
        v88[0] = v39;
        v86 = v37;
        v40 = *(v36 + 48);
        v41 = *(v36 + 64);
        v42 = *(v36 + 96);
        v84 = *(v36 + 80);
        v85 = v42;
        v82 = v40;
        v83 = v41;
        v44 = *(v36 + 16);
        v43 = *(v36 + 32);
        v79 = *v36;
        v80 = v44;
        v81 = v43;
        v69 = *(v88 + 8);
        v35 = v82;
        v67 = v43;
        v68 = *(&v82 + 1);
        v66 = *(&v43 + 1);
        v64 = v79;
        v65 = v44;
        sub_2518C6E30(&v79, &v73);
        v75 = v85;
        v76 = v86;
        v77 = v87;
        v78 = v88[0];
        v73 = v83;
        v74 = v84;
      }

      v9 = v57;
      sub_2518E2564(&qword_27F464DF0, MEMORY[0x277CC95F0]);
      result = sub_2518F0058();
      v45 = -1 << *(v9 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v18 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        v5 = v58;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v18 + 8 * v47);
          if (v51 != -1)
          {
            v19 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v46) & ~*(v18 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
      v5 = v58;
LABEL_7:
      v81 = v75;
      v82 = v76;
      v83 = v77;
      LOBYTE(v84) = v78;
      v79 = v73;
      v80 = v74;
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v63)(*(v9 + 48) + v70 * v19, v31);
      v20 = *(v9 + 56) + 168 * v19;
      v21 = v65;
      *v20 = v64;
      *(v20 + 16) = v21;
      v22 = v66;
      *(v20 + 32) = v67;
      *(v20 + 40) = v22;
      *(v20 + 48) = v35;
      *(v20 + 56) = v68;
      *(v20 + 80) = v80;
      *(v20 + 64) = v79;
      *(v20 + 144) = v84;
      *(v20 + 128) = v83;
      *(v20 + 112) = v82;
      *(v20 + 96) = v81;
      *(v20 + 148) = *&v72[3];
      *(v20 + 145) = *v72;
      *(v20 + 152) = v69;
      ++*(v9 + 16);
      v16 = v71;
    }

    v25 = v10;
    while (1)
    {
      v10 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v17)
      {
        break;
      }

      v26 = v12[v10];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v55;
      goto LABEL_35;
    }

    v52 = v61;
    v53 = 1 << *(v61 + 32);
    v3 = v55;
    if (v53 >= 64)
    {
      bzero(v12, ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v53;
    }

    *(v52 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_2518DEA94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2518E1FBC();
  v35 = a2;
  result = sub_2518F07B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2518F0978();
      sub_2518F0148();
      result = sub_2518F09A8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

char *sub_2518DED2C(int64_t a1, uint64_t a2)
{
  v38 = sub_2518EF648();
  v4 = *(v38 - 8);
  result = MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = sub_2518F0618();
    v12 = v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v35 = (v11 + 1) & v10;
    v36 = v14;
    v15 = *(v13 + 56);
    v33 = (v13 - 8);
    v34 = a2 + 64;
    v39 = v12;
    v16 = v38;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = *(a2 + 48) + v15 * v9;
      v20 = v37;
      v21 = v13;
      v36(v37, v19, v16);
      sub_2518E2564(&qword_27F464DF0, MEMORY[0x277CC95F0]);
      v22 = sub_2518F0058();
      result = (*v33)(v20, v16);
      v23 = v39;
      v24 = v22 & v39;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v13 = v21;
          v15 = v17;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v39;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v39;
            }
          }

          v27 = *(a2 + 56);
          result = (v27 + 168 * a1);
          v28 = (v27 + 168 * v9);
          if (a1 != v9 || result >= v28 + 168)
          {
            result = memmove(result, v28, 0xA8uLL);
            v23 = v39;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v13 = v21;
      v7 = v34;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v23;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2518DF024(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2518EF648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2518DDDCC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2518DF594();
      goto LABEL_7;
    }

    sub_2518DE52C(v17, a3 & 1);
    v23 = sub_2518DDDCC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2518DF4A8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2518F0948();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 168 * v14;

  return sub_2518E252C(a1, v21);
}

uint64_t sub_2518DF1F4(uint64_t a1)
{
  sub_2518DD600();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2518DF250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2518DF2B0()
{
  if (!qword_27F464D10)
  {
    sub_2518E25FC(255, &qword_27F464D18, type metadata accessor for FileAttributeKey);
    v0 = sub_2518F0908();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464D10);
    }
  }
}

uint64_t sub_2518DF330(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2518DDEC8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2518DEA94(v16, a4 & 1);
      v11 = sub_2518DDEC8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2518F0948();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2518DF894();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2518DF4A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2518EF648();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 168 * a1;
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = *(a3 + 80);
  *(v11 + 64) = *(a3 + 64);
  *(v11 + 80) = v13;
  v14 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v14;
  *(v11 + 160) = *(a3 + 160);
  v15 = *(a3 + 144);
  *(v11 + 128) = *(a3 + 128);
  *(v11 + 144) = v15;
  v16 = *(a3 + 112);
  *(v11 + 96) = *(a3 + 96);
  *(v11 + 112) = v16;
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

char *sub_2518DF594()
{
  v1 = v0;
  v2 = sub_2518EF648();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x28223BE20](v2);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518E2128();
  v5 = *v0;
  v6 = sub_2518F07A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v54 = v7;
    v46 = v1;
    v47 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    *(v54 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v48 = v53 + 32;
    v49 = v53 + 16;
    v50 = v15;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v55 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v11 << 6);
        v20 = v52;
        v21 = v53;
        v22 = *(v53 + 72) * v19;
        v23 = v51;
        (*(v53 + 16))(v51, *(v5 + 48) + v22, v52);
        v19 *= 168;
        v24 = *(v5 + 56) + v19;
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        v27 = *(v24 + 96);
        v62 = *(v24 + 80);
        v63 = v27;
        v60 = v25;
        v61 = v26;
        v28 = *(v24 + 112);
        v29 = *(v24 + 128);
        v30 = *(v24 + 144);
        v67 = *(v24 + 160);
        v65 = v29;
        v66 = v30;
        v64 = v28;
        v32 = *(v24 + 16);
        v31 = *(v24 + 32);
        v57 = *v24;
        v58 = v32;
        v59 = v31;
        v33 = v5;
        v34 = v54;
        (*(v21 + 32))(*(v54 + 48) + v22, v23, v20);
        v35 = *(v34 + 56);
        v5 = v33;
        v36 = v35 + v19;
        v37 = v64;
        v38 = v65;
        v39 = v66;
        *(v36 + 160) = v67;
        *(v36 + 128) = v38;
        *(v36 + 144) = v39;
        *(v36 + 112) = v37;
        v40 = v60;
        v41 = v61;
        v42 = v63;
        *(v36 + 80) = v62;
        *(v36 + 96) = v42;
        *(v36 + 48) = v40;
        *(v36 + 64) = v41;
        v44 = v58;
        v43 = v59;
        *v36 = v57;
        *(v36 + 16) = v44;
        *(v36 + 32) = v43;
        result = sub_2518C6E30(&v57, &v56);
        v15 = v50;
        v14 = v55;
      }

      while (v55);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v1 = v46;
        v7 = v54;
        goto LABEL_18;
      }

      v18 = *(v47 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v55 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_2518DF894()
{
  v1 = v0;
  sub_2518E1FBC();
  v2 = *v0;
  v3 = sub_2518F07A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void (*sub_2518DF9F4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253086400](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2518DFA74;
  }

  __break(1u);
  return result;
}

uint64_t sub_2518DFA7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2518F0648();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2518F0648();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2518E2034();
          sub_2518E2564(&qword_27F464DE0, sub_2518E2034);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2518DF9F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2518BC1A8(0, &qword_27F464A30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2518DFC28(uint64_t a1)
{
  sub_2518E25FC(0, &qword_27F464E58, MEMORY[0x277CC95F0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F98];
  }

  sub_2518E2128();
  v8 = sub_2518F07C8();
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = *(v4 + 72);
  v26 = *(v3 + 48);
  v27 = v10;

  sub_2518E22BC(a1 + v9, v6, &qword_27F464E58, MEMORY[0x277CC95F0]);
  v11 = sub_2518DDDCC(v6);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v13 = v11;
  v25 = sub_2518EF648();
  v14 = *(v25 - 8);
  v15 = *(v14 + 32);
  v16 = *(v14 + 72);
  v17 = a1 + v27 + v9;
  while (1)
  {
    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v15(v8[6] + v16 * v13, v6, v25);
    result = memmove((v8[7] + 168 * v13), &v6[v26], 0xA8uLL);
    v19 = v8[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v8[2] = v21;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v22 = v17 + v27;
    sub_2518E22BC(v17, v6, &qword_27F464E58, MEMORY[0x277CC95F0]);
    v13 = sub_2518DDDCC(v6);
    v17 = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2518DFE9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2518DFEF0()
{
  result = qword_27F464D20;
  if (!qword_27F464D20)
  {
    sub_2518E25AC(255, &qword_27F464B90, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D20);
  }

  return result;
}

unint64_t sub_2518DFF6C()
{
  result = qword_27F464D28;
  if (!qword_27F464D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D28);
  }

  return result;
}

uint64_t sub_2518DFFC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_2518E0014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2518E008C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2518E00E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2518E015C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[81])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2518E01B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2518E0258(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2518E02A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_2518E032C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2518E0374(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpecificProductResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpecificProductResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_2518E0434(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2518E047C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ScanningSessionLogger()
{
  result = qword_27F464D40;
  if (!qword_27F464D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2518E0520()
{
  result = sub_2518EF5B8();
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

uint64_t getEnumTagSinglePayload for ExpandedMedicationCluster.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExpandedMedicationCluster.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SpecificProductResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpecificProductResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClinicalProductResultGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClinicalProductResultGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanningSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScanningSession.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ScanningSystemState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanningSystemState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2518E0E34()
{
  result = qword_27F464D50;
  if (!qword_27F464D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D50);
  }

  return result;
}

unint64_t sub_2518E0E8C()
{
  result = qword_27F464D58;
  if (!qword_27F464D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D58);
  }

  return result;
}

unint64_t sub_2518E0EE4()
{
  result = qword_27F464D60;
  if (!qword_27F464D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D60);
  }

  return result;
}

unint64_t sub_2518E0F3C()
{
  result = qword_27F464D68;
  if (!qword_27F464D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D68);
  }

  return result;
}

unint64_t sub_2518E0F94()
{
  result = qword_27F464D70;
  if (!qword_27F464D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D70);
  }

  return result;
}

unint64_t sub_2518E0FEC()
{
  result = qword_27F464D78;
  if (!qword_27F464D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D78);
  }

  return result;
}

unint64_t sub_2518E1044()
{
  result = qword_27F464D80;
  if (!qword_27F464D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D80);
  }

  return result;
}

unint64_t sub_2518E109C()
{
  result = qword_27F464D88;
  if (!qword_27F464D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D88);
  }

  return result;
}

unint64_t sub_2518E10F4()
{
  result = qword_27F464D90;
  if (!qword_27F464D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D90);
  }

  return result;
}

unint64_t sub_2518E114C()
{
  result = qword_27F464D98;
  if (!qword_27F464D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464D98);
  }

  return result;
}

unint64_t sub_2518E11A4()
{
  result = qword_27F464DA0;
  if (!qword_27F464DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464DA0);
  }

  return result;
}

unint64_t sub_2518E11FC()
{
  result = qword_27F464DA8;
  if (!qword_27F464DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464DA8);
  }

  return result;
}

unint64_t sub_2518E1254()
{
  result = qword_27F464DB0;
  if (!qword_27F464DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464DB0);
  }

  return result;
}

unint64_t sub_2518E12AC()
{
  result = qword_27F464DB8;
  if (!qword_27F464DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464DB8);
  }

  return result;
}

unint64_t sub_2518E1304()
{
  result = qword_27F464DC0;
  if (!qword_27F464DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464DC0);
  }

  return result;
}

unint64_t sub_2518E138C(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_2518F07C8();
    v9 = a1 + 32;

    while (1)
    {
      sub_2518E22BC(v9, &v16, a3, a4);
      v10 = v16;
      result = sub_2518DDF40(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_2518D38A4(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2518E14B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2518E2668(0, &qword_27F464E28, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
    v3 = sub_2518F07C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2518DDEC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2518E15DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2518E2668(0, &qword_27F464E60, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84460]);
    v3 = sub_2518F07C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2518E26C8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2518DDEC8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2518D38A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2518E1708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7574615361746164 && a2 == 0xED00006465746172;
  if (v4 || (sub_2518F0918() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002518F6990 == a2 || (sub_2518F0918() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x456E6F6973736573 && a2 == 0xEE00656D6954646ELL || (sub_2518F0918() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002518F69B0 == a2 || (sub_2518F0918() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002518F69D0 == a2 || (sub_2518F0918() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002518F69F0 == a2 || (sub_2518F0918() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168436574617473 && a2 == 0xEF656D695465676ELL || (sub_2518F0918() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002518F6A10 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2518F0918();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2518E19BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6172546C6C61 && a2 == 0xEE00737470697263;
  if (v4 || (sub_2518F0918() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61725464657375 && a2 == 0xEF73747069726373 || (sub_2518F0918() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7343524D6E656573 && a2 == 0xE800000000000000 || (sub_2518F0918() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75736552736270 && a2 == 0xEA00000000007374 || (sub_2518F0918() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C7573655263726DLL && a2 == 0xE900000000000074 || (sub_2518F0918() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2518F0918() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL || (sub_2518F0918() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74536D6574737973 && a2 == 0xEB00000000657461 || (sub_2518F0918() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x64657265746C6966 && a2 == 0xEF73746C75736552 || (sub_2518F0918() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465646E61707865 && a2 == 0xEF73746C75736552)
  {

    return 9;
  }

  else
  {
    v6 = sub_2518F0918();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2518E1D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000002518F6A30 == a2;
  if (v4 || (sub_2518F0918() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002518F6A50 == a2 || (sub_2518F0918() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002518F6A70 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2518F0918();

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

uint64_t sub_2518E1E44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369666963657073 && a2 == -1192218645498990000;
  if (v4 || (sub_2518F0918() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002518F6AD0 == a2 || (sub_2518F0918() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002518F6AF0 == a2 || (sub_2518F0918() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002518F6B10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_2518F0918();

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

void sub_2518E1FBC()
{
  if (!qword_27F464DD0)
  {
    sub_2518BC1A8(255, &qword_27F4649E8);
    v0 = sub_2518F07D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464DD0);
    }
  }
}

void sub_2518E2034()
{
  if (!qword_27F464A38)
  {
    sub_2518BC1A8(255, &qword_27F464A30);
    v0 = sub_2518F0208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464A38);
    }
  }
}

uint64_t sub_2518E209C(uint64_t a1)
{
  sub_2518E0014(0, &qword_27F464800, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2518E2128()
{
  if (!qword_27F464DF8)
  {
    sub_2518EF648();
    sub_2518E2564(&qword_27F464DF0, MEMORY[0x277CC95F0]);
    v0 = sub_2518F07D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464DF8);
    }
  }
}

uint64_t sub_2518E21C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2518E221C()
{
  if (!qword_27F464E00)
  {
    type metadata accessor for Key(255);
    sub_2518E2564(&qword_27F4646B0, type metadata accessor for Key);
    v0 = sub_2518F07D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464E00);
    }
  }
}

uint64_t sub_2518E22BC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2518E25FC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2518E2334()
{
  if (!qword_27F464E08)
  {
    type metadata accessor for FileAttributeKey(255);
    sub_2518E2564(&qword_27F464628, type metadata accessor for FileAttributeKey);
    v0 = sub_2518F07D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464E08);
    }
  }
}

void sub_2518E23D4()
{
  if (!qword_27F464E18)
  {
    sub_2518E2740(255, &qword_27F464E20);
    v0 = sub_2518F0908();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464E18);
    }
  }
}

uint64_t sub_2518E243C(uint64_t a1)
{
  sub_2518E2740(0, &qword_27F464E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2518E24A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2518E2668(255, &qword_27F464CA0, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2518E2564(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2518E25AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2518E25FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2518E2668(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2518E26C8(uint64_t a1, uint64_t a2)
{
  sub_2518E2740(0, &qword_27F464E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2518E2740(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for ScanResultSelectionDataSource()
{
  result = qword_27F464E90;
  if (!qword_27F464E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2518E2804()
{
  result = sub_2518EF648();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2518E28D0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v22 = sub_2518EF818();
  v26 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = MEMORY[0x277D84F90];
  if (v9 == -1)
  {
    return v11;
  }

  v28 = MEMORY[0x277D84F90];
  result = sub_2518E494C(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = 0;
    v11 = v28;
    v21[1] = v26 + 32;
    while (v13 < v10)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_20;
      }

      if (v14)
      {
        goto LABEL_26;
      }

      v16 = a3;
      v27 = a3;
      v17 = v8;
      v24(&v27);
      if (v4)
      {
        goto LABEL_25;
      }

      v28 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2518E494C(v18 > 1, v19 + 1, 1);
        v11 = v28;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19;
      v8 = v17;
      result = (*(v26 + 32))(v20, v17, v22);
      v14 = v16 == v23;
      if (v16 == v23)
      {
        a3 = 0;
      }

      else
      {
        a3 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_21;
        }
      }

      v4 = 0;
      ++v13;
      if (v15 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2518E2B0C(uint64_t a1)
{
  v2 = sub_2518EF818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2518E496C(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2518E496C((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_2518E5518(&qword_27F464F68, MEMORY[0x277D11000]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
      v9(boxed_opaque_existential_0, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_2518E49D4(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2518E2D04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_2518F0748();
    v4 = a1 + 32;
    do
    {
      sub_2518C7038(v4, &v5);
      type metadata accessor for CGPath(0);
      swift_dynamicCast();
      sub_2518F0728();
      sub_2518F0758();
      sub_2518F0768();
      sub_2518F0738();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_2518E2DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2518E496C(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 5);
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 2);
      v15 = *v4;
      v16 = *(v4 - 6);
      v20 = v2;
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);

      v12 = v8;
      if (v10 >= v11 >> 1)
      {
        sub_2518E496C((v11 > 1), v10 + 1, 1);
        v2 = v20;
      }

      v4 += 7;
      v18 = &type metadata for ScanResultGroupItem;
      v19 = sub_2518CA4A0();
      v13 = swift_allocObject();
      *&v17 = v13;
      *(v13 + 16) = v16;
      *(v13 + 24) = v5;
      *(v13 + 32) = v7;
      *(v13 + 40) = v6;
      *(v13 + 48) = v12;
      *(v13 + 56) = v9;
      *(v13 + 64) = v15;
      *(v2 + 16) = v10 + 1;
      sub_2518E49D4(&v17, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2518E2F30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_2518EF998();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518E5494(0, &qword_27F464918, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v18 - v10;
  v12 = *a1;
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_2518F06D8();

  strcpy(v22, "FakeSearchItem");
  HIBYTE(v22[1]) = -18;
  *&v19 = v12;
  v13 = sub_2518F08F8();
  MEMORY[0x253085E70](v13);

  v14 = sub_2518EFC28();
  v22[3] = v14;
  v22[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a2, v14);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_2518EFB88();
  v16 = sub_2518EFBA8();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  (*(v6 + 104))(v8, *MEMORY[0x277D11140], v5);
  sub_2518EF808();
}

uint64_t sub_2518E3250()
{
  sub_2518E5494(0, &qword_27F464808, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v26 = &v23 - v2;
  sub_2518E4460();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518E46C0();
  v25 = v8;
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518E47AC();
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  MEMORY[0x28223BE20](v11);
  v23 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  v30 = *(v0 + qword_27F464E70);
  swift_allocObject();
  swift_weakInit();
  sub_2518E450C();
  sub_2518E4608();
  sub_2518E5518(&qword_27F464ED0, sub_2518E450C);

  sub_2518EFDE8();

  v14 = sub_2518E5518(&qword_27F464EE8, sub_2518E4460);
  v15 = sub_2518E5518(&qword_27F464EE0, sub_2518E4608);
  MEMORY[0x253085B50](v4, v14, v15);
  (*(v5 + 8))(v7, v4);
  sub_2518BC1A8(0, &qword_27F464820);
  v16 = sub_2518F0378();
  v30 = v16;
  v17 = sub_2518F0368();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  sub_2518E5518(&qword_27F464EF8, sub_2518E46C0);
  sub_2518C67D0();
  v19 = v23;
  v20 = v25;
  sub_2518EFE18();
  sub_2518E48B8(v18);

  (*(v27 + 8))(v10, v20);
  swift_allocObject();
  swift_weakInit();
  sub_2518E5518(&qword_27F464F00, sub_2518E47AC);
  v21 = v28;
  sub_2518EFE58();

  (*(v29 + 8))(v19, v21);
  swift_beginAccess();
  sub_2518EFCD8();
  swift_endAccess();
}

uint64_t sub_2518E37B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2518E4D90();
  v5 = v4;
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518E4E80();
  v9 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518E4F2C();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_2518F0278();
  v32 = sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  if (!v15)
  {

LABEL_8:

    v24 = 0;
    goto LABEL_9;
  }

  v17 = *(Strong + qword_27F465040);
  v26 = Strong;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  sub_2518CBDE4();
  sub_2518E5518(&qword_27F464F20, sub_2518CBDE4);
  v27 = a2;
  v19 = v15;
  swift_retain_n();
  v20 = v19;
  sub_2518EFD78();
  sub_2518E4670();
  sub_2518E5518(&qword_27F464F30, sub_2518E4D90);

  sub_2518EFE08();

  (*(v28 + 8))(v7, v5);
  sub_2518E5518(&qword_27F464F50, sub_2518E4E80);
  v21 = sub_2518EFDD8();
  v22 = v20;

  (*(v29 + 8))(v11, v9);

  v34 = v21;
  v33 = MEMORY[0x277D84F90];
  sub_2518E4FC0();
  sub_2518E5518(&qword_27F464F48, sub_2518E4FC0);
  sub_2518EFDF8();
  a2 = v27;

  sub_2518E5518(&qword_27F464F58, sub_2518E4F2C);
  v23 = v31;
  v24 = sub_2518EFDD8();

  (*(v30 + 8))(v14, v23);

LABEL_9:
  *a2 = v24;
  return result;
}

uint64_t sub_2518E3CDC(uint64_t *a1)
{
  v2 = sub_2518EF648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_2518F0278();
  v7 = sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  if (qword_27F464550 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v20 = qword_27F464B60;
    v21 = Strong;
    Strong = (*(v3 + 16))(v5, Strong + qword_27F464E80, v2);
    v9 = MEMORY[0x277D84F90];
    v22 = *(v6 + 16);
    v23 = MEMORY[0x277D84F90];
    if (!v22)
    {
      break;
    }

    v16 = v5;
    v17 = v7;
    v18 = v3;
    v19 = v2;
    v5 = 0;
    v3 = v6 + 64;
    while (v5 < *(v6 + 16))
    {
      v2 = *(v3 - 24);
      v10 = *v3;

      v11 = v10;
      sub_2518F0268();
      v7 = sub_2518F0218();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      MEMORY[0x253085EA0](v12);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2518F01D8();
      }

      ++v5;
      Strong = sub_2518F01F8();
      v3 += 56;
      if (v22 == v5)
      {
        v9 = v23;
        v3 = v18;
        v2 = v19;
        v5 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    v14 = Strong;
    swift_once();
    Strong = v14;
  }

LABEL_14:
  sub_2518D96E0(v5, v9);

  (*(v3 + 8))(v5, v2);
  sub_2518E2DDC(v6);
  sub_2518EF7D8();
}

uint64_t sub_2518E4054()
{

  v1 = qword_27F464E80;
  v2 = sub_2518EF648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_2518E40FC()
{
  v0 = sub_2518EF7E8();

  v1 = qword_27F464E80;
  v2 = sub_2518EF648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2518E41FC()
{
  v0 = sub_2518EF758();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2518EF748();
  sub_2518EF738();
  v7 = *(v1 + 8);
  v7(v6, v0);
  v8 = sub_2518EF728();
  v7(v4, v0);
  return v8;
}

uint64_t sub_2518E4378()
{
  sub_2518EF978();
  sub_2518F0348();
  sub_2518EF9D8();
  sub_2518F0338();
  type metadata accessor for ScanResultGroupCell();
  sub_2518E5518(&qword_27F4649F0, type metadata accessor for ScanResultGroupCell);
  return sub_2518F0338();
}

void sub_2518E4460()
{
  if (!qword_27F464EA8)
  {
    sub_2518E450C();
    sub_2518E4608();
    sub_2518E5518(&qword_27F464ED0, sub_2518E450C);
    v0 = sub_2518EFC58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464EA8);
    }
  }
}

void sub_2518E450C()
{
  if (!qword_27F464EB0)
  {
    sub_2518E45A0(255, &qword_27F464EB8, &qword_27F464858, 0x277D117E0, MEMORY[0x277D83D88]);
    v0 = sub_2518EFD38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464EB0);
    }
  }
}

void sub_2518E45A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2518BC1A8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2518E4608()
{
  if (!qword_27F464EC0)
  {
    sub_2518E4670();
    v0 = sub_2518EFCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464EC0);
    }
  }
}

void sub_2518E4670()
{
  if (!qword_27F464EC8)
  {
    v0 = sub_2518F0208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464EC8);
    }
  }
}

void sub_2518E46C0()
{
  if (!qword_27F464ED8)
  {
    sub_2518E4608();
    sub_2518E4460();
    sub_2518E5518(&qword_27F464EE0, sub_2518E4608);
    sub_2518E5518(&qword_27F464EE8, sub_2518E4460);
    v0 = sub_2518EFC78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464ED8);
    }
  }
}

void sub_2518E47AC()
{
  if (!qword_27F464EF0)
  {
    sub_2518E46C0();
    sub_2518BC1A8(255, &qword_27F464820);
    sub_2518E5518(&qword_27F464EF8, sub_2518E46C0);
    sub_2518C67D0();
    v0 = sub_2518EFCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464EF0);
    }
  }
}

uint64_t sub_2518E4878()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2518E48B8(uint64_t a1)
{
  sub_2518E5494(0, &qword_27F464808, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_2518E494C(size_t a1, int64_t a2, char a3)
{
  result = sub_2518E49EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2518E496C(void *a1, int64_t a2, char a3)
{
  result = sub_2518E4BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2518E498C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2518E49D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

size_t sub_2518E49EC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2518E5494(0, &qword_27F464F70, MEMORY[0x277D11000], MEMORY[0x277D84560]);
  v10 = *(sub_2518EF818() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2518EF818() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2518E4BE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2518E4D28();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2518E4E24(0, &qword_27F464F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2518E4D28()
{
  if (!qword_27F464F08)
  {
    sub_2518E4E24(255, &qword_27F464F10);
    v0 = sub_2518F0908();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464F08);
    }
  }
}

void sub_2518E4D90()
{
  if (!qword_27F464F18)
  {
    sub_2518CBDE4();
    sub_2518E5518(&qword_27F464F20, sub_2518CBDE4);
    v0 = sub_2518EFD88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464F18);
    }
  }
}

uint64_t sub_2518E4E24(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2518E4E80()
{
  if (!qword_27F464F28)
  {
    sub_2518E4D90();
    sub_2518E4670();
    sub_2518E5518(&qword_27F464F30, sub_2518E4D90);
    v0 = sub_2518EFC98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464F28);
    }
  }
}

void sub_2518E4F2C()
{
  if (!qword_27F464F38)
  {
    sub_2518E4FC0();
    sub_2518E5518(&qword_27F464F48, sub_2518E4FC0);
    v0 = sub_2518EFC68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464F38);
    }
  }
}

void sub_2518E4FC0()
{
  if (!qword_27F464F40)
  {
    sub_2518E4670();
    sub_2518E4E24(255, &qword_27F464860);
    v0 = sub_2518EFCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464F40);
    }
  }
}

uint64_t sub_2518E5040()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2518E5090(void *a1, char *a2)
{
  v26 = a2;
  v5 = sub_2518EF648();
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2518EFC28();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27F464E70;
  v29[0] = 0;
  sub_2518E450C();
  swift_allocObject();
  *(v2 + v12) = sub_2518EFD48();
  *(v2 + qword_27F464E88) = MEMORY[0x277D84FA0];
  *(v2 + qword_27F464E78) = a1;
  (*(v6 + 16))(v2 + qword_27F464E80, a2, v5);
  type metadata accessor for ScanResultDataProvider();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v2 + qword_27F465040) = v13;
  sub_2518E5494(0, &qword_27F464F60, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_2518EF7B8();
  *(swift_allocObject() + 16) = xmmword_2518F1EA0;
  v14 = a1;
  sub_2518EFC18();
  v28 = v11;
  v15 = sub_2518E28D0(sub_2518E54F8, v27, 1, 10);
  (*(v9 + 8))(v11, v25);
  sub_2518E2B0C(v15);

  sub_2518EF7A8();
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_2518F06D8();

  strcpy(v29, "MutableArray<");
  HIWORD(v29[1]) = -4864;
  sub_2518EF638();
  v16 = sub_2518EF628();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v24;
  v19(v8, v24);
  MEMORY[0x253085E70](v16, v18);

  MEMORY[0x253085E70](62, 0xE100000000000000);
  v21 = sub_2518EF7C8();

  sub_2518E3250();

  v19(v26, v20);
  return v21;
}

void sub_2518E5494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2518E5518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2518E556C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

void sub_2518E561C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_2518EF578();
    sub_2518E15DC(MEMORY[0x277D84F90]);
    v3 = sub_2518F0048();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }
}

void _s25HealthMedicationsVisionUI0C10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewM0CyyctFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2518F0088();
  v9 = sub_2518F0088();
  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_2518F0088();
  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  [v10 addAction_];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  v15 = sub_2518F0088();
  v18[4] = sub_2518E5FF4;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2518D866C;
  v18[3] = &block_descriptor_3;
  v16 = _Block_copy(v18);

  v17 = [v12 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v10 addAction_];
  [a3 presentViewController:v10 animated:1 completion:0];
}

uint64_t _s25HealthMedicationsVisionUI0C10TapToRadarC8scanning0H7Session14viewControlleryAA08ScanningI0V_So06UIViewK0CtFZ_0(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = sub_2518EF5B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8 + 32;
  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  v10 = *(a1 + 144);
  v24[8] = *(a1 + 128);
  v24[9] = v10;
  v25 = *(a1 + 160);
  v11 = *(a1 + 80);
  v24[4] = *(a1 + 64);
  v24[5] = v11;
  v12 = *(a1 + 112);
  v24[6] = *(a1 + 96);
  v24[7] = v12;
  v13 = *(a1 + 16);
  v24[0] = *a1;
  v14 = *(a1 + 32);
  v24[3] = *(a1 + 48);
  v24[1] = v13;
  v24[2] = v14;
  sub_2518DA190(v24);
  v15 = objc_opt_self();
  v16 = sub_2518F0088();
  v17 = sub_2518F0088();
  v18 = sub_2518F01A8();

  v19 = [v15 hk:0 tapToRadarURLForBundleID:1330752 component:v16 title:v17 description:7 classification:0 reproducibility:0 keywords:2 autoDiagnostics:v18 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_2518EF598();
  (*(v4 + 16))(v7, v9, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v20, v7, v3);
  _s25HealthMedicationsVisionUI0C10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewM0CyyctFZ_0(0xD00000000000009ALL, 0x80000002518F7060, v23, sub_2518E6150, v21);

  return (*(v4 + 8))(v9, v3);
}

uint64_t _s25HealthMedicationsVisionUI0C10TapToRadarC19medicationsTracking14viewControllerySo06UIViewK0C_tFZ_0(void *a1)
{
  v2 = sub_2518EF5B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v10 = sub_2518F0088();
  v11 = sub_2518F0088();
  v12 = [v9 hk:0 tapToRadarURLForBundleID:1397974 component:v10 title:v11 description:7 classification:0 reproducibility:0 keywords:3 autoDiagnostics:0 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_2518EF598();
  (*(v3 + 16))(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v6, v2);
  _s25HealthMedicationsVisionUI0C10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewM0CyyctFZ_0(0x10000000000000D2, 0x80000002518F6E40, a1, sub_2518E6018, v14);

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_2518E5FBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2518E601C()
{
  if (!qword_27F464B40)
  {
    v0 = sub_2518F0908();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464B40);
    }
  }
}

uint64_t objectdestroy_4Tm()
{
  v1 = sub_2518EF5B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2518E6154(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2518C6EE0();
    v5 = a3;
    sub_2518F0238();
  }

  else if (a2)
  {
    sub_2518C6EE0();
    v6 = a2;
    sub_2518F0248();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2518E61F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2518EEFA8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EF138(a3, v11);
  v12 = sub_2518F0298();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2518EF19C(v11);
  }

  else
  {
    sub_2518F0288();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2518F0218();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2518F00F8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2518EF19C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2518EF19C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_2518E64AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2518E6540()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2518EFDB8();

  return v1;
}

char *sub_2518E65B8()
{
  v1 = v0;
  sub_2518EEE1C(0, &qword_27F464838, &type metadata for MedicationDataScanningCoordinatorState, MEMORY[0x277CBCED0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - v5;
  v7 = sub_2518EF618();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_2518EF6E8();
  swift_allocObject();
  *(v0 + 56) = sub_2518EF6D8();
  *(v0 + 64) = 0;
  sub_2518EF608();
  sub_2518EF5D8();
  v12 = v11;
  v13 = *(v8 + 8);
  v13(v10, v7);
  *(v0 + 72) = v12;
  sub_2518EF608();
  sub_2518EF5D8();
  v15 = v14;
  v13(v10, v7);
  *(v0 + 80) = v15 + 10.0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 112) = 1;
  v16 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84FA0];
  *(v0 + 104) = 0;
  *(v0 + 120) = v16;
  *(v0 + 128) = v17;
  *(v0 + 136) = v17;
  *(v0 + 144) = v17;
  *(v0 + 152) = v17;
  sub_2518EF414();
  swift_allocObject();
  *(v0 + 160) = sub_2518EFCF8();
  *(v0 + 168) = 0;
  *(v0 + 176) = MEMORY[0x277D84F98];
  *(v0 + 184) = v17;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = v16;
  v18 = OBJC_IVAR____TtC25HealthMedicationsVisionUI33MedicationDataScanningCoordinator__state;
  v24[1] = 0;
  v24[2] = 0;
  v25 = 2;
  sub_2518EFD98();
  (*(v4 + 32))(&v1[v18], v6, v3);
  v19 = OBJC_IVAR____TtC25HealthMedicationsVisionUI33MedicationDataScanningCoordinator_sessionId;
  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  sub_2518D86D4(&v1[v19]);
  *(v1 + 5) = [objc_allocWithZone(MEMORY[0x277D117D8]) init];
  *(v1 + 3) = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *(v1 + 6) = [objc_allocWithZone(MEMORY[0x277D117E8]) init];
  v20 = *(v1 + 3);
  type metadata accessor for ScanResultDataProvider();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v1 + 4) = v21;
  v22 = v20;
  return v1;
}

id *sub_2518E690C()
{
  v1 = v0[8];
  if (v1)
  {
    [v1 invalidate];
    v2 = v0[8];
  }

  else
  {
    v2 = 0;
  }

  v0[8] = 0;

  MEMORY[0x253086E00](v0 + 2);

  v3 = OBJC_IVAR____TtC25HealthMedicationsVisionUI33MedicationDataScanningCoordinator__state;
  sub_2518EEE1C(0, &qword_27F464838, &type metadata for MedicationDataScanningCoordinatorState, MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC25HealthMedicationsVisionUI33MedicationDataScanningCoordinator_sessionId;
  v6 = sub_2518EF648();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_2518E6A80()
{
  sub_2518E690C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicationDataScanningCoordinator()
{
  result = qword_27F464F80;
  if (!qword_27F464F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2518E6B2C()
{
  sub_2518EEE1C(319, &qword_27F464838, &type metadata for MedicationDataScanningCoordinatorState, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_2518EF648();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2518E6C9C(char a1)
{
  v3 = sub_2518EF618();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EF6B8();
  if (a1)
  {
    sub_2518EF608();
    sub_2518EF5D8();
    v8 = v7;
    (*(v4 + 8))(v6, v3);
    *(v1 + 88) = v8;
    *(v1 + 96) = 0;
    [*(v1 + 64) invalidate];
    v9 = *(v1 + 64);
    *(v1 + 64) = 0;
  }

  v10 = *(v1 + 64);
  if (!v10 || ([v10 isValid] & 1) == 0)
  {
    v11 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_pulseTimerFiredWithTimer_ selector:0 userInfo:1 repeats:0.1];
    v12 = *(v1 + 64);
    *(v1 + 64) = v11;
  }

  return sub_2518EF6C8();
}

void sub_2518E6E24(uint64_t a1)
{
  v2 = v1;
  v82 = sub_2518EFF18();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EEFA8();
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2518EFAF8();
  v8 = *(v86 - 8);
  v9 = MEMORY[0x28223BE20](v86);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v73 - v11;
  v96 = sub_2518EFEF8();
  v13 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v99 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2518EFF28();
  v15 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2518EFDB8();

  if (v105 < 2u)
  {
    sub_2518EEF4C(v103, v104, v105);
    return;
  }

  if (!(v103 ^ 1 | v104))
  {
    v95 = *(a1 + 16);
    if (v95)
    {
      v19 = *(v15 + 16);
      v18 = v15 + 16;
      v92 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v93 = v19;
      v91 = (v18 + 72);
      v85 = (v8 + 8);
      v76 = (v18 - 8);
      v90 = *MEMORY[0x277CE3090];
      v84 = (v18 + 80);
      v75 = (v4 + 32);
      v79 = *MEMORY[0x277CE3098];
      v74 = (v4 + 8);
      v78 = (v13 + 32);
      v77 = (v13 + 8);
      v20 = 0;
      v94 = v18;
      v89 = *(v18 + 56);
      *&v17 = 136446210;
      v73 = v17;
      v83 = v12;
      do
      {
        v22 = v97;
        v21 = v98;
        v93(v97, v92 + v89 * v20, v98);
        v23 = (*v91)(v22, v21);
        if (v23 != v90)
        {
          if (v23 == v79)
          {
            (*v84)(v22, v21);
            (*v75)(v81, v22, v82);
            v35 = objc_opt_self();
            v36 = sub_2518EFF08();
            v37 = [v35 parsedGTIN14CodeFromBarcodeObservation_];

            if (v37)
            {
              v38 = sub_2518F00B8();
              v40 = v39;

              sub_2518E7D5C(808, v38, v40);
            }

            (*v74)(v81, v82);
          }

          else
          {
            sub_2518EFAC8();
            v69 = sub_2518EFAE8();
            v70 = sub_2518F0318();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&dword_2518B7000, v69, v70, "Encountered unexpected recognized item", v71, 2u);
              MEMORY[0x253086D30](v71, -1, -1);
            }

            (*v85)(v80, v86);
            (*v76)(v22, v21);
          }

          goto LABEL_7;
        }

        (*v84)(v22, v21);
        (*v78)(v99, v22, v96);
        v24 = sub_2518EFED8();
        v26 = v25;
        sub_2518EFAC8();

        v27 = sub_2518EFAE8();
        v28 = sub_2518F0308();

        v29 = os_log_type_enabled(v27, v28);
        v88 = v20;
        if (v29)
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v106 = v31;
          *v30 = v73;
          v103 = v24;
          v104 = v26;

          v32 = sub_2518F0108();
          v34 = sub_2518EBED8(v32, v33, &v106);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_2518B7000, v27, v28, "Received new transcript: %{public}s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x253086D30](v31, -1, -1);
          MEMORY[0x253086D30](v30, -1, -1);

          (*v85)(v83, v86);
        }

        else
        {

          (*v85)(v12, v86);
        }

        v41 = *(v2 + 48);
        v42 = sub_2518F0088();

        v43 = [v41 parsedNDCCodeFromString_];

        if (v43)
        {
          v44 = sub_2518F00B8();
          v46 = v45;

          sub_2518E7D5C(805, v44, v46);
        }

        v87 = sub_2518EFEE8();
        v47 = [v87 topCandidates_];
        sub_2518BC1A8(0, &qword_27F464FA0);
        v48 = sub_2518F01B8();

        v49 = v48;
        if (v48 >> 62)
        {
          v72 = sub_2518F0648();
          v49 = v48;
          v50 = v72;
          if (v72)
          {
LABEL_20:
            if (v50 < 1)
            {
              __break(1u);
              return;
            }

            v51 = 0;
            v101 = v49 & 0xC000000000000001;
            v102 = v49;
            do
            {
              if (v101)
              {
                v52 = MEMORY[0x253086400](v51);
              }

              else
              {
                v52 = *(v49 + 8 * v51 + 32);
              }

              v53 = v52;
              v54 = [v52 string];
              v55 = sub_2518F00B8();
              v57 = v56;

              sub_2518EF6B8();
              swift_beginAccess();

              sub_2518EC4B0(&v106, v55, v57);
              swift_endAccess();

              swift_beginAccess();
              v58 = *(v2 + 120);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 120) = v58;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v58 = sub_2518DD6F4(0, *(v58 + 2) + 1, 1, v58);
                *(v2 + 120) = v58;
              }

              v61 = *(v58 + 2);
              v60 = *(v58 + 3);
              if (v61 >= v60 >> 1)
              {
                v58 = sub_2518DD6F4((v60 > 1), v61 + 1, 1, v58);
              }

              *(v58 + 2) = v61 + 1;
              v62 = &v58[16 * v61];
              *(v62 + 4) = v55;
              *(v62 + 5) = v57;
              *(v2 + 120) = v58;
              swift_endAccess();
              v63 = *(v2 + 113);
              sub_2518EF6C8();
              if (v63 != 1)
              {
                v64 = sub_2518F0298();
                v65 = v100;
                (*(*(v64 - 8) + 56))(v100, 1, 1, v64);
                v66 = swift_allocObject();
                swift_weakInit();
                sub_2518F0278();

                v67 = sub_2518F0268();
                v68 = swift_allocObject();
                v68[2] = v67;
                v68[3] = MEMORY[0x277D85700];
                v68[4] = v66;

                sub_2518E61F4(0, 0, v65, &unk_2518F2FC0, v68);
              }

              ++v51;

              v49 = v102;
            }

            while (v50 != v51);
          }
        }

        else
        {
          v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v50)
          {
            goto LABEL_20;
          }
        }

        (*v77)(v99, v96);
        v12 = v83;
        v20 = v88;
LABEL_7:
        ++v20;
      }

      while (v20 != v95);
    }
  }
}

void sub_2518E7954(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2518EFAF8();
  v28 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_2518F0008();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2518EFDB8();

  if (!v31)
  {
    v14 = 0;
    goto LABEL_5;
  }

  if (v31 == 1)
  {
    v14 = 1;
LABEL_5:
    sub_2518EEF4C(v29, v30, v14);
    return;
  }

  if (!(v29 ^ 1 | v30))
  {
    (*(v11 + 16))(v13, a1, v10);
    v15 = (*(v11 + 88))(v13, v10);
    if (v15 == *MEMORY[0x277CE3108] || v15 == *MEMORY[0x277CE30F0])
    {
      sub_2518EFAC8();
      v17 = sub_2518EFAE8();
      v18 = sub_2518F0308();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2518B7000, v17, v18, "Stability Low", v19, 2u);
        MEMORY[0x253086D30](v19, -1, -1);
      }

      (*(v28 + 8))(v9, v4);
      sub_2518EF6B8();
      [*(v2 + 64) invalidate];
      v20 = *(v2 + 64);
      *(v2 + 64) = 0;

      sub_2518EF6C8();
    }

    else
    {
      sub_2518EFAC8();
      v21 = sub_2518EFAE8();
      v22 = sub_2518F0308();
      if (os_log_type_enabled(v21, v22))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2518B7000, v21, v22, "Stability Normal", v24, 2u);
        MEMORY[0x253086D30](v24, -1, -1);
      }

      (*(v28 + 8))(v7, v4);
      sub_2518EF6B8();
      v25 = *(v2 + 64);
      if (!v25 || ![v25 isValid])
      {
        v26 = [objc_opt_self() scheduledTimerWithTimeInterval:v2 target:sel_pulseTimerFiredWithTimer_ selector:0 userInfo:1 repeats:0.1];
        v27 = *(v2 + 64);
        *(v2 + 64) = v26;
      }

      sub_2518EF6C8();
      (*(v11 + 8))(v13, v10);
    }
  }
}

void sub_2518E7D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2518EF618();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EF6B8();
  swift_beginAccess();
  v12 = *(v3 + 144);

  v13 = sub_2518E8118(a2, a3, v12);

  if (v13)
  {
    sub_2518EF6C8();
  }

  else
  {
    swift_beginAccess();

    sub_2518EC4B0(v33, a2, a3);
    swift_endAccess();

    sub_2518EF608();
    sub_2518EF5D8();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    *(v4 + 168) = v15;
    sub_2518EF6C8();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a2;
    v17[4] = a3;
    v18 = objc_allocWithZone(MEMORY[0x277D11528]);

    v19 = sub_2518F0088();
    v31 = sub_2518EEF40;
    v32 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_2518EB81C;
    v30 = &block_descriptor_78;
    v20 = _Block_copy(&aBlock);
    v21 = [v18 initWithMachineReadableCode:v19 codeAttributeType:a1 resultsHandler:v20];

    _Block_release(v20);

    aBlock = 0;
    v28 = 0xE000000000000000;
    v22 = v21;
    sub_2518F06D8();

    aBlock = 0xD000000000000017;
    v28 = 0x80000002518F72C0;
    v33[0] = a2;
    v33[1] = a3;

    v23 = sub_2518F0118();
    MEMORY[0x253085E70](v23);

    MEMORY[0x253085E70](0xD000000000000010, 0x80000002518F72E0);
    v33[0] = a1;
    type metadata accessor for HKConceptAttributeType(0);
    v24 = sub_2518F0118();
    MEMORY[0x253085E70](v24);

    v25 = sub_2518F0088();

    [v22 setDebugIdentifier_];

    [*(v4 + 24) executeQuery_];
  }
}

uint64_t sub_2518E8118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2518F0978();
  sub_2518F0148();
  v6 = sub_2518F09A8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2518F0918() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}