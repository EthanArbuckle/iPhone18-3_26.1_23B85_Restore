void sub_1D5C66670()
{
  if (!qword_1EDF251F0)
  {
    sub_1D5C66720();
    sub_1D5C66774();
    sub_1D5C66878();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF251F0);
    }
  }
}

uint64_t sub_1D5C666F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C66138(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C66720()
{
  result = qword_1EDF27868;
  if (!qword_1EDF27868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27868);
  }

  return result;
}

unint64_t sub_1D5C66774()
{
  result = qword_1EDF27870;
  if (!qword_1EDF27870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27870);
  }

  return result;
}

unint64_t sub_1D5C667CC()
{
  result = qword_1EDF27858;
  if (!qword_1EDF27858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27858);
  }

  return result;
}

unint64_t sub_1D5C66824()
{
  result = qword_1EDF27860;
  if (!qword_1EDF27860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27860);
  }

  return result;
}

unint64_t sub_1D5C66878()
{
  result = qword_1EDF27878;
  if (!qword_1EDF27878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27878);
  }

  return result;
}

uint64_t sub_1D5C668CC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6164696C61766E69;
  v4 = 2019912806;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79747265706F7270;
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

unint64_t sub_1D5C66964()
{
  result = qword_1EDF22A80;
  if (!qword_1EDF22A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22A80);
  }

  return result;
}

uint64_t sub_1D5C669B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 9))
  {
    return (*a1 + 1018);
  }

  v3 = ((*a1 >> 60) & 3 | (4 * *(a1 + 8))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C66A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 8) = 0;
    *result = a2 - 1018;
    if (a3 >= 0x3FA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = (-a2 & 3) << 60;
      *(result + 8) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t FormatAccessibilityProperty.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5113FA0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C67064();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28 <= 2u)
    {
      v22 = v26;
      if (v28)
      {
        v27 = xmmword_1D7279980;
        if (v28 == 1)
        {
          sub_1D5C91274();
          sub_1D726431C();
          (*(v7 + 8))(v13, v6);
          v23 = 0;
          v24 = v28 | 0x1000000000000000;
        }

        else
        {
          sub_1D5C91274();
          sub_1D726431C();
          (*(v7 + 8))(v13, v6);
          v23 = 0;
          v24 = v28 | 0x2000000000000000;
        }
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D5C91274();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = 0;
        v24 = v28;
      }

      goto LABEL_25;
    }

    v22 = v26;
    if (v28 > 4u)
    {
      if (v28 == 5)
      {
        v27 = xmmword_1D7279980;
        sub_1D5C91274();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v24 = v28 | 0x1000000000000000;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF33F58, sub_1D5C671FC, &type metadata for FormatAccessibilityTrait, type metadata accessor for FormatValue);
        v27 = xmmword_1D7279980;
        sub_1D5C67384();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v24 = v28 | 0x2000000000000000;
      }
    }

    else
    {
      if (v28 == 3)
      {
        v27 = xmmword_1D7279980;
        sub_1D5C91274();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = 0;
        v24 = v28 | 0x3000000000000000;
LABEL_25:
        *v22 = v24;
        *(v22 + 8) = v23;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v27 = xmmword_1D7279980;
      sub_1D5C91274();
      sub_1D726431C();
      (*(v7 + 8))(v13, v6);
      v24 = v28;
    }

    v23 = 1;
    goto LABEL_25;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C67064()
{
  result = qword_1EDF22A88;
  if (!qword_1EDF22A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22A88);
  }

  return result;
}

unint64_t sub_1D5C67124()
{
  result = qword_1EDF22A90;
  if (!qword_1EDF22A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22A90);
  }

  return result;
}

uint64_t sub_1D5C67178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C671A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C671A8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C671FC()
{
  result = qword_1EDF26778;
  if (!qword_1EDF26778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26778);
  }

  return result;
}

unint64_t sub_1D5C67250(void *a1)
{
  a1[1] = sub_1D5C67288();
  a1[2] = sub_1D5C672DC();
  result = sub_1D5C67330();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5C67288()
{
  result = qword_1EDF26780;
  if (!qword_1EDF26780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26780);
  }

  return result;
}

unint64_t sub_1D5C672DC()
{
  result = qword_1EDF26798;
  if (!qword_1EDF26798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26798);
  }

  return result;
}

unint64_t sub_1D5C67330()
{
  result = qword_1EDF26790;
  if (!qword_1EDF26790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26790);
  }

  return result;
}

unint64_t sub_1D5C67384()
{
  result = qword_1EDF33F60;
  if (!qword_1EDF33F60)
  {
    sub_1D5C30060(255, &qword_1EDF33F58, sub_1D5C671FC, &type metadata for FormatAccessibilityTrait, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33F60);
  }

  return result;
}

unint64_t sub_1D5C67474()
{
  result = qword_1EDF26788;
  if (!qword_1EDF26788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26788);
  }

  return result;
}

NewsFeed::FormatAccessibilityTrait_optional __swiftcall FormatAccessibilityTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D5C67538()
{
  result = qword_1EDF235B0;
  if (!qword_1EDF235B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235B0);
  }

  return result;
}

uint64_t sub_1D5C6758C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 0;
      *(result + 50) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1D5C67600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (((a7 >> 17) & 0x7F) != 0x7F)
  {
    return sub_1D5D0A678(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

unint64_t sub_1D5C67614()
{
  result = qword_1EDF289A8;
  if (!qword_1EDF289A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF289A8);
  }

  return result;
}

uint64_t FormatButtonNodeAction.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  *&v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v56 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v12 = v59;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_31:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();
  }

  else
  {
    v57 = v6;
    *&v59 = v3;
    v14 = v58;
    v15 = v66;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_1D7264AFC();
    v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

    v18 = v11;
    if (v17)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v13 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = &unk_1F5114568;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v11, v8);
          goto LABEL_31;
        }
      }
    }

    sub_1D5C6847C();
    v60 = 0uLL;
    sub_1D726431C();
    if (v65 > 5u)
    {
      if (v65 > 8u)
      {
        if (v65 == 9)
        {
          v60 = xmmword_1D7279980;
          sub_1D667D030();
          sub_1D726431C();
          (*(v14 + 8))(v11, v8);
          v41 = v65;
          v42 = swift_allocObject();
          *(v42 + 16) = v41;
          v28 = v42 | 0x8000000000000000;
        }

        else
        {
          if (v65 == 10)
          {
            v65 = xmmword_1D7279980;
            sub_1D667CF98();
            sub_1D726431C();
            (*(v14 + 8))(v11, v8);
            v31 = v62;
            v32 = v63;
            v58 = v61;
            v59 = v60;
            v33 = swift_allocObject();
            v34 = v33;
            v35 = v58;
            *(v33 + 16) = v59;
            *(v33 + 32) = v35;
            *(v33 + 48) = v31;
            v36 = 0x9000000000000000;
          }

          else
          {
            v65 = xmmword_1D7279980;
            sub_1D667CF44();
            sub_1D726431C();
            (*(v14 + 8))(v11, v8);
            v54 = v62;
            v32 = v63;
            v58 = v61;
            v59 = v60;
            v33 = swift_allocObject();
            v34 = v33;
            v55 = v58;
            *(v33 + 16) = v59;
            *(v33 + 32) = v55;
            *(v33 + 48) = v54;
            v36 = 0xA000000000000000;
          }

          v28 = v33 | v36;
          *(v34 + 64) = v32;
        }
      }

      else if (v65 == 6)
      {
        (*(v14 + 8))(v11, v8);
        v28 = 0xB000000000000000;
      }

      else if (v65 == 7)
      {
        v65 = xmmword_1D7279980;
        sub_1D614F2EC();
        sub_1D726431C();
        (*(v14 + 8))(v11, v8);
        v51 = swift_allocObject();
        v52 = v63;
        *(v51 + 48) = v62;
        *(v51 + 64) = v52;
        *(v51 + 80) = v64;
        v53 = v61;
        *(v51 + 16) = v60;
        *(v51 + 32) = v53;
        v28 = v51 | 0x6000000000000000;
      }

      else
      {
        v60 = xmmword_1D7279980;
        sub_1D667D084();
        sub_1D726431C();
        (*(v14 + 8))(v11, v8);
        v46 = v65;
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        v28 = v47 | 0x7000000000000000;
      }
    }

    else if (v65 > 2u)
    {
      if (v65 == 3)
      {
        v60 = xmmword_1D7279980;
        sub_1D5CD4024();
        sub_1D726431C();
        (*(v14 + 8))(v11, v8);
        v39 = v65;
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        v28 = v40 | 0x3000000000000000;
      }

      else if (v65 == 4)
      {
        sub_1D5C30060(0, &qword_1EDF2EDC8, sub_1D5C68600, &type metadata for FormatButtonNodeAction, type metadata accessor for FormatSwitchValue);
        v65 = xmmword_1D7279980;
        sub_1D5C688A8();
        sub_1D726431C();
        (*(v14 + 8))(v11, v8);
        v29 = v60;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v28 = v30 | 0x4000000000000000;
      }

      else
      {
        v65 = xmmword_1D7279980;
        sub_1D667D1A4();
        sub_1D726431C();
        (*(v14 + 8))(v11, v8);
        v59 = v60;
        v48 = v61;
        v49 = swift_allocObject();
        *(v49 + 16) = v59;
        *(v49 + 32) = v48;
        v28 = v49 | 0x5000000000000000;
      }
    }

    else if (v65)
    {
      v60 = xmmword_1D7279980;
      if (v65 == 1)
      {
        sub_1D5C6C910();
        sub_1D726431C();
        (*(v14 + 8))(v11, v8);
        v26 = v65;
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v28 = v27 | 0x1000000000000000;
      }

      else
      {
        sub_1D5B58B84(&qword_1EDF2B450, type metadata accessor for FormatCommandOpenURL);
        v43 = v57;
        sub_1D726431C();
        (*(v14 + 8))(v18, v8);
        v44 = swift_allocBox();
        sub_1D5C8F76C(v43, v45, type metadata accessor for FormatCommandOpenURL);
        v28 = v44 | 0x2000000000000000;
      }
    }

    else
    {
      v65 = xmmword_1D7279980;
      sub_1D5C76450();
      sub_1D726431C();
      (*(v14 + 8))(v11, v8);
      v37 = v60;
      v38 = v61;
      v28 = swift_allocObject();
      *(v28 + 16) = v37;
      *(v28 + 32) = v38;
    }

    *v15 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C68030()
{
  sub_1D667D0D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1D5C68084()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for FormatCommandOpenURL()
{
  result = qword_1EDF2B440;
  if (!qword_1EDF2B440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5C6814C()
{
  result = type metadata accessor for FormatAbsoluteURL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FormatAbsoluteURL()
{
  result = qword_1EDF40780;
  if (!qword_1EDF40780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5C6820C()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    sub_1D5C682F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5C68290()
{
  if (!qword_1EDF3DD28)
  {
    sub_1D5C6838C();
    sub_1D5C683E0();
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3DD28);
    }
  }
}

void sub_1D5C682F8()
{
  if (!qword_1EDF402C8)
  {
    sub_1D5C68290();
    sub_1D5C68434(qword_1EDF3DD30, sub_1D5C68290);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF402C8);
    }
  }
}

unint64_t sub_1D5C6838C()
{
  result = qword_1EDF3FF68;
  if (!qword_1EDF3FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FF68);
  }

  return result;
}

unint64_t sub_1D5C683E0()
{
  result = qword_1EDF3FF70;
  if (!qword_1EDF3FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FF70);
  }

  return result;
}

uint64_t sub_1D5C68434(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5C6847C()
{
  result = qword_1EDF289C0;
  if (!qword_1EDF289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF289C0);
  }

  return result;
}

unint64_t sub_1D5C68530()
{
  result = qword_1EDF289C8[0];
  if (!qword_1EDF289C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF289C8);
  }

  return result;
}

