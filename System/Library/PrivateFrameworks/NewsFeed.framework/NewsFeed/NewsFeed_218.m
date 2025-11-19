uint64_t sub_1D6EE946C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6E && *(a1 + 8))
  {
    return (*a1 + 110);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6EE94C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6D)
  {
    *result = a2 - 110;
    if (a3 >= 0x6E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D6EE9528(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6EE95F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6EE9640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6EE96A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6EE970C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatPostPurchase.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = MEMORY[0x1E69E6F48];
  sub_1D5C302D0(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v30 = &v27 - v7;
  sub_1D5C302D0(0, &qword_1EDF19C30, sub_1D6EE9C4C, &type metadata for FormatPostPurchase.LegacyCodingKeys, v4);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EE9C4C();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5C30408();
    v14 = v30;
    sub_1D7264B0C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v29;
    if (v16)
    {
      v18 = sub_1D726433C();
      v19 = (v18 + 40);
      v20 = *(v18 + 16) + 1;
      while (--v20)
      {
        v21 = v19 + 2;
        v22 = *v19;
        v19 += 2;
        if (v22 >= 4)
        {
          v23 = *(v21 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v24 = v23;
          *(v24 + 8) = v22;
          *(v24 + 16) = &unk_1F5118870;
          *(v24 + 24) = xmmword_1D72874E0;
          swift_willThrow();

          (*(v28 + 8))(v14, v17);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D6EE9CA0();
    v31 = 0uLL;
    sub_1D726431C();
    if (v32)
    {
      if (v32 == 1)
      {
        (*(v28 + 8))(v14, v17);

        v25 = 0xB000000000000007;
      }

      else
      {
        v31 = xmmword_1D7279980;
        sub_1D5CA2FA0();
        sub_1D726431C();
        (*(v28 + 8))(v14, v17);

        v25 = v32;
      }
    }

    else
    {
      (*(v28 + 8))(v14, v17);

      v25 = 0xF000000000000007;
    }
  }

  else
  {
    sub_1D5CA2FA0();
    sub_1D726431C();
    (*(v10 + 8))(v13, v9);
    v25 = v31;
  }

  *v27 = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6EE9C4C()
{
  result = qword_1EDF2DB50;
  if (!qword_1EDF2DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB50);
  }

  return result;
}

unint64_t sub_1D6EE9CA0()
{
  result = qword_1EDF2DB58;
  if (!qword_1EDF2DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB58);
  }

  return result;
}

uint64_t FormatPostPurchase.encode(to:)(void *a1)
{
  sub_1D6EEA658();
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v77 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v79 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v75 = &v73 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v73 - v18;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v74 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v73 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v73 - v29;
  v31 = *v1 >> 57;
  v78 = *v1;
  v32 = v31 & 0x78 | v78 & 7;
  v34 = a1[3];
  v33 = a1[4];
  v35 = __swift_project_boxed_opaque_existential_1(a1, v34);
  if (v32 == 95)
  {
    sub_1D5C30408();
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v40, v34, &type metadata for FormatVersions.StarSkyC, v33, &off_1F51F6B18, v26);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v41 = sub_1D725BD1C();
    v42 = __swift_project_value_buffer(v41, qword_1EDFFCD00);
    (*(*(v41 - 8) + 16))(v15, v42, v41);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421ED8(1, v15);
    sub_1D5D2D168(v15, type metadata accessor for FormatVersionRequirement);
    v43 = v26;
    return sub_1D5D2D168(v43, sub_1D5D30DC4);
  }

  if (v32 == 127)
  {
    sub_1D5C30408();
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v36, v34, &type metadata for FormatVersions.StarSkyC, v33, &off_1F51F6B18, v30);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD00);
    (*(*(v37 - 8) + 16))(v19, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421ED8(0, v19);
    sub_1D5D2D168(v19, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2D168(v30, sub_1D5D30DC4);
  }

  v44 = sub_1D602437C(v35, v34, &type metadata for FormatVersions.StarSkyC, v33, &off_1F51F6B18);
  v46 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  if (v44)
  {
    sub_1D5C30408();
    v47 = v74;
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v48, v46, &type metadata for FormatVersions.StarSkyC, v45, &off_1F51F6B18, v74);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v49 = sub_1D725BD1C();
    v50 = __swift_project_value_buffer(v49, qword_1EDFFCD00);
    v51 = v75;
    (*(*(v49 - 8) + 16))(v75, v50, v49);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D643920C(2, v78, v51);
    sub_1D5D2D168(v51, type metadata accessor for FormatVersionRequirement);
    v43 = v47;
    return sub_1D5D2D168(v43, sub_1D5D30DC4);
  }

  sub_1D6EE9C4C();
  v52 = v77;
  sub_1D71B5B30(&type metadata for FormatPostPurchase.LegacyCodingKeys, v53, v46, &type metadata for FormatVersions.AzdenE, v45, &off_1F51F6C18, v77);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCD98);
  (*(*(v54 - 8) + 16))(v79, v55, v54);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v81 = v78;
  v56 = v76;
  v57 = (v52 + *(v76 + 44));
  v59 = *v57;
  v58 = v57[1];
  v60 = swift_allocObject();
  v75 = &v73;
  *(v60 + 16) = v59;
  *(v60 + 24) = v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  *(&v73 - 4) = sub_1D5B4AA6C;
  *(&v73 - 3) = 0;
  *(&v73 - 2) = sub_1D6EEB388;
  *(&v73 - 1) = v62;
  v78 = v62;
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = v58;
  sub_1D5C302D0(0, &qword_1EC897EC8, sub_1D6EE9C4C, &type metadata for FormatPostPurchase.LegacyCodingKeys, MEMORY[0x1E69E6F58]);
  sub_1D6EEA724(&qword_1EC897ED0, &qword_1EC897EC8, sub_1D6EE9C4C, &type metadata for FormatPostPurchase.LegacyCodingKeys);
  swift_retain_n();
  v64 = sub_1D72647CC();
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  v66 = __swift_project_boxed_opaque_existential_1((v52 + *(v56 + 36)), *(v52 + *(v56 + 36) + 24));
  MEMORY[0x1EEE9AC00](v66, v67);
  *(&v73 - 2) = sub_1D6EEAEC8;
  *(&v73 - 1) = v65;
  MEMORY[0x1EEE9AC00](v68, v69);
  *(&v73 - 4) = sub_1D60565EC;
  *(&v73 - 3) = (&v73 - 6);
  v71 = v79;
  v70 = v80;
  *(&v73 - 2) = sub_1D6EEAE2C;
  *(&v73 - 1) = v63;
  sub_1D5D2BC70(v71, sub_1D60566B0, v72, sub_1D60565EC, (&v73 - 6));
  if (v70)
  {
    sub_1D5D2D168(v71, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D60B27FC();
    sub_1D72647EC();
    sub_1D5D2D168(v71, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2D168(v52, sub_1D6EEA658);
}

void sub_1D6EEA658()
{
  if (!qword_1EC897EC0)
  {
    sub_1D5C302D0(255, &qword_1EC897EC8, sub_1D6EE9C4C, &type metadata for FormatPostPurchase.LegacyCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D6EEA724(&qword_1EC897ED0, &qword_1EC897EC8, sub_1D6EE9C4C, &type metadata for FormatPostPurchase.LegacyCodingKeys);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897EC0);
    }
  }
}

uint64_t sub_1D6EEA724(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C302D0(255, a2, a3, a4, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6EEA788(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696472616F626E6FLL;
  v4 = 0xEE00776F6C46676ELL;
  if (v2 != 1)
  {
    v3 = 7107189;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x696472616F626E6FLL;
  v8 = 0xEE00776F6C46676ELL;
  if (*a2 != 1)
  {
    v7 = 7107189;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
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

uint64_t sub_1D6EEA88C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6EEA92C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6EEA9B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6EEAA54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6EEB33C();
  *a1 = result;
  return result;
}

void sub_1D6EEAA84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEE00776F6C46676ELL;
  v5 = 0x696472616F626E6FLL;
  if (v2 != 1)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
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

uint64_t sub_1D6EEAB90()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6EEABEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6EEAC34@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6EEACAC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6EEAD04(uint64_t a1)
{
  v2 = sub_1D6EE9C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EEAD40(uint64_t a1)
{
  v2 = sub_1D6EE9C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6EEADB4(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  if (!v3)
  {
    return 0x6C727520726176;
  }

  v5 = v2;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  MEMORY[0x1DA6F9910](7107189, 0xE300000000000000);
  return v5;
}

uint64_t sub_1D6EEAE48(uint64_t a1)
{
  sub_1D5D290FC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatPostPurchase.LegacyCodingKeys;
  *(inited + 64) = sub_1D6EE9C4C();

  sub_1D5D291B8(inited);
  return a1;
}

BOOL _s8NewsFeed18FormatPostPurchaseO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1 >> 57) & 0x78 | *a1 & 7;
  v5 = (*a2 >> 57) & 0x78 | *a2 & 7;
  if (v4 == 95)
  {
    if (v5 != 95)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 != 127)
    {
      if ((v5 | 0x20) != 0x7F)
      {
        v8 = *a2;
        v9 = v2;
        sub_1D614F658(v3);
        sub_1D614F658(v2);
        sub_1D614F658(v3);
        sub_1D614F658(v2);
        v6 = static FormatURL.== infix(_:_:)(&v9, &v8);
        sub_1D614F69C(v2);
        sub_1D614F69C(v3);
        sub_1D614F69C(v3);
        sub_1D614F69C(v2);
        return v6;
      }

      goto LABEL_8;
    }

    if (v5 != 127)
    {
LABEL_8:
      sub_1D614F658(*a2);
      sub_1D614F658(v2);
      sub_1D614F69C(v2);
      sub_1D614F69C(v3);
      return 0;
    }
  }

  sub_1D614F69C(*a1);
  sub_1D614F69C(v3);
  return 1;
}

unint64_t sub_1D6EEAFE4(void *a1)
{
  a1[1] = sub_1D66678A8();
  a1[2] = sub_1D66A821C();
  result = sub_1D6EEB01C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EEB01C()
{
  result = qword_1EC897ED8;
  if (!qword_1EC897ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897ED8);
  }

  return result;
}

uint64_t sub_1D6EEB070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = *a1 >> 57;
  v4 = v3 & 0x18 | *a1 & 7;
  v5 = 128 - ((v3 >> 5) | (4 * v4));
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6EEB0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((126 - a2) >> 2) | (32 * (126 - a2)) | ((((126 - a2) >> 2) | (32 * (126 - a2))) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D6EEB128(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x7C)
  {
    v3 = a2 - 125;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
    v3 = (v2 | (v2 << 57)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

unint64_t sub_1D6EEB18C()
{
  result = qword_1EC897EE0;
  if (!qword_1EC897EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EE0);
  }

  return result;
}

unint64_t sub_1D6EEB1E4()
{
  result = qword_1EC897EE8;
  if (!qword_1EC897EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EE8);
  }

  return result;
}

unint64_t sub_1D6EEB23C()
{
  result = qword_1EDF2DB40;
  if (!qword_1EDF2DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB40);
  }

  return result;
}

unint64_t sub_1D6EEB294()
{
  result = qword_1EDF2DB48;
  if (!qword_1EDF2DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB48);
  }

  return result;
}

unint64_t sub_1D6EEB2E8()
{
  result = qword_1EDF2DB60;
  if (!qword_1EDF2DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB60);
  }

  return result;
}

uint64_t sub_1D6EEB33C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6EEB3A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v53[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D92CB0();
  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v53[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v19)
    {
      v39 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v66 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v67 = v39;
      v68 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v69 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v40 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v65 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v41 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v42 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v43 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v60 = v40;
      v61 = v41;
      v62 = v42;
      v63 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v59 = v43;
      sub_1D62B72DC(&v65, v58);
      sub_1D6D998FC(a1, a2, v64);
      result = sub_1D62B7338(&v65);
      if (!v4)
      {
        result = swift_allocObject();
        v44 = v64[1];
        *(result + 16) = v64[0];
        *(result + 32) = v44;
        v45 = v64[3];
        *(result + 48) = v64[2];
        *(result + 64) = v45;
        *a4 = result | 0x2000000000000000;
      }
    }

    else
    {
      v26 = *(a3 + 32);
      v65 = *(a3 + 16);
      v66 = v26;
      v27 = *(a3 + 64);
      v67 = *(a3 + 48);
      v68 = v27;
      v28 = *(a3 + 32);
      v59 = *(a3 + 16);
      v29 = *(a3 + 48);
      v30 = *(a3 + 64);
      v60 = v28;
      v61 = v29;
      v62 = v30;
      sub_1D5CFBAA8(&v65, v58);
      sub_1D6A8FE78(a1, a2, v53);
      result = sub_1D5D08954(&v65);
      if (!v4)
      {
        v31 = v57;
        if (v57 == 1)
        {
          *a4 = 0x8000000000000000;
        }

        else
        {
          v47 = v56;
          v48 = v55;
          v49 = v54;
          v51 = v53[0];
          v50 = v53[1];
          result = swift_allocObject();
          *(result + 16) = v51;
          *(result + 24) = v50;
          *(result + 32) = v49 & 1;
          *(result + 40) = v48;
          *(result + 48) = v47 & 1;
          *(result + 56) = v31;
          *a4 = result;
        }
      }
    }
  }

  else if (v19 == 2)
  {
    v32 = a3 & 0x1FFFFFFFFFFFFFFFLL;
    v33 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *(v32 + 24);

    v35 = sub_1D6F7D0D8(a2, a1, v33, v34);
    sub_1D6EEB3A8(a1, a2, v35);
  }

  else if (v19 == 3)
  {
    v20 = a3 & 0x1FFFFFFFFFFFFFFFLL;
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *(v20 + 24);
    v23 = *(v20 + 32);
    MEMORY[0x1EEE9AC00](v15, v16);
    *(&v52 - 2) = a1;
    *(&v52 - 1) = a2;

    v24 = sub_1D6F7EFF8(a1, sub_1D6EEBBB4, (&v52 - 4), v21, v22, v23);
    if (v4)
    {
    }

    else
    {
      v46 = v24;

      result = swift_allocObject();
      *(result + 16) = v46;
      *a4 = result | 0x4000000000000000;
    }
  }

  else
  {
    v36 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    result = sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v12);
    if (!v4)
    {
      LOBYTE(v65) = v36;
      sub_1D70E638C(v12, v18);
      sub_1D5C10040(v12);
      v37 = swift_allocBox();
      result = sub_1D6EEBB50(v18, v38);
      *a4 = v37 | 0x6000000000000000;
    }
  }

  return result;
}

uint64_t sub_1D6EEB7F0(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v2)
    {
      if (a2 >> 61 == 1)
      {
        v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v26 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v27 = v20;
        v28 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v25 = v21;
        v22 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v31 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v32 = v22;
        v33 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v29 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v30 = v23;
        v14 = sub_1D6D99C20(&v29, &v24);
        return v14 & 1;
      }

      goto LABEL_18;
    }

    if (a2 >> 61)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 32);
    v24 = *(a2 + 16);
    v25 = v10;
    v11 = *(a2 + 64);
    v26 = *(a2 + 48);
    v27 = v11;
    v12 = *(a1 + 32);
    v29 = *(a1 + 16);
    v30 = v12;
    v13 = *(a1 + 64);
    v31 = *(a1 + 48);
    v32 = v13;
    v14 = sub_1D6A902A8(&v29, &v24);
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        if (a2 >> 61 == 3)
        {
          v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

          LOBYTE(v3) = sub_1D6F7F2E0(v5, v4, v3, v6, v7, v8);

          return v3 & 1;
        }

        goto LABEL_18;
      }

      if (a2 >> 61 == 4)
      {
        v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
        return v14 & 1;
      }

      goto LABEL_18;
    }

    if (a2 >> 61 != 2)
    {
      goto LABEL_18;
    }

    v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    if ((sub_1D634B7E0(v16, v17) & 1) == 0)
    {

      goto LABEL_18;
    }

    v19 = sub_1D6EEB7F0(v15, v18);

    if ((v19 & 1) == 0)
    {
LABEL_18:
      v14 = 0;
      return v14 & 1;
    }

    v14 = 1;
  }

  return v14 & 1;
}

