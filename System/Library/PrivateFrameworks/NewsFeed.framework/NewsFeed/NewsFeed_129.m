uint64_t FormatLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatLayoutAttributes.itemIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t FormatLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t FormatLayoutAttributes.__allocating_init(frame:identifier:itemIdentifier:layoutIdentifier:nodeIdentifier:layoutValues:accessibilityValues:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, char *a15)
{
  result = swift_allocObject();
  v26 = *a15;
  *(result + 16) = a9;
  *(result + 24) = a10;
  *(result + 32) = a11;
  *(result + 40) = a12;
  *(result + 48) = a1;
  *(result + 56) = a2;
  *(result + 64) = a3;
  *(result + 72) = a4;
  *(result + 80) = a5;
  *(result + 88) = a6;
  *(result + 96) = a7;
  *(result + 104) = a8;
  *(result + 112) = a13;
  *(result + 120) = a14;
  *(result + 128) = v26;
  return result;
}

uint64_t FormatLayoutAttributes.init(frame:identifier:itemIdentifier:layoutIdentifier:nodeIdentifier:layoutValues:accessibilityValues:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, char *a15)
{
  v16 = *a15;
  *(v15 + 16) = a9;
  *(v15 + 24) = a10;
  *(v15 + 32) = a11;
  *(v15 + 40) = a12;
  *(v15 + 48) = a1;
  *(v15 + 56) = a2;
  *(v15 + 64) = a3;
  *(v15 + 72) = a4;
  *(v15 + 80) = a5;
  *(v15 + 88) = a6;
  *(v15 + 96) = a7;
  *(v15 + 104) = a8;
  *(v15 + 112) = a13;
  *(v15 + 120) = a14;
  *(v15 + 128) = v16;
  return v15;
}

unint64_t sub_1D6721984()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x6E65644965646F6ELL;
    if (v1 != 4)
    {
      v6 = 0x615674756F79616CLL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D617266;
    v3 = 0x6E6564496D657469;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x696669746E656469;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D6721AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6722C54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6721AD4(uint64_t a1)
{
  v2 = sub_1D6721F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6721B10(uint64_t a1)
{
  v2 = sub_1D6721F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayoutAttributes.deinit()
{

  return v0;
}

uint64_t FormatLayoutAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D672270C(0, &qword_1EC88A6A8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6721F50();
  sub_1D7264B5C();
  v11 = *(v3 + 32);
  v15 = *(v3 + 16);
  v16 = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6722F00(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D72643FC();
    LOBYTE(v15) = 2;
    sub_1D726437C();
    LOBYTE(v15) = 3;
    sub_1D72643FC();
    LOBYTE(v15) = 4;
    sub_1D72643FC();
    *&v15 = *(v3 + 112);
    v14 = 5;
    sub_1D6721FA4();
    sub_1D6722770(&qword_1EC88A6B8, sub_1D6721FF4);
    sub_1D726443C();
    *&v15 = *(v3 + 120);
    v14 = 6;
    sub_1D6722048();
    sub_1D67220A0(&qword_1EC88A6C0, &qword_1EDF20A70);
    sub_1D726443C();
    LOBYTE(v15) = *(v3 + 128);
    v14 = 7;
    sub_1D6327494();
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6721F50()
{
  result = qword_1EC88A6B0;
  if (!qword_1EC88A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6B0);
  }

  return result;
}

void sub_1D6721FA4()
{
  if (!qword_1EDF04F98)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04F98);
    }
  }
}

unint64_t sub_1D6721FF4()
{
  result = qword_1EDF2F490;
  if (!qword_1EDF2F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F490);
  }

  return result;
}

void sub_1D6722048()
{
  if (!qword_1EDF1AFA8)
  {
    type metadata accessor for FormatAccessibilityLayoutValue();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AFA8);
    }
  }
}

uint64_t sub_1D67220A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D6722048();
    sub_1D6722F00(a2, 255, type metadata accessor for FormatAccessibilityLayoutValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatLayoutAttributes.init(from:)(void *a1)
{
  sub_1D672270C(0, &qword_1EC88A6C8, MEMORY[0x1E69E6F48]);
  v21 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6721F50();
  v22 = v8;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v18 = a1;
  }

  else
  {
    v9 = v5;
    type metadata accessor for CGRect(0);
    v25 = 0;
    sub_1D6722F00(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    v10 = v21;
    sub_1D726431C();
    v11 = v24;
    *(v1 + 16) = v23;
    *(v1 + 32) = v11;
    LOBYTE(v23) = 1;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    LOBYTE(v23) = 2;
    *(v1 + 64) = sub_1D726422C();
    *(v1 + 72) = v13;
    LOBYTE(v23) = 3;
    *(v1 + 80) = sub_1D72642BC();
    *(v1 + 88) = v14;
    LOBYTE(v23) = 4;
    v15 = sub_1D72642BC();
    v20 = a1;
    *(v1 + 96) = v15;
    *(v1 + 104) = v16;
    sub_1D6721FA4();
    v25 = 5;
    sub_1D6722770(&qword_1EDF04F90, sub_1D67227DC);
    sub_1D726431C();
    *(v1 + 112) = v23;
    sub_1D6722048();
    v25 = 6;
    sub_1D67220A0(&qword_1EC88A6D0, &qword_1EDF20A68);
    sub_1D726431C();
    *(v1 + 120) = v23;
    v25 = 7;
    sub_1D5CA5BD0();
    sub_1D726427C();
    (*(v9 + 8))(v22, v10);
    *(v1 + 128) = v23;
    v18 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v1;
}

void sub_1D672270C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6721F50();
    v7 = a3(a1, &type metadata for FormatLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6722770(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6721FA4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67227DC()
{
  result = qword_1EDF2F488;
  if (!qword_1EDF2F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F488);
  }

  return result;
}

uint64_t sub_1D6722984@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6722A00(uint64_t a1, uint64_t a2)
{
  sub_1D6722F00(&qword_1EDF28608, a2, type metadata accessor for FormatLayoutAttributes);

  return sub_1D725A24C();
}

uint64_t sub_1D6722AAC@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = FormatLayoutAttributes.reposition(frame:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

unint64_t sub_1D6722B50()
{
  result = qword_1EC88A6D8;
  if (!qword_1EC88A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6D8);
  }

  return result;
}

unint64_t sub_1D6722BA8()
{
  result = qword_1EC88A6E0;
  if (!qword_1EC88A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6E0);
  }

  return result;
}

unint64_t sub_1D6722C00()
{
  result = qword_1EC88A6E8;
  if (!qword_1EC88A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6E8);
  }

  return result;
}

uint64_t sub_1D6722C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x615674756F79616CLL && a2 == 0xEC0000007365756CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73D2F00 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6722F00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id FormatHeadlineBinding.Image.image(from:imageContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v10 = MEMORY[0x1EEE9AC00](v6 - 8, v9).n128_u64[0];
  v11 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *v3;
  if (v12 <= 1)
  {
    if (!*v3)
    {
      [*(a1 + 40) thumbnailFocalFrame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = *(a2 + 96);
      v65 = *(a2 + 80);
      v66 = v29;
      v67 = *(a2 + 112);
      v30 = *(a2 + 64);
      v63 = *(a2 + 48);
      v68 = *(a2 + 128);
      v64 = v30;
      sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
      v31 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_1D5EC9594(v11, v33 + v31);
      *(v33 + v32) = a2;
      LOBYTE(v59) = 0;
      *&v54[39] = v65;
      *&v54[55] = v66;
      *&v54[71] = v67;
      v54[87] = v68;
      *&v54[7] = v63;
      *&v54[23] = v64;
      v34 = swift_allocObject();
      *(v34 + 16) = v22;
      *(v34 + 24) = v24;
      *(v34 + 32) = v26;
      *(v34 + 40) = v28;
      *(v34 + 48) = 0;
      v35 = *&v54[48];
      *(v34 + 81) = *&v54[32];
      *(v34 + 97) = v35;
      *(v34 + 113) = *&v54[64];
      *(v34 + 129) = *&v54[80];
      v36 = *&v54[16];
      *(v34 + 49) = *v54;
      *(v34 + 65) = v36;
      *(v34 + 144) = sub_1D6723CCC;
      *(v34 + 152) = v33;
      *v53 = v34 | 0x2000000000000000;
      sub_1D6723B3C(&v63, &v59, sub_1D671E290);
    }

    v48 = *(a2 + 96);
    v65 = *(a2 + 80);
    v66 = v48;
    v67 = *(a2 + 112);
    v68 = *(a2 + 128);
    v49 = *(a2 + 64);
    v63 = *(a2 + 48);
    v64 = v49;
    sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
    v50 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = swift_allocObject();
    sub_1D5EC9594(&v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v50);
    LOBYTE(v59) = 1;
    *&v55[39] = v65;
    *&v55[55] = v66;
    *&v55[71] = v67;
    v55[87] = v68;
    *&v55[7] = v63;
    *&v55[23] = v64;
    v17 = swift_allocObject();
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 81) = *&v55[32];
    v51 = *&v55[64];
    *(v17 + 97) = *&v55[48];
    *(v17 + 113) = v51;
    v52 = *&v55[16];
    *(v17 + 49) = *v55;
    *(v17 + 48) = 1;
    *(v17 + 129) = *&v55[80];
    *(v17 + 65) = v52;
    v20 = sub_1D6723C44;
    goto LABEL_11;
  }

  if (v12 != 2)
  {
    v13 = *(a2 + 96);
    v65 = *(a2 + 80);
    v66 = v13;
    v67 = *(a2 + 112);
    v68 = *(a2 + 128);
    v14 = *(a2 + 64);
    v63 = *(a2 + 48);
    v64 = v14;
    if (v12 == 3)
    {
      sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
      v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v16 = swift_allocObject();
      sub_1D5EC9594(&v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
      LOBYTE(v59) = 1;
      *&v58[39] = v65;
      *&v58[55] = v66;
      *&v58[71] = v67;
      v58[87] = v68;
      *&v58[7] = v63;
      *&v58[23] = v64;
      v17 = swift_allocObject();
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      v18 = *&v58[48];
      *(v17 + 81) = *&v58[32];
      *(v17 + 97) = v18;
      *(v17 + 113) = *&v58[64];
      v19 = *&v58[16];
      *(v17 + 49) = *v58;
      *(v17 + 48) = 1;
      *(v17 + 129) = *&v58[80];
      *(v17 + 65) = v19;
      v20 = sub_1D6723BA4;
    }

    else
    {
      sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
      v45 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v16 = swift_allocObject();
      sub_1D5EC9594(&v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v45);
      LOBYTE(v59) = 1;
      *&v62[39] = v65;
      *&v62[55] = v66;
      *&v62[71] = v67;
      v62[87] = v68;
      *&v62[7] = v63;
      *&v62[23] = v64;
      v17 = swift_allocObject();
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      v46 = *&v62[48];
      *(v17 + 81) = *&v62[32];
      *(v17 + 97) = v46;
      *(v17 + 113) = *&v62[64];
      v47 = *&v62[16];
      *(v17 + 49) = *v62;
      *(v17 + 48) = 1;
      *(v17 + 129) = *&v62[80];
      *(v17 + 65) = v47;
      v20 = sub_1D6723B30;
    }

LABEL_11:
    *(v17 + 144) = v20;
    *(v17 + 152) = v16;
    goto LABEL_12;
  }

  result = [*(a1 + 40) videoStillImage];
  if (result)
  {
    v38 = result;
    v60 = sub_1D5C169F4();
    v61 = sub_1D5EECFF8();
    *&v59 = v38;
    v39 = *(a2 + 96);
    v65 = *(a2 + 80);
    v66 = v39;
    v67 = *(a2 + 112);
    v68 = *(a2 + 128);
    v40 = *(a2 + 64);
    v63 = *(a2 + 48);
    v64 = v40;
    v57 = 1;
    *&v56[23] = v40;
    *&v56[7] = v63;
    v56[87] = v68;
    *&v56[71] = v67;
    *&v56[39] = v65;
    *&v56[55] = v39;
    v41 = swift_allocObject();
    sub_1D5B63F14(&v59, v41 + 16);
    v42 = v57;
    v17 = swift_allocObject();
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    v43 = *&v56[48];
    *(v17 + 81) = *&v56[32];
    *(v17 + 97) = v43;
    *(v17 + 113) = *&v56[64];
    v44 = *&v56[16];
    *(v17 + 49) = *v56;
    *(v17 + 48) = v42;
    *(v17 + 129) = *&v56[80];
    *(v17 + 65) = v44;
    *(v17 + 144) = sub_1D6723C3C;
    *(v17 + 152) = v41;
LABEL_12:
    *v53 = v17 | 0x2000000000000000;
    return sub_1D6723B3C(&v63, &v59, sub_1D671E290);
  }

  *v53 = 0xC000000000000000;
  return result;
}

id sub_1D672366C@<X0>(uint64_t a1@<X8>)
{
  result = FCThumbnailForHeadlineMinimumSize();
  if (result)
  {
    v3 = result;
    result = [result thumbnailAssetHandle];
    if (result)
    {
      v4 = result;
      v5 = sub_1D5C169F4();
      v15 = v5;
      v6 = sub_1D5EECFF8();
      v16 = v6;
      *&v14 = v4;
      v7 = FCCachedThumbnailForHeadline();
      if (v7)
      {
        v8 = v7;
        v9 = [v7 thumbnailAssetHandle];

        if (v9)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v9)
        {
          v11 = v6;
        }

        else
        {
          v11 = 0;
        }

        if (v9)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {

        v10 = 0;
        v11 = 0;
        v12 = 0;
      }

      *(a1 + 24) = &type metadata for FormatAssetHandle;
      *(a1 + 32) = sub_1D6723F3C();
      v13 = swift_allocObject();
      *a1 = v13;
      result = sub_1D5B63F14(&v14, (v13 + 2));
      v13[7] = v12;
      v13[8] = 0;
      v13[9] = 0;
      v13[10] = v10;
      v13[11] = v11;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1D67237C0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 2)
  {
    v6 = [*(a3 + 40) sourceChannel];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = [v6 theme];
    swift_unknownObjectRelease();
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = [v7 bannerImageForMask];
    swift_unknownObjectRelease();
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = [a1 userInterfaceStyle];
    if (v9 >= 2)
    {
      if (v9 == 2)
      {
        v12 = [*(a3 + 40) sourceChannel];
        if (!v12)
        {
          goto LABEL_22;
        }

        v13 = [v12 theme];
        swift_unknownObjectRelease();
        if (!v13)
        {
          goto LABEL_22;
        }

        v8 = [v13 bannerImageForMask];
        swift_unknownObjectRelease();
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v14 = [*(a3 + 40) sourceChannel];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = [v14 theme];
        swift_unknownObjectRelease();
        if (!v15)
        {
          goto LABEL_22;
        }

        v8 = [v15 bannerImageForWhiteBackground];
        swift_unknownObjectRelease();
        if (!v8)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = [*(a3 + 40) sourceChannel];
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = [v10 theme];
      swift_unknownObjectRelease();
      if (!v11)
      {
        goto LABEL_22;
      }

      v8 = [v11 bannerImageForWhiteBackground];
      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_22;
      }
    }
  }

  v16 = [v8 assetHandle];

  if (v16)
  {
    *(a4 + 24) = sub_1D5C169F4();
    *(a4 + 32) = sub_1D5EECFF8();
    *a4 = v16;
    return result;
  }

LABEL_22:
  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

double sub_1D6723A50@<D0>(uint64_t a1@<X2>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = [*(a1 + 40) sourceChannel];
  if (v5 && (v6 = [v5 theme], swift_unknownObjectRelease(), v6) && (v7 = objc_msgSend(v6, *a2), swift_unknownObjectRelease(), v7) && (v8 = objc_msgSend(v7, sel_assetHandle), v7, v8))
  {
    *(a3 + 24) = sub_1D5C169F4();
    *(a3 + 32) = sub_1D5EECFF8();
    *a3 = v8;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D6723B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D6723C44@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FeedHeadline(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1D67237C0(a1, a2, v8, a3);
}

id sub_1D6723CCC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FeedHeadline(0);

  return sub_1D672366C(a1);
}

uint64_t FormatHeadlineBinding.Image.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6723E0C()
{
  result = qword_1EC88A6F0;
  if (!qword_1EC88A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6F0);
  }

  return result;
}

unint64_t sub_1D6723E60(uint64_t a1)
{
  result = sub_1D6723E88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6723E88()
{
  result = qword_1EC88A6F8;
  if (!qword_1EC88A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6F8);
  }

  return result;
}

unint64_t sub_1D6723EDC(void *a1)
{
  a1[1] = sub_1D5CBE610();
  a1[2] = sub_1D66FC830();
  result = sub_1D6723E0C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6723F3C()
{
  result = qword_1EDF2F8F8;
  if (!qword_1EDF2F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8F8);
  }

  return result;
}

id FeedScoredIssue.init(issue:scoreProfile:)@<X0>(id result@<X0>, id a2@<X1>, void *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    a2 = result;
  }

  *a3 = v3;
  a3[1] = a2;
  return result;
}

id FeedScoredIssue.item.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v5 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v5;
  a1[2] = 0;
  v3 = v2;

  return v5;
}

uint64_t FeedScoredIssue.identifier.getter()
{
  v1 = [*v0 itemID];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedScoredIssue.publisherID.getter()
{
  v1 = [*v0 publisherID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

uint64_t FeedScoredIssue.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D6724218@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D67242BC()
{
  v1 = [*v0 itemID];
  v2 = sub_1D726207C();

  return v2;
}

id sub_1D6724380@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = 0;
  v4 = v2;
  return v3;
}

id sub_1D67243B8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *a2 = *a1;
  a2[1] = v3;
  v5 = v4;
  return v3;
}

uint64_t _s8NewsFeed0B11ScoredIssueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = [*a1 itemID];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = [v3 itemID];
  v10 = sub_1D726207C();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D5F1574C();
  v16 = v2;
  v17 = v4;
  v18 = sub_1D726370C();

  return v18 & 1;
}

unint64_t sub_1D672450C(uint64_t a1)
{
  result = sub_1D6724534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6724534()
{
  result = qword_1EDF394E0[0];
  if (!qword_1EDF394E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF394E0);
  }

  return result;
}

unint64_t sub_1D6724598@<X0>(void *a1@<X8>)
{
  v75 = a1;
  v77 = type metadata accessor for FeedItemAuxiliaryItem();
  v2 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v3);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v84 = &v72 - v11;
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[5];
  v73 = v1[4];
  v74 = v12;
  v15 = *(v13 + 16);
  v83 = v13;
  v79 = v2;
  v76 = v14;
  if (v15)
  {
    v85 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v15, 0);
    v16 = v85;
    v17 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_1D6725750(v17, v8, type metadata accessor for FeedItemAuxiliaryItem);
      v19 = FeedItem.identifier.getter();
      v21 = v20;
      sub_1D67257B8(v8, type metadata accessor for FeedItemAuxiliaryItem);
      v85 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        v16 = v85;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v17 += v18;
      --v15;
    }

    while (v15);
    v14 = v76;
    v13 = v83;
    v2 = v79;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v25 = sub_1D5B86020(v16);

  v82 = *(v13 + 16);
  if (!v82)
  {
    v28 = MEMORY[0x1E69E7CC8];
    v49 = MEMORY[0x1E69E7CC8];
LABEL_40:
    result = sub_1D5BCAE1C(MEMORY[0x1E69E7CC0]);
    v70 = v74;
    v69 = v75;
    *v75 = v73;
    v69[1] = v14;
    v69[2] = v25;
    v69[3] = v28;
    v69[4] = v49;
    v69[5] = result;
    v71 = MEMORY[0x1E69E7CD0];
    v69[6] = v70;
    v69[7] = v71;
    return result;
  }

  v72 = v25;
  v26 = 0;
  v78 = *(v77 + 24);
  v27 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v28 = MEMORY[0x1E69E7CC8];
  while (v26 < *(v13 + 16))
  {
    v80 = *(v2 + 72);
    v29 = v84;
    sub_1D6725750(v27 + v80 * v26, v84, type metadata accessor for FeedItemAuxiliaryItem);
    v30 = FeedItem.identifier.getter();
    v32 = v31;
    v33 = *(v29 + v78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v28;
    v36 = sub_1D5B69D90(v30, v32);
    v37 = v28[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_42;
    }

    v40 = v35;
    if (v28[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v35 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1D6D804FC();
        if ((v40 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1D6D69E1C(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_1D5B69D90(v30, v32);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_47;
      }

      v36 = v41;
      if ((v40 & 1) == 0)
      {
LABEL_20:
        v43 = v84;
        v28 = v85;
        v85[(v36 >> 6) + 8] |= 1 << v36;
        v44 = (v28[6] + 16 * v36);
        *v44 = v30;
        v44[1] = v32;
        *(v28[7] + 8 * v36) = v33;
        sub_1D67257B8(v43, type metadata accessor for FeedItemAuxiliaryItem);
        v45 = v28[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_45;
        }

        v28[2] = v47;
        goto LABEL_11;
      }
    }

    v28 = v85;
    *(v85[7] + 8 * v36) = v33;

    sub_1D67257B8(v84, type metadata accessor for FeedItemAuxiliaryItem);
LABEL_11:
    ++v26;
    v13 = v83;
    v2 = v79;
    if (v82 == v26)
    {
      v48 = 0;
      v84 = *(v77 + 20);
      v49 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v48 >= *(v13 + 16))
        {
          goto LABEL_43;
        }

        v51 = v81;
        sub_1D6725750(v27, v81, type metadata accessor for FeedItemAuxiliaryItem);
        v52 = FeedItem.identifier.getter();
        v54 = v53;
        v55 = *(v51 + v84);

        v56 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v49;
        v57 = sub_1D5B69D90(v52, v54);
        v59 = v49[2];
        v60 = (v58 & 1) == 0;
        v46 = __OFADD__(v59, v60);
        v61 = v59 + v60;
        if (v46)
        {
          goto LABEL_44;
        }

        v62 = v58;
        if (v49[3] < v61)
        {
          break;
        }

        if (v56)
        {
          goto LABEL_33;
        }

        v67 = v57;
        sub_1D6D804E4();
        v57 = v67;
        if ((v62 & 1) == 0)
        {
LABEL_34:
          v49 = v85;
          v85[(v57 >> 6) + 8] |= 1 << v57;
          v64 = (v49[6] + 16 * v57);
          *v64 = v52;
          v64[1] = v54;
          *(v49[7] + 8 * v57) = v55;
          sub_1D67257B8(v81, type metadata accessor for FeedItemAuxiliaryItem);
          v65 = v49[2];
          v46 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v46)
          {
            goto LABEL_46;
          }

          v49[2] = v66;
          goto LABEL_26;
        }

LABEL_25:
        v50 = v57;

        v49 = v85;
        *(v85[7] + 8 * v50) = v55;

        sub_1D67257B8(v81, type metadata accessor for FeedItemAuxiliaryItem);
LABEL_26:
        ++v48;
        v27 += v80;
        v13 = v83;
        if (v82 == v48)
        {
          v14 = v76;
          v25 = v72;
          goto LABEL_40;
        }
      }

      sub_1D6D69E04(v61, v56);
      v57 = sub_1D5B69D90(v52, v54);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_47;
      }

LABEL_33:
      if ((v62 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t FeedItemAuxiliary.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedItemAuxiliary.slotIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *sub_1D6724C64(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FormatOption();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v94 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v93 = &v81 - v9;
  v10 = type metadata accessor for FormatInspectionItem(0);
  v95 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedItemAuxiliaryItem();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v88 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v81 - v26;
  if (a2[1])
  {
    v92 = v15;
    v83 = v4;
    v87 = v25;
    v28 = a2[2];
    v29 = a2[3];
    v30 = MEMORY[0x1E69E6F90];
    sub_1D6048F4C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v89 = xmmword_1D7273AE0;
    v86 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D6048F4C(0, &qword_1EC880490, sub_1D5EA74B8, v30);
    v32 = *(v20 + 72);
    v33 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v97 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7270C10;
    v85 = v34;
    v96 = v33;
    v90 = (v34 + v33);
    sub_1D6048F4C(0, &qword_1EC8803C0, sub_1D5E4F38C, v30);
    v84 = v35;
    v36 = swift_initStackObject();
    v37 = v36;
    *(v36 + 16) = v89;
    v38 = *(v28 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    v98 = v10;
    if (v38)
    {
      v81 = v36;
      v82 = v29;
      *&v107[0] = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v38, 0);
      v39 = *&v107[0];
      v40 = v28 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v92 = *(v92 + 72);
      v41 = (v95 + 56);
      v91 = xmmword_1D72E27B0;
      do
      {
        sub_1D6725750(v40, v18, type metadata accessor for FeedItemAuxiliaryItem);
        *(&v105 + 1) = type metadata accessor for FeedItem(0);
        *&v106[0] = sub_1D67256F8();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
        sub_1D6725750(v18, boxed_opaque_existential_1, type metadata accessor for FeedItem);
        *(v106 + 8) = 0u;
        *(&v106[1] + 8) = 0u;
        *(&v106[2] + 8) = 0u;
        BYTE8(v106[3]) = 1;
        sub_1D67257B8(v18, type metadata accessor for FeedItemAuxiliaryItem);
        *(v103 + 9) = *(&v106[2] + 9);
        v103[0] = v106[2];
        v101 = v106[0];
        v102 = v106[1];
        v99 = v104;
        v100 = v105;
        v43 = *(v10 + 24);
        if (*(&v105 + 1))
        {
          sub_1D6725818(&v99, &v13[v43]);
          v44 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          v45 = *(*(v44 - 8) + 56);
          v46 = v44;
          v10 = v98;
          v45(&v13[v43], 0, 1, v46);
          *v13 = v91;
          *(v13 + 2) = 0;
          *(v13 + 3) = 0;
          v47 = &v13[*(v10 + 28)];
          *v47 = 0;
          *(v47 + 1) = 0;
          v47[16] = -1;
          sub_1D6725874(&v99);
        }

        else
        {
          v48 = type metadata accessor for FormatInspectionItem.Value(0);
          (*(*(v48 - 8) + 56))(&v13[v43], 1, 1, v48);
          *v13 = v91;
          *(v13 + 2) = 0;
          *(v13 + 3) = 0;
          v49 = &v13[*(v10 + 28)];
          *v49 = 0;
          *(v49 + 1) = 0;
          v49[16] = -1;
        }

        sub_1D5CED910(v13, v27, type metadata accessor for FormatInspectionItem);
        (*v41)(v27, 0, 1, v10);
        *&v107[0] = v39;
        v51 = *(v39 + 16);
        v50 = *(v39 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1D69972A4(v50 > 1, v51 + 1, 1);
          v39 = *&v107[0];
        }

        *(v39 + 16) = v51 + 1;
        sub_1D5CED910(v27, v39 + v96 + v51 * v97, sub_1D5EA74B8);
        v40 += v92;
        --v38;
        v10 = v98;
      }

      while (v38);
      v37 = v81;
      v29 = v82;
    }

    sub_1D6795150(0x736D657449, 0xE500000000000000, 0, 0, v39, v107);

    v37[7] = &type metadata for FormatInspectionGroup;
    v37[8] = &off_1F518B2C0;
    v52 = swift_allocObject();
    v37[4] = v52;
    *(v52 + 48) = v108;
    v53 = v107[1];
    *(v52 + 16) = v107[0];
    *(v52 + 32) = v53;
    v54 = sub_1D5F62BFC(v37);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v37 + 4));
    v55 = sub_1D7073500(v54);

    v56 = v90;
    sub_1D711AD20(0x736D657449, 0xE500000000000000, v55, 0, 0, v90);
    v57 = *(v95 + 56);
    v95 += 56;
    v57(v56, 0, 1, v10);
    v58 = swift_initStackObject();
    v59 = v58;
    *(v58 + 16) = v89;
    v60 = *(v29 + 16);
    v61 = MEMORY[0x1E69E7CC0];
    if (v60)
    {
      v92 = v58;
      *&v104 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v60, 0);
      v61 = v104;
      v62 = v29 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v63 = *(v83 + 72);
      v64 = v88;
      do
      {
        v65 = v93;
        sub_1D6725750(v62, v93, type metadata accessor for FormatOption);
        v66 = v94;
        sub_1D6725750(v65, v94, type metadata accessor for FormatOption);
        sub_1D68B1FA4(v66, v64);
        sub_1D67257B8(v65, type metadata accessor for FormatOption);
        v57(v64, 0, 1, v98);
        *&v104 = v61;
        v68 = *(v61 + 16);
        v67 = *(v61 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1D69972A4(v67 > 1, v68 + 1, 1);
          v61 = v104;
        }

        *(v61 + 16) = v68 + 1;
        sub_1D5CED910(v64, v61 + v96 + v68 * v97, sub_1D5EA74B8);
        v62 += v63;
        --v60;
      }

      while (v60);
      v10 = v98;
      v59 = v92;
    }

    sub_1D6795150(0x736E6F6974704FLL, 0xE700000000000000, 0, 0, v61, &v99);

    v59[7] = &type metadata for FormatInspectionGroup;
    v59[8] = &off_1F518B2C0;
    v69 = swift_allocObject();
    v59[4] = v69;
    *(v69 + 48) = v101;
    v70 = v100;
    *(v69 + 16) = v99;
    *(v69 + 32) = v70;
    v71 = sub_1D5F62BFC(v59);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v59 + 4));
    v72 = sub_1D7073500(v71);

    v73 = v90;
    v74 = v97;
    sub_1D711AD20(0x736E6F6974704FLL, 0xE700000000000000, v72, 0, 0, &v90[v97]);
    v57(&v73[v74], 0, 1, v10);
    sub_1D6795150(0x7261696C69787541, 0xE900000000000079, 0, 0, v85, &v104);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v75 = v86;
    *(v86 + 56) = &type metadata for FormatInspectionGroup;
    *(v75 + 64) = &off_1F518B2C0;
    v76 = swift_allocObject();
    *(v75 + 32) = v76;
    *(v76 + 48) = *&v106[0];
    v77 = v105;
    *(v76 + 16) = v104;
    *(v76 + 32) = v77;
    v78 = sub_1D7073500(v75);
    swift_setDeallocating();
    sub_1D67257B8(v75 + 32, sub_1D5E4F358);
    return v78;
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v80);
  }
}