uint64_t sub_1D5C68584@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C685B4();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C685B4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C68600()
{
  result = qword_1EDF289A0;
  if (!qword_1EDF289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF289A0);
  }

  return result;
}

unint64_t sub_1D5C68654(void *a1)
{
  a1[1] = sub_1D5C67614();
  a1[2] = sub_1D5C6868C();
  result = sub_1D5C686E0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5C6868C()
{
  result = qword_1EDF289B8;
  if (!qword_1EDF289B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF289B8);
  }

  return result;
}

unint64_t sub_1D5C686E0()
{
  result = qword_1EDF289B0;
  if (!qword_1EDF289B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF289B0);
  }

  return result;
}

uint64_t sub_1D5C68764()
{
  type metadata accessor for FormatSwitchValue.CaseValue();
  result = sub_1D72627FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatSwitchValue.DefaultValue();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5C68810()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5C688A8()
{
  result = qword_1EDF2EDD0;
  if (!qword_1EDF2EDD0)
  {
    sub_1D5C30060(255, &qword_1EDF2EDC8, sub_1D5C68600, &type metadata for FormatButtonNodeAction, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2EDD0);
  }

  return result;
}

uint64_t sub_1D5C68938(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t FormatSwitchValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a4;
  v56 = type metadata accessor for FormatSwitchValue.DefaultValue();
  v48 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v43 - v11;
  v53 = a2;
  v54 = a3;
  v12 = _s10CodingKeysOMa_42();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  *&v59 = v12;
  *(&v59 + 1) = WitnessTable;
  v50 = v14;
  v51 = WitnessTable;
  v60 = v14;
  v61 = v15;
  v16 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v17 = sub_1D726435C();
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v57;
  sub_1D7264B0C();
  v22 = v21;
  if (v21)
  {
    goto LABEL_12;
  }

  v44 = v15;
  v45 = v12;
  v46 = 0;
  v57 = v17;
  v23 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_1D7264AFC();
  v25 = Dictionary<>.errorOnUnknownKeys.getter(v24);

  if ((v25 & 1) == 0)
  {
LABEL_10:
    type metadata accessor for FormatSwitchValue.CaseValue();
    sub_1D72627FC();
    v59 = 0uLL;
    LOBYTE(v60) = 0;
    v58 = swift_getWitnessTable();
    swift_getWitnessTable();
    v39 = v57;
    v40 = v46;
    sub_1D726431C();
    v22 = v40;
    if (!v40)
    {
      v51 = v62;
      v59 = xmmword_1D728CF30;
      LOBYTE(v60) = 0;
      swift_getWitnessTable();
      v41 = v52;
      sub_1D726431C();
      (*(v55 + 8))(v20, v39);
      v42 = v47;
      (*(v48 + 32))(v47, v41, v23);
      sub_1D5C6F134(v51, v42, v49);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v55 + 8))(v20, v39);
LABEL_12:
    sub_1D61E4FBC(a1, v22);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v27 = (sub_1D726433C() + 48);
  v28 = v45;
  while (1)
  {
    if (v26 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v29 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v29 & 1) == 0)
    {
      break;
    }

    v31 = *v27;
    v59 = *(v27 - 1);
    LOBYTE(v60) = v31;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_16;
    }

    v32 = sub_1D6AFC82C(v16);
    ++v26;
    v27 += 24;
    if (v33)
    {
      v34 = v32;
      v35 = v33;

      v36 = sub_1D6AFC690(v28, v51, v50, v44);
      sub_1D5E2D970();
      v37 = swift_allocError();
      *v38 = v34;
      *(v38 + 8) = v35;
      v22 = v37;
      *(v38 + 16) = v36;
      *(v38 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v55 + 8))(v20, v57);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5C690C8(char a1)
{
  if (!a1)
  {
    return 0x7365736163;
  }

  if (a1 == 1)
  {
    return 0x746C7561666564;
  }

  return 1885433183;
}

void sub_1D5C69120(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x71)
  {
    v8 = 113;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x71)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else if (a2 > 0x71)
  {
    *a1 = a2 - 114;
  }

  else
  {
    v19 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
    *a1 = (v19 | (v19 << 57)) & 0xF000000000000007;
  }
}

uint64_t sub_1D5C69388(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x71)
  {
    v7 = 113;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x71)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
      v16 = v15 ^ 0x7F;
      v17 = 128 - v15;
      if (v16 >= 0x71)
      {
        return 0;
      }

      else
      {
        return v17;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t sub_1D5C6951C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v47 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = &v42 - v8;
  v51 = v7;
  v54 = v9;
  v10 = _s10CodingKeysOMa_308();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v56 = v10;
  *(&v56 + 1) = WitnessTable;
  v52 = WitnessTable;
  v49 = v12;
  v57 = v12;
  v58 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v42 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v55;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    goto LABEL_12;
  }

  v43 = v13;
  v44 = v10;
  v45 = 0;
  v55 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if ((v22 & 1) == 0)
  {
LABEL_10:
    sub_1D5C55EBC();
    v56 = 0uLL;
    LOBYTE(v57) = 0;
    v36 = v55;
    v37 = v45;
    sub_1D726431C();
    v20 = v37;
    if (!v37)
    {
      v38 = v59;
      v56 = xmmword_1D728CF30;
      LOBYTE(v57) = 0;
      v40 = v50;
      v39 = v51;
      sub_1D726431C();
      (*(v53 + 8))(v36, v15);
      *&v56 = v38;
      v41 = v46;
      (*(v47 + 32))(v46, v40, v39);
      sub_1D5C6C370(&v56, v41, v39, v48);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v53 + 8))(v36, v15);
LABEL_12:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v24 = (sub_1D726433C() + 48);
  v25 = v52;
  v26 = v44;
  while (1)
  {
    if (v23 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v27 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v29 = *v24;
    v56 = *(v24 - 1);
    LOBYTE(v57) = v29;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

    v30 = sub_1D6AFC82C(v14);
    ++v23;
    v24 += 24;
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v34 = sub_1D6AFC690(v26, v25, v49, v43);
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v35 = v32;
      *(v35 + 8) = v33;
      *(v35 + 16) = v34;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v53 + 8))(v55, v15);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5C69A9C(char a1)
{
  if (!a1)
  {
    return 0x6973736572707865;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 1885433183;
}

uint64_t FormatCommandOpenURL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v37, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v15 = v41;
  sub_1D7264B0C();
  if (!v15)
  {
    v41 = 0;
    v34 = v14;
    v35 = v5;
    v16 = v36;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_1D7264AFC();
    v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

    v19 = v7;
    v20 = v10;
    if (v18)
    {
      v21 = sub_1D726433C();
      v22 = (v21 + 40);
      v23 = *(v21 + 16) + 1;
      while (--v23)
      {
        v24 = v22 + 2;
        v25 = *v22;
        v22 += 2;
        if (v25 >= 4)
        {
          v26 = *(v24 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v27 = v26;
          *(v27 + 8) = v25;
          *(v27 + 16) = &unk_1F50F7DB8;
          *(v27 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          goto LABEL_9;
        }
      }
    }

    sub_1D5C69FE0();
    v40[0] = 0uLL;
    v28 = v41;
    sub_1D726431C();
    if (v28)
    {
LABEL_9:
      (*(v38 + 8))(v20, v19);
    }

    else
    {
      if (v39 < 2u)
      {
        v40[0] = xmmword_1D7279980;
        sub_1D5F8731C(&qword_1EDF2F900, type metadata accessor for FormatAbsoluteURL);
        v32 = v35;
        sub_1D726431C();
        (*(v38 + 8))(v20, v7);
        v31 = v34;
        sub_1D5C6C308(v32, v34, type metadata accessor for FormatAbsoluteURL);
      }

      else
      {
        v39 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v38 + 8))(v20, v7);
        v30 = *(v40 + 8);
        v31 = v34;
        *v34 = *&v40[0];
        *(v31 + 1) = v30;
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5C6C308(v31, v16, type metadata accessor for FormatCommandOpenURL);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C69FE0()
{
  result = qword_1EDF2B458;
  if (!qword_1EDF2B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B458);
  }

  return result;
}

unint64_t sub_1D5C6A094()
{
  result = qword_1EDF2B460;
  if (!qword_1EDF2B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B460);
  }

  return result;
}

uint64_t sub_1D5C6A0E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C6A118();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C6A118()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C6A164()
{
  result = qword_1EDF2C2D0;
  if (!qword_1EDF2C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C2D0);
  }

  return result;
}

uint64_t sub_1D5C6A1B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D5C6A1F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t FormatOptionBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1D5C2E60C(0, &qword_1EDF3BBE0, sub_1D5C6A6CC, sub_1D5C6A720);
  v4 = v3;
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - v6;
  sub_1D5C6A7F8();
  v9 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C6A774();
  sub_1D5B58B84(&qword_1EDF254A8, sub_1D5C6A774);
  v13 = v41;
  sub_1D7264B0C();
  v14 = v13;
  if (v13)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v14);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v35;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v20 - 2);
      v26 = *(v20 - 1);

      v28 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x7265696669646F6DLL, 0xE900000000000073);
      sub_1D5E2D970();
      v14 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v36 + 8))(v12, v9);
      goto LABEL_11;
    }

LABEL_7:
  }

  v39 = 0uLL;
  v40 = 0;
  v21 = sub_1D72642BC();
  v23 = v22;
  v33 = v21;
  v32 = xmmword_1D728CF30;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  v24 = sub_1D726434C();
  v25 = v36;
  if (v24)
  {
    v37 = v32;
    v38 = 0;
    sub_1D5C6AA94();
    sub_1D726431C();
    v31 = sub_1D725A74C();
    (*(v34 + 8))(v41, v4);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  (*(v25 + 8))(v12, v9);
  *v17 = v33;
  v17[1] = v23;
  v17[2] = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C6A6CC()
{
  result = qword_1EDF22238;
  if (!qword_1EDF22238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22238);
  }

  return result;
}

unint64_t sub_1D5C6A720()
{
  result = qword_1EDF22240;
  if (!qword_1EDF22240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22240);
  }

  return result;
}

void sub_1D5C6A774()
{
  if (!qword_1EDF254A0)
  {
    sub_1D5C6A88C();
    sub_1D5C6A8E0();
    sub_1D5C6A9E4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF254A0);
    }
  }
}

void sub_1D5C6A7F8()
{
  if (!qword_1EDF1A160)
  {
    sub_1D5C6A774();
    sub_1D5B58B84(&qword_1EDF254A8, sub_1D5C6A774);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A160);
    }
  }
}

unint64_t sub_1D5C6A88C()
{
  result = qword_1EDF2C2E8;
  if (!qword_1EDF2C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C2E8);
  }

  return result;
}

unint64_t sub_1D5C6A8E0()
{
  result = qword_1EDF2C2F0;
  if (!qword_1EDF2C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C2F0);
  }

  return result;
}

unint64_t sub_1D5C6A938()
{
  result = qword_1EDF2C2D8;
  if (!qword_1EDF2C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C2D8);
  }

  return result;
}

unint64_t sub_1D5C6A990()
{
  result = qword_1EDF2C2E0;
  if (!qword_1EDF2C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C2E0);
  }

  return result;
}

unint64_t sub_1D5C6A9E4()
{
  result = qword_1EDF2C2F8;
  if (!qword_1EDF2C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C2F8);
  }

  return result;
}

uint64_t sub_1D5C6AA38()
{
  v1 = 0x7265696669646F6DLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1D5C6AA94()
{
  result = qword_1EDF3BBE8;
  if (!qword_1EDF3BBE8)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BBE0, sub_1D5C6A6CC, sub_1D5C6A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BBE8);
  }

  return result;
}

uint64_t FormatOptionBindingModifier.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5112000;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C6AE7C();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      (*(v11 + 8))(v10, v6);
      v23 = 0;
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D5C6AF90();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = v27;
    }

    *v12 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C6AE7C()
{
  result = qword_1EDF22248;
  if (!qword_1EDF22248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22248);
  }

  return result;
}