_OWORD *sub_1D6EEB9F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66A1E30(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D6EEBA48(void *a1)
{
  a1[1] = sub_1D5C76668();
  a1[2] = sub_1D6EEBA80();
  result = sub_1D6EEBAD4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EEBA80()
{
  result = qword_1EDF0FB38[0];
  if (!qword_1EDF0FB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0FB38);
  }

  return result;
}

unint64_t sub_1D6EEBAD4()
{
  result = qword_1EC897EF0;
  if (!qword_1EC897EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EF0);
  }

  return result;
}

unint64_t sub_1D6EEBB28(uint64_t a1)
{
  result = sub_1D66F36E8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EEBB50(uint64_t a1, uint64_t a2)
{
  sub_1D6D92CB0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s8NewsFeed20FormatFontAttributesV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 3);
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v13 = *(a2 + 3);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  if (v4 != 10)
  {
    if (v10 == 10 || (sub_1D6DE39F4(v4, v10) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (v6)
    {
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v11)
      {
        v16 = v12;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    if (v8)
    {
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v13)
      {
        v17 = v14;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    if (v9 == 4)
    {
      if (v15 != 4)
      {
        return 0;
      }
    }

    else if (v15 == 4 || (sub_1D6DE38B0(v9, v15) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (v10 == 10)
  {
    goto LABEL_6;
  }

  return 0;
}

unint64_t sub_1D6EEBD40(uint64_t a1)
{
  result = sub_1D6EEBD68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EEBD68()
{
  result = qword_1EC897EF8;
  if (!qword_1EC897EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EF8);
  }

  return result;
}

unint64_t sub_1D6EEBDBC(void *a1)
{
  a1[1] = sub_1D5C7983C();
  a1[2] = sub_1D66C479C();
  result = sub_1D6EEBDF4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EEBDF4()
{
  result = qword_1EC897F00;
  if (!qword_1EC897F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F00);
  }

  return result;
}

uint64_t sub_1D6EEBE48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 34))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 33);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 33);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D6EEBEAC(void *a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  v6 = *(a2 + 16);
  v7 = [a1 legibilityWeight];
  v8 = MEMORY[0x1E69E7CC8];
  if (v7 == -1)
  {
    if (!UIAccessibilityIsBoldTextEnabled())
    {
      goto LABEL_10;
    }
  }

  else if (!v7 || v7 != 1 && !UIAccessibilityIsBoldTextEnabled())
  {
    goto LABEL_10;
  }

  v9 = [objc_opt_self() ts_fontLegibilityWeightAttributeName];
  if (!v9)
  {
    sub_1D726207C();
    v9 = sub_1D726203C();
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v51 = sub_1D5BAFAD8();
  *&v50 = v10;
  sub_1D5B7C390(&v50, v49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D6D76B48(v49, v9, isUniquelyReferenced_nonNull_native);

LABEL_10:
  if ((v6 & 0xFF00) == 0x500)
  {
    return v8;
  }

  v12 = MEMORY[0x1E69E7CC8];
  if (LOBYTE(v2) <= 4u)
  {
    v15 = MEMORY[0x1E69659D0];
    v16 = MEMORY[0x1E6965980];
    v17 = MEMORY[0x1E69659A0];
    if (LOBYTE(v2) != 3)
    {
      v17 = MEMORY[0x1E6965988];
    }

    if (LOBYTE(v2) != 2)
    {
      v16 = v17;
    }

    if (LOBYTE(v2))
    {
      v15 = MEMORY[0x1E6965998];
    }

    if (LOBYTE(v2) <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v16;
    }

    goto LABEL_27;
  }

  if (LOBYTE(v2) <= 7u)
  {
    v13 = MEMORY[0x1E69659C0];
    if (LOBYTE(v2) != 6)
    {
      v13 = MEMORY[0x1E69659B8];
    }

    if (LOBYTE(v2) == 5)
    {
      v14 = MEMORY[0x1E69659B0];
    }

    else
    {
      v14 = v13;
    }

    goto LABEL_27;
  }

  if (LOBYTE(v2) == 8)
  {
    v14 = MEMORY[0x1E6965990];
    goto LABEL_27;
  }

  if (LOBYTE(v2) == 9)
  {
    v14 = MEMORY[0x1E69659A8];
LABEL_27:
    v18 = *v14;
    v19 = sub_1D726207C();
    v21 = v20;
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v51 = sub_1D5BAFAD8();
    *&v50 = v22;
    sub_1D5B7C390(&v50, v49);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v49, v19, v21, v23);
  }

  if (v5)
  {
    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v32 = sub_1D726207C();
  v34 = v33;
  v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v51 = sub_1D5BAFAD8();
  *&v50 = v35;
  sub_1D5B7C390(&v50, v49);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D5BAFB24(v49, v32, v34, v36);

  if ((v6 & 1) == 0)
  {
LABEL_30:
    v24 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v25 = sub_1D726207C();
    v27 = v26;

    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v51 = sub_1D5BAFAD8();
    *&v50 = v28;
    sub_1D5B7C390(&v50, v49);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v49, v25, v27, v29);
  }

LABEL_31:
  v30 = v6 >> 8;
  if (v6 >> 8 <= 1)
  {
    if (v30)
    {
      v31 = MEMORY[0x1E69DB8D8];
    }

    else
    {
      v31 = MEMORY[0x1E69DB8C8];
    }
  }

  else if (v30 == 2)
  {
    v31 = MEMORY[0x1E69DB8E0];
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_45;
    }

    v31 = MEMORY[0x1E69DB8D0];
  }

  v37 = *v31;
  v38 = [objc_opt_self() ts_fontSystemFontDesignTraitKey];
  v39 = sub_1D726207C();
  v41 = v40;

  type metadata accessor for SystemDesign(0);
  v51 = v42;
  *&v50 = v37;
  sub_1D5B7C390(&v50, v49);
  v43 = v37;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D5BAFB24(v49, v39, v41, v44);

LABEL_45:
  if (*(v12 + 16))
  {
    v45 = *MEMORY[0x1E69DB8F0];
    sub_1D5BB0DB0();
    v51 = v46;
    *&v50 = v12;
    sub_1D5B7C390(&v50, v49);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D6D76B48(v49, v45, v47);
  }

  else
  {
  }

  return v8;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B16ConfigCoderErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6EEC3BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6EEC40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1D6EEC464(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t SportsDataServiceContext.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t SportsDataServiceContext.description.getter()
{
  v1 = 0x68736572666572;
  if (*v0 != 1)
  {
    v1 = 0x6863746566657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t sub_1D6EEC5A0()
{
  result = qword_1EC897F08;
  if (!qword_1EC897F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F08);
  }

  return result;
}

uint64_t sub_1D6EEC5F4()
{
  v1 = 0x68736572666572;
  if (*v0 != 1)
  {
    v1 = 0x6863746566657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

void sub_1D6EEC660(uint64_t a1, uint64_t a2)
{
  sub_1D6761C6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedItem();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v14[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = type metadata accessor for FormatNodeBinderContext();
  v14[4] = &off_1F51B94C0;
  v14[0] = a2;

  sub_1D6D9723C(v14, v12);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v2)
  {
    sub_1D725BC1C();
  }

  else
  {
    sub_1D6761CC4(v12, v7);
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 48))(v7, 1, v8);
    sub_1D5D2067C(v7, sub_1D6761C6C);
    sub_1D725BC1C();
    sub_1D5D2067C(v12, type metadata accessor for SharedItem);
  }
}

uint64_t sub_1D6EEC864(uint64_t a1, char a2)
{
  sub_1D6761C6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedItem();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = type metadata accessor for FormatNodeContext();
  v16[4] = &off_1F51AF328;
  v16[0] = a1;

  sub_1D6D9723C(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1D5F2676C(v12, v7);
  (*(v9 + 56))(v7, 0, 1, v8);
  v13 = ((*(v9 + 48))(v7, 1, v8) == 1) ^ a2;
  sub_1D5D2067C(v7, sub_1D6761C6C);
  return v13 & 1;
}

unint64_t sub_1D6EECA3C(uint64_t a1)
{
  result = sub_1D6EECA64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EECA64()
{
  result = qword_1EC897F10;
  if (!qword_1EC897F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F10);
  }

  return result;
}

unint64_t sub_1D6EECAB8(void *a1)
{
  a1[1] = sub_1D6677D40();
  a1[2] = sub_1D67010C8();
  result = sub_1D6EECAF0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EECAF0()
{
  result = qword_1EC897F18;
  if (!qword_1EC897F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F18);
  }

  return result;
}

uint64_t sub_1D6EECB94(void *a1)
{
  v3 = v1;
  sub_1D6EF0460(0, &qword_1EC897FD0, sub_1D6EF040C, &type metadata for A12_V14.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EF040C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6EF04C8(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6EECDDC(uint64_t a1)
{
  v2 = sub_1D6EF040C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EECE18(uint64_t a1)
{
  v2 = sub_1D6EF040C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6EECE54@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6EF016C(a1, v6);
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

uint64_t sub_1D6EECEB4()
{
  sub_1D6EEFE10();

  return sub_1D725A24C();
}

uint64_t sub_1D6EECF30@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6EF0460(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6EECFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a2;
  v87 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v74 - v12;
  v14 = sub_1D725895C();
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for GroupLayoutContext();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v18);
  v88 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v74 - v22;
  v91 = type metadata accessor for GroupLayoutBindingContext();
  v83 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91, v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *v3;
  v82 = *(v3 + 1);
  v27 = v3[16];
  *&v94 = 4;
  if (GroupLayoutBindingContext.count(for:)(&v94))
  {
    sub_1D5C17350();
    swift_allocError();
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0;
    *(v28 + 40) = 13;
    return swift_willThrow();
  }

  else
  {
    v98 = v13;
    v92 = v9;
    v79 = a1;
    sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
    v78 = type metadata accessor for GroupLayoutContext;
    v77 = v23;
    sub_1D5BE3ED8(v89, v23, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v76 = sub_1D725893C();
    v75 = v30;
    (*(v81 + 8))(v17, v14);
    v96 = &type metadata for A12_V14;
    v81 = sub_1D5ECEC64();
    v97 = v81;
    v31 = v84;
    LOBYTE(v94) = v84;
    v32 = v82;
    *(&v94 + 1) = v82;
    v95 = v27;
    type metadata accessor for GroupLayoutKey();
    v33 = swift_allocObject();
    sub_1D5BEE8A0(v32, v27);
    v93[0] = sub_1D7264C5C();
    v93[1] = v34;
    v93[9] = 95;
    v93[10] = 0xE100000000000000;
    v93[7] = 45;
    v93[8] = 0xE100000000000000;
    sub_1D5BF4D9C();
    v35 = sub_1D7263A6C();
    v37 = v36;

    *(v33 + 16) = v35;
    *(v33 + 24) = v37;
    v38 = (v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v39 = v75;
    *v38 = v76;
    v38[1] = v39;
    sub_1D5B68374(&v94, v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v40 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDA904(v26, v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v83 + 56))(v33 + v40, 0, 1, v91);
    v41 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA904(v77, v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    v42 = *(v85 + 56);
    v85 = v33;
    v42(v33 + v41, 0, 1, v86);
    __swift_destroy_boxed_opaque_existential_1(&v94);
    v96 = &type metadata for A12_V14;
    v97 = v81;
    LOBYTE(v94) = v31;
    *(&v94 + 1) = v32;
    v95 = v27;
    v43 = v88;
    sub_1D5BE3ED8(v89, v88, v78);
    sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
    inited = swift_initStackObject();
    v45 = MEMORY[0x1E69E7CC0];
    v89 = inited;
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    v46 = (inited + 16);
    swift_beginAccess();
    sub_1D5BEE8A0(v32, v27);
    v47 = sub_1D5C0F8FC(0, 1, 1, v45);
    v49 = v47[2];
    v48 = v47[3];
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v51 = v87;
      v52 = v98;
      v47[2] = v50;
      v53 = &v47[2 * v49];
      v53[4] = sub_1D63106DC;
      v53[5] = 0;
      *v46 = v47;
      swift_endAccess();
      if (!*(*&v79[v91[14]] + 16))
      {
        break;
      }

      sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v50 = sub_1D5C14D80(v55);

      if (!v50)
      {
        break;
      }

      v43 = *(v50 + 16);
      if (v43)
      {
        v56 = 0;
        v49 = MEMORY[0x1E69E7CC0];
        v46 = v90;
        v47 = v92;
        while (1)
        {
          v48 = *(v50 + 16);
          if (v56 >= v48)
          {
            break;
          }

          v57 = (v46[80] + 32) & ~v46[80];
          v58 = *(v46 + 9);
          sub_1D5BE3ED8(v50 + v57 + v58 * v56, v52, type metadata accessor for FeedHeadline);
          sub_1D5BDA904(v52, v47, type metadata accessor for FeedHeadline);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93[0] = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v49 + 16) + 1, 1);
            v46 = v90;
            v49 = v93[0];
          }

          v61 = *(v49 + 16);
          v60 = *(v49 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_1D5C0F91C(v60 > 1, v61 + 1, 1);
            v46 = v90;
            v49 = v93[0];
          }

          ++v56;
          *(v49 + 16) = v61 + 1;
          v47 = v92;
          sub_1D5BDA904(v92, v49 + v57 + v61 * v58, type metadata accessor for FeedHeadline);
          v52 = v98;
          if (v43 == v56)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
LABEL_22:
        if ((*v79 & 1) == 0)
        {

          v66 = sub_1D62F071C(v49);

          v49 = v66;
        }

        v46 = v79;
        v67 = *&v79[v91[18]];
        v68 = *&v79[v91[19]];
        if (__OFSUB__(v67, v68))
        {
          goto LABEL_36;
        }

        v69 = sub_1D5C0FAD4(v49, v67 - v68);
        v47 = sub_1D5C11E10(&unk_1F5113C70, v69, v50);

        if (v47)
        {

LABEL_28:
          strcpy(v93, "FeedHeadline");
          BYTE5(v93[1]) = 0;
          HIWORD(v93[1]) = -5120;
          v93[2] = 0;
          v93[3] = 0;

          v71 = sub_1D5C107C4(v70);

          sub_1D5BDACA8(v93, v71);
          swift_setDeallocating();

          v43 = v88;
          v51 = v87;
          goto LABEL_29;
        }

        v47 = sub_1D5C11E10(&unk_1F5113C70, v49, v50);

        if (v47)
        {
          goto LABEL_28;
        }

        v93[0] = &unk_1F5113C70;
        v4 = v80;
        sub_1D5E239F4(v93);
        if (v4)
        {
          goto LABEL_37;
        }

        v63 = v93[0];
        v48 = *(v93[0] + 2);
        v43 = v88;
        if (v48)
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
LABEL_34:
      v47 = sub_1D5C0F8FC((v48 > 1), v50, 1, v47);
    }

    v62 = v80;
    if (!qword_1F5113C90)
    {

      v47 = MEMORY[0x1E69E7CC0];
LABEL_29:
      v72 = type metadata accessor for A12_V14.Bound();
      v51[3] = v72;
      v51[4] = sub_1D6EF04C8(&qword_1EC897F30, type metadata accessor for A12_V14.Bound);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
      *boxed_opaque_existential_1 = v85;
      sub_1D5B63F14(&v94, (boxed_opaque_existential_1 + 1));
      result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v72 + 24), type metadata accessor for GroupLayoutContext);
      *(boxed_opaque_existential_1 + *(v72 + 28)) = v47;
      return result;
    }

    v93[0] = &unk_1F5113C70;
    v4 = v80;
    sub_1D5E239F4(v93);
    if (!v62)
    {

      v63 = v93[0];
      if (*(v93[0] + 2))
      {
LABEL_19:
        v64 = *(v63 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v65, "FeedHeadline");
        v65[13] = 0;
        *(v65 + 7) = -5120;
        *(v65 + 2) = 0;
        *(v65 + 3) = 0;
        *(v65 + 4) = 0;
        *(v65 + 5) = v64;
        *(v65 + 6) = 0;
        *(v65 + 7) = 0;
        v65[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE798C(v43, type metadata accessor for GroupLayoutContext);
        return __swift_destroy_boxed_opaque_existential_1(&v94);
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

LABEL_37:

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6EEDB8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(type metadata accessor for A12_V14.Bound() + 28));
  v26 = v2;
  v10 = sub_1D5ECA650(sub_1D6EEFD94, v25, v9);
  v11 = *MEMORY[0x1E69D7130];
  v12 = sub_1D7259D1C();
  (*(*(v12 - 8) + 104))(v8, v11, v12);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v24 = v10;
  sub_1D6EEFEB8(0, &qword_1EC897F50, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v23 = sub_1D725A4CC();
  sub_1D725A4DC();
  v13 = v30;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v14 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v21 = v29;
  v22 = v28;
  v27 = v13;
  *&v28 = v10;
  MEMORY[0x1EEE9AC00](v14, v15);

  v16 = sub_1D725C00C();

  *a1 = 0;
  v17 = v22;
  *(a1 + 24) = v21;
  *(a1 + 8) = v17;
  *&v28 = v16;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v18 = sub_1D72623BC();

  v20 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v18;
  *(a1 + 48) = v20;
  return result;
}

uint64_t sub_1D6EEDF40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  v11 = a2 + *(type metadata accessor for A12_V14.Bound() + 24);
  v12 = type metadata accessor for GroupLayoutContext();
  v13 = *(*&v11[*(v12 + 40)] + 16);
  v14 = *&v11[*(v12 + 32)];
  sub_1D5B68374(v13 + 16, v21);
  sub_1D5B68374(v13 + 56, v20);
  v15 = v14 * *(v13 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v21, inited + 16);
  sub_1D5B63F14(v20, inited + 56);
  *(inited + 96) = v15;
  v19 = 2;

  FeedLayoutStylerFactory.styler(withHeading:)(&v19, v22);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v22, a3);
}

uint64_t sub_1D6EEE0C8(uint64_t a1, uint64_t a2)
{
  sub_1D6EF0460(0, &qword_1EC897F68, sub_1D6EEFDBC, &type metadata for A12_V14.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6EEFEB8(0, &qword_1EC897F70, MEMORY[0x1E69D7150]);
  sub_1D6EEFE74(&qword_1EC897F78, &qword_1EC897F70, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6EEE2B4(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_1D6EEFDBC;
  sub_1D6EF0460(0, &qword_1EC897F68, sub_1D6EEFDBC, &type metadata for A12_V14.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v22 - v7);
  v26 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *(v5 + 104);
  v12(v8, *MEMORY[0x1E69D73C0], v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6EEFEB8(0, &qword_1EC897F80, MEMORY[0x1E69D6F38]);
  v22[1] = v14;
  sub_1D6EEFE74(&qword_1EC897F88, &qword_1EC897F80, v13);
  sub_1D7259A9C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v26 = a1;
  v12(v8, *MEMORY[0x1E69D74A8], v4);
  sub_1D6EEFF3C();
  sub_1D6EF0460(0, &qword_1EC897F98, v23, &type metadata for A12_V14.Layout, MEMORY[0x1E69D70D8]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69D7098], v17);
  v25 = v24;
  sub_1D72599EC();

  return (v15)(v8, v4);
}

uint64_t sub_1D6EEE620(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  sub_1D6EF0460(0, &qword_1EC897F68, sub_1D6EEFDBC, &type metadata for A12_V14.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v19 - v8);
  v26 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  *v9 = v10;
  v22 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v11(v9);
  v19 = v11;
  v25 = a2;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D6EEFEB8(0, &qword_1EC897F80, MEMORY[0x1E69D6F38]);
  sub_1D6EEFE74(&qword_1EC897F88, &qword_1EC897F80, v12);
  sub_1D7259A2C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = v21;
  v26 = v21;
  v15 = swift_allocObject();
  *(v15 + 16) = 4;
  *v9 = v15;
  (v11)(v9, v22, v5);
  v16 = v20;
  v24 = v20;
  sub_1D7259A2C();
  v13(v9, v5);
  v26 = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 4;
  *v9 = v17;
  (v19)(v9, v22, v5);
  v23 = v16;
  sub_1D7259A2C();
  return (v13)(v9, v5);
}

uint64_t sub_1D6EEE960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EF0460(0, &qword_1EC897F68, sub_1D6EEFDBC, &type metadata for A12_V14.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE798C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6EEFEB8(0, &qword_1EC897F80, MEMORY[0x1E69D6F38]);
  sub_1D6EEFE74(&qword_1EC897F88, &qword_1EC897F80, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6EEEF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EF0460(0, &qword_1EC897F68, sub_1D6EEFDBC, &type metadata for A12_V14.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE798C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6EEFEB8(0, &qword_1EC897F80, MEMORY[0x1E69D6F38]);
  sub_1D6EEFE74(&qword_1EC897F88, &qword_1EC897F80, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6EEF504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EF0460(0, &qword_1EC897F68, sub_1D6EEFDBC, &type metadata for A12_V14.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE798C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6EEFEB8(0, &qword_1EC897F80, MEMORY[0x1E69D6F38]);
  sub_1D6EEFE74(&qword_1EC897F88, &qword_1EC897F80, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6EEFADC@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V14.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6EEFBF0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6EEFC20();
  result = sub_1D6EEFC74();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6EEFC20()
{
  result = qword_1EC897F20;
  if (!qword_1EC897F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F20);
  }

  return result;
}

unint64_t sub_1D6EEFC74()
{
  result = qword_1EC897F28;
  if (!qword_1EC897F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F28);
  }

  return result;
}

uint64_t type metadata accessor for A12_V14.Bound()
{
  result = qword_1EC897F38;
  if (!qword_1EC897F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6EEFD3C(uint64_t a1)
{
  result = sub_1D6EF04C8(&qword_1EC897F48, type metadata accessor for A12_V14.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EEFDBC()
{
  result = qword_1EC897F58;
  if (!qword_1EC897F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F58);
  }

  return result;
}

unint64_t sub_1D6EEFE10()
{
  result = qword_1EC897F60;
  if (!qword_1EC897F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897F60);
  }

  return result;
}

uint64_t sub_1D6EEFE74(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6EEFEB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6EEFEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V14.Layout;
    v8[1] = &type metadata for A12_V14.Layout.Attributes;
    v8[2] = sub_1D6EEFDBC();
    v8[3] = sub_1D6EEFE10();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6EEFF3C()
{
  if (!qword_1EC897F90)
  {
    sub_1D6EF0460(255, &qword_1EC897F98, sub_1D6EEFDBC, &type metadata for A12_V14.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897F90);
    }
  }
}

unint64_t sub_1D6EF0010()
{
  result = qword_1EC897FA0;
  if (!qword_1EC897FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FA0);
  }

  return result;
}

unint64_t sub_1D6EF0068()
{
  result = qword_1EC897FA8;
  if (!qword_1EC897FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FA8);
  }

  return result;
}

unint64_t sub_1D6EF00C0()
{
  result = qword_1EC897FB0;
  if (!qword_1EC897FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FB0);
  }

  return result;
}

unint64_t sub_1D6EF0118()
{
  result = qword_1EC897FB8;
  if (!qword_1EC897FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FB8);
  }

  return result;
}

uint64_t sub_1D6EF016C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6EF0460(0, &qword_1EC897FC0, sub_1D6EF040C, &type metadata for A12_V14.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EF040C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6EF04C8(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6EF040C()
{
  result = qword_1EC897FC8;
  if (!qword_1EC897FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FC8);
  }

  return result;
}

void sub_1D6EF0460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6EF04C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6EF0524()
{
  result = qword_1EC897FD8;
  if (!qword_1EC897FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FD8);
  }

  return result;
}

unint64_t sub_1D6EF057C()
{
  result = qword_1EC897FE0;
  if (!qword_1EC897FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FE0);
  }

  return result;
}

unint64_t sub_1D6EF05D4()
{
  result = qword_1EC897FE8;
  if (!qword_1EC897FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897FE8);
  }

  return result;
}

uint64_t static FormatSizeColumn.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D7261FBC())
  {
    v4 = type metadata accessor for FormatSizeColumn();
    v5 = *(a1 + *(v4 + 36)) ^ *(a2 + *(v4 + 36)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D6EF0708(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EF0744(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

void *PuzzleHistoryServiceChange.historyModel.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return sub_1D6EF0808(v2, v3, *(v1 + 16));
}

void *sub_1D6EF0808(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    v4 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t PuzzleHistoryServiceChange.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v13 = 0x286465766F6D6572;
      v8 = [v1 puzzleID];
      v9 = sub_1D726207C();
      v11 = v10;

      MEMORY[0x1DA6F9910](v9, v11);
      goto LABEL_7;
    }

    sub_1D7263D4C();

    v13 = 0x286465676E616863;
    v2 = [v1 puzzleID];
  }

  else
  {
    sub_1D7263D4C();

    v13 = 0x286465646461;
    v2 = [v1 puzzleID];
  }

  v3 = v2;
  v4 = sub_1D726207C();
  v6 = v5;

  MEMORY[0x1DA6F9910](v4, v6);

  MEMORY[0x1DA6F9910](0x736572676F72702CLL, 0xEF3D6C6576654C73);
  [v1 progressLevel];
  v7 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v7);
LABEL_7:

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v13;
}

uint64_t dispatch thunk of PuzzleHistoryServiceType.syncHistory()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5E97EA8;

  return v7(a1, a2);
}

uint64_t sub_1D6EF0CC4()
{

  v1 = *(v0 + 72);
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleHistoryService: Failed to update puzzle configuration [%@]", v6, 0xCu);
    sub_1D5FE45C0(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D6EF0E68()
{
  v1 = v0[11];

  swift_unknownObjectRelease();
  v2 = v0[16];
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v3 = sub_1D725C42C();
  __swift_project_value_buffer(v3, qword_1EDFFCFA8);
  v4 = v2;
  v5 = sub_1D725C3FC();
  v6 = sub_1D7262EBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D5B42000, v5, v6, "PuzzleHistoryService: Failed to update puzzle configuration [%@]", v7, 0xCu);
    sub_1D5FE45C0(v8);
    MEMORY[0x1DA6FD500](v8, -1, -1);
    MEMORY[0x1DA6FD500](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D6EF10B8()
{
  sub_1D5B6C104(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v10 = sub_1D726203C();
  v11 = [v9 puzzleHistoryItemForPuzzleID_];

  if (!v11)
  {
    v14 = sub_1D725891C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v12 = [v11 firstCompletedDate];

  if (v12)
  {
    sub_1D72588BC();

    v13 = sub_1D725891C();
    (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  }

  else
  {
    v13 = sub_1D725891C();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  }

  sub_1D5DF42F8(v4, v8);
  sub_1D725891C();
  v15 = 1;
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v8);
  return v15;
}

BOOL sub_1D6EF1304()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D726203C();
  v3 = [v1 puzzleHistoryItemForPuzzleID_];

  if (v3)
  {
    v4 = [v3 scoreType];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 integerValue];

      return v6 == 1;
    }
  }

  return 0;
}

uint64_t sub_1D6EF13B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v6 = sub_1D726203C();
  if (a3)
  {
    a3 = sub_1D726265C();
  }

  v7 = [v5 newestNotCompletedPuzzleIDForPuzzleTypeID:v6 excludingPuzzleIDs:a3];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1D726207C();

  return v8;
}

void sub_1D6EF145C(uint64_t *a1, void *a2)
{
  v5 = sub_1D725891C();
  v37 = *(v5 - 8);
  v38 = v5;
  *&v7 = MEMORY[0x1EEE9AC00](v5, v6).n128_u64[0];
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *a1;
  v42 = a1[1];
  v43 = v11;
  v12 = *(a1 + 16);
  v13 = a1[4];
  LOBYTE(v8) = *(a1 + 48);
  v14 = *(a1 + 49);
  v15 = a1[7];
  v16 = a1[8];
  v34 = a1[3];
  v35 = v15;
  v40 = *(a1 + 72);
  v41 = v12;
  v17 = a1[11];
  v36 = a1[10];
  if ((v8 & 1) == 0)
  {
    v18 = a1[5];
    v19 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v10 = [v19 initWithInteger_];
  }

  v44 = v10;
  if (v14 == 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v39 = *(v2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v21 = [a2 identifier];
  if (!v21)
  {
    sub_1D726207C();
    v21 = sub_1D726203C();
  }

  v22 = [objc_msgSend(a2 puzzleType)];
  swift_unknownObjectRelease();
  if (!v22)
  {
    sub_1D726207C();
    v22 = sub_1D726203C();
  }

  if (v13 >> 60 != 15)
  {
    v23 = sub_1D725865C();
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v23 = 0;
  if (v16)
  {
LABEL_14:
    v16 = sub_1D726203C();
  }

LABEL_15:
  if (v17)
  {
    v17 = sub_1D726203C();
  }

  v24 = [a2 difficulty];
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v26 = [a2 publishDate];
  if (v26)
  {
    v27 = v26;
    sub_1D72588BC();

    v28 = sub_1D725881C();
    (*(v37 + 8))(v9, v38);
  }

  else
  {
    v28 = 0;
  }

  v29 = [a2 behaviorFlags];
  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  LOBYTE(v33) = v41;
  LOBYTE(v32) = v40;
  v31 = v44;
  [v39 updatePuzzle:v21 puzzleTypeID:v22 progressData:v23 progressLevel:v43 score:v44 scoreType:v20 rankID:v16 usedReveal:v32 playDuration:v42 isSolved:v33 progressMovesDescription:v17 difficulty:v25 publishDate:v28 behaviorFlags:v30];
}

void sub_1D6EF17E8(void *a1)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v10 = [a1 identifier];
  if (!v10)
  {
    sub_1D726207C();
    v10 = sub_1D726203C();
  }

  v11 = [a1 difficulty];
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v13 = [a1 publishDate];
  if (v13)
  {
    v14 = v13;
    sub_1D72588BC();

    v15 = sub_1D725881C();
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v15 = 0;
  }

  v16 = [a1 behaviorFlags];
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  [v9 updatePuzzle:v10 difficulty:v12 publishDate:v15 behaviorFlags:v17];
}

uint64_t sub_1D6EF19D4(void *a1)
{
  v34[0] = sub_1D7258C2C();
  v2 = *(v34[0] - 8);
  MEMORY[0x1EEE9AC00](v34[0], v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6C104(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v34 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v34 - v16;
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = v34 - v21;
  v23 = [a1 publishDate];
  if (v23)
  {
    v24 = v23;
    sub_1D72588BC();

    v25 = sub_1D725891C();
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  }

  else
  {
    v25 = sub_1D725891C();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  }

  sub_1D5DF42F8(v13, v17);
  sub_1D725891C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v17, 1, v25) == 1)
  {
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v17);
    v28 = 1;
  }

  else
  {
    sub_1D7258BCC();
    sub_1D725873C();
    (*(v2 + 8))(v5, v34[0]);
    (*(v26 + 8))(v17, v25);
    v28 = 0;
  }

  (*(v26 + 56))(v22, v28, 1, v25);
  v29 = *(v34[1] + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  sub_1D5B76E3C(v22, v9);
  if (v27(v9, 1, v25) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1D725881C();
    (*(v26 + 8))(v9, v25);
  }

  v31 = [a1 identifier];
  if (!v31)
  {
    sub_1D726207C();
    v31 = sub_1D726203C();
  }

  v32 = [objc_msgSend(a1 puzzleType)];
  swift_unknownObjectRelease();
  if (!v32)
  {
    sub_1D726207C();
    v32 = sub_1D726203C();
  }

  [v29 setFirstCompletedDate:v30 forPuzzleID:v31 puzzleTypeID:v32];

  return _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v22);
}

uint64_t sub_1D6EF1E08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7261B9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v8 = sub_1D726308C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1D7261BBC();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v9 = OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistoryObservers;
    swift_beginAccess();
    v4 = *(v2 + v9);
    v17 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v10 = sub_1D7263BFC();
LABEL_4:

  if (v10)
  {
    v15 = v9;
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v2, v4);
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = v16;
          v13 = v17;
          v9 = v15;
          goto LABEL_19;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
      {
      }

      else
      {
        v9 = &v17;
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v2;
      if (v11 == v10)
      {
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v2 + v9) = v13;
}

uint64_t sub_1D6EF20A8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  type metadata accessor for FCFetchResult(0);
  *v3 = v0;
  v3[1] = sub_1D6EF21A4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x74736948636E7973, 0xED0000292879726FLL, sub_1D6EF400C, v2, v4);
}

uint64_t sub_1D6EF21A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D676C9B8;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D6EF22C0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D726203C();
  v3 = sub_1D726203C();
  [v1 addPuzzleToPuzzleHistory:v2 puzzleTypeID:v3];
}

void sub_1D6EF2370()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D726203C();
  [v1 removePuzzleFromPuzzleHistory_];
}

uint64_t sub_1D6EF23F8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D725881C();
  v3 = [v1 allSortedPuzzleIDsSinceLastPlayedDate_];

  v4 = sub_1D726267C();
  return v4;
}

BOOL sub_1D6EF24DC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D726203C();
  v3 = [v1 puzzleHistoryItemForPuzzleID_];

  if (v3)
  {
  }

  return v3 != 0;
}

id sub_1D6EF255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *(*v5 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v8 = sub_1D726203C();
  v9 = [v7 *a5];

  return v9;
}

id sub_1D6EF25E0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D726203C();
  v3 = [v1 puzzleHistoryItemForPuzzleID_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 usedReveal];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 BOOLValue];

  return v5;
}

id sub_1D6EF26AC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D726203C();
  v3 = [v1 puzzleHistoryItemForPuzzleID_];

  return v3;
}

void sub_1D6EF2708(uint64_t a1, uint64_t a2)
{
  sub_1D6EF4014();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v9);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1D6EF4084;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6EF2920;
  aBlock[3] = &block_descriptor_107;
  v13 = _Block_copy(aBlock);

  [v10 syncWithCompletion_];
  _Block_release(v13);
}

uint64_t sub_1D6EF28B8(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_1D6EF4014();
    return sub_1D726286C();
  }

  else
  {
    sub_1D6EF4014();
    return sub_1D726287C();
  }
}

void sub_1D6EF2920(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *sub_1D6EF2998(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v51 = a3;
  if (v6)
  {
    v52[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    v9 = 0;
    v7 = v52[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v9, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 puzzleID];
      v13 = sub_1D726207C();
      v15 = v14;

      v52[0] = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
        v7 = v52[0];
      }

      ++v9;
      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v6 != v9);
    a3 = v51;
  }

  v19 = sub_1D5BA8750(v7, MEMORY[0x1E69E7CD0]);

  if (a2 >> 62)
  {
    v20 = sub_1D7263BFC();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v52[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v21 = v52[0];
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1DA6FB460](v22, a2);
        }

        else
        {
          v23 = *(a2 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = [v23 puzzleID];
        v26 = sub_1D726207C();
        v28 = v27;

        v52[0] = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D5BFC364((v29 > 1), v30 + 1, 1);
          v21 = v52[0];
        }

        ++v22;
        *(v21 + 16) = v30 + 1;
        v31 = v21 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
      }

      while (v20 != v22);
      a3 = v51;
      goto LABEL_25;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_25:
  v32 = sub_1D5BA8750(v21, v19);

  if (a3 >> 62)
  {
    v33 = sub_1D7263BFC();
  }

  else
  {
    v33 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x1E69E7CC0];
  if (!v33)
  {
    goto LABEL_36;
  }

  v52[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v34 = v52[0];
    v36 = a3;
    v37 = a3 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v38 = MEMORY[0x1DA6FB460](v35, v36);
      }

      else
      {
        v38 = *(v36 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = [v38 puzzleID];
      v41 = sub_1D726207C();
      v43 = v42;

      v52[0] = v34;
      v45 = *(v34 + 16);
      v44 = *(v34 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D5BFC364((v44 > 1), v45 + 1, 1);
        v34 = v52[0];
      }

      ++v35;
      *(v34 + 16) = v45 + 1;
      v46 = v34 + 16 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
      v36 = v51;
    }

    while (v33 != v35);
LABEL_36:
    v47 = sub_1D5BA8750(v34, v32);

    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = sub_1D5B9A6D8(*(v47 + 16), 0);
      v50 = sub_1D5B9A6EC(v52, v49 + 4, v48, v47);
      sub_1D5BA45DC(v52[0], v52[1], v52[2], v52[3], v52[4]);
      if (v50 == v48)
      {
        return v49;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1D6EF2DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  sub_1D726290C();
  v8[15] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[16] = v10;
  v8[17] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6EF2E48, v10, v9);
}

uint64_t sub_1D6EF2E48()
{
  v1 = (v0[10] + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1D6EF2F80;
  v5 = v0[11];

  return v7(v5, v2, v3);
}

uint64_t sub_1D6EF2F80(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_1D6EF3CF0;
  }

  else
  {
    v7 = sub_1D6EF30C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D6EF30C4()
{
  v124 = v0;
  v1 = *(v0 + 152);

  if (v1 >> 62)
  {
    goto LABEL_29;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_3:
    v3 = 0;
    v116 = v1 & 0xFFFFFFFFFFFFFF8;
    v118 = v1 & 0xC000000000000001;
    v113 = v112[19] + 32;
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v118)
      {
        v6 = MEMORY[0x1DA6FB460](v3, v112[19]);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v3 >= *(v116 + 16))
        {
          goto LABEL_26;
        }

        v6 = *(v113 + 8 * v3);
        swift_unknownObjectRetain();
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v2 = sub_1D7263BFC();
          if (!v2)
          {
            goto LABEL_30;
          }

          goto LABEL_3;
        }
      }

      v8 = [v6 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v4;
      v1 = v4;
      v13 = sub_1D5B69D90(v9, v11);
      v15 = v4[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_27;
      }

      v19 = v14;
      if (v4[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v24 = v13;
      sub_1D6D7DB18();
      v13 = v24;
      if (v19)
      {
LABEL_4:
        v1 = v13;

        v5 = v123;
        *(v123[7] + 8 * v1) = v6;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v4 = v5;
        goto LABEL_5;
      }

LABEL_15:
      v1 = v123;
      v123[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (*(v1 + 48) + 16 * v13);
      *v21 = v9;
      v21[1] = v11;
      *(*(v1 + 56) + 8 * v13) = v6;
      swift_unknownObjectRelease();

      v22 = *(v1 + 16);
      v17 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v17)
      {
        goto LABEL_28;
      }

      *(v1 + 16) = v23;
      v4 = v1;
LABEL_5:
      ++v3;
      if (v7 == v2)
      {
        goto LABEL_31;
      }
    }

    sub_1D6D66648(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_1D5B69D90(v9, v11);
    if ((v19 & 1) != (v20 & 1))
    {

      return sub_1D726493C();
    }

LABEL_14:
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

LABEL_30:
  v4 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v26 = v112[12];

  if (v26 >> 62)
  {
LABEL_53:
    v119 = v26 & 0xFFFFFFFFFFFFFF8;
    v27 = sub_1D7263BFC();
    if (v27)
    {
      goto LABEL_33;
    }

LABEL_54:
    v117 = MEMORY[0x1E69E7CC0];
    goto LABEL_55;
  }

  v119 = v26 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_54;
  }

LABEL_33:
  v28 = 0;
  v29 = v26 & 0xC000000000000001;
  v30 = v112[12] + 32;
  v117 = MEMORY[0x1E69E7CC0];
  do
  {
    v31 = v28;
    while (1)
    {
      if (v29)
      {
        v32 = MEMORY[0x1DA6FB460](v31, v112[12]);
      }

      else
      {
        if (v31 >= *(v119 + 16))
        {
          goto LABEL_52;
        }

        v32 = *(v30 + 8 * v31);
      }

      v33 = v32;
      v28 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v34 = [v32 puzzleID];
      v26 = sub_1D726207C();
      v36 = v35;

      if (v4[2])
      {
        break;
      }

LABEL_36:

      ++v31;
      if (v28 == v27)
      {
        goto LABEL_55;
      }
    }

    v26 = sub_1D5B69D90(v26, v36);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_36;
    }

    v26 = *(v4[7] + 8 * v26);
    swift_unknownObjectRetain();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    if ((v39 & 1) == 0)
    {
      v117 = sub_1D6996648(0, *(v117 + 2) + 1, 1, v117);
    }

    v41 = *(v117 + 2);
    v40 = *(v117 + 3);
    if (v41 >= v40 >> 1)
    {
      v117 = sub_1D6996648((v40 > 1), v41 + 1, 1, v117);
    }

    *(v117 + 2) = v41 + 1;
    v42 = &v117[24 * v41];
    *(v42 + 4) = v33;
    *(v42 + 5) = v26;
    v42[48] = 0;
  }

  while (v28 != v27);
LABEL_55:
  v43 = v112[13];
  if (!(v43 >> 62))
  {
    v120 = v43 & 0xFFFFFFFFFFFFFF8;
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v112[13];
    if (v44)
    {
      goto LABEL_57;
    }

LABEL_78:
    v114 = MEMORY[0x1E69E7CC0];
    goto LABEL_79;
  }

  while (2)
  {
    v120 = v43 & 0xFFFFFFFFFFFFFF8;
    v44 = sub_1D7263BFC();
    v45 = v112[13];
    if (!v44)
    {
      goto LABEL_78;
    }

LABEL_57:
    v46 = 0;
    v47 = v43 & 0xC000000000000001;
    v48 = v45 + 32;
    v114 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v49 = v46;
LABEL_61:
    if (v47)
    {
      v50 = MEMORY[0x1DA6FB460](v49, v112[13]);
    }

    else
    {
      if (v49 >= *(v120 + 16))
      {
        goto LABEL_76;
      }

      v50 = *(v48 + 8 * v49);
    }

    v51 = v50;
    v46 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      continue;
    }

    break;
  }

  v52 = [v50 puzzleID];
  v43 = sub_1D726207C();
  v54 = v53;

  if (!v4[2])
  {

    goto LABEL_60;
  }

  v43 = sub_1D5B69D90(v43, v54);
  v56 = v55;

  if ((v56 & 1) == 0)
  {
LABEL_60:

    ++v49;
    if (v46 == v44)
    {
      goto LABEL_79;
    }

    goto LABEL_61;
  }

  v43 = *(v4[7] + 8 * v43);
  swift_unknownObjectRetain();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  if ((v57 & 1) == 0)
  {
    v114 = sub_1D6996648(0, *(v114 + 2) + 1, 1, v114);
  }

  v59 = *(v114 + 2);
  v58 = *(v114 + 3);
  if (v59 >= v58 >> 1)
  {
    v114 = sub_1D6996648((v58 > 1), v59 + 1, 1, v114);
  }

  *(v114 + 2) = v59 + 1;
  v60 = &v114[24 * v59];
  *(v60 + 4) = v51;
  *(v60 + 5) = v43;
  v60[48] = 1;
  if (v46 != v44)
  {
    goto LABEL_58;
  }

LABEL_79:
  v61 = v112[14];
  if (v61 >> 62)
  {
LABEL_120:
    v121 = v61 & 0xFFFFFFFFFFFFFF8;
    v62 = sub_1D7263BFC();
    v63 = v112[14];
  }

  else
  {
    v121 = v61 & 0xFFFFFFFFFFFFFF8;
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = v112[14];
  }

  v64 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    v65 = 0;
    v66 = v61 & 0xC000000000000001;
    v67 = v63 + 32;
    do
    {
      v110 = v64;
      v68 = v65;
      while (1)
      {
        if (v66)
        {
          v69 = MEMORY[0x1DA6FB460](v68, v112[14]);
        }

        else
        {
          if (v68 >= *(v121 + 16))
          {
            goto LABEL_119;
          }

          v69 = *(v67 + 8 * v68);
        }

        v70 = v69;
        v65 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v71 = [v69 puzzleID];
        v61 = sub_1D726207C();
        v73 = v72;

        if (v4[2])
        {
          break;
        }

LABEL_85:

        ++v68;
        if (v65 == v62)
        {
          v64 = v110;
          goto LABEL_101;
        }
      }

      v61 = sub_1D5B69D90(v61, v73);
      v75 = v74;

      if ((v75 & 1) == 0)
      {
        goto LABEL_85;
      }

      v61 = *(v4[7] + 8 * v61);
      swift_unknownObjectRetain();
      v76 = v110;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      if ((v77 & 1) == 0)
      {
        v76 = sub_1D6996648(0, *(v110 + 16) + 1, 1, v110);
      }

      v79 = *(v76 + 2);
      v78 = *(v76 + 3);
      v80 = v76;
      if (v79 >= v78 >> 1)
      {
        v80 = sub_1D6996648((v78 > 1), v79 + 1, 1, v76);
      }

      *(v80 + 2) = v79 + 1;
      v64 = v80;
      v81 = &v80[24 * v79];
      *(v81 + 4) = v70;
      *(v81 + 5) = v61;
      v81[48] = 2;
    }

    while (v65 != v62);
  }

LABEL_101:

  v123 = v117;
  sub_1D6988C40(v114);
  sub_1D6988C40(v64);
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v82 = sub_1D725C42C();
  __swift_project_value_buffer(v82, qword_1EDFFCFA8);

  v83 = sub_1D725C3FC();
  v84 = sub_1D7262EDC();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v123 = v86;
    *v85 = 136315138;
    v87 = MEMORY[0x1DA6F9D20](v117, &type metadata for PuzzleHistoryServiceChange);
    v89 = sub_1D5BC5100(v87, v88, &v123);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_1D5B42000, v83, v84, "puzzleHistory: Received changes %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1DA6FD500](v86, -1, -1);
    MEMORY[0x1DA6FD500](v85, -1, -1);
  }

  v90 = v112[10];
  v91 = OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistoryObservers;
  result = swift_beginAccess();
  v92 = *(v90 + v91);
  v93 = MEMORY[0x1E69E7CC0];
  if (v92 >> 62)
  {
    result = sub_1D7263BFC();
    v94 = result;
    v111 = v91;
    if (result)
    {
LABEL_107:
      if (v94 < 1)
      {
        __break(1u);
        return result;
      }

      v109 = v90;
      v95 = v92 & 0xC000000000000001;

      v96 = 0;
      v115 = v92;
      do
      {
        if (v95)
        {
          v97 = MEMORY[0x1DA6FB460](v96, v92);
        }

        else
        {
          v97 = *(v92 + 8 * v96 + 32);
        }

        if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
        {
          v98 = v112[10];
          v99 = *(v97 + 24);
          ObjectType = swift_getObjectType();
          v112[5] = type metadata accessor for PuzzleHistoryService();
          v112[6] = &off_1F51D54E8;
          v112[2] = v98;
          v100 = v94;
          v101 = *(v99 + 8);
          v102 = v98;
          v103 = v99;
          v92 = v115;
          v101(v112 + 2, v117, ObjectType, v103);
          v94 = v100;
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1((v112 + 2));
        }

        else
        {
        }

        ++v96;
      }

      while (v94 != v96);

      v93 = MEMORY[0x1E69E7CC0];
      v90 = v109;
      v91 = v111;
    }
  }

  else
  {
    v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v111 = v91;
    if (v94)
    {
      goto LABEL_107;
    }
  }

  v104 = *(v90 + v91);
  v123 = v93;
  if (v104 >> 62)
  {
    goto LABEL_141;
  }

  v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_124:

  if (v105)
  {
    v106 = 0;
    v91 = v104 & 0xC000000000000001;
    while (1)
    {
      if (v91)
      {
        MEMORY[0x1DA6FB460](v106, v104);
        v107 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
LABEL_135:
          __break(1u);
LABEL_136:
          v93 = v123;
          v91 = v111;
          break;
        }
      }

      else
      {
        if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_141:
          v105 = sub_1D7263BFC();
          goto LABEL_124;
        }

        v107 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          goto LABEL_135;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        v93 = &v123;
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v106;
      if (v107 == v105)
      {
        goto LABEL_136;
      }
    }
  }

  *(v90 + v91) = v93;

  v108 = v112[1];

  return v108();
}

uint64_t sub_1D6EF3CF0()
{

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleHistoryObserver fetching puzzle error=%@", v8, 0xCu);
    sub_1D5FE45C0(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1D6EF4014()
{
  if (!qword_1EDF048B8)
  {
    type metadata accessor for FCFetchResult(255);
    sub_1D5BA6EF4();
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF048B8);
    }
  }
}

uint64_t sub_1D6EF4084(int a1, void *a2)
{
  sub_1D6EF4014();

  return sub_1D6EF28B8(a1, a2);
}

uint64_t sub_1D6EF4104(unint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1D5B6C104(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_1D6EF2998(a1, a2, a3);
  if (*(v11 + 2))
  {
    v12 = sub_1D726294C();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_1D726290C();
    v13 = v3;

    v14 = sub_1D72628FC();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = v11;
    v15[6] = a1;
    v15[7] = a2;
    v15[8] = a3;
    sub_1D6BD1334(0, 0, v10, &unk_1D736E538, v15);
  }

  else
  {
  }
}

uint64_t sub_1D6EF42C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64680;

  return sub_1D6EF2DA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t FormatPlatform.rawValue.getter()
{
  v1 = 6578544;
  if (*v0 != 1)
  {
    v1 = 6513005;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F6870;
  }
}

NewsFeed::FormatPlatform_optional __swiftcall FormatPlatform.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D6EF4440(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 6578544;
  if (v2 != 1)
  {
    v3 = 6513005;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x656E6F6870;
  }

  if (v2)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 6578544;
  if (*a2 != 1)
  {
    v6 = 6513005;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x656E6F6870;
  }

  if (*a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

unint64_t sub_1D6EF4524()
{
  result = qword_1EC8980F0;
  if (!qword_1EC8980F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8980F0);
  }

  return result;
}

uint64_t sub_1D6EF4578()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6EF4608()
{
  sub_1D72621EC();
}

uint64_t sub_1D6EF4684()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6EF471C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 6578544;
  if (v2 != 1)
  {
    v4 = 6513005;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656E6F6870;
  }

  if (!v5)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1D6EF4768(uint64_t a1)
{
  *(a1 + 8) = sub_1D6EF4798();
  result = sub_1D6EF47EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6EF4798()
{
  result = qword_1EC8980F8;
  if (!qword_1EC8980F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8980F8);
  }

  return result;
}

unint64_t sub_1D6EF47EC()
{
  result = qword_1EC898100;
  if (!qword_1EC898100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898100);
  }

  return result;
}

unint64_t sub_1D6EF4840(uint64_t a1)
{
  result = sub_1D6EF4868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EF4868()
{
  result = qword_1EC898108;
  if (!qword_1EC898108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898108);
  }

  return result;
}

unint64_t sub_1D6EF48BC(void *a1)
{
  a1[1] = sub_1D669316C();
  a1[2] = sub_1D66FD6B8();
  result = sub_1D6EF4524();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6EF497C(uint64_t a1, uint64_t a2, int a3)
{
  v79 = a3;
  v74 = a2;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B7B698(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v75 = &v66 - v8;
  v9 = sub_1D725891C();
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B698(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0], v5);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v66 - v15;
  v17 = sub_1D7258CFC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7258C2C();
  v70 = *(v22 - 8);
  v71 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D7257DEC();
  v77 = *(v26 - 8);
  v78 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v76 = &v66 - v32;
  v73 = a1;
  v69 = v3;
  sub_1D72587FC();
  if (v33 > 0.0 && v33 < 86400.0)
  {
    if ((v79 & 1) == 0)
    {
      return 1;
    }

    v34 = v33;
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725C42C();
    __swift_project_value_buffer(v35, qword_1EDFFCFA8);
    v36 = sub_1D725C3FC();
    v37 = sub_1D7262EDC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v34;
      _os_log_impl(&dword_1D5B42000, v36, v37, "PuzzleStatsProcessor: belongsToStreak: true - intervalSincePublishDate: %f", v38, 0xCu);
      MEMORY[0x1DA6FD500](v38, -1, -1);
    }

    return 1;
  }

  sub_1D7258CAC();
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v67 = v12;
    (*(v18 + 32))(v21, v16, v17);
    sub_1D7258AEC();
    (*(v18 + 8))(v21, v17);
    sub_1D5B7B698(0, &qword_1EDF19B90, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v42 = sub_1D7258C0C();
    v43 = *(v42 - 8);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v68 = v9;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D7279970;
    v47 = v46 + v45;
    v48 = *(v43 + 104);
    v48(v47, *MEMORY[0x1E6969A68], v42);
    v48(v47 + v44, *MEMORY[0x1E6969A78], v42);
    v49 = v68;
    v48(v47 + 2 * v44, *MEMORY[0x1E6969A48], v42);
    v50 = v72;
    sub_1D5BFA8DC(v46);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1D7258B3C();

    (*(v70 + 8))(v25, v71);
    v52 = v76;
    v51 = v77;
    v53 = v78;
    (*(v77 + 32))(v76, v29, v78);
    v16 = v75;
    sub_1D7258B8C();
    if ((*(v50 + 48))(v16, 1, v49) == 1)
    {
      (*(v51 + 8))(v52, v53);
      v40 = &qword_1EDF45B00;
      v41 = MEMORY[0x1E6969530];
      goto LABEL_13;
    }

    v58 = v67;
    (*(v50 + 32))(v67, v16, v49);
    sub_1D72587FC();
    v60 = v59;
    if (v59 <= 0.0)
    {
      v61 = 0;
      if ((v79 & 1) == 0)
      {
LABEL_28:
        (*(v50 + 8))(v58, v49);
        (*(v51 + 8))(v52, v53);
        return v61;
      }
    }

    else
    {
      v61 = v59 < 86400.0;
      if ((v79 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725C42C();
    __swift_project_value_buffer(v62, qword_1EDFFCFA8);
    v63 = sub_1D725C3FC();
    v64 = sub_1D7262EDC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 67109376;
      *(v65 + 4) = v61;
      *(v65 + 8) = 2048;
      *(v65 + 10) = v60;
      _os_log_impl(&dword_1D5B42000, v63, v64, "PuzzleStatsProcessor: belongsToStreak: %{BOOL}d - intervalSinceStartOfDay: %f", v65, 0x12u);
      MEMORY[0x1DA6FD500](v65, -1, -1);
    }

    goto LABEL_28;
  }

  v40 = &qword_1EDF43B40;
  v41 = MEMORY[0x1E6969BC0];
LABEL_13:
  sub_1D5B87A7C(v16, v40, v41);
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725C42C();
  __swift_project_value_buffer(v54, qword_1EDFFCFA8);
  v55 = sub_1D725C3FC();
  v56 = sub_1D7262EBC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1D5B42000, v55, v56, "PuzzleStatsProcessor: belongsToStreak failed to determine startOfDay", v57, 2u);
    MEMORY[0x1DA6FD500](v57, -1, -1);
  }

  return 0;
}

void sub_1D6EF52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_1D725891C();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v9);
  v52 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v37 - v13;
  v47 = type metadata accessor for PuzzleStreak();
  MEMORY[0x1EEE9AC00](v47, v14);
  v46 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v50 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v49 = &v37 - v22;
  v39 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v48 = (v8 + 8);
    v25 = v23 + v24 * (a3 - 1);
    v44 = -v24;
    v45 = v23;
    v26 = a1 - a3;
    v38 = v24;
    v27 = v23 + v24 * a3;
    v28 = v49;
LABEL_5:
    v42 = v25;
    v43 = a3;
    v40 = v27;
    v41 = v26;
    while (1)
    {
      sub_1D6EF7A64(v27, v28, type metadata accessor for PuzzleStreak);
      v29 = v50;
      sub_1D6EF7A64(v25, v50, type metadata accessor for PuzzleStreak);
      v30 = v51;
      sub_1D7257AAC();
      v31 = v52;
      sub_1D7257AAC();
      v54 = sub_1D725883C();
      v32 = *v48;
      v33 = v31;
      v34 = v53;
      (*v48)(v33, v53);
      v32(v30, v34);
      sub_1D6EF7A04(v29, type metadata accessor for PuzzleStreak);
      sub_1D6EF7A04(v28, type metadata accessor for PuzzleStreak);
      if ((v54 & 1) == 0)
      {
LABEL_4:
        a3 = v43 + 1;
        v25 = v42 + v38;
        v26 = v41 - 1;
        v27 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v35 = v46;
      sub_1D6EF7ACC(v27, v46);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D6EF7ACC(v35, v25);
      v25 += v44;
      v27 += v44;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D6EF5608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v48 = &v34 - v13;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v45 = *(v16 + 16);
    v46 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v42 = (v16 + 32);
    v43 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v41 = -v20;
    v23 = a1 - a3;
    v35 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v39 = v22;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      (v45)(v47, v24, v8, v17);
      v28 = v48;
      v27(v48, v25, v8);
      sub_1D5CE4528(&qword_1EDF3C3C0);
      v29 = sub_1D7261F5C();
      v30 = *v21;
      (*v21)(v28, v8);
      v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v22 = &v39[v35];
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v25, v32, v8);
      v25 += v41;
      v24 += v41;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D6EF58B8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v121 = a1;
  v141 = sub_1D725891C();
  v8 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v9);
  v140 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v139 = &v118 - v13;
  v135 = type metadata accessor for PuzzleStreak();
  v130 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v14);
  v118 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v134 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v138 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v137 = &v118 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v26 = *v121;
    if (!*v121)
    {
      goto LABEL_137;
    }

    v8 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = v8;
    }

    else
    {
LABEL_131:
      v112 = sub_1D62FF50C(v8);
    }

    v113 = v5;
    v143 = v112;
    v8 = *(v112 + 2);
    if (v8 >= 2)
    {
      while (*a3)
      {
        v5 = v8 - 1;
        v114 = *&v112[16 * v8];
        v115 = v112;
        v116 = *&v112[16 * v8 + 24];
        sub_1D6EF6DC0(*a3 + *(v130 + 72) * v114, *a3 + *(v130 + 72) * *&v112[16 * v8 + 16], *a3 + *(v130 + 72) * v116, v26);
        if (v113)
        {
          goto LABEL_108;
        }

        if (v116 < v114)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1D62FF50C(v115);
        }

        if (v8 - 2 >= *(v115 + 2))
        {
          goto LABEL_125;
        }

        v117 = &v115[16 * v8];
        *v117 = v114;
        *(v117 + 1) = v116;
        v143 = v115;
        sub_1D62FF480(v5);
        v112 = v143;
        v8 = *(v143 + 2);
        if (v8 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_135;
    }

LABEL_108:

    return;
  }

  v26 = 0;
  v136 = (v8 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  v120 = a4;
  v123 = a3;
  while (1)
  {
    v28 = v26;
    v126 = v27;
    if (v26 + 1 >= v25)
    {
      v45 = v26 + 1;
    }

    else
    {
      v131 = v25;
      v119 = v5;
      v29 = *(v130 + 72);
      v30 = *a3 + v29 * (v26 + 1);
      v142 = *a3;
      v31 = v142;
      v26 = v137;
      sub_1D6EF7A64(v30, v137, type metadata accessor for PuzzleStreak);
      v32 = v31 + v29 * v28;
      v122 = v28;
      v33 = v138;
      sub_1D6EF7A64(v32, v138, type metadata accessor for PuzzleStreak);
      v34 = v139;
      sub_1D7257AAC();
      v35 = v140;
      sub_1D7257AAC();
      LODWORD(v132) = sub_1D725883C();
      v36 = *v136;
      v37 = v141;
      (*v136)(v35, v141);
      v129 = v36;
      v36(v34, v37);
      v8 = type metadata accessor for PuzzleStreak;
      sub_1D6EF7A04(v33, type metadata accessor for PuzzleStreak);
      sub_1D6EF7A04(v26, type metadata accessor for PuzzleStreak);
      v38 = v122 + 2;
      v133 = v29;
      v39 = v142 + v29 * (v122 + 2);
      while (v131 != v38)
      {
        v40 = v137;
        sub_1D6EF7A64(v39, v137, type metadata accessor for PuzzleStreak);
        v26 = v138;
        sub_1D6EF7A64(v30, v138, type metadata accessor for PuzzleStreak);
        v41 = v139;
        sub_1D7257AAC();
        v42 = v140;
        sub_1D7257AAC();
        LOBYTE(v142) = sub_1D725883C() & 1;
        LODWORD(v142) = v142;
        v43 = v141;
        v44 = v129;
        v129(v42, v141);
        v44(v41, v43);
        v8 = type metadata accessor for PuzzleStreak;
        sub_1D6EF7A04(v26, type metadata accessor for PuzzleStreak);
        sub_1D6EF7A04(v40, type metadata accessor for PuzzleStreak);
        ++v38;
        v39 += v133;
        v30 += v133;
        if ((v132 & 1) != v142)
        {
          v45 = v38 - 1;
          goto LABEL_11;
        }
      }

      v45 = v131;
LABEL_11:
      v28 = v122;
      a3 = v123;
      a4 = v120;
      v5 = v119;
      if (v132)
      {
        if (v45 < v122)
        {
          goto LABEL_128;
        }

        if (v122 < v45)
        {
          v46 = v45;
          v47 = v133 * (v45 - 1);
          v48 = v45 * v133;
          v131 = v45;
          v49 = v122 * v133;
          v26 = v118;
          do
          {
            if (v28 != --v46)
            {
              v50 = *v123;
              if (!*v123)
              {
                goto LABEL_134;
              }

              v8 = v50 + v49;
              sub_1D6EF7ACC(v50 + v49, v26);
              if (v49 < v47 || v8 >= v50 + v48)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != v47)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D6EF7ACC(v26, v50 + v47);
            }

            ++v28;
            v47 -= v133;
            v48 -= v133;
            v49 += v133;
          }

          while (v28 < v46);
          v5 = v119;
          v28 = v122;
          a3 = v123;
          a4 = v120;
          v45 = v131;
        }
      }
    }

    v51 = a3[1];
    if (v45 < v51)
    {
      if (__OFSUB__(v45, v28))
      {
        goto LABEL_127;
      }

      if (v45 - v28 < a4)
      {
        if (__OFADD__(v28, a4))
        {
          goto LABEL_129;
        }

        if (v28 + a4 >= v51)
        {
          v26 = a3[1];
        }

        else
        {
          v26 = v28 + a4;
        }

        if (v26 < v28)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v45 != v26)
        {
          break;
        }
      }
    }

    v26 = v45;
    if (v45 < v28)
    {
      goto LABEL_126;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v126;
    }

    else
    {
      v27 = sub_1D698BA94(0, *(v126 + 2) + 1, 1, v126);
    }

    v53 = *(v27 + 2);
    v52 = *(v27 + 3);
    v8 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v27 = sub_1D698BA94((v52 > 1), v53 + 1, 1, v27);
    }

    *(v27 + 2) = v8;
    v54 = &v27[16 * v53];
    *(v54 + 4) = v28;
    *(v54 + 5) = v26;
    if (!*v121)
    {
      goto LABEL_136;
    }

    if (v53)
    {
      v55 = *v121;
      while (1)
      {
        v56 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v57 = *(v27 + 4);
          v58 = *(v27 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_55:
          if (v60)
          {
            goto LABEL_115;
          }

          v73 = &v27[16 * v8];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_118;
          }

          v79 = &v27[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_122;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v8 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v83 = &v27[16 * v8];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_69:
        if (v78)
        {
          goto LABEL_117;
        }

        v86 = &v27[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_76:
        v94 = v56 - 1;
        if (v56 - 1 >= v8)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v95 = v27;
        v8 = *&v27[16 * v94 + 32];
        v96 = *&v27[16 * v56 + 40];
        sub_1D6EF6DC0(*a3 + *(v130 + 72) * v8, *a3 + *(v130 + 72) * *&v27[16 * v56 + 32], *a3 + *(v130 + 72) * v96, v55);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v96 < v8)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1D62FF50C(v95);
        }

        if (v94 >= *(v95 + 2))
        {
          goto LABEL_112;
        }

        v97 = &v95[16 * v94];
        *(v97 + 4) = v8;
        *(v97 + 5) = v96;
        v143 = v95;
        sub_1D62FF480(v56);
        v27 = v143;
        v8 = *(v143 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v27[16 * v8 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_113;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_114;
      }

      v68 = &v27[16 * v8];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_116;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_119;
      }

      if (v72 >= v64)
      {
        v90 = &v27[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_123;
        }

        if (v59 < v93)
        {
          v56 = v8 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v25 = a3[1];
    a4 = v120;
    if (v26 >= v25)
    {
      goto LABEL_97;
    }
  }

  v119 = v5;
  v98 = *a3;
  v99 = *(v130 + 72);
  v100 = *a3 + v99 * (v45 - 1);
  v132 = -v99;
  v133 = v98;
  v122 = v28;
  v101 = v28 - v45;
  v124 = v99;
  v125 = v26;
  v102 = v98 + v45 * v99;
LABEL_87:
  v131 = v45;
  v127 = v102;
  v128 = v101;
  v129 = v100;
  while (1)
  {
    v103 = v137;
    sub_1D6EF7A64(v102, v137, type metadata accessor for PuzzleStreak);
    v104 = v138;
    sub_1D6EF7A64(v100, v138, type metadata accessor for PuzzleStreak);
    v105 = v139;
    sub_1D7257AAC();
    v106 = v140;
    sub_1D7257AAC();
    LODWORD(v142) = sub_1D725883C();
    v8 = v136;
    v107 = *v136;
    v108 = v106;
    v109 = v141;
    (*v136)(v108, v141);
    v107(v105, v109);
    sub_1D6EF7A04(v104, type metadata accessor for PuzzleStreak);
    sub_1D6EF7A04(v103, type metadata accessor for PuzzleStreak);
    if ((v142 & 1) == 0)
    {
LABEL_86:
      v45 = v131 + 1;
      v26 = v125;
      v100 = v129 + v124;
      v101 = v128 - 1;
      v102 = v127 + v124;
      if (v131 + 1 != v125)
      {
        goto LABEL_87;
      }

      v5 = v119;
      v28 = v122;
      a3 = v123;
      if (v125 < v122)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (!v133)
    {
      break;
    }

    v110 = v134;
    sub_1D6EF7ACC(v102, v134);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D6EF7ACC(v110, v100);
    v100 += v132;
    v102 += v132;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

void sub_1D6EF63C0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v138 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v144 = &v123 - v17;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v143 = &v123 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v24 = sub_1D62FF50C(v24);
    }

    v146 = v24;
    v119 = *(v24 + 2);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *&v24[16 * v119];
        v121 = *&v24[16 * v119 + 24];
        sub_1D6EF743C(*a3 + v9[9] * v120, *a3 + v9[9] * *&v24[16 * v119 + 16], *a3 + v9[9] * v121, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v121 < v120)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D62FF50C(v24);
        }

        if (v119 - 2 >= *(v24 + 2))
        {
          goto LABEL_120;
        }

        v122 = &v24[16 * v119];
        *v122 = v120;
        *(v122 + 1) = v121;
        v146 = v24;
        sub_1D62FF480(v119 - 1);
        v24 = v146;
        v119 = *(v146 + 2);
        if (v119 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v123 = a4;
  v23 = 0;
  v141 = (v9 + 1);
  v142 = v9 + 2;
  v140 = (v9 + 4);
  v24 = MEMORY[0x1E69E7CC0];
  v128 = v9;
  v145 = v8;
  v124 = a3;
  while (1)
  {
    v25 = v23;
    v129 = v24;
    if (v23 + 1 >= v22)
    {
      v38 = v23 + 1;
    }

    else
    {
      v136 = v22;
      v125 = v5;
      v26 = *a3;
      v27 = v9[9];
      v28 = v23;
      v127 = v23;
      v29 = &v26[v27 * (v23 + 1)];
      v30 = v8;
      v31 = v9[2];
      v32 = v143;
      v31(v143, v29, v30, v20);
      v33 = &v26[v27 * v28];
      v34 = v144;
      v135 = v31;
      (v31)(v144, v33, v30);
      v134 = sub_1D5CE4528(&qword_1EDF3C3C0);
      LODWORD(v137) = sub_1D7261F5C();
      v35 = v9[1];
      v35(v34, v30);
      v133 = v35;
      v35(v32, v30);
      v36 = v127 + 2;
      v139 = v27;
      v37 = &v26[v27 * (v127 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        v39 = v143;
        v40 = v9;
        v41 = v145;
        v42 = v135;
        (v135)(v143, v37, v145);
        v43 = v144;
        v42(v144, v29, v41);
        v44 = sub_1D7261F5C() & 1;
        v45 = v133;
        (v133)(v43, v41);
        v46 = v41;
        v9 = v40;
        v45(v39, v46);
        ++v36;
        v37 += v139;
        v29 += v139;
        if ((v137 & 1) != v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v5 = v125;
      v24 = v129;
      v8 = v145;
      a3 = v124;
      v25 = v127;
      if (v137)
      {
        if (v38 < v127)
        {
          goto LABEL_123;
        }

        if (v127 < v38)
        {
          v47 = v38;
          v48 = v139 * (v38 - 1);
          v49 = v38 * v139;
          v136 = v38;
          v50 = v127;
          v51 = v127 * v139;
          do
          {
            if (v50 != --v47)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v137 = *v140;
              v137(v131, &v53[v51], v145);
              if (v51 < v48 || &v53[v51] >= &v53[v49])
              {
                v52 = v145;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v52 = v145;
                if (v51 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v137(&v53[v48], v131, v52);
              v9 = v128;
              v24 = v129;
            }

            ++v50;
            v48 -= v139;
            v49 -= v139;
            v51 += v139;
          }

          while (v50 < v47);
          v5 = v125;
          v8 = v145;
          v25 = v127;
          v38 = v136;
        }
      }
    }

    v54 = a3[1];
    if (v38 < v54)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v123)
      {
        if (__OFADD__(v25, v123))
        {
          goto LABEL_124;
        }

        if (v25 + v123 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v25 + v123;
        }

        if (v55 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v55)
        {
          break;
        }
      }
    }

    v56 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D698BA94(0, *(v24 + 2) + 1, 1, v24);
    }

    v58 = *(v24 + 2);
    v57 = *(v24 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v24 = sub_1D698BA94((v57 > 1), v58 + 1, 1, v24);
    }

    *(v24 + 2) = v59;
    v60 = &v24[16 * v58];
    *(v60 + 4) = v25;
    *(v60 + 5) = v56;
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_131;
    }

    v132 = v56;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v24 + 4);
          v63 = *(v24 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_110;
          }

          v78 = &v24[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_113;
          }

          v84 = &v24[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_117;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v24[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_112;
        }

        v91 = &v24[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v100 = *&v24[16 * v99 + 32];
        v101 = *&v24[16 * v61 + 40];
        sub_1D6EF743C(*a3 + v9[9] * v100, *a3 + v9[9] * *&v24[16 * v61 + 32], *a3 + v9[9] * v101, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v101 < v100)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D62FF50C(v24);
        }

        if (v99 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v24[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v146 = v24;
        sub_1D62FF480(v61);
        v24 = v146;
        v59 = *(v146 + 2);
        v8 = v145;
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v24[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v24[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v24[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_118;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v132;
    if (v132 >= v22)
    {
      goto LABEL_94;
    }
  }

  v125 = v5;
  v103 = *a3;
  v104 = v9[9];
  v139 = v9[2];
  v105 = v103 + v104 * (v38 - 1);
  v106 = -v104;
  v127 = v25;
  v107 = v25 - v38;
  v137 = v103;
  v130 = v104;
  v108 = v103 + v38 * v104;
  v132 = v55;
LABEL_85:
  v135 = v105;
  v136 = v38;
  v133 = v108;
  v134 = v107;
  v109 = v105;
  while (1)
  {
    v110 = v143;
    v111 = v139;
    (v139)(v143, v108, v8);
    v112 = v144;
    v111(v144, v109, v145);
    sub_1D5CE4528(&qword_1EDF3C3C0);
    v113 = sub_1D7261F5C();
    v114 = *v141;
    v115 = v112;
    v8 = v145;
    (*v141)(v115, v145);
    v114(v110, v8);
    if ((v113 & 1) == 0)
    {
LABEL_84:
      v38 = v136 + 1;
      v105 = &v135[v130];
      v107 = v134 - 1;
      v108 = &v133[v130];
      v56 = v132;
      if (v136 + 1 != v132)
      {
        goto LABEL_85;
      }

      v5 = v125;
      a3 = v124;
      v9 = v128;
      v24 = v129;
      v25 = v127;
      if (v132 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v116 = *v140;
    v117 = v138;
    (*v140)(v138, v108, v8);
    swift_arrayInitWithTakeFrontToBack();
    v116(v109, v117, v8);
    v109 += v106;
    v108 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1D6EF6DC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = sub_1D725891C();
  v8 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v9);
  v67 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v66 = &v54 - v13;
  v63 = type metadata accessor for PuzzleStreak();
  MEMORY[0x1EEE9AC00](v63, v14);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v64 = &v54 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v20;
  v73 = a1;
  v72 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v24;
    if (v24 >= 1)
    {
      v39 = -v20;
      v57 = (v8 + 8);
      v58 = -v20;
      v40 = a4 + v24;
      v59 = a4;
      v70 = a1;
      do
      {
        v55 = v38;
        v41 = a2 + v39;
        v60 = a2;
        v61 = a2 + v39;
        while (1)
        {
          if (a2 <= a1)
          {
            v73 = a2;
            v71 = v55;
            goto LABEL_58;
          }

          v44 = a3;
          v56 = v38;
          v69 = a3 + v39;
          v45 = v40 + v39;
          v46 = v64;
          sub_1D6EF7A64(v40 + v39, v64, type metadata accessor for PuzzleStreak);
          v47 = v65;
          sub_1D6EF7A64(v41, v65, type metadata accessor for PuzzleStreak);
          v48 = v66;
          sub_1D7257AAC();
          v49 = v67;
          sub_1D7257AAC();
          LODWORD(v62) = sub_1D725883C();
          v50 = *v57;
          v51 = v49;
          v52 = v68;
          (*v57)(v51, v68);
          v50(v48, v52);
          sub_1D6EF7A04(v47, type metadata accessor for PuzzleStreak);
          sub_1D6EF7A04(v46, type metadata accessor for PuzzleStreak);
          if (v62)
          {
            break;
          }

          v38 = v45;
          a3 = v69;
          if (v44 < v40 || v69 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v59;
            a1 = v70;
          }

          else
          {
            v42 = v59;
            a1 = v70;
            if (v44 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v45;
          v43 = v45 > v42;
          a2 = v60;
          v41 = v61;
          v39 = v58;
          if (!v43)
          {
            goto LABEL_56;
          }
        }

        a3 = v69;
        if (v44 < v60 || v69 >= v60)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          v53 = v59;
          a1 = v70;
          v38 = v56;
        }

        else
        {
          a2 = v61;
          v53 = v59;
          a1 = v70;
          v38 = v56;
          if (v44 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v39 = v58;
      }

      while (v40 > v53);
    }

LABEL_56:
    v73 = a2;
    v71 = v38;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v23;
    v71 = a4 + v23;
    v69 = a3;
    if (v23 >= 1 && a2 < a3)
    {
      v60 = (v8 + 8);
      v61 = v20;
      do
      {
        v70 = a1;
        v26 = v64;
        sub_1D6EF7A64(a2, v64, type metadata accessor for PuzzleStreak);
        v27 = a4;
        v28 = a4;
        v29 = v65;
        sub_1D6EF7A64(v27, v65, type metadata accessor for PuzzleStreak);
        v30 = v66;
        sub_1D7257AAC();
        v31 = v67;
        sub_1D7257AAC();
        v32 = sub_1D725883C();
        v33 = *v60;
        v34 = v31;
        v35 = v68;
        (*v60)(v34, v68);
        v33(v30, v35);
        sub_1D6EF7A04(v29, type metadata accessor for PuzzleStreak);
        sub_1D6EF7A04(v26, type metadata accessor for PuzzleStreak);
        if (v32)
        {
          v36 = v61;
          v37 = v70;
          a4 = v28;
          if (v70 < a2 || v70 >= a2 + v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v36;
        }

        else
        {
          v36 = v61;
          a4 = v28 + v61;
          v37 = v70;
          if (v70 < v28 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v72 = a4;
        }

        a1 = v37 + v36;
        v73 = a1;
      }

      while (a4 < v62 && a2 < v69);
    }
  }

LABEL_58:
  sub_1D62FF6FC(&v73, &v72, &v71);
}

void sub_1D6EF743C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_1D725891C();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v9);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = &v44 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v17 = (a2 - a1) / v15;
  v59 = a1;
  v58 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v19;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_1D5CE4528(&qword_1EDF3C3C0);
          LOBYTE(v37) = sub_1D7261F5C();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v18;
    v57 = a4 + v18;
    if (v18 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v15;
      v49 = (v8 + 8);
      do
      {
        v21 = v53;
        v22 = v56;
        v23 = v50;
        v50(v53, a2, v56);
        v24 = v54;
        v23(v54, a4, v22);
        sub_1D5CE4528(&qword_1EDF3C3C0);
        LOBYTE(v23) = sub_1D7261F5C();
        v25 = *v49;
        (*v49)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_1D62FF714(&v59, &v58, &v57);
}

uint64_t sub_1D6EF7A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6EF7A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6EF7ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleStreak();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6EF7B30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B7B698(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t FormatArrangementTemplate.components.getter(uint64_t a1)
{
  sub_1D6EF8CB8(a1);
}

uint64_t FormatArrangementTemplate.identifier.getter()
{
  v0 = sub_1D5F90834();

  return v0;
}

uint64_t FormatArrangementTemplate.dataSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1D726393C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D6EF7CC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FormatArrangementTemplate();
  *a1 = sub_1D6EF8CB8(v2);
}

uint64_t sub_1D6EF7D14()
{
  v0 = type metadata accessor for FormatArrangementTemplate();

  return FormatArrangementTemplate.components.setter(v1, v0);
}

uint64_t FormatArrangementTemplate.components.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t static FormatArrangementTemplate.== infix(_:_:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D726393C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v33 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v16);
  v18 = &v33 - v17;
  v19 = *a1;
  v20 = *(a1 + 1);
  v40 = a1;
  if ((v19 != *a2 || v20 != a2[1]) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_10;
  }

  v34 = v9;
  v38 = a4;
  v35 = type metadata accessor for FormatArrangementTemplate();
  v21 = *(v35 + 36);
  v22 = *(TupleTypeMetadata2 + 48);
  v37 = v11;
  v23 = *(v11 + 16);
  v23(v18, &v40[v21], v10);
  v36 = a2;
  v23(&v18[v22], a2 + v21, v10);
  v24 = *(v41 + 48);
  if (v24(v18, 1, a3) == 1)
  {
    if (v24(&v18[v22], 1, a3) == 1)
    {
      (*(v37 + 8))(v18, v10);
LABEL_12:
      v30 = *(v35 + 40);
      v31 = *&v40[v30];
      v43 = *(v36 + v30);
      v44 = v31;
      type metadata accessor for FormatArrangementComponent();

      swift_getWitnessTable();
      swift_getWitnessTable();
      type metadata accessor for FormatCodingSafeishArrayStrategy();
      swift_getWitnessTable();
      sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      v25 = static FormatCodingDefault<>.== infix(_:_:)();

      return v25 & 1;
    }

    goto LABEL_9;
  }

  v23(v14, v18, v10);
  if (v24(&v18[v22], 1, a3) == 1)
  {
    (*(v41 + 8))(v14, a3);
LABEL_9:
    (*(v39 + 8))(v18, TupleTypeMetadata2);
    goto LABEL_10;
  }

  v26 = v41;
  v27 = v34;
  (*(v41 + 32))(v34, &v18[v22], a3);
  v28 = sub_1D7261FBC();
  v29 = *(v26 + 8);
  v29(v27, a3);
  v29(v14, a3);
  (*(v37 + 8))(v18, v10);
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1D6EF82B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6EF83D8(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x72756F5361746164;
  }

  return 0x6E656E6F706D6F63;
}

uint64_t sub_1D6EF8440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EF82B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6EF8470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6EF84C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementTemplate.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v16[1] = *(a2 + 24);
  v16[2] = v4;
  type metadata accessor for FormatArrangementTemplate.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v5;
  v11 = v16[3];
  sub_1D7264B5C();
  v18[2] = 0;
  v12 = v16[4];
  sub_1D72643FC();
  if (!v12)
  {
    v18[1] = 1;
    sub_1D72643BC();
    v17 = *(v11 + *(a2 + 40));
    v18[0] = 2;
    type metadata accessor for FormatArrangementComponent();

    swift_getWitnessTable();
    swift_getWitnessTable();
    v14 = type metadata accessor for FormatCodingSafeishArrayStrategy();
    WitnessTable = swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v17, v18, v10, v14, WitnessTable);
  }

  return (*(v6 + 8))(v9, v10);
}

uint64_t FormatArrangementTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_1D726393C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v31 - v9;
  type metadata accessor for FormatArrangementTemplate.CodingKeys();
  swift_getWitnessTable();
  v43 = sub_1D726435C();
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v10);
  v12 = &v31 - v11;
  v42 = a3;
  v13 = type metadata accessor for FormatArrangementTemplate();
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v31 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = v12;
  v17 = v45;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = a2;
  v18 = v16;
  v45 = a1;
  v19 = v39;
  v20 = v40;
  v21 = v41;
  v49 = 0;
  *v18 = sub_1D72642BC();
  v18[1] = v22;
  v33 = v22;
  v34 = v18;
  v48 = 1;
  v23 = v38;
  sub_1D726427C();
  v32 = v13;
  (*(v20 + 32))(v34 + *(v13 + 36), v23, v21);
  v47 = 2;
  type metadata accessor for FormatArrangementComponent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v24 = v43;
  v25 = type metadata accessor for FormatCodingSafeishArrayStrategy();
  WitnessTable = swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)(v25, WitnessTable, &v46);
  (*(v19 + 8))(v44, v24);
  v27 = v32;
  v28 = v34;
  *(v34 + *(v32 + 40)) = v46;
  v29 = v36;
  (*(v36 + 16))(v37, v28, v27);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return (*(v29 + 8))(v28, v27);
}

uint64_t sub_1D6EF8CDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1D6EF8E5C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

id sub_1D6EF9114()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8NewsFeed24ClearSavedCommandHandler_readingList] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D6EF9244()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D6EF9350()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

void sub_1D6EF95A0()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8NewsFeed24ClearSavedCommandHandler_sceneProvider], *&v0[OBJC_IVAR____TtC8NewsFeed24ClearSavedCommandHandler_sceneProvider + 24]);
  v2 = sub_1D725DA4C();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 rootViewController];

    if (v4)
    {
      v5 = [v4 traitCollection];
      v6 = [v5 horizontalSizeClass];

      v7 = v6 != 1;
      sub_1D6EF9244();
      v8 = sub_1D6EF9350();
      v10 = v9;
      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {

        v10 = 0;
      }

      v12 = sub_1D726203C();

      if (v10)
      {
        v13 = sub_1D726203C();
      }

      else
      {
        v13 = 0;
      }

      v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:v7];

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = objc_opt_self();
      v17 = [v16 bundleForClass_];
      sub_1D725811C();

      v18 = sub_1D726203C();

      v19 = objc_opt_self();
      v20 = [v19 actionWithTitle:v18 style:1 handler:{0, 0x80000001D73F6730}];

      [v14 addAction_];
      v21 = [v16 bundleForClass_];
      sub_1D725811C();

      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      v23 = v1;
      v24 = sub_1D726203C();

      aBlock[4] = sub_1D6EF99A8;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D5C38428;
      aBlock[3] = &block_descriptor_108;
      v25 = _Block_copy(aBlock);

      v26 = [v19 actionWithTitle:v24 style:0 handler:{v25, 0x80000001D73F6770}];
      _Block_release(v25);

      [v14 addAction_];
      [v4 presentViewController:v14 animated:1 completion:0];
    }
  }
}

uint64_t FeedMode.selectors.getter()
{
  if (*v0)
  {
    v1 = &unk_1F50F5558;
  }

  else
  {
    v1 = &unk_1F50F5528;
  }

  if (*v0)
  {
    v2 = &unk_1F50F5578;
  }

  else
  {
    v2 = &unk_1F50F5548;
  }

  v3 = sub_1D5BFAC38(v1);
  sub_1D5BFB68C(v2);
  return v3;
}

NewsFeed::FeedMode_optional __swiftcall FeedMode.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D6EF9AC0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6EF9B38()
{
  sub_1D72621EC();
}

uint64_t sub_1D6EF9B94()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6EF9C08@<X0>(char *a1@<X8>)
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

uint64_t sub_1D6EF9C68(uint64_t a1)
{
  v2 = sub_1D6EF9F50();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6EF9CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6EF9F50();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6EF9D18(uint64_t a1)
{
  v2 = sub_1D6EF9F50();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D6EF9E50()
{
  result = qword_1EDF34E60;
  if (!qword_1EDF34E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E60);
  }

  return result;
}

unint64_t sub_1D6EF9EA8()
{
  result = qword_1EC898198;
  if (!qword_1EC898198)
  {
    sub_1D6EF9F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898198);
  }

  return result;
}

void sub_1D6EF9F00()
{
  if (!qword_1EC8981A0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8981A0);
    }
  }
}

