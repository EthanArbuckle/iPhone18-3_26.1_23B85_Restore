uint64_t sub_1D6A48B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6A492C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6A48B7C(uint64_t a1)
{
  v2 = sub_1D6A48F94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A48BB8(uint64_t a1)
{
  v2 = sub_1D6A48F94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6A48BF4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6A48C50(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D6A48C50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6A4908C(0, &qword_1EC890588, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A48F94();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v22 = v11;
  v28 = 1;
  v20 = sub_1D72642BC();
  v21 = v14;
  v27 = 2;
  v24 = sub_1D72642CC() & 1;
  v26 = 3;
  v30 = sub_1D72642CC() & 1;
  sub_1D6A48FE8();
  v25 = 4;
  sub_1D6A490F0(&qword_1EC8905A0, sub_1D6A49038);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v15 = v23;
  v16 = v24;
  v17 = v30;

  v18 = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v22;
  *(a2 + 8) = v13;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 33) = v17;
  *(a2 + 40) = v15;
  return result;
}

unint64_t sub_1D6A48F94()
{
  result = qword_1EC890590;
  if (!qword_1EC890590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890590);
  }

  return result;
}

void sub_1D6A48FE8()
{
  if (!qword_1EC890598)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890598);
    }
  }
}

unint64_t sub_1D6A49038()
{
  result = qword_1EC8905A8;
  if (!qword_1EC8905A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8905A8);
  }

  return result;
}

void sub_1D6A4908C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A48F94();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotManifestResult.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6A490F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6A48FE8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6A4915C()
{
  result = qword_1EC8905C0;
  if (!qword_1EC8905C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8905C0);
  }

  return result;
}

unint64_t sub_1D6A491C4()
{
  result = qword_1EC8905C8;
  if (!qword_1EC8905C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8905C8);
  }

  return result;
}

unint64_t sub_1D6A4921C()
{
  result = qword_1EC8905D0;
  if (!qword_1EC8905D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8905D0);
  }

  return result;
}

unint64_t sub_1D6A49274()
{
  result = qword_1EC8905D8;
  if (!qword_1EC8905D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8905D8);
  }

  return result;
}

uint64_t sub_1D6A492C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001D73B9680 == a2;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73E13C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73E13E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74786554646C6F62 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746F687370616E73 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D6A4948C()
{

  return swift_deallocClassInstance();
}

id FCPuzzleProviding.puzzleTypeTraits.getter()
{
  v1 = [objc_msgSend(v0 puzzleType)];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SharingIssueActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingIssueActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t GroupLayoutContentSizeCategory.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 2)
  {
    if (*(v0 + 8))
    {
      if (v2 == 1)
      {
        sub_1D7263D4C();

        v3 = 0xD000000000000013;
        goto LABEL_8;
      }

      v4 = 0x2072657461657247;
    }

    else
    {
      v4 = 0x616874207373654CLL;
    }

LABEL_14:
    v8 = v4;
    goto LABEL_15;
  }

  if (*(v0 + 8) <= 4u)
  {
    if (v2 == 3)
    {
      sub_1D7263D4C();

      v3 = 0xD000000000000016;
LABEL_8:
      v8 = v3;
LABEL_15:
      v5 = UIContentSizeCategory.description.getter();
      MEMORY[0x1DA6F9910](v5);

      return v8;
    }

    v4 = 0x206C61757145;
    goto LABEL_14;
  }

  if (v2 == 5)
  {
    v4 = 544501582;
    goto LABEL_14;
  }

  v7 = 0x5841206F4ELL;
  if (v1 != 1)
  {
    v7 = 0x584120796C6E4FLL;
  }

  if (v1)
  {
    return v7;
  }

  else
  {
    return 7958081;
  }
}

uint64_t sub_1D6A497EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6A49834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6A49878(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D6A498A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6A498E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6A49964(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D72611CC();
  v11 = 1;
  sub_1D6A49C4C(v2, &v26);
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v16 = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v24[8] = v34;
  v24[9] = v35;
  v24[10] = v36;
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[7] = v33;
  v24[0] = v26;
  v24[1] = v27;
  v23 = v37[0];
  v25 = v37[0];
  v24[2] = v28;
  v24[3] = v29;
  v5 = MEMORY[0x1E6981F40];
  sub_1D6A4AC70(&v12, &v8, &qword_1EC8905E0, sub_1D6A4A628, MEMORY[0x1E6981F40]);
  sub_1D6A4ACE0(v24, &qword_1EC8905E0, sub_1D6A4A628, v5);
  *&v10[135] = v20;
  *&v10[151] = v21;
  *&v10[167] = v22;
  *&v10[71] = v16;
  *&v10[87] = v17;
  *&v10[103] = v18;
  *&v10[119] = v19;
  *&v10[7] = v12;
  *&v10[23] = v13;
  *&v10[39] = v14;
  *&v10[55] = v15;
  *&v9[129] = *&v10[128];
  *&v9[145] = *&v10[144];
  *&v9[161] = *&v10[160];
  *&v9[65] = *&v10[64];
  *&v9[81] = *&v10[80];
  *&v9[97] = *&v10[96];
  *&v9[113] = *&v10[112];
  *&v9[1] = *v10;
  *&v9[17] = *&v10[16];
  *&v9[33] = *&v10[32];
  v10[183] = v23;
  v8 = v4;
  v9[0] = v11;
  *&v9[177] = *&v10[176];
  *&v9[49] = *&v10[48];
  v9[185] = 0;
  sub_1D7260EDC();
  sub_1D6A4AA80(0, &qword_1EC890600, sub_1D6A4A784, sub_1D5F25A44);
  sub_1D6A4A89C();
  sub_1D72617DC();
  v36 = *&v9[144];
  v37[0] = *&v9[160];
  *(v37 + 10) = *&v9[170];
  v32 = *&v9[80];
  v33 = *&v9[96];
  v34 = *&v9[112];
  v35 = *&v9[128];
  v28 = *&v9[16];
  v29 = *&v9[32];
  v30 = *&v9[48];
  v31 = *&v9[64];
  v26 = v8;
  v27 = *v9;
  sub_1D6A4A9F4(&v26);
  *&v8 = sub_1D726185C();
  v6 = sub_1D726199C();
  sub_1D6A4AA80(0, &qword_1EC890628, sub_1D6A4AAF4, sub_1D5F260A0);
  *(a1 + *(v7 + 36)) = v6;
}

uint64_t sub_1D6A49C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6A4ABA8(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v48 - v6;
  v54 = sub_1D726125C();
  LOBYTE(v65) = 1;
  sub_1D6A4A0DC(a1, v73);
  *&v72[7] = v73[0];
  *&v72[23] = v73[1];
  *&v72[39] = v73[2];
  *&v72[55] = v73[3];
  v53 = v65;
  if (*(a1 + 49))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v65 = sub_1D6A4A528(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);
    v66 = v17;
    sub_1D5BF4D9C();
    v18 = sub_1D726171C();
    v20 = v19;
    v22 = v21;
    sub_1D726165C();
    v23 = sub_1D726163C();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    sub_1D726167C();
    sub_1D6A4ACE0(v7, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v24 = sub_1D72616DC();
    v51 = v25;
    v52 = v24;
    v27 = v26;

    sub_1D5F26348(v18, v20, v22 & 1);

    v28 = [objc_opt_self() tertiaryLabelColor];
    sub_1D726189C();
    v29 = v27;
    v31 = v51;
    v30 = v52;
    v49 = sub_1D72616BC();
    v9 = v32;
    v50 = v33;
    v35 = v34;

    sub_1D5F26348(v30, v31, v29 & 1);

    v36 = sub_1D726161C();
    sub_1D7260E5C();
    v10 = v35;
    v8 = v49;
    LOBYTE(v65) = v50 & 1;
    LOBYTE(v57) = 0;
    v12 = v50 & 1;
    v11 = v36;
  }

  v37 = v54;
  v57 = v54;
  v38 = v53;
  v58[0] = v53;
  *&v58[17] = *&v72[16];
  *&v58[33] = *&v72[32];
  *&v58[49] = *&v72[48];
  *&v58[64] = *&v72[63];
  *&v59 = v8;
  *&v58[1] = *v72;
  v56 = 1;
  *(&v59 + 1) = v9;
  *&v60 = v12;
  *(&v60 + 1) = v10;
  *&v61 = v11;
  *(&v61 + 1) = v13;
  *&v62[0] = v14;
  *(&v62[0] + 1) = v15;
  *&v62[1] = v16;
  BYTE8(v62[1]) = 0;
  *(v55 + 7) = v59;
  v55[4] = *(v62 + 9);
  *(&v55[3] + 7) = v62[0];
  *(&v55[2] + 7) = v61;
  *(&v55[1] + 7) = v60;
  v39 = *v58;
  *a2 = v54;
  *(a2 + 16) = v39;
  v40 = *&v58[16];
  v41 = *&v58[48];
  v42 = *&v58[64];
  *(a2 + 48) = *&v58[32];
  *(a2 + 64) = v41;
  *(a2 + 32) = v40;
  *(a2 + 80) = v42;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v43 = v55[1];
  *(a2 + 97) = v55[0];
  v44 = v55[2];
  v45 = v55[3];
  *(a2 + 161) = v55[4];
  *(a2 + 145) = v45;
  *(a2 + 129) = v44;
  *(a2 + 113) = v43;
  v63[0] = v8;
  v63[1] = v9;
  v63[2] = v12;
  v63[3] = v10;
  v63[4] = v11;
  v63[5] = v13;
  v63[6] = v14;
  v63[7] = v15;
  v63[8] = v16;
  v64 = 0;
  sub_1D6A4AC0C(&v57, &v65);
  v46 = MEMORY[0x1E69E6720];
  sub_1D6A4AC70(&v59, &v65, &qword_1EC8905F8, sub_1D6154D8C, MEMORY[0x1E69E6720]);
  sub_1D6A4ACE0(v63, &qword_1EC8905F8, sub_1D6154D8C, v46);
  v65 = v37;
  v66 = 0;
  v67 = v38;
  v69 = *&v72[16];
  v70 = *&v72[32];
  *v71 = *&v72[48];
  *&v71[15] = *&v72[63];
  v68 = *v72;
  return sub_1D6A4AD3C(&v65);
}

uint64_t sub_1D6A4A0DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = MEMORY[0x1E6980E30];
  v4 = MEMORY[0x1E69E6720];
  sub_1D6A4ABA8(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v55 - v7;
  v59 = a1;
  v9 = a1[1];
  v62 = *a1;
  v63 = v9;
  v10 = sub_1D5BF4D9C();

  v58 = v10;
  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  sub_1D726165C();
  v16 = sub_1D726163C();
  v17 = *(v16 - 8);
  v56 = *(v17 + 56);
  v57 = v16;
  v55[1] = v17 + 56;
  v56(v8, 1, 1);
  sub_1D726167C();
  sub_1D6A4ACE0(v8, &qword_1EC881178, v3, v4);
  v18 = sub_1D72616DC();
  v20 = v19;
  v22 = v21;

  sub_1D5F26348(v11, v13, v15 & 1);

  sub_1D726188C();
  v23 = sub_1D72616BC();
  v60 = v24;
  v26 = v25;
  v28 = v27;

  sub_1D5F26348(v18, v20, v22 & 1);

  v29 = v59[3];
  if (v29)
  {
    v62 = v59[2];
    v63 = v29;

    v30 = sub_1D726171C();
    v32 = v31;
    v34 = v33;
    (v56)(v8, 1, 1, v57);
    sub_1D726167C();
    LODWORD(v57) = v26;
    sub_1D6A4ACE0(v8, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v35 = sub_1D72616DC();
    v58 = v23;
    v59 = v28;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    sub_1D5F26348(v30, v32, v34 & 1);

    v41 = [objc_opt_self() tertiaryLabelColor];
    sub_1D726189C();
    v42 = sub_1D72616BC();
    v44 = v43;
    LOBYTE(v30) = v45;
    v47 = v46;
    LOBYTE(v26) = v57;

    v48 = v36;
    v49 = v38;
    v23 = v58;
    v28 = v59;
    sub_1D5F26348(v48, v49, v40 & 1);

    v50 = v30 & 1;
    sub_1D5F26358(v42, v44, v30 & 1);
  }

  else
  {
    v42 = 0;
    v44 = 0;
    v50 = 0;
    v47 = 0;
  }

  v51 = v26 & 1;
  v52 = v60;
  sub_1D5F26358(v23, v60, v51);

  sub_1D6A4AD98(v42, v44, v50, v47);
  sub_1D68C4240(v42, v44, v50, v47);
  LOBYTE(v62) = v51;
  v53 = v61;
  *v61 = v23;
  v53[1] = v52;
  *(v53 + 16) = v51;
  v53[3] = v28;
  v53[4] = v42;
  v53[5] = v44;
  v53[6] = v50;
  v53[7] = v47;
  sub_1D68C4240(v42, v44, v50, v47);
  sub_1D5F26348(v23, v52, v51);
}

uint64_t sub_1D6A4A528(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1D72644BC();
  }

  v5 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](543584032, 0xE400000000000000);
  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  return v5;
}

void sub_1D6A4A628()
{
  if (!qword_1EC8905E8)
  {
    sub_1D6A4A6D0();
    sub_1D6A4ABA8(255, &qword_1EC8905F8, sub_1D6154D8C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC8905E8);
    }
  }
}

void sub_1D6A4A6D0()
{
  if (!qword_1EC8905F0)
  {
    sub_1D6A4ABA8(255, &qword_1EC87E088, sub_1D5DEF45C, MEMORY[0x1E6981F40]);
    sub_1D6A4A838(&qword_1EC87E0A0, &qword_1EC87E088, sub_1D5DEF45C);
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8905F0);
    }
  }
}

void sub_1D6A4A784()
{
  if (!qword_1EC890608)
  {
    sub_1D6A4ABA8(255, &qword_1EC8905E0, sub_1D6A4A628, MEMORY[0x1E6981F40]);
    sub_1D6A4A838(&qword_1EC890610, &qword_1EC8905E0, sub_1D6A4A628);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890608);
    }
  }
}