unint64_t sub_1D5C6AF30()
{
  result = qword_1EDF22250;
  if (!qword_1EDF22250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22250);
  }

  return result;
}

unint64_t sub_1D5C6AF90()
{
  result = qword_1EDF1EE88;
  if (!qword_1EDF1EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EE88);
  }

  return result;
}

uint64_t FormatURLParameterOptionModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D5C6B2FC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C6B390();
  sub_1D5B58B84(&qword_1EDF24E28, sub_1D5C6B390);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x6574656D61726170, 0xEA00000000007372);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
  sub_1D5C6B5D8();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C6B2FC()
{
  if (!qword_1EDF19E20)
  {
    sub_1D5C6B390();
    sub_1D5B58B84(&qword_1EDF24E28, sub_1D5C6B390);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E20);
    }
  }
}

void sub_1D5C6B390()
{
  if (!qword_1EDF24E20)
  {
    sub_1D5C6B42C();
    sub_1D5C6B480();
    sub_1D5C6B584();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24E20);
    }
  }
}

unint64_t sub_1D5C6B42C()
{
  result = qword_1EDF1EEA0;
  if (!qword_1EDF1EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EEA0);
  }

  return result;
}

unint64_t sub_1D5C6B480()
{
  result = qword_1EDF1EEA8;
  if (!qword_1EDF1EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EEA8);
  }

  return result;
}

unint64_t sub_1D5C6B4D8()
{
  result = qword_1EDF1EE90;
  if (!qword_1EDF1EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EE90);
  }

  return result;
}

unint64_t sub_1D5C6B530()
{
  result = qword_1EDF1EE98;
  if (!qword_1EDF1EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EE98);
  }

  return result;
}

unint64_t sub_1D5C6B584()
{
  result = qword_1EDF1EEB0;
  if (!qword_1EDF1EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EEB0);
  }

  return result;
}

unint64_t sub_1D5C6B5D8()
{
  result = qword_1EDF1B0F8;
  if (!qword_1EDF1B0F8)
  {
    sub_1D5C34D84(255, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
    sub_1D5C6838C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B0F8);
  }

  return result;
}

uint64_t sub_1D5C6B678()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

void sub_1D5C6B6B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1819242338;
  v5 = 0xE400000000000000;
  v6 = 1954047348;
  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 3)
  {
    v8 = 0x656D695465746164;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74616F6C66;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatQueryParameter.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C6BAEC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C6BA68();
  sub_1D5B58B84(&qword_1EDF25398, sub_1D5C6BA68);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(1701667182, 0xE400000000000000, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5C6BD90();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C6BA68()
{
  if (!qword_1EDF25390)
  {
    sub_1D5C6BB98();
    sub_1D5C6BBEC();
    sub_1D5C6BCF0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25390);
    }
  }
}

void sub_1D5C6BAEC()
{
  if (!qword_1EDF1A0D8)
  {
    sub_1D5C6BA68();
    sub_1D5B58B84(&qword_1EDF25398, sub_1D5C6BA68);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0D8);
    }
  }
}

unint64_t sub_1D5C6BB98()
{
  result = qword_1EDF2AD30;
  if (!qword_1EDF2AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD30);
  }

  return result;
}

unint64_t sub_1D5C6BBEC()
{
  result = qword_1EDF2AD38;
  if (!qword_1EDF2AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD38);
  }

  return result;
}

unint64_t sub_1D5C6BC44()
{
  result = qword_1EDF2AD20;
  if (!qword_1EDF2AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD20);
  }

  return result;
}

unint64_t sub_1D5C6BC9C()
{
  result = qword_1EDF2AD28;
  if (!qword_1EDF2AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD28);
  }

  return result;
}

unint64_t sub_1D5C6BCF0()
{
  result = qword_1EDF2AD40;
  if (!qword_1EDF2AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD40);
  }

  return result;
}

uint64_t sub_1D5C6BD48()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1D5C6BD90()
{
  result = qword_1EDF30110;
  if (!qword_1EDF30110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatQueryValue(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t FormatQueryValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5112500;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C6C1A4();
    v26 = 0;
    v27 = 0;
    sub_1D726431C();
    sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    v25 = xmmword_1D7279980;
    sub_1D5C34150();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v22 = v26;
    v23 = v27;
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    *v13 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C6C1A4()
{
  result = qword_1EDF30118;
  if (!qword_1EDF30118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30118);
  }

  return result;
}

unint64_t sub_1D5C6C258()
{
  result = qword_1EDF30120;
  if (!qword_1EDF30120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30120);
  }

  return result;
}

uint64_t sub_1D5C6C2B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D5C6C308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C6C370@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for FormatSwitchValue.CaseValue();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t FormatSwitchValue.DefaultValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v46 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = &v41 - v8;
  v50 = v7;
  v52 = v9;
  v10 = _s10CodingKeysOMa_41();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v53 = v10;
  *(&v53 + 1) = WitnessTable;
  v48 = WitnessTable;
  v44 = v12;
  v54 = v12;
  v55 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v56;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    goto LABEL_12;
  }

  v42 = v13;
  v43 = 0;
  v56 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v53 = 0uLL;
    LOBYTE(v54) = 0;
    v37 = v49;
    v36 = v50;
    v38 = v56;
    v39 = v43;
    sub_1D726431C();
    if (!v39)
    {
      (*(v51 + 8))(v38, v15);
      v40 = v45;
      (*(v46 + 32))(v45, v37, v36);
      sub_1D5C6F0FC(v40, v36, v47);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v51 + 8))(v38, v15);
    v20 = v39;
LABEL_12:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v24 = (sub_1D726433C() + 48);
  v25 = v10;
  v26 = v48;
  while (1)
  {
    if (v23 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v27 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v29 = *v24;
    v53 = *(v24 - 1);
    LOBYTE(v54) = v29;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

    v30 = sub_1D6AFC82C(v14);
    ++v23;
    v24 += 24;
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v34 = sub_1D6AFC690(v25, v26, v44, v42);
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v35 = v32;
      *(v35 + 8) = v33;
      *(v35 + 16) = v34;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v51 + 8))(v56, v15);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1D5C6C910()
{
  result = qword_1EDF33208;
  if (!qword_1EDF33208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33208);
  }

  return result;
}

uint64_t FormatCommand.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5114748;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C6CD38();
    v25 = 0uLL;
    sub_1D726431C();
    v24 = xmmword_1D7279980;
    sub_1D5C6CE4C();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v22 = swift_allocObject();
    v23 = v26;
    *(v22 + 16) = v25;
    *(v22 + 32) = v23;
    *(v22 + 48) = *v27;
    *(v22 + 63) = *&v27[15];
    *v13 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C6CCA8()
{
  sub_1D5E1DCFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 66), sub_1D5E1DE10, sub_1D5E1DE10, sub_1D5E1DE98);

  return swift_deallocObject();
}

unint64_t sub_1D5C6CD38()
{
  result = qword_1EDF33210;
  if (!qword_1EDF33210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33210);
  }

  return result;
}

unint64_t sub_1D5C6CDEC()
{
  result = qword_1EDF33218;
  if (!qword_1EDF33218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33218);
  }

  return result;
}

unint64_t sub_1D5C6CE4C()
{
  result = qword_1EDF2B468;
  if (!qword_1EDF2B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B468);
  }

  return result;
}

uint64_t sub_1D5C6CEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7F6)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 2039;
    if (a3 >= 0x7F7)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F7)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (-a2 & 7) << 11;
      *(result + 50) = -a2 >> 3;
    }
  }

  return result;
}

uint64_t sub_1D5C6CF10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F7 && *(a1 + 51))
  {
    return (*a1 + 2039);
  }

  v3 = ((*(a1 + 48) >> 11) & 7 | (8 * *(a1 + 50))) ^ 0x7FF;
  if (v3 >= 0x7F6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatCommandBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v7;
    v14 = v10;
    v15 = v34;
    if (v12)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5114798;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v15 + 8))(v14, v13);
          goto LABEL_29;
        }
      }
    }

    sub_1D5C6D6FC();
    v41 = 0;
    v42 = 0;
    sub_1D726431C();
    v23 = (v15 + 8);
    if (v44 > 4u)
    {
      v24 = a2;
      if (v44 <= 6u)
      {
        if (v44 == 5)
        {
          v36 = xmmword_1D7279980;
          sub_1D6680744();
          sub_1D726431C();
          (*v23)(v14, v13);
          v27 = 0;
          v43 = 0;
          *&v28 = v35;
          v30 = 10240;
        }

        else
        {
          v35 = xmmword_1D7279980;
          sub_1D666DE84();
          sub_1D726431C();
          (*v23)(v14, v13);
          v27 = 0;
          v28 = v36;
          v29 = v37;
          v43 = 0;
          *&v26 = v38;
          v30 = 12288;
        }

        goto LABEL_31;
      }

      if (v44 == 7)
      {
        v35 = xmmword_1D7279980;
        sub_1D66806F0();
        sub_1D726431C();
        (*v23)(v14, v13);
        v27 = 0;
        v28 = v36;
        v29 = v37;
        v26 = v38;
        v25 = v39;
        v30 = v40 | 0x3800;
LABEL_23:
        v43 = 0;
        goto LABEL_31;
      }

      if (v44 == 8)
      {
        v36 = xmmword_1D7279980;
        sub_1D668069C();
        sub_1D726431C();
        (*v23)(v14, v13);
        v30 = 0;
        v29 = v35;
        v27 = 1;
        v43 = 1;
        *&v28 = v35;
        goto LABEL_31;
      }

      v36 = xmmword_1D7279980;
      sub_1D6680648();
      sub_1D726431C();
      (*v23)(v14, v13);
      v31 = v35;
      v27 = 1;
      v43 = 1;
    }

    else
    {
      v24 = a2;
      if (v44 > 1u)
      {
        if (v44 != 2)
        {
          if (v44 != 3)
          {
            v36 = xmmword_1D7279980;
            sub_1D6201294();
            sub_1D726431C();
            (*v23)(v14, v13);
            v27 = 0;
            v43 = 0;
            *&v28 = v35;
            v30 = 0x2000;
            goto LABEL_31;
          }

          v35 = xmmword_1D7279980;
          sub_1D5C6E160();
          sub_1D726431C();
          (*v23)(v14, v13);
          v27 = 0;
          v28 = v36;
          v29 = v37;
          v30 = 6144;
          goto LABEL_23;
        }

        v36 = xmmword_1D7279980;
        sub_1D6680798();
        sub_1D726431C();
        (*v23)(v14, v13);
        v27 = 0;
        v43 = 0;
        *&v28 = v35;
        v30 = 4096;
LABEL_31:
        *v24 = v28;
        *(v24 + 16) = v29;
        *(v24 + 24) = v26;
        *(v24 + 40) = v25;
        *(v24 + 48) = v30;
        *(v24 + 50) = v27;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      if (!v44)
      {
        v35 = xmmword_1D7279980;
        sub_1D5C6D9D4();
        sub_1D726431C();
        (*v23)(v14, v13);
        v30 = 0;
        v27 = 0;
        v28 = v36;
        v29 = v37;
        v25 = v38;
        v43 = 0;
        *&v26 = v38;
        goto LABEL_31;
      }

      v36 = xmmword_1D7279980;
      sub_1D5CCDEA0();
      sub_1D726431C();
      (*v23)(v14, v13);
      v27 = 0;
      v31 = v35;
      v43 = 0;
    }

    *&v28 = v31;
    v30 = 2048;
    goto LABEL_31;
  }

LABEL_29:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C6D6FC()
{
  result = qword_1EDF2B470;
  if (!qword_1EDF2B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B470);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatFontWidth(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5C6D86C()
{
  result = qword_1EDF2B478;
  if (!qword_1EDF2B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B478);
  }

  return result;
}

uint64_t sub_1D5C6D8C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C6D988();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatFontWidth(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D5C6D988()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C6D9D4()
{
  result = qword_1EDF2DFA8;
  if (!qword_1EDF2DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DFA8);
  }

  return result;
}

uint64_t sub_1D5C6DA28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 25))
  {
    return (*a1 + 12);
  }

  v3 = ((2 * *(a1 + 24)) & 8 | (*(a1 + 24) >> 3) & 7) ^ 0xF;
  if (v3 >= 0xB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C6DA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * ((((-a2 & 8) != 0) - 2 * a2) & 0xF);
    }
  }

  return result;
}