unint64_t sub_1D6EF9F50()
{
  result = qword_1EDF13020;
  if (!qword_1EDF13020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13020);
  }

  return result;
}

uint64_t _s8NewsFeed19FormatURLComponentsV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v6 = *a2;
  v7 = v3;

  LOBYTE(v3) = static FormatURL.== infix(_:_:)(&v7, &v6);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_1D635B3E4(v2, v4);
}

unint64_t sub_1D6EFA084(uint64_t a1)
{
  result = sub_1D6EFA0AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EFA0AC()
{
  result = qword_1EC8981A8;
  if (!qword_1EC8981A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8981A8);
  }

  return result;
}

unint64_t sub_1D6EFA100(void *a1)
{
  a1[1] = sub_1D666668C();
  a1[2] = sub_1D670438C();
  result = sub_1D6EFA138();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EFA138()
{
  result = qword_1EC8981B0;
  if (!qword_1EC8981B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8981B0);
  }

  return result;
}

void sub_1D6EFA25C()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v3 = sub_1D726203C();
  [v2 setTitle_];

  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView];
  sub_1D69BF330();
  sub_1D7262DAC();
  [v4 setDataSource_];
  [v4 setDelegate_];
  [v4 setAllowsSelection_];
  [v4 setAlwaysBounceVertical_];
  v5 = [objc_opt_self() secondarySystemBackgroundColor];
  [v4 setBackgroundColor_];

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D6EFA620()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel + 8);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v1 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v1 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v3 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  sub_1D69BF330();
  v4 = sub_1D7262D8C();
  v5 = [v4 textLabel];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D6915E74(1000);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    MEMORY[0x1DA6F97E0](v7, v9, v11, v13);

    v14 = sub_1D726203C();

    [v6 setText_];
  }

  else
  {
  }

  v15 = [v4 textLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setNumberOfLines_];
  }

  v17 = [v4 textLabel];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() monospacedSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB970]];
    [v18 setFont_];
  }

  return v4;
}