unint64_t sub_1D67256F8()
{
  result = qword_1EDF34F30;
  if (!qword_1EDF34F30)
  {
    type metadata accessor for FeedItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34F30);
  }

  return result;
}

uint64_t sub_1D6725750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67257B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D67258D8(void *a1)
{
  sub_1D67260A4(0, &qword_1EC88A700, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6725FE8();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D72643FC();
    v21 = v12;
    v23 = 2;
    sub_1D5F0E598();
    sub_1D5F0E708(&qword_1EC880E68, sub_1D5F0E774);
    sub_1D726443C();
    v22 = 3;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6725B10@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D67260A4(0, &qword_1EDF03820, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6725FE8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v29 = v11;
  LOBYTE(v34[0]) = 1;
  v14 = sub_1D72642BC();
  v30 = v15;
  v28 = v14;
  sub_1D5F0E598();
  LOBYTE(v31) = 2;
  sub_1D5F0E708(&qword_1EDF04A98, sub_1D5F0E5E8);
  sub_1D726431C();
  v27 = v34[0];
  v36 = 3;
  v16 = sub_1D726422C();
  v17 = *(v7 + 8);
  v19 = v18;
  v26 = v18;
  v17(v10, v6);
  v21 = v28;
  v20 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v13;
  v22 = v30;
  *&v32 = v28;
  *(&v32 + 1) = v30;
  *v33 = v16;
  *&v33[8] = v19;
  v23 = v27;
  *&v33[16] = v27;
  v33[24] = 7;
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  a2[2] = *v33;
  *(a2 + 41) = *&v33[9];
  sub_1D672603C(&v31, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v20;
  v34[1] = v13;
  v34[2] = v21;
  v34[3] = v22;
  v34[4] = v16;
  v34[5] = v26;
  v34[6] = v23;
  v35 = 7;
  return sub_1D6726074(v34);
}

uint64_t sub_1D6725E7C()
{
  v1 = 0x6E6F6E6143636D75;
  v2 = 0x53617461446C7275;
  if (*v0 != 2)
  {
    v2 = 0x615465756761656CLL;
  }

  if (*v0)
  {
    v1 = 0x6449746E657665;
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

uint64_t sub_1D6725F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6726220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6725F40(uint64_t a1)
{
  v2 = sub_1D6725FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6725F7C(uint64_t a1)
{
  v2 = sub_1D6725FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6725FE8()
{
  result = qword_1EDF060E8;
  if (!qword_1EDF060E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060E8);
  }

  return result;
}

void sub_1D67260A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6725FE8();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseKeyPlayerItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D672611C()
{
  result = qword_1EC88A708;
  if (!qword_1EC88A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A708);
  }

  return result;
}

unint64_t sub_1D6726174()
{
  result = qword_1EDF060D8;
  if (!qword_1EDF060D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060D8);
  }

  return result;
}

unint64_t sub_1D67261CC()
{
  result = qword_1EDF060E0;
  if (!qword_1EDF060E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060E0);
  }

  return result;
}

uint64_t sub_1D6726220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0064496C616369;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEB00000000644967)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

id EndpointConnectionError.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *EndpointConnectionError.httpResponse.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t EndpointConnectionError.init(underlyingError:httpResponse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EndpointConnectionResponse.data.getter()
{
  v1 = *v0;
  sub_1D5F13DE4(*v0, *(v0 + 8));
  return v1;
}

void *EndpointConnectionResponse.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t EndpointConnectionResponse.init(data:response:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1D672655C()
{
  sub_1D6726A04(0, &qword_1EDF17A10, &type metadata for EndpointConnectionResponse, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D67265FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, SEL *a22)
{
  v37 = sub_1D725844C();
  if (a8)
  {
    sub_1D6726A04(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v35 = sub_1D7261D2C();
  }

  else
  {
    v35 = 0;
  }

  v26 = sub_1D726203C();
  if (a12 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1D725865C();
  }

  if (a14)
  {
    v28 = sub_1D726203C();
  }

  else
  {
    v28 = 0;
  }

  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a1;
  v29[5] = a2;
  aBlock[4] = a20;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D60B572C;
  aBlock[3] = a21;
  v30 = _Block_copy(aBlock);

  LODWORD(v32) = a16;
  *&v31 = a6;
  [a5 *a22];
  _Block_release(v30);
}

void sub_1D67268F4(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, void (*a7)(uint64_t *))
{
  if (a4)
  {
    sub_1D6726A54();
    v10 = swift_allocError();
    *v11 = a4;
    v11[1] = a3;
    v12 = a4;
    v13 = a3;
    v14 = a4;
    a5(v10);

    v15 = a4;
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v21 = a3;
    sub_1D5F13DE4(a1, a2);
    v17 = a3;
    a7(&v19);
    v18 = v21;
    sub_1D5B952E4(v19, v20);
    v15 = v18;
  }
}

void sub_1D6726A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6726A54()
{
  result = qword_1EDF0D660[0];
  if (!qword_1EDF0D660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0D660);
  }

  return result;
}

uint64_t static FormatCodingButtLineCapStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1)
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1D6726B68(_BYTE *a1)
{
  if (*a1)
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t static FormatCodingMiddleBorderInsetStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1 && *a1 == 1)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1D6726C90(_BYTE *a1)
{
  if (*a1 && *a1 == 1)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

BOOL static FormatCodingAllBorderEdgeStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v2 = sub_1D5CD85B0(&unk_1F5118580);
  LOBYTE(a1) = sub_1D5E22398(a1, v2);

  return (a1 & 1) == 0;
}

char *static FormatCodingAllBorderEdgeStrategy.encode(wrappedValue:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1D5E23C8C(*(a1 + 16), 0);
  v4 = sub_1D5E2A8B4(&v6, v3 + 32, v1, a1);

  sub_1D5B87E38();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;

  sub_1D6726FC8(&v6);

  return v6;
}

uint64_t sub_1D6726E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5CD85B0(&unk_1F50F31A8);
  *a1 = result;
  return result;
}

BOOL sub_1D6726EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1D5CD85B0(&unk_1F50F2C80);
  LOBYTE(v1) = sub_1D5E22398(v1, v2);

  return (v1 & 1) == 0;
}

uint64_t sub_1D6726F18@<X0>(void *a1@<X8>)
{

  v4 = sub_1D5E1E368(v2);

  sub_1D6726FC8(&v4);

  *a1 = v4;
  return result;
}

uint64_t sub_1D6726F94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D7015A30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D6726FC8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9F0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D6727034(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D6727034(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D726449C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D6727340(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D672712C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D672712C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = 0x676E696461656CLL;
    v5 = 0x6D6F74746F62;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_6:
    v26 = a3;
    v9 = *(v6 + a3);
    v24 = v8;
    v25 = v7;
    while (1)
    {
      if (v9 <= 1u)
      {
        if (v9)
        {
          v10 = v4;
        }

        else
        {
          v10 = 7368564;
        }

        if (v9)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE300000000000000;
        }
      }

      else if (v9 == 2)
      {
        v11 = 0xE800000000000000;
        v10 = 0x676E696C69617274;
      }

      else
      {
        if (v9 == 3)
        {
          v10 = v5;
        }

        else
        {
          v10 = 7105633;
        }

        if (v9 == 3)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE300000000000000;
        }
      }

      v12 = *(v7 - 1);
      v13 = v5;
      if (v12 == 3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 7105633;
      }

      if (v12 == 3)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      if (v12 == 2)
      {
        v14 = 0x676E696C69617274;
        v15 = 0xE800000000000000;
      }

      v16 = v4;
      if (*(v7 - 1))
      {
        v17 = v4;
      }

      else
      {
        v17 = 7368564;
      }

      if (*(v7 - 1))
      {
        v18 = 0xE700000000000000;
      }

      else
      {
        v18 = 0xE300000000000000;
      }

      if (*(v7 - 1) <= 1u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v14;
      }

      if (*(v7 - 1) <= 1u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v15;
      }

      if (v10 == v19 && v11 == v20)
      {

        v4 = v16;
        v5 = v13;
LABEL_5:
        a3 = v26 + 1;
        v7 = v25 + 1;
        v8 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v21 = sub_1D72646CC();

      v4 = v16;
      v5 = v13;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v7;
      *v7 = *(v7 - 1);
      *--v7 = v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6727340(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v112 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_161:
    v10 = *v112;
    if (!*v112)
    {
      goto LABEL_199;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_163:
      v120 = v9;
      v103 = *(v9 + 2);
      if (v103 >= 2)
      {
        while (1)
        {
          v104 = *v6;
          if (!*v6)
          {
            goto LABEL_197;
          }

          v6 = (v103 - 1);
          v105 = *&v9[16 * v103];
          v106 = *&v9[16 * v103 + 24];
          sub_1D6727CD0((v104 + v105), (v104 + *&v9[16 * v103 + 16]), v104 + v106, v10);
          if (v5)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_186;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D62FF50C(v9);
          }

          if (v103 - 2 >= *(v9 + 2))
          {
            goto LABEL_187;
          }

          v107 = &v9[16 * v103];
          *v107 = v105;
          *(v107 + 1) = v106;
          v120 = v9;
          result = sub_1D62FF480(v103 - 1);
          v9 = v120;
          v103 = *(v120 + 2);
          v6 = a3;
          if (v103 <= 1)
          {
          }
        }
      }
    }

LABEL_193:
    result = sub_1D62FF50C(v9);
    v9 = result;
    goto LABEL_163;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) < v7)
    {
      v12 = *v6;
      v13 = v8;
      v14 = v8 + 1;
      v15 = *(v11 + *v6);
      v16 = v13[*v6];
      v119 = v15;
      v118 = v16;
      result = _s8NewsFeed16FormatBorderEdgeO1loiySbAC_ACtFZ_0(&v119, &v118);
      v115 = result;
      v110 = v13;
      v6 = v13 + 2;
      if ((v13 + 2) < v7)
      {
        v14 = (v7 - 1);
        while (1)
        {
          v20 = *(v6 + v12);
          if (v20 <= 1)
          {
            if (*(v6 + v12))
            {
              v22 = 0x676E696461656CLL;
            }

            else
            {
              v22 = 7368564;
            }

            if (*(v6 + v12))
            {
              v21 = 0xE700000000000000;
            }

            else
            {
              v21 = 0xE300000000000000;
            }
          }

          else if (v20 == 2)
          {
            v21 = 0xE800000000000000;
            v22 = 0x676E696C69617274;
          }

          else if (v20 == 3)
          {
            v21 = 0xE600000000000000;
            v22 = 0x6D6F74746F62;
          }

          else
          {
            v21 = 0xE300000000000000;
            v22 = 7105633;
          }

          v23 = *(v6 + v12 - 1);
          v24 = 0x6D6F74746F62;
          if (v23 == 3)
          {
            v25 = 0xE600000000000000;
          }

          else
          {
            v24 = 7105633;
            v25 = 0xE300000000000000;
          }

          if (v23 == 2)
          {
            v24 = 0x676E696C69617274;
            v25 = 0xE800000000000000;
          }

          if (*(v6 + v12 - 1))
          {
            v26 = 0x676E696461656CLL;
          }

          else
          {
            v26 = 7368564;
          }

          if (*(v6 + v12 - 1))
          {
            v27 = 0xE700000000000000;
          }

          else
          {
            v27 = 0xE300000000000000;
          }

          if (*(v6 + v12 - 1) <= 1u)
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          if (*(v6 + v12 - 1) <= 1u)
          {
            v29 = v27;
          }

          else
          {
            v29 = v25;
          }

          if (v22 == v28 && v21 == v29)
          {

            if (v115)
            {
              v30 = v6 - 1;
              v10 = v110;
              goto LABEL_45;
            }
          }

          else
          {
            v17 = v5;
            v18 = sub_1D72646CC();

            v19 = v115 ^ v18;
            v5 = v17;
            if (v19)
            {
              v14 = v6 - 1;
              break;
            }
          }

          v6 = (v6 + 1);
          if (v7 == v6)
          {
            v6 = v7;
            break;
          }
        }
      }

      v30 = v14;
      v11 = v6;
      v10 = v110;
      if (v115)
      {
LABEL_45:
        if (v6 < v10)
        {
          goto LABEL_190;
        }

        if (v10 <= v30)
        {
          v52 = v6 - 1;
          v53 = v10;
          do
          {
            if (v53 != v52)
            {
              v55 = *a3;
              if (!*a3)
              {
                goto LABEL_196;
              }

              v56 = v53[v55];
              v53[v55] = v52[v55];
              v52[v55] = v56;
            }
          }

          while (++v53 < v52--);
        }

        v11 = v6;
      }
    }

    v6 = a3;
    v31 = a3[1];
    v116 = v11;
    if (v11 < v31)
    {
      v73 = __OFSUB__(v11, v10);
      v32 = v11 - v10;
      if (v73)
      {
        goto LABEL_189;
      }

      if (v32 < a4)
      {
        break;
      }
    }

LABEL_110:
    if (v116 < v10)
    {
      goto LABEL_188;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v58 = *(v9 + 2);
    v57 = *(v9 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      result = sub_1D698BA94((v57 > 1), v58 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v59;
    v60 = &v9[16 * v58];
    *(v60 + 4) = v10;
    *(v60 + 5) = v116;
    v61 = *v112;
    if (!*v112)
    {
      goto LABEL_198;
    }

    if (v58)
    {
      while (1)
      {
        v62 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v63 = *(v9 + 4);
          v64 = *(v9 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_130:
          if (v66)
          {
            goto LABEL_177;
          }

          v79 = &v9[16 * v59];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_180;
          }

          v85 = &v9[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_183;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_184;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v59 - 2;
            }

            goto LABEL_151;
          }

          goto LABEL_144;
        }

        v89 = &v9[16 * v59];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_144:
        if (v84)
        {
          goto LABEL_179;
        }

        v92 = &v9[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_182;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_151:
        v100 = v62 - 1;
        if (v62 - 1 >= v59)
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        if (!*v6)
        {
          goto LABEL_195;
        }

        v101 = *&v9[16 * v100 + 32];
        v10 = *&v9[16 * v62 + 40];
        sub_1D6727CD0((*v6 + v101), (*v6 + *&v9[16 * v62 + 32]), &v10[*v6], v61);
        if (v5)
        {
        }

        if (v10 < v101)
        {
          goto LABEL_173;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D62FF50C(v9);
        }

        if (v100 >= *(v9 + 2))
        {
          goto LABEL_174;
        }

        v102 = &v9[16 * v100];
        *(v102 + 4) = v101;
        *(v102 + 5) = v10;
        v120 = v9;
        result = sub_1D62FF480(v62);
        v9 = v120;
        v59 = *(v120 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v9[16 * v59 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_175;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_176;
      }

      v74 = &v9[16 * v59];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_178;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_181;
      }

      if (v78 >= v70)
      {
        v96 = &v9[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_185;
        }

        if (v65 < v99)
        {
          v62 = v59 - 2;
        }

        goto LABEL_151;
      }

      goto LABEL_130;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v116;
    if (v116 >= v7)
    {
      goto LABEL_161;
    }
  }

  v33 = &v10[a4];
  if (__OFADD__(v10, a4))
  {
    goto LABEL_191;
  }

  if (v33 >= v31)
  {
    v33 = a3[1];
  }

  if (v33 < v10)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v34 = v116;
  if (v116 == v33)
  {
    goto LABEL_110;
  }

  v108 = v5;
  v35 = *a3;
  v36 = (*a3 + v116);
  v111 = v10;
  v37 = &v10[-v116];
  v113 = v33;
LABEL_59:
  v117 = v34;
  v38 = *(v35 + v34);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    if (v38 <= 1u)
    {
      if (v38)
      {
        v41 = 0x676E696461656CLL;
      }

      else
      {
        v41 = 7368564;
      }

      if (v38)
      {
        v42 = 0xE700000000000000;
      }

      else
      {
        v42 = 0xE300000000000000;
      }
    }

    else if (v38 == 2)
    {
      v42 = 0xE800000000000000;
      v41 = 0x676E696C69617274;
    }

    else
    {
      if (v38 == 3)
      {
        v41 = 0x6D6F74746F62;
      }

      else
      {
        v41 = 7105633;
      }

      if (v38 == 3)
      {
        v42 = 0xE600000000000000;
      }

      else
      {
        v42 = 0xE300000000000000;
      }
    }

    v43 = *(v40 - 1);
    if (v43 == 3)
    {
      v44 = 0x6D6F74746F62;
    }

    else
    {
      v44 = 7105633;
    }

    if (v43 == 3)
    {
      v45 = 0xE600000000000000;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    if (v43 == 2)
    {
      v44 = 0x676E696C69617274;
      v45 = 0xE800000000000000;
    }

    if (*(v40 - 1))
    {
      v46 = 0x676E696461656CLL;
    }

    else
    {
      v46 = 7368564;
    }

    if (*(v40 - 1))
    {
      v47 = 0xE700000000000000;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    if (*(v40 - 1) <= 1u)
    {
      v48 = v46;
    }

    else
    {
      v48 = v44;
    }

    if (*(v40 - 1) <= 1u)
    {
      v49 = v47;
    }

    else
    {
      v49 = v45;
    }

    if (v41 == v48 && v42 == v49)
    {

LABEL_58:
      v34 = v117 + 1;
      ++v36;
      --v37;
      if ((v117 + 1) == v113)
      {
        v116 = v113;
        v5 = v108;
        v6 = a3;
        v10 = v111;
        goto LABEL_110;
      }

      goto LABEL_59;
    }

    v50 = sub_1D72646CC();

    if ((v50 & 1) == 0)
    {
      goto LABEL_58;
    }

    if (!v35)
    {
      break;
    }

    v38 = *v40;
    *v40 = *(v40 - 1);
    *--v40 = v38;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
  return result;
}

uint64_t sub_1D6727CD0(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v42 = v7;
LABEL_54:
      v43 = v6;
      v26 = v6 - 1;
      --v5;
      v27 = v10;
      do
      {
        v29 = *--v27;
        v28 = v29;
        v30 = v10;
        if (v29 <= 1)
        {
          if (v28)
          {
            v32 = 0x676E696461656CLL;
          }

          else
          {
            v32 = 7368564;
          }

          if (v28)
          {
            v31 = 0xE700000000000000;
          }

          else
          {
            v31 = 0xE300000000000000;
          }
        }

        else if (v28 == 2)
        {
          v31 = 0xE800000000000000;
          v32 = 0x676E696C69617274;
        }

        else if (v28 == 3)
        {
          v31 = 0xE600000000000000;
          v32 = 0x6D6F74746F62;
        }

        else
        {
          v31 = 0xE300000000000000;
          v32 = 7105633;
        }

        v7 = v26;
        v33 = *v26;
        v34 = 0x6D6F74746F62;
        if (v33 != 3)
        {
          v34 = 7105633;
        }

        v35 = 0xE600000000000000;
        if (v33 != 3)
        {
          v35 = 0xE300000000000000;
        }

        if (v33 == 2)
        {
          v34 = 0x676E696C69617274;
          v35 = 0xE800000000000000;
        }

        if (v33)
        {
          v36 = 0x676E696461656CLL;
        }

        else
        {
          v36 = 7368564;
        }

        if (v33)
        {
          v37 = 0xE700000000000000;
        }

        else
        {
          v37 = 0xE300000000000000;
        }

        if (v33 <= 1)
        {
          v38 = v36;
        }

        else
        {
          v38 = v34;
        }

        if (v33 <= 1)
        {
          v39 = v37;
        }

        else
        {
          v39 = v35;
        }

        if (v32 == v38 && v31 == v39)
        {
        }

        else
        {
          v40 = sub_1D72646CC();

          if (v40)
          {
            v10 = v30;
            if ((v5 + 1) < v43 || v5 >= v43)
            {
              *v5 = *v7;
            }

            if (v30 > v4)
            {
              v6 = v7;
              if (v7 > v42)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_99;
          }
        }

        v26 = v7;
        if ((v5 + 1) < v30 || v5 >= v30)
        {
          *v5 = *v27;
        }

        --v5;
        v10 = v27;
        v6 = v43;
      }

      while (v27 > v4);
      v10 = v27;
LABEL_102:
      if (v6 == v4)
      {
        goto LABEL_106;
      }

      goto LABEL_107;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        v11 = &v4[v8];
        while (1)
        {
          v12 = *v6;
          if (v12 <= 1)
          {
            if (*v6)
            {
              v13 = 0xE700000000000000;
              v14 = 0x676E696461656CLL;
            }

            else
            {
              v13 = 0xE300000000000000;
              v14 = 7368564;
            }
          }

          else if (v12 == 2)
          {
            v13 = 0xE800000000000000;
            v14 = 0x676E696C69617274;
          }

          else if (v12 == 3)
          {
            v13 = 0xE600000000000000;
            v14 = 0x6D6F74746F62;
          }

          else
          {
            v13 = 0xE300000000000000;
            v14 = 7105633;
          }

          v15 = *v4;
          v16 = 0x6D6F74746F62;
          if (v15 != 3)
          {
            v16 = 7105633;
          }

          v17 = 0xE600000000000000;
          if (v15 != 3)
          {
            v17 = 0xE300000000000000;
          }

          if (v15 == 2)
          {
            v16 = 0x676E696C69617274;
            v17 = 0xE800000000000000;
          }

          v18 = 0x676E696461656CLL;
          if (!*v4)
          {
            v18 = 7368564;
          }

          v19 = 0xE700000000000000;
          if (!*v4)
          {
            v19 = 0xE300000000000000;
          }

          if (*v4 <= 1u)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if (*v4 <= 1u)
          {
            v21 = v19;
          }

          else
          {
            v21 = v17;
          }

          if (v14 == v20 && v13 == v21)
          {
          }

          else
          {
            v22 = sub_1D72646CC();

            if (v22)
            {
              v23 = v6 + 1;
              v24 = v6;
              if (v7 >= v6 && v7 < v23)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }

          v25 = v4 + 1;
          v24 = v4;
          v23 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v25)
            {
              goto LABEL_45;
            }
          }

LABEL_44:
          *v7 = *v24;
LABEL_45:
          ++v7;
          v10 = v11;
          if (v4 < v11)
          {
            v6 = v23;
            if (v23 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_102;
        }
      }

LABEL_99:
      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    v6 = v7;
  }

  if (v6 != v4)
  {
LABEL_107:
    memmove(v6, v4, v10 - v4);
    return 1;
  }

LABEL_106:
  if (v6 >= v10)
  {
    goto LABEL_107;
  }

  return 1;
}

unint64_t sub_1D67281B8(uint64_t a1)
{
  result = sub_1D67281E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67281E0()
{
  result = qword_1EC88A710;
  if (!qword_1EC88A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A710);
  }

  return result;
}

unint64_t sub_1D6728234(uint64_t a1)
{
  result = sub_1D672825C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D672825C()
{
  result = qword_1EC88A718;
  if (!qword_1EC88A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A718);
  }

  return result;
}

unint64_t sub_1D67282B0(uint64_t a1)
{
  result = sub_1D67282D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67282D8()
{
  result = qword_1EDF1E690;
  if (!qword_1EDF1E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E690);
  }

  return result;
}

void sub_1D672832C()
{
  if (!qword_1EDF1AD40)
  {
    sub_1D5CD8948();
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AD40);
    }
  }
}

void sub_1D67283E4()
{
  if (!qword_1EDF04FD8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04FD8);
    }
  }
}

uint64_t sub_1D6728490(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsFeed::PuzzlePublishDateFormat_optional __swiftcall PuzzlePublishDateFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzlePublishDateFormat.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 1735290732;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F6873;
  }
}

uint64_t sub_1D67285F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 1735290732;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74726F6873;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 1735290732;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74726F6873;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D67286E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6728774()
{
  sub_1D72621EC();
}

uint64_t sub_1D67287F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6728890(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 1735290732;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74726F6873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::String_optional __swiftcall FCPuzzleProviding.publishDateString(format:)(NewsFeed::PuzzlePublishDateFormat format)
{
  v2 = v1;
  sub_1D6728D5C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7258AAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725891C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = &v41 - v20;
  v22 = [v2 publishDate];
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v22;
  sub_1D72588BC();

  v24 = *(v13 + 32);
  v42 = v12;
  v24(v21, v16, v12);
  sub_1D7258A4C();
  sub_1D725897C();
  (*(v8 + 8))(v11, v7);
  sub_1D7258CBC();
  v25 = sub_1D726203C();
  v26 = sub_1D726203C();

  v27 = sub_1D7258CFC();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v6, 1, v27) != 1)
  {
    v29 = sub_1D7258CDC();
    (*(v28 + 8))(v6, v27);
  }

  v30 = [objc_opt_self() dateFormatterWithFormat:v25 localeIdentifier:v26 timezone:v29 forReuse:1];

  if (!v30)
  {

    (*(v13 + 8))(v21, v42);
    v22 = 0;
LABEL_7:
    v39 = 0;
    goto LABEL_8;
  }

  v31 = v30;
  v32 = sub_1D726203C();

  [v31 setLocalizedDateFormatFromTemplate_];

  v33 = v31;
  v34 = sub_1D725881C();
  v35 = [v33 stringFromDate_];

  v36 = sub_1D726207C();
  v38 = v37;

  (*(v13 + 8))(v21, v42);
  v39 = v38;
  v22 = v36;
LABEL_8:
  result.value._object = v39;
  result.value._countAndFlagsBits = v22;
  return result;
}

void sub_1D6728D5C()
{
  if (!qword_1EDF43B40)
  {
    sub_1D7258CFC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43B40);
    }
  }
}