uint64_t sub_1D6A4A838(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6A4ABA8(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6A4A89C()
{
  result = qword_1EC890618;
  if (!qword_1EC890618)
  {
    sub_1D6A4AA80(255, &qword_1EC890600, sub_1D6A4A784, sub_1D5F25A44);
    sub_1D6A4A9AC(&qword_1EC890620, sub_1D6A4A784);
    sub_1D6A4A9AC(&qword_1EC881138, sub_1D5F25A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890618);
  }

  return result;
}

uint64_t sub_1D6A4A9AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6A4A9F4(uint64_t a1)
{
  sub_1D6A4AA80(0, &qword_1EC890600, sub_1D6A4A784, sub_1D5F25A44);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6A4AA80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6A4AAF4()
{
  if (!qword_1EC890630)
  {
    sub_1D6A4AA80(255, &qword_1EC890600, sub_1D6A4A784, sub_1D5F25A44);
    sub_1D6A4A89C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC890630);
    }
  }
}

void sub_1D6A4ABA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A4AC0C(uint64_t a1, uint64_t a2)
{
  sub_1D6A4A6D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A4AC70(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D6A4ABA8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6A4ACE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6A4ABA8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6A4AD3C(uint64_t a1)
{
  sub_1D6A4A6D0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6A4AD98(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D5F26358(result, a2, a3 & 1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatGrayscaleColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_1D6A4AE18()
{
  result = qword_1EC890638;
  if (!qword_1EC890638)
  {
    sub_1D6A4AA80(255, &qword_1EC890628, sub_1D6A4AAF4, sub_1D5F260A0);
    sub_1D6A4AA80(255, &qword_1EC890600, sub_1D6A4A784, sub_1D5F25A44);
    sub_1D6A4A89C();
    swift_getOpaqueTypeConformance2();
    sub_1D6A4A9AC(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890638);
  }

  return result;
}

unint64_t FormatShareAttributionNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

unint64_t FormatShareAttributionNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatShareAttributionNode.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatShareAttributionNode.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t FormatShareAttributionNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1D5C92A8C(*(v1 + 16));
  *(v1 + 16) = v2;
  return result;
}

uint64_t FormatShareAttributionNode.adjustments.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t FormatShareAttributionNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1D5EB15C4(*(v1 + 48));
  *(v1 + 48) = v2;
  return result;
}

void FormatShareAttributionNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t FormatShareAttributionNode.selectors.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t FormatShareAttributionNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t sub_1D6A4B21C@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v17 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v43 = *a2;
  v18 = v43;
  v19 = *(v17 + 40);
  if (v19)
  {
    v40 = *(v17 + 32);
    v41 = v19;
    sub_1D6A4BCE0(&v43, v39, sub_1D6A4BC88);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v18, *(&v18 + 1));
    v36 = v41;
    v37 = v40;
  }

  else
  {
    sub_1D6A4BCE0(&v43, &v40, sub_1D6A4BC88);

    v36 = *(&v18 + 1);
    v37 = v18;
  }

  type metadata accessor for SharedItem();
  v20 = sub_1D72583DC();
  v22 = v21;
  v40 = a3;
  v41 = a4;

  MEMORY[0x1DA6F9910](v20, v22);

  v34 = v41;
  v35 = v40;
  v23 = *(a2 + 3);
  if (!v23)
  {
    v24 = v18;
    goto LABEL_8;
  }

  v24 = v18;
  v25 = *(v23 + 16);
  swift_beginAccess();
  if (!*(*(v25 + 16) + 16))
  {
LABEL_8:
    v26 = a3;
    v25 = 0;
    goto LABEL_9;
  }

  v26 = a3;

LABEL_9:
  v27 = swift_allocObject();
  v28 = *(a2 + 5);
  v39[0] = *(a2 + 6);
  v42 = v39[0];
  sub_1D6A4BCE0(v39, &v44, sub_1D6A4BD48);
  sub_1D615B4A8(a1, &v44);
  sub_1D5EB15C4(v42);
  v29 = v44;
  v30 = *(a2 + 56);
  type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = a4;
  *(v31 + 32) = v37;
  *(v31 + 40) = v36;
  *(v31 + 48) = v24;
  *(v31 + 56) = *(&v18 + 1);
  *(v31 + 64) = v35;
  *(v31 + 72) = v34;
  *(v31 + 80) = a6;
  *(v31 + 88) = a7;
  *(v31 + 96) = a8;
  *(v31 + 104) = a9;
  *(v31 + 112) = v25;
  *(v31 + 120) = v28;
  *(v31 + 128) = v29;
  *(v31 + 136) = v30;
  v32 = *(a2 + 8);
  *(v31 + 152) = *(a2 + 72);
  *(v31 + 144) = v32;
  *(v31 + 160) = MEMORY[0x1E69E7CD0];
  *(v27 + 16) = v31;
  *a5 = v27 | 0x8000000000000000;
}

BOOL _s8NewsFeed26FormatShareAttributionNodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v56 = *(a1 + 48);
  v57 = *(a1 + 40);
  v55 = *(a1 + 56);
  v49 = *(a1 + 72);
  v46 = *(a1 + 80);
  v47 = *(a1 + 64);
  v44 = *(a1 + 88);
  v39 = *(a1 + 96);
  v40 = *(a1 + 104);
  v41 = *(a1 + 112);
  v6 = *(a1 + 120);
  v5 = *(a1 + 128);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v54 = *(a2 + 56);
  v48 = *(a2 + 72);
  v45 = *(a2 + 80);
  v42 = *(a2 + 64);
  v43 = *(a2 + 88);
  v58 = *(a2 + 96);
  v51 = *(a2 + 112);
  v52 = *(a2 + 104);
  v50 = *(a2 + 120);
  v53 = *(a2 + 128);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v66 = v2;
  v60 = v7;
  if ((static FormatSize.== infix(_:_:)(&v66, &v60) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    v12 = *(v4 + 16);
    v38 = v5;
    v13 = *(v8 + 16);
    swift_beginAccess();
    v37 = v6;
    v14 = *(v12 + 16);
    swift_beginAccess();
    v15 = *(v13 + 16);

    v16 = sub_1D5E1F5F0(v14, v15);

    v5 = v38;

    v6 = v37;

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v18 = sub_1D633CED4(v3, v10);
  result = 0;
  if (v18)
  {
    v19 = v58;
    if (v57 == v9)
    {
      v66 = v56;
      v60 = v11;
      v20 = static FormatVisibility.== infix(_:_:)(&v66, &v60);
      result = 0;
      if (v20 && ((v55 ^ v54) & 1) == 0)
      {
        if (v49 <= 0xFD)
        {
          v66 = v47;
          LOBYTE(v67) = v49;
          v21 = v52;
          v22 = v53;
          v24 = v50;
          v23 = v51;
          if (v48 > 0xFD)
          {
            return 0;
          }

          v60 = v42;
          LOBYTE(v61) = v48;
          if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v66, &v60) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v21 = v52;
          v22 = v53;
          v24 = v50;
          v23 = v51;
          if (v48 <= 0xFD)
          {
            return 0;
          }
        }

        if (sub_1D5BFC390(v46, v45))
        {
          v25 = v44;
          if (v44)
          {
            v66 = v44;
            v67 = v39;
            v68 = v40;
            v69 = v41;
            v70 = v6;
            v71 = v5;
            if (v43)
            {
              v60 = v43;
              v61 = v58;
              v62 = v21;
              v63 = v23;
              v64 = v24;
              v65 = v22;
              sub_1D5EB1D80(v44, v39, v40, v41, v6);
              sub_1D5EB1D80(v43, v58, v21, v23, v24);
              sub_1D5EB1D80(v44, v39, v40, v41, v6);
              v59 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v66, &v60);
              v26 = v64;

              sub_1D5CBF568(v26);

              v27 = v70;

              sub_1D5CBF568(v27);

              sub_1D5EB2398(v44, v39, v40, v41, v6);
              return (v59 & 1) != 0;
            }

            v34 = v21;
            v29 = v39;
            v28 = v40;
            v30 = v41;
            sub_1D5EB1D80(v44, v39, v40, v41, v6);
            v19 = v58;
            v35 = v34;
            v36 = v24;
            v33 = v24;
            v32 = v51;
            sub_1D5EB1D80(0, v58, v35, v51, v36);
            sub_1D5EB1D80(v44, v39, v40, v41, v6);

            sub_1D5CBF568(v6);

            v31 = 0;
          }

          else
          {
            v29 = v39;
            v28 = v40;
            v30 = v41;
            sub_1D5EB1D80(0, v39, v40, v41, v6);
            v31 = v43;
            if (!v43)
            {
              sub_1D5EB1D80(0, v58, v52, v51, v50);
              sub_1D5EB2398(0, v39, v40, v41, v6);
              return 1;
            }

            v32 = v51;
            v33 = v50;
            sub_1D5EB1D80(v43, v58, v52, v51, v50);
            v25 = 0;
          }

          sub_1D5EB2398(v25, v29, v28, v30, v6);
          sub_1D5EB2398(v31, v19, v52, v32, v33);
        }

        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D6A4B9F0(uint64_t a1)
{
  result = sub_1D6A4BA18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A4BA18()
{
  result = qword_1EC890640;
  if (!qword_1EC890640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890640);
  }

  return result;
}

unint64_t sub_1D6A4BA6C(void *a1)
{
  a1[1] = sub_1D66A5604();
  a1[2] = sub_1D66FAFA0();
  result = sub_1D6A4BAA4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A4BAA4()
{
  result = qword_1EC890648;
  if (!qword_1EC890648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890648);
  }

  return result;
}

unint64_t sub_1D6A4BAF8(uint64_t a1)
{
  result = sub_1D6A4BB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A4BB20()
{
  result = qword_1EC890650;
  if (!qword_1EC890650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890650);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10FormatSizeO(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 22;
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D6A4BBD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6A4BC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6A4BC88()
{
  if (!qword_1EDF2CA88)
  {
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2CA88);
    }
  }
}

uint64_t sub_1D6A4BCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6A4BD48()
{
  if (!qword_1EC890658)
  {
    sub_1D5DF69B8();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890658);
    }
  }
}

uint64_t WebEmbedManager.__allocating_init(resolver:)(__int128 *a1)
{
  v2 = swift_allocObject();
  WebEmbedManager.init(resolver:)(a1);
  return v2;
}

void WebEmbedManager.pluginContainerController.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
}

void (*WebEmbedManager.pluginContainerController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D6A4BF14;
}

void sub_1D6A4BF14(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[5] + 3) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1D6A4BF94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(*(v2 + 144) + 16) && (sub_1D5C5E034(a2), (v6 & 1) != 0))
  {
    swift_endAccess();

    v7 = sub_1D725B7DC();

    if (v7)
    {
      return v7;
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_1D6A4C964(a1 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization);
  swift_beginAccess();

  v8 = sub_1D6A4C824(a2);
  if (v8 || (v8 = sub_1D6209084()) != 0)
  {
    v9 = v8;
    swift_endAccess();
    goto LABEL_9;
  }

  v15 = sub_1D5FCFD54(v14);
  v17 = v16;

  if (v17)
  {
    swift_endAccess();
LABEL_16:
    sub_1D6A4C2B8(0);
    v19 = v18;
    sub_1D5B62D74(0, &qword_1EDF17AE8, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69D6A90]);
    swift_allocObject();
    v7 = v19;
    v20 = sub_1D725B7EC();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v3 + 144);
    *(v3 + 144) = 0x8000000000000000;
    sub_1D6D7A99C(v20, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 144) = v23;
    goto LABEL_11;
  }

  v9 = sub_1D6A4C824(v15);
  swift_endAccess();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_9:
  result = [v9 view];
  if (result)
  {
    v11 = result;
    [result ts:0 setHiddenForReuse:?];

    sub_1D5B62D74(0, &qword_1EDF17AE8, type metadata accessor for WebEmbedViewController, MEMORY[0x1E69D6A90]);
    swift_allocObject();
    v7 = v9;
    v12 = sub_1D725B7EC();
    swift_beginAccess();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + 144);
    *(v3 + 144) = 0x8000000000000000;
    sub_1D6D7A99C(v12, a2, v13);
    *(v3 + 144) = v22;
LABEL_11:
    swift_endAccess();

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1D6A4C2B8(char a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  type metadata accessor for WebEmbedViewController();
  v3 = sub_1D725AABC();
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  if (a1)
  {
    v5 = [v3 view];
    if (!v5)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 ts:1 setHiddenForReuse:?];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  swift_getObjectType();
  v9 = v4;
  [v8 addChildViewController_];
  v10 = sub_1D725ED9C();
  v11 = [v9 view];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v10 addSubview_];

  [v9 didMoveToParentViewController_];
}

id sub_1D6A4C430(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D607E9BC(a3);
  swift_endAccess();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  result = [a2 view];
  if (result)
  {
    v9 = result;
    [result ts:1 setHiddenForReuse:?];

    swift_getObjectType();
    v10 = sub_1D725ED9C();
    result = [a2 view];
    if (result)
    {
      v11 = result;
      [v10 addSubview_];

LABEL_5:
      sub_1D6A4C964(a1 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization);
      swift_beginAccess();

      sub_1D6A4C6CC(a2, a3, 0);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t WebEmbedManager.deinit()
{
  sub_1D68481D0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t WebEmbedManager.__deallocating_deinit()
{
  WebEmbedManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D6A4C6CC(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = a1;
    MEMORY[0x1DA6F9CE0]();
    if (*((v3[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    return sub_1D726278C();
  }

  else
  {
    v9 = *v3;
    if (*(*v4 + 16) && (v10 = sub_1D5C5E034(a2), (v11 & 1) != 0))
    {
      v15 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v12 = a1;
    MEMORY[0x1DA6F9CE0]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    result = sub_1D6D7A968(v15, a2, isUniquelyReferenced_nonNull_native);
    *v4 = v14;
  }

  return result;
}

uint64_t sub_1D6A4C824(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v5 = sub_1D5C5E034(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  v8 = v7 >> 62;
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_1D7263BFC();
  if (result)
  {
    if (!sub_1D7263BFC())
    {
      __break(1u);
      goto LABEL_17;
    }

LABEL_5:

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v8 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v7 = sub_1D5EC4BFC(v7);
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * (v10 - 1) + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10 - 1;
      if (!(v7 >> 62))
      {
        if (v10 != 1)
        {
LABEL_11:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = *v2;
          sub_1D6D7A968(v7, a1, isUniquelyReferenced_nonNull_native);
          *v2 = v13;
          return v8;
        }

LABEL_19:

        sub_1D607E97C(a1);

        return v8;
      }

LABEL_18:
      if (sub_1D7263BFC())
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1D6A4C964(uint64_t a1)
{
  v3 = type metadata accessor for WebEmbedDataVisualization();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62D74(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - v10;
  sub_1D686B7BC(a1, &v15 - v10);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1D6A4CB18(v11);
  }

  else
  {
    sub_1D61880A0(v11, v7);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v13 = *v7;
      sub_1D61E6650(v11);

      v12 = ((v13 >> 58) & 0x38) + 72;
      return *(v1 + v12);
    }

    sub_1D61E6650(v7);
    sub_1D61E6650(v11);
  }

  v12 = 128;
  return *(v1 + v12);
}

uint64_t sub_1D6A4CB18(uint64_t a1)
{
  sub_1D5B62D74(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatCollectionViewLayout.__allocating_init(blueprintLayoutCollectionProvider:scrollingTrait:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6A4F23C(a1, a2);
  (*(*(*(v2 + class metadata base offset for FormatCollectionViewLayout) - 8) + 8))(a1);
  return v4;
}

uint64_t FormatCollectionViewLayout.init(blueprintLayoutCollectionProvider:scrollingTrait:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = sub_1D6A4F084(a1, a2);
  (*(*(*(v4 + class metadata base offset for FormatCollectionViewLayout) - 8) + 8))(a1);
  return v5;
}

id FormatCollectionViewLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t FormatCollectionViewLayout.copy()@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for FormatCollectionViewLayout);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](ObjectType, v7);
  v9 = &v13 - v8;
  sub_1D725EDDC();
  v14 = *(v1 + *((*v4 & *v1) + class metadata base offset for FormatCollectionViewLayout + 16));
  v10 = objc_allocWithZone(ObjectType);
  v11 = sub_1D6A4F084(v9, &v14);
  (*(v6 + 8))(v9, v5);
  result = sub_1D725EDEC();
  a1[3] = ObjectType;
  *a1 = v11;
  return result;
}

uint64_t sub_1D6A4CEC0(void *a1)
{
  v1 = a1;
  FormatCollectionViewLayout.copy()(v4);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_1D72646AC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

Swift::Void __swiftcall FormatCollectionViewLayout.prepare()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for FormatCollectionViewLayout);
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](ObjectType, v5);
  v7 = &v18 - v6;
  v8 = sub_1D725E9DC();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_prepareLayout, v11);
  if (*(v1 + *((*v3 & *v1) + class metadata base offset for FormatCollectionViewLayout + 16)) - 2 >= 3)
  {
    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setDecelerationRate_];
    }

    sub_1D725EDDC();
    sub_1D725F44C();
    (*(v19 + 8))(v7, v4);
    sub_1D6A4D1E8(v1);
    v17 = v16;
    (*(v9 + 8))(v13, v8);
    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for FormatCollectionViewLayout + 24)) = v17;
  }
}

void sub_1D6A4D1E8(void *a1)
{
  v2 = sub_1D725E23C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_1D725E99C();
    v18 = sub_1D6A4F3A4(v11, v13, v15, v17, 0.0, 0.0);
    (*(v3 + 8))(v7, v2);
    if (v18 >> 62)
    {
      v19 = sub_1D7263BFC();
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_4:
        if ((v18 & 0xC000000000000001) != 0)
        {
          goto LABEL_17;
        }

        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        for (i = *(v18 + 32); ; i = MEMORY[0x1DA6FB460](0, v18))
        {
          v21 = i;
          [i frame];
          CGRectGetMaxX(v25);

          if (v19 == 1)
          {
            goto LABEL_8;
          }

          if ((v18 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v22 = *(v18 + 40);
LABEL_13:
            v23 = v22;

            [v23 frame];
            CGRectGetMinX(v26);

            return;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          ;
        }

        v22 = MEMORY[0x1DA6FB460](1, v18);
        goto LABEL_13;
      }
    }

LABEL_8:
  }
}

void sub_1D6A4D420(void *a1)
{
  v1 = a1;
  FormatCollectionViewLayout.prepare()();
}

CGPoint __swiftcall FormatCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(CGPoint forProposedContentOffset, CGPoint withScrollingVelocity)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for FormatCollectionViewLayout;
  if (*(v2 + *(v4 + 16)) <= 2u)
  {
    if (*(v2 + *(v4 + 16)))
    {
      if (*(v2 + *(v4 + 16)) == 1)
      {
        sub_1D6A4DBF4(forProposedContentOffset.x, forProposedContentOffset.y, withScrollingVelocity.x);
      }

      else
      {
        sub_1D6A4F750(forProposedContentOffset.x, forProposedContentOffset.y);
      }
    }

    else
    {
      sub_1D6A4D538(forProposedContentOffset.x, forProposedContentOffset.y, withScrollingVelocity.x);
    }

    v4 = (*v3 & *v2) + class metadata base offset for FormatCollectionViewLayout;
  }

  *(v2 + *(v4 + 40)) = forProposedContentOffset.x;
  return forProposedContentOffset;
}

void sub_1D6A4D538(CGFloat a1, double a2, double a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = sub_1D725E23C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + class metadata base offset for FormatCollectionViewLayout);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v67 - v18;
  v20 = sub_1D725E9DC();
  v72 = *(v20 - 8);
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [v4 collectionView];
  if (v25)
  {
    v71 = v24;
    v26 = v25;
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    [v4 collectionViewContentSize];
    v32 = v31;
    v74.origin.y = 0.0;
    v74.origin.x = a1;
    v74.size.width = v28;
    v74.size.height = v30;
    if (v32 - CGRectGetWidth(v74) <= a1)
    {

      return;
    }

    v70 = v20;
    sub_1D725EDDC();
    sub_1D725F44C();
    (*(v15 + 8))(v19, v14);
    sub_1D725E99C();
    sub_1D725E18C();
    v34 = v33;
    v35 = *(v10 + 8);
    v35(v13, v9);
    sub_1D725E99C();
    sub_1D725E16C();
    v37 = v36;
    v69 = v38;
    v35(v13, v9);
    sub_1D725E99C();
    v39 = sub_1D6A4F3A4(a1, 0.0, v28, v30, a1, a2);
    v35(v13, v9);
    if (v39 >> 62)
    {
LABEL_39:
      v40 = sub_1D7263BFC();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v26;
    v26 = v71;
    if (!v40)
    {

      (*(v72 + 8))(v26, v70);
      return;
    }

    v73 = sub_1D680E8F8(v42);
    sub_1D6A4E4A8(&v73);

    v43 = v73;
    if (v73 < 0 || (v73 & 0x4000000000000000) != 0)
    {
      v44 = sub_1D7263BFC();
    }

    else
    {
      v44 = *(v73 + 16);
    }

    v37 = v34 + a1 + v37;
    if (!v44)
    {
      goto LABEL_35;
    }

    v45 = 0;
    v46 = *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for FormatCollectionViewLayout + 24);
    v47 = v43 & 0xC000000000000001;
    v67 = v43 + 32;
    v68 = v46;
    v48 = fabs(a3);
    v34 = 1.79769313e308;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v49 = fabs(v34);
          v50 = v45;
          while (1)
          {
            if (v47)
            {
              v51 = MEMORY[0x1DA6FB460](v50, v43);
            }

            else
            {
              if (v50 >= *(v43 + 16))
              {
                goto LABEL_38;
              }

              v51 = *(v43 + 8 * v50 + 32);
            }

            v52 = v51;
            v45 = (v50 + 1);
            if (__OFADD__(v50, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            [v51 frame];
            if (vabdd_f64(v53, v37) < v49)
            {
              break;
            }

            ++v50;
            if (v45 == v44)
            {
              goto LABEL_35;
            }
          }

          v34 = v53 - v37;
          if (v48 < 0.3)
          {

            if (v45 != v44)
            {
              continue;
            }

LABEL_35:

            v68 = a2;
            [v4 collectionViewContentSize];
            [v41 bounds];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;

            v77.origin.x = v60;
            v77.origin.y = v62;
            v77.size.width = v64;
            v77.size.height = v66;
            CGRectGetWidth(v77);

            (*(v72 + 8))(v26, v70);
            return;
          }

          break;
        }

        if (a3 > 0.0)
        {
          [v52 bounds];
          Width = CGRectGetWidth(v75);

          v34 = v34 + Width + *(v4 + *&v68);
          if (v45 != v44)
          {
            continue;
          }

          goto LABEL_35;
        }

        break;
      }

      if (__OFSUB__(v50, 1))
      {
        __break(1u);
      }

      else
      {
        v55 = (v50 - 1) & ~((v50 - 1) >> 63);
        if (v47)
        {
          v56 = MEMORY[0x1DA6FB460](v55, v43);
          goto LABEL_31;
        }

        if (v55 < *(v43 + 16))
        {
          v56 = *(v67 + 8 * v55);
LABEL_31:
          v57 = v56;
          [v56 bounds];
          v58 = CGRectGetWidth(v76);

          v34 = v34 - v58 - *(v4 + *&v68);
          if (v45 != v44)
          {
            continue;
          }

          goto LABEL_35;
        }
      }

      break;
    }

    __break(1u);

    __break(1u);
  }
}

id sub_1D6A4DBF4(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = sub_1D725E23C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + class metadata base offset for FormatCollectionViewLayout);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v64 - v18;
  v20 = sub_1D725E9DC();
  v69 = *(v20 - 8);
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v4 collectionView];
  if (!result)
  {
    return result;
  }

  v67 = v20;
  v68 = result;
  [v68 bounds];
  v27 = v26;
  v29 = v28;
  sub_1D725EDDC();
  sub_1D725F44C();
  (*(v15 + 8))(v19, v14);
  sub_1D725E99C();
  sub_1D725E18C();
  v30 = *(v10 + 8);
  v30(v13, v9);
  sub_1D725E99C();
  sub_1D725E16C();
  v30(v13, v9);
  sub_1D725E99C();
  v31 = sub_1D6A4F3A4(a1, 0.0, v27, v29, a1, a2);
  v30(v13, v9);
  if (!(v31 >> 62))
  {
    v32 = v68;
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_34:

    return (*(v69 + 8))(v24, v67);
  }