uint64_t sub_1D6EFA9D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 24) = MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D6EFAB08()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6EFAB7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72618DC();
  *a1 = result;
  return result;
}

uint64_t FormatIssueBinding.LayeredMedia.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6EFAC34()
{
  result = qword_1EC8981E0;
  if (!qword_1EC8981E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8981E0);
  }

  return result;
}

unint64_t sub_1D6EFAC88(uint64_t a1)
{
  result = sub_1D6EFACB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EFACB0()
{
  result = qword_1EC8981E8;
  if (!qword_1EC8981E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8981E8);
  }

  return result;
}

unint64_t sub_1D6EFAD04(void *a1)
{
  a1[1] = sub_1D665B884();
  a1[2] = sub_1D66FB7F0();
  result = sub_1D6EFAC34();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6EFAD7C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for FormatDOMReader();
  inited = swift_initStackObject();
  v5 = inited;
  inited[2] = v3;
  inited[3] = v2;
  inited[5] = v3;
  inited[6] = v2;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  inited[4] = 15;
  swift_bridgeObjectRetain_n();
  if (!v6)
  {
LABEL_30:
    sub_1D6EFB158();
    sub_1D6EFB1A8();
    sub_1D72621AC();

    swift_bridgeObjectRelease_n();
    return 0;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v8 = 4 * v6;
  while (1)
  {
    if (sub_1D5F94FF0() != 38)
    {
      v18 = sub_1D5F94FF0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D698F72C(0, *(v7 + 2) + 1, 1, v7);
      }

      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        v7 = sub_1D698F72C((v19 > 1), v20 + 1, 1, v7);
      }

      *(v7 + 2) = v20 + 1;
      *&v7[4 * v20 + 32] = v18;
      sub_1D5F9510C(1);
      goto LABEL_7;
    }

    sub_1D5F9510C(1);
    v9 = sub_1D5E27400(&unk_1F50F4478);
    v10 = v9;
    if (v8 <= v5[4] >> 14)
    {
      break;
    }

    v11 = v9 + 56;
    while (1)
    {
      v12 = sub_1D5F94FF0();
      if (*(v10 + 16))
      {
        v13 = v12;
        sub_1D7264A0C();
        sub_1D7264A3C();
        v14 = sub_1D7264A5C();
        v15 = -1 << *(v10 + 32);
        v16 = v14 & ~v15;
        if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          break;
        }
      }

LABEL_11:
      sub_1D5F94FF0();
      sub_1D72621BC();
      sub_1D5F9510C(1);
      if (v8 <= v5[4] >> 14)
      {
        goto LABEL_31;
      }
    }

    v17 = ~v15;
    while (*(*(v10 + 48) + 4 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1D5F9510C(1);
    v21 = sub_1D5DF5628(0, 0xE000000000000000);
    if (v1)
    {
      goto LABEL_32;
    }

    v22 = v21;
    if ((v21 & 0x100000000) != 0)
    {
      v22 = dword_1D736EF84[v21];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D698F72C(0, *(v7 + 2) + 1, 1, v7);
    }

    v24 = *(v7 + 2);
    v23 = *(v7 + 3);
    if (v24 >= v23 >> 1)
    {
      v7 = sub_1D698F72C((v23 > 1), v24 + 1, 1, v7);
    }

    *(v7 + 2) = v24 + 1;
    *&v7[4 * v24 + 32] = v22;
LABEL_7:
    if (v8 <= v5[4] >> 14)
    {
      goto LABEL_30;
    }
  }

LABEL_31:

  v26 = sub_1D72622EC();
  sub_1D5DF5BE4();
  swift_allocError();
  *v27 = v26;
  *(v27 + 8) = v10;
  *(v27 + 16) = 0;
  *(v27 + 24) = 3;
  swift_willThrow();
LABEL_32:

  return swift_bridgeObjectRelease_n();
}