unint64_t sub_1D6728DB8()
{
  result = qword_1EC88A720;
  if (!qword_1EC88A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A720);
  }

  return result;
}

unint64_t sub_1D6728E10()
{
  result = qword_1EC88A728;
  if (!qword_1EC88A728)
  {
    sub_1D6728E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A728);
  }

  return result;
}

void sub_1D6728E68()
{
  if (!qword_1EC88A730)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A730);
    }
  }
}

uint64_t sub_1D6728EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xEA00000000007374)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6728F84(uint64_t a1)
{
  v2 = sub_1D67291A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6728FC0(uint64_t a1)
{
  v2 = sub_1D67291A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupConfigSidecarConfig.encode(to:)(void *a1)
{
  sub_1D672946C(0, &qword_1EDF02860, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67291A4();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D67291F8();
  sub_1D67294D0(&qword_1EDF05198, sub_1D6729248);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D67291A4()
{
  result = qword_1EDF12AD0;
  if (!qword_1EDF12AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AD0);
  }

  return result;
}

void sub_1D67291F8()
{
  if (!qword_1EDF051A0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF051A0);
    }
  }
}

unint64_t sub_1D6729248()
{
  result = qword_1EDF12A88;
  if (!qword_1EDF12A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A88);
  }

  return result;
}

uint64_t FeedGroupConfigSidecarConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D672946C(0, &qword_1EDF03B50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67291A4();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D67291F8();
    sub_1D67294D0(&qword_1EDF05190, sub_1D672953C);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D672946C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67291A4();
    v7 = a3(a1, &type metadata for FeedGroupConfigSidecarConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D67294D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D67291F8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D672953C()
{
  result = qword_1EDF12A80;
  if (!qword_1EDF12A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A80);
  }

  return result;
}

unint64_t sub_1D67295E4()
{
  result = qword_1EC88A738;
  if (!qword_1EC88A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A738);
  }

  return result;
}

unint64_t sub_1D672963C()
{
  result = qword_1EDF12AC0;
  if (!qword_1EDF12AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AC0);
  }

  return result;
}

unint64_t sub_1D6729694()
{
  result = qword_1EDF12AC8;
  if (!qword_1EDF12AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AC8);
  }

  return result;
}

unint64_t sub_1D6729750()
{
  result = qword_1EC88A740;
  if (!qword_1EC88A740)
  {
    type metadata accessor for DebugFormatLayoutOrderingModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A740);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatLayoutOrderingModel()
{
  result = qword_1EC88A758;
  if (!qword_1EC88A758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67297F4(uint64_t a1, uint64_t a2)
{
  sub_1D6729E24();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_1D6729CF8(a1, v7);
  sub_1D6729CF8(a2, v9);
  type metadata accessor for DebugFormatLayoutOrderingModel();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v7 + 5);
    v32[4] = *(v7 + 4);
    v32[5] = v10;
    v11 = *(v7 + 7);
    v32[6] = *(v7 + 6);
    v32[7] = v11;
    v12 = *(v7 + 1);
    v32[0] = *v7;
    v32[1] = v12;
    v13 = *(v7 + 3);
    v32[2] = *(v7 + 2);
    v32[3] = v13;
    v14 = *(v7 + 16);
    sub_1D6729D5C(v32);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *(v9 + 80);
      v31[4] = *(v9 + 64);
      v31[5] = v15;
      v16 = *(v9 + 112);
      v31[6] = *(v9 + 96);
      v31[7] = v16;
      v17 = *(v9 + 16);
      v31[0] = *v9;
      v31[1] = v17;
      v18 = *(v9 + 48);
      v31[2] = *(v9 + 32);
      v31[3] = v18;
      v19 = *(v9 + 128);
      sub_1D6729D5C(v31);
      v20 = *(v14 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
      v21 = *(v19 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
      if (*(v20 + 48) == *(v21 + 48) && *(v20 + 56) == *(v21 + 56))
      {
        v23 = 1;
      }

      else
      {
        v23 = sub_1D72646CC();
      }

      return v23 & 1;
    }

LABEL_11:
    sub_1D6729E88(v9, type metadata accessor for DebugFormatLayoutOrderingModel);
    v23 = 0;
    return v23 & 1;
  }

  sub_1D6729DB0();
  v25 = *(v24 + 48);
  v26 = *&v7[v25];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D6729E88(v7, type metadata accessor for FormatItemNodeLayoutContext);
    goto LABEL_11;
  }

  v27 = *(v26 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  v28 = *(*(v9 + v25) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  if (*(v27 + 48) == *(v28 + 48) && *(v27 + 56) == *(v28 + 56))
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1D72646CC();
  }

  sub_1D6729E88(v9, type metadata accessor for FormatItemNodeLayoutContext);
  sub_1D6729E88(v7, type metadata accessor for FormatItemNodeLayoutContext);
  return v23 & 1;
}

BOOL sub_1D6729A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatLayoutOrderingModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  sub_1D6729CF8(a1, &v33[-v10]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v11 + 5);
    v38 = *(v11 + 4);
    v39 = v12;
    v13 = *(v11 + 7);
    v40 = *(v11 + 6);
    v41 = v13;
    v14 = *(v11 + 1);
    v34 = *v11;
    v35 = v14;
    v15 = *(v11 + 3);
    v36 = *(v11 + 2);
    v37 = v15;
    v16 = *(v11 + 16);
    sub_1D6729D5C(&v34);
    v17 = *(v16 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
  }

  else
  {
    sub_1D6729DB0();
    v21 = *(*&v11[*(v20 + 48)] + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v18 = *(v21 + 16);
    v19 = *(v21 + 24);

    sub_1D6729E88(v11, type metadata accessor for FormatItemNodeLayoutContext);
  }

  sub_1D6729CF8(a2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v7 + 5);
    v38 = *(v7 + 4);
    v39 = v22;
    v23 = *(v7 + 7);
    v40 = *(v7 + 6);
    v41 = v23;
    v24 = *(v7 + 1);
    v34 = *v7;
    v35 = v24;
    v25 = *(v7 + 3);
    v36 = *(v7 + 2);
    v37 = v25;
    v26 = *(v7 + 16);
    sub_1D6729D5C(&v34);
    v27 = *(v26 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
  }

  else
  {
    sub_1D6729DB0();
    v31 = *(*&v7[*(v30 + 48)] + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v28 = *(v31 + 16);
    v29 = *(v31 + 24);

    sub_1D6729E88(v7, type metadata accessor for FormatItemNodeLayoutContext);
  }

  if (v19 == v29)
  {
    return v18 <= v28;
  }

  else
  {
    return v19 < v29;
  }
}

uint64_t sub_1D6729CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatLayoutOrderingModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6729DB0()
{
  if (!qword_1EC88A748)
  {
    type metadata accessor for FormatItemNodeLayoutContext();
    type metadata accessor for FormatItemNodeDataLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A748);
    }
  }
}

void sub_1D6729E24()
{
  if (!qword_1EC88A750)
  {
    type metadata accessor for DebugFormatLayoutOrderingModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A750);
    }
  }
}

uint64_t sub_1D6729E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6729EE8()
{
  sub_1D6729DB0();
  if (v0 <= 0x3F)
  {
    sub_1D6729F5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D6729F5C()
{
  if (!qword_1EC88A768)
  {
    type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A768);
    }
  }
}

uint64_t sub_1D6729FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a1;
  v94 = a3;
  sub_1D672ADE0(0);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v85 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D672AE14(0, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0);
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v87 = &v80 - v9;
  sub_1D672B644(0, &qword_1EC88A818, MEMORY[0x1E697F948]);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v92 = &v80 - v12;
  sub_1D672B714(0, &qword_1EC88A7C8, sub_1D672B214, MEMORY[0x1E6981F40]);
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v83 = &v80 - v15;
  sub_1D5F7BAC0();
  v84 = v16;
  v82 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v80 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v89 = &v80 - v21;
  sub_1D672B3A4();
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v80 - v30;
  sub_1D672B284();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v88 = (&v80 - v38);
  sub_1D672B714(0, &qword_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v80 - v41;
  v43 = type metadata accessor for FormatPackage();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v80 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFD324(v42);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_1D672B778(v42);
    v48 = sub_1D72611CC();
    v49 = v88;
    *v88 = v48;
    *(v49 + 8) = 0;
    v87 = v35;
    *(v49 + 16) = 1;
    sub_1D672B804();
    v51 = v49 + *(v50 + 44);
    sub_1D7260EBC();
    v102 = 1;
    v52 = *(v24 + 16);
    v52(v27, v31, v23);
    v101 = 1;
    v53 = v102;
    *v51 = 0;
    *(v51 + 8) = v53;
    sub_1D672B338();
    v55 = v54;
    v52((v51 + *(v54 + 48)), v27, v23);
    v56 = v51 + *(v55 + 64);
    v57 = v101;
    *v56 = 0;
    *(v56 + 8) = v57;
    v58 = *(v24 + 8);
    v58(v31, v23);
    v58(v27, v23);
    aBlock = 0;
    LOBYTE(v96) = 1;
    sub_1D7260EDC();
    v59 = v89;
    sub_1D72617DC();
    v60 = v87;
    sub_1D672B9D8(v49, v87, sub_1D672B284);
    v61 = v82;
    v62 = *(v82 + 16);
    v63 = v80;
    v64 = v84;
    v62(v80, v59, v84);
    v65 = v83;
    sub_1D672B9D8(v60, v83, sub_1D672B284);
    sub_1D672B214();
    v62((v65 + *(v66 + 48)), v63, v64);
    v86 = *(v61 + 8);
    (v86)(v63, v64);
    sub_1D672B8A4(v60, sub_1D672B284);
    v67 = MEMORY[0x1E6981F40];
    sub_1D672B904(v65, v92, &qword_1EC88A7C8, sub_1D672B214, MEMORY[0x1E6981F40], sub_1D672B714);
    swift_storeEnumTagMultiPayload();
    sub_1D672B4D0();
    sub_1D672B5E0(&qword_1EC88A810, &qword_1EC88A7C8, sub_1D672B214);
    sub_1D726135C();
    sub_1D672B978(v65, &qword_1EC88A7C8, sub_1D672B214, v67, sub_1D672B714);
    (v86)(v89, v64);
    v68 = v88;
    v69 = sub_1D672B284;
  }

  else
  {
    sub_1D5DF6894(v42, v47);
    aBlock = *(v47 + 15);
    swift_getKeyPath();
    v70 = swift_allocObject();
    *(v70 + 16) = v81;
    *(v70 + 24) = a2;
    sub_1D672B714(0, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    type metadata accessor for DebugFormatPackageTreeSlotView();
    sub_1D672AF84();
    sub_1D672BA40(&qword_1EC88A7C0, type metadata accessor for DebugFormatPackageTreeSlotView);

    v71 = v85;
    sub_1D72619DC();
    sub_1D672AE88(0);
    *(v71 + *(v72 + 36)) = 0;
    v73 = v71 + *(v86 + 36);
    *v73 = xmmword_1D7286690;
    *(v73 + 16) = xmmword_1D72866A0;
    *(v73 + 32) = 0;
    sub_1D7260EDC();
    sub_1D672B00C();
    v74 = v87;
    sub_1D72617DC();
    sub_1D672B8A4(v71, sub_1D672ADE0);
    v75 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v99 = sub_1D6F34AFC;
    v100 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v96 = 1107296256;
    v97 = sub_1D6E0CD34;
    v98 = &block_descriptor_40;
    v76 = _Block_copy(&aBlock);
    [v75 initWithDynamicProvider_];
    _Block_release(v76);

    aBlock = sub_1D726189C();
    v77 = sub_1D726199C();
    v78 = v92;
    *(v74 + *(v93 + 36)) = v77;
    sub_1D672B904(v74, v78, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0, sub_1D672AE14);
    swift_storeEnumTagMultiPayload();
    sub_1D672B4D0();
    sub_1D672B5E0(&qword_1EC88A810, &qword_1EC88A7C8, sub_1D672B214);
    sub_1D726135C();
    sub_1D672B978(v74, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0, sub_1D672AE14);
    v69 = type metadata accessor for FormatPackage;
    v68 = v47;
  }

  return sub_1D672B8A4(v68, v69);
}

uint64_t sub_1D672AACC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DebugFormatPackageTreeSlotView();
  sub_1D672B9D8(a1, a2 + *(v4 + 20), type metadata accessor for FormatSlotDefinition);
  type metadata accessor for DebugFormatPackageTree();
  sub_1D672BA40(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree);

  result = sub_1D7260F8C();
  *a2 = result;
  a2[1] = v6;
  return result;
}

double sub_1D672AB84@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x73746F6C53;
  *(a1 + 8) = 0xE500000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D672ABB4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = 2;
  *(v3 + 48) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 2;
  *(v4 + 48) = 1;
  swift_retain_n();
  sub_1D72619BC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_1D672B644(0, &qword_1EC88A770, MEMORY[0x1E697F960]);
  sub_1D5F7BB40();
  sub_1D672B410();

  return sub_1D7260FFC();
}

void sub_1D672AD5C()
{
  if (!qword_1EC88A780)
  {
    sub_1D672ADE0(255);
    sub_1D672B00C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88A780);
    }
  }
}

void sub_1D672AE14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1D672AEBC()
{
  if (!qword_1EC88A798)
  {
    sub_1D672B714(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    type metadata accessor for DebugFormatPackageTreeSlotView();
    sub_1D672AF84();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A798);
    }
  }
}

unint64_t sub_1D672AF84()
{
  result = qword_1EC88A7A0;
  if (!qword_1EC88A7A0)
  {
    sub_1D672B714(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7A0);
  }

  return result;
}

unint64_t sub_1D672B00C()
{
  result = qword_1EC88A7A8;
  if (!qword_1EC88A7A8)
  {
    sub_1D672ADE0(255);
    sub_1D672B0BC();
    sub_1D672BA40(&qword_1EC8845E8, sub_1D5F7B9E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7A8);
  }

  return result;
}

unint64_t sub_1D672B0BC()
{
  result = qword_1EC88A7B0;
  if (!qword_1EC88A7B0)
  {
    sub_1D672AE88(255);
    sub_1D672B16C();
    sub_1D672BA40(&qword_1EC881138, sub_1D5F25A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7B0);
  }

  return result;
}

unint64_t sub_1D672B16C()
{
  result = qword_1EC88A7B8;
  if (!qword_1EC88A7B8)
  {
    sub_1D672AEBC();
    sub_1D672BA40(&qword_1EC88A7C0, type metadata accessor for DebugFormatPackageTreeSlotView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7B8);
  }

  return result;
}

void sub_1D672B214()
{
  if (!qword_1EC88A7D0)
  {
    sub_1D672B284();
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A7D0);
    }
  }
}

void sub_1D672B284()
{
  if (!qword_1EC88A7D8)
  {
    sub_1D672B714(255, &qword_1EC88A7E0, sub_1D672B338, MEMORY[0x1E6981F40]);
    sub_1D672B5E0(&qword_1EC88A7F8, &qword_1EC88A7E0, sub_1D672B338);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A7D8);
    }
  }
}

void sub_1D672B338()
{
  if (!qword_1EC88A7E8)
  {
    sub_1D672B3A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC88A7E8);
    }
  }
}

void sub_1D672B3A4()
{
  if (!qword_1EC88A7F0)
  {
    v0 = sub_1D7260ECC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A7F0);
    }
  }
}

unint64_t sub_1D672B410()
{
  result = qword_1EC88A800;
  if (!qword_1EC88A800)
  {
    sub_1D672B644(255, &qword_1EC88A770, MEMORY[0x1E697F960]);
    sub_1D672B4D0();
    sub_1D672B5E0(&qword_1EC88A810, &qword_1EC88A7C8, sub_1D672B214);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A800);
  }

  return result;
}

unint64_t sub_1D672B4D0()
{
  result = qword_1EC88A808;
  if (!qword_1EC88A808)
  {
    sub_1D672AE14(255, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0);
    sub_1D672ADE0(255);
    sub_1D672B00C();
    swift_getOpaqueTypeConformance2();
    sub_1D672BA40(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A808);
  }

  return result;
}

uint64_t sub_1D672B5E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D672B714(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D672B644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D672AE14(255, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0);
    v7 = v6;
    sub_1D672B714(255, &qword_1EC88A7C8, sub_1D672B214, MEMORY[0x1E6981F40]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D672B714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D672B778(uint64_t a1)
{
  sub_1D672B714(0, &qword_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D672B804()
{
  if (!qword_1EC88A820)
  {
    sub_1D672B714(255, &qword_1EC88A7E0, sub_1D672B338, MEMORY[0x1E6981F40]);
    v0 = sub_1D7260F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A820);
    }
  }
}

uint64_t sub_1D672B8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D672B904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D672B978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D672B9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D672BA40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D672BA88()
{
  if (!qword_1EC88A830)
  {
    sub_1D672B644(255, &qword_1EC88A770, MEMORY[0x1E697F960]);
    sub_1D5F7BB40();
    sub_1D672B410();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A830);
    }
  }
}

uint64_t NativeAdHeadline.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7263D4C();

  v2 = [sub_1D726071C() articleID];
  swift_unknownObjectRelease();
  v3 = sub_1D726207C();
  v5 = v4;

  MEMORY[0x1DA6F9910](v3, v5);

  v6 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v7 = sub_1D726203C();

  v8 = [v6 initWithString_];

  if (v8)
  {
    sub_1D726220C();
    v9 = sub_1D726323C();

    if (v9)
    {
      v10 = [sub_1D726071C() title];
      swift_unknownObjectRelease();
      if (v10)
      {
        sub_1D726207C();
      }

      sub_1D725F83C();
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_1D725F84C();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v11, 1, v12);
}