LABEL_33:
  v61 = sub_1D7263BFC();
  v32 = v68;
  if (!v61)
  {
    goto LABEL_34;
  }

LABEL_4:

  v70 = sub_1D680E8F8(v33);
  sub_1D6A4E4A8(&v70);

  v34 = v70;
  [v32 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v71.origin.x = v36;
  v71.origin.y = v38;
  v71.size.width = v40;
  v71.size.height = v42;
  Width = CGRectGetWidth(v71);
  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    v62 = Width;
    v63 = sub_1D7263BFC();
    Width = v62;
    v44 = v63;
  }

  else
  {
    v44 = *(v34 + 16);
  }

  if (!v44)
  {
LABEL_30:

    return (*(v69 + 8))(v24, v67);
  }

  v45 = 0;
  v46 = Width * 0.5 + a1;
  v47 = *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for FormatCollectionViewLayout + 24);
  v48 = v34 & 0xC000000000000001;
  v65 = v34 + 32;
  v66 = v47;
  v49 = fabs(a3);
  v50 = 1.79769313e308;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v51 = fabs(v50);
        v52 = v45;
        while (1)
        {
          if (v48)
          {
            v53 = MEMORY[0x1DA6FB460](v52, v34);
          }

          else
          {
            if (v52 >= *(v34 + 16))
            {
              goto LABEL_32;
            }

            v53 = *(v34 + 8 * v52 + 32);
          }

          v54 = v53;
          v45 = (v52 + 1);
          if (__OFADD__(v52, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          [v53 center];
          if (vabdd_f64(v46, v55) < v51)
          {
            break;
          }

          ++v52;
          if (v45 == v44)
          {
            goto LABEL_30;
          }
        }

        v50 = v55 - v46;
        if (v49 < 0.3)
        {

          if (v45 != v44)
          {
            continue;
          }

          goto LABEL_30;
        }

        break;
      }

      if (a3 > 0.0)
      {
        [v54 bounds];
        v56 = CGRectGetWidth(v72);

        v50 = v50 + v56 + *(v4 + v66);
        if (v45 != v44)
        {
          continue;
        }

        goto LABEL_30;
      }

      break;
    }

    if (__OFSUB__(v52, 1))
    {
      __break(1u);
    }

    else
    {
      v57 = (v52 - 1) & ~((v52 - 1) >> 63);
      if (v48)
      {
        v58 = MEMORY[0x1DA6FB460](v57, v34);
        goto LABEL_29;
      }

      if (v57 < *(v34 + 16))
      {
        v58 = *(v65 + 8 * v57);
LABEL_29:
        v59 = v58;
        [v58 bounds];
        v60 = CGRectGetWidth(v73);

        v50 = v50 - v60 - *(v4 + v66);
        if (v45 != v44)
        {
          continue;
        }

        goto LABEL_30;
      }
    }

    break;
  }

  __break(1u);

  __break(1u);
  return result;
}

double sub_1D6A4E220(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  *&v10 = *&FormatCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(__PAIR128__(*&a3, *&a2), __PAIR128__(*&a5, *&a4));

  return v10;
}

Swift::Bool __swiftcall FormatCollectionViewLayout.shouldInvalidateLayout(forBoundsChange:)(__C::CGRect forBoundsChange)
{
  height = forBoundsChange.size.height;
  width = forBoundsChange.size.width;
  y = forBoundsChange.origin.y;
  x = forBoundsChange.origin.x;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v12, sel_shouldInvalidateLayoutForBoundsChange_, x, y, width, height);
  v7 = [v1 collectionView];
  if (v7)
  {
    if (v6)
    {
      v8 = v7;
      [v7 contentOffset];
      v10 = v9;

      *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for FormatCollectionViewLayout + 40)) = v10;
    }

    else
    {
    }
  }

  return v6;
}

BOOL sub_1D6A4E394(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  v10 = FormatCollectionViewLayout.shouldInvalidateLayout(forBoundsChange:)(v12);

  return v10;
}

id FormatCollectionViewLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6A4E4A8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D630BBB4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D6A4E524(v6);
  return sub_1D7263EAC();
}

void sub_1D6A4E524(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D725C9AC();
        v6 = sub_1D726276C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D6A4E72C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D6A4E628(0, v2, 1, a1);
  }
}

void sub_1D6A4E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 frame];
      MinX = CGRectGetMinX(v19);
      [v13 frame];
      v15 = CGRectGetMinX(v20);

      if (MinX >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v16;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D6A4E72C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_1D62FF50C(v8);
    }

    v92 = v5;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v5 = v93 - 1;
        v94 = *&v8[16 * v93];
        v95 = *&v8[16 * v93 + 24];
        sub_1D6A4EDB4((*a3 + 8 * v94), (*a3 + 8 * *&v8[16 * v93 + 16]), (*a3 + 8 * v95), v9);
        if (v92)
        {
          goto LABEL_97;
        }

        if (v95 < v94)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v93 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v96 = &v8[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        sub_1D62FF480(v93 - 1);
        v93 = *(v8 + 2);
        if (v93 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v98 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 frame];
      MinX = CGRectGetMinX(v106);
      [v17 frame];
      v19 = CGRectGetMinX(v107);

      v20 = v12 + 2;
      while (v6 != v20)
      {
        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        [v22 frame];
        v24 = CGRectGetMinX(v108);
        [v23 frame];
        v25 = CGRectGetMinX(v109);

        ++v20;
        ++v14;
        if (MinX < v19 == v24 >= v25)
        {
          v6 = (v20 - 1);
          break;
        }
      }

      v9 = v12;
      if (MinX < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_117;
        }

        if (v12 < v6)
        {
          v26 = 8 * v6 - 8;
          v27 = v6;
          v28 = v12;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v29 = *(v30 + v5);
              *(v30 + v5) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            v28 = (v28 + 1);
            v26 -= 8;
            v5 += 8;
          }

          while (v28 < v27);
        }
      }

      v10 = v6;
      v5 = v98;
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v32 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v32 >= v31)
        {
          v32 = a3[1];
        }

        if (v32 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v32)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v8 = sub_1D698BA94((v46 > 1), v47 + 1, 1, v8);
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v10;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v104 = v10;
    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_56:
          if (v55)
          {
            goto LABEL_104;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_107;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_111;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_70:
        if (v73)
        {
          goto LABEL_106;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_109;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_77:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v90 = *&v8[16 * v89 + 32];
        v9 = *&v8[16 * v51 + 40];
        sub_1D6A4EDB4((*a3 + 8 * v90), (*a3 + 8 * *&v8[16 * v51 + 32]), (*a3 + 8 * v9), v50);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v9 < v90)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v91 = &v8[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v9;
        sub_1D62FF480(v51);
        v48 = *(v8 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_102;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_103;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_105;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_108;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_112;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v7 = v104;
    v6 = a3[1];
    if (v104 >= v6)
    {
      goto LABEL_87;
    }
  }

  v99 = v5;
  v100 = v9;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v35 = (v9 - v10);
  v102 = v32;
LABEL_29:
  v103 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    [v40 frame];
    v42 = CGRectGetMinX(v110);
    [v41 frame];
    v43 = CGRectGetMinX(v111);

    if (v42 >= v43)
    {
LABEL_28:
      v10 = v103 + 1;
      v34 += 8;
      --v35;
      if ((v103 + 1) != v102)
      {
        goto LABEL_29;
      }

      v10 = v102;
      v5 = v99;
      v9 = v100;
      goto LABEL_36;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_1D6A4EDB4(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v23 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v23;
    }

    v22 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v37 = v4;
LABEL_26:
      __dst = v22;
      v24 = v22 - 1;
      --v5;
      v25 = v14;
      do
      {
        v26 = v5 + 1;
        v27 = *--v25;
        v28 = v24;
        v29 = *v24;
        v30 = v27;
        v31 = v29;
        [v30 frame];
        MinX = CGRectGetMinX(v40);
        [v31 frame];
        v33 = CGRectGetMinX(v41);

        if (MinX < v33)
        {
          v34 = v28;
          if (v26 != __dst)
          {
            *v5 = *v28;
          }

          v4 = v37;
          if (v14 <= v37 || (v22 = v34, v34 <= v6))
          {
            v22 = v34;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v26 != v14)
        {
          *v5 = *v25;
        }

        --v5;
        v14 = v25;
        v24 = v28;
      }

      while (v25 > v37);
      v14 = v25;
      v22 = __dst;
      v4 = v37;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 frame];
        v18 = CGRectGetMinX(v38);
        [v17 frame];
        v19 = CGRectGetMinX(v39);

        if (v18 >= v19)
        {
          break;
        }

        v20 = v13;
        v21 = v6 == v13++;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v20 = v4;
      v21 = v6 == v4++;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v20;
      goto LABEL_17;
    }

LABEL_19:
    v22 = v6;
  }

LABEL_37:
  if (v22 != v4 || v22 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v22, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1D6A4F084(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00]((*(*(*((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for FormatCollectionViewLayout) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0, a2);
  *(v2 + *(v4 + 24)) = 0;
  v7 = *v6;
  *(v2 + *((*v5 & *v2) + *(v8 + 1376) + 32)) = 0x3FD3333333333333;
  *(v2 + *((*v5 & *v2) + *(v8 + 1376) + 40)) = 0;
  *(v2 + *((*v5 & *v2) + *(v8 + 1376) + 16)) = v7;
  (*(v9 + 16))(&v13 - v10, v11, v3);
  return sub_1D725EDCC();
}

void _s8NewsFeed26FormatCollectionViewLayoutC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for FormatCollectionViewLayout + 24)) = 0;
  *(v0 + *((*v1 & *v0) + class metadata base offset for FormatCollectionViewLayout + 32)) = 0x3FD3333333333333;
  *(v0 + *((*v1 & *v0) + class metadata base offset for FormatCollectionViewLayout + 40)) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6A4F3A4(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v7 = *MEMORY[0x1E69E7D40] & *v6;
  v8 = sub_1D725E9DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v7 + class metadata base offset for FormatCollectionViewLayout);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v30 - v17;
  sub_1D725EDDC();
  sub_1D725F44C();
  (*(v14 + 8))(v18, v13);
  sub_1D725E18C();
  sub_1D725E18C();
  sub_1D725E16C();
  sub_1D7262DFC();
  sub_1D725E18C();
  sub_1D725E16C();
  sub_1D7262E0C();
  v19 = sub_1D725E9CC();
  (*(v9 + 8))(v12, v8);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v21 = sub_1D725F25C();

    v33 = v20;
    if (v21 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA6FB460](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = [v24 representedElementKind];
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
        }

        ++v23;
        if (v26 == i)
        {
          v20 = v33;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_19:
  }

  return v20;
}

void sub_1D6A4F750(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v56 = sub_1D725E23C();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + class metadata base offset for FormatCollectionViewLayout);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - v16;
  v18 = sub_1D725E9DC();
  v54 = *(v18 - 8);
  v55 = v18;
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [v3 collectionView];
  if (!v23)
  {
    return;
  }

  v24 = *(v3 + *((*v6 & *v3) + class metadata base offset for FormatCollectionViewLayout + 40));
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  sub_1D725EDDC();
  sub_1D725F44C();
  (*(v13 + 8))(v17, v12);
  sub_1D725E99C();
  sub_1D725E18C();
  v30 = v29;
  v31 = *(v8 + 8);
  v32 = v56;
  v31(v11, v56);
  sub_1D725E99C();
  sub_1D725E16C();
  v34 = v33;
  v31(v11, v32);
  [v3 collectionViewContentSize];
  v36 = v35;
  v58.origin.x = a1;
  v58.origin.y = a2;
  v58.size.width = v26;
  v58.size.height = v28;
  v37 = v22;
  if (v36 - CGRectGetWidth(v58) <= a1)
  {
    (*(v54 + 8))(v22, v55);
LABEL_30:

    return;
  }

  sub_1D725E99C();
  v38 = sub_1D6A4F3A4(a1, a2, v26, v28, a1, a2);
  v31(v11, v32);
  if (v38 >> 62)
  {
LABEL_28:
    v39 = sub_1D7263BFC();
    if (v39)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
LABEL_29:
    (*(v54 + 8))(v37, v55);

    goto LABEL_30;
  }

LABEL_5:
  v56 = v37;
  v40 = 0;
  v41 = v30 + a1 + v34;
  v57 = MEMORY[0x1E69E7CC0];
  v37 = v38 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x1DA6FB460](v40, v38);
    }

    else
    {
      if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v42 = *(v38 + 8 * v40 + 32);
    }

    v43 = v42;
    v44 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    [v42 frame];
    if (v24 <= a1)
    {
      if (v41 > CGRectGetMinX(*&v45))
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else if (v41 > CGRectGetMaxX(*&v45))
    {
      goto LABEL_6;
    }

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
LABEL_7:
    ++v40;
  }

  while (v44 != v39);

  v57 = sub_1D680E8F8(v49);
  sub_1D6A4E4A8(&v57);

  v50 = v57;
  if (v57 < 0 || (v57 & 0x4000000000000000) != 0)
  {
    if (!sub_1D7263BFC())
    {
      goto LABEL_33;
    }

LABEL_22:
    if ((v50 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x1DA6FB460](0, v50);
    }

    else
    {
      if (!*(v50 + 16))
      {
        __break(1u);

        __break(1u);
        return;
      }

      v51 = *(v50 + 32);
    }

    v52 = v51;

    [v52 frame];

    (*(v54 + 8))(v56, v55);
    return;
  }

  if (*(v57 + 16))
  {
    goto LABEL_22;
  }

LABEL_33:
  (*(v54 + 8))(v56, v55);
}

void *sub_1D6A4FE30(__int128 *a1, __int128 *a2)
{
  v4 = a1[7];
  v41 = a1[6];
  v42 = v4;
  v43 = a1[8];
  v44 = *(a1 + 18);
  v5 = a1[3];
  v37 = a1[2];
  v38 = v5;
  v6 = a1[5];
  v39 = a1[4];
  v40 = v6;
  v7 = a1[1];
  v35 = *a1;
  v36 = v7;
  v8 = a2[13];
  v33[12] = a2[12];
  v33[13] = v8;
  v33[14] = a2[14];
  v34 = *(a2 + 30);
  v9 = a2[9];
  v33[8] = a2[8];
  v33[9] = v9;
  v10 = a2[11];
  v33[10] = a2[10];
  v33[11] = v10;
  v11 = a2[5];
  v33[4] = a2[4];
  v33[5] = v11;
  v12 = a2[7];
  v33[6] = a2[6];
  v33[7] = v12;
  v13 = a2[1];
  v33[0] = *a2;
  v33[1] = v13;
  v14 = a2[3];
  v33[2] = a2[2];
  v33[3] = v14;
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7270C10;
  v16 = a1[7];
  v67 = a1[6];
  v68 = v16;
  v69 = a1[8];
  v70 = *(a1 + 18);
  v17 = a1[3];
  v63 = a1[2];
  v64 = v17;
  v18 = a1[5];
  v65 = a1[4];
  v66 = v18;
  v19 = a1[1];
  v61 = *a1;
  v62 = v19;
  v20 = a2[13];
  v57 = a2[12];
  v58 = v20;
  v59 = a2[14];
  v60 = *(a2 + 30);
  v21 = a2[9];
  v53 = a2[8];
  v54 = v21;
  v22 = a2[11];
  v55 = a2[10];
  v56 = v22;
  v23 = a2[5];
  v49 = a2[4];
  v50 = v23;
  v24 = a2[7];
  v51 = a2[6];
  v52 = v24;
  v25 = a2[1];
  v45 = *a2;
  v46 = v25;
  v26 = a2[3];
  v47 = a2[2];
  v48 = v26;
  sub_1D686C0E0(&v45, v71);
  *(v15 + 56) = &type metadata for FormatInspectionGroup;
  *(v15 + 64) = &off_1F518B2C0;
  v27 = swift_allocObject();
  *(v15 + 32) = v27;
  v28 = v71[1];
  *(v27 + 16) = v71[0];
  *(v27 + 32) = v28;
  *(v27 + 48) = v72;
  sub_1D6D25598(v33, &v45);
  *(v15 + 96) = &type metadata for FormatInspectionGroup;
  *(v15 + 104) = &off_1F518B2C0;
  v29 = swift_allocObject();
  *(v15 + 72) = v29;
  v30 = v46;
  *(v29 + 16) = v45;
  *(v29 + 32) = v30;
  *(v29 + 48) = v47;
  v31 = sub_1D7073500(v15);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v31;
}