void sub_1D6EFB158()
{
  if (!qword_1EDF049A0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF049A0);
    }
  }
}

unint64_t sub_1D6EFB1A8()
{
  result = qword_1EDF04998;
  if (!qword_1EDF04998)
  {
    sub_1D6EFB158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04998);
  }

  return result;
}

uint64_t static FormatPackageList.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D634D33C(v2, v3);
}

uint64_t FormatPackageList.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1D6EFB2AC(uint64_t a1)
{
  result = sub_1D6EFB2D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EFB2D4()
{
  result = qword_1EC8981F0;
  if (!qword_1EC8981F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8981F0);
  }

  return result;
}

unint64_t sub_1D6EFB328(void *a1)
{
  a1[1] = sub_1D66875D0();
  a1[2] = sub_1D66FE94C();
  result = sub_1D6EFB360();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EFB360()
{
  result = qword_1EC8981F8;
  if (!qword_1EC8981F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8981F8);
  }

  return result;
}

uint64_t sub_1D6EFB3E4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D634D33C(v2, v3);
}

void sub_1D6EFB4C4()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed42DebugFormatUploadHiddenContainerController_rootViewController];
  [v0 addChildViewController_];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  [v15 addSubview_];

  [v1 didMoveToParentViewController_];
  v18 = [v0 navigationItem];
  v19 = sub_1D726203C();
  [v18 setTitle_];

  v20 = [v0 navigationItem];
  sub_1D5E42B34();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D72816C0;
  v22 = sub_1D726203C();
  v23 = [objc_opt_self() systemImageNamed_];

  if (v23)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v23 style:0 target:v0 action:sel_doDismiss];

    *(v21 + 32) = v24;
    sub_1D5B816F8();
    v25 = sub_1D726265C();

    [v20 setRightBarButtonItems_];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1D6EFB958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D7263ECC();
  v8 = type metadata accessor for DebugFormatUploadHiddenViewController();
  v9 = objc_allocWithZone(v8);

  sub_1D715AC7C(a1, a2, 0);

  sub_1D7263E9C();
  sub_1D7263EDC();
  sub_1D7263EEC();
  sub_1D7263EAC();
  v10 = objc_allocWithZone(v8);

  sub_1D715AC7C(a1, a2, 1);

  sub_1D7263E9C();
  sub_1D7263EDC();
  sub_1D7263EEC();
  sub_1D7263EAC();
  v11 = objc_allocWithZone(v8);

  sub_1D715AC7C(v12, a2, 2);

  sub_1D7263E9C();
  sub_1D7263EDC();
  sub_1D7263EEC();
  sub_1D7263EAC();
  v13 = v23;
  v23 = v7;
  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    goto LABEL_17;
  }

  for (i = *(v13 + 16); i; i = sub_1D7263BFC())
  {
    v21 = ObjectType;
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA6FB460](v15, v13);
      }

      else
      {
        if (v15 >= *(v13 + 16))
        {
          goto LABEL_16;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      ObjectType = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (*(*&v16[OBJC_IVAR____TtC8NewsFeed37DebugFormatUploadHiddenViewController_sections] + 16))
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v15;
      if (ObjectType == i)
      {
        v17 = v23;
        ObjectType = v21;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_19:

  sub_1D725E6DC();
  sub_1D5F643CC(v17);

  v18 = sub_1D725E65C();
  v19 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];

  *&v3[OBJC_IVAR____TtC8NewsFeed42DebugFormatUploadHiddenContainerController_rootViewController] = v19;
  v22.receiver = v3;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t _s8NewsFeed18FormatGroupBindingV4BoolO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = (2 * (*(a1 + 9) & 0x7F)) | (v3 >> 5) & 1;
  if (v6 > 4)
  {
    v9 = ((2 * *(a2 + 9)) | ((v5 & 0x20) != 0));
    if (v6 <= 6)
    {
      if (v6 == 5)
      {
        if (v9 == 5)
        {
          return (v4 ^ v2) == 0;
        }
      }

      else if (v9 == 6)
      {
        return (v4 ^ v2) == 0;
      }
    }

    else if (v6 == 7)
    {
      if (v9 == 7)
      {
        return (v4 ^ v2) == 0;
      }
    }

    else if (v6 == 8)
    {
      if (v9 == 8)
      {
        if (v3 >> 6)
        {
          if (v3 >> 6 == 1)
          {
            if ((v5 & 0xC0) == 0x40 && v4 == v2)
            {
              return 1;
            }
          }

          else if ((v5 & 0xC0) == 0x80 && v2 == v4 && ((v5 ^ v3) & 0x3F) == 0)
          {
            return 1;
          }
        }

        else if (v5 <= 0x3F && v4 == v2)
        {
          return 1;
        }
      }
    }

    else if (v9 == 9)
    {
      return (v4 ^ v2) == 0;
    }
  }

  else if (v6 <= 1)
  {
    if (v6)
    {
      if (((2 * *(a2 + 9)) | ((v5 & 0x20) != 0)) == 1)
      {
        return (v4 ^ v2) == 0;
      }
    }

    else if (!((2 * *(a2 + 9)) | ((v5 & 0x20) != 0)))
    {
      return (v4 ^ v2) == 0;
    }
  }

  else
  {
    v7 = ((2 * *(a2 + 9)) | ((v5 & 0x20) != 0));
    if (v6 == 2)
    {
      if (v7 == 2)
      {
        return (v4 ^ v2) == 0;
      }
    }

    else
    {
      if (v6 == 3)
      {
        if (v7 == 3)
        {
          return ((v4 ^ v2) & 1) == 0;
        }

        return 0;
      }

      if (v7 == 4)
      {
        return (v4 ^ v2) == 0;
      }
    }
  }

  return 0;
}

unint64_t sub_1D6EFBE18(uint64_t a1)
{
  result = sub_1D6EFBE40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EFBE40()
{
  result = qword_1EC898208;
  if (!qword_1EC898208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898208);
  }

  return result;
}

unint64_t sub_1D6EFBE94(void *a1)
{
  a1[1] = sub_1D5C78914();
  a1[2] = sub_1D6700B64();
  result = sub_1D6EFBECC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EFBECC()
{
  result = qword_1EC898210;
  if (!qword_1EC898210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898210);
  }

  return result;
}

uint64_t _s4BoolOwet_2(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F7 && *(a1 + 10))
  {
    return (*a1 + 503);
  }

  v3 = ((*(a1 + 8) >> 5) & 1 | (2 * *(a1 + 9))) ^ 0x1FF;
  if (v3 >= 0x1F6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FontBookStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

void FontBookFactory.makeFontBook(fontBookStyle:contentResizeScale:)(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D725A19C();
  v7 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    v13 = &type metadata for DefaultFontBook;
    v14 = &protocol witness table for DefaultFontBook;
    goto LABEL_5;
  }

  if (*a1 == 1)
  {
    v13 = &type metadata for CondensedFontBook;
    v14 = &protocol witness table for CondensedFontBook;
LABEL_5:
    a3[3] = v13;
    a3[4] = v14;
    return;
  }

  v15 = v9;
  (*(v7 + 16))(v12, a2, v9, v10);
  v16 = type metadata accessor for ScalingFontBook();
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + OBJC_IVAR____TtC8NewsFeed15ScalingFontBook_contentResizeScale, v12, v15);
  a3[3] = v16;
  a3[4] = &protocol witness table for ScalingFontBook;
  *a3 = v17;
}