uint64_t DebugNativeAdHeadline.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7263D4C();

  v2 = [sub_1D7260A5C() articleID];
  swift_unknownObjectRelease();
  v3 = sub_1D726207C();
  v5 = v4;

  MEMORY[0x1DA6F9910](v3, v5);

  v6 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v7 = sub_1D726203C();

  v8 = [v6 initWithString_];

  if (v8)
  {
    v9 = [sub_1D7260A5C() title];
    swift_unknownObjectRelease();
    if (v9)
    {
      sub_1D726207C();
    }

    sub_1D725F83C();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1D725F84C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1D672BF24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D7264A0C();
  if (v2)
  {
    v1 = qword_1D72E31D0[v1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
  }

  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D672BF90()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_1D72E31D0[v1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
  }

  return MEMORY[0x1DA6FC0B0](v1);
}

uint64_t sub_1D672BFE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D7264A0C();
  if (v2)
  {
    v1 = qword_1D72E31D0[v1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
  }

  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

BOOL sub_1D672C048(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

unint64_t sub_1D672C0C4()
{
  result = qword_1EC88A838;
  if (!qword_1EC88A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A838);
  }

  return result;
}

uint64_t FeedReloadChecker.__allocating_init(changes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FeedReloadChecker.shouldReload(headline:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v40 = result;
  while (v5 < *(v2 + 16))
  {
    v6 = v2 + 32 + 16 * v5;
    if (*(v6 + 8) - 1 < 2)
    {
      goto LABEL_5;
    }

    v7 = *v6;
    if (*(v6 + 8))
    {

      v29 = [v4 sourceChannelID];
      if (!v29)
      {
        goto LABEL_4;
      }

      v30 = v29;
      v31 = sub_1D726207C();
      v33 = v32;

      if (*(v7 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v34 = sub_1D7264A5C();
        v35 = -1 << *(v7 + 32);
        v36 = v34 & ~v35;
        if ((*(v7 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          do
          {
            v38 = (*(v7 + 48) + 16 * v36);
            v39 = *v38 == v31 && v38[1] == v33;
            if (v39 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_41;
            }

            v36 = (v36 + 1) & v37;
          }

          while (((*(v7 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0);
        }

LABEL_39:

        v4 = v40;
        goto LABEL_5;
      }
    }

    else
    {

      v8 = [v4 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      if (*(v7 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v12 = sub_1D7264A5C();
        v13 = -1 << *(v7 + 32);
        v14 = v12 & ~v13;
        if ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          do
          {
            v16 = (*(v7 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v11;
            if (v17 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_41;
            }

            v14 = (v14 + 1) & v15;
          }

          while (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
        }
      }

      v4 = v40;
      v18 = [v40 sourceChannelID];
      if (!v18)
      {
        goto LABEL_4;
      }

      v19 = v18;
      v20 = sub_1D726207C();
      v22 = v21;

      if (*(v7 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v23 = sub_1D7264A5C();
        v24 = -1 << *(v7 + 32);
        v25 = v23 & ~v24;
        if ((*(v7 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (1)
          {
            v27 = (*(v7 + 48) + 16 * v25);
            v28 = *v27 == v20 && v27[1] == v22;
            if (v28 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v7 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

LABEL_41:

          return 1;
        }

        goto LABEL_39;
      }
    }

LABEL_4:

LABEL_5:
    if (++v5 == v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedReloadChecker.shouldReload(puzzle:)(uint64_t result)
{
  v17 = result;
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = v2 + 32 + 16 * v4;
    if (*(v5 + 8) == 1)
    {
      break;
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  v6 = *v5;

  v7 = [v17 identifier];
  v8 = sub_1D726207C();
  v10 = v9;

  if (!*(v6 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v11 = sub_1D7264A5C(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
  {
LABEL_3:

    goto LABEL_4;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(v6 + 48) + 16 * v13);
    v16 = *v15 == v8 && v15[1] == v10;
    if (v16 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

uint64_t FeedReloadChecker.shouldReload(puzzleStatistic:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = (v6 + 16 * v5);
    if (*(v7 + 8) == 2)
    {
      break;
    }

LABEL_4:
    if (++v5 == v3)
    {
      return 0;
    }
  }

  v8 = *v7;
  v9 = *v4;

  v10 = [v9 identifier];
  v11 = sub_1D726207C();
  v13 = v12;

  type metadata accessor for PuzzleStatistic();
  PuzzleStatisticCategory.statisticType.getter(&v29);
  v14 = 0x53646570756F7267;
  if (v29 != 9)
  {
    v14 = 0xD000000000000015;
  }

  v15 = 0x80000001D73B7480;
  if (v29 == 9)
  {
    v15 = 0xEC00000073746174;
  }

  if (v29 == 8)
  {
    v14 = 0xD00000000000001DLL;
  }

  v16 = 0x80000001D73B7430;
  if (v29 == 8)
  {
    v15 = 0x80000001D73B7450;
  }

  if (v29 == 6)
  {
    v17 = 0xD00000000000001CLL;
  }

  else
  {
    v17 = 0xD00000000000001DLL;
  }

  if (v29 == 6)
  {
    v16 = 0x80000001D73B7410;
  }

  if (v29 == 5)
  {
    v17 = 0xD00000000000001CLL;
    v16 = 0x80000001D73B73F0;
  }

  if (v29 <= 7u)
  {
    v14 = v17;
    v15 = v16;
  }

  v18 = 0x5374636566726570;
  if (v29 != 3)
  {
    v18 = 0x74615265766C6F73;
  }

  v19 = 0xE900000000000065;
  if (v29 == 3)
  {
    v19 = 0xED00006465766C6FLL;
  }

  if (v29 == 2)
  {
    v18 = 0x5373656C7A7A7570;
    v19 = 0xED00006465766C6FLL;
  }

  v20 = 0x53747365676E6F6CLL;
  if (v29)
  {
    v20 = 0x53746E6572727563;
  }

  if (v29 <= 1u)
  {
    v18 = v20;
    v19 = 0xED00006B61657274;
  }

  if (v29 <= 4u)
  {
    v21 = v18;
  }

  else
  {
    v21 = v14;
  }

  if (v29 <= 4u)
  {
    v22 = v19;
  }

  else
  {
    v22 = v15;
  }

  MEMORY[0x1DA6F9910](v21, v22);

  if (!*(v8 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v23 = sub_1D7264A5C(), v24 = -1 << *(v8 + 32), v25 = v23 & ~v24, ((*(v8 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
  {
LABEL_3:

    v6 = v2 + 32;
    goto LABEL_4;
  }

  v26 = ~v24;
  while (1)
  {
    v27 = (*(v8 + 48) + 16 * v25);
    v28 = *v27 == v11 && v27[1] == v13;
    if (v28 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v8 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

uint64_t sub_1D672C9E4(uint64_t result)
{
  v17 = result;
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = v2 + 32 + 16 * v4;
    if (*(v5 + 8) >= 3u)
    {
      break;
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  v6 = *v5;

  v7 = [objc_msgSend(v17 sourceChannel)];
  swift_unknownObjectRelease();
  v8 = sub_1D726207C();
  v10 = v9;

  if (!*(v6 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v11 = sub_1D7264A5C(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
  {
LABEL_3:

    goto LABEL_4;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(v6 + 48) + 16 * v13);
    v16 = *v15 == v8 && v15[1] == v10;
    if (v16 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

void FeedReloadChecker.shouldReload(formatGroup:)()
{
  v1 = v0;
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v99, v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v98 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatContentSlotItemResolution();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatFeedGroup();
  v21 = FormatContent.Resolved.itemAuxiliaries.getter();
  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_78:

    return;
  }

  v23 = 0;
  v24 = v21 + 32;
  v95 = v5;
  v96 = v0;
  v94 = v8;
  v100 = v12;
  v101 = v17;
  v97 = v21;
  v88 = v22;
  v87 = v21 + 32;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      goto LABEL_86;
    }

    v25 = *(v24 + 16 * v23);
    v102 = *(v25 + 16);
    if (v102)
    {
      break;
    }

LABEL_77:
    if (++v23 == v22)
    {
      goto LABEL_78;
    }
  }

  v92 = v23;
  v104 = v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80));

  v26 = 0;
  v103 = v25;
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_83;
    }

    sub_1D672D6F4(v104 + *(v17 + 72) * v26, v20, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D672D6F4(v20, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D672D694(v20, type metadata accessor for FormatContentSlotItemResolution);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      break;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
LABEL_6:
        sub_1D672D694(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
        goto LABEL_7;
      }

      v31 = *v15;
      v32 = *(v1 + 16);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 32;
        v93 = *v15;
        v91 = v32;
        v90 = v33;
        v89 = v32 + 32;
        while (v34 < *(v32 + 16))
        {
          v40 = (v35 + 16 * v34);
          if (*(v40 + 8) >= 3u)
          {
            v41 = *v40;

            v42 = [objc_msgSend(v31 sourceChannel)];
            swift_unknownObjectRelease();
            v43 = sub_1D726207C();
            v45 = v44;

            if (*(v41 + 16))
            {
              sub_1D7264A0C();
              sub_1D72621EC();
              v46 = sub_1D7264A5C();
              v47 = -1 << *(v41 + 32);
              v48 = v46 & ~v47;
              if ((*(v41 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
              {
                v49 = ~v47;
                while (1)
                {
                  v50 = (*(v41 + 48) + 16 * v48);
                  v51 = *v50 == v43 && v50[1] == v45;
                  if (v51 || (sub_1D72646CC() & 1) != 0)
                  {
                    break;
                  }

                  v48 = (v48 + 1) & v49;
                  if (((*(v41 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                  {
                    goto LABEL_25;
                  }
                }

LABEL_79:

                return;
              }
            }

LABEL_25:

            v17 = v101;
            v31 = v93;
            v32 = v91;
            v33 = v90;
            v35 = v89;
          }

          if (++v34 == v33)
          {
LABEL_75:

            v5 = v95;
            v1 = v96;
            v8 = v94;
            goto LABEL_7;
          }
        }

        goto LABEL_84;
      }

      goto LABEL_71;
    }

    if (EnumCaseMultiPayload == 5)
    {
      goto LABEL_6;
    }

    v37 = v98;
    sub_1D5D53A80(v15, v98, type metadata accessor for PuzzleStatistic);
    v38 = FeedReloadChecker.shouldReload(puzzleStatistic:)(v37);
    v39 = v37;
    v17 = v101;
    sub_1D672D694(v39, type metadata accessor for PuzzleStatistic);
    if (v38)
    {
      goto LABEL_81;
    }

LABEL_7:
    ++v26;
    v25 = v103;
    if (v26 == v102)
    {

      v21 = v97;
      v22 = v88;
      v23 = v92;
      v24 = v87;
      goto LABEL_77;
    }
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v52 = *v15;
      v53 = *(v1 + 16);
      v54 = *(v53 + 16);
      if (!v54)
      {
LABEL_74:
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

      v55 = 0;
      v56 = v53 + 32;
      v93 = *v15;
      v91 = v53;
      v90 = v54;
      v89 = v53 + 32;
      while (v55 < *(v53 + 16))
      {
        v57 = (v56 + 16 * v55);
        if (*(v57 + 8) == 1)
        {
          v58 = *v57;

          v59 = [v52 identifier];
          v60 = sub_1D726207C();
          v62 = v61;

          if (*(v58 + 16))
          {
            sub_1D7264A0C();
            sub_1D72621EC();
            v63 = sub_1D7264A5C();
            v64 = -1 << *(v58 + 32);
            v65 = v63 & ~v64;
            if ((*(v58 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
            {
              v66 = ~v64;
              while (1)
              {
                v67 = (*(v58 + 48) + 16 * v65);
                v68 = *v67 == v60 && v67[1] == v62;
                if (v68 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v65 = (v65 + 1) & v66;
                if (((*(v58 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
                {
                  goto LABEL_41;
                }
              }

              swift_unknownObjectRelease();
              return;
            }
          }

LABEL_41:

          v5 = v95;
          v1 = v96;
          v52 = v93;
          v8 = v94;
          v17 = v101;
          v53 = v91;
          v54 = v90;
          v56 = v89;
        }

        if (++v55 == v54)
        {
          goto LABEL_74;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    sub_1D5D53A80(v15, v8, type metadata accessor for FormatWebEmbed.Resolved);
    sub_1D672D6F4(&v8[*(v99 + 36)], v5, sub_1D5B5D160);
    sub_1D5B5D194();
    v29 = v28;
    v30 = *(v28 - 8);
    if ((*(v30 + 48))(v5, 1, v28) == 1)
    {
      sub_1D672D694(v5, sub_1D5B5D160);
      sub_1D672D694(v8, type metadata accessor for FormatWebEmbed.Resolved);
    }

    else
    {
      sub_1D725BF7C();
      v85 = v105;
      (*(v30 + 8))(v5, v29);
      v86 = FeedReloadChecker.shouldReload(headline:)(v85);
      v17 = v101;
      swift_unknownObjectRelease();
      sub_1D672D694(v8, type metadata accessor for FormatWebEmbed.Resolved);
      if (v86)
      {
LABEL_81:

        return;
      }
    }

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v36 = FeedReloadChecker.shouldReload(headline:)(*v15);
    swift_unknownObjectRelease();
    if (v36)
    {
      goto LABEL_81;
    }

    goto LABEL_7;
  }

  v31 = *v15;
  v69 = *(v1 + 16);
  v70 = *(v69 + 16);
  if (!v70)
  {
LABEL_71:

    goto LABEL_7;
  }

  v71 = 0;
  v72 = v69 + 32;
  v93 = *v15;
  v91 = v69;
  v90 = v70;
  v89 = v69 + 32;
  while (v71 < *(v69 + 16))
  {
    v73 = (v72 + 16 * v71);
    if (*(v73 + 8) >= 3u)
    {
      v74 = *v73;

      v75 = [objc_msgSend(v31 sourceChannel)];
      swift_unknownObjectRelease();
      v76 = sub_1D726207C();
      v78 = v77;

      if (*(v74 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v79 = sub_1D7264A5C();
        v80 = -1 << *(v74 + 32);
        v81 = v79 & ~v80;
        if ((*(v74 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
        {
          v82 = ~v80;
          do
          {
            v83 = (*(v74 + 48) + 16 * v81);
            v84 = *v83 == v76 && v83[1] == v78;
            if (v84 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_79;
            }

            v81 = (v81 + 1) & v82;
          }

          while (((*(v74 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) != 0);
        }
      }

      v17 = v101;
      v31 = v93;
      v69 = v91;
      v70 = v90;
      v72 = v89;
    }

    if (++v71 == v70)
    {
      goto LABEL_75;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
}

uint64_t FeedReloadChecker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D672D694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D672D6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D672D768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D672D7B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void PuzzleAccessoryInputConfiguration.init(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v4 = sub_1D5B69D90(1701869940, 0xE400000000000000);
  if (v5)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v4, &v40);
    sub_1D6730F48();
    if (swift_dynamicCast())
    {

LABEL_20:
      *(a2 + 64) = 0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  if (!*(a1 + 16) || (v6 = sub_1D5B69D90(1701869940, 0xE400000000000000), (v7 & 1) == 0))
  {
LABEL_19:

    v40 = 0u;
    v41 = 0u;
    sub_1D5B88B60(&v40, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_20;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v6, &v40);
  sub_1D5B88B60(&v40, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
  if (!*(a1 + 16) || (v8 = sub_1D5B69D90(25705, 0xE200000000000000), (v9 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v8, &v40), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725C42C();
    __swift_project_value_buffer(v26, qword_1EDFFCFA8);

    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 136315138;
      v27 = sub_1D7261D4C();
      v29 = v28;

      v30 = sub_1D5BC5100(v27, v29, &v40);

      *(v19 + 4) = v30;
      v25 = "Failed parsing PuzzleAccessoryInputConfig. Invalid id entry: %s";
      goto LABEL_25;
    }

LABEL_30:

    goto LABEL_31;
  }

  v10 = v46;
  if (!*(a1 + 16) || (v11 = v45, v12 = sub_1D5B69D90(1701869940, 0xE400000000000000), (v13 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v12, &v40), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725C42C();
    __swift_project_value_buffer(v31, qword_1EDFFCFA8);

    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 136315138;
      v32 = sub_1D7261D4C();
      v34 = v33;

      v35 = sub_1D5BC5100(v32, v34, &v40);

      *(v19 + 4) = v35;
      v25 = "Failed parsing PuzzleAccessoryInputConfig. Invalid type entry: %s";
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  sub_1D6730014(v45, v46, a1, &v40);

  v14 = v41;
  v15 = v43;
  if (v41 >> 8 == 0xFFFFFFFF && v43 <= 3)
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725C42C();
    __swift_project_value_buffer(v16, qword_1EDFFCFA8);

    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 136315138;
      v21 = sub_1D7261D4C();
      v23 = v22;

      v24 = sub_1D5BC5100(v21, v23, &v40);

      *(v19 + 4) = v24;
      v25 = "Failed parsing PuzzleAccessoryInputConfig. Invalid inputType entry: %s";
LABEL_25:
      _os_log_impl(&dword_1D5B42000, v17, v18, v25, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
LABEL_31:

      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v39 = v44;
  v37 = *(&v41 + 1);
  v36 = v42;
  v38 = v40;

  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v38;
  *(a2 + 32) = v14;
  *(a2 + 40) = v37;
  *(a2 + 48) = v36;
  *(a2 + 56) = v15;
  *(a2 + 64) = v39;
}

void __swiftcall PuzzleAccessoryHintConfig.init(text:direction:number:textFormat:visibilityOptions:)(NewsFeed::PuzzleAccessoryHintConfig *__return_ptr retstr, Swift::String_optional text, Swift::String_optional direction, Swift::String_optional number, Swift::String_optional textFormat, NewsFeed::PuzzleAccessoryHintConfig::PuzzleAccessoryHintVisibilityOptions visibilityOptions)
{
  object = textFormat.value._object;
  v7 = number.value._object;
  countAndFlagsBits = number.value._countAndFlagsBits;
  v9 = text.value._object;
  v10 = text.value._countAndFlagsBits;
  v12 = *visibilityOptions.rawValue;
  if (direction.value._object)
  {
    v13 = sub_1D72641CC();

    if (v13 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = NewsFeed_PuzzleAccessoryHintConfig_Direction_right;
    }

    if (object)
    {
      goto LABEL_9;
    }

LABEL_13:
    v17 = NewsFeed_PuzzleAccessoryHintConfig_TextFormat_none;
    goto LABEL_14;
  }

  v15 = NewsFeed_PuzzleAccessoryHintConfig_Direction_unknownDefault;
  if (!textFormat.value._object)
  {
    goto LABEL_13;
  }

LABEL_9:
  v16 = sub_1D72641CC();

  v17 = v16 == 1;
  if (v16 == 2)
  {
    v17 = NewsFeed_PuzzleAccessoryHintConfig_TextFormat_html;
  }

LABEL_14:
  retstr->text.value._countAndFlagsBits = v10;
  retstr->text.value._object = v9;
  retstr->direction.value = v15;
  retstr->number.value._countAndFlagsBits = countAndFlagsBits;
  retstr->number.value._object = v7;
  retstr->textFormat = v17;
  retstr->visibilityOptions.rawValue = v12;
}

__n128 PuzzleAccessoryInputConfiguration.init(identifier:inputType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 48);
  *a4 = a1;
  *(a4 + 8) = a2;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  result = *(a3 + 32);
  *(a4 + 48) = result;
  *(a4 + 64) = v4;
  return result;
}

NewsFeed::PuzzleAccessoryHintConfig::Direction_optional __swiftcall PuzzleAccessoryHintConfig.Direction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t PuzzleAccessoryHintConfig.Direction.rawValue.getter()
{
  if (*v0)
  {
    return 1853321060;
  }

  else
  {
    return 0x7468676972;
  }
}

uint64_t sub_1D672DFCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1853321060;
  }

  else
  {
    v3 = 0x7468676972;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1853321060;
  }

  else
  {
    v5 = 0x7468676972;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D672E068()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D672E0E0()
{
  sub_1D72621EC();
}

uint64_t sub_1D672E144()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D672E1B8@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D672E218(uint64_t *a1@<X8>)
{
  v2 = 1853321060;
  if (!*v1)
  {
    v2 = 0x7468676972;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

NewsFeed::PuzzleAccessoryHintConfig::TextFormat_optional __swiftcall PuzzleAccessoryHintConfig.TextFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleAccessoryHintConfig.TextFormat.rawValue.getter()
{
  v1 = 0x6E776F646B72616DLL;
  if (*v0 != 1)
  {
    v1 = 1819112552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D672E3A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E776F646B72616DLL;
  if (v2 != 1)
  {
    v4 = 1819112552;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E776F646B72616DLL;
  if (*a2 != 1)
  {
    v8 = 1819112552;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D672E490()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D672E524()
{
  sub_1D72621EC();
}

uint64_t sub_1D672E5A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D672E640(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E776F646B72616DLL;
  if (v2 != 1)
  {
    v5 = 1819112552;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PuzzleAccessoryHintConfig.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAccessoryHintConfig.number.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D672E8C4()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x7265626D756ELL;
  v4 = 0x6D726F4674786574;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D672E960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D67322B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D672E988(uint64_t a1)
{
  v2 = sub_1D6730F94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672E9C4(uint64_t a1)
{
  v2 = sub_1D6730F94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryHintConfig.encode(to:)(void *a1)
{
  sub_1D6731740(0, &qword_1EC88A848, sub_1D6730F94, &type metadata for PuzzleAccessoryHintConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v20 = *(v1 + 16);
  v9 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = v9;
  v17 = *(v1 + 40);
  v16 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6730F94();
  v10 = v4;
  sub_1D7264B5C();
  v29 = 0;
  v11 = v21;
  sub_1D726437C();
  if (!v11)
  {
    v12 = v17;
    v13 = v16;
    v28 = v20;
    v27 = 1;
    sub_1D6730FE8();
    sub_1D72643BC();
    v26 = 2;
    sub_1D726437C();
    v25 = v12;
    v24 = 3;
    sub_1D673103C();
    sub_1D726443C();
    v22 = v13;
    v23 = 4;
    sub_1D6731090();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t PuzzleAccessoryHintConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6731740(0, &qword_1EC88A870, sub_1D6730F94, &type metadata for PuzzleAccessoryHintConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D6730F94();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v12 = v7;
  v36 = 0;
  v13 = v6;
  v14 = sub_1D726422C();
  v16 = v15;
  v17 = v14;
  v34 = 1;
  sub_1D67310E4();
  sub_1D726427C();
  v18 = v35;
  v33 = 2;
  v26 = sub_1D726422C();
  v27 = v20;
  v25 = v18;
  v31 = 3;
  sub_1D6731138();
  sub_1D726431C();
  LOBYTE(v18) = v32;
  v30 = 4;
  sub_1D673118C();
  sub_1D726431C();
  (*(v12 + 8))(v10, v13);
  v21 = v29;
  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v25;
  v22 = v18;
  v23 = v27;
  *(a2 + 24) = v26;
  *(a2 + 32) = v23;
  *(a2 + 40) = v22;
  *(a2 + 48) = v21;

  __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1D672F01C(uint64_t a1)
{
  v2 = sub_1D67311E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F058(uint64_t a1)
{
  v2 = sub_1D67311E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D672F094()
{
  v1 = 0x6B63617473;
  if (*v0 != 1)
  {
    v1 = 0x736E6F74747562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953393000;
  }
}

uint64_t sub_1D672F0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6732474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D672F10C(uint64_t a1)
{
  v2 = sub_1D67312DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F148(uint64_t a1)
{
  v2 = sub_1D67312DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D672F184(uint64_t a1)
{
  v2 = sub_1D6731288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F1C0(uint64_t a1)
{
  v2 = sub_1D6731288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D672F1FC(uint64_t a1)
{
  v2 = sub_1D6731234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F238(uint64_t a1)
{
  v2 = sub_1D6731234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryInputConfiguration.InputType.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D6731740(0, &qword_1EC88A890, sub_1D67311E0, &type metadata for PuzzleAccessoryInputConfiguration.InputType.ButtonsCodingKeys, MEMORY[0x1E69E6F58]);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v36 = &v28 - v6;
  sub_1D6731740(0, &qword_1EC88A8A0, sub_1D6731234, &type metadata for PuzzleAccessoryInputConfiguration.InputType.StackCodingKeys, v3);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v35 = &v28 - v9;
  sub_1D6731740(0, &qword_1EC88A8B0, sub_1D6731288, &type metadata for PuzzleAccessoryInputConfiguration.InputType.HintCodingKeys, v3);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  sub_1D6731740(0, &qword_1EC88A8C0, sub_1D67312DC, &type metadata for PuzzleAccessoryInputConfiguration.InputType.CodingKeys, v3);
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - v16;
  v18 = v1[1];
  v41 = *v1;
  v19 = v1[2];
  v30 = v1[3];
  v31 = v19;
  v20 = v1[5];
  v29 = v1[4];
  v32 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67312DC();
  sub_1D7264B5C();
  if (v20 >> 62)
  {
    if (v20 >> 62 == 1)
    {
      LOBYTE(v44) = 1;
      sub_1D6731234();
      v21 = v35;
      v22 = v43;
      sub_1D726436C();
      v44 = v41;
      sub_1D5B49DF8(0, &qword_1EC88A8D8, &type metadata for PuzzleAccessoryInputConfiguration, MEMORY[0x1E69E62F8]);
      sub_1D6731480(&qword_1EC88A8E0, sub_1D6731384);
      v23 = v38;
      sub_1D726443C();
      v24 = v37;
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_1D67311E0();
      v21 = v36;
      v22 = v43;
      sub_1D726436C();
      v44 = v41;
      sub_1D6731330();
      v23 = v40;
      sub_1D726443C();
      v24 = v39;
    }

    (*(v24 + 8))(v21, v23);
  }

  else
  {
    v25 = v33;
    LOBYTE(v44) = 0;
    sub_1D6731288();
    v22 = v43;
    sub_1D726436C();
    v44 = v41;
    v45 = v18;
    v46 = v31;
    v47 = v30;
    v48 = v29;
    v49 = v20;
    v50 = v32;
    sub_1D67313D8();
    v26 = v34;
    sub_1D726443C();
    (*(v25 + 8))(v13, v26);
  }

  return (*(v42 + 8))(v17, v22);
}

uint64_t PuzzleAccessoryInputConfiguration.InputType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6731740(0, &qword_1EC88A8F8, sub_1D67311E0, &type metadata for PuzzleAccessoryInputConfiguration.InputType.ButtonsCodingKeys, MEMORY[0x1E69E6F48]);
  v52 = v4;
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v51 = &v45 - v6;
  sub_1D6731740(0, &qword_1EC88A900, sub_1D6731234, &type metadata for PuzzleAccessoryInputConfiguration.InputType.StackCodingKeys, v3);
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v50 = &v45 - v10;
  sub_1D6731740(0, &qword_1EC88A908, sub_1D6731288, &type metadata for PuzzleAccessoryInputConfiguration.InputType.HintCodingKeys, v3);
  v12 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - v14;
  sub_1D6731740(0, &qword_1EC88A910, sub_1D67312DC, &type metadata for PuzzleAccessoryInputConfiguration.InputType.CodingKeys, v3);
  v17 = v16;
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v45 - v19;
  v21 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D67312DC();
  v22 = v54;
  sub_1D7264B0C();
  if (!v22)
  {
    v24 = v50;
    v23 = v51;
    v25 = v52;
    v26 = sub_1D726433C();
    v27 = (2 * *(v26 + 16)) | 1;
    v61 = v26;
    v62 = v26 + 32;
    v63 = 0;
    v64 = v27;
    v28 = sub_1D60F961C();
    v29 = v17;
    v30 = v20;
    if (v28 != 3 && v63 == v64 >> 1)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v55) = 1;
          sub_1D6731234();
          sub_1D72641EC();
          v31 = v49;
          v32 = v53;
          sub_1D5B49DF8(0, &qword_1EC88A8D8, &type metadata for PuzzleAccessoryInputConfiguration, MEMORY[0x1E69E62F8]);
          sub_1D6731480(&qword_1EC88A920, sub_1D6731510);
          v33 = v47;
          sub_1D726431C();
          (*(v48 + 8))(v24, v33);
          (*(v32 + 8))(v30, v29);
          swift_unknownObjectRelease();
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = v55;
          v43 = 0uLL;
          v44 = 0x4000000000000000;
LABEL_12:
          *v31 = v42;
          *(v31 + 8) = v39;
          *(v31 + 16) = v40;
          *(v31 + 24) = v43;
          *(v31 + 40) = v44;
          *(v31 + 48) = v41;
          return __swift_destroy_boxed_opaque_existential_1(v65);
        }

        LOBYTE(v55) = 2;
        sub_1D67311E0();
        sub_1D72641EC();
        v38 = v53;
        sub_1D673142C();
        sub_1D726431C();
        (*(v46 + 8))(v23, v25);
        (*(v38 + 8))(v20, v29);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = v55;
        v43 = 0uLL;
        v44 = 0x8000000000000000;
      }

      else
      {
        LOBYTE(v55) = 0;
        sub_1D6731288();
        sub_1D72641EC();
        sub_1D6731564();
        sub_1D726431C();
        (*(v45 + 8))(v15, v12);
        (*(v53 + 8))(v20, v29);
        swift_unknownObjectRelease();
        v42 = v55;
        v39 = v56;
        v40 = v57;
        v43 = v58;
        v44 = v59;
        v41 = v60;
      }

      v31 = v49;
      goto LABEL_12;
    }

    v34 = sub_1D7263E3C();
    swift_allocError();
    v36 = v35;
    sub_1D5EEA608();
    *v36 = &type metadata for PuzzleAccessoryInputConfiguration.InputType;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v53 + 8))(v20, v29);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t PuzzleAccessoryInputConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAccessoryInputConfiguration.inputType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D67315B8(v2, v3, v4, v5, v6, v7);
}

void sub_1D6730014(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  if (a1 == 1953393000 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v8 = sub_1D5B69D90(1954047348, 0xE400000000000000);
      if (v9)
      {
        sub_1D5B76B10(*(a3 + 56) + 32 * v8, &v70);
        v10 = swift_dynamicCast();
        if (v10)
        {
          rawValue = with[0]._rawValue;
        }

        else
        {
          rawValue = 0;
        }

        if (v10)
        {
          v12 = with[1]._rawValue;
        }

        else
        {
          v12 = 0;
        }

        if (!*(a3 + 16))
        {
          goto LABEL_41;
        }

LABEL_35:
        v29 = sub_1D5B69D90(0x6F69746365726964, 0xE90000000000006ELL);
        if (v30)
        {
          sub_1D5B76B10(*(a3 + 56) + 32 * v29, &v70);
          if (swift_dynamicCast())
          {
            v31 = with[1]._rawValue;
          }

          else
          {
            v31 = 0;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_42;
          }
        }

        else
        {
          v31 = 0;
          if (!*(a3 + 16))
          {
            goto LABEL_42;
          }
        }

        v48 = sub_1D5B69D90(0x7265626D756ELL, 0xE600000000000000);
        if (v49)
        {
          sub_1D5B76B10(*(a3 + 56) + 32 * v48, &v70);
          v50 = swift_dynamicCast();
          if (v50)
          {
            v32 = with[0]._rawValue;
          }

          else
          {
            v32 = 0;
          }

          if (v50)
          {
            v33 = with[1]._rawValue;
          }

          else
          {
            v33 = 0;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_62;
          }

          goto LABEL_43;
        }

LABEL_42:
        v32 = 0;
        v33 = 0;
        if (!*(a3 + 16))
        {
          goto LABEL_62;
        }

LABEL_43:
        v34 = sub_1D5B69D90(0x6D726F4674786574, 0xEA00000000007461);
        if (v35)
        {
          sub_1D5B76B10(*(a3 + 56) + 32 * v34, &v70);
          if (swift_dynamicCast())
          {
            v36 = with[1]._rawValue;
          }

          else
          {
            v36 = 0;
          }

          if (!v31)
          {
LABEL_48:
            v37 = 2;
            if (!v36)
            {
LABEL_49:
              v38 = 0;
LABEL_71:
              *a4 = rawValue;
              a4[1] = v12;
              a4[2] = v37;
              a4[3] = v32;
              a4[4] = v33;
              a4[5] = v38;
              a4[6] = 15;
              return;
            }

LABEL_69:
            v53 = sub_1D72641CC();

            v38 = v53 == 1;
            if (v53 == 2)
            {
              v38 = 2;
            }

            goto LABEL_71;
          }

LABEL_63:
          v51 = sub_1D72641CC();

          v52 = 1;
          if (v51 != 1)
          {
            v52 = 2;
          }

          if (v51)
          {
            v37 = v52;
          }

          else
          {
            v37 = 0;
          }

          if (!v36)
          {
            goto LABEL_49;
          }

          goto LABEL_69;
        }

LABEL_62:
        v36 = 0;
        if (!v31)
        {
          goto LABEL_48;
        }

        goto LABEL_63;
      }

      rawValue = 0;
      v12 = 0;
      if (*(a3 + 16))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0;
      rawValue = 0;
    }

LABEL_41:
    v31 = 0;
    goto LABEL_42;
  }

  if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v13 = sub_1D5B69D90(0x736D657469, 0xE500000000000000);
      if (v14)
      {
        sub_1D5B76B10(*(a3 + 56) + 32 * v13, &v70);
        sub_1D6325CE0();
        if (swift_dynamicCast())
        {
          v15 = with[0]._rawValue;
          v16 = *(with[0]._rawValue + 2);
          if (v16)
          {
            v17 = 0;
            v18 = MEMORY[0x1E69E7CC0];
            do
            {
              v19 = v17;
              while (1)
              {
                if (v19 >= v15[2])
                {
                  __break(1u);
                  goto LABEL_91;
                }

                v17 = v19 + 1;

                PuzzleAccessoryInputConfiguration.init(with:)(&v70, v20);
                if (*(&v70 + 1))
                {
                  break;
                }

                v67 = v72;
                v68 = v73;
                v69 = v74;
                *&with[0]._rawValue = v70;
                v66 = v71;
                sub_1D5B88B60(with, &qword_1EC8807E0, &type metadata for PuzzleAccessoryInputConfiguration);
                ++v19;
                if (v16 == v17)
                {
                  goto LABEL_89;
                }
              }

              v67 = v72;
              v68 = v73;
              v69 = v74;
              *&with[0]._rawValue = v70;
              v66 = v71;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = sub_1D698FF34(0, *(v18 + 2) + 1, 1, v18);
              }

              v21 = v18;
              v22 = *(v18 + 2);
              v23 = v21;
              v24 = *(v21 + 3);
              v25 = v22 + 1;
              if (v22 >= v24 >> 1)
              {
                v28 = sub_1D698FF34((v24 > 1), v22 + 1, 1, v23);
                v25 = v22 + 1;
                v23 = v28;
              }

              v64 = v69;
              v62 = v67;
              v63 = v68;
              v26 = *&with[0]._rawValue;
              v61 = v66;
              *(v23 + 2) = v25;
              v27 = &v23[72 * v22];
              v18 = v23;
              *(v27 + 2) = v26;
              *(v27 + 12) = v64;
              *(v27 + 4) = v62;
              *(v27 + 5) = v63;
              *(v27 + 3) = v61;
            }

            while (v16 - 1 != v19);
          }

          else
          {
            v18 = MEMORY[0x1E69E7CC0];
          }

LABEL_89:

          *a4 = v18;
          *(a4 + 1) = 0u;
          *(a4 + 3) = 0u;
          v56 = xmmword_1D72E3300;
          goto LABEL_87;
        }
      }
    }

    if (qword_1EDF3B838 != -1)
    {
LABEL_91:
      swift_once();
    }

    v39 = sub_1D725C42C();
    __swift_project_value_buffer(v39, qword_1EDFFCFA8);

    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EBC();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_85;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v70 = v43;
    *v42 = 136315138;
    v44 = sub_1D7261D4C();
    v46 = sub_1D5BC5100(v44, v45, &v70);

    *(v42 + 4) = v46;
    v47 = "Failed parsing PuzzleAccessoryInputConfiguration. Invalid items entry: %s";
    goto LABEL_84;
  }

  if ((a1 != 0x736E6F74747562 || a2 != 0xE700000000000000) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_86;
  }

  if (!*(a3 + 16) || (v54 = sub_1D5B69D90(0x736D657469, 0xE500000000000000), (v55 & 1) == 0) || (sub_1D5B76B10(*(a3 + 56) + 32 * v54, &v70), sub_1D6325CE0(), (swift_dynamicCast() & 1) == 0) || (PuzzleAccessoryButtonsConfig.init(with:)(with[0]), !v70))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725C42C();
    __swift_project_value_buffer(v57, qword_1EDFFCFA8);

    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EBC();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_85;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v70 = v43;
    *v42 = 136315138;
    v58 = sub_1D7261D4C();
    v60 = sub_1D5BC5100(v58, v59, &v70);

    *(v42 + 4) = v60;
    v47 = "Failed parsing PuzzleAccessoryButtonsConfig. Invalid items entry: %s";
LABEL_84:
    _os_log_impl(&dword_1D5B42000, v40, v41, v47, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1DA6FD500](v43, -1, -1);
    MEMORY[0x1DA6FD500](v42, -1, -1);
LABEL_85:

LABEL_86:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0xFFFFFFFF00;
    v56 = 0uLL;
    *(a4 + 3) = 0u;
    goto LABEL_87;
  }

  *a4 = v70;
  *(a4 + 1) = 0u;
  *(a4 + 3) = 0u;
  v56 = xmmword_1D72E32F0;
LABEL_87:
  *(a4 + 5) = v56;
}

uint64_t sub_1D6730890()
{
  if (*v0)
  {
    return 0x7079547475706E69;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D67308D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7079547475706E69 && a2 == 0xE900000000000065)
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

uint64_t sub_1D67309C0(uint64_t a1)
{
  v2 = sub_1D6731628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67309FC(uint64_t a1)
{
  v2 = sub_1D6731628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryInputConfiguration.encode(to:)(void *a1)
{
  sub_1D6731740(0, &qword_1EC88A938, sub_1D6731628, &type metadata for PuzzleAccessoryInputConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v20 = v1[3];
  v21 = v9;
  v10 = v1[4];
  v18 = v1[5];
  v19 = v10;
  v11 = v1[6];
  v16 = v1[7];
  v17 = v11;
  v15 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6731628();
  sub_1D7264B5C();
  LOBYTE(v23) = 0;
  v12 = v22;
  sub_1D72643FC();
  if (!v12)
  {
    v23 = v21;
    v24 = v20;
    v25 = v19;
    v26 = v18;
    v27 = v17;
    v28 = v16;
    v29 = v15;
    v30 = 1;
    sub_1D67315B8(v21, v20, v19, v18, v17, v16);
    sub_1D673167C();
    sub_1D72643BC();
    sub_1D67316D0(v23, v24, v25, v26, v27, v28);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleAccessoryInputConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1D6731740(0, &qword_1EC88A950, sub_1D6731628, &type metadata for PuzzleAccessoryInputConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6731628();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v26;
  LOBYTE(v29[0]) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  v38 = 1;
  sub_1D67317A8();
  sub_1D726427C();
  (*(v6 + 8))(v9, v5);
  v15 = *(&v34 + 1);
  v25 = v34;
  v16 = v35;
  v24 = v36;
  v17 = v37;
  v23 = *(&v36 + 1);
  *&v27[0] = v14;
  *(&v27[0] + 1) = v13;
  v27[1] = v34;
  v27[2] = v35;
  v27[3] = v36;
  v28 = v37;
  v18 = v27[0];
  v19 = v34;
  v20 = v35;
  v21 = v36;
  *(v10 + 64) = v37;
  *(v10 + 32) = v20;
  *(v10 + 48) = v21;
  *v10 = v18;
  *(v10 + 16) = v19;
  sub_1D6007B88(v27, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v14;
  v29[1] = v13;
  v29[2] = v25;
  v29[3] = v15;
  v30 = v16;
  v31 = v24;
  v32 = v23;
  v33 = v17;
  return sub_1D6007C34(v29);
}

unint64_t sub_1D6730F48()
{
  result = qword_1EC88A840;
  if (!qword_1EC88A840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88A840);
  }

  return result;
}

unint64_t sub_1D6730F94()
{
  result = qword_1EC88A850;
  if (!qword_1EC88A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A850);
  }

  return result;
}

unint64_t sub_1D6730FE8()
{
  result = qword_1EC88A858;
  if (!qword_1EC88A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A858);
  }

  return result;
}

unint64_t sub_1D673103C()
{
  result = qword_1EC88A860;
  if (!qword_1EC88A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A860);
  }

  return result;
}

unint64_t sub_1D6731090()
{
  result = qword_1EC88A868;
  if (!qword_1EC88A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A868);
  }

  return result;
}

unint64_t sub_1D67310E4()
{
  result = qword_1EC88A878;
  if (!qword_1EC88A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A878);
  }

  return result;
}

unint64_t sub_1D6731138()
{
  result = qword_1EC88A880;
  if (!qword_1EC88A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A880);
  }

  return result;
}

unint64_t sub_1D673118C()
{
  result = qword_1EC88A888;
  if (!qword_1EC88A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A888);
  }

  return result;
}

unint64_t sub_1D67311E0()
{
  result = qword_1EC88A898;
  if (!qword_1EC88A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A898);
  }

  return result;
}

unint64_t sub_1D6731234()
{
  result = qword_1EC88A8A8;
  if (!qword_1EC88A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8A8);
  }

  return result;
}

unint64_t sub_1D6731288()
{
  result = qword_1EC88A8B8;
  if (!qword_1EC88A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8B8);
  }

  return result;
}

unint64_t sub_1D67312DC()
{
  result = qword_1EC88A8C8;
  if (!qword_1EC88A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8C8);
  }

  return result;
}

unint64_t sub_1D6731330()
{
  result = qword_1EC88A8D0;
  if (!qword_1EC88A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8D0);
  }

  return result;
}

unint64_t sub_1D6731384()
{
  result = qword_1EC88A8E8;
  if (!qword_1EC88A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8E8);
  }

  return result;
}

unint64_t sub_1D67313D8()
{
  result = qword_1EC88A8F0;
  if (!qword_1EC88A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8F0);
  }

  return result;
}

unint64_t sub_1D673142C()
{
  result = qword_1EC88A918;
  if (!qword_1EC88A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A918);
  }

  return result;
}

uint64_t sub_1D6731480(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49DF8(255, &qword_1EC88A8D8, &type metadata for PuzzleAccessoryInputConfiguration, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6731510()
{
  result = qword_1EC88A928;
  if (!qword_1EC88A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A928);
  }

  return result;
}

unint64_t sub_1D6731564()
{
  result = qword_1EC88A930;
  if (!qword_1EC88A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A930);
  }

  return result;
}

uint64_t sub_1D67315B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 >> 8 != 0xFFFFFFFF || a6 >= 4)
  {
    return sub_1D67315D0(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1D67315D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 >> 62) - 1 >= 2)
  {
    if (a6 >> 62 == 3)
    {
      return result;
    }
  }
}

unint64_t sub_1D6731628()
{
  result = qword_1EC88A940;
  if (!qword_1EC88A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A940);
  }

  return result;
}

unint64_t sub_1D673167C()
{
  result = qword_1EC88A948;
  if (!qword_1EC88A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A948);
  }

  return result;
}

uint64_t sub_1D67316D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 >> 8 != 0xFFFFFFFF || a6 >= 4)
  {
    return sub_1D67316E8(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1D67316E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 >> 62) - 1 >= 2)
  {
    if (a6 >> 62 == 3)
    {
      return result;
    }
  }
}

void sub_1D6731740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D67317A8()
{
  result = qword_1EC88A958;
  if (!qword_1EC88A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A958);
  }

  return result;
}

unint64_t sub_1D6731800()
{
  result = qword_1EC88A960;
  if (!qword_1EC88A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A960);
  }

  return result;
}

unint64_t sub_1D6731858()
{
  result = qword_1EC88A968;
  if (!qword_1EC88A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A968);
  }

  return result;
}

unint64_t sub_1D67318B0()
{
  result = qword_1EC88A970;
  if (!qword_1EC88A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A970);
  }

  return result;
}

unint64_t sub_1D6731908()
{
  result = qword_1EC88A978;
  if (!qword_1EC88A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A978);
  }

  return result;
}

unint64_t sub_1D6731960()
{
  result = qword_1EC88A980;
  if (!qword_1EC88A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A980);
  }

  return result;
}

unint64_t sub_1D67319B8()
{
  result = qword_1EC88A988;
  if (!qword_1EC88A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A988);
  }

  return result;
}

uint64_t sub_1D6731A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1D6731A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed33PuzzleAccessoryInputConfigurationV0E4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 17);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6731B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D6731B84(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 8;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6731BF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 3 | (a2 << 62);
  *(result + 16) = *(result + 16);
  *(result + 40) = v2;
  return result;
}

unint64_t sub_1D6731C84()
{
  result = qword_1EC88A990;
  if (!qword_1EC88A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A990);
  }

  return result;
}

unint64_t sub_1D6731CDC()
{
  result = qword_1EC88A998;
  if (!qword_1EC88A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A998);
  }

  return result;
}

unint64_t sub_1D6731D34()
{
  result = qword_1EC88A9A0;
  if (!qword_1EC88A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9A0);
  }

  return result;
}

unint64_t sub_1D6731D8C()
{
  result = qword_1EC88A9A8;
  if (!qword_1EC88A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9A8);
  }

  return result;
}

unint64_t sub_1D6731DE4()
{
  result = qword_1EC88A9B0;
  if (!qword_1EC88A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9B0);
  }

  return result;
}

unint64_t sub_1D6731E3C()
{
  result = qword_1EC88A9B8;
  if (!qword_1EC88A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9B8);
  }

  return result;
}

unint64_t sub_1D6731E94()
{
  result = qword_1EC88A9C0;
  if (!qword_1EC88A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9C0);
  }

  return result;
}

unint64_t sub_1D6731EEC()
{
  result = qword_1EC88A9C8;
  if (!qword_1EC88A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9C8);
  }

  return result;
}

unint64_t sub_1D6731F44()
{
  result = qword_1EC88A9D0;
  if (!qword_1EC88A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9D0);
  }

  return result;
}

unint64_t sub_1D6731F9C()
{
  result = qword_1EC88A9D8;
  if (!qword_1EC88A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9D8);
  }

  return result;
}

unint64_t sub_1D6731FF4()
{
  result = qword_1EC88A9E0;
  if (!qword_1EC88A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9E0);
  }

  return result;
}

unint64_t sub_1D673204C()
{
  result = qword_1EC88A9E8;
  if (!qword_1EC88A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9E8);
  }

  return result;
}

unint64_t sub_1D67320A4()
{
  result = qword_1EC88A9F0;
  if (!qword_1EC88A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9F0);
  }

  return result;
}

unint64_t sub_1D67320FC()
{
  result = qword_1EC88A9F8;
  if (!qword_1EC88A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9F8);
  }

  return result;
}

unint64_t sub_1D6732154()
{
  result = qword_1EC88AA00;
  if (!qword_1EC88AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA00);
  }

  return result;
}

unint64_t sub_1D67321AC()
{
  result = qword_1EC88AA08;
  if (!qword_1EC88AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA08);
  }

  return result;
}

unint64_t sub_1D6732204()
{
  result = qword_1EC88AA10;
  if (!qword_1EC88AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA10);
  }

  return result;
}

unint64_t sub_1D673225C()
{
  result = qword_1EC88AA18;
  if (!qword_1EC88AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA18);
  }

  return result;
}

uint64_t sub_1D67322B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F4674786574 && a2 == 0xEA00000000007461 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73D3010 == a2)
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

uint64_t sub_1D6732474(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953393000 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D6732588()
{
  result = qword_1EC88AA20;
  if (!qword_1EC88AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA20);
  }

  return result;
}

unint64_t sub_1D67325DC()
{
  result = qword_1EC88AA28;
  if (!qword_1EC88AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA28);
  }

  return result;
}

uint64_t sub_1D673266C(uint64_t *a1)
{
  v50 = a1;
  v2 = type metadata accessor for FormatOption();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v46 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v45, v5);
  v42 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v41 = &v39[-v9];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39[-v12];
  result = sub_1D72252E4(0.0, 0.0, 0.0, 0.0);
  v15 = result;
  v44 = *(result + 16);
  if (v44)
  {
    v16 = 0;
    v43 = result;
    v40 = v13;
    while (v16 < *(v15 + 16))
    {
      v17 = v46;
      sub_1D5D25108(v46);

      sub_1D69DFAF0(v17, v13);
      if (v1)
      {
      }

      v18 = swift_allocBox();
      v20 = v19;
      sub_1D6735BD4(v13, v19, type metadata accessor for FormatDerivedDataOption);
      v21 = *v50;
      swift_beginAccess();
      v22 = *(v21 + 16);
      v23 = *(v22 + 16);
      if (v23 && *(v22 + 8 * v23 + 24) >> 60 == 1 && (v24 = swift_projectBox(), v25 = v18, v26 = v41, sub_1D6735BD4(v24, v41, type metadata accessor for FormatDerivedDataOption), v27 = v42, sub_1D6735BD4(v20, v42, type metadata accessor for FormatDerivedDataOption), , v28 = sub_1D69E18D4(v26, v27), sub_1D6736194(v27, type metadata accessor for FormatDerivedDataOption), v29 = v26, v18 = v25, v13 = v40, sub_1D6736194(v29, type metadata accessor for FormatDerivedDataOption), , v28))
      {
      }

      else
      {
        v30 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5EB99F0();
          v37 = swift_allocObject();
          swift_beginAccess();
          v38 = v32[2];
          v48[0] = v32[1];
          v48[1] = v38;
          v49[0] = v32[3];
          *(v49 + 14) = *(v32 + 62);
          memmove((v37 + 16), v32 + 1, 0x3EuLL);
          sub_1D5EB9AB0(v48, v47);

          *v50 = v37;
          v32 = v37;
        }

        swift_beginAccess();
        v33 = *(v32 + 2);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *(v32 + 2) = v33;
        if ((v34 & 1) == 0)
        {
          v33 = sub_1D698F848(0, *(v33 + 2) + 1, 1, v33);
          *(v32 + 2) = v33;
        }

        v36 = *(v33 + 2);
        v35 = *(v33 + 3);
        if (v36 >= v35 >> 1)
        {
          v33 = sub_1D698F848((v35 > 1), v36 + 1, 1, v33);
        }

        *(v33 + 2) = v36 + 1;
        *&v33[8 * v36 + 32] = v18 | 0x1000000000000000;
        *(v32 + 2) = v33;
        swift_endAccess();
      }

      ++v16;

      result = sub_1D6736194(v13, type metadata accessor for FormatDerivedDataOption);
      v15 = v43;
      if (v44 == v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return sub_1D6292F10(v50);
  }

  return result;
}

uint64_t FormatGroupNodeMaskStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatGroupNodeMaskStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatGroupNodeMaskStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatGroupNodeMaskStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatGroupNodeMaskStyle.path.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10 = v3;
  v11 = *(v1 + 120);
  v4 = v11;
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1D5E3A490(v8, v7, &qword_1EDF273F0);
}

uint64_t FormatGroupNodeMaskStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v4 = *(v1 + 200);
  v10 = *(v1 + 184);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 216);
  v6 = *(v1 + 152);
  v9[0] = *(v1 + 136);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D5E3A490(v9, v8, &qword_1EDF33718);
}

uint64_t FormatGroupNodeMaskStyle.__allocating_init(identifier:class:selectors:path:borders:shadow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  swift_beginAccess();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  swift_beginAccess();
  v17 = *a6;
  *(v16 + 72) = a6[1];
  v18 = a6[3];
  *(v16 + 88) = a6[2];
  *(v16 + 104) = v18;
  *(v16 + 56) = v17;
  v19 = *(a8 + 48);
  *(v16 + 168) = *(a8 + 32);
  *(v16 + 184) = v19;
  *(v16 + 200) = *(a8 + 64);
  v20 = *(a8 + 16);
  *(v16 + 136) = *a8;
  *(v16 + 48) = a5;
  *(v16 + 120) = *(a6 + 64);
  *(v16 + 128) = a7;
  *(v16 + 216) = *(a8 + 80);
  *(v16 + 152) = v20;
  return v16;
}

uint64_t FormatGroupNodeMaskStyle.init(identifier:class:selectors:path:borders:shadow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  swift_beginAccess();
  v17 = *a6;
  *(v8 + 72) = a6[1];
  v18 = a6[3];
  *(v8 + 88) = a6[2];
  *(v8 + 104) = v18;
  *(v8 + 56) = v17;
  v19 = *(a8 + 48);
  *(v8 + 168) = *(a8 + 32);
  *(v8 + 184) = v19;
  *(v8 + 200) = *(a8 + 64);
  v20 = *(a8 + 16);
  *(v8 + 136) = *a8;
  *(v8 + 48) = a5;
  *(v8 + 120) = *(a6 + 64);
  *(v8 + 128) = a7;
  *(v8 + 216) = *(a8 + 80);
  *(v8 + 152) = v20;
  return v8;
}

uint64_t sub_1D6732F84(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v246 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v245 = a1;
  v9 = *(a1 + 48);
  v306 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  v11 = *(v9 + 16);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_94;
  }

  v243 = v4;
  v241 = v6;
  sub_1D6735AC0();
  v242 = v5;

  v244 = v7;

  sub_1D7261DAC();
  v12 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v13 = *(v8 + 16);
  v247 = v9;
  if (!v13)
  {
    goto LABEL_20;
  }

  v250 = v11;
  v14 = 0;
  v15 = v8;
  v16 = (v8 + 32);
  v17 = v13 - 1;
  while (1)
  {
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[3];
    v296 = v16[2];
    v297 = v20;
    v294 = v18;
    v295 = v19;
    v21 = v16[4];
    v22 = v16[5];
    v23 = v16[7];
    v300 = v16[6];
    v301 = v23;
    v298 = v21;
    v299 = v22;
    v24 = v16[8];
    v25 = v16[9];
    v26 = v16[10];
    v305 = *(v16 + 176);
    v304 = v26;
    v302 = v24;
    v303 = v25;
    v27 = v294;
    sub_1D62B7804(&v294, &v282);
    sub_1D62B7804(&v294, &v282);
    v28 = v306;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v252 = v28;
    v30 = sub_1D6D8CB60(v27, *(&v27 + 1));
    v32 = v28[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      __break(1u);
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
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v36 = v31;
    if (v28[3] < v35)
    {
      sub_1D6D6F5FC(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_1D6D8CB60(v27, *(&v27 + 1));
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_95;
      }

LABEL_9:
      if (v36)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v58 = v30;
    sub_1D6D831FC();
    v30 = v58;
    if (v36)
    {
LABEL_10:
      v38 = v252;
      v39 = *(v252 + 56) + 184 * v30;
      v40 = *(v39 + 48);
      v42 = *v39;
      v41 = *(v39 + 16);
      v284 = *(v39 + 32);
      v285 = v40;
      v282 = v42;
      v283 = v41;
      v43 = *(v39 + 112);
      v45 = *(v39 + 64);
      v44 = *(v39 + 80);
      v288 = *(v39 + 96);
      v289 = v43;
      v286 = v45;
      v287 = v44;
      v47 = *(v39 + 144);
      v46 = *(v39 + 160);
      v48 = *(v39 + 128);
      v293 = *(v39 + 176);
      v291 = v47;
      v292 = v46;
      v290 = v48;
      v49 = v294;
      v50 = v295;
      v51 = v297;
      *(v39 + 32) = v296;
      *(v39 + 48) = v51;
      *v39 = v49;
      *(v39 + 16) = v50;
      v52 = v298;
      v53 = v299;
      v54 = v301;
      *(v39 + 96) = v300;
      *(v39 + 112) = v54;
      *(v39 + 64) = v52;
      *(v39 + 80) = v53;
      v55 = v302;
      v56 = v303;
      v57 = v304;
      *(v39 + 176) = v305;
      *(v39 + 144) = v56;
      *(v39 + 160) = v57;
      *(v39 + 128) = v55;
      sub_1D62B7860(&v282);
      goto LABEL_14;
    }

LABEL_12:
    v38 = v252;
    *(v252 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    *(v38[6] + 16 * v30) = v27;
    v59 = v38[7] + 184 * v30;
    v60 = v305;
    v61 = v304;
    v62 = v303;
    *(v59 + 128) = v302;
    *(v59 + 144) = v62;
    *(v59 + 160) = v61;
    *(v59 + 176) = v60;
    v64 = v300;
    v63 = v301;
    v65 = v299;
    *(v59 + 64) = v298;
    *(v59 + 80) = v65;
    *(v59 + 96) = v64;
    *(v59 + 112) = v63;
    v67 = v296;
    v66 = v297;
    v68 = v295;
    *v59 = v294;
    *(v59 + 16) = v68;
    *(v59 + 32) = v67;
    *(v59 + 48) = v66;
    v69 = v38[2];
    v34 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v34)
    {
      goto LABEL_90;
    }

    v38[2] = v70;

LABEL_14:
    v306 = v38;

    sub_1D62B7860(&v294);
    v72 = *(v12 + 2);
    v71 = *(v12 + 3);
    if (v72 >= v71 >> 1)
    {
      v12 = sub_1D698F4BC((v71 > 1), v72 + 1, 1, v12);
    }

    *(v12 + 2) = v72 + 1;
    *&v12[16 * v72 + 32] = v27;
    if (v17 == v14)
    {
      break;
    }

    ++v14;
    v16 = (v16 + 184);
    if (v14 >= *(v15 + 16))
    {
      goto LABEL_86;
    }
  }

  v9 = v247;
  v11 = v250;
LABEL_20:
  v251 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v73 = *(v9 + 16);
  if (!v73)
  {
    goto LABEL_60;
  }

  v74 = 0;
  v75 = &v288;
  v248 = v73 - 1;
  v76 = 32;
  while (2)
  {
    v77 = *(v9 + v76);
    v78 = *(v9 + v76 + 16);
    v79 = *(v9 + v76 + 48);
    v296 = *(v9 + v76 + 32);
    v297 = v79;
    v294 = v77;
    v295 = v78;
    v80 = *(v9 + v76 + 64);
    v81 = *(v9 + v76 + 80);
    v82 = *(v9 + v76 + 112);
    v300 = *(v9 + v76 + 96);
    v301 = v82;
    v298 = v80;
    v299 = v81;
    v83 = *(v9 + v76 + 128);
    v84 = *(v9 + v76 + 144);
    v85 = *(v9 + v76 + 160);
    v305 = *(v9 + v76 + 176);
    v304 = v85;
    v302 = v83;
    v303 = v84;
    v86 = v294;
    v87 = v306;
    if (!v306[2])
    {
      sub_1D62B7804(&v294, &v282);
LABEL_27:
      sub_1D62B7804(&v294, &v282);
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *&v252 = v87;
      v104 = sub_1D6D8CB60(v86, *(&v86 + 1));
      v106 = v87[2];
      v107 = (v105 & 1) == 0;
      v34 = __OFADD__(v106, v107);
      v108 = v106 + v107;
      if (v34)
      {
        goto LABEL_89;
      }

      v109 = v105;
      if (v87[3] >= v108)
      {
        if ((v103 & 1) == 0)
        {
          v161 = v104;
          sub_1D6D831FC();
          v104 = v161;
          if (v109)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }
      }

      else
      {
        sub_1D6D6F5FC(v108, v103);
        v104 = sub_1D6D8CB60(v86, *(&v86 + 1));
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_95;
        }
      }

      if (v109)
      {
LABEL_33:
        v111 = v252;
        v112 = *(v252 + 56) + 184 * v104;
        v113 = *(v112 + 48);
        v115 = *v112;
        v114 = *(v112 + 16);
        v284 = *(v112 + 32);
        v285 = v113;
        v282 = v115;
        v283 = v114;
        v116 = *(v112 + 112);
        v118 = *(v112 + 64);
        v117 = *(v112 + 80);
        v288 = *(v112 + 96);
        v289 = v116;
        v286 = v118;
        v287 = v117;
        v120 = *(v112 + 144);
        v119 = *(v112 + 160);
        v121 = *(v112 + 128);
        v293 = *(v112 + 176);
        v291 = v120;
        v292 = v119;
        v290 = v121;
        v122 = v294;
        v123 = v295;
        v124 = v297;
        *(v112 + 32) = v296;
        *(v112 + 48) = v124;
        *v112 = v122;
        *(v112 + 16) = v123;
        v125 = v298;
        v126 = v299;
        v127 = v301;
        *(v112 + 96) = v300;
        *(v112 + 112) = v127;
        *(v112 + 64) = v125;
        *(v112 + 80) = v126;
        v128 = v302;
        v129 = v303;
        v130 = v304;
        *(v112 + 176) = v305;
        *(v112 + 144) = v129;
        *(v112 + 160) = v130;
        *(v112 + 128) = v128;
        sub_1D62B7860(&v282);
LABEL_50:
        v306 = v111;
        v174 = *(v251 + 2);
        v175 = *(v251 + 3);

        if (v174 >= v175 >> 1)
        {
          v251 = sub_1D698F4BC((v175 > 1), v174 + 1, 1, v251);
        }

        sub_1D62B7860(&v294);
        *(v251 + 2) = v174 + 1;
        *&v251[16 * v174 + 32] = v86;
        goto LABEL_57;
      }

LABEL_48:
      v111 = v252;
      *(v252 + 8 * (v104 >> 6) + 64) |= 1 << v104;
      *(v111[6] + 16 * v104) = v86;
      v162 = v111[7] + 184 * v104;
      v163 = v305;
      v164 = v304;
      v165 = v303;
      *(v162 + 128) = v302;
      *(v162 + 144) = v165;
      *(v162 + 160) = v164;
      *(v162 + 176) = v163;
      v167 = v300;
      v166 = v301;
      v168 = v299;
      *(v162 + 64) = v298;
      *(v162 + 80) = v168;
      *(v162 + 96) = v167;
      *(v162 + 112) = v166;
      v170 = v296;
      v169 = v297;
      v171 = v295;
      *v162 = v294;
      *(v162 + 16) = v171;
      *(v162 + 32) = v170;
      *(v162 + 48) = v169;
      v172 = v111[2];
      v34 = __OFADD__(v172, 1);
      v173 = v172 + 1;
      if (v34)
      {
        goto LABEL_91;
      }

      v111[2] = v173;

      goto LABEL_50;
    }

    sub_1D62B7804(&v294, &v282);
    v88 = sub_1D6D8CB60(v86, *(&v86 + 1));
    if ((v89 & 1) == 0)
    {
      goto LABEL_27;
    }

    v90 = v87[7] + 184 * v88;
    v92 = *(v90 + 32);
    v91 = *(v90 + 48);
    v93 = *(v90 + 16);
    v282 = *v90;
    v283 = v93;
    v284 = v92;
    v285 = v91;
    v94 = *(v90 + 64);
    v95 = *(v90 + 80);
    v96 = *(v90 + 112);
    v288 = *(v90 + 96);
    v289 = v96;
    v286 = v94;
    v287 = v95;
    v97 = *(v90 + 128);
    v98 = *(v90 + 144);
    v99 = *(v90 + 160);
    v293 = *(v90 + 176);
    v291 = v98;
    v292 = v99;
    v290 = v97;
    if (v287 == 255)
    {
      sub_1D5E3A490(&v295, &v252, &qword_1EDF273F0);
      v272 = v297;
      v273 = v298;
      v274 = v299;
      v102 = v295;
      v101 = v296;
    }

    else
    {
      v100 = *(v90 + 64);
      v272 = *(v90 + 48);
      v273 = v100;
      v274 = *(v90 + 80);
      v102 = *(v90 + 16);
      v101 = *(v90 + 32);
    }

    v270 = v102;
    v271 = v101;
    v131 = *(&v287 + 1);
    if (!*(&v287 + 1))
    {
      v131 = *(&v299 + 1);
    }

    v132 = v75;
    if (v293 == 254)
    {
      v132 = &v300;
      sub_1D5E3A490(&v300, &v252, &qword_1EDF33718);
    }

    v133 = v132[3];
    v266 = v132[2];
    v267 = v133;
    v268 = v132[4];
    v269 = *(v132 + 80);
    v134 = v132[1];
    v264 = *v132;
    v265 = v134;
    v135 = v282;
    sub_1D5E3A490(&v283, &v252, &qword_1EDF273F0);

    v136 = v75;
    sub_1D5E3A490(v75, &v252, &qword_1EDF33718);

    sub_1D62B7804(&v282, &v252);
    v137 = swift_isUniquelyReferenced_nonNull_native();
    *&v280[0] = v87;
    v139 = sub_1D6D8CB60(v135, *(&v135 + 1));
    v140 = v87[2];
    v141 = (v138 & 1) == 0;
    v142 = v140 + v141;
    if (__OFADD__(v140, v141))
    {
      goto LABEL_92;
    }

    v143 = v138;
    if (v87[3] >= v142)
    {
      if (v137)
      {
        v9 = v247;
        if ((v138 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_1D6D831FC();
        v9 = v247;
        if ((v143 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_46;
    }

    sub_1D6D6F5FC(v142, v137);
    v144 = sub_1D6D8CB60(v135, *(&v135 + 1));
    if ((v143 & 1) != (v145 & 1))
    {
      goto LABEL_95;
    }

    v139 = v144;
    v9 = v247;
    if (v143)
    {
LABEL_46:
      v146 = *&v280[0];
      v147 = *(*&v280[0] + 56) + 184 * v139;
      v148 = *(v147 + 48);
      v150 = *v147;
      v149 = *(v147 + 16);
      v254 = *(v147 + 32);
      v255 = v148;
      v252 = v150;
      v253 = v149;
      v151 = *(v147 + 112);
      v153 = *(v147 + 64);
      v152 = *(v147 + 80);
      v258 = *(v147 + 96);
      v259 = v151;
      v256 = v153;
      v257 = v152;
      v155 = *(v147 + 144);
      v154 = *(v147 + 160);
      v156 = *(v147 + 128);
      v263 = *(v147 + 176);
      v261 = v155;
      v262 = v154;
      v260 = v156;
      *v147 = v135;
      *(v147 + 80) = v274;
      v157 = v273;
      *(v147 + 48) = v272;
      *(v147 + 64) = v157;
      v158 = v271;
      *(v147 + 16) = v270;
      *(v147 + 32) = v158;
      *(v147 + 88) = v131;
      v159 = v265;
      *(v147 + 96) = v264;
      *(v147 + 112) = v159;
      *(v147 + 176) = v269;
      v160 = v268;
      *(v147 + 144) = v267;
      *(v147 + 160) = v160;
      *(v147 + 128) = v266;
      sub_1D62B7860(&v252);
      goto LABEL_56;
    }

LABEL_54:
    v146 = *&v280[0];
    *(*&v280[0] + 8 * (v139 >> 6) + 64) |= 1 << v139;
    *(v146[6] + 16 * v139) = v135;
    v176 = v146[7] + 184 * v139;
    *v176 = v135;
    *(v176 + 80) = v274;
    v177 = v273;
    *(v176 + 48) = v272;
    *(v176 + 64) = v177;
    v178 = v271;
    *(v176 + 16) = v270;
    *(v176 + 32) = v178;
    *(v176 + 88) = v131;
    v179 = v265;
    *(v176 + 96) = v264;
    *(v176 + 112) = v179;
    v180 = v266;
    v181 = v267;
    v182 = v268;
    *(v176 + 176) = v269;
    *(v176 + 144) = v181;
    *(v176 + 160) = v182;
    *(v176 + 128) = v180;
    v183 = v146[2];
    v34 = __OFADD__(v183, 1);
    v184 = v183 + 1;
    if (v34)
    {
      goto LABEL_93;
    }

    v146[2] = v184;

LABEL_56:
    sub_1D62B7860(&v282);
    sub_1D62B7860(&v294);
    v306 = v146;
    v75 = v136;
LABEL_57:
    if (v248 == v74)
    {
      goto LABEL_60;
    }

    ++v74;
    v76 += 184;
    if (v74 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_60:

  *&v294 = v251;

  sub_1D6985DAC(v185);
  v186 = *(v294 + 16);
  if (v186)
  {
    v187 = 0;
    v188 = v294 + 40;
    v189 = MEMORY[0x1E69E7CC0];
    v249 = v294 + 40;
LABEL_62:
    v190 = v306;
    v191 = (v188 + 16 * v187);
    v192 = v187;
    while (v192 < v186)
    {
      v187 = v192 + 1;
      if (__OFADD__(v192, 1))
      {
        goto LABEL_88;
      }

      if (v190[2])
      {
        v194 = *(v191 - 1);
        v193 = *v191;

        v195 = sub_1D6D8CB60(v194, v193);
        if (v196)
        {
          v197 = v190[7] + 184 * v195;
          v199 = *(v197 + 32);
          v198 = *(v197 + 48);
          v200 = *(v197 + 16);
          v294 = *v197;
          v295 = v200;
          v296 = v199;
          v297 = v198;
          v201 = *(v197 + 64);
          v202 = *(v197 + 80);
          v203 = *(v197 + 112);
          v300 = *(v197 + 96);
          v301 = v203;
          v298 = v201;
          v299 = v202;
          v204 = *(v197 + 128);
          v205 = *(v197 + 144);
          v206 = *(v197 + 160);
          v305 = *(v197 + 176);
          v304 = v206;
          v302 = v204;
          v303 = v205;
          sub_1D62B7804(&v294, &v282);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = sub_1D698E61C(0, *(v189 + 2) + 1, 1, v189);
          }

          v188 = v249;
          v208 = *(v189 + 2);
          v207 = *(v189 + 3);
          if (v208 >= v207 >> 1)
          {
            v189 = sub_1D698E61C((v207 > 1), v208 + 1, 1, v189);
          }

          *(v189 + 2) = v208 + 1;
          v209 = &v189[184 * v208];
          v210 = v294;
          v211 = v295;
          v212 = v297;
          *(v209 + 4) = v296;
          *(v209 + 5) = v212;
          *(v209 + 2) = v210;
          *(v209 + 3) = v211;
          v213 = v298;
          v214 = v299;
          v215 = v301;
          *(v209 + 8) = v300;
          *(v209 + 9) = v215;
          *(v209 + 6) = v213;
          *(v209 + 7) = v214;
          v216 = v302;
          v217 = v303;
          v218 = v304;
          v209[208] = v305;
          *(v209 + 11) = v217;
          *(v209 + 12) = v218;
          *(v209 + 10) = v216;
          if (v187 != v186)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }
      }

      ++v192;
      v191 += 2;
      if (v187 == v186)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_87;
  }

  v189 = MEMORY[0x1E69E7CC0];
LABEL_76:

  v219 = v246;
  v281 = *(v246 + 120);
  v220 = *(v246 + 9);
  v221 = *(v246 + 13);
  v280[2] = *(v246 + 11);
  v280[3] = v221;
  v280[0] = *(v246 + 7);
  v280[1] = v220;
  if (v281 == 255)
  {
    v225 = *(v245 + 72);
    v226 = *(v245 + 104);
    v296 = *(v245 + 88);
    v297 = v226;
    LOBYTE(v298) = *(v245 + 120);
    v294 = *(v245 + 56);
    v295 = v225;
    sub_1D5E3A490(&v294, &v282, &qword_1EDF273F0);
    v219 = v246;
    v277 = v296;
    v278 = v297;
    v279 = v298;
    v224 = v294;
    v222 = v295;
  }

  else
  {
    v222 = *(v246 + 9);
    v223 = *(v246 + 13);
    v277 = *(v246 + 11);
    v278 = v223;
    v279 = *(v246 + 120);
    v224 = *(v246 + 7);
  }

  v275 = v224;
  v276 = v222;
  v227 = v219[16];
  if (!v227)
  {
    v227 = *(v245 + 128);

    v219 = v246;
  }

  LOBYTE(v299) = *(v219 + 216);
  v228 = *(v219 + 23);
  v296 = *(v219 + 21);
  v297 = v228;
  v298 = *(v219 + 25);
  v229 = *(v219 + 19);
  v294 = *(v219 + 17);
  v295 = v229;
  if (v299 == 254)
  {
    v230 = *(v245 + 184);
    v254 = *(v245 + 168);
    v255 = v230;
    v256 = *(v245 + 200);
    LOBYTE(v257) = *(v245 + 216);
    v231 = *(v245 + 152);
    v252 = *(v245 + 136);
    v253 = v231;
    sub_1D5E3A490(&v252, &v282, &qword_1EDF33718);
    v284 = v254;
    v285 = v255;
    v286 = v256;
    LOBYTE(v287) = v257;
    v232 = v252;
    v233 = v253;
  }

  else
  {
    v234 = *(v219 + 23);
    v284 = *(v219 + 21);
    v285 = v234;
    v286 = *(v219 + 25);
    LOBYTE(v287) = *(v219 + 216);
    v232 = *(v219 + 17);
    v233 = *(v219 + 19);
  }

  v282 = v232;
  v283 = v233;
  v235 = swift_allocObject();
  swift_beginAccess();
  *(v235 + 16) = v243;
  *(v235 + 24) = v242;
  *(v235 + 32) = v241;
  *(v235 + 40) = v244;
  swift_beginAccess();
  v236 = v275;
  *(v235 + 72) = v276;
  v237 = v278;
  *(v235 + 88) = v277;
  *(v235 + 104) = v237;
  *(v235 + 56) = v236;
  v238 = v285;
  *(v235 + 168) = v284;
  *(v235 + 184) = v238;
  *(v235 + 200) = v286;
  v239 = v283;
  *(v235 + 136) = v282;
  *(v235 + 48) = v189;
  *(v235 + 120) = v279;
  *(v235 + 128) = v227;
  *(v235 + 216) = v287;
  *(v235 + 152) = v239;
  sub_1D5E3A490(v280, &v252, &qword_1EDF273F0);

  sub_1D5E3A490(&v294, &v252, &qword_1EDF33718);
  return v235;
}