uint64_t FormatGroupBinding.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5112690;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C6DFDC();
    v28 = 0uLL;
    sub_1D726431C();
    if (v27 <= 1u)
    {
      v23 = v31;
      a1 = v12;
      if (v27)
      {
        v28 = xmmword_1D7279980;
        sub_1D666DED8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = 0uLL;
        v26 = 8;
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D5C6E160();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = 0;
        v24 = v28;
        v25 = v29;
      }
    }

    else
    {
      v23 = v31;
      a1 = v12;
      if (v27 == 2)
      {
        v27 = xmmword_1D7279980;
        sub_1D5C6E160();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
        v25 = v29;
        v26 = 16;
      }

      else if (v27 == 3)
      {
        v27 = xmmword_1D7279980;
        sub_1D5C6E160();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
        v25 = v29;
        v26 = 24;
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D666DE84();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
        v25 = v29;
        v26 = v30 | 0x20;
      }
    }

    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 24) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C6DFDC()
{
  result = qword_1EDF2DFB0;
  if (!qword_1EDF2DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DFB0);
  }

  return result;
}

unint64_t sub_1D5C6E090()
{
  result = qword_1EDF2DFB8;
  if (!qword_1EDF2DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DFB8);
  }

  return result;
}

uint64_t sub_1D5C6E0E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C6E114();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C6E114()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C6E160()
{
  result = qword_1EDF2FB90;
  if (!qword_1EDF2FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FB90);
  }

  return result;
}

uint64_t sub_1D5C6E1B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5C6E1F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t FormatTagBinding.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    v14 = v9;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117BD0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v14, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C6E700();
    v27 = 0uLL;
    sub_1D726431C();
    if (v26 > 2u)
    {
      if (v26 == 3)
      {
        (*(v6 + 8))(v14, v5);
        v24 = 0;
        v25 = 3;
        v23 = 1;
      }

      else if (v26 == 4)
      {
        v27 = xmmword_1D7279980;
        sub_1D5C6E9C4();
        sub_1D726427C();
        v23 = v26;
        (*(v6 + 8))(v14, v5);
        v24 = 0;
        if (!v23)
        {
          v23 = MEMORY[0x1E69E7CC0];
        }

        v25 = 2;
      }

      else
      {
        (*(v6 + 8))(v14, v5);
        v24 = 0;
        v25 = 3;
        v23 = 2;
      }
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        (*(v6 + 8))(v14, v5);
        v23 = 0;
        v24 = 0;
        v25 = 3;
      }

      else
      {
        v26 = xmmword_1D7279980;
        sub_1D66C47F0();
        sub_1D726427C();
        if (*(&v27 + 1))
        {
          v24 = *(&v27 + 1);
        }

        else
        {
          v24 = &unk_1F5117C20;
        }

        if (*(&v27 + 1))
        {
          v23 = v27;
        }

        else
        {
          v23 = 0xF000000000000007;
        }

        (*(v6 + 8))(v14, v5);
        v25 = 1;
      }
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D5C91948();
      sub_1D726427C();
      (*(v6 + 8))(v14, v5);
      v24 = 0;
      v25 = 0;
      v23 = v26 & 1;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 16) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C6E700()
{
  result = qword_1EDF2FB98;
  if (!qword_1EDF2FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FB98);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatDateFormat.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C6E864()
{
  result = qword_1EDF2FBA0;
  if (!qword_1EDF2FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBA0);
  }

  return result;
}

uint64_t sub_1D5C6E8B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C6E8E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C6E8E8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for FormatDateFormat.Context(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C6E9C4()
{
  result = qword_1EDF2ECB8;
  if (!qword_1EDF2ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECB8);
  }

  return result;
}

uint64_t FormatTagNavigate.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  sub_1D5C2E60C(0, &qword_1EDF43AC8, sub_1D5C6838C, sub_1D5C683E0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - v6;
  sub_1D5C6EEBC();
  v9 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C6EE38();
  sub_1D5B58B84(&qword_1EDF255E8, sub_1D5C6EE38);
  sub_1D7264B0C();
  if (v2)
  {
    v13 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v9;
  v19 = v35;
  v18 = v36;
  if (v16)
  {
    v20 = sub_1D726433C();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 48);
      while (*v22 != 1)
      {
        v22 += 24;
        if (!--v21)
        {
          goto LABEL_9;
        }
      }

      v25 = *(v22 - 2);
      v24 = *(v22 - 1);

      v26 = v12;
      v27 = v17;
      v28 = sub_1D6628490(0x6574656D61726170, 0xEA00000000007372);
      sub_1D5E2D970();
      v13 = swift_allocError();
      *v29 = v25;
      *(v29 + 8) = v24;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v43 + 8))(v26, v27);
      goto LABEL_3;
    }

LABEL_9:
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (sub_1D726434C())
  {
    sub_1D5C8000C();
    v37 = 0;
    v38 = 0;
    v39 = 0;
    sub_1D726431C();
    v23 = v34;
    v30 = sub_1D725A74C();
    (*(v19 + 8))(v14, v18);
    v31 = v43;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v43;
    v23 = v34;
  }

  (*(v31 + 8))(v12, v17);
  *v23 = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C6EE38()
{
  if (!qword_1EDF255E0)
  {
    sub_1D5C6EF50();
    sub_1D5C6EFA4();
    sub_1D5C6F0A8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF255E0);
    }
  }
}

void sub_1D5C6EEBC()
{
  if (!qword_1EDF1A200)
  {
    sub_1D5C6EE38();
    sub_1D5B58B84(&qword_1EDF255E8, sub_1D5C6EE38);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A200);
    }
  }
}

unint64_t sub_1D5C6EF50()
{
  result = qword_1EDF2ECD0;
  if (!qword_1EDF2ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECD0);
  }

  return result;
}

unint64_t sub_1D5C6EFA4()
{
  result = qword_1EDF2ECD8;
  if (!qword_1EDF2ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECD8);
  }

  return result;
}

unint64_t sub_1D5C6EFFC()
{
  result = qword_1EDF2ECC0;
  if (!qword_1EDF2ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECC0);
  }

  return result;
}

unint64_t sub_1D5C6F054()
{
  result = qword_1EDF2ECC8;
  if (!qword_1EDF2ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECC8);
  }

  return result;
}

unint64_t sub_1D5C6F0A8()
{
  result = qword_1EDF2ECE0;
  if (!qword_1EDF2ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECE0);
  }

  return result;
}

uint64_t sub_1D5C6F134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for FormatSwitchValue() + 36);
  v6 = type metadata accessor for FormatSwitchValue.DefaultValue();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

unint64_t sub_1D5C6F1D8()
{
  result = qword_1EDF2EC90;
  if (!qword_1EDF2EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2EC90);
  }

  return result;
}

uint64_t sub_1D5C6F22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D5C6F27C()
{
  result = qword_1EDF22258;
  if (!qword_1EDF22258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22258);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatNodeAccessibilityRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t FormatNodeAccessibilityRole.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5113748;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C6F718();
    v28 = 0uLL;
    sub_1D726431C();
    if (v26 > 1u)
    {
      if (v26 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0x80;
        v24 = 1;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D5C911FC();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v24 = v26;
        v25 = v27 | 0x40;
      }
    }

    else if (v26)
    {
      v28 = xmmword_1D7279980;
      sub_1D5C911FC();
      sub_1D726427C();
      (*(v11 + 8))(v15, v5);
      v24 = v26;
      v25 = v27;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0x80;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C6F718()
{
  result = qword_1EDF22268;
  if (!qword_1EDF22268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22268);
  }

  return result;
}

unint64_t sub_1D5C6F7E4()
{
  result = qword_1EDF23718[0];
  if (!qword_1EDF23718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF23718);
  }

  return result;
}

uint64_t sub_1D5C6F838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C6F868();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C6F868()
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

unint64_t sub_1D5C6F8B4()
{
  result = qword_1EDF236F0;
  if (!qword_1EDF236F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236F0);
  }

  return result;
}

unint64_t sub_1D5C6F908(void *a1)
{
  a1[1] = sub_1D5C91274();
  a1[2] = sub_1D5C801A8();
  result = sub_1D5C801FC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D5C6F958()
{
  type metadata accessor for FormatCommandValue.CaseValue();
  result = sub_1D72627FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatCommandValue.DefaultValue();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5C6FA20()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5C6FAB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5C6FB28()
{
  result = qword_1EDF2E1F0;
  if (!qword_1EDF2E1F0)
  {
    sub_1D5C80140(255, &qword_1EDF2E1E8, sub_1D5C6F8B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E1F0);
  }

  return result;
}

void sub_1D5C6FBAC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_58:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25(v21);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *a1 = v20;
  }
}

uint64_t sub_1D5C6FE8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t FormatCommandValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v51 = a5;
  v53 = type metadata accessor for FormatCommandValue.DefaultValue();
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v9);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v52 = &v46 - v13;
  v57 = a4;
  v58 = a2;
  v56 = a3;
  v14 = _s10CodingKeysOMa_184();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v62 = v14;
  *(&v62 + 1) = WitnessTable;
  v54 = v16;
  v55 = WitnessTable;
  v63 = v16;
  v64 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v19 = sub_1D726435C();
  v59 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v60;
  sub_1D7264B0C();
  v24 = v23;
  if (v23)
  {
    goto LABEL_12;
  }

  v46 = v17;
  v47 = v14;
  v48 = 0;
  v60 = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = sub_1D7264AFC();
  v26 = Dictionary<>.errorOnUnknownKeys.getter(v25);

  if ((v26 & 1) == 0)
  {
LABEL_10:
    sub_1D5C6C910();
    v62 = 0uLL;
    LOBYTE(v63) = 0;
    v40 = v60;
    v41 = v48;
    sub_1D726431C();
    v24 = v41;
    if (!v41)
    {
      v42 = v65;
      type metadata accessor for FormatCommandValue.CaseValue();
      sub_1D72627FC();
      v62 = xmmword_1D728CF30;
      LOBYTE(v63) = 0;
      v61 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1D726431C();
      v55 = v65;
      v62 = xmmword_1D7297410;
      LOBYTE(v63) = 0;
      v43 = v53;
      swift_getWitnessTable();
      v44 = v52;
      sub_1D726431C();
      (*(v59 + 8))(v40, v19);
      *&v62 = v42;
      v45 = v49;
      (*(v50 + 32))(v49, v44, v43);
      sub_1D5C715E8(&v62, v55, v45, v51);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v59 + 8))(v40, v19);
LABEL_12:
    sub_1D61E4FBC(a1, v24);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v28 = (sub_1D726433C() + 48);
  v29 = v47;
  while (1)
  {
    if (v27 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v30 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v30 & 1) == 0)
    {
      break;
    }

    v32 = *v28;
    v62 = *(v28 - 1);
    LOBYTE(v63) = v32;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_16;
    }

    v33 = sub_1D6AFC82C(v18);
    ++v27;
    v28 += 24;
    if (v34)
    {
      v35 = v33;
      v36 = v34;

      v37 = sub_1D6AFC690(v29, v55, v54, v46);
      sub_1D5E2D970();
      v38 = swift_allocError();
      *v39 = v35;
      *(v39 + 8) = v36;
      v24 = v38;
      *(v39 + 16) = v37;
      *(v39 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v59 + 8))(v60, v19);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5C7065C(unsigned __int8 a1)
{
  v1 = 0x646E616D6D6F63;
  v2 = 0x746C7561666564;
  if (a1 != 2)
  {
    v2 = 1885433183;
  }

  if (a1)
  {
    v1 = 0x7365736163;
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

void sub_1D5C706CC()
{
  if (!qword_1EDF1A010)
  {
    sub_1D5C70A78();
    sub_1D5B58B84(&qword_1EDF25208, sub_1D5C70A78);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A010);
    }
  }
}