unint64_t sub_1D6EFC1A0()
{
  result = qword_1EC898218;
  if (!qword_1EC898218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898218);
  }

  return result;
}

uint64_t sub_1D6EFC244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v70 = a4;
  v9 = sub_1D725891C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v60 - v18;
  v20 = *a3;
  v21 = *(a3 + 8);
  v22 = *v4;
  v23 = *v4 >> 62;
  if (!v23)
  {
    v62 = v16;
    v64 = v10;
    v31 = *(v22 + 32);
    v66 = *(v22 + 16);
    v67 = v31;
    v68 = *(v22 + 48);
    v69 = *(v22 + 64);
    sub_1D5FD78CC(&v66, v65);
    v32 = sub_1D6B0B700();
    v33 = swift_allocObject();
    v34 = sub_1D688E6FC(a1, 0);
    if (v5)
    {

      sub_1D5FD7B18(&v66);
      return swift_deallocUninitializedObject();
    }

    v50 = v34;
    v51 = v35;
    v52 = swift_allocObject();
    v53 = v67;
    *(v52 + 16) = v66;
    *(v52 + 32) = v53;
    *(v52 + 48) = v68;
    *(v52 + 64) = v69;
    *(v52 + 72) = v32;
    sub_1D725890C();
    sub_1D6EFCD38();
    v54 = swift_allocObject();
    *(v54 + 4) = v50;
    *(v54 + 5) = v51;
    v55 = &v54[*(*v54 + 112)];
    *v55 = v50;
    v55[1] = v51;
    (*(v64 + 32))(&v54[*(*v54 + 104)], v19, v62);
    *(v54 + 2) = v20;
    v54[24] = v21;

    if (v21 == 255)
    {

      v56 = 0;
      v52 = 0;
    }

    else
    {
      v56 = sub_1D6EFCDD8;
    }

    v59 = &v54[*(*v54 + 120)];
    *v59 = v56;
    v59[1] = v52;
    *(v33 + 16) = v54;
    *v70 = v33;
    return sub_1D60D626C(v20, v21);
  }

  v63 = v20;
  v64 = v5;
  if (v23 != 1)
  {
    v36 = v22 & 0x3FFFFFFFFFFFFFFFLL;
    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    v62 = v16;

    v61 = sub_1D6B0B700();
    v39 = (*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations);
    swift_beginAccess();
    v40 = v21;
    v42 = *v39;
    v41 = v39[1];

    v43 = sub_1D6E5CA68(v38, v37, a1, v42, v41);
    v45 = v44;

    v21 = v40;

    v46 = swift_allocObject();
    *(v46 + 2) = v61;
    *(v46 + 3) = v38;
    *(v46 + 4) = v37;
    sub_1D725890C();
    sub_1D6EFCD38();
    v47 = swift_allocObject();
    *(v47 + 4) = v43;
    *(v47 + 5) = v45;
    v48 = &v47[*(*v47 + 112)];
    *v48 = v43;
    v48[1] = v45;
    (*(v10 + 32))(&v47[*(*v47 + 104)], v13, v62);
    v20 = v63;
    *(v47 + 2) = v63;
    v47[24] = v21;

    if (v21 == 255)
    {

      v49 = 0;
      v46 = 0;
    }

    else
    {
      v49 = sub_1D6EFCD18;
    }

    v57 = swift_allocObject();
    v58 = &v47[*(*v47 + 120)];
    *v58 = v49;
    v58[1] = v46;
    *(v57 + 16) = v47;
    *v70 = v57;
    return sub_1D60D626C(v20, v21);
  }

  v24 = (v22 & 0x3FFFFFFFFFFFFFFFLL);
  v25 = v24[2];
  v26 = v24[3];
  v27 = v24[4];
  MEMORY[0x1EEE9AC00](v16, v17);
  *(&v60 - 4) = a1;
  *(&v60 - 3) = a2;
  *(&v60 - 2) = v63;
  *(&v60 - 8) = v21;

  v28 = v64;
  v29 = sub_1D6F7E838(a1, sub_1D6EFCD88, (&v60 - 6), v25, v26, v27);

  if (!v28)
  {
    result = swift_allocObject();
    *(result + 16) = v29;
    *v70 = result | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1D6EFC7A4(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 62;
  if (v5)
  {
    v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    if (v5 == 1)
    {
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);

      sub_1D626CA0C(v3, v7, v8);
    }

    else
    {
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;

      sub_1D6C4D24C(v18 | 0x4000000000000000);
    }
  }

  else
  {
    v9 = *(v4 + 32);
    v26 = *(v4 + 16);
    v27 = v9;
    v10 = *(v4 + 48);
    v29 = *(v4 + 64);
    v28 = v10;
    v11 = v26;
    v12 = v9;
    v13 = v29;
    switch((2 * HIBYTE(v29)) | ((v29 & 8) != 0))
    {
      case 2:
        goto LABEL_12;
      case 3:
      case 4:
        v14 = *(&v26 + 1);
        v24 = v26;
        v25 = v9;
        v23 = 5;
        v20 = v26;
        sub_1D5FD78CC(&v26, &v21);

        v15 = sub_1D703E0C8(&v24, &v23);

        if (v2)
        {
        }

        else
        {
          v19 = swift_allocObject();
          *(v19 + 16) = v20;
          *(v19 + 24) = v14;
          *(v19 + 32) = v15;
          *(v19 + 40) = 0;
          sub_1D6C4D24C(v19 | 0x3000000000000000);

          v13 = v29;
          if (((2 * HIBYTE(v29)) | ((v29 & 8) != 0)) == 2)
          {
            v12 = v27;
            v11 = v26;
LABEL_12:
            if (v13 >> 4 == 3)
            {
              v21 = v11;
              v22 = v12;
              result = sub_1D62921EC(v3);
            }
          }
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D6EFCA1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = (*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_1D6E5CA68(a2, a3, a1, v10, v9);
  v13 = v12;

  *a4 = v11;
  a4[1] = v13;
  return result;
}

uint64_t _s8NewsFeed26FormatAccessibilityContentO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v14 = *(v3 + 32);
      v18[0] = *(v3 + 16);
      v18[1] = v14;
      v18[2] = *(v3 + 48);
      v19 = *(v3 + 64);
      v15 = *(v2 + 32);
      v20[0] = *(v2 + 16);
      v20[1] = v15;
      v20[2] = *(v2 + 48);
      v21 = *(v2 + 64);

      v16 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(v20, v18);

      return v16 & 1;
    }

    goto LABEL_15;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v5 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v8 = *(v5 + 16);
      v9 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];

      LOBYTE(v6) = sub_1D6F7F280(v8, v7, v6, v10, v11, v12);

      return v6 & 1;
    }

    goto LABEL_15;
  }

  if (v3 >> 62 != 2)
  {
LABEL_15:
    v16 = 0;
    return v16 & 1;
  }

  if (*((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v16 = 1;
    return v16 & 1;
  }

  return sub_1D72646CC();
}

unint64_t sub_1D6EFCCE0(uint64_t a1)
{
  result = sub_1D5C6F8B4();
  *(a1 + 8) = result;
  return result;
}

void sub_1D6EFCD38()
{
  if (!qword_1EDF32918[0])
  {
    v0 = type metadata accessor for FormatComputed();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF32918);
    }
  }
}