uint64_t FormatAuxiliaryViewRequirementProviding.unionOf(providers:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CD0];
  do
  {
    sub_1D67AE3F4(v2, v13);
    sub_1D67AE3F4(v13, &v8);
    if (v9)
    {
      sub_1D5B63F14(&v8, v10);
      v4 = v11;
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v6 = (*(v5 + 8))(v4, v5);
      v3 = sub_1D5EECE3C(v6, v3);
      sub_1D60EEB74(v13);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_1D60EEB74(v13);
      sub_1D60EEB74(&v8);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

NewsFeed::FormatAuxiliaryViewRequirement_optional __swiftcall FormatAuxiliaryViewRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatAuxiliaryViewRequirement.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E656964617267;
  v3 = 0x6567616D69;
  v4 = 1633905005;
  if (v1 != 4)
  {
    v4 = 0x66456C6175736976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72476C6169646172;
  if (v1 != 1)
  {
    v5 = 0x65695674696C7073;
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

unint64_t sub_1D6A502AC()
{
  result = qword_1EDF20968;
  if (!qword_1EDF20968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20968);
  }

  return result;
}

uint64_t sub_1D6A50308()
{
  sub_1D72621EC();
}

void sub_1D6A50418(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x746E656964617267;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0xE400000000000000;
  v8 = 1633905005;
  if (v2 != 4)
  {
    v8 = 0x66456C6175736976;
    v7 = 0xEC00000074636566;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00746E65696461;
  v10 = 0x72476C6169646172;
  if (v2 != 1)
  {
    v10 = 0x65695674696C7073;
    v9 = 0xE900000000000077;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1D6A505B8()
{
  result = qword_1EC890660;
  if (!qword_1EC890660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890660);
  }

  return result;
}

uint64_t sub_1D6A5060C()
{
  sub_1D67084F4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56) | (*(v0 + 60) << 32));

  return swift_deallocClassInstance();
}

id FeedPluginFactoryContext.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v7 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v7;
  *(a1 + 32) = v4;

  v5 = v3;

  return v7;
}

uint64_t FeedPluginFactoryContext.feedCursorContainer.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_1D6A50794@<X0>(uint64_t a1@<X8>)
{
  v30[5] = a1;
  v2 = sub_1D725F6DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v30 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v30 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v30 - v17;
  v19 = *(v1 + 48);
  v20 = *(v1 + 80);
  v21 = *(v1 + 88);
  v30[4] = *(v1 + 96);
  v22 = *(v1 + 104);
  v23 = *(v1 + 112);
  if (v19)
  {
    v30[1] = *(v1 + 40);
    v30[2] = v21;
    v30[3] = v20;

    sub_1D725F69C();
  }

  else
  {

    sub_1D725F6AC();
  }

  v24 = *(v3 + 32);
  v24(v18, v14, v2);
  if (v22)
  {
    sub_1D725F69C();
  }

  else
  {
    sub_1D725F6AC();
  }

  v24(v10, v6, v2);
  v25 = *(v23 + 16);
  if (v25)
  {
    v30[7] = MEMORY[0x1E69E7CC0];
    v26 = sub_1D7263ECC();
    v27 = (v23 + 32);
    do
    {
      v28 = *v27++;
      v30[6] = v28;
      FormatColor.color.getter(v26);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      v26 = sub_1D7263EAC();
      --v25;
    }

    while (v25);
  }

  return sub_1D725E8EC();
}

__n128 FormatRadialGradient.from.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 FormatRadialGradient.to.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v3;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_1D6A50ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v4 = sub_1D725F6DC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = sub_1D725E94C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[5];
  v43 = v2[4];
  v44 = v17;
  v45 = v2[6];
  v18 = v2[1];
  v39 = *v2;
  v40 = v18;
  v19 = v2[3];
  v41 = v2[2];
  v42 = v19;
  v20 = *(v2 + 15);
  v46 = *(v2 + 14);
  v47 = v20;
  sub_1D6A50794(v16);
  sub_1D725E8FC();
  sub_1D725E92C();
  v21 = sub_1D725E90C();
  v22 = v21;
  if (!(v21 >> 62))
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v20;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:

    sub_1D725E8EC();
    return (*(v13 + 8))(v16, v12);
  }

  v23 = sub_1D7263BFC();
  v37 = v20;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  *&v39 = MEMORY[0x1E69E7CC0];
  result = sub_1D7263ECC();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v31 = v16;
    v32 = v13;
    v33 = v11;
    v34 = v12;
    v35 = v7;
    v36 = a2;
    v25 = objc_opt_self();
    v26 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1DA6FB460](v26, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      v29 = [v25 traitCollectionWithUserInterfaceStyle_];
      v30 = [v28 resolvedColorWithTraitCollection_];

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v23 != v26);

    v12 = v34;
    v13 = v32;
    v16 = v31;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed20FormatRadialGradientV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 7);
  v4 = *(a1 + 8);
  v19 = *(a1 + 72);
  v20 = *(a1 + 88);
  v5 = *(a1 + 104);
  v7 = *(a1 + 14);
  v6 = *(a1 + 15);
  v8 = *(a2 + 48);
  v9 = *(a2 + 7);
  v10 = *(a2 + 8);
  v17 = *(a2 + 88);
  v18 = *(a2 + 72);
  v11 = *(a2 + 104);
  v13 = *(a2 + 14);
  v12 = *(a2 + 15);
  v14 = a1[1];
  v25 = *a1;
  v26 = v14;
  v27 = a1[2];
  v28 = v2;
  v15 = a2[1];
  v21 = *a2;
  v22 = v15;
  v23 = a2[2];
  v24 = v8;
  if (_s8NewsFeed26FormatRadialGradientCircleV2eeoiySbAC_ACtFZ_0(&v25, &v21))
  {
    *&v25 = v3;
    *(&v25 + 1) = v4;
    v26 = v19;
    v27 = v20;
    v28 = v5;
    *&v21 = v9;
    *(&v21 + 1) = v10;
    v22 = v18;
    v23 = v17;
    v24 = v11;
    if (_s8NewsFeed26FormatRadialGradientCircleV2eeoiySbAC_ACtFZ_0(&v25, &v21) && (sub_1D6359350(v7, v13) & 1) != 0)
    {
      if (v6)
      {
        if (v12 && (sub_1D635D3A0(v6, v12) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v12)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1D6A50F44(uint64_t a1)
{
  result = sub_1D6A50F6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A50F6C()
{
  result = qword_1EC890668;
  if (!qword_1EC890668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890668);
  }

  return result;
}

unint64_t sub_1D6A50FC0(void *a1)
{
  a1[1] = sub_1D6676230();
  a1[2] = sub_1D66FE87C();
  result = sub_1D6A50FF8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A50FF8()
{
  result = qword_1EC890670;
  if (!qword_1EC890670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890670);
  }

  return result;
}

uint64_t sub_1D6A5104C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6A51094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D6A51104(uint64_t a1, __int128 *a2)
{
  sub_1D5EA74B8();
  v79 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 112);
  v105[6] = *(a1 + 96);
  v105[7] = v9;
  v105[8] = *(a1 + 128);
  v106 = *(a1 + 144);
  v10 = *(a1 + 48);
  v105[2] = *(a1 + 32);
  v105[3] = v10;
  v11 = *(a1 + 80);
  v105[4] = *(a1 + 64);
  v105[5] = v11;
  v12 = *(a1 + 16);
  v105[0] = *a1;
  v105[1] = v12;
  v13 = a2[5];
  v111 = a2[4];
  v112 = v13;
  v14 = a2[7];
  v113 = a2[6];
  v114 = v14;
  v15 = a2[1];
  v107 = *a2;
  v108 = v15;
  v16 = a2[3];
  v109 = a2[2];
  v110 = v16;
  v17 = MEMORY[0x1E69E6F90];
  sub_1D6A5196C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7270C10;
  sub_1D6A5196C(0, &qword_1EC880490, sub_1D5EA74B8, v17);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v84 = *(v5 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7279970;
  v80 = v19;
  v21 = (v20 + v19);
  sub_1D6A5196C(0, &qword_1EC8803C0, sub_1D5E4F38C, v17);
  v22 = swift_allocObject();
  v78 = xmmword_1D7273AE0;
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = *(a1 + 112);
  v99[6] = *(a1 + 96);
  v99[7] = v23;
  v99[8] = *(a1 + 128);
  v100 = *(a1 + 144);
  v24 = *(a1 + 48);
  v99[2] = *(a1 + 32);
  v99[3] = v24;
  v25 = *(a1 + 80);
  v99[4] = *(a1 + 64);
  v99[5] = v25;
  v26 = *(a1 + 16);
  v99[0] = *a1;
  v99[1] = v26;
  v27 = a2[5];
  v119 = a2[4];
  v120 = v27;
  v28 = a2[7];
  v121 = a2[6];
  v122 = v28;
  v29 = a2[1];
  v115 = *a2;
  v116 = v29;
  v30 = a2[3];
  v117 = a2[2];
  v118 = v30;
  if (sub_1D6A519D0(&v115) == 1)
  {
    v31 = -1;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  else
  {
    v32 = v115;
    v33 = v116;
    v34 = v117;
    v31 = v118;
  }

  v95 = v32;
  v96 = v33;
  v97 = v34;
  LOBYTE(v98[0]) = v31;
  v35 = sub_1D68B3170(v99, &v95);
  *(v22 + 56) = &type metadata for FormatInspection;
  *(v22 + 64) = &off_1F51E3FD0;
  *(v22 + 32) = v35;
  v36 = sub_1D5F62BFC(v22);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v22 + 32);
  swift_deallocClassInstance();
  v37 = sub_1D7073500(v36);

  sub_1D711AD20(0x726943206D6F7246, 0xEB00000000656C63, v37, 0, 0, v21);
  v38 = type metadata accessor for FormatInspectionItem(0);
  v39 = *(v38 - 8);
  v82 = *(v39 + 56);
  v83 = v38;
  v81 = v39 + 56;
  v82(v21, 0, 1);
  v40 = swift_allocObject();
  *(v40 + 16) = v78;
  v98[1] = v111;
  v98[2] = v112;
  v98[3] = v113;
  v98[4] = v114;
  v95 = v107;
  v96 = v108;
  v97 = v109;
  v98[0] = v110;
  if (sub_1D6A519D0(&v95) == 1)
  {
    v41 = -1;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
  }

  else
  {
    v44 = *(v98 + 8);
    v42 = *(&v98[1] + 8);
    v43 = *(&v98[2] + 8);
    v41 = BYTE8(v98[3]);
  }

  v45 = v8;
  v87 = v44;
  v88 = v42;
  v89 = v43;
  LOBYTE(v90) = v41;
  v46 = sub_1D68B3170(v105, &v87);
  *(v40 + 56) = &type metadata for FormatInspection;
  *(v40 + 64) = &off_1F51E3FD0;
  *(v40 + 32) = v46;
  v47 = sub_1D5F62BFC(v40);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v40 + 32);
  swift_deallocClassInstance();
  v48 = sub_1D7073500(v47);

  v49 = v84;
  sub_1D711AD20(0x6C63726943206F54, 0xE900000000000065, v48, 0, 0, &v21[v84]);
  (v82)(&v21[v49], 0, 1, v83);
  v91 = v111;
  v92 = v112;
  v93 = v113;
  v94 = v114;
  v87 = v107;
  v88 = v108;
  v89 = v109;
  v90 = v110;
  v50 = 0;
  if (sub_1D6A519D0(&v87) != 1)
  {
    v50 = *(&v94 + 1);
  }

  v51 = &v21[2 * v84];
  sub_1D7129808(0x6E6F697461636F4CLL, 0xE900000000000073, v50, v51);
  (v82)(v51, 0, 1, v83);
  sub_1D6795150(0x47206C6169646152, 0xEF746E6569646172, 0, 0, v20, v101);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v18 + 56) = &type metadata for FormatInspectionGroup;
  *(v18 + 64) = &off_1F518B2C0;
  v52 = swift_allocObject();
  *(v18 + 32) = v52;
  v53 = v101[1];
  *(v52 + 16) = v101[0];
  *(v52 + 32) = v53;
  *(v52 + 48) = v102;
  v85[4] = v111;
  v85[5] = v112;
  v85[6] = v113;
  v86 = v114;
  v85[0] = v107;
  v85[1] = v108;
  v85[2] = v109;
  v85[3] = v110;
  v54 = sub_1D6A519D0(v85);
  v55 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  if (v54 != 1)
  {
    v56 = v86;
  }

  v57 = *(v56 + 16);
  if (v57)
  {
    v75 = v18;
    *&v103[0] = v55;
    sub_1D69972A4(0, v57, 0);
    v55 = *&v103[0];
    v79 = type metadata accessor for FormatInspectionItem.Value(0);
    v58 = *(v79 - 8);
    v59 = *(v58 + 56);
    v77 = v58 + 56;
    *&v78 = v59;
    v60 = 32;
    v76 = xmmword_1D72EBCC0;
    do
    {
      v61 = v56;
      v62 = *(v56 + v60);
      v63 = v83;
      v64 = *(v83 + 24);
      *&v45[v64] = v62;
      v65 = v79;
      swift_storeEnumTagMultiPayload();
      (v78)(&v45[v64], 0, 1, v65);
      *v45 = v76;
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      v66 = &v45[*(v63 + 28)];
      *v66 = 0;
      *(v66 + 1) = 0;
      v66[16] = -1;
      (v82)(v45, 0, 1, v63);
      *&v103[0] = v55;
      v67 = v45;
      v68 = *(v55 + 16);
      v69 = *(v55 + 24);

      if (v68 >= v69 >> 1)
      {
        sub_1D69972A4(v69 > 1, v68 + 1, 1);
        v55 = *&v103[0];
      }

      *(v55 + 16) = v68 + 1;
      sub_1D5E4F52C(v67, v55 + v80 + v68 * v84);
      v60 += 8;
      --v57;
      v56 = v61;
      v45 = v67;
    }

    while (v57);

    v18 = v75;
  }

  else
  {
  }

  sub_1D6795150(0x73726F6C6F43, 0xE600000000000000, 0, 0, v55, v103);

  *(v18 + 96) = &type metadata for FormatInspectionGroup;
  *(v18 + 104) = &off_1F518B2C0;
  v70 = swift_allocObject();
  *(v18 + 72) = v70;
  v71 = v103[1];
  *(v70 + 16) = v103[0];
  *(v70 + 32) = v71;
  *(v70 + 48) = v104;
  v72 = sub_1D7073500(v18);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v72;
}

void sub_1D6A5196C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A519D0(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 FormatPuzzleEmbedNodeStyle.init(identifier:class:cornerRadius:ignoresSmartInvertColors:selectors:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, unsigned __int8 a6@<W5>, unint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v8 = a5[1].n128_u8[0];
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u64[0] = a3;
  a8[1].n128_u64[1] = a4;
  result = *a5;
  a8[2] = *a5;
  a8[3].n128_u8[0] = v8;
  a8[3].n128_u8[1] = a6;
  a8[3].n128_u64[1] = a7;
  return result;
}

uint64_t FormatPuzzleEmbedNodeStyle.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6A51A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v151 = *(a1 + 56);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v143 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v139 = *(v2 + 49);
  v140 = *(a1 + 49);
  v10 = v2[7];
  v141 = v7;
  v142 = v8;
  v11 = *(v2 + 48);
  v9 = v11;
  if (v11 >= 0xFEu)
  {
    v11 = *(a1 + 48);
    v141 = *(a1 + 32);
    v142 = *(a1 + 40);
    v13 = v4;
    sub_1D5ED34B0(v141, v142, v11);
    v4 = v13;
    v3 = a2;
  }

  v167 = MEMORY[0x1E69E7CC8];
  v14 = *(v10 + 16);
  if (!__OFADD__(v14, *(v151 + 16)))
  {
    v153 = *(v151 + 16);
    v134 = v11;
    v135 = v6;
    v136 = v5;
    v137 = v4;
    v138 = v3;

    sub_1D5ED34B0(v7, v8, v9);
    sub_1D6A53464();

    sub_1D7261DAC();
    v160 = sub_1D698F4BC(0, v14, 0, MEMORY[0x1E69E7CC0]);
    v150 = v10;
    v161 = *(v10 + 16);
    if (v161)
    {
      v15 = 0;
      v16 = (v10 + 65);
      while (1)
      {
        if (v15 >= *(v10 + 16))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v17 = *(v16 - 33);
        v18 = *(v16 - 25);
        v19 = *(v16 - 17);
        v20 = *(v16 - 9);
        v21 = *(v16 - 1);
        v164 = *v16;

        sub_1D5ED34B0(v19, v20, v21);

        sub_1D5ED34B0(v19, v20, v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = sub_1D6D8CB60(v17, v18);
        v25 = v167[2];
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          goto LABEL_84;
        }

        v29 = v24;
        if (v167[3] < v28)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v35 = v23;
        sub_1D6D84F1C();
        v23 = v35;
        v31 = v167;
        if ((v29 & 1) == 0)
        {
LABEL_15:
          v31[(v23 >> 6) + 8] |= 1 << v23;
          v36 = (v31[6] + 16 * v23);
          *v36 = v17;
          v36[1] = v18;
          v37 = v31[7] + 40 * v23;
          *v37 = v17;
          *(v37 + 8) = v18;
          *(v37 + 16) = v19;
          *(v37 + 24) = v20;
          *(v37 + 32) = v21;
          *(v37 + 33) = v164;
          v38 = v31[2];
          v27 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v27)
          {
            goto LABEL_89;
          }

          v31[2] = v39;

          goto LABEL_17;
        }

LABEL_13:
        v32 = v31[7] + 40 * v23;
        v155 = *(v32 + 16);
        v33 = *(v32 + 24);
        *v32 = v17;
        *(v32 + 8) = v18;
        *(v32 + 16) = v19;
        *(v32 + 24) = v20;
        v34 = *(v32 + 32);
        *(v32 + 32) = v21;
        *(v32 + 33) = v164;

        sub_1D5ED348C(v155, v33, v34);
LABEL_17:
        v167 = v31;
        sub_1D5ED348C(v19, v20, v21);
        v41 = *(v160 + 2);
        v40 = *(v160 + 3);
        if (v41 >= v40 >> 1)
        {
          v160 = sub_1D698F4BC((v40 > 1), v41 + 1, 1, v160);
        }

        ++v15;
        *(v160 + 2) = v41 + 1;
        v42 = &v160[16 * v41];
        *(v42 + 4) = v17;
        *(v42 + 5) = v18;
        v16 += 40;
        v10 = v150;
        if (v161 == v15)
        {
          goto LABEL_20;
        }
      }

      sub_1D6D72DFC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1D6D8CB60(v17, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_94;
      }

LABEL_12:
      v31 = v167;
      if ((v29 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_20:
    v152 = sub_1D698F4BC(0, v153, 0, MEMORY[0x1E69E7CC0]);
    v43 = v151;
    v149 = *(v151 + 16);
    if (v149)
    {
      v44 = 0;
      v45 = (v151 + 65);
      while (1)
      {
        if (v44 >= *(v43 + 16))
        {
          goto LABEL_85;
        }

        v154 = v44;
        v51 = *(v45 - 33);
        v52 = *(v45 - 25);
        v53 = *(v45 - 17);
        v54 = *(v45 - 9);
        v55 = *(v45 - 1);
        v156 = *v45;
        v56 = v167[2];

        v57 = v53;
        v162 = v54;
        v165 = v55;
        sub_1D5ED34B0(v53, v54, v55);
        if (!v56 || (v58 = sub_1D6D8CB60(v51, v52), (v59 & 1) == 0))
        {

          sub_1D5ED34B0(v53, v54, v55);
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v81 = sub_1D6D8CB60(v51, v52);
          v83 = v167[2];
          v84 = (v82 & 1) == 0;
          v27 = __OFADD__(v83, v84);
          v85 = v83 + v84;
          if (v27)
          {
            goto LABEL_88;
          }

          v86 = v82;
          if (v167[3] >= v85)
          {
            if (v80)
            {
              goto LABEL_44;
            }

            v105 = v81;
            sub_1D6D84F1C();
            v81 = v105;
            v88 = v167;
            if ((v86 & 1) == 0)
            {
              goto LABEL_56;
            }

LABEL_45:
            v89 = v88[7] + 40 * v81;
            v90 = *(v89 + 16);
            v91 = *(v89 + 24);
            *v89 = v51;
            *(v89 + 8) = v52;
            *(v89 + 16) = v53;
            *(v89 + 24) = v54;
            v92 = *(v89 + 32);
            *(v89 + 32) = v165;
            *(v89 + 33) = v156;

            sub_1D5ED348C(v90, v91, v92);
          }

          else
          {
            sub_1D6D72DFC(v85, v80);
            v81 = sub_1D6D8CB60(v51, v52);
            if ((v86 & 1) != (v87 & 1))
            {
              goto LABEL_94;
            }

LABEL_44:
            v88 = v167;
            if (v86)
            {
              goto LABEL_45;
            }

LABEL_56:
            v88[(v81 >> 6) + 8] |= 1 << v81;
            v106 = (v88[6] + 16 * v81);
            *v106 = v51;
            v106[1] = v52;
            v107 = v88[7] + 40 * v81;
            *v107 = v51;
            *(v107 + 8) = v52;
            *(v107 + 16) = v53;
            *(v107 + 24) = v54;
            *(v107 + 32) = v165;
            *(v107 + 33) = v156;
            v108 = v88[2];
            v27 = __OFADD__(v108, 1);
            v109 = v108 + 1;
            if (v27)
            {
              goto LABEL_90;
            }

            v88[2] = v109;
          }

          v167 = v88;
          v110 = *(v152 + 2);
          v111 = *(v152 + 3);

          if (v110 >= v111 >> 1)
          {
            v152 = sub_1D698F4BC((v111 > 1), v110 + 1, 1, v152);
          }

          v43 = v151;

          sub_1D5ED348C(v53, v54, v165);
          *(v152 + 2) = v110 + 1;
          v112 = &v152[16 * v110];
          *(v112 + 4) = v51;
          *(v112 + 5) = v52;
          goto LABEL_25;
        }

        v60 = v167[7] + 40 * v58;
        v61 = *(v60 + 8);
        v148 = *v60;
        v62 = *(v60 + 16);
        v63 = *(v60 + 24);
        v64 = *(v60 + 32);
        v65 = *(v60 + 33);
        v66 = v62;
        v67 = v63;
        v68 = *(v60 + 32);
        if (v64 > 0xFD)
        {
          sub_1D5ED34B0(v57, v162, v165);
          v66 = v57;
          v67 = v162;
          v68 = v165;
          v43 = v151;
        }

        v69 = v156;
        if (v65 != 2)
        {
          v69 = v65;
        }

        if (v61)
        {
          break;
        }

        sub_1D5ED34B0(v62, v63, v64);
        sub_1D5ED34B0(v62, v63, v64);
        v93 = v62;
        v94 = sub_1D6D8CB60(v148, 0);
        v96 = v95;

        if ((v96 & 1) == 0)
        {

          sub_1D5ED348C(v93, v63, v64);

          sub_1D5ED348C(v57, v162, v165);
          goto LABEL_25;
        }

        v158 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6D84F1C();
        }

        v97 = v167[7] + 40 * v94;
        v98 = *(v97 + 16);
        v99 = *(v97 + 24);
        v100 = *(v97 + 32);

        sub_1D5ED348C(v98, v99, v100);
        sub_1D6714B4C(v94, v167);

        sub_1D5ED348C(v158, v63, v64);

        sub_1D5ED348C(v57, v162, v165);
LABEL_24:
        v43 = v151;
LABEL_25:
        v44 = v154 + 1;
        v45 += 40;
        if (v149 == v154 + 1)
        {
          goto LABEL_63;
        }
      }

      v145 = v69;
      v146 = v67;
      v147 = v66;
      v157 = v68;
      v144 = v57;
      swift_bridgeObjectRetain_n();
      sub_1D5ED34B0(v62, v63, v64);

      sub_1D5ED34B0(v62, v63, v64);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v61;
      v73 = sub_1D6D8CB60(v148, v61);
      v74 = v167[2];
      v75 = (v72 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_91;
      }

      v77 = v72;
      if (v167[3] < v76)
      {
        sub_1D6D72DFC(v76, v70);
        v78 = sub_1D6D8CB60(v148, v71);
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_94;
        }

        v73 = v78;
        if ((v77 & 1) == 0)
        {
          goto LABEL_52;
        }

LABEL_22:

        v46 = v167;
        v47 = v167[7] + 40 * v73;
        v48 = *(v47 + 16);
        v49 = *(v47 + 24);
        *v47 = v148;
        *(v47 + 8) = v71;
        *(v47 + 16) = v147;
        *(v47 + 24) = v146;
        v50 = *(v47 + 32);
        *(v47 + 32) = v157;
        *(v47 + 33) = v145;

        sub_1D5ED348C(v48, v49, v50);

        sub_1D5ED348C(v62, v63, v64);
LABEL_23:

        sub_1D5ED348C(v144, v162, v165);
        v167 = v46;
        goto LABEL_24;
      }

      if (v70)
      {
        if (v72)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D6D84F1C();
        if (v77)
        {
          goto LABEL_22;
        }
      }

LABEL_52:
      v46 = v167;
      v167[(v73 >> 6) + 8] |= 1 << v73;
      v101 = (v167[6] + 16 * v73);
      *v101 = v148;
      v101[1] = v71;
      v102 = v167[7] + 40 * v73;
      *v102 = v148;
      *(v102 + 8) = v71;
      *(v102 + 16) = v147;
      *(v102 + 24) = v146;
      *(v102 + 32) = v157;
      *(v102 + 33) = v145;

      sub_1D5ED348C(v62, v63, v64);
      v103 = v167[2];
      v27 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v27)
      {
        goto LABEL_92;
      }

      v167[2] = v104;
      goto LABEL_23;
    }

LABEL_63:

    sub_1D6985DAC(v113);
    v114 = *(v152 + 2);
    if (!v114)
    {
      v117 = MEMORY[0x1E69E7CC0];
LABEL_79:

      if (v139 == 2)
      {
        v132 = v140;
      }

      else
      {
        v132 = v139;
      }

      *v138 = v137;
      *(v138 + 8) = v136;
      *(v138 + 16) = v135;
      *(v138 + 24) = v143;
      *(v138 + 32) = v141;
      *(v138 + 40) = v142;
      *(v138 + 48) = v134;
      *(v138 + 49) = v132;
      *(v138 + 56) = v117;
      return result;
    }

    v115 = 0;
    v116 = v152 + 40;
    v117 = MEMORY[0x1E69E7CC0];
LABEL_65:
    v118 = &v116[16 * v115];
    v119 = v115;
    while (v119 < v114)
    {
      v115 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_87;
      }

      if (v167[2])
      {
        v120 = *(v118 - 1);
        v121 = *v118;

        v122 = sub_1D6D8CB60(v120, v121);
        if (v123)
        {
          v124 = v167[7] + 40 * v122;
          v125 = *(v124 + 8);
          v163 = *v124;
          v126 = *(v124 + 16);
          v127 = *(v124 + 24);
          v128 = *(v124 + 32);
          v159 = *(v124 + 33);

          sub_1D5ED34B0(v126, v127, v128);

          v166 = v116;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_1D698EFE8(0, *(v117 + 2) + 1, 1, v117);
          }

          v130 = *(v117 + 2);
          v129 = *(v117 + 3);
          if (v130 >= v129 >> 1)
          {
            v117 = sub_1D698EFE8((v129 > 1), v130 + 1, 1, v117);
          }

          *(v117 + 2) = v130 + 1;
          v131 = &v117[40 * v130];
          v116 = v166;
          *(v131 + 4) = v163;
          *(v131 + 5) = v125;
          *(v131 + 6) = v126;
          *(v131 + 7) = v127;
          v131[64] = v128;
          v131[65] = v159;
          if (v115 != v114)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }
      }

      ++v119;
      v118 += 16;
      if (v115 == v114)
      {
        goto LABEL_79;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  __break(1u);
LABEL_94:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6A525F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v85 = v2[2];
  v86 = v4;
  v5 = v2[1];
  v83 = *v2;
  v84 = v5;
  v6 = *(&v86 + 1);
  v7 = *(*(&v86 + 1) + 16);

  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1D698EFE8(0, v7, 0, MEMORY[0x1E69E7CC0]);
  result = sub_1D698EE80(0, v7, 0, v8);
  v66 = result;
  v73 = *(&v86 + 1);
  v68 = *(*(&v86 + 1) + 16);
  if (v68)
  {
    v11 = 0;
    v67 = *(&v86 + 1) + 32;
    while (v11 < *(v6 + 16))
    {
      v75 = v9;
      v12 = v67 + 40 * v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = *(v12 + 32);
      v71 = *(v12 + 33);

      v74 = v15;
      v72 = v17;
      sub_1D5ED34B0(v16, v15, v17);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v70 = v13;
      *&v77 = v13;
      *(&v77 + 1) = v14;

      v18 = sub_1D6844380(&v77);

      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = 0;
        v21 = 32;
        while (1)
        {
          if (v20 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v23 = *(v18 + v21 + 16);
          v22 = *(v18 + v21 + 32);
          v24 = *(v18 + v21);
          v82 = *(v18 + v21 + 48);
          v81[1] = v23;
          v81[2] = v22;
          v81[0] = v24;
          v25 = v23;
          sub_1D5E3B610(v81, &v77);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v20;
          result = sub_1D5E3B66C(v81);
          v21 += 56;
          if (v19 == v20)
          {
            goto LABEL_3;
          }
        }

        result = sub_1D5E3B66C(v81);
        if (v25 <= 1)
        {
          v9 = v75;
          v30 = *(v75 + 2);
          v29 = *(v75 + 3);
          v6 = v73;
          if (v30 >= v29 >> 1)
          {
            result = sub_1D698EFE8((v29 > 1), v30 + 1, 1, v75);
            v9 = result;
          }

          *(v9 + 2) = v30 + 1;
          v31 = &v9[40 * v30];
          *(v31 + 4) = v70;
          *(v31 + 5) = v14;
          *(v31 + 6) = v16;
          *(v31 + 7) = v74;
          v31[64] = v72;
          v31[65] = v71;
        }

        else
        {

          sub_1D5ED34B0(v16, v15, v72);
          v27 = v66[2];
          v26 = v66[3];
          v6 = v73;
          v9 = v75;
          if (v27 >= v26 >> 1)
          {
            v66 = sub_1D698EE80((v26 > 1), v27 + 1, 1, v66);
          }

          result = sub_1D5ED348C(v16, v74, v72);
          v66[2] = v27 + 1;
          v28 = &v66[6 * v27];
          v28[4] = v70;
          v28[5] = v14;
          v28[6] = v16;
          v28[7] = v74;
          *(v28 + 64) = v72;
          *(v28 + 65) = v71;
          v28[9] = v25;
        }
      }

      else
      {
LABEL_3:

        sub_1D5ED348C(v16, v15, v72);

        v6 = v73;
        v9 = v75;
      }

      if (++v11 == v68)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:

    sub_1D6A534C8();
    v32 = sub_1D72626AC();

    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = (v32 + 65);
      do
      {
        v35 = *(v34 - 33);
        v36 = *(v34 - 25);
        v37 = *(v34 - 17);
        v38 = *(v34 - 9);
        v39 = *(v34 - 1);
        v40 = *v34;

        sub_1D5ED34B0(v37, v38, v39);
        v42 = *(v9 + 2);
        v41 = *(v9 + 3);
        v43 = v9;
        if (v42 >= v41 >> 1)
        {
          v43 = sub_1D698EFE8((v41 > 1), v42 + 1, 1, v9);
        }

        v34 += 48;
        *(v43 + 2) = v42 + 1;
        v9 = v43;
        v44 = &v43[40 * v42];
        *(v44 + 4) = v35;
        *(v44 + 5) = v36;
        *(v44 + 6) = v37;
        *(v44 + 7) = v38;
        v44[64] = v39;
        v44[65] = v40;
        --v33;
      }

      while (v33);
    }

    v45 = BYTE1(v86);
    v46 = v85;
    v47 = v86;
    v48 = v84;
    v49 = v83;
    v50 = *(v9 + 2);
    result = sub_1D6A53524(&v83, &v77);
    v77 = v49;
    v78 = v48;
    v79 = v46;
    LOBYTE(v80) = v47;
    BYTE1(v80) = v45;
    *(&v80 + 1) = v73;
    v69 = v50;
    if (!v50)
    {
LABEL_34:

      v63 = v78;
      *a2 = v77;
      a2[1] = v63;
      v64 = v80;
      a2[2] = v79;
      a2[3] = v64;
      return result;
    }

    v51 = v46 >> 64;
    v52 = v46;
    v53 = v47;
    v54 = 0;
    v55 = (v9 + 65);
    v76 = v9;
    while (v54 < *(v9 + 2))
    {
      v56 = *(v55 - 17);
      v57 = *(v55 - 9);
      v58 = *(v55 - 1);
      v59 = *v55;
      v60 = v56;
      v61 = v57;
      v62 = v58;
      if (v58 > 0xFD)
      {
        v60 = v52;
        v61 = v51;
        v62 = v53;
        sub_1D5ED34B0(v52, v51, v53);
      }

      ++v54;
      if (v59 != 2)
      {
        v45 = v59;
      }

      sub_1D5ED34B0(v56, v57, v58);

      result = sub_1D66B0388(&v77);
      v77 = v49;
      v78 = v48;
      *&v79 = v60;
      *(&v79 + 1) = v61;
      LOBYTE(v80) = v62;
      v55 += 40;
      v53 = v62;
      BYTE1(v80) = v45;
      v51 = v61;
      v52 = v60;
      *(&v80 + 1) = v73;
      v9 = v76;
      if (v69 == v54)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FormatPuzzleEmbedNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatPuzzleEmbedNodeStyle.class.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatPuzzleEmbedNodeStyle.selectors.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t FormatPuzzleEmbedNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatPuzzleEmbedNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

BOOL _s8NewsFeed26FormatPuzzleEmbedNodeStyleV8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4 > 0xFD)
  {
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34B0(v7, v6, v8);
    if (v8 > 0xFD)
    {
      sub_1D5ED348C(v2, v3, v4);
      goto LABEL_12;
    }

LABEL_9:
    sub_1D5ED348C(v2, v3, v4);
    sub_1D5ED348C(v7, v6, v8);
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v17 = v4;
  if (v8 > 0xFD)
  {
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34B0(v7, v6, v8);
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34A0(v2, v3, v4);
    goto LABEL_9;
  }

  v12 = v7;
  v13 = v6;
  v14 = v8;
  sub_1D5ED34B0(v2, v3, v4);
  sub_1D5ED34B0(v7, v6, v8);
  sub_1D5ED34B0(v2, v3, v4);
  v11 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v15, &v12);
  sub_1D5ED34A0(v12, v13, v14);
  sub_1D5ED34A0(v15, v16, v17);
  sub_1D5ED348C(v2, v3, v4);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (v5 != 2)
  {
    return v9 != 2 && ((v9 ^ v5) & 1) == 0;
  }

  return v9 == 2;
}

BOOL _s8NewsFeed26FormatPuzzleEmbedNodeStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 49);
  v17 = *(a1 + 49);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6 > 0xFD)
  {
    sub_1D5ED34B0(v3, v5, v6);
    sub_1D5ED34B0(v10, v9, v11);
    if (v11 > 0xFD)
    {
      sub_1D5ED348C(v3, v5, v6);
      goto LABEL_15;
    }

LABEL_12:
    sub_1D5ED348C(v3, v5, v6);
    sub_1D5ED348C(v10, v9, v11);
    return 0;
  }

  v21 = v3;
  v22 = v5;
  v23 = v6;
  if (v11 > 0xFD)
  {
    sub_1D5ED34B0(v3, v5, v6);
    sub_1D5ED34B0(v10, v9, v11);
    sub_1D5ED34B0(v3, v5, v6);
    sub_1D5ED34A0(v3, v5, v6);
    goto LABEL_12;
  }

  v18 = v10;
  v19 = v9;
  v20 = v11;
  sub_1D5ED34B0(v3, v5, v6);
  sub_1D5ED34B0(v10, v9, v11);
  sub_1D5ED34B0(v3, v5, v6);
  v13 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v21, &v18);
  sub_1D5ED34A0(v18, v19, v20);
  sub_1D5ED34A0(v21, v22, v23);
  sub_1D5ED348C(v3, v5, v6);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v17 == 2)
  {
    if (v16 == 2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v16 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

LABEL_20:

  return sub_1D635122C(v15, v14);
}

unint64_t sub_1D6A53170(uint64_t a1)
{
  result = sub_1D6A53198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A53198()
{
  result = qword_1EC890678;
  if (!qword_1EC890678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890678);
  }

  return result;
}

unint64_t sub_1D6A531EC(uint64_t a1)
{
  *(a1 + 16) = sub_1D66A5CB0();
  result = sub_1D66B03DC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1D6A5325C()
{
  result = qword_1EC890680;
  if (!qword_1EC890680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890680);
  }

  return result;
}

unint64_t sub_1D6A532B0(uint64_t a1)
{
  result = sub_1D6A532D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A532D8()
{
  result = qword_1EC890688;
  if (!qword_1EC890688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890688);
  }

  return result;
}

unint64_t sub_1D6A5332C(uint64_t a1)
{
  *(a1 + 8) = sub_1D66B0654();
  result = sub_1D66B06A8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D6A5339C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A533F0()
{
  result = qword_1EC890690;
  if (!qword_1EC890690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890690);
  }

  return result;
}

void sub_1D6A53464()
{
  if (!qword_1EDF05830)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05830);
    }
  }
}