uint64_t FormatTagFollowContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = a2;
  sub_1D5C706CC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C70A78();
  sub_1D5B58B84(&qword_1EDF25208, sub_1D5C70A78);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  if (v14)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_9;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D6624EC4();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v9, v5);
      goto LABEL_3;
    }

LABEL_9:
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (sub_1D726434C())
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_1D5F94F30();
    sub_1D726431C();
    (*(v11 + 8))(v9, v5);
    v22 = v32;
  }

  else
  {
    (*(v11 + 8))(v9, v5);
    v22 = 0;
  }

  *v12 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C70A78()
{
  if (!qword_1EDF25200)
  {
    sub_1D5C9199C();
    sub_1D5C70AFC();
    sub_1D5C70BFC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25200);
    }
  }
}

unint64_t sub_1D5C70AFC()
{
  result = qword_1EDF27E30;
  if (!qword_1EDF27E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E30);
  }

  return result;
}

unint64_t sub_1D5C70B50()
{
  result = qword_1EDF27E18;
  if (!qword_1EDF27E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E18);
  }

  return result;
}

unint64_t sub_1D5C70BA8()
{
  result = qword_1EDF27E20;
  if (!qword_1EDF27E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E20);
  }

  return result;
}

unint64_t sub_1D5C70BFC()
{
  result = qword_1EDF27E38;
  if (!qword_1EDF27E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E38);
  }

  return result;
}

uint64_t sub_1D5C70C50()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_1D5C70C88(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFD)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFD)
  {
    a1[16] = 0;
    *a1 = a2 - 254;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

uint64_t sub_1D5C70EE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v52 = v7;
  v53 = &v44 - v8;
  v50 = v9;
  v56 = v10;
  v11 = _s10CodingKeysOMa_311();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  *&v60 = v11;
  *(&v60 + 1) = WitnessTable;
  v54 = WitnessTable;
  v51 = v13;
  v61 = v13;
  v62 = v14;
  v15 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v16 = sub_1D726435C();
  v55 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v44 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v63;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
    goto LABEL_12;
  }

  v45 = 0;
  v46 = v19;
  v63 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  if ((v23 & 1) == 0)
  {
LABEL_10:
    sub_1D5C71444();
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v36 = v63;
    v38 = v45;
    v37 = v46;
    sub_1D726431C();
    v21 = v38;
    if (!v38)
    {
      v56 = *(&v60 + 1);
      v39 = v60;
      v40 = v61;
      v60 = xmmword_1D728CF30;
      LOBYTE(v61) = 0;
      v41 = v52;
      v42 = v53;
      sub_1D726431C();
      (*(v55 + 8))(v37, v36);
      *&v60 = v39;
      *(&v60 + 1) = v56;
      LOBYTE(v61) = v40;
      v43 = v47;
      (*(v48 + 32))(v47, v42, v41);
      sub_1D5C91C44(&v60, v43, v41, v49);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v55 + 8))(v37, v36);
LABEL_12:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v25 = (sub_1D726433C() + 48);
  v26 = v54;
  while (1)
  {
    if (v24 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v27 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v29 = *v25;
    v60 = *(v25 - 1);
    LOBYTE(v61) = v29;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_16;
    }

    v30 = sub_1D6AFC82C(v15);
    ++v24;
    v25 += 24;
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v34 = sub_1D6AFC690(v11, v26, v51, v14);
      sub_1D5E2D970();
      v21 = swift_allocError();
      *v35 = v32;
      *(v35 + 8) = v33;
      *(v35 + 16) = v34;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v55 + 8))(v46, v63);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1D5C71444()
{
  result = qword_1EDF2E528;
  if (!qword_1EDF2E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E528);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IssueCoverViewLayoutOptions.SizeConstraint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IssueCoverViewLayoutOptions.SizeConstraint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5C7159C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C8079C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C715E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for FormatCommandValue() + 48);
  v7 = type metadata accessor for FormatCommandValue.DefaultValue();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

void sub_1D5C71758()
{
  if (!qword_1EDF24BE0)
  {
    sub_1D5C71870();
    sub_1D5C718C4();
    sub_1D5C815C4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24BE0);
    }
  }
}

void sub_1D5C717DC()
{
  if (!qword_1EDF19D00)
  {
    sub_1D5C71758();
    sub_1D5B58B84(&qword_1EDF24BE8, sub_1D5C71758);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D00);
    }
  }
}

unint64_t sub_1D5C71870()
{
  result = qword_1EDF32060;
  if (!qword_1EDF32060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32060);
  }

  return result;
}

unint64_t sub_1D5C718C4()
{
  result = qword_1EDF32068;
  if (!qword_1EDF32068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32068);
  }

  return result;
}

unint64_t sub_1D5C71918()
{
  result = qword_1EDF32050;
  if (!qword_1EDF32050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32050);
  }

  return result;
}

uint64_t sub_1D5C7198C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5C719DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 16))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

void sub_1D5C71A38()
{
  if (!qword_1EDF1A078)
  {
    sub_1D5C71ACC();
    sub_1D5B58B84(&qword_1EDF252D8, sub_1D5C71ACC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A078);
    }
  }
}

void sub_1D5C71ACC()
{
  if (!qword_1EDF252D0)
  {
    sub_1D5C71B50();
    sub_1D5C81764();
    sub_1D5C71C4C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF252D0);
    }
  }
}

unint64_t sub_1D5C71B50()
{
  result = qword_1EDF29910;
  if (!qword_1EDF29910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29910);
  }

  return result;
}

unint64_t sub_1D5C71BA4()
{
  result = qword_1EDF29900;
  if (!qword_1EDF29900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29900);
  }

  return result;
}

unint64_t sub_1D5C71BF8()
{
  result = qword_1EDF29908;
  if (!qword_1EDF29908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29908);
  }

  return result;
}

unint64_t sub_1D5C71C4C()
{
  result = qword_1EDF29920;
  if (!qword_1EDF29920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29920);
  }

  return result;
}

unint64_t sub_1D5C71CA0()
{
  result = qword_1EDF233F0;
  if (!qword_1EDF233F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233F0);
  }

  return result;
}

uint64_t sub_1D5C71CF8()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696568;
  }
}

unint64_t sub_1D5C71D44()
{
  result = qword_1EDF233F8;
  if (!qword_1EDF233F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233F8);
  }

  return result;
}

uint64_t sub_1D5C71D98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C925F0();
  *a1 = result;
  return result;
}

void sub_1D5C71DC8()
{
  if (!qword_1EDF33F28)
  {
    sub_1D5C30060(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D5C71E64();
    v0 = type metadata accessor for FormatValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33F28);
    }
  }
}

unint64_t sub_1D5C71E64()
{
  result = qword_1EDF32870[0];
  if (!qword_1EDF32870[0])
  {
    sub_1D5C30060(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF32870);
  }

  return result;
}