uint64_t sub_1D6EFCD88(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v9 = *a1;
  v7 = v4;
  v8 = v5;
  return sub_1D6EFC244(v3, v2, &v7);
}

uint64_t sub_1D6EFCDD8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D688E6FC(*(v2 + 72), a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1D6EFCE10()
{
  sub_1D5B9F0F8(0, &unk_1EDF43A60, sub_1D5B9EE48, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D6EFCEC4(uint64_t a1, uint64_t *a2)
{
  v35 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_11:
    v6 = (v10 - 1) & v10;
    v12 = *a2;
    if (*(*a2 + 16))
    {
      v13 = (v9 << 10) | (16 * __clz(__rbit64(v10)));
      v14 = (*(a1 + 48) + v13);
      v15 = (*(a1 + 56) + v13);
      v17 = *v14;
      v16 = v14[1];
      v18 = *v15;
      v19 = v15[1];

      v20 = sub_1D5B69D90(v18, v19);
      if (v21)
      {
        v34 = *(*(v12 + 56) + 8 * v20);

        v22 = v35;
        v23 = *(v35 + 16);
        if (*(v35 + 24) <= v23)
        {
          sub_1D6D666E4(v23 + 1, 1);
          v22 = v37;
        }

        v35 = v22;
        sub_1D7264A0C();
        sub_1D72621EC();
        result = sub_1D7264A5C();
        v24 = v35 + 64;
        v25 = -1 << *(v35 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v35 + 64 + 8 * (v26 >> 6))) == 0)
        {
          v29 = 0;
          v30 = (63 - v25) >> 6;
          while (++v27 != v30 || (v29 & 1) == 0)
          {
            v31 = v27 == v30;
            if (v27 == v30)
            {
              v27 = 0;
            }

            v29 |= v31;
            v32 = *(v24 + 8 * v27);
            if (v32 != -1)
            {
              v28 = __clz(__rbit64(~v32)) + (v27 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_29;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v35 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v33 = (*(v35 + 48) + 16 * v28);
        *v33 = v17;
        v33[1] = v16;
        *(*(v35 + 56) + 8 * v28) = v34;
        ++*(v35 + 16);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v35;
    }

    v10 = *(v3 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t HeadlineServiceType.headlines(for:failIfAnyMissing:cachePolicy:purpose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = FCCurrentQoSOrUtilityIfMain();
  v13 = *(a6 + 8);

  return v13(a1, a2, a3, a4, v12, a5, a6);
}

uint64_t HeadlineServiceType.fetchHeadlines(for:feedPersonalizer:purpose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D6EFD3CC(a1);
  v11 = sub_1D6EFD5E8(a1);
  v12 = sub_1D6EFD4E0(a1);
  v13 = (*(a5 + 64))(v10, v11, v12, a2, 0, a3, a4, a5);

  return v13;
}

uint64_t HeadlineServiceType.headline(for:purpose:)()
{
  v0 = [objc_opt_self() defaultCachePolicy];
  FCCurrentQoSOrUtilityIfMain();
  v1 = HeadlineServiceType.headline(for:cachePolicy:purpose:qualityOfService:)();

  return v1;
}

void *HeadlineService.__allocating_init(tagService:coreConfigurationManager:cloudContext:paidAccessChecker:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1D5B7DDE8(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

uint64_t sub_1D6EFD3CC(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v3 = *(result + 16);
  v4 = result + 32;
LABEL_2:
  v5 = v4 + 24 * v1;
  while (1)
  {
    if (v3 == v1)
    {
      return v2;
    }

    if (v1 >= v3)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v5 += 24;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    ++v1;
    if (result)
    {
      v7 = swift_unknownObjectRetain();
      MEMORY[0x1DA6F9CE0](v7);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      result = sub_1D726278C();
      v2 = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1D6EFD4E0(uint64_t a1)
{
  v2 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        swift_unknownObjectRetain();
      }

      v4 += 3;
      v5 = v8;
      swift_unknownObjectRetain();
      v6 = v7;
      [v2 setObject:v6 forKey:v9];

      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_1D6EFD5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = a1 + 48;
  v4 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v5 = (v3 + 24 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_25;
      }

      if (*v5)
      {
        break;
      }

LABEL_4:
      v5 += 3;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *v5;
    swift_unknownObjectRetain();
    v10 = v8;
    v11 = v9;
    v12 = [v7 sourceFeedID];
    if (!v12)
    {

      swift_unknownObjectRelease();
      goto LABEL_4;
    }

    v34 = v3;
    v13 = v12;
    v14 = sub_1D726207C();
    v35 = v15;

    v16 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1D5B69D90(v14, v35);
    v20 = v4[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v24 = v19;
    if (v4[3] < v23)
    {
      sub_1D6D73BF0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1D5B69D90(v14, v35);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_28;
      }

LABEL_15:
      v3 = v34;
      if (v24)
      {
        goto LABEL_16;
      }

LABEL_18:
      v4[(v18 >> 6) + 8] |= 1 << v18;
      v30 = (v4[6] + 16 * v18);
      *v30 = v14;
      v30[1] = v35;
      *(v4[7] + 8 * v18) = v16;

      v31 = v4[2];
      v22 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (!v22)
      {
        v4[2] = v32;

        swift_unknownObjectRelease();
        goto LABEL_20;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v29 = v18;
    sub_1D6D857AC();
    v18 = v29;
    v3 = v34;
    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v26 = v18;

    v27 = v4[7];
    v28 = *(v27 + 8 * v26);
    *(v27 + 8 * v26) = v16;

    swift_unknownObjectRelease();
LABEL_20:
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

uint64_t HeadlineServiceType.headlines(for:failIfAnyMissing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() defaultCachePolicy];
  v8 = *MEMORY[0x1E69B50B8];
  v9 = FCCurrentQoSOrUtilityIfMain();
  v10 = (*(a4 + 8))(a1, 0, v7, v8, v9, a3, a4);

  return v10;
}

uint64_t HeadlineServiceType.headlines(for:failIfAnyMissing:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69B50B8];
  v11 = FCCurrentQoSOrUtilityIfMain();
  v12 = *(a5 + 8);

  return v12(a1, a2, a3, v10, v11, a4, a5);
}

uint64_t HeadlineServiceType.headline(for:)()
{
  v0 = [objc_opt_self() defaultCachePolicy];
  FCCurrentQoSOrUtilityIfMain();
  v1 = HeadlineServiceType.headline(for:cachePolicy:purpose:qualityOfService:)();

  return v1;
}

uint64_t HeadlineServiceType.headline(for:cachePolicy:purpose:)()
{
  FCCurrentQoSOrUtilityIfMain();

  return HeadlineServiceType.headline(for:cachePolicy:purpose:qualityOfService:)();
}

uint64_t HeadlineServiceType.headline(for:cachePolicy:)()
{
  FCCurrentQoSOrUtilityIfMain();

  return HeadlineServiceType.headline(for:cachePolicy:purpose:qualityOfService:)();
}

uint64_t HeadlineServiceType.headline(for:cachePolicy:purpose:qualityOfService:)()
{
  sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D5B5534C(0, &qword_1EDF3C720);
  v1 = sub_1D725BA7C();

  return v1;
}

uint64_t sub_1D6EFDC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D5B5D358(0, &qword_1EDF195B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  v16 = *(a8 + 8);

  v17 = v16(v15, 1, a4, a5, a6, a7, a8);

  return v17;
}

uint64_t *sub_1D6EFDD60(uint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D6F05064();
    swift_allocError();
    *v2 = 0xD000000000000014;
    *(v2 + 8) = 0x80000001D73F7220;
    *(v2 + 16) = 1;
    return swift_willThrow();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6FB460](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    sub_1D5B9F15C(0, &unk_1EDF3B900, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}