void sub_1D6A534C8()
{
  if (!qword_1EDF0A980)
  {
    sub_1D69A6AF0();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0A980);
    }
  }
}

void *sub_1D6A5355C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 112);
  v55[6] = *(a1 + 96);
  v55[7] = v2;
  v55[8] = *(a1 + 128);
  v56 = *(a1 + 144);
  v3 = *(a1 + 48);
  v55[2] = *(a1 + 32);
  v55[3] = v3;
  v4 = *(a1 + 80);
  v55[4] = *(a1 + 64);
  v55[5] = v4;
  v5 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v41 = a2[2];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *(a2 + 48);
  v47 = *(a2 + 49);
  v39 = *a2;
  v40 = a2[7];
  v11 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279970;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v11);
  sub_1D5EA74B8();
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v45 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  v43 = v8;
  v44 = v14;
  v16 = (v15 + v14);
  v46 = v6;
  v42 = v10;
  if (v6)
  {
    v17 = swift_allocObject();
    *(v17 + 2) = v39;
    v18 = v8;
    v19 = v41;
    *(v17 + 3) = v46;
    *(v17 + 4) = v41;
    *(v17 + 5) = v7;
    *(v17 + 6) = v18;
    *(v17 + 7) = v9;
    *(v17 + 8) = v10 | (v47 << 8) | 0x8000000000000000;
    *(v17 + 9) = v40;

    swift_bridgeObjectRetain_n();
    v20 = v18;
    v21 = v7;
    sub_1D5ED34B0(v20, v9, v10);

    v22 = sub_1D601118C;
  }

  else
  {
    v22 = sub_1D70DD9D8;
    v19 = 0;
    v17 = 0;
    LOBYTE(v47) = 2;
    v21 = 0xE000000000000000;
  }

  v23 = type metadata accessor for FormatInspectionItem(0);
  v24 = (v16 + *(v23 + 24));
  *v24 = v22;
  v24[1] = v17;
  v25 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  *(v15 + v44) = v19;
  v16[2] = 0;
  v16[3] = 0;
  v16[1] = v21;
  v26 = v16 + *(v23 + 28);
  *v26 = 0;
  *(v26 + 1) = 0;
  v26[16] = -1;
  v27 = *(*(v23 - 8) + 56);
  v27(v16, 0, 1, v23);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v15, v51);
  swift_setDeallocating();
  sub_1D6180C78(v16);
  swift_deallocClassInstance();
  *(v12 + 56) = &type metadata for FormatInspectionGroup;
  *(v12 + 64) = &off_1F518B2C0;
  v28 = swift_allocObject();
  *(v12 + 32) = v28;
  v29 = v51[1];
  *(v28 + 16) = v51[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v52;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D7270C10;
  sub_1D711F844(1701869908, 0xE400000000000000, 0x4520656C7A7A7550, 0xEC0000006465626DLL, (v30 + v44));
  v27((v30 + v44), 0, 1, v23);
  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v47, (v30 + v44 + v45));
  v27((v30 + v44 + v45), 0, 1, v23);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v30, v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v12 + 96) = &type metadata for FormatInspectionGroup;
  *(v12 + 104) = &off_1F518B2C0;
  v31 = swift_allocObject();
  *(v12 + 72) = v31;
  v32 = v53[1];
  *(v31 + 16) = v53[0];
  *(v31 + 32) = v32;
  *(v31 + 48) = v54;
  if (v46)
  {
    v34 = v9;
    v33 = v43;
    v35 = v42;
    sub_1D5ED34B0(v43, v9, v42);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = -2;
  }

  v48 = v33;
  v49 = v34;
  v50 = v35;
  v36 = sub_1D6D9893C(v55, &v48);
  sub_1D5ED348C(v48, v49, v50);
  *(v12 + 136) = &type metadata for FormatInspection;
  *(v12 + 144) = &off_1F51E3FD0;
  *(v12 + 112) = v36;
  v37 = sub_1D7073500(v12);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v37;
}