uint64_t FormatEquation.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a5;
  v71 = *MEMORY[0x1E69E9840];
  v69 = sub_1D72620DC();
  v9 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725A6CC();
  swift_allocObject();
  v13 = sub_1D725A6BC();
  v14 = swift_allocObject();
  v51 = a3;
  v52 = a4;
  type metadata accessor for FormatEquationToken();
  *(v14 + 16) = sub_1D7261CFC();
  v45 = v14 + 16;
  sub_1D72620CC();
  v15 = sub_1D726208C();
  v17 = v16;
  (*(v9 + 8))(v12, v69);
  if (v17 >> 60 == 15)
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    *v18 = a1;
    v18[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v47 = a1;
  v48 = v14;
  v49 = a2;
  v19 = v17 >> 62;
  v66 = v15 >> 32;
  v67 = BYTE6(v17);
  v68 = v15;
  if ((v17 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_11;
    }

    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
  }

  else
  {
    if (!v19)
    {
      v20 = 0;
      v21 = v67;
      goto LABEL_12;
    }

    v21 = v66;
    v20 = v68;
  }

  if (v21 >= v20)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v20 = 0;
  v21 = 0;
LABEL_12:
  v50 = 0;
  v64 = v15 >> 16;
  v65 = v15 >> 8;
  v62 = HIDWORD(v15);
  v63 = v15 >> 24;
  v60 = HIWORD(v15);
  v61 = v15 >> 40;
  v58 = v17 >> 8;
  v59 = HIBYTE(v15);
  v56 = v17 >> 24;
  v57 = v17 >> 16;
  v22 = v20;
  v23 = v20;
  v54 = v17 >> 40;
  v55 = HIDWORD(v17);
  v69 = v13;
  if (v21 == v20)
  {
LABEL_39:
    if (v19 > 1)
    {
      v37 = v53;
      v38 = v48;
      v39 = v50;
      if (v19 == 2)
      {
        v36 = *(v15 + 16);
        v35 = *(v15 + 24);
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }
    }

    else
    {
      if (v19)
      {
        v35 = v66;
      }

      else
      {
        v35 = v67;
      }

      v36 = v68;
      if (!v19)
      {
        v36 = 0;
      }

      v37 = v53;
      v38 = v48;
      v39 = v50;
    }

    if (v35 >= v39 && v35 >= v36)
    {
      v40 = sub_1D725863C();
      v42 = v41;
      sub_1D5C72580(v40, v41);

      sub_1D5B952E4(v15, v17);

      sub_1D5B952F8(v40, v42);
      if (v37)
      {
      }

      swift_beginAccess();
      v44 = *(v38 + 16);

      *v46 = v44;
      return result;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  while (1)
  {
    while (1)
    {
      if (v22 < v20 || v23 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (v19 > 1)
      {
        if (v19 != 2)
        {
          goto LABEL_65;
        }

        if (v23 < *(v15 + 16))
        {
          goto LABEL_57;
        }

        if (v23 >= *(v15 + 24))
        {
          goto LABEL_60;
        }

        v25 = sub_1D7257CAC();
        if (!v25)
        {
          goto LABEL_67;
        }

        v26 = v25;
        v27 = sub_1D7257CDC();
        v28 = v23 - v27;
        if (__OFSUB__(v23, v27))
        {
          goto LABEL_62;
        }

        goto LABEL_14;
      }

      if (v19)
      {
        if (v23 < v68 || v23 >= v66)
        {
          goto LABEL_59;
        }

        v29 = sub_1D7257CAC();
        if (!v29)
        {
          goto LABEL_66;
        }

        v26 = v29;
        v30 = sub_1D7257CDC();
        v28 = v23 - v30;
        if (__OFSUB__(v23, v30))
        {
          goto LABEL_61;
        }

LABEL_14:
        v24 = *(v26 + v28);
        goto LABEL_15;
      }

      if (v23 >= v67)
      {
        goto LABEL_58;
      }

      v70[0] = v15;
      v70[1] = v65;
      v70[2] = v64;
      v70[3] = v63;
      v70[4] = v62;
      v70[5] = v61;
      v70[6] = v60;
      v70[7] = v59;
      v70[8] = v17;
      v70[9] = v58;
      v70[10] = v57;
      v70[11] = v56;
      v70[12] = v55;
      v70[13] = v54;
      v24 = v70[v23];
LABEL_15:
      ++v23;
      if (v24 == 32)
      {
        break;
      }

      if (v21 == v23)
      {
        goto LABEL_39;
      }
    }

    if (v23 - 1 < v50)
    {
      goto LABEL_64;
    }

    v31 = sub_1D725863C();
    v33 = v32;
    v34 = v53;
    sub_1D5C72580(v31, v32);
    if (v34)
    {
      break;
    }

    v53 = 0;
    sub_1D5B952F8(v31, v33);
    v50 = v23;
    v22 = v23;
    if (v21 == v23)
    {
      goto LABEL_39;
    }
  }

  sub_1D5B952E4(v15, v17);

  sub_1D5B952F8(v31, v33);
}

uint64_t sub_1D5C72548()
{

  return swift_deallocObject();
}

void sub_1D5C72580(uint64_t a1, unint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for FormatEquationToken();
  MEMORY[0x1EEE9AC00](v5, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      return;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    v12 = a1;
    v13 = a1 >> 32;
  }

  if (v12 == v13)
  {
    return;
  }

LABEL_9:
  sub_1D725A69C();
  if (!v2)
  {
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D72627FC();
    sub_1D72627BC();
    swift_endAccess();
    return;
  }

  if (v11 == 2)
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v14 = BYTE6(a2);
    goto LABEL_19;
  }

  if (v11 != 1)
  {
    goto LABEL_18;
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_23;
  }

  v14 = v14;
LABEL_19:
  if (__OFADD__(v14, 2))
  {
    __break(1u);
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v25 = sub_1D5C72ADC(v14 + 2);
  v26 = v18;
  sub_1D5C82110(0, &qword_1EDF1A550, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
  v20 = v19;
  v23 = v19;
  v21 = sub_1D5C72B80();
  v24 = v21;
  LOBYTE(v22[0]) = 34;
  __swift_project_boxed_opaque_existential_1(v22, v20);
  sub_1D725861C();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1D72586AC();
  v23 = v20;
  v24 = v21;
  LOBYTE(v22[0]) = 34;
  __swift_project_boxed_opaque_existential_1(v22, v20);
  sub_1D725861C();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1D725A69C();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1D72627FC();
  sub_1D72627BC();
  swift_endAccess();

  sub_1D5B952F8(v25, v26);
}

uint64_t sub_1D5C72ADC(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1D7257CFC();
      swift_allocObject();
      sub_1D7257CEC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D725860C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D5C72B80()
{
  result = qword_1EDF1A558;
  if (!qword_1EDF1A558)
  {
    sub_1D5C82110(255, &qword_1EDF1A550, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A558);
  }

  return result;
}

unint64_t FormatFloat.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v61, v62);
    sub_1D5B57870();
    sub_1D726472C();
    v7 = v60;
LABEL_8:
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v61);
    *a2 = v10;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v5 = sub_1D72646FC();
  v8 = v5;
  v9 = v6;
  if (sub_1D5C82160(v5, v6))
  {

    v7 = 0.0;
    goto LABEL_8;
  }

  type metadata accessor for FormatLayoutError();
  sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  v12 = swift_allocError();
  *v13 = v8;
  v13[1] = v9;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v14 = sub_1D5C73AB0(v8, v9);
  if (!v15)
  {
    goto LABEL_17;
  }

  if (v14 == 36 && v15 == 0xE100000000000000)
  {
  }

  else
  {
    v16 = sub_1D72646CC();

    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v17 = sub_1D5FD24A4(1uLL, v8, v9);
  v19 = v18;
  v21 = v20;
  v22 = v12;
  v24 = v23;

  v25 = MEMORY[0x1DA6F97E0](v17, v19, v21, v24);
  v27 = v26;
  v12 = v22;

  MEMORY[0x1DA6F9910](v25, v27);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v8 = 0x286E6F6974706FLL;
  v9 = 0xE700000000000000;
LABEL_17:
  sub_1D5C9299C(40, 0xE100000000000000, v8, v9);
  if (v28)
  {
    goto LABEL_29;
  }

  v29 = sub_1D5C73AF8(v8, v9);
  if (!v30)
  {
    goto LABEL_29;
  }

  if (v29 == 41 && v30 == 0xE100000000000000)
  {

    goto LABEL_23;
  }

  v31 = sub_1D72646CC();

  if ((v31 & 1) == 0)
  {
LABEL_29:
    swift_allocError();
    *v41 = v8;
    v41[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v42 = v12;
    goto LABEL_4;
  }

LABEL_23:
  v58 = v12;
  v32 = sub_1D726236C();
  v57 = MEMORY[0x1DA6F97E0](v32);
  v59 = v33;

  v34 = sub_1D726222C();
  result = sub_1D726223C();
  if (result >> 14 >= v34 >> 14)
  {
    v35 = sub_1D726236C();
    v56 = MEMORY[0x1DA6F97E0](v35);
    v37 = v36;

    if (v57 == 0x746E696F70 && v59 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v38 = v12;

      v10 = swift_allocObject();
      v39 = v56;
      v40 = v37;
      if (sub_1D5C82160(v56, v37))
      {

        *(v10 + 16) = 0.0;
        goto LABEL_9;
      }

      goto LABEL_35;
    }

    if (v57 == 0x6C65786970 && v59 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v43 = swift_allocObject();
      v39 = v56;
      v40 = v37;
      v38 = v58;
      if (sub_1D5C82160(v56, v37))
      {

        *(v43 + 16) = 0.0;
        v10 = v43 | 0x2000000000000000;
        goto LABEL_9;
      }

LABEL_35:
      swift_allocError();
      *v44 = v39;
      v44[1] = v40;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      swift_deallocUninitializedObject();
      goto LABEL_5;
    }

    if (v57 == 0x64656C616373 && v59 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      MEMORY[0x1DA6F9910](v56, v37);

      MEMORY[0x1DA6F9910](34, 0xE100000000000000);
      v45 = sub_1D6011D6C(34, 0xE100000000000000);
      v47 = v46;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      v48 = swift_allocObject();
      sub_1D5C35218();
      sub_1D725A69C();

      sub_1D5B952F8(v45, v47);

      v10 = v48 | 0x4000000000000000;
      goto LABEL_9;
    }

    if (v57 == 0x6163736E5563616DLL && v59 == 0xEB0000000064656CLL || (sub_1D72646CC() & 1) != 0)
    {

      MEMORY[0x1DA6F9910](v56, v37);

      MEMORY[0x1DA6F9910](34, 0xE100000000000000);
      v49 = sub_1D6011D6C(34, 0xE100000000000000);
      v51 = v50;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      v52 = swift_allocObject();
      sub_1D5C35218();
      sub_1D725A69C();

      sub_1D5B952F8(v49, v51);

      v10 = v52 | 0x6000000000000000;
      goto LABEL_9;
    }

    if (v57 == 0x6E6F6974706FLL && v59 == 0xE600000000000000)
    {

LABEL_48:

      v54 = swift_allocObject();
      *(v54 + 16) = v56;
      *(v54 + 24) = v37;
      v10 = v54 | 0x8000000000000000;
      goto LABEL_9;
    }

    v53 = sub_1D72646CC();

    if (v53)
    {
      goto LABEL_48;
    }

    swift_allocError();
    *v55 = v8;
    v55[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v42 = v12;
LABEL_4:

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v61);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5C73608()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C73640()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for FormatLayoutError()
{
  result = qword_1EDF2F550;
  if (!qword_1EDF2F550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5C736F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5C73784(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5C737E0()
{
  if (!qword_1EDF1B688)
  {
    sub_1D5B49E98(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B688);
    }
  }
}

uint64_t sub_1D5C7384C()
{
  result = type metadata accessor for GroupLayoutContext();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D5C73938(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B49474(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5C739AC()
{
  result = qword_1EDF1B6A0;
  if (!qword_1EDF1B6A0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDF1B6A0);
  }

  return result;
}

void sub_1D5C739DC()
{
  if (!qword_1EDF39D38)
  {
    type metadata accessor for FeedCustomItem();
    type metadata accessor for FormatPropertyDefinition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF39D38);
    }
  }
}

uint64_t sub_1D5C73A50()
{
  result = qword_1EDF1B6B8;
  if (!qword_1EDF1B6B8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDF1B6B8);
  }

  return result;
}

uint64_t sub_1D5C73A80()
{
  result = qword_1EDF1B698;
  if (!qword_1EDF1B698)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDF1B698);
  }

  return result;
}

uint64_t sub_1D5C73AB0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1D726233C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5C73AF8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1D726223C();
  return sub_1D726233C();
}

unint64_t sub_1D5C73B78()
{
  result = qword_1EDF2CAF8[0];
  if (!qword_1EDF2CAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2CAF8);
  }

  return result;
}

uint64_t sub_1D5C73BCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C82D98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5C73BF8()
{
  if (!qword_1EDF19CD8)
  {
    sub_1D5C92B28();
    sub_1D5B58B84(&qword_1EDF24B98, sub_1D5C92B28);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CD8);
    }
  }
}

unint64_t sub_1D5C73C90()
{
  result = qword_1EDF31740;
  if (!qword_1EDF31740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31740);
  }

  return result;
}

uint64_t sub_1D5C73CE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C92D9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C73D14()
{
  result = qword_1EDF2B0F0;
  if (!qword_1EDF2B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B0F0);
  }

  return result;
}

unint64_t sub_1D5C73D68()
{
  result = qword_1EDF2B138;
  if (!qword_1EDF2B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B138);
  }

  return result;
}

unint64_t sub_1D5C73DBC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7373616C63;
      break;
    case 2:
      result = 0x726F7463656C6573;
      break;
    case 3:
      result = 0x6168706C61;
      break;
    case 4:
      result = 0x656D7473756A6461;
      break;
    case 5:
      result = 0x756F72676B636162;
      break;
    case 6:
      result = 0x73726564726F62;
      break;
    case 7:
      result = 0x4D746E65746E6F63;
      break;
    case 8:
      result = 0x615272656E726F63;
      break;
    case 9:
      result = 0x6E697265646E6572;
      break;
    case 10:
      result = 0x657A69736572;
      break;
    case 11:
      result = 0x726F66736E617274;
      break;
    case 12:
      result = 0x776F64616873;
      break;
    case 13:
      result = 0x6F6C6F43746E6974;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x74736575716572;
      break;
    case 16:
      result = 0x73614D6567616D69;
      break;
    case 17:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5C74008()
{
  result = qword_1EDF3BCC8;
  if (!qword_1EDF3BCC8)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BCC0, sub_1D5C73D14, sub_1D5C841E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BCC8);
  }

  return result;
}

uint64_t sub_1D5C74098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5C7410C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

void sub_1D5C74154()
{
  if (!qword_1EDF1A0F0)
  {
    sub_1D5C86B30();
    sub_1D5B58B84(&qword_1EDF253C8, sub_1D5C86B30);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0F0);
    }
  }
}

unint64_t sub_1D5C74200()
{
  result = qword_1EDF2B110;
  if (!qword_1EDF2B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B110);
  }

  return result;
}

unint64_t sub_1D5C74254()
{
  result = qword_1EDF2B118;
  if (!qword_1EDF2B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B118);
  }

  return result;
}

unint64_t sub_1D5C742AC()
{
  result = qword_1EDF2B120;
  if (!qword_1EDF2B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B120);
  }

  return result;
}

unint64_t sub_1D5C74308(char a1)
{
  result = 0x726F7463656C6573;
  switch(a1)
  {
    case 1:
      result = 0x756F72676B636162;
      break;
    case 2:
      result = 0x73726564726F62;
      break;
    case 3:
      result = 0x615272656E726F63;
      break;
    case 4:
      result = 0x776F64616873;
      break;
    case 5:
      result = 0x6F6C6F43746E6974;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x657A69736572;
      break;
    case 8:
      result = 0x726F66736E617274;
      break;
    case 9:
      result = 0x4D746E65746E6F63;
      break;
    case 10:
      result = 0x6E697265646E6572;
      break;
    case 11:
      result = 0x6168706C61;
      break;
    case 12:
      result = 0x656D7473756A6461;
      break;
    case 13:
      result = 0x74736575716572;
      break;
    case 14:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5C744F4()
{
  result = qword_1EDF1B108;
  if (!qword_1EDF1B108)
  {
    sub_1D5C34D84(255, &qword_1EDF1B110, &type metadata for FormatImageTransform, MEMORY[0x1E69E62F8]);
    sub_1D5C74590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B108);
  }

  return result;
}

unint64_t sub_1D5C74590()
{
  result = qword_1EDF2AFE8[0];
  if (!qword_1EDF2AFE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2AFE8);
  }

  return result;
}

unint64_t sub_1D5C745E4()
{
  result = qword_1EDF2F7E0;
  if (!qword_1EDF2F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F7E0);
  }

  return result;
}

uint64_t sub_1D5C74638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D5C74688()
{
  result = qword_1EDF1B0A8;
  if (!qword_1EDF1B0A8)
  {
    sub_1D5C34D84(255, &unk_1EDF1B0B0, &type metadata for FormatImageAdjustment, MEMORY[0x1E69E62F8]);
    sub_1D5C85028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B0A8);
  }

  return result;
}

uint64_t sub_1D5C74724(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatAsyncImageContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v61 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v51 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v61;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F51141D0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C86C74();
    *v53 = 0uLL;
    sub_1D726431C();
    if (v60 > 4u)
    {
      v24 = v12;
      if (v60 <= 6u)
      {
        if (v60 == 5)
        {
          v60 = xmmword_1D7279980;
          sub_1D5CA1FC8();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v32 = swift_allocObject();
          v33 = v57;
          *(v32 + 80) = v56;
          *(v32 + 96) = v33;
          *(v32 + 112) = v58;
          *(v32 + 128) = v59;
          v34 = *&v53[16];
          *(v32 + 16) = *v53;
          *(v32 + 32) = v34;
          v35 = v55;
          v29 = v32 | 0x4000000000000000;
          *(v32 + 48) = v54;
          *(v32 + 64) = v35;
        }

        else
        {
          sub_1D5C30060(0, &qword_1EDF2EDB8, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatSwitchValue);
          v60 = xmmword_1D7279980;
          sub_1D6674FB4();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v43 = *v53;
          v44 = swift_allocObject();
          *(v44 + 16) = v43;
          v29 = v44 | 0x5000000000000000;
        }
      }

      else if (v60 == 7)
      {
        sub_1D5C30060(0, &qword_1EDF25C10, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatUserInterfaceValue);
        v60 = xmmword_1D7279980;
        sub_1D6674F24();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v36 = *v53;
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        v29 = v37 | 0x6000000000000000;
      }

      else if (v60 == 8)
      {
        v60 = xmmword_1D7279980;
        sub_1D5CCE4C8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v30 = *v53;
        v52 = *&v53[8];
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = v52;
        v29 = v31 | 0x7000000000000000;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF2C110, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatSelectorValue);
        v60 = xmmword_1D7279980;
        sub_1D6674E94();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v49 = *v53;
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        v29 = v50 | 0x8000000000000000;
      }
    }

    else
    {
      v24 = v12;
      if (v60 <= 1u)
      {
        if (v60)
        {
          v60 = xmmword_1D7279980;
          sub_1D5CBDC54();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v40 = v54;
          v41 = BYTE8(v54);
          v52 = *v53;
          v51 = *&v53[16];
          v29 = swift_allocObject();
          v42 = v51;
          *(v29 + 16) = v52;
          *(v29 + 32) = v42;
          *(v29 + 48) = v40;
          *(v29 + 56) = v41;
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v29 = 0x9000000000000000;
        }
      }

      else if (v60 == 2)
      {
        v60 = xmmword_1D7279980;
        sub_1D5C941B8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v45 = swift_allocObject();
        v46 = v57;
        *(v45 + 80) = v56;
        *(v45 + 96) = v46;
        *(v45 + 112) = v58;
        v47 = *&v53[16];
        *(v45 + 16) = *v53;
        *(v45 + 32) = v47;
        v48 = v55;
        v29 = v45 | 0x1000000000000000;
        *(v45 + 48) = v54;
        *(v45 + 64) = v48;
      }

      else if (v60 == 3)
      {
        v60 = xmmword_1D7279980;
        sub_1D5CCF640();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = *v53;
        v26 = v55;
        v52 = *&v53[16];
        v51 = v54;
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        v28 = v51;
        *(v27 + 32) = v52;
        *(v27 + 48) = v28;
        v29 = v27 | 0x2000000000000000;
        *(v27 + 64) = v26;
      }

      else
      {
        sub_1D5C80140(0, &qword_1EDF2E1F8, sub_1D5B57A00);
        v60 = xmmword_1D7279980;
        sub_1D5C94134();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v38 = *&v53[16];
        v52 = *v53;
        v39 = swift_allocObject();
        *(v39 + 16) = v52;
        *(v39 + 32) = v38;
        v29 = v39 | 0x3000000000000000;
      }
    }

    *v24 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C750BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C75108()
{

  if ((~v0[5] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[6] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[7] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[8] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[9] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[10] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[11] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[12] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[13] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[14] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[15] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[16] & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5C75258()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C752A4()
{
  sub_1D62B4C5C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_1D5C75310()
{
  result = qword_1EDF3F6C0;
  if (!qword_1EDF3F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3F6C0);
  }

  return result;
}

uint64_t sub_1D5C75364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C850C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C75394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t FormatSymbolImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D5C94290();
  v7 = v6;
  v55 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C9420C();
  sub_1D5B58B84(&qword_1EDF255F8, sub_1D5C9420C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = a2;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v55;
  v15 = v10;
  if (v13)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v18 - 2);
      v23 = *(v18 - 1);

      v25 = sub_1D6613EB8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v10, v7);
      a1 = v11;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C75B20();
  v61 = 0uLL;
  v62 = 0;
  sub_1D726431C();
  v19 = v14;
  v20 = *(&v63 + 1);
  v53 = v63;
  v21 = v64;
  v22 = v65;
  v61 = xmmword_1D728CF30;
  v62 = 0;
  sub_1D5C94800();
  sub_1D726427C();
  v51 = v22;
  v28 = v53;
  v50 = v20;
  v52 = v21;
  v29 = v63;
  v30 = v64;
  v63 = xmmword_1D7297410;
  LOBYTE(v64) = 0;
  sub_1D5C954F8();
  sub_1D726427C();
  v49 = v29;
  v31 = *(&v61 + 1);
  v48 = v61;
  v47 = xmmword_1D72BAA60;
  v63 = xmmword_1D72BAA60;
  LOBYTE(v64) = 0;
  v32 = v28;
  if (sub_1D726434C())
  {
    v61 = v47;
    v62 = 0;
    sub_1D5CDCE98();
    sub_1D726431C();
    v46 = v31;
    LODWORD(v47) = v30;
    v33 = v56;
    v34 = v57;
    v35 = v58;
    sub_1D5C75A4C(v56, v57, v58);
    v45 = v33;
    v44 = v34;
    sub_1D5D2F2C8(v33, v34, v35);
  }

  else
  {
    v46 = v31;
    LODWORD(v47) = v30;
    v45 = 0;
    v44 = 0;
    v35 = 0;
  }

  v63 = xmmword_1D72BAA70;
  LOBYTE(v64) = 0;
  sub_1D5C760E8();
  sub_1D726427C();
  (*(v19 + 8))(v15, v7);
  v36 = v61;
  v37 = v51;
  v66 = v51;
  v59 = v35;
  v38 = v54;
  v39 = v50;
  *v54 = v32;
  v38[1] = v39;
  v38[2] = v52;
  *(v38 + 24) = v37;
  *(v38 + 25) = v56;
  *(v38 + 7) = *(&v56 + 3);
  v40 = *(&v49 + 1);
  v38[4] = v49;
  v38[5] = v40;
  *(v38 + 24) = v47;
  *(v38 + 27) = v68;
  *(v38 + 50) = v67;
  v41 = v46;
  v38[7] = v48;
  v38[8] = v41;
  v42 = v44;
  v38[9] = v45;
  v38[10] = v42;
  *(v38 + 88) = v35;
  *(v38 + 89) = *v60;
  *(v38 + 23) = *&v60[3];
  v38[12] = v36;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C75A4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D5C75A74()
{
  result = qword_1EDF2ED58;
  if (!qword_1EDF2ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED58);
  }

  return result;
}

unint64_t sub_1D5C75ACC()
{
  result = qword_1EDF2ED48;
  if (!qword_1EDF2ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED48);
  }

  return result;
}

unint64_t sub_1D5C75B20()
{
  result = qword_1EDF2FCA0;
  if (!qword_1EDF2FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FCA0);
  }

  return result;
}

uint64_t sub_1D5C75B74()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C616E7265746E69;
  v4 = 0x726F6C6F63;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 1819044198;
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

uint64_t storeEnumTagSinglePayload for WebEmbedCacheSize(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D5C75CCC()
{
  result = qword_1EDF2FCB0;
  if (!qword_1EDF2FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FCB0);
  }

  return result;
}

uint64_t sub_1D5C75D20@<X0>(char *a1@<X8>)
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

uint64_t sub_1D5C75D80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C947A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C75DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5C75E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5C75E54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 18))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 17);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t sub_1D5C75EB4()
{
  result = qword_1EDF2DA70[0];
  if (!qword_1EDF2DA70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2DA70);
  }

  return result;
}

uint64_t sub_1D5C75F08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

void sub_1D5C75F50()
{
  if (!qword_1EDF1A1C8)
  {
    sub_1D5C94ECC();
    sub_1D5B58B84(&qword_1EDF25578, sub_1D5C94ECC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A1C8);
    }
  }
}

unint64_t sub_1D5C75FE4()
{
  result = qword_1EDF2DA50;
  if (!qword_1EDF2DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DA50);
  }

  return result;
}

unint64_t sub_1D5C76040()
{
  result = qword_1EDF2DA48;
  if (!qword_1EDF2DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DA48);
  }

  return result;
}

unint64_t sub_1D5C76094()
{
  result = qword_1EDF2D9D0;
  if (!qword_1EDF2D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D9D0);
  }

  return result;
}

unint64_t sub_1D5C760E8()
{
  result = qword_1EDF27E70;
  if (!qword_1EDF27E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E70);
  }

  return result;
}

uint64_t sub_1D5C7613C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D5C7618C()
{
  result = qword_1EDF3BC38;
  if (!qword_1EDF3BC38)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BC30, sub_1D5C65A80, sub_1D5C65AD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BC38);
  }

  return result;
}

unint64_t sub_1D5C76234()
{
  result = qword_1EDF25740;
  if (!qword_1EDF25740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25740);
  }

  return result;
}

unint64_t sub_1D5C76288()
{
  result = qword_1EDF25730;
  if (!qword_1EDF25730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25730);
  }

  return result;
}

unint64_t sub_1D5C762DC()
{
  result = qword_1EDF25738;
  if (!qword_1EDF25738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25738);
  }

  return result;
}

void sub_1D5C76330()
{
  if (!qword_1EDF3BE18)
  {
    sub_1D5C95C0C();
    sub_1D5C95C60();
    sub_1D5C95CB4();
    v0 = sub_1D725A75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BE18);
    }
  }
}

uint64_t sub_1D5C763B4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x736574617473;
  }
}

unint64_t sub_1D5C76450()
{
  result = qword_1EDF34628;
  if (!qword_1EDF34628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34628);
  }

  return result;
}

uint64_t sub_1D5C764A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D5C764F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

unint64_t sub_1D5C7656C()
{
  result = qword_1EDF34640;
  if (!qword_1EDF34640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34640);
  }

  return result;
}

unint64_t sub_1D5C765C0()
{
  result = qword_1EDF34630;
  if (!qword_1EDF34630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34630);
  }

  return result;
}

unint64_t sub_1D5C76614()
{
  result = qword_1EDF34638;
  if (!qword_1EDF34638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34638);
  }

  return result;
}

unint64_t sub_1D5C76668()
{
  result = qword_1EDF2C4B0;
  if (!qword_1EDF2C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C4B0);
  }

  return result;
}

uint64_t sub_1D5C766BC()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 0x7974697669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7370756F7267;
  }
}

unint64_t sub_1D5C7671C()
{
  result = qword_1EDF32530;
  if (!qword_1EDF32530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32530);
  }

  return result;
}