id sub_1D6A53AF8()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_sourceMap + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_sourceMap];
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_filePathLabel];

    MEMORY[0x1DA6F9910](v2, v1);
    v4 = sub_1D726203C();

    [v3 setText_];

    v5 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_lineColumnLabel];
    sub_1D7263D4C();

    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    MEMORY[0x1DA6F9910](0x203A6C6F4320, 0xE600000000000000);
    v7 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v7);

    v8 = sub_1D726203C();

    [v5 setText_];

    [*&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_bottomSeparatorView] setHidden_];
    [v0 setNeedsLayout];
    return [v0 layoutIfNeeded];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_filePathLabel] setText_];
    [*&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_lineColumnLabel] setText_];
    [*&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_bottomSeparatorView] setHidden_];
    [v0 setNeedsLayout];

    return [v0 layoutIfNeeded];
  }
}

char *sub_1D6A53D7C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_sourceMap];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_topSeparatorView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_bottomSeparatorView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_filePathLabel;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_lineColumnLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_filePathLabel;
  v17 = *&v15[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_filePathLabel];
  v18 = objc_opt_self();
  v19 = *MEMORY[0x1E69DB970];
  v20 = v15;
  v21 = v17;
  v22 = [v18 systemFontOfSize:10.0 weight:v19];
  [v21 setFont_];

  [*&v15[v16] setLineBreakMode_];
  v23 = *&v15[v16];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 secondaryLabelColor];
  [v25 setTextColor_];

  [v20 addSubview_];
  v27 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_lineColumnLabel;
  v28 = *&v20[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_lineColumnLabel];
  v29 = [v18 systemFontOfSize:10.0 weight:v19];
  [v28 setFont_];

  v30 = *&v20[v27];
  v31 = [v24 secondaryLabelColor];
  [v30 setTextColor_];

  [v20 addSubview_];
  v32 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_topSeparatorView;
  v33 = *&v20[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_topSeparatorView];
  v34 = [v24 separatorColor];
  [v33 setBackgroundColor_];

  [*&v20[v32] setHidden_];
  [v20 addSubview_];
  v35 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_bottomSeparatorView;
  v36 = *&v20[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_bottomSeparatorView];
  v37 = [v24 separatorColor];
  [v36 setBackgroundColor_];

  [*&v20[v35] setHidden_];
  [v20 addSubview_];

  return v20;
}

id sub_1D6A54194()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_topSeparatorView];
  v5 = 1.0 / fmax(v3, 1.0);
  [v0 bounds];
  [v4 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_bottomSeparatorView];
  [v0 bounds];
  v7 = CGRectGetHeight(v21) - v5;
  [v0 bounds];
  [v6 setFrame_];
  v8 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_lineColumnLabel];
  [v8 sizeToFit];
  [v0 bounds];
  Width = CGRectGetWidth(v23);
  [v8 frame];
  v10 = Width - CGRectGetWidth(v24) + -8.0;
  [v8 frame];
  v11 = CGRectGetWidth(v25);
  [v0 bounds];
  [v8 setFrame_];
  v12 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_filePathLabel];
  [v0 safeAreaInsets];
  v14 = v13 + 8.0;
  [v8 frame];
  MinX = CGRectGetMinX(v27);
  [v0 safeAreaInsets];
  v17 = MinX - v16 + -8.0;
  [v0 bounds];
  return [v12 setFrame_];
}

void sub_1D6A544B8()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_sourceMap);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_topSeparatorView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_bottomSeparatorView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_filePathLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed31DebugFormatDebuggerPanePathView_lineColumnLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

void ArticleThumbnailViewLayoutAttributesFactory.makeLayoutAttributes(with:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[5];
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 72);
  v10 = 0.0;
  v11 = 0.0;
  if (v5 > 0.0)
  {
    v11 = a1[2];
    if (*(a1 + 32))
    {
      if (*(a1 + 32) == 1)
      {
        v10 = v5 * v11;
        goto LABEL_9;
      }

      v12 = a1[3];
      if (v5 < v11 / v12)
      {
        v10 = v12 * v5;
        v11 = a1[3];
        goto LABEL_9;
      }

      if (v11 / v12 >= v5)
      {
        v10 = a1[2];
        v11 = a1[3];
        goto LABEL_9;
      }
    }

    v10 = a1[2];
    v11 = v11 / v5;
  }

LABEL_9:
  v3 = *a1;
  v4 = *(a1 + 1);
  *a2 = CGRectIntegral(*(&v10 - 2));
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
}

uint64_t ArticleThumbnailViewLayoutAttributesFactory.createLayoutAttributes(model:options:cursor:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D6A547D4(v21);
  ArticleThumbnailViewLayoutAttributesFactory.makeLayoutAttributes(with:)(v21, v22);
  v3 = *v22;
  v4 = *&v22[1];
  v5 = *&v22[2];
  v6 = *&v22[3];
  v7 = v22[4];
  v8 = v22[5];
  v9 = v22[6];
  v10 = v23;
  v11 = sub_1D725A16C();
  v11(v3, v4, v5, v6);
  if (v1)
  {
  }

  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v15;

  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return result;
}

uint64_t sub_1D6A547D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D725A17C();
  v5 = v4;
  v7 = v6;
  sub_1D725A14C();
  v10 = v9;
  if (v3)
  {
    if (v3 != 1)
    {
      sub_1D725A14C();
      v19 = v18;
      v20 = type metadata accessor for ArticleThumbnailViewLayoutAttributesFactory.Options();
      result = sub_1D725A33C();
      v14 = *&v1[v20[6]];
      v15 = *&v1[v20[7]];
      v16 = *&v1[v20[8]];
      v17 = v1[v20[9]];
      *a1 = v5;
      *(a1 + 8) = v7;
      *(a1 + 16) = v10;
      *(a1 + 24) = v19;
      goto LABEL_6;
    }

    v10 = v8;
  }

  v11 = type metadata accessor for ArticleThumbnailViewLayoutAttributesFactory.Options();
  result = sub_1D725A33C();
  v14 = *&v1[v11[6]];
  v15 = *&v1[v11[7]];
  v16 = *&v1[v11[8]];
  v17 = v1[v11[9]];
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = 0;
LABEL_6:
  *(a1 + 32) = v3;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  return result;
}

uint64_t ArticleThumbnailViewLayoutAttributesFactory.SizeConstraint.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t ArticleThumbnailViewLayoutAttributesFactory.Options.init(sizeConstraint:aspectRatio:shadowRadius:cornerRadius:roundedCorners:layeredMedia:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = *a1;
  v13 = type metadata accessor for ArticleThumbnailViewLayoutAttributesFactory.Options();
  v14 = v13[5];
  v15 = sub_1D725A34C();
  result = (*(*(v15 - 8) + 32))(&a5[v14], a2, v15);
  *&a5[v13[6]] = a6;
  *&a5[v13[7]] = a7;
  *&a5[v13[8]] = a3;
  a5[v13[9]] = a4;
  return result;
}

uint64_t type metadata accessor for ArticleThumbnailViewLayoutAttributesFactory.Options()
{
  result = qword_1EDF061F8;
  if (!qword_1EDF061F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D6A54A78()
{
  result = qword_1EC8906C0;
  if (!qword_1EC8906C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8906C0);
  }

  return result;
}

unint64_t sub_1D6A54AD0()
{
  result = qword_1EDF06F50;
  if (!qword_1EDF06F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F50);
  }

  return result;
}

void sub_1D6A54BA0()
{
  sub_1D725A34C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIRectCorner(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void EngagementBannerViewLayoutAttributesFactory.makeLayoutAttributes(for:with:)(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1D725C09C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[5];
  v38 = a2[4];
  v39 = v13;
  v14 = a2[3];
  v36 = a2[2];
  v37 = v14;
  v15 = a2[1];
  v35[0] = *a2;
  v35[1] = v15;
  v16 = *v35;
  v17 = *&v38;
  sub_1D7262E2C();
  v19 = v16 - v18;
  v20 = *&v36;
  sub_1D7262E2C();
  v22 = v19 - v21;
  v23 = sub_1D6A54EEC(v35, a1, v4);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  type metadata accessor for FeedEngagementBanner();
  sub_1D725C06C();
  v30 = (*(v9 + 88))(v12, v8);
  if (v30 == *MEMORY[0x1E69B56B0])
  {
LABEL_2:
    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    MaxY = CGRectGetMaxY(v40);
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x1E69B56B8])
  {
    (*(v9 + 8))(v12, v8);
    MaxY = 0.0;
  }

  else
  {
    MaxY = 0.0;
    if (v30 == *MEMORY[0x1E69B56C8] || v30 == *MEMORY[0x1E69B56D0] || v30 == *MEMORY[0x1E69B56C0])
    {
      goto LABEL_5;
    }

    if (v30 == *MEMORY[0x1E69B56E0])
    {
      goto LABEL_2;
    }

    if (v30 != *MEMORY[0x1E69B56D8])
    {
      (*(v9 + 8))(v12, v8);
    }
  }

LABEL_5:
  v41.origin.x = v23;
  v41.origin.y = v25;
  v41.size.width = v27;
  v41.size.height = v29;
  Height = CGRectGetHeight(v41);
  v33 = MaxY + *(&v39 + 1);
  *a3 = v17 + v20;
  if (Height <= 0.0)
  {
    v34 = MaxY;
  }

  else
  {
    v34 = v33;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = v22;
  *(a3 + 24) = v34;
  *(a3 + 32) = v23;
  *(a3 + 40) = v25;
  *(a3 + 48) = v27;
  *(a3 + 56) = v29;
}

double sub_1D6A54EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = sub_1D725C01C();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A557E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725C09C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedEngagementBanner();
  sub_1D725C06C();
  if ((*(v13 + 88))(v16, v12) == *MEMORY[0x1E69B56B0])
  {
    __swift_project_boxed_opaque_existential_1((a3 + 56), *(a3 + 80));
    sub_1D725C07C();
    sub_1D725C0AC();
    (*(v4 + 8))(v7, v21);
    v17 = sub_1D725C03C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11, 1, v17) == 1)
    {
      sub_1D6A55838(v11);
    }

    else
    {
      sub_1D725C02C();
      (*(v18 + 8))(v11, v17);
    }
  }

  else
  {
    (*(v13 + 8))(v16, v12);
  }

  return 0.0;
}

uint64_t EngagementBannerViewLayoutAttributesFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  return v0;
}

uint64_t EngagementBannerViewLayoutAttributesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t EngagementBannerViewLayoutAttributesFactory.createLayoutAttributes(model:options:cursor:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v73 = a1;
  v70 = a2;
  v2 = sub_1D725C09C();
  v76 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7259F5C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v69 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v69 - v16;
  sub_1D725A14C();
  v19 = v18;
  v77 = v20;
  sub_1D725A15C();
  v21 = sub_1D7259EBC();
  v22 = *(v6 + 8);
  v22(v17, v5);
  [v21 displayScale];
  v75 = v23;

  sub_1D725A15C();
  sub_1D7259E9C();
  v71 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v22(v13, v5);
  sub_1D725A15C();
  sub_1D7259E8C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v9;
  v40 = v72;
  v22(v39, v5);
  *v78 = v19;
  *&v78[1] = v77;
  *&v78[2] = v75;
  v78[3] = v32;
  *&v78[4] = v34;
  v78[5] = v36;
  v78[6] = v38;
  v78[7] = v71;
  *&v78[8] = v26;
  v78[9] = v28;
  v78[10] = v30;
  v79 = 20.0;
  v77 = v26;
  sub_1D7262E2C();
  v42 = v19 - v41;
  v75 = v34;
  sub_1D7262E2C();
  v44 = v42 - v43;
  v45 = sub_1D6A54EEC(v78, v73, v74);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  type metadata accessor for FeedEngagementBanner();
  sub_1D725C06C();
  v52 = v76;
  v53 = (*(v76 + 88))(v40, v2);
  if (v53 == *MEMORY[0x1E69B56B0])
  {
LABEL_2:
    v81.origin.x = v45;
    v81.origin.y = v47;
    v81.size.width = v49;
    v81.size.height = v51;
    MaxY = CGRectGetMaxY(v81);
    goto LABEL_5;
  }

  if (v53 == *MEMORY[0x1E69B56B8])
  {
    (*(v52 + 8))(v40, v2);
    MaxY = 0.0;
  }

  else
  {
    MaxY = 0.0;
    if (v53 == *MEMORY[0x1E69B56C8] || v53 == *MEMORY[0x1E69B56D0] || v53 == *MEMORY[0x1E69B56C0])
    {
      goto LABEL_5;
    }

    if (v53 == *MEMORY[0x1E69B56E0])
    {
      goto LABEL_2;
    }

    if (v53 != *MEMORY[0x1E69B56D8])
    {
      (*(v52 + 8))(v40, v2);
    }
  }

LABEL_5:
  v82.origin.x = v45;
  v82.origin.y = v47;
  v82.size.width = v49;
  v82.size.height = v51;
  if (CGRectGetHeight(v82) <= 0.0)
  {
    v55 = MaxY;
  }

  else
  {
    v55 = MaxY + v79;
  }

  v56 = v77 + v75;
  v57 = sub_1D725A16C();
  v58 = v80;
  v57(v56, 0.0, v44, v55);
  if (v58)
  {
  }

  v64 = v59;
  v65 = v60;
  v66 = v61;
  v67 = v62;

  v68 = v70;
  *v70 = v64;
  *(v68 + 1) = v65;
  *(v68 + 2) = v66;
  *(v68 + 3) = v67;
  v68[4] = v45;
  v68[5] = v47;
  v68[6] = v49;
  v68[7] = v51;
  return result;
}

unint64_t sub_1D6A55750()
{
  result = qword_1EDF06F28;
  if (!qword_1EDF06F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F28);
  }

  return result;
}

void sub_1D6A557E0()
{
  if (!qword_1EDF175E8)
  {
    sub_1D725C03C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF175E8);
    }
  }
}

uint64_t sub_1D6A55838(uint64_t a1)
{
  sub_1D6A557E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6A558E0()
{
  result = qword_1EDF17340;
  if (!qword_1EDF17340)
  {
    sub_1D6A559EC(255, &qword_1EDF3B808, sub_1D67C5854, MEMORY[0x1E69D7548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17340);
  }

  return result;
}

unint64_t sub_1D6A55968()
{
  result = qword_1EC8906E0;
  if (!qword_1EC8906E0)
  {
    sub_1D5BB028C(255, &qword_1EDF3B5B0, &qword_1EDF33558, type metadata accessor for VideoView, &unk_1EDF33560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8906E0);
  }

  return result;
}

void sub_1D6A559EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A55A50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6A559EC(255, a2, a3, type metadata accessor for HeadlineView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6A55AB4()
{
  if (!qword_1EDF3B5C8)
  {
    type metadata accessor for EmptyView();
    sub_1D5BBADA4(&qword_1EDF1BB08, type metadata accessor for EmptyView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B5C8);
    }
  }
}

uint64_t FeedConfigEncoder.__allocating_init()()
{
  v0 = sub_1D725787C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_allocObject();
  v5 = sub_1D72578DC();
  v6 = qword_1EDF42918;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDFFD038;
  *v4 = qword_1EDFFD038;
  (*(v1 + 104))(v4, *MEMORY[0x1E6967FD0], v0);
  v8 = v7;
  sub_1D725788C();

  return v5;
}

uint64_t FeedConfigEncoder.init()()
{
  v0 = sub_1D725787C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72578DC();
  v6 = qword_1EDF42918;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDFFD038;
  *v4 = qword_1EDFFD038;
  (*(v1 + 104))(v4, *MEMORY[0x1E6967FD0], v0);
  v8 = v7;
  sub_1D725788C();

  return v5;
}

uint64_t FeedConfigEncoder.__deallocating_deinit()
{
  _s8NewsFeed0B13ConfigEncoderCfd_0();

  return swift_deallocClassInstance();
}

uint64_t FeedConfigDecoder.__allocating_init()()
{
  v0 = sub_1D725A67C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_allocObject();
  v5 = sub_1D725A6BC();
  *v4 = sub_1D6A55EF8;
  v4[1] = 0;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6350], v0);

  sub_1D725A68C();

  return v5;
}