uint64_t sub_1D5C76770(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FF && *(a1 + 64))
  {
    return (*a1 + 1023);
  }

  v3 = (((2 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7)) | (*(a1 + 24) << 8)) & 0x3FE | (*(a1 + 24) >> 2) & 1) ^ 0x3FF;
  if (v3 >= 0x3FE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C767D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D5C76C48();
  v7 = v6;
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C76BC4();
  sub_1D5B58B84(&qword_1EDF24C28, sub_1D5C76BC4);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v44;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v16 - 2);
      v22 = *(v16 - 1);

      v24 = sub_1D661F5B8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C86E18();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726431C();
  v17 = v7;
  v18 = v13;
  v37 = *(&v41 + 1);
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  sub_1D5C791D8();
  sub_1D726431C();
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v27 = v41;
  v28 = v42;
  v41 = xmmword_1D7297410;
  LOBYTE(v42) = 0;
  sub_1D5C88118();
  sub_1D726431C();
  (*(v18 + 8))(v10, v17);
  v30 = v38;
  v29 = v39;
  v31 = v37;
  *v38 = v34;
  v30[1] = v31;
  v32 = v36;
  v30[2] = v35;
  v30[3] = v32;
  *(v30 + 2) = v27;
  v30[6] = v28;
  v30[7] = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C76BC4()
{
  if (!qword_1EDF24C20)
  {
    sub_1D5C962A4();
    sub_1D5C76CDC();
    sub_1D5C76D34();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24C20);
    }
  }
}

void sub_1D5C76C48()
{
  if (!qword_1EDF19D20)
  {
    sub_1D5C76BC4();
    sub_1D5B58B84(&qword_1EDF24C28, sub_1D5C76BC4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D20);
    }
  }
}

unint64_t sub_1D5C76CDC()
{
  result = qword_1EDF32550;
  if (!qword_1EDF32550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32550);
  }

  return result;
}

unint64_t sub_1D5C76D34()
{
  result = qword_1EDF32558[0];
  if (!qword_1EDF32558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF32558);
  }

  return result;
}

unint64_t sub_1D5C76D88()
{
  result = qword_1EDF315B8;
  if (!qword_1EDF315B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315B8);
  }

  return result;
}

unint64_t sub_1D5C76E3C()
{
  result = qword_1EDF2ECA0;
  if (!qword_1EDF2ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECA0);
  }

  return result;
}

unint64_t sub_1D5C76E90()
{
  result = qword_1EDF2E220[0];
  if (!qword_1EDF2E220[0])
  {
    sub_1D5C80140(255, &qword_1EDF2E218, sub_1D5C96858);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2E220);
  }

  return result;
}

uint64_t sub_1D5C76F14(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D5C76F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 107))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 11;
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

unint64_t sub_1D5C76FDC()
{
  result = qword_1EDF22938;
  if (!qword_1EDF22938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22938);
  }

  return result;
}

void sub_1D5C77030()
{
  if (!qword_1EDF24F60)
  {
    sub_1D5C879FC();
    sub_1D5C96BA4();
    sub_1D5C87A50();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24F60);
    }
  }
}

unint64_t sub_1D5C770B4()
{
  result = qword_1EDF22940;
  if (!qword_1EDF22940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22940);
  }

  return result;
}

unint64_t sub_1D5C7710C()
{
  result = qword_1EDF22948;
  if (!qword_1EDF22948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22948);
  }

  return result;
}

unint64_t sub_1D5C77160()
{
  result = qword_1EDF290E8;
  if (!qword_1EDF290E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF290E8);
  }

  return result;
}

uint64_t sub_1D5C771B8()
{
  v1 = 0x6369676F6CLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6962;
  }
}

uint64_t FormatTextNodeBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F50FC0B8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C77BA0();
    v38 = 0;
    v39 = 0;
    sub_1D726431C();
    a1 = v12;
    v23 = v32;
    switch(v41)
    {
      case 1:
        v33 = xmmword_1D7279980;
        sub_1D5CD3DF8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0;
        v30 = 0;
        v25 = v37;
        goto LABEL_24;
      case 2:
        v37 = xmmword_1D7279980;
        sub_1D5CA084C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = BYTE8(v33);
        v25 = v33;
        v27 = v34;
        v28 = v35;
        v29 = v36 & 0xF7;
        v30 = *(&v33 + 1) & 0xFFFFFFFFFFFFFF00;
        v24 = 1;
        break;
      case 3:
        v37 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = BYTE8(v33);
        v25 = v33;
        v30 = *(&v33 + 1) & 0xFFFFFFFFFFFFFF00;
        *&v27 = v34;
        v24 = 1;
        v29 = 8;
        break;
      case 4:
        v37 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        v26 = BYTE8(v33);
        v25 = v33;
        v30 = *(&v33 + 1) & 0xFFFFFFFFFFFFFF00;
        *&v27 = v34;
        v24 = 2;
        break;
      case 5:
        v33 = xmmword_1D7279980;
        sub_1D665FF24();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v30 = 0;
        v25 = v37;
        v24 = 2;
        goto LABEL_24;
      case 6:
        v33 = xmmword_1D7279980;
        sub_1D5CA1374();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        v30 = 0;
        v25 = v37;
        v24 = 3;
        break;
      case 7:
        v33 = xmmword_1D7279980;
        sub_1D665FED0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v30 = 0;
        v25 = v37;
        v24 = 3;
        goto LABEL_24;
      case 8:
        v37 = xmmword_1D7279980;
        sub_1D665FE7C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = BYTE8(v33);
        v25 = v33;
        v27 = v34;
        v28 = v35;
        v29 = v36 & 0xF7;
        v30 = *(&v33 + 1) & 0xFFFFFFFFFFFFFF00;
        v24 = 4;
        break;
      case 9:
        v33 = xmmword_1D7279980;
        sub_1D665FE28();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v30 = 0;
        v25 = v37;
        v26 = BYTE8(v37);
        v40 = BYTE8(v37);
        v24 = 4;
        v29 = 8;
        break;
      case 10:
        v33 = xmmword_1D7279980;
        sub_1D665FDD4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        v30 = 0;
        v25 = v37;
        v24 = 5;
        break;
      case 11:
        v33 = xmmword_1D7279980;
        sub_1D665FD80();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v30 = 0;
        v25 = v37;
        v24 = 5;
        goto LABEL_24;
      case 12:
        v33 = xmmword_1D7279980;
        sub_1D665FD2C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        v30 = 0;
        v25 = v37;
        v26 = BYTE8(v37);
        v24 = 6;
        break;
      case 13:
        v33 = xmmword_1D7279980;
        sub_1D665FCD8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v30 = 0;
        v25 = v37;
        v24 = 6;
LABEL_24:
        v29 = 8;
        break;
      case 14:
        v37 = xmmword_1D7279980;
        sub_1D665FC84();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        v26 = BYTE8(v33);
        v25 = v33;
        v27 = v34;
        v28 = v35;
        v30 = *(&v33 + 1) & 0xFFFFFFFFFFFFFF00;
        v24 = 7;
        break;
      default:
        v37 = xmmword_1D7279980;
        sub_1D5CBC898();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0;
        v26 = BYTE8(v33);
        v25 = v33;
        v27 = v34;
        v28 = v35;
        v29 = v36 & 0xF7;
        v30 = *(&v33 + 1) & 0xFFFFFFFFFFFFFF00;
        break;
    }

    *v23 = v25;
    *(v23 + 8) = v30 | v26;
    *(v23 + 16) = v27;
    *(v23 + 32) = v28;
    *(v23 + 48) = v29;
    *(v23 + 49) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C77BA0()
{
  result = qword_1EDF290F0;
  if (!qword_1EDF290F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF290F0);
  }

  return result;
}

unint64_t sub_1D5C77C54()
{
  result = qword_1EDF290F8;
  if (!qword_1EDF290F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF290F8);
  }

  return result;
}

uint64_t sub_1D5C77CA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C77CD8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C77CD8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C77D9C()
{
  result = qword_1EDF2ECB0;
  if (!qword_1EDF2ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECB0);
  }

  return result;
}

uint64_t FormatTextNodeFormat.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C78160();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C85C70();
  sub_1D5B58B84(&qword_1EDF24B38, sub_1D5C85C70);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x74616D726F66, 0xE600000000000000, 0x736E656B6F74, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C6F1D8();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  sub_1D5C34D84(0, &qword_1EDF1B558, &type metadata for FormatTextNodeFormat.Token, MEMORY[0x1E69E62F8]);
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C7830C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C78160()
{
  if (!qword_1EDF19CA8)
  {
    sub_1D5C85C70();
    sub_1D5B58B84(&qword_1EDF24B38, sub_1D5C85C70);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CA8);
    }
  }
}

unint64_t sub_1D5C7820C()
{
  result = qword_1EDF3A738;
  if (!qword_1EDF3A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A738);
  }

  return result;
}

unint64_t sub_1D5C78264()
{
  result = qword_1EDF3A730;
  if (!qword_1EDF3A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A730);
  }

  return result;
}

unint64_t sub_1D5C782B8()
{
  result = qword_1EDF3A748[0];
  if (!qword_1EDF3A748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3A748);
  }

  return result;
}

unint64_t sub_1D5C7830C()
{
  result = qword_1EDF1B550;
  if (!qword_1EDF1B550)
  {
    sub_1D5C34D84(255, &qword_1EDF1B558, &type metadata for FormatTextNodeFormat.Token, MEMORY[0x1E69E62F8]);
    sub_1D5C783A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B550);
  }

  return result;
}

unint64_t sub_1D5C783A8()
{
  result = qword_1EDF3A6F8;
  if (!qword_1EDF3A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A6F8);
  }

  return result;
}

void sub_1D5C78414()
{
  if (!qword_1EDF24B20)
  {
    sub_1D5C85E18();
    sub_1D5C78498();
    sub_1D5C97DF8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24B20);
    }
  }
}

unint64_t sub_1D5C78498()
{
  result = qword_1EDF3A718;
  if (!qword_1EDF3A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A718);
  }

  return result;
}

uint64_t sub_1D5C784F0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x656C797473;
  v4 = 0x726F7463656C6573;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E65746E6F63;
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

uint64_t storeEnumTagSinglePayload for FormatBindingBoolExpression(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

void sub_1D5C785D0()
{
  if (!qword_1EDF24F70)
  {
    sub_1D5C78654();
    sub_1D5C982E0();
    sub_1D5C98334();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24F70);
    }
  }
}

unint64_t sub_1D5C78654()
{
  result = qword_1EDF22980;
  if (!qword_1EDF22980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22980);
  }

  return result;
}

unint64_t sub_1D5C786AC()
{
  result = qword_1EDF22970;
  if (!qword_1EDF22970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22970);
  }

  return result;
}

unint64_t sub_1D5C78704()
{
  result = qword_1EDF22978;
  if (!qword_1EDF22978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22978);
  }

  return result;
}

uint64_t sub_1D5C78758()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6962;
  }
}

uint64_t storeEnumTagSinglePayload for FormatBoolBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x17)
  {
    *(result + 8) = 0;
    *result = a2 - 24;
    if (a3 >= 0x18)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x18)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 4) & 1) - 2 * a2) << 11;
    }
  }

  return result;
}

unint64_t sub_1D5C78814()
{
  result = qword_1EDF2F8E8;
  if (!qword_1EDF2F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8E8);
  }

  return result;
}

uint64_t sub_1D5C788C8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C78914()
{
  result = qword_1EDF2E008;
  if (!qword_1EDF2E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E008);
  }

  return result;
}

uint64_t _s4BoolOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F6)
  {
    *(result + 8) = 0;
    *result = a2 - 503;
    if (a3 >= 0x1F7)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F7)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 32 * (-a2 & 1);
      *(result + 9) = -a2 >> 1;
    }
  }

  return result;
}

unint64_t sub_1D5C78A1C()
{
  result = qword_1EDF2E018;
  if (!qword_1EDF2E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E018);
  }

  return result;
}

unint64_t sub_1D5C78A70()
{
  result = qword_1EDF2FC28;
  if (!qword_1EDF2FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC28);
  }

  return result;
}

uint64_t sub_1D5C78ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}