uint64_t sub_1D6A55EF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v28 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7264AEC();
  if (!v2)
  {
    v29 = v9;
    v30 = v12;
    v31 = v5;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    v15 = sub_1D72646FC();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v28[1] = 0;
    if (qword_1EDF42918 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDFFD038;
    v19 = sub_1D726203C();
    v20 = [v18 dateFromString_];

    if (v20)
    {
      v21 = v14;
      v23 = v30;
      v22 = v31;
    }

    else
    {
      v21 = v14;
      if (qword_1EDF13D10 != -1)
      {
        swift_once();
      }

      v24 = qword_1EDFFC620;
      v25 = sub_1D726203C();
      v20 = [v24 dateFromString_];

      v22 = v31;
      if (!v20)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v26 = sub_1D7264ACC();
        sub_1D6A5625C();
        swift_allocError();
        *v27 = v15;
        v27[1] = v17;
        v27[2] = v26;
        return swift_willThrow();
      }

      v23 = v29;
    }

    sub_1D72588BC();

    return (*(v22 + 32))(v21, v23, v4);
  }

  return result;
}

uint64_t FeedConfigDecoder.__deallocating_deinit()
{
  _s8NewsFeed17FormatJSONDecoderCfd_0();

  return swift_deallocClassInstance();
}

unint64_t sub_1D6A5625C()
{
  result = qword_1EC8906F8;
  if (!qword_1EC8906F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8906F8);
  }

  return result;
}

uint64_t sub_1D6A562C0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v61 = *(a1 + 16);
  if (v61)
  {
    v5 = 0;
    v59 = a1 + 32;
    while (2)
    {
      v6 = v59 + 32 * v5++;
      v7 = *(v6 + 24);
      v8 = *(v7 + 16);

      result = swift_bridgeObjectRetain_n();
      v10 = 0;
      v11 = v7 + 40;
      v12 = MEMORY[0x1E69E7CC0];
LABEL_5:
      v13 = (v11 + 16 * v10);
      while (v8 != v10)
      {
        if (v10 >= *(v7 + 16))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          return result;
        }

        v14 = v13 + 16;
        ++v10;
        v15 = *v13;
        v13 += 16;
        if (!v15)
        {
          v63 = v11;
          v16 = *(v14 - 3);
          v17 = v16[2];
          v18 = *(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
          v19 = 0x756F72676B636142;
          if (v18 == 5)
          {
            v19 = 0x7972617262694CLL;
          }

          v20 = 0xEA0000000000646ELL;
          if (v18 == 5)
          {
            v20 = 0xE700000000000000;
          }

          v21 = 0x6C6C6177796150;
          if (v18 != 3)
          {
            v21 = 0x656D656854;
          }

          v22 = 0xE500000000000000;
          if (v18 == 3)
          {
            v22 = 0xE700000000000000;
          }

          if (*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 4u)
          {
            v19 = v21;
            v20 = v22;
          }

          v23 = 0x7265746F6F46;
          if (v18 == 1)
          {
            v23 = 0x726564616548;
          }

          if (!*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
          {
            v23 = 0x74756F79614CLL;
          }

          if (*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
          {
            v24 = v23;
          }

          else
          {
            v24 = v19;
          }

          if (*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
          {
            v25 = 0xE600000000000000;
          }

          else
          {
            v25 = v20;
          }

          sub_1D67BF4AC(v16, 0);

          MEMORY[0x1DA6F9910](v24, v25);

          MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
          MEMORY[0x1DA6F9910](*(v17 + 16), *(v17 + 24));
          sub_1D67BE408(v16, 0);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D5B858EC(0, *(v12 + 16) + 1, 1, v12);
            v12 = result;
          }

          v27 = *(v12 + 16);
          v26 = *(v12 + 24);
          if (v27 >= v26 >> 1)
          {
            result = sub_1D5B858EC((v26 > 1), v27 + 1, 1, v12);
            v12 = result;
          }

          *(v12 + 16) = v27 + 1;
          v28 = v12 + 16 * v27;
          *(v28 + 32) = 0;
          *(v28 + 40) = 0xE000000000000000;
          v11 = v63;
          goto LABEL_5;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_1D6985160(v12);
      if (v5 != v61)
      {
        continue;
      }

      break;
    }

    v29 = v66;
    v3 = a2;
    v2 = v58;
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1D5B86020(v29);

  *v2 = v30;
  v67 = v4;
  v62 = *(v3 + 16);
  if (v62)
  {
    v57 = v30;
    v31 = 0;
    v60 = v3 + 32;
    do
    {
      v32 = v60 + 32 * v31++;
      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      v35 = *(v33 + 16);

      result = swift_bridgeObjectRetain_n();
      v36 = 0;
      v37 = v33 + 40;
      v38 = MEMORY[0x1E69E7CC0];
LABEL_40:
      v39 = (v37 + 16 * v36);
      while (v35 != v36)
      {
        if (v36 >= *(v33 + 16))
        {
          goto LABEL_72;
        }

        v40 = v39 + 16;
        ++v36;
        v41 = *v39;
        v39 += 16;
        if (!v41)
        {
          v64 = v37;
          v65 = v34;
          v42 = *(v40 - 3);
          v43 = v42[2];
          v44 = *(v43 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
          v45 = 0x756F72676B636142;
          if (v44 == 5)
          {
            v45 = 0x7972617262694CLL;
          }

          v46 = 0xEA0000000000646ELL;
          if (v44 == 5)
          {
            v46 = 0xE700000000000000;
          }

          v47 = 0x6C6C6177796150;
          if (v44 != 3)
          {
            v47 = 0x656D656854;
          }

          v48 = 0xE500000000000000;
          if (v44 == 3)
          {
            v48 = 0xE700000000000000;
          }

          if (*(v43 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 4u)
          {
            v45 = v47;
            v46 = v48;
          }

          v49 = 0x7265746F6F46;
          if (v44 == 1)
          {
            v49 = 0x726564616548;
          }

          if (!*(v43 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
          {
            v49 = 0x74756F79614CLL;
          }

          if (*(v43 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
          {
            v50 = v49;
          }

          else
          {
            v50 = v45;
          }

          if (*(v43 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
          {
            v51 = 0xE600000000000000;
          }

          else
          {
            v51 = v46;
          }

          sub_1D67BF4AC(v42, 0);

          MEMORY[0x1DA6F9910](v50, v51);

          MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
          MEMORY[0x1DA6F9910](*(v43 + 16), *(v43 + 24));
          sub_1D67BE408(v42, 0);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D5B858EC(0, *(v38 + 16) + 1, 1, v38);
            v38 = result;
          }

          v34 = v65;
          v53 = *(v38 + 16);
          v52 = *(v38 + 24);
          if (v53 >= v52 >> 1)
          {
            result = sub_1D5B858EC((v52 > 1), v53 + 1, 1, v38);
            v38 = result;
          }

          *(v38 + 16) = v53 + 1;
          v54 = v38 + 16 * v53;
          *(v54 + 32) = 0;
          *(v54 + 40) = 0xE000000000000000;
          v37 = v64;
          goto LABEL_40;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_1D6985160(v38);
    }

    while (v31 != v62);
    v4 = v67;
    v30 = v57;
    v2 = v58;
  }

  v55 = sub_1D5B86020(v4);

  v2[1] = v55;
  result = sub_1D5FB855C(v30, v2[2]);
  v2[2] = result;
  return result;
}

uint64_t FormatSupplementaryCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    sub_1D5CA4820();
    v11 = v10;
    v18 = *(v10 - 8);
    sub_1D5CA8A00(v9 + *(v18 + 72) * v8, a3);
    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    sub_1D5CA4820();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t FormatSupplementaryCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D5CA46B8();
  sub_1D5CA4790(&qword_1EDF05110, &qword_1EDF12440);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

NewsFeed::FormatSupplementaryCollection __swiftcall FormatSupplementaryCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C2C544(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.supplementariesByIdentifier._rawValue = v4;
  result.supplementaries._rawValue = v3;
  return result;
}

unint64_t sub_1D6A56AC0@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C2C544(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 sub_1D6A56AF4(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5CFBE18(a1, v7, *v2);
  return result;
}

uint64_t sub_1D6A56B4C(uint64_t a1, uint64_t a2)
{
  sub_1D5CA4820();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A56BB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D6A56BF8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D6A56C48@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (a1 >> 62)
  {
LABEL_71:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6FB460](v7, a1);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          v6 = MEMORY[0x1E69E7CC0];
          break;
        }
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_71;
        }

        v9 = *(a1 + 8 * v7 + 32);

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_57;
        }
      }

      v11 = *(*(v9 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v11 <= 2)
      {
        v12 = 0xE600000000000000;
        if (*(*(v9 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v11 == 1)
          {
            v14 = 1684104552;
          }

          else
          {
            v14 = 1953460070;
          }

          v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          if (v4 > 2)
          {
LABEL_32:
            v17 = 0x756F72676B636162;
            if (v4 == 5)
            {
              v17 = 0x7972617262696CLL;
            }

            v18 = 0xEA0000000000646ELL;
            if (v4 == 5)
            {
              v18 = 0xE700000000000000;
            }

            v19 = 0x6C6C6177796170;
            if (v4 != 3)
            {
              v19 = 0x656D656874;
            }

            v20 = 0xE500000000000000;
            if (v4 == 3)
            {
              v20 = 0xE700000000000000;
            }

            if (v4 <= 4)
            {
              v21 = v19;
            }

            else
            {
              v21 = v17;
            }

            if (v4 <= 4)
            {
              v16 = v20;
            }

            else
            {
              v16 = v18;
            }

            if (v13 != v21)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }
        }

        else
        {
          v13 = 0x74756F79616CLL;
          if (v4 > 2)
          {
            goto LABEL_32;
          }
        }
      }

      else if (*(*(v9 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v11 == 5)
        {
          v12 = 0xE700000000000000;
          v13 = 0x7972617262696CLL;
          if (v4 > 2)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0x756F72676B636162;
          v12 = 0xEA0000000000646ELL;
          if (v4 > 2)
          {
            goto LABEL_32;
          }
        }
      }

      else if (v11 == 3)
      {
        v12 = 0xE700000000000000;
        v13 = 0x6C6C6177796170;
        if (v4 > 2)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        v13 = 0x656D656874;
        if (v4 > 2)
        {
          goto LABEL_32;
        }
      }

      if (v4)
      {
        if (v4 == 1)
        {
          v15 = 0x726564616568;
        }

        else
        {
          v15 = 0x7265746F6F66;
        }

        v16 = 0xE600000000000000;
        if (v13 != v15)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v13 != 0x74756F79616CLL)
        {
          goto LABEL_49;
        }
      }

LABEL_47:
      if (v12 == v16)
      {

LABEL_50:
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        goto LABEL_6;
      }

LABEL_49:
      v22 = sub_1D72646CC();

      if (v22)
      {
        goto LABEL_50;
      }

LABEL_6:
      ++v7;
      if (v10 == v8)
      {
        goto LABEL_58;
      }
    }
  }

  type metadata accessor for DebugFormatUploadEntry();
  v23 = sub_1D72626EC();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_61;
    }

LABEL_73:

    *a3 = v4;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v6;
    return result;
  }

  v24 = sub_1D7263BFC();
  if (!v24)
  {
    goto LABEL_73;
  }

LABEL_61:
  result = sub_1D6998004(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1DA6FB460](v26, v23);
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      v29 = *(v6 + 16);
      v28 = *(v6 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D6998004((v28 > 1), v29 + 1, 1);
      }

      ++v26;
      *(v6 + 16) = v29 + 1;
      v30 = v6 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = 0;
    }

    while (v24 != v26);
    goto LABEL_73;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6A570DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = (v3 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t getEnumTagSinglePayload for DebugFormatUploadSectionDescriptor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 7)
  {
    v8 = v7 - 6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebugFormatUploadSectionDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D6A572B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6A572CC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D6A57440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D726203C();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v5 = sub_1D7261D2C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithString:v4 attributes:v5];

  return v6;
}

BOOL sub_1D6A574F0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = *(v2 + 96);
  v9 = *(v2 + 104);
  v8 = *(v2 + 112);
  v10 = *(v2 + 120);
  v11 = *(v2 + 128);
  v25 = *(v2 + 136);
  v28 = *(v2 + 56);
  v24 = v3;
  v27 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v18 = v11;
  v19 = v25;
  v20 = [v24 resolvedColorWithTraitCollection_];
  [v20 ts_luminance];
  v22 = v21;

  result = v22 > 0.7 || UIAccessibilityIsInvertColorsEnabled();
  *a2 = result;
  return result;
}

id sub_1D6A5764C()
{
  sub_1D5BF7980(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v2 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7270C10;
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = *(v0 + 32);
  v5 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = *(v0 + 80);
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v7;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  v11 = v7;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v14 = sub_1D7261D2C();

  v15 = [v12 initWithString:v13 attributes:v14];

  return v15;
}

uint64_t sub_1D6A57804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  v5 = *(v0 + 64);
  v15 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6A5795C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5BF7980(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6A579D0()
{
  if (!qword_1EDF3C8A0)
  {
    sub_1D5B49474(255, &qword_1EDF3FA20);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C8A0);
    }
  }
}

uint64_t static FormatSponsoredBannerData.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t type metadata accessor for FormatSponsoredBannerData()
{
  result = qword_1EDF243F8;
  if (!qword_1EDF243F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6A57AEC()
{
  result = type metadata accessor for FeedSponsorshipBannerAd();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6A57B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6A58100(0, &qword_1EC890718, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A580AC();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6A57CE8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D6A57D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6A57DF0(uint64_t a1)
{
  v2 = sub_1D6A580AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A57E2C(uint64_t a1)
{
  v2 = sub_1D6A580AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6A57E68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6A57EB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D6A57EB8(void *a1)
{
  sub_1D6A58100(0, &qword_1EC890708, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A580AC();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6A580AC()
{
  result = qword_1EC890710;
  if (!qword_1EC890710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890710);
  }

  return result;
}

void sub_1D6A58100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A580AC();
    v7 = a3(a1, &type metadata for SportsStandingRecordStatistic.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6A58178()
{
  result = qword_1EC890720;
  if (!qword_1EC890720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890720);
  }

  return result;
}

unint64_t sub_1D6A581D0()
{
  result = qword_1EC890728;
  if (!qword_1EC890728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890728);
  }

  return result;
}

unint64_t sub_1D6A58228()
{
  result = qword_1EC890730;
  if (!qword_1EC890730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890730);
  }

  return result;
}

uint64_t sub_1D6A5827C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v35 = a1;
  sub_1D60A793C();
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - v8;
  v10 = sub_1D7258C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v32 - v22;
  sub_1D7258BCC();
  sub_1D7258ADC();
  (*(v11 + 8))(v14, v10);
  sub_1D725880C();
  v24 = *(v16 + 8);
  v24(v19, v15);
  sub_1D725880C();
  sub_1D5E3F92C();
  result = sub_1D7261F7C();
  if (result)
  {
    v26 = *(v16 + 32);
    v26(v9, v23, v15);
    v27 = v33;
    v26(&v9[*(v33 + 48)], v19, v15);
    sub_1D60A79A4(v9, v5);
    v28 = *(v27 + 48);
    v29 = v34;
    v26(v34, v5, v15);
    v24(&v5[v28], v15);
    sub_1D60A7A08(v9, v5);
    v30 = *(v27 + 48);
    sub_1D60A55D8();
    v26(&v29[*(v31 + 36)], &v5[v30], v15);
    return (v24)(v5, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 FeedGroupEmitterRuleEdition.edition.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 52));
  *a2 = result;
  return result;
}

uint64_t FeedGroupEmitterRuleEdition.init(value:edition:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for FeedGroupEmitterRuleEdition();
  v8 = (a4 + *(result + 52));
  *v8 = v5;
  v8[1] = v6;
  return result;
}

uint64_t FeedGroupEmitterRuleEdition.Edition.description.getter()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60A55D8();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v0;
  sub_1D725890C();
  sub_1D6A5827C(v5, v9);
  (*(v2 + 8))(v5, v1);
  if (qword_1EC87D8E8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC890738;
  v11 = sub_1D725881C();
  v12 = [v10 stringFromDate_];

  v13 = sub_1D726207C();
  v15 = v14;

  *&v23 = v13;
  *(&v23 + 1) = v15;
  MEMORY[0x1DA6F9910](544175136, 0xE400000000000000);
  v16 = sub_1D725881C();
  v17 = [v10 stringFromDate_];

  v18 = sub_1D726207C();
  v20 = v19;

  MEMORY[0x1DA6F9910](v18, v20);

  v21 = v23;
  sub_1D6A59980(v9);
  return v21;
}

uint64_t sub_1D6A58924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D6A589EC(char a1)
{
  if (a1)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1D6A58AB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6A58B04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupEmitterRuleEdition.Edition.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v3;
  type metadata accessor for FeedGroupEmitterRuleEdition.Edition.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1D726446C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  LOBYTE(v11[0]) = 0;
  v9 = v12;
  sub_1D726441C();
  if (!v9)
  {
    LOBYTE(v11[0]) = 1;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FeedGroupEmitterRuleEdition.Edition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v20 = a6;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for FeedGroupEmitterRuleEdition.Edition.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1D726435C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v19 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (!v6)
  {
    v13 = v20;
    LOBYTE(v19[0]) = 0;
    sub_1D72642DC();
    v15 = v14;
    LOBYTE(v19[0]) = 1;
    sub_1D72642DC();
    v18 = v17;
    (*(v9 + 8))(v12, v8);
    *v13 = v15;
    v13[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL static FeedGroupEmitterRuleEdition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D7261FBC() & 1) != 0 && (v4 = *(type metadata accessor for FeedGroupEmitterRuleEdition() + 52), v5 = a1 + v4, v6 = *(a1 + v4), v7 = (a2 + v4), v6 == *v7))
  {
    return *(v5 + 8) == v7[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6A58FB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974696465 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D6A5907C(char a1)
{
  if (a1)
  {
    return 0x6E6F6974696465;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D6A59114(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_1D7264A5C();
}

uint64_t sub_1D6A591BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1D6A591F8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_1D6A59234(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6A59288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupEmitterRuleEdition.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 40);
  v19 = *(a2 + 32);
  v20 = v5;
  v24 = v5;
  v25 = v4;
  v17 = v6;
  v18 = v4;
  v26 = v19;
  v27 = v6;
  type metadata accessor for FeedGroupEmitterRuleEdition.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  sub_1D7264B5C();
  LOBYTE(v24) = 0;
  v15 = v22;
  sub_1D726443C();
  if (!v15)
  {
    v23 = *(v14 + *(a2 + 52));
    v28 = 1;
    v24 = v13;
    v25 = v18;
    v26 = v12;
    v27 = v17;
    type metadata accessor for FeedGroupEmitterRuleEdition.Edition();
    swift_getWitnessTable();
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t FeedGroupEmitterRuleEdition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v12;
  v52 = v13;
  v53 = v14;
  v54 = v15;
  type metadata accessor for FeedGroupEmitterRuleEdition.CodingKeys();
  swift_getWitnessTable();
  v49 = sub_1D726435C();
  v42 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v16);
  v18 = &v38 - v17;
  v47 = a3;
  v48 = a2;
  v51 = a2;
  v52 = a3;
  v44 = a4;
  v45 = a5;
  v53 = a4;
  v54 = a5;
  v19 = type metadata accessor for FeedGroupEmitterRuleEdition();
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v38 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v18;
  v24 = v55;
  sub_1D7264B0C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v22;
  v39 = v19;
  v55 = a1;
  v27 = v44;
  v26 = v45;
  v28 = v42;
  v29 = v43;
  LOBYTE(v51) = 0;
  v30 = v46;
  sub_1D726431C();
  v31 = *(v29 + 32);
  v38 = v25;
  v32 = v30;
  v33 = v48;
  v31(v25, v32, v48);
  v51 = v33;
  v52 = v47;
  v53 = v27;
  v54 = v26;
  type metadata accessor for FeedGroupEmitterRuleEdition.Edition();
  LOBYTE(v51) = 1;
  swift_getWitnessTable();
  sub_1D726431C();
  (*(v28 + 8))(v23, v49);
  v35 = v38;
  v34 = v39;
  *&v38[*(v39 + 52)] = v50;
  v36 = v40;
  (*(v40 + 16))(v41, v35, v34);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return (*(v36 + 8))(v35, v34);
}

id sub_1D6A5991C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  qword_1EC890738 = v0;
  return result;
}

uint64_t sub_1D6A59980(uint64_t a1)
{
  sub_1D60A55D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6A59A24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedGroupEmitterRuleEdition.Edition();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6A59AC4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1D6A59BC8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1D6A59D4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D6A5A020@<X0>(uint64_t a1@<X0>, Class *a2@<X8>)
{
  v11 = *(a1 + 64);
  v3 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v3;
  v4 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v4;
  if (v11)
  {
    sub_1D6BB7540();
    sub_1D60FBD38(v10);
    v5 = MEMORY[0x1E69D7770];
  }

  else
  {
    v6 = FormatColor.color.getter(a1);
    sub_1D60FBD38(v10);
    *a2 = v6;
    v5 = MEMORY[0x1E69D7768];
  }

  v7 = *v5;
  v8 = sub_1D725D00C();
  return (*(*(v8 - 8) + 104))(a2, v7, v8);
}

uint64_t sub_1D6A5A118()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A5A184()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A5A1D4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t FormatWeatherBinding.Command.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6A5A374()
{
  result = qword_1EC890910;
  if (!qword_1EC890910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890910);
  }

  return result;
}

unint64_t sub_1D6A5A3C8(uint64_t a1)
{
  result = sub_1D6A5A3F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A5A3F0()
{
  result = qword_1EC890918;
  if (!qword_1EC890918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890918);
  }

  return result;
}

unint64_t sub_1D6A5A444(void *a1)
{
  a1[1] = sub_1D666DED8();
  a1[2] = sub_1D6702C58();
  result = sub_1D6A5A374();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A5A4D0()
{
  result = qword_1EC890920;
  if (!qword_1EC890920)
  {
    sub_1D6A5A528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890920);
  }

  return result;
}

void sub_1D6A5A528()
{
  if (!qword_1EC890928)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890928);
    }
  }
}

unint64_t sub_1D6A5A57C()
{
  result = qword_1EC890930;
  if (!qword_1EC890930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890930);
  }

  return result;
}

unint64_t sub_1D6A5A5D0()
{
  result = qword_1EDF0EA70;
  if (!qword_1EDF0EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EA70);
  }

  return result;
}

uint64_t sub_1D6A5A624@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  sub_1D5B54A2C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60B1278(a1, v11);
  v36 = sub_1D726233C();
  v37 = v12;
  sub_1D5BF4D9C();
  v13 = sub_1D7263A0C();
  v15 = v14;

  v16 = sub_1D5FD24A4(1uLL, 0x657461676976616ELL, 0xE800000000000000);
  v17 = MEMORY[0x1DA6F97E0](v16);
  v19 = v18;

  v34 = v13;
  v35 = v15;

  MEMORY[0x1DA6F9910](v17, v19);

  v20 = v34;
  v21 = v35;
  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDF3AF90;
  sub_1D6A5A9A4();
  v23 = *v11;
  v24 = v11[1];
  v25 = objc_allocWithZone(MEMORY[0x1E6985C40]);

  v26 = [v25 initWithLatitude:v23 longitude:v24];
  sub_1D726324C();

  type metadata accessor for FormatCommandAction();
  swift_allocObject();
  v27 = sub_1D62029B4(v22, v7);
  v28 = type metadata accessor for FormatInspectionItem(0);
  v29 = *(v28 + 24);
  *&a2[v29] = v27;
  v30 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v30 - 8) + 56))(&a2[v29], 0, 1, v30);
  *a2 = v20;
  *(a2 + 1) = v21;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v31 = &a2[*(v28 + 28)];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = -1;
  sub_1D60B12DC(v11);
  (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
  sub_1D5B54A2C(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
  return (*(*(v32 - 8) + 56))(a2, 0, 1, v32);
}

unint64_t sub_1D6A5A9A4()
{
  result = qword_1EDF043B0;
  if (!qword_1EDF043B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF043B0);
  }

  return result;
}

uint64_t sub_1D6A5A9F0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D725B77C();
  sub_1D5B5F438();
  swift_allocObject();
  result = sub_1D725C5CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D6A5AA98()
{
  sub_1D725B77C();
  v0 = sub_1D725C5DC();

  return v0;
}

uint64_t sub_1D6A5AB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1D725B77C();
  v6 = a4(a1);

  return v6;
}

uint64_t sub_1D6A5ABA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v17 = type metadata accessor for FormatJson();
  MEMORY[0x1EEE9AC00](v17, v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6A5B1C8(0, &unk_1EDF020A0, type metadata accessor for FormatJsonKeyValue, MEMORY[0x1E69E6F90]);
  v8 = (type metadata accessor for FormatJsonKeyValue() - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7274590;
  v12 = (v11 + v10);
  sub_1D6F1D398(a2, v7);
  *v12 = 0x7465737361;
  v12[1] = 0xE500000000000000;
  sub_1D6A5ADE8(v7, v12 + v8[7]);
  v13 = (v12 + v9);
  sub_1D6C7E688(a1, a2, v7);
  *v13 = 0x6E61656C6F6F62;
  v13[1] = 0xE700000000000000;
  sub_1D6A5ADE8(v7, v12 + v9 + v8[7]);
  v14 = (v12 + 2 * v9);
  sub_1D5FCEDAC(a2, v7);
  *v14 = 0x726F6C6F63;
  v14[1] = 0xE500000000000000;
  sub_1D6A5ADE8(v7, v14 + v8[7]);
  v15 = (v12 + 3 * v9);
  sub_1D6E3EEF4(a2, v7);
  *v15 = 0x676E69727473;
  v15[1] = 0xE600000000000000;
  sub_1D6A5ADE8(v7, v15 + v8[7]);
  *v18 = v11;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6A5ADE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatJson();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D6A5AE4C(__int128 *a1, void *a2)
{
  sub_1D6A5B1C8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7284F00;
  v5 = a1[7];
  v46 = a1[6];
  v47 = v5;
  v48 = a1[8];
  v49 = *(a1 + 18);
  v6 = a1[3];
  v42 = a1[2];
  v43 = v6;
  v7 = a1[5];
  v44 = a1[4];
  v45 = v7;
  v8 = a1[1];
  v40 = *a1;
  v41 = v8;
  sub_1D6C807D0(&v40, a2, v50);
  *(v4 + 56) = &type metadata for FormatInspectionGroup;
  *(v4 + 64) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(v4 + 32) = v9;
  v10 = v50[1];
  *(v9 + 16) = v50[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v51;
  v11 = a1[7];
  v46 = a1[6];
  v47 = v11;
  v48 = a1[8];
  v49 = *(a1 + 18);
  v12 = a1[3];
  v42 = a1[2];
  v43 = v12;
  v13 = a1[5];
  v44 = a1[4];
  v45 = v13;
  v14 = a1[1];
  v40 = *a1;
  v41 = v14;
  sub_1D5FCF5FC(a2, v52);
  *(v4 + 96) = &type metadata for FormatInspectionGroup;
  *(v4 + 104) = &off_1F518B2C0;
  v15 = swift_allocObject();
  *(v4 + 72) = v15;
  v16 = v52[1];
  *(v15 + 16) = v52[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v53;
  v17 = a1[7];
  v46 = a1[6];
  v47 = v17;
  v48 = a1[8];
  v49 = *(a1 + 18);
  v18 = a1[3];
  v42 = a1[2];
  v43 = v18;
  v19 = a1[5];
  v44 = a1[4];
  v45 = v19;
  v20 = a1[1];
  v40 = *a1;
  v41 = v20;
  sub_1D67F97D8(&v40, a2, v54);
  *(v4 + 136) = &type metadata for FormatInspectionGroup;
  *(v4 + 144) = &off_1F518B2C0;
  v21 = swift_allocObject();
  *(v4 + 112) = v21;
  v22 = v54[1];
  *(v21 + 16) = v54[0];
  *(v21 + 32) = v22;
  *(v21 + 48) = v55;
  v23 = a1[7];
  v46 = a1[6];
  v47 = v23;
  v48 = a1[8];
  v49 = *(a1 + 18);
  v24 = a1[3];
  v42 = a1[2];
  v43 = v24;
  v25 = a1[5];
  v44 = a1[4];
  v45 = v25;
  v26 = a1[1];
  v40 = *a1;
  v41 = v26;
  sub_1D5EA64E0(a2, v56);
  *(v4 + 176) = &type metadata for FormatInspectionGroup;
  *(v4 + 184) = &off_1F518B2C0;
  v27 = swift_allocObject();
  *(v4 + 152) = v27;
  v28 = v56[1];
  *(v27 + 16) = v56[0];
  *(v27 + 32) = v28;
  *(v27 + 48) = v57;
  v29 = a1[7];
  v46 = a1[6];
  v47 = v29;
  v48 = a1[8];
  v49 = *(a1 + 18);
  v30 = a1[3];
  v42 = a1[2];
  v43 = v30;
  v31 = a1[5];
  v44 = a1[4];
  v45 = v31;
  v32 = a1[1];
  v40 = *a1;
  v41 = v32;
  sub_1D6E422AC(a2, v58);
  *(v4 + 216) = &type metadata for FormatInspectionGroup;
  *(v4 + 224) = &off_1F518B2C0;
  v33 = swift_allocObject();
  *(v4 + 192) = v33;
  v34 = v58[1];
  *(v33 + 16) = v58[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v59;
  sub_1D613A124(a2, &v40);
  *(v4 + 256) = &type metadata for FormatInspectionGroup;
  *(v4 + 264) = &off_1F518B2C0;
  v35 = swift_allocObject();
  *(v4 + 232) = v35;
  v36 = v41;
  *(v35 + 16) = v40;
  *(v35 + 32) = v36;
  *(v35 + 48) = v42;

  sub_1D6986168(v37);
  v38 = sub_1D7073500(v4);

  return v38;
}

void sub_1D6A5B1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6A5B254()
{
  v1 = v0;
  v102 = *MEMORY[0x1E69E9840];
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  v94 = v2;
  v95 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v93 = &v93 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v93 - v12;
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = &v93 - v17;
  v96 = [objc_msgSend(*(v0 + 56) appConfiguration];
  swift_unknownObjectRelease();
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725C42C();
  __swift_project_value_buffer(v19, qword_1EDFFCFA8);
  v20 = sub_1D725C3FC();
  v21 = sub_1D7262EDC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D5B42000, v20, v21, "Checking for auto enabling notifications eligibility...", v22, 2u);
    MEMORY[0x1DA6FD500](v22, -1, -1);
  }

  v23 = [*(v1 + 64) cachedSubscription];
  if (objc_getAssociatedObject(v23, v23 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v100 = v98;
  v101 = v99;
  if (!*(&v99 + 1))
  {
    sub_1D5B88C40(&v100, sub_1D5BE1404);
    goto LABEL_13;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v24 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v24 = v97;
  v25 = [v97 integerValue];
  if (v25 == -1)
  {

    goto LABEL_26;
  }

  v26 = v25;
LABEL_14:
  if (objc_getAssociatedObject(v23, ~v26))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v100 = v98;
  v101 = v99;
  if (!*(&v99 + 1))
  {
    sub_1D5B88C40(&v100, sub_1D5BE1404);
LABEL_22:

    if (v26)
    {
      goto LABEL_26;
    }

LABEL_23:
    v29 = sub_1D725C3FC();
    v30 = sub_1D7262EDC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Not a bundle subscriber. Not eligible for auto enabling notifications.";
LABEL_29:
      _os_log_impl(&dword_1D5B42000, v29, v30, v32, v31, 2u);
      MEMORY[0x1DA6FD500](v31, -1, -1);
    }

LABEL_30:

    return;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v27 = v97;
  v28 = [v27 integerValue];

  if (((v28 ^ v26) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  v33 = *(v1 + 80);
  if ([v33 puzzleNotificationsEnabled])
  {
    v29 = sub_1D725C3FC();
    v30 = sub_1D7262EDC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Puzzle notifications already enabled. Skipping auto-enabling.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v34 = [v33 puzzleNotificationsLastChangedDate];
  if (v34)
  {
    v35 = v34;
    sub_1D72588BC();

    v36 = v94;
    v37 = v95;
    (*(v95 + 16))(v13, v18, v94);
    v38 = sub_1D725C3FC();
    v39 = sub_1D7262EDC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v100 = v41;
      *v40 = 136315138;
      sub_1D5C44ED8();
      v42 = sub_1D72644BC();
      v44 = v43;
      v93 = v18;
      v45 = *(v37 + 8);
      v45(v13, v36);
      v46 = sub_1D5BC5100(v42, v44, &v100);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_1D5B42000, v38, v39, "Puzzle notifications was set by user on [%s]. Not eligible for auto enabling notifications.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1DA6FD500](v41, -1, -1);
      MEMORY[0x1DA6FD500](v40, -1, -1);

      v45(v93, v36);
    }

    else
    {

      v65 = *(v37 + 8);
      v65(v13, v36);
      v65(v18, v36);
    }
  }

  else
  {
    v47 = v96;
    [v96 autoEnableNotificationPlayTimeInterval];
    v48 = v93;
    sub_1D725886C();
    v49 = *(v1 + 40);
    v50 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v49);
    v51 = *((*(v50 + 64))(v48, v49, v50) + 16);

    if (v51 >= [v47 autoEnableNotificationMinimumPlayCount])
    {
      v66 = *(v1 + 72);
      *&v100 = 0;
      if ([v66 setPuzzleNotificationsEnabled:1 userTriggered:0 error:&v100])
      {
        v67 = v100;
        v68 = sub_1D725C3FC();
        v69 = sub_1D7262EDC();
        v70 = os_log_type_enabled(v68, v69);
        v71 = v94;
        v72 = v95;
        if (v70)
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_1D5B42000, v68, v69, "Completed auto enabling notifications for puzzles.", v73, 2u);
          MEMORY[0x1DA6FD500](v73, -1, -1);
        }

        else
        {
        }

        (*(v72 + 8))(v48, v71);
      }

      else
      {
        v81 = v100;
        v82 = sub_1D725829C();

        swift_willThrow();
        v83 = v82;
        v84 = sub_1D725C3FC();
        v85 = sub_1D7262EDC();

        v86 = os_log_type_enabled(v84, v85);
        v87 = v94;
        v88 = v95;
        if (v86)
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *v89 = 138412290;
          v91 = v82;
          v92 = _swift_stdlib_bridgeErrorToNSError();
          *(v89 + 4) = v92;
          *v90 = v92;
          _os_log_impl(&dword_1D5B42000, v84, v85, "Failed to auto enable notifications. Error = %@.", v89, 0xCu);
          sub_1D5B88C40(v90, sub_1D5F156F4);
          MEMORY[0x1DA6FD500](v90, -1, -1);
          MEMORY[0x1DA6FD500](v89, -1, -1);
        }

        else
        {
        }

        (*(v88 + 8))(v48, v87);
      }
    }

    else
    {
      v52 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
      [v52 setUnitsStyle:0];
      v53 = sub_1D725881C();
      sub_1D72588CC();
      v54 = sub_1D725881C();
      v55 = *(v95 + 8);
      v95 += 8;
      v55(v6, v94);
      v56 = [v52 localizedStringForDate:v53 relativeToDate:v54];

      v57 = sub_1D726207C();
      v59 = v58;

      v60 = sub_1D725C3FC();
      v61 = sub_1D7262EDC();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v100 = v63;
        *v62 = 136315138;
        v64 = sub_1D5BC5100(v57, v59, &v100);

        *(v62 + 4) = v64;
        _os_log_impl(&dword_1D5B42000, v60, v61, "Using a time window starting %s for auto enabling notifications.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1DA6FD500](v63, -1, -1);
        MEMORY[0x1DA6FD500](v62, -1, -1);
      }

      else
      {
      }

      v74 = v96;
      v75 = sub_1D725C3FC();
      v76 = sub_1D7262EDC();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v93;
      if (v77)
      {
        v79 = swift_slowAlloc();
        *v79 = 134218240;
        *(v79 + 4) = v51;
        *(v79 + 12) = 2048;
        *(v79 + 14) = [v74 autoEnableNotificationMinimumPlayCount];

        _os_log_impl(&dword_1D5B42000, v75, v76, "Played puzzles count [%ld] has not reached min [%ld]. Not eligible for auto enabling notifications.", v79, 0x16u);
        MEMORY[0x1DA6FD500](v79, -1, -1);
        v80 = v74;
      }

      else
      {

        v80 = v52;
        v75 = v74;
        v52 = v74;
      }

      v55(v78, v94);
    }
  }
}