void sub_1909E31B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for PollDetailsViewController.DetailsPollOption(0);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v20 = (a2 - a1) / v18;
  v60 = a1;
  v59 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v22;
    if (v22 >= 1)
    {
      v33 = -v18;
      v34 = a4 + v22;
      v52 = a4;
      v54 = -v18;
      do
      {
        v50 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v53 = v35;
        while (1)
        {
          if (v35 <= a1)
          {
            v60 = v35;
            v58 = v50;
            goto LABEL_71;
          }

          v38 = a3;
          v40 = v54;
          v39 = v55;
          v41 = v34 + v54;
          sub_1909E41DC(v34 + v54, v55, type metadata accessor for PollDetailsViewController.DetailsPollOption);
          sub_1909E41DC(v36, v56, type metadata accessor for PollDetailsViewController.DetailsPollOption);
          v42 = *(v57 + 28);
          v43 = *(v39 + v42);
          if (v43 >> 62)
          {
            v44 = sub_190D581C0();
            v42 = *(v57 + 28);
          }

          else
          {
            v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v45 = v36;
          v46 = *(v56 + v42);
          v51 = v32;
          v47 = v46 >> 62 ? sub_190D581C0() : *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          a3 = v38 + v40;
          sub_1909E4244(v56, type metadata accessor for PollDetailsViewController.DetailsPollOption);
          sub_1909E4244(v55, type metadata accessor for PollDetailsViewController.DetailsPollOption);
          if (v47 < v44)
          {
            break;
          }

          v32 = v41;
          v36 = v45;
          if (v38 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v52;
          }

          else
          {
            v37 = v52;
            if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v41;
          v35 = v53;
          if (v41 <= v37)
          {
            a2 = v53;
            goto LABEL_70;
          }
        }

        a2 = v45;
        if (v38 < v53 || a3 >= v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
          v48 = v52;
        }

        else
        {
          v32 = v51;
          v48 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v33 = v54;
      }

      while (v34 > v48);
    }

LABEL_70:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v21;
    v58 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v55 = v18;
      do
      {
        sub_1909E41DC(a2, v16, type metadata accessor for PollDetailsViewController.DetailsPollOption);
        sub_1909E41DC(a4, v13, type metadata accessor for PollDetailsViewController.DetailsPollOption);
        v24 = *(v57 + 28);
        v25 = *&v16[v24];
        if (v25 >> 62)
        {
          v26 = sub_190D581C0();
          v24 = *(v57 + 28);
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v27 = a3;
        v28 = *&v13[v24];
        if (v28 >> 62)
        {
          v29 = sub_190D581C0();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1909E4244(v13, type metadata accessor for PollDetailsViewController.DetailsPollOption);
        sub_1909E4244(v16, type metadata accessor for PollDetailsViewController.DetailsPollOption);
        if (v29 >= v26)
        {
          v30 = v55;
          v31 = a4 + v55;
          a3 = v27;
          if (a1 < a4 || a1 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v31;
          a4 += v30;
        }

        else
        {
          v30 = v55;
          a3 = v27;
          if (a1 < a2 || a1 >= a2 + v55)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v30;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v56 && a2 < a3);
    }
  }

LABEL_71:
  sub_1909E3898(&v60, &v59, &v58, type metadata accessor for PollDetailsViewController.DetailsPollOption);
}

uint64_t sub_1909E37B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1909E383C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1909E3898(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1909E3AB0()
{
  result = qword_1EAD59448;
  if (!qword_1EAD59448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59438);
    sub_190233640(&qword_1EAD59450, &qword_1EAD59458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59448);
  }

  return result;
}

unint64_t sub_1909E3B6C()
{
  result = qword_1EAD59460;
  if (!qword_1EAD59460)
  {
    type metadata accessor for PollDetailsViewController.DetailsPollOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59460);
  }

  return result;
}

unint64_t sub_1909E3BCC()
{
  result = qword_1EAD59470;
  if (!qword_1EAD59470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59478);
    sub_1909E3C98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59470);
  }

  return result;
}

unint64_t sub_1909E3C98()
{
  result = qword_1EAD59480;
  if (!qword_1EAD59480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59478);
    sub_1909E3D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59480);
  }

  return result;
}

unint64_t sub_1909E3D24()
{
  result = qword_1EAD59488;
  if (!qword_1EAD59488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59498);
    sub_190233640(&unk_1EAD594A0, &qword_1EAD59498);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59488);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

unint64_t sub_1909E3ED0()
{
  result = qword_1EAD59508;
  if (!qword_1EAD59508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD594F8);
    sub_1909E3F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59508);
  }

  return result;
}

unint64_t sub_1909E3F5C()
{
  result = qword_1EAD59510;
  if (!qword_1EAD59510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59518);
    sub_190233640(&qword_1EAD59520, &qword_1EAD59528);
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59510);
  }

  return result;
}

uint64_t type metadata accessor for OptionTitleView()
{
  result = qword_1EAD59640;
  if (!qword_1EAD59640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1909E4158()
{
  result = qword_1EAD59550;
  if (!qword_1EAD59550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59550);
  }

  return result;
}

uint64_t sub_1909E41DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909E4244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1909E42A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PollDetailsViewController.DetailsPollOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1909E4310()
{
  result = qword_1EAD59588;
  if (!qword_1EAD59588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59568);
    sub_190233640(&unk_1EAD594A0, &qword_1EAD59498);
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59588);
  }

  return result;
}

unint64_t sub_1909E43F4()
{
  result = qword_1EAD59590;
  if (!qword_1EAD59590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59568);
    sub_1909E4310();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59590);
  }

  return result;
}

uint64_t sub_1909E44BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PollDetailsViewController.DetailsPollOption(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1909DFFA0(a1, (v2 + v6), v7, a2);
}

unint64_t sub_1909E4568()
{
  result = qword_1EAD595C0;
  if (!qword_1EAD595C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD595B8);
    sub_1909E4620();
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD595C0);
  }

  return result;
}

unint64_t sub_1909E4620()
{
  result = qword_1EAD595C8;
  if (!qword_1EAD595C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD595D0);
    sub_1909E46AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD595C8);
  }

  return result;
}

unint64_t sub_1909E46AC()
{
  result = qword_1EAD595D8;
  if (!qword_1EAD595D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD595E0);
    sub_190233640(&qword_1EAD595E8, &qword_1EAD595F0);
    sub_1909E4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD595D8);
  }

  return result;
}

unint64_t sub_1909E4764()
{
  result = qword_1EAD595F8;
  if (!qword_1EAD595F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD595F8);
  }

  return result;
}

unint64_t sub_1909E47B8()
{
  result = qword_1EAD59618;
  if (!qword_1EAD59618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59618);
  }

  return result;
}

uint64_t sub_1909E4824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1909E486C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1909E492C()
{
  result = sub_190D511C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1909E49B0()
{
  result = qword_1EAD59650;
  if (!qword_1EAD59650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59658);
    sub_1909E4A3C();
    sub_1909E4CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59650);
  }

  return result;
}

unint64_t sub_1909E4A3C()
{
  result = qword_1EAD59660;
  if (!qword_1EAD59660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59408);
    sub_1909E4AF4();
    sub_190233640(&unk_1EAD59690, &unk_1EAD5F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59660);
  }

  return result;
}

unint64_t sub_1909E4AF4()
{
  result = qword_1EAD59668;
  if (!qword_1EAD59668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD593F8);
    sub_1909E4BAC();
    sub_190233640(&qword_1EAD56840, &qword_1EAD59400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59668);
  }

  return result;
}

unint64_t sub_1909E4BAC()
{
  result = qword_1EAD59670;
  if (!qword_1EAD59670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD593F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD593D0);
    sub_190D54DE0();
    sub_190233640(&qword_1EAD593E8, &qword_1EAD593D0);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD56838, &unk_1EAD59680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59670);
  }

  return result;
}

unint64_t sub_1909E4CF4()
{
  result = qword_1EAD596A0;
  if (!qword_1EAD596A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD596A0);
  }

  return result;
}

uint64_t sub_1909E4D9C(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1909E4DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1909E4E58()
{
  result = qword_1EAD596A8;
  if (!qword_1EAD596A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD596B0);
    sub_1908BE60C();
    sub_190233640(&qword_1EAD596C8, &qword_1EAD596D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD596A8);
  }

  return result;
}

unint64_t sub_1909E4F10()
{
  result = qword_1EAD596D8;
  if (!qword_1EAD596D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD596E0);
    sub_1909E4F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD596D8);
  }

  return result;
}

unint64_t sub_1909E4F9C()
{
  result = qword_1EAD596E8;
  if (!qword_1EAD596E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD596F0);
    sub_1909E5028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD596E8);
  }

  return result;
}

unint64_t sub_1909E5028()
{
  result = qword_1EAD596F8;
  if (!qword_1EAD596F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD596F8);
  }

  return result;
}

unint64_t sub_1909E507C()
{
  result = qword_1EAD59700;
  if (!qword_1EAD59700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59708);
    sub_1909E5134();
    sub_190233640(&qword_1EAD596C8, &qword_1EAD596D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59700);
  }

  return result;
}

unint64_t sub_1909E5134()
{
  result = qword_1EAD59710;
  if (!qword_1EAD59710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59718);
    sub_1909E51C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59710);
  }

  return result;
}

unint64_t sub_1909E51C0()
{
  result = qword_1EAD59720;
  if (!qword_1EAD59720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59728);
    sub_1908BE60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59720);
  }

  return result;
}

unint64_t sub_1909E5250()
{
  result = qword_1EAD59738;
  if (!qword_1EAD59738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59738);
  }

  return result;
}

uint64_t PopVectorBlurRenderer.__allocating_init(device:pixelFormat:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PopVectorBlurRenderer.init(device:pixelFormat:)(a1, a2);
  return v4;
}

void PopVectorBlurRenderer.init(device:pixelFormat:)(void *a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for PopVectorBlurRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = [v6 bundleForClass_];
  v25[0] = 0;
  v8 = [a1 newDefaultLibraryWithBundle:v7 error:v25];
  v9 = v25[0];
  if (!v8)
  {
    v23 = v25[0];
    sub_190D51420();

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_7:

    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return;
  }

  v10 = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E6974148]);
  v12 = v9;
  v13 = [v11 init];
  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (v15)
  {
    [v15 setPixelFormat_];

    v16 = sub_190D56ED0();
    v17 = [v10 newFunctionWithName_];

    [v13 setVertexFunction_];
    swift_unknownObjectRelease();
    v18 = sub_190D56ED0();
    v19 = [v10 newFunctionWithName_];

    [v13 setFragmentFunction_];
    swift_unknownObjectRelease();
    v25[0] = 0;
    v20 = [a1 newRenderPipelineStateWithDescriptor:v13 error:v25];
    if (v20)
    {
      v21 = v20;
      v22 = v25[0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v2[4] = v21;
      return;
    }

    v24 = v25[0];
    sub_190D51420();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v7 = v13;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1909E5628(char a1, int a2, char a3, void *a4, void *a5, id a6, void *a7, float a8, float a9, float a10, float a11, float a12)
{
  v61[12] = *MEMORY[0x1E69E9840];
  v25 = [a6 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
    __break(1u);
  }

  v27 = [v26 texture];

  if (v27)
  {
    v49 = sub_1909E59E4(a4, v27);
    v45 = v28;
    v51 = v29;
    v47 = v30;
    v48 = sub_1909E59E4(a5, v27);
    v44 = v31;
    v50 = v32;
    v46 = v33;
    v34 = [a7 renderCommandEncoderWithDescriptor_];
    if (v34)
    {
      v35 = v34;
      [v34 setRenderPipelineState_];
      LODWORD(v36) = v45;
      __asm { FMOV            V5.2S, #-1.0 }

      v61[0] = -_D5;
      *&v61[1] = __PAIR64__(LODWORD(v49), v45);
      LODWORD(v42) = v46;
      __asm { FMOV            V16.2S, #1.0 }

      *&v61[2] = __PAIR64__(LODWORD(v48), v44);
      v61[3] = _D16;
      *&v61[4] = __PAIR64__(LODWORD(v49), v47);
      *&v61[5] = __PAIR64__(LODWORD(v48), v46);
      HIDWORD(v36) = v51;
      v61[6] = _D5;
      v61[7] = v36;
      HIDWORD(v42) = v50;
      *&v61[8] = __PAIR64__(v50, v44);
      v61[9] = -_D16;
      *&v61[10] = __PAIR64__(v51, v47);
      v61[11] = v42;
      [v35 setVertexBytes:v61 length:96 atIndex:0];
      v52[0] = a1 & 1;
      v53 = a8;
      v54 = a9;
      v55 = a10;
      v56 = a2;
      v57 = a3 & 1;
      v58 = a11;
      v59 = a12;
      v60 = [v27 pixelFormat] != 81;
      [v35 setFragmentBytes:v52 length:36 atIndex:0];
      [v35 setFragmentTexture:a4 atIndex:0];
      [v35 setFragmentTexture:a5 atIndex:1];
      [v35 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v35 endEncoding];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t PopVectorBlurRenderer.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PopVectorBlurRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

float sub_1909E59E4(void *a1, id a2)
{
  v4 = vcvts_n_f32_s64([a2 height], 1uLL);
  v5 = 0.5 - (v4 / [a1 height]);
  [a2 width];
  [a1 width];
  [a2 height];
  [a1 height];
  [a2 width];
  [a1 width];
  return v5;
}

uint64_t sub_1909E5B70@<X0>(uint64_t a1@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  sub_190D55440();
  v7 = sub_190D555B0();
  v28 = v8;
  v29 = v7;
  v27 = v9;
  v30 = v10;

  sub_19081E474(v2, v4, v6 & 1);

  sub_190D52690();
  v11 = sub_190D555F0();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_190D55440();
  v15 = sub_190D555B0();
  v17 = v16;
  LOBYTE(v2) = v18;

  sub_19081E474(v11, v13, v4 & 1);

  sub_190D55E10();
  v19 = sub_190D55570();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_19081E474(v15, v17, v2 & 1);

  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23 & 1;
  *(a1 + 56) = v25;
  sub_19081BE48(v29, v28, v27 & 1);
  sub_190D52690();
  sub_19081BE48(v19, v21, v23 & 1);
  sub_190D52690();
  sub_19081E474(v19, v21, v23 & 1);

  sub_19081E474(v29, v28, v27 & 1);
}

__n128 sub_1909E5DA0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_190D54AD0();
  sub_1909E5B70(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

unint64_t sub_1909E5E4C()
{
  result = qword_1EAD59740;
  if (!qword_1EAD59740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59740);
  }

  return result;
}

id sub_1909E5EB0()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_190D56F10();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
    if (!v5)
    {
      return [objc_opt_self() isIpad];
    }

LABEL_16:

    return 0;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  if (!v5)
  {
    if (!v10)
    {
      return [objc_opt_self() isIpad];
    }

    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  if (v3 == v8 && v5 == v10)
  {

    return [objc_opt_self() isIpad];
  }

  v12 = sub_190D58760();

  result = 0;
  if (v12)
  {
    return [objc_opt_self() isIpad];
  }

  return result;
}

void sub_1909E5FDC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1EAD59750 = v1 == 1;
}

uint64_t sub_1909E6040()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_190D56F10();
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  v6 = sub_190D56F10();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_190D58760();
  }

LABEL_11:

  return v9 & 1;
}

uint64_t sub_1909E6108()
{
  result = sub_190D56ED0();
  qword_1EAD9DD10 = result;
  return result;
}

void sub_1909E613C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController;
  v3 = [*&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] parentViewController];
  if (v3)
  {
    v4 = v3;
    sub_1902188FC(0, &qword_1EAD45060);
    v5 = v0;
    v6 = sub_190D57D90();

    if (v6)
    {
      return;
    }
  }

  [v1 addChildViewController_];
  v7 = [*&v1[v2] view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [*&v1[v2] view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v22 = v21;
  [v20 addSubview_];

  v23 = *&v1[v2];

  [v23 didMoveToParentViewController_];
}

void sub_1909E6318()
{
  if (*&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_popoverPresentationLocation + 32])
  {
    goto LABEL_5;
  }

  if (qword_1EAD51B10 != -1)
  {
    swift_once();
  }

  if (byte_1EAD59750 == 1)
  {
LABEL_5:
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v1 = sub_190D53040();
    __swift_project_value_buffer(v1, qword_1EAD9DA28);
    oslog = sub_190D53020();
    v2 = sub_190D57680();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_19020E000, oslog, v2, "Skipping detent update in initialPresentationStyle", v3, 2u);
      MEMORY[0x193AF7A40](v3, -1, -1);
    }

    goto LABEL_24;
  }

  v4 = v0;
  if (*&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle] == 1)
  {
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9DA28);
    v6 = sub_190D53020();
    v7 = sub_190D57680();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "Selected detent large in initialPresentationStyle", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    v9 = [v4 sheetPresentationController];
    if (v9)
    {
      oslog = v9;
      [v9 setSelectedDetentIdentifier:*MEMORY[0x1E69DE3B0]];
LABEL_24:
    }
  }

  else
  {
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9DA28);
    v11 = sub_190D53020();
    v12 = sub_190D57680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v11, v12, "Selected detent keyboard in initialPresentationStyle", v13, 2u);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }

    v14 = [v4 sheetPresentationController];
    if (v14)
    {
      oslog = v14;
      if (qword_1EAD51B18 != -1)
      {
        swift_once();
        v14 = oslog;
      }

      [v14 setSelectedDetentIdentifier:qword_1EAD9DD10];
      goto LABEL_24;
    }
  }
}

id sub_1909E668C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_popoverPresentationLocation];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = &v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate];
  *&v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_touchTrackingGesture] = 0;
  v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_didSendInitialPresentationStyleChangeNotification] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle] = 0;
  v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_shouldOverrideExceptionsOnDismissal] = 0;
  v10 = &v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_cachedCompactDetentHeight];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] = a1;
  swift_unknownObjectWeakAssign();
  *(v9 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for AppCardContainerViewController();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  [v11 setSendDelegate_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id sub_1909E68E4()
{
  v1 = v0;
  v2 = sub_190D53150();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppCardContainerViewController();
  v20.receiver = v0;
  v20.super_class = v6;
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    v10 = OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController;
    v11 = *&v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController];
    sub_190D577F0();

    sub_190D53270();
    LOBYTE(v11) = sub_190D53140();
    (*(v3 + 8))(v5, v2);
    if (v11)
    {
      v12 = *&v1[v10];
      sub_190D577F0();
      sub_190D53130();
      sub_190D57800();
    }

    [*&v1[v10] setSendDelegate_];
    swift_unknownObjectRelease();
    sub_1909E613C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
    v13 = swift_allocObject();
    v19 = xmmword_190DD1D90;
    *(v13 + 16) = xmmword_190DD1D90;
    v14 = sub_190D53200();
    v15 = MEMORY[0x1E69DC0C8];
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_190D57810();
    swift_unknownObjectRelease();

    v16 = swift_allocObject();
    *(v16 + 16) = v19;
    v17 = sub_190D53280();
    v18 = MEMORY[0x1E69DC130];
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_190D57810();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1909E6BCC(char *a1)
{
  v15 = [a1 sheetPresentationController];
  if (!v15)
  {
    return;
  }

  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = [a1 traitCollection];
    v5 = [v4 verticalSizeClass];

    if (v5 != 1)
    {
      v6 = [v15 selectedDetentIdentifier];
      v7 = v6;
      if (qword_1EAD51B18 == -1)
      {
        if (v6)
        {
LABEL_6:
          v8 = sub_190D56F10();
          v10 = v9;
          if (v8 == sub_190D56F10() && v10 == v11)
          {
          }

          else
          {
            sub_190D58760();
          }
        }
      }

      else
      {
        swift_once();
        if (v7)
        {
          goto LABEL_6;
        }
      }
    }

    sub_190D57C00();
  }

  v12 = &a1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    (*(v13 + 56))(v15, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1909E6E24(char *a1)
{
  v2 = [a1 sheetPresentationController];
  if (v2)
  {
    v10 = v2;
    v3 = [*&a1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] balloonPlugin];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1909E5EB0();

      v6 = v10;
      if (v5)
      {
        v7 = [a1 traitCollection];
        v8 = [v7 horizontalSizeClass];

        [v10 setPrefersGrabberVisible_];
        v9 = [objc_opt_self() sharedFeatureFlags];
        LOBYTE(v8) = [v9 isEntryViewRefreshEnabled];

        v6 = v10;
        if ((v8 & 1) == 0)
        {
          sub_190D57C00();
          v6 = v10;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1909E6FEC()
{
  v1 = v0;
  result = [*&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] balloonPlugin];
  if (result)
  {
    v3 = result;
    if (sub_1909E6040())
    {

      return 2;
    }

    else
    {
      v4 = sub_1909E6040();

      if (v4)
      {
        return 2;
      }

      else
      {
        v5.receiver = v1;
        v5.super_class = type metadata accessor for AppCardContainerViewController();
        return objc_msgSendSuper2(&v5, sel_supportedInterfaceOrientations);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1909E7160(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  if ([v5 respondsToSelector_])
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_190896518;
    v8[3] = &block_descriptor_54;
    v6 = _Block_copy(v8);
    v7 = v5;
    sub_190D50920();

    [v7 checkForTouchInRemoteProcessIfNecessaryWithCompletion_];
    _Block_release(v6);
  }
}

void sub_1909E72DC(void *a1)
{
  v2 = v1;
  v4 = [v1 sheetPresentationController];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (qword_1EAD51B10 != -1)
  {
    swift_once();
  }

  if ((byte_1EAD59750 & 1) == 0 && !*&v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_popoverPresentationLocation + 32] || (v6 = &v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate], !swift_unknownObjectWeakLoadStrong()) || (v7 = *(v6 + 1), ObjectType = swift_getObjectType(), LOBYTE(v7) = (*(v7 + 16))(ObjectType, v7), swift_unknownObjectRelease(), (v7 & 1) == 0))
  {
    v45 = OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController;
    v10 = *&v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController];
    if ([*&v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] respondsToSelector_])
    {
      v11 = [v10 sheetDetentStyle];
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_1902188FC(0, &qword_1EAD59808);
    if (qword_1EAD51B18 != -1)
    {
      swift_once();
    }

    v13 = qword_1EAD9DD10;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v11;
    sub_190D50920();
    v46 = sub_190D57C40();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    if (v11 == 2)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_190DD55F0;
      *(v16 + 32) = [objc_opt_self() largeDetent];
    }

    else if (v11 == 1)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_190DD55F0;
      *(v16 + 32) = v46;
      v17 = v46;
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_190DD5CE0;
      *(v16 + 32) = [objc_opt_self() largeDetent];
      *(v16 + 40) = v46;
      v18 = v46;
      [a1 verticalSizeClass];
    }

    sub_190D52690();
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v19 = sub_190D53040();
    __swift_project_value_buffer(v19, qword_1EAD9DA28);
    sub_190D52690();
    v20 = sub_190D53020();
    v21 = sub_190D57680();

    v44 = a1;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x193AF2A20](v16, v12);
      v25 = v13;
      v27 = v26;

      v28 = sub_19021D9F8(v24, v27, &v47);
      v13 = v25;

      *(v22 + 4) = v28;
      _os_log_impl(&dword_19020E000, v20, v21, "Configured detents %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x193AF7A40](v23, -1, -1);
      MEMORY[0x193AF7A40](v22, -1, -1);
    }

    else
    {
    }

    v29 = sub_190D57160();

    [v5 setDetents_];

    v30 = objc_opt_self();
    v31 = [v30 sharedFeatureFlags];
    v32 = [v31 isEntryViewRefreshEnabled];

    if ((v32 & 1) == 0)
    {
      sub_190D57C00();
    }

    [v5 setPrefersEdgeAttachedInCompactHeight_];
    [v5 setLargestUndimmedDetentIdentifier_];
    v33 = [*&v2[v45] balloonPlugin];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1909E6040();

      [v5 setPrefersGrabberVisible_];
      v36 = [*&v2[v45] balloonPlugin];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1909E5EB0();

        if (v38)
        {
          [v5 setPrefersGrabberVisible_];
          v39 = [v30 &selRef_setWantsShadow_ + 7];
          v40 = [v39 isEntryViewRefreshEnabled];

          if ((v40 & 1) == 0)
          {
            sub_190D57C00();
          }
        }

        v41 = *&v2[v45];
        if ([v41 respondsToSelector_])
        {
          [v5 _setInsetsPresentedViewForGrabber_];
        }

        if (IMIsRunningIniMessageAppsViewService())
        {
          v42 = [v30 &selRef_setWantsShadow_ + 7];
          v43 = [v42 isEntryViewRefreshEnabled];

          if ((v43 & 1) == 0)
          {
            sub_190D57C00();
          }

          [v5 setPrefersGrabberVisible_];
          [v5 setLargestUndimmedDetentIdentifier_];
        }

        v9 = v46;
        goto LABEL_39;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v9 = v5;
LABEL_39:
}

uint64_t sub_1909E79EC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9DA28);
    v6 = sub_190D53020();
    v12 = sub_190D576A0();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v6, v12, "Could not resolve keyboard detent height", v13, 2u);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }

LABEL_9:

    return 0;
  }

  v6 = Strong;
  if (IMIsRunningIniMessageAppsViewService())
  {
    v7 = [objc_opt_self() mediumDetent];
LABEL_4:
    v8 = v7;
    v9 = sub_190D57C30();

    return v9;
  }

  v14 = [a1 containerTraitCollection];
  v15 = [v14 verticalSizeClass];

  if (v15 == 1)
  {
    if (a3 == 1)
    {
      v7 = [objc_opt_self() largeDetent];
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1909E84F8();
  v17 = v16;
  if (qword_1EAD51958 != -1)
  {
    swift_once();
  }

  v18 = sub_190D53040();
  __swift_project_value_buffer(v18, qword_1EAD9DA28);
  v19 = sub_190D53020();
  v20 = sub_190D57680();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v17;
    _os_log_impl(&dword_19020E000, v19, v20, "Resolved compact/keyboard detent height = %f", v21, 0xCu);
    MEMORY[0x193AF7A40](v21, -1, -1);
  }

  return v17;
}

id sub_1909E7CB4()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController];
  if ([v1 respondsToSelector_])
  {
    [v1 forceTearDownRemoteViewOverridingExceptions_];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppCardContainerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1909E7EB8(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for AppCardContainerViewController();
  objc_msgSendSuper2(&v11, sel_viewDidDisappear_, a1 & 1);
  if ([v2 isBeingDismissed] & 1) != 0 || (v4 = &v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate], (result = swift_unknownObjectWeakLoadStrong()) != 0) && (v6 = *(v4 + 1), v7 = swift_getObjectType(), LOBYTE(v6) = (*(v6 + 16))(v7, v6), result = swift_unknownObjectRelease(), (v6))
  {
    v8 = &v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      (*(v9 + 32))(v2, ObjectType, v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1909E8004(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AppCardContainerViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  if ([v1 isBeingPresented] && v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_didSendInitialPresentationStyleChangeNotification] != 1)
  {
    return sub_1909E8C48(*&v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle]);
  }

  v3 = &v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v5) = (*(v5 + 16))(ObjectType, v5);
    result = swift_unknownObjectRelease();
    if (v5)
    {
      return sub_1909E8C48(*&v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle]);
    }
  }

  return result;
}

uint64_t sub_1909E8134(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AppCardContainerViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  if ([v2 isBeingPresented] && v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_didSendInitialPresentationStyleChangeNotification] != 1 || (v4 = &v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate], (result = swift_unknownObjectWeakLoadStrong()) != 0) && (v6 = *(v4 + 1), ObjectType = swift_getObjectType(), LOBYTE(v6) = (*(v6 + 16))(ObjectType, v6), result = swift_unknownObjectRelease(), (v6 & 1) != 0))
  {
    result = sub_1909E8D7C(*&v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle]);
    v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_didSendInitialPresentationStyleChangeNotification] = 1;
  }

  return result;
}

void sub_1909E8270()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for AppCardContainerViewController();
  objc_msgSendSuper2(&v13, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1909E84F8()
{
  v1 = v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_cachedCompactDetentHeight;
  if (*(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_cachedCompactDetentHeight + 8))
  {
    v2 = v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = (*(v3 + 8))(ObjectType, v3);
      if (v6)
      {
        if (qword_1EAD51958 != -1)
        {
          swift_once();
        }

        v7 = sub_190D53040();
        __swift_project_value_buffer(v7, qword_1EAD9DA28);
        v8 = sub_190D53020();
        v9 = sub_190D576A0();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_19020E000, v8, v9, "Presentation delegate returned a nil compactDetentHeight", v10, 2u);
          MEMORY[0x193AF7A40](v10, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v15 = v5;
        if (qword_1EAD51958 != -1)
        {
          swift_once();
        }

        v16 = sub_190D53040();
        __swift_project_value_buffer(v16, qword_1EAD9DA28);
        v17 = sub_190D53020();
        v18 = sub_190D57680();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          *(v19 + 4) = v15;
          _os_log_impl(&dword_19020E000, v17, v18, "Calculated compact detent height: %f", v19, 0xCu);
          MEMORY[0x193AF7A40](v19, -1, -1);
        }

        swift_unknownObjectRelease();

        *v1 = v15;
        *(v1 + 8) = 0;
      }
    }

    else
    {
      if (qword_1EAD51958 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9DA28);
      v12 = sub_190D53020();
      v13 = sub_190D576A0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_19020E000, v12, v13, "Attempted to access compact detent height when no presentation delegate was set", v14, 2u);
        MEMORY[0x193AF7A40](v14, -1, -1);
      }
    }
  }
}

uint64_t sub_1909E87E4()
{
  if (qword_1EAD51B10 != -1)
  {
    swift_once();
  }

  if (byte_1EAD59750 == 1)
  {
    return *&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle];
  }

  v1 = [v0 sheetPresentationController];
  if (!v1)
  {
    return *&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle];
  }

  v2 = v1;
  v3 = [v1 selectedDetentIdentifier];
  if (!v3)
  {

    return *&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle];
  }

  v4 = v3;
  v5 = sub_190D56F10();
  v7 = v6;
  if (v5 == sub_190D56F10() && v7 == v8)
  {

    return 1;
  }

  v10 = sub_190D58760();

  if (v10)
  {

    return 1;
  }

  v12 = qword_1EAD51B18;
  v13 = v4;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_190D56F10();
  v16 = v15;
  if (v14 == sub_190D56F10() && v16 == v17)
  {

    return 0;
  }

  v18 = sub_190D58760();

  if ((v18 & 1) == 0)
  {
    return *&v0[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle];
  }

  return 0;
}

uint64_t sub_1909E8A34()
{
  if (qword_1EAD51B10 != -1)
  {
    swift_once();
  }

  v1 = byte_1EAD59750;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  v3 = [v2 respondsToSelector_];
  if (v1 == 1)
  {
    if (v3)
    {
      result = [v2 sheetDetentStyle];
      if (result == 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
    }

    v5 = result;
    v6 = v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      LOBYTE(v7) = (*(v7 + 16))(ObjectType, v7);
      swift_unknownObjectRelease();
      if (v7)
      {
        return 2;
      }
    }

    if (swift_unknownObjectWeakLoadStrong() && (v9 = *(v6 + 8), v10 = swift_getObjectType(), LOBYTE(v9) = (*(v9 + 24))(v10, v9), swift_unknownObjectRelease(), (v9 & 1) != 0))
    {
      return 2;
    }

    else
    {
      return v5;
    }
  }

  else if (v3)
  {

    return [v2 sheetDetentStyle];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1909E8BAC(uint64_t a1)
{
  v2 = sub_1909E8A34();
  switch(v2)
  {
    case 0:
      return a1;
    case 1:
      return 0;
    case 2:
      return 1;
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

uint64_t sub_1909E8C48(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_190D58510();
      __break(1u);
      return result;
    }

    v2 = *(v1 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
    v3 = &selRef_viewWillTransitionToExpandedPresentation;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
    v3 = &selRef_viewWillTransitionToCompactPresentation;
  }

  result = [v2 respondsToSelector_];
  if (result)
  {
    v5 = *v3;

    return [v2 v5];
  }

  return result;
}

uint64_t sub_1909E8D7C(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_190D58510();
      __break(1u);
      return result;
    }

    v9 = OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController;
    v10 = *(v1 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
    if ([v10 respondsToSelector_])
    {
      [v10 viewDidTransitionToExpandedPresentation];
    }

    v11 = *(v1 + v9);
    if ([v11 respondsToSelector_])
    {
      [v11 _updateContentOverlayInsetsForSelfAndChildren];
    }

    v12 = *(v1 + v9);
    result = [v12 respondsToSelector_];
    if (result)
    {
      v7 = v12;
      v8 = 2;
      goto LABEL_15;
    }
  }

  else
  {
    v2 = OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController;
    v3 = *(v1 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
    if ([v3 respondsToSelector_])
    {
      [v3 viewDidTransitionToCompactPresentation];
    }

    v4 = *(v1 + v2);
    if ([v4 respondsToSelector_])
    {
      [v4 _updateContentOverlayInsetsForSelfAndChildren];
    }

    v5 = *(v1 + v2);
    result = [v5 respondsToSelector_];
    if (result)
    {
      v7 = v5;
      v8 = 1;
LABEL_15:

      return [v7 _updateCurrentBrowserConsumer_];
    }
  }

  return result;
}

uint64_t sub_1909E8F88()
{
  v1 = v0;
  v2 = sub_190D53150();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController;
  v10 = *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  sub_190D577F0();

  sub_190D530B0();
  v11 = *(v1 + v9);
  (*(v3 + 16))(v5, v8, v2);
  v12 = v11;
  sub_190D57800();

  return (*(v3 + 8))(v8, v2);
}

id sub_1909E91A0()
{
  v0 = sub_190D53040();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53030();
  v4 = sub_190D53020();
  v5 = sub_190D57680();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19020E000, v4, v5, "_containedRemoteViewController called on AppCardContainerViewController", v6, 2u);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  if (!v9)
  {
    return 0;
  }

  v11[1] = &unk_1F054D520;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result _containedRemoteViewController];
  }

  return result;
}

id sub_1909E9420()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AppCardContainerViewController();
  v2 = objc_msgSendSuper2(&v11, sel_debugDescription);
  v3 = sub_190D56F10();

  v10 = v3;
  MEMORY[0x193AF28B0](32, 0xE100000000000000);
  result = [*&v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] balloonPlugin];
  if (result)
  {
    v5 = result;
    v6 = [result description];
    v7 = sub_190D56F10();
    v9 = v8;

    MEMORY[0x193AF28B0](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1909E9514(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController;
  [*(v1 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController) willMoveToParentViewController_];
  result = [*(v1 + v3) view];
  if (result)
  {
    v5 = result;
    [result removeFromSuperview];

    [*(v1 + v3) removeFromParentViewController];
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
    v7 = a1;

    sub_1909E613C();
    [*(v1 + v3) setSendDelegate_];
    swift_unknownObjectRelease();
    v8 = sub_1909E87E4();
    sub_1909E8C48(v8);

    return sub_1909E8D7C(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1909E9604()
{
  v1 = v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_popoverPresentationLocation;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_touchTrackingGesture) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_didSendInitialPresentationStyleChangeNotification) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_shouldOverrideExceptionsOnDismissal) = 0;
  v2 = v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_cachedCompactDetentHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_190D58510();
  __break(1u);
}

void sub_1909E96EC()
{
  v1 = v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_popoverPresentationLocation;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_touchTrackingGesture) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_didSendInitialPresentationStyleChangeNotification) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_shouldOverrideExceptionsOnDismissal) = 0;
  v2 = v0 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_cachedCompactDetentHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_190D58510();
  __break(1u);
}

id sub_1909E97D4()
{
  v0 = objc_allocWithZone(type metadata accessor for CKTextEffectExplodeConfiguration());

  return [v0 init];
}

id CKTextEffectExplodeConfiguration.__allocating_init(sourceColor:targetColor:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_sourceColor] = a1;
  *&v5[OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_targetColor] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CKTextEffectExplodeConfiguration.init(sourceColor:targetColor:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_sourceColor] = a1;
  *&v2[OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_targetColor] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CKTextEffectExplodeConfiguration();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *CKTextEffectExplodeConfiguration.sourceColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_sourceColor);
  v2 = v1;
  return v1;
}

void *CKTextEffectExplodeConfiguration.targetColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_targetColor);
  v2 = v1;
  return v1;
}

id CKTextEffectExplodeConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTextEffectExplodeConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1909E9B24()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD467D8);
  __swift_project_value_buffer(v0, qword_1EAD467D8);
  return sub_190D53030();
}

id sub_1909E9C04(double a1, double a2, double a3, double a4)
{
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LoadingLabel();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  result = CKFrameworkBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_190D56ED0();
    v13 = sub_190D56ED0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    if (!v14)
    {
      sub_190D56F10();
      v14 = sub_190D56ED0();
    }

    [v9 setText_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1909E9E40()
{
  v0 = sub_190D50FB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  return (*(v1 + 8))(v3, v0);
}

id sub_1909EA004(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView_spinner;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for LoadingIndicatorView()) initWithActivityIndicatorStyle_];
  v10 = OBJC_IVAR____TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView_textLabel;
  type metadata accessor for LoadingLabel();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for LoadingIndicatorCoverView();
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemBackgroundColor];
  [v13 setBackgroundColor_];

  sub_1909EA154();
  sub_1909EA2BC();

  return v13;
}

void sub_1909EA154()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView_spinner];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 startAnimating];
  [v0 addSubview_];
  v2 = [v1 centerXAnchor];
  v3 = [v0 centerXAnchor];
  v4 = [v2 constraintEqualToAnchor_];

  [v4 setActive_];
  v5 = [v1 centerYAnchor];
  v6 = [v0 centerYAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  [v7 setActive_];
}

void sub_1909EA2BC()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView_textLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = [v1 topAnchor];
  v3 = *&v0[OBJC_IVAR____TtC7ChatKitP33_BD78CF6CDE905E05AD6D455A82FAED4A25LoadingIndicatorCoverView_spinner];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4 constant:10.0];

  [v5 setActive_];
  v6 = [v1 centerXAnchor];
  v7 = [v3 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  [v8 setActive_];
}

id sub_1909EA444(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall CKChatController.presentLoadingIndicatorCoverIfNeeded()()
{
  if (qword_1EAD467D0 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD467D8);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D576C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136315138;
    v7 = [v2 conversation];
    v8 = [v7 chat];

    if (v8)
    {
      v9 = [v8 guid];

      sub_190D56F10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50);
    v10 = sub_190D56F50();
    v12 = sub_19021D9F8(v10, v11, &v35);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_19020E000, v3, v4, "presentLoadingIndicatorCoverIfNeeded on chatController with guid: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v13 = [objc_opt_self() sharedBehaviors];
  if (!v13)
  {
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  v15 = [v13 presentsLoadingIndicatorCover];

  if (v15)
  {
    if ([v2 allowsLoadingIndicatorPresentation])
    {
      v16 = [v2 conversation];
      v17 = [v16 completedInitialChatMessagesLoad];

      if ((v17 & 1) == 0)
      {
        v18 = [v2 loadingIndicatorCoverView];
        if (v18)
        {
LABEL_20:

          return;
        }

        v19 = v2;
        v20 = sub_190D53020();
        v21 = sub_190D576C0();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v35 = v23;
          *v22 = 136315138;
          v24 = [v19 conversation];
          v25 = [v24 chat];

          if (v25)
          {
            v26 = [v25 guid];

            sub_190D56F10();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50);
          v27 = sub_190D56F50();
          v29 = sub_19021D9F8(v27, v28, &v35);

          *(v22 + 4) = v29;
          _os_log_impl(&dword_19020E000, v20, v21, "Adding loading indicator to chatController with guid: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x193AF7A40](v23, -1, -1);
          MEMORY[0x193AF7A40](v22, -1, -1);
        }

        type metadata accessor for LoadingIndicatorCoverView();
        v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v31 = [v19 view];
        if (v31)
        {
          v32 = v31;
          v18 = v30;
          [v32 addSubview_];

          v33 = [v19 entryView];
          if (v33)
          {
            v34 = v33;
            [v33 setHidden_];
          }

          [v19 setLoadingIndicatorCoverView_];

          goto LABEL_20;
        }

LABEL_23:
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall CKChatController.removeLoadingIndicatorCoverIfNeeded()()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentsLoadingIndicatorCover];

    if (v3)
    {
      if ([v0 allowsLoadingIndicatorPresentation])
      {
        v4 = [v0 loadingIndicatorCoverView];
        if (v4)
        {
          v5 = v4;
          if (qword_1EAD467D0 != -1)
          {
            swift_once();
          }

          v6 = sub_190D53040();
          __swift_project_value_buffer(v6, qword_1EAD467D8);
          v7 = v0;
          v8 = sub_190D53020();
          v9 = sub_190D576C0();

          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v20 = v11;
            *v10 = 136315138;
            v12 = [v7 conversation];
            v13 = [v12 chat];

            if (v13)
            {
              v14 = [v13 guid];

              sub_190D56F10();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50);
            v15 = sub_190D56F50();
            v17 = sub_19021D9F8(v15, v16, &v20);

            *(v10 + 4) = v17;
            _os_log_impl(&dword_19020E000, v8, v9, "Removing loading indicator from chatController with guid: %s", v10, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v11);
            MEMORY[0x193AF7A40](v11, -1, -1);
            MEMORY[0x193AF7A40](v10, -1, -1);
          }

          [v5 removeFromSuperview];
          v18 = [v7 entryView];
          if (v18)
          {
            v19 = v18;
            [v18 setHidden_];
          }

          [v7 setLoadingIndicatorCoverView_];
          [v7 didRemoveLoadingIndicatorCoverView];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1909EAD80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_190D54870();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for NicknameUpdateListView(0);
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59930);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v48 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59938);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v48 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59940);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v48 - v12;
  sub_1909F0048(v1, &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NicknameUpdateListView);
  v13 = *(v6 + 80);
  v14 = (v13 + 16) & ~v13;
  v60 = v7;
  v52 = v13;
  v15 = swift_allocObject();
  v53 = v14;
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909F0110(v61, v15 + v14, type metadata accessor for NicknameUpdateListView);
  v65 = sub_1909F0688;
  v66 = v15;
  v62 = v2;
  v64 = v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59948);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59950);
  v18 = sub_190233640(&qword_1EAD59958, &qword_1EAD59948);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59960);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580A8);
  v21 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8);
  v69 = v20;
  v70 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = v19;
  v70 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  sub_190D55BF0();

  result = CKFrameworkBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_190D56ED0();
    v27 = sub_190D56ED0();
    v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

    v29 = sub_190D56F10();
    v31 = v30;

    v69 = v29;
    v70 = v31;
    v65 = v16;
    v66 = v17;
    v67 = v18;
    v68 = v23;
    v32 = swift_getOpaqueTypeConformance2();
    v33 = sub_19081E484();
    v34 = MEMORY[0x1E69E6158];
    v35 = v49;
    sub_190D558C0();

    (*(v48 + 8))(v9, v35);
    v37 = v58;
    v36 = v59;
    v38 = v56;
    (*(v58 + 104))(v56, *MEMORY[0x1E697C438], v59);
    v65 = v35;
    v66 = v34;
    v67 = v32;
    v68 = v33;
    swift_getOpaqueTypeConformance2();
    v39 = v54;
    v40 = v51;
    sub_190D55AE0();
    (*(v37 + 8))(v38, v36);
    (*(v50 + 8))(v11, v40);
    v41 = [objc_opt_self() defaultCenter];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59980);
    v43 = v63;
    sub_190D579C0();

    v44 = v61;
    sub_1909F0048(v62, v61, type metadata accessor for NicknameUpdateListView);
    v45 = v53;
    v46 = swift_allocObject();
    sub_1909F0110(v44, v46 + v45, type metadata accessor for NicknameUpdateListView);
    result = (*(v55 + 32))(v43, v39, v57);
    v47 = (v43 + *(v42 + 56));
    *v47 = sub_1909F084C;
    v47[1] = v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1909EB4F8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v22[1] = a1;
  v22[0] = sub_190D54320();
  v5 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for NicknameUpdateListView(0);
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59998);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  v16 = v2[1];
  v23[0] = *v2;
  v23[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59988);
  sub_190D55FD0();
  v17 = v22[7];
  sub_1909F0048(v3, v11, type metadata accessor for NicknameUpdateListView);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_1909F0110(v11, v19 + v18, type metadata accessor for NicknameUpdateListView);
  v23[0] = v17;
  v22[4] = v23;
  v22[5] = sub_1909F0908;
  v22[6] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD599A0);
  sub_1909F0AEC();
  sub_190D554D0();

  sub_190D54310();
  sub_190233640(&qword_1EAD599D0, &qword_1EAD59998);
  v20 = v22[0];
  sub_190D55C90();
  (*(v5 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1909EB84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580A8);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD59960);
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v17 - v8;
  if (*(a1 + 32) == 6)
  {
    v10 = sub_190D54D40();
  }

  else
  {
    v10 = sub_190D54D50();
  }

  v17 = &v17;
  MEMORY[0x1EEE9AC00](v10);
  *(&v17 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59990);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
  v12 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v21 = v11;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  sub_190D53AE0();
  v13 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8);
  MEMORY[0x193AF0690](v6, v4, v13);
  (*(v18 + 8))(v6, v4);
  v21 = v4;
  v22 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v19;
  MEMORY[0x193AF0690](v9, v19, OpaqueTypeConformance2);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_1909EBB94()
{
  v1 = v0;
  v2 = sub_190D56770();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_190D567A0();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for NicknameUpdateListView(0);
  v7 = updated - 8;
  v30 = *(updated - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v37 = sub_190D567F0();
  v31 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v29 - v13;
  v15 = *(v0 + *(v7 + 40));
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    if ([v15 respondsToSelector_])
    {
      v17 = [v15 currentNicknameUpdates];
      sub_1902188FC(0, &qword_1EAD59890);
      v16 = sub_190D57180();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }
  }

  type metadata accessor for NicknameUpdateListViewFactory();
  v18 = sub_1909EF234(v16, v15);

  v19 = v1[1];
  aBlock = *v1;
  v20 = aBlock;
  v39 = v19;
  v44 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59988);
  sub_190D55FE0();
  aBlock = v20;
  v39 = v19;
  sub_190D55FD0();
  v21 = v44[2];

  if (!v21)
  {
    sub_1902188FC(0, &qword_1EAD46670);
    v29 = sub_190D57870();
    sub_190D567B0();
    sub_190D56820();
    v31 = *(v31 + 8);
    (v31)(v10, v37);
    sub_1909F0048(v1, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NicknameUpdateListView);
    v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v24 = swift_allocObject();
    sub_1909F0110(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for NicknameUpdateListView);
    v42 = sub_1909F08A8;
    v43 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_190840E6C;
    v41 = &block_descriptor_55;
    v25 = _Block_copy(&aBlock);

    sub_190D56790();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1909F0624(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
    v26 = v33;
    v27 = v36;
    sub_190D58170();
    v28 = v29;
    MEMORY[0x193AF30E0](v14, v5, v26, v25);
    _Block_release(v25);

    (*(v35 + 8))(v26, v27);
    (*(v32 + 8))(v5, v34);
    return (v31)(v14, v37);
  }

  return result;
}

uint64_t sub_1909EC138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v23 = a2;
  v24 = a3;
  v6 = sub_190D54390();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for NicknameUpdateListCell(0);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD599E8);
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v22 - v14;
  *&v12[updated[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD599F0);
  swift_storeEnumTagMultiPayload();
  sub_1909F0048(a1, v12, type metadata accessor for NicknameUpdateListCellModel);
  *&v12[updated[5]] = a4;
  *&v12[updated[6]] = 0x4044000000000000;
  v16 = updated[7];
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  *&v12[v16] = v18;
  sub_190D54380();
  sub_1909F0624(&unk_1EAD599C0, type metadata accessor for NicknameUpdateListCell);
  sub_1909F0624(&qword_1EAD54AF8, MEMORY[0x1E697C248]);
  sub_190D55720();
  (*(v7 + 8))(v9, v6);
  sub_1909F00B0(v12, type metadata accessor for NicknameUpdateListCell);
  v19 = 0;
  if (*(v23 + 32) == 5)
  {
    v25 = sub_190D55DA0();
    v19 = sub_190D561E0();
  }

  v20 = v24;
  (*(v13 + 32))(v24, v15, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD599B8);
  *(v20 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_1909EC4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_190D53D90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for NicknameUpdateListView(0);
  v8 = *(updated - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  sub_1909F0048(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NicknameUpdateListView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1909F0110(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for NicknameUpdateListView);
  sub_190D56030();
  sub_190D53D80();
  sub_190D53E70();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190D558E0();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1909EC7A8(uint64_t a1)
{
  v16 = sub_190D54800();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_190D53D10();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for NicknameUpdateListView(0);
  sub_19022FD14(a1 + *(updated + 28), v7, &qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_190D53D00();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1909ECA34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD599F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  updated = type metadata accessor for NicknameUpdateListCell(0);
  sub_19022FD14(v1 + *(updated + 32), v9, &qword_1EAD599F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54A90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1909ECC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54A90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  updated = type metadata accessor for NicknameUpdateListCell(0);
  v11 = *(v1 + *(updated + 20));
  if (*(v1 + *(updated + 28)) != 6)
  {
    if (v11 <= 0.0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1909ECA34(v9);
    (*(v4 + 104))(v6, *MEMORY[0x1E697F668], v3);
    v12 = sub_1909F0E80(v9, v6);
    v13 = *(v4 + 8);
    v13(v6, v3);
    v13(v9, v3);
    goto LABEL_6;
  }

  if (v11 > 480.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 0;
LABEL_6:
  *a1 = sub_190D54AD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A30);
  return sub_1909ECDF0(v1, v12, a1 + *(v14 + 44));
}

uint64_t sub_1909ECDF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A48);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29[-v19];
  *v20 = sub_190D548B0();
  *(v20 + 1) = 0;
  v21 = 1;
  v20[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A50);
  sub_1909ED1C4(a1, a2, &v20[*(v22 + 44)]);
  if ((*(a1 + *(type metadata accessor for NicknameUpdateListCell(0) + 28)) - 5) <= 1)
  {
    v30 = a2;
    if (a2)
    {
      v32 = sub_190D548D0();
      v33 = 0;
      v34 = 1;
      sub_1909F12EC();
    }

    else
    {
      v32 = sub_190D54AD0();
      v33 = 0;
      v34 = 1;
      sub_1909F1298();
    }

    *v8 = sub_190D565D0();
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A68) + 44);
    sub_190D50920();
    sub_1909EDB24(a1, a1, v30 & 1, v8 + v23);
    v24 = sub_190D552C0();

    v25 = v8 + *(v5 + 36);
    *v25 = v24;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    v25[40] = 1;
    sub_19081E40C(v8, v14, &qword_1EAD59A38);
    v21 = 0;
  }

  (*(v6 + 56))(v14, v21, 1, v5);
  sub_19022FD14(v20, v17, &qword_1EAD59A48);
  sub_19022FD14(v14, v11, &qword_1EAD59A40);
  v26 = v31;
  sub_19022FD14(v17, v31, &qword_1EAD59A48);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A58);
  sub_19022FD14(v11, v26 + *(v27 + 48), &qword_1EAD59A40);
  sub_19022EEA4(v14, &qword_1EAD59A40);
  sub_19022EEA4(v20, &qword_1EAD59A48);
  sub_19022EEA4(v11, &qword_1EAD59A40);
  return sub_19022EEA4(v17, &qword_1EAD59A48);
}

uint64_t sub_1909ED1C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B30);
  v13 = *(type metadata accessor for AvatarImageModel(0) - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_190DD1D90;
  sub_1909F0048(a1, v15 + v14, type metadata accessor for AvatarImageModel);
  updated = type metadata accessor for NicknameUpdateListCell(0);
  v17 = *(a1 + *(updated + 24));
  v37[0] = 0;
  sub_190D55FC0();
  v19 = v45;
  v18 = v46;
  LOBYTE(v37[0]) = 0;
  sub_190D55FC0();
  LOBYTE(v14) = v45;
  v20 = v46;
  v60 = 0;
  v21 = sub_190D54AD0();
  v22 = *(a1 + *(updated + 28)) != 6;
  *v9 = v21;
  *(v9 + 1) = 0;
  v9[16] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B38);
  sub_1909ED5E0(a1, v36, &v9[*(v23 + 44)]);
  v34 = v12;
  sub_19081E40C(v9, v12, &qword_1EAD59B28);
  LOBYTE(a1) = v60;
  v24 = v12;
  v25 = v35;
  sub_19022FD14(v24, v35, &qword_1EAD59B28);
  v37[1] = 0;
  v37[0] = 0;
  *&v38 = v15;
  *(&v38 + 1) = 0x4039000000000000;
  *&v39 = v17;
  *(&v39 + 1) = 0x4000000000000000;
  *&v40 = 2;
  WORD4(v40) = 256;
  *&v41 = v19;
  *(&v41 + 1) = v18;
  LOBYTE(v42) = v14;
  *(&v42 + 1) = v20;
  *&v43 = sub_1908B9430;
  *(&v43 + 1) = 0;
  v44 = a1;
  v26 = v38;
  v27 = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = v27;
  *a3 = 0u;
  *(a3 + 16) = v26;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  *(a3 + 112) = a1;
  *(a3 + 80) = v29;
  *(a3 + 96) = v30;
  *(a3 + 64) = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B40);
  sub_19022FD14(v25, a3 + *(v31 + 48), &qword_1EAD59B28);
  sub_1909F168C(v37, &v45);
  sub_19022EEA4(v34, &qword_1EAD59B28);
  sub_19022EEA4(v25, &qword_1EAD59B28);
  v45 = 0;
  v46 = 0;
  v47 = v15;
  v48 = 0x4039000000000000;
  v49 = v17;
  v50 = 0x4000000000000000;
  v51 = 2;
  v52 = 256;
  v53 = v19;
  v54 = v18;
  v55 = v14;
  v56 = v20;
  v57 = sub_1908B9430;
  v58 = 0;
  v59 = a1;
  return sub_1909F16E8(&v45);
}

uint64_t sub_1909ED5E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v58 = a2;
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v57 - v7);
  updated = type metadata accessor for NicknameUpdateListCellModel(0);
  v10 = (a1 + *(updated + 20));
  v11 = v10[1];
  v66 = *v10;
  v67 = v11;
  sub_19081E484();
  sub_190D52690();
  v12 = sub_190D555F0();
  v14 = v13;
  v16 = v15;
  sub_190D55440();
  v17 = sub_190D555B0();
  v62 = v18;
  v63 = v17;
  v61 = v19;
  v65 = v20;
  sub_19081E474(v12, v14, v16 & 1);

  v21 = a1;

  v22 = (a1 + *(updated + 24));
  v23 = v22[1];
  if (v23)
  {
    v66 = *v22;
    v67 = v23;
    sub_190D52690();
    v24 = sub_190D555F0();
    v26 = v25;
    v28 = v27;
    sub_190D55480();
    v29 = sub_190D555B0();
    v57 = v8;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_19081E474(v24, v26, v28 & 1);

    LODWORD(v66) = sub_190D54EB0();
    v35 = v32;
    v36 = sub_190D55580();
    v38 = v37;
    LOBYTE(v24) = v39;
    v41 = v40;
    v42 = v30;
    v8 = v57;
    sub_19081E474(v42, v35, v34 & 1);

    v43 = v36;
    v44 = v36;
    v60 = v38;
    v45 = v24 & 1;
    sub_19081BE48(v44, v38, v24 & 1);
    v46 = v41;
    sub_190D52690();
  }

  else
  {
    v43 = 0;
    v60 = 0;
    v45 = 0;
    v46 = 0;
  }

  if (*(v21 + *(type metadata accessor for NicknameUpdateListCell(0) + 28)) > 1uLL)
  {
    v47 = 1;
  }

  else
  {
    sub_1909EDA14(v21, v58 & 1, v8);
    v47 = 0;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A38);
  (*(*(v48 - 8) + 56))(v8, v47, 1, v48);
  v49 = v64;
  sub_19022FD14(v8, v64, &qword_1EAD59A40);
  v51 = v62;
  v50 = v63;
  v52 = v59;
  v53 = v60;
  *v59 = v63;
  v52[1] = v51;
  v54 = v61 & 1;
  *(v52 + 16) = v61 & 1;
  v52[3] = v65;
  v52[4] = v43;
  v52[5] = v53;
  v52[6] = v45;
  v52[7] = v46;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B48);
  sub_19022FD14(v49, v52 + *(v55 + 64), &qword_1EAD59A40);
  sub_19081BE48(v50, v51, v54);
  sub_190D52690();
  sub_1909F173C(v43, v53, v45, v46);
  sub_1909F1780(v43, v53, v45, v46);
  sub_19022EEA4(v8, &qword_1EAD59A40);
  sub_19022EEA4(v49, &qword_1EAD59A40);
  sub_1909F1780(v43, v53, v45, v46);
  sub_19081E474(v50, v51, v54);
}

double sub_1909EDA14@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    sub_190D548D0();
    sub_1909F12EC();
  }

  else
  {
    sub_190D54AD0();
    sub_1909F1298();
  }

  *a3 = sub_190D565D0();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A68) + 44);
  sub_190D50920();
  sub_1909EDB24(v3, a1, a2 & 1, a3 + v7);
  v8 = sub_190D552C0();

  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A38) + 36);
  *v9 = v8;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  return result;
}

uint64_t sub_1909EDB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a4;
  v6 = type metadata accessor for ButtonModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A78);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = *(a1 + *(type metadata accessor for NicknameUpdateListCell(0) + 28));
  updated = type metadata accessor for NicknameUpdateListCellModel(0);
  if (v22 == 5)
  {
    v24 = 32;
  }

  else
  {
    v24 = 28;
  }

  v25 = *(updated + v24);
  if (v22 == 5)
  {
    v26 = 28;
  }

  else
  {
    v26 = 32;
  }

  sub_1909F0048(a2 + v25, v11, type metadata accessor for ButtonModel);
  sub_1909EDE38(v11, v21);
  sub_1909F00B0(v11, type metadata accessor for ButtonModel);
  v27 = type metadata accessor for NicknameUpdateListCellModel(0);
  sub_1909F0048(a2 + *(v27 + v26), v8, type metadata accessor for ButtonModel);
  v28 = (v22 == 6) | v37 ^ 1;
  sub_1909EDE38(v8, v18);
  sub_1909F00B0(v8, type metadata accessor for ButtonModel);
  v29 = v35;
  sub_19022FD14(v21, v35, &qword_1EAD59A78);
  v30 = v36;
  sub_19022FD14(v18, v36, &qword_1EAD59A78);
  v31 = v38;
  sub_19022FD14(v29, v38, &qword_1EAD59A78);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A80);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = v28 ^ 1;
  *(v33 + 9) = v28;
  sub_19022FD14(v30, v31 + *(v32 + 64), &qword_1EAD59A78);
  sub_19022EEA4(v18, &qword_1EAD59A78);
  sub_19022EEA4(v21, &qword_1EAD59A78);
  sub_19022EEA4(v30, &qword_1EAD59A78);
  return sub_19022EEA4(v29, &qword_1EAD59A78);
}

uint64_t sub_1909EDE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  updated = type metadata accessor for NicknameUpdateListCell(0);
  v34 = *(updated - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ButtonModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A88);
  MEMORY[0x1EEE9AC00](v35);
  v14 = (&v31 - v13);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A90);
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v18 = &v31 - v17;
  v19 = *(a1 + 32);
  if (v19 && *(v19 + 16))
  {
    MEMORY[0x1EEE9AC00](v16);
    *(&v31 - 2) = v20;
    MEMORY[0x1EEE9AC00](v21);
    *(&v31 - 2) = a1;
    *(&v31 - 1) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59AB8);
    sub_1908695F0();
    sub_1909F1498();
    sub_190D554F0();
    v22 = v36;
    (*(v15 + 16))(v14, v18, v36);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A98);
    sub_190233640(&qword_1EAD59AA0, &qword_1EAD59A90);
    sub_190233640(&qword_1EAD59AA8, &qword_1EAD59A98);
    sub_190D54C50();
    return (*(v15 + 8))(v18, v22);
  }

  else
  {
    sub_1909F0048(a1, v12, type metadata accessor for ButtonModel);
    v24 = *(v8 + 80);
    v31 = v5;
    v25 = (v24 + 16) & ~v24;
    v32 = swift_allocObject();
    sub_1909F0110(v12, v32 + v25, type metadata accessor for ButtonModel);
    v26 = v33;
    sub_1909F0048(a1, v33, type metadata accessor for ButtonModel);
    sub_1909F0048(v2, v6, type metadata accessor for NicknameUpdateListCell);
    v27 = (v25 + v9 + *(v34 + 80)) & ~*(v34 + 80);
    v28 = swift_allocObject();
    sub_1909F0110(v26, v28 + v25, type metadata accessor for ButtonModel);
    sub_1909F0110(v6, v28 + v27, type metadata accessor for NicknameUpdateListCell);
    v38 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    sub_190D55FC0();
    v29 = v40;
    *v14 = v39;
    v14[1] = v29;
    v30 = v32;
    v14[2] = sub_1909F1340;
    v14[3] = v30;
    v14[4] = sub_1909F13B4;
    v14[5] = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59A98);
    sub_190233640(&qword_1EAD59AA0, &qword_1EAD59A90);
    sub_190233640(&qword_1EAD59AA8, &qword_1EAD59A98);
    return sub_190D54C50();
  }
}

uint64_t sub_1909EE43C()
{
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD59920);
  sub_190D518A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59AD8);
  sub_190233640(&unk_1EAD59AE0, &unk_1EAD59920);
  sub_190233640(&qword_1EAD59AD0, &qword_1EAD59AD8);
  sub_1909F0624(&qword_1EAD55B70, type metadata accessor for MenuItem);
  return sub_190D56290();
}

uint64_t sub_1909EE598(uint64_t a1)
{
  v2 = type metadata accessor for MenuItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1909F0048(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MenuItem);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1909F0110(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for MenuItem);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59AF0);
  sub_1909F1550();
  return sub_190D56030();
}

uint64_t sub_1909EE708(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B20);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  if (a1[3])
  {
    v9 = *a1;
    v10 = a1[1];
    v16 = v9;
    v17 = v10;
    sub_19081E484();
    sub_190D52690();
    sub_190D52690();
    sub_190D55F40();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    sub_190D54C50();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v12 = a1[1];
    v16 = *a1;
    v17 = v12;
    sub_19081E484();
    sub_190D52690();
    *v8 = sub_190D555F0();
    *(v8 + 1) = v13;
    v8[16] = v14 & 1;
    *(v8 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    return sub_190D54C50();
  }
}

__n128 sub_1909EE9B4@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  sub_19081E484();
  sub_190D52690();
  v3 = sub_190D555F0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for NicknameUpdateListCell(0);
  sub_190D56500();
  sub_190D54430();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  return result;
}

__n128 sub_1909EEAC8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  sub_19081E484();
  sub_190D52690();
  v3 = sub_190D555F0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for NicknameUpdateListCell(0);
  sub_190D56500();
  sub_190D54430();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  return result;
}

uint64_t sub_1909EEBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_190D518A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1909EEC44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_190D52690();
}

id sub_1909EEC58(unint64_t a1, uint64_t a2)
{
  type metadata accessor for NicknameUpdateListViewFactory();
  v4 = sub_1909EF234(a1, a2);
  v5 = sub_1909EECD4(v4, a2);

  return v5;
}

id sub_1909EECD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D55190();
  MEMORY[0x1EEE9AC00](v4 - 8);
  updated = type metadata accessor for NicknameUpdateListView(0);
  MEMORY[0x1EEE9AC00](updated);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59898);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = CKIsRunningInMacCatalyst();
  if (!v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    *(&v19 - 2) = a1;
    *(&v19 - 1) = a2;
    sub_1909F0624(&qword_1EAD598B8, type metadata accessor for NicknameUpdateListView);
    sub_190D54220();
    v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD598C0));
    return sub_190D54B60();
  }

  *(v7 + updated[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v20 = a1;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A8);
  sub_190D55FC0();
  v10 = v22;
  *v7 = v21;
  v7[1] = v10;
  v20 = 0;
  sub_190D55FC0();
  v11 = v22;
  v7[2] = v21;
  v7[3] = v11;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v7[4] = v13;
  *(v7 + updated[8]) = a2;
  *(v7 + updated[9]) = 0x4079000000000000;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598B0));
  swift_unknownObjectRetain();
  v14 = sub_190D54B60();
  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    sub_190D55180();
    sub_190D54B30();

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1909EF044@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  updated = type metadata accessor for NicknameUpdateListView(0);
  *(a2 + updated[7]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A8);
  sub_190D55FC0();
  *a2 = v9;
  a2[1] = v10;
  sub_190D55FC0();
  a2[2] = v9;
  a2[3] = v10;
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  a2[4] = v7;
  *(a2 + updated[8]) = a1;
  *(a2 + updated[9]) = 0x4079000000000000;
  return swift_unknownObjectRetain();
}

id sub_1909EF234(unint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for ButtonModel(0);
  MEMORY[0x1EEE9AC00](v61);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v70 = (&v53 - v7);
  v62 = type metadata accessor for AvatarImageModel(0);
  MEMORY[0x1EEE9AC00](v62);
  v69 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v53 - v10);
  updated = type metadata accessor for NicknameUpdateListCellModel(0);
  v59 = *(updated - 8);
  v60 = updated;
  MEMORY[0x1EEE9AC00](updated);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v16 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v16;
    }

    v63 = v11;
    v71 = MEMORY[0x1E69E7CC0];
    result = sub_19082E038(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v18 = 0;
    v19 = a1;
    v57 = a2;
    v58 = a1 & 0xC000000000000001;
    v16 = v71;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = i;
    v55 = v14;
    v56 = a1;
    v11 = v63;
    while (!__OFADD__(v18, 1))
    {
      v68 = v18 + 1;
      if (v58)
      {
        v20 = MEMORY[0x193AF3B90](v18, v19);
      }

      else
      {
        if (v18 >= *(v53 + 16))
        {
          goto LABEL_23;
        }

        v20 = *(v19 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 contactWithUpdatedInformation];
      sub_190D50450();
      *v11 = 0;
      v11[1] = v22;
      sub_1909EF81C(v21, a2, v70);
      result = CKFrameworkBundle();
      if (!result)
      {
        goto LABEL_26;
      }

      v23 = result;
      v24 = sub_190D56ED0();
      v25 = sub_190D56ED0();
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      v27 = sub_190D56F10();
      v29 = v28;

      v30 = swift_allocObject();
      *(v30 + 16) = a2;
      *(v30 + 24) = v21;
      *v5 = v27;
      v5[1] = v29;
      v5[2] = sub_1909F0020;
      v5[3] = v30;
      v5[4] = 0;
      v31 = v21;
      swift_unknownObjectRetain();
      sub_190D50450();
      sub_1909F0048(v11, v69, type metadata accessor for AvatarImageModel);
      v32 = [v31 listTitleText];
      if (v32)
      {
        v33 = v32;
        v34 = sub_190D56F10();
        v65 = v35;
        v66 = v34;
      }

      else
      {
        v65 = 0xE000000000000000;
        v66 = 0;
      }

      v36 = [v31 listSubtitleText];
      v67 = v16;
      if (v36)
      {
        v37 = v36;
        v64 = sub_190D56F10();
        v39 = v38;
      }

      else
      {
        v64 = 0;
        v39 = 0;
      }

      v40 = v60;
      v41 = v55;
      v42 = v70;
      sub_1909F0048(v70, &v55[v60[7]], type metadata accessor for ButtonModel);
      sub_1909F0048(v5, v41 + v40[8], type metadata accessor for ButtonModel);
      v43 = [v31 handle];
      v44 = [v43 ID];

      v45 = sub_190D56F10();
      v47 = v46;

      sub_1909F00B0(v5, type metadata accessor for ButtonModel);
      sub_1909F00B0(v42, type metadata accessor for ButtonModel);
      v11 = v63;
      sub_1909F00B0(v63, type metadata accessor for AvatarImageModel);
      sub_1909F0110(v69, v41, type metadata accessor for AvatarImageModel);
      v48 = (v41 + v40[5]);
      v49 = v65;
      *v48 = v66;
      v48[1] = v49;
      v50 = (v41 + v40[6]);
      *v50 = v64;
      v50[1] = v39;
      v51 = (v41 + v40[9]);
      *v51 = v45;
      v51[1] = v47;
      v16 = v67;
      v71 = v67;
      v14 = *(v67 + 16);
      v52 = *(v67 + 24);
      a1 = v14 + 1;
      if (v14 >= v52 >> 1)
      {
        sub_19082E038(v52 > 1, v14 + 1, 1);
        v11 = v63;
        v16 = v71;
      }

      *(v16 + 16) = a1;
      sub_1909F0110(v41, v16 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v14, type metadata accessor for NicknameUpdateListCellModel);
      ++v18;
      v19 = v56;
      a2 = v57;
      if (v68 == v54)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1909EF81C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = type metadata accessor for MenuItem(0);
  v6 = *(v55 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v55).n128_u64[0];
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 updateType];
  v11 = [a1 updateType];
  v12 = [a1 contact];
  if (!v12)
  {
    v14 = &selRef_addContactOptionsMenuItemsWithTarget_update_;
    goto LABEL_6;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if ((v10 & 2) != 0 && (v11 & 4) != 0)
  {
    v14 = &selRef_updateNameAndPhotoMenuItemsWithTarget_update_;
LABEL_6:
    v15 = [objc_opt_self() *v14];
    sub_1902188FC(0, &qword_1EAD55C60);
    v16 = sub_190D57180();

    v13 = v16;
  }

  if (v13 >> 62)
  {
    v38 = v13;
    v17 = sub_190D581C0();
    v13 = v38;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_22:

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_9:
  v18 = v13;
  v56 = MEMORY[0x1E69E7CC0];
  result = sub_19082DF20(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v49 = a2;
  v50 = a1;
  v20 = 0;
  v21 = v56;
  v22 = v18;
  v51 = a3;
  v52 = v18 & 0xC000000000000001;
  v53 = v17;
  v54 = v18;
  do
  {
    if (v52)
    {
      v23 = MEMORY[0x193AF3B90](v20, v22);
    }

    else
    {
      v23 = *(v22 + 8 * v20 + 32);
    }

    v24 = v23;
    v25 = [v23 title];
    v26 = sub_190D56F10();
    v28 = v27;

    v29 = [v24 imageName];
    if (v29)
    {
      v30 = v29;
      v31 = sub_190D56F10();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = [v24 handler];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *v9 = v26;
    v9[1] = v28;
    v9[2] = v31;
    v9[3] = v33;
    v9[4] = sub_190841A8C;
    v9[5] = v35;
    sub_190D50450();

    v56 = v21;
    v37 = *(v21 + 16);
    v36 = *(v21 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_19082DF20(v36 > 1, v37 + 1, 1);
      v21 = v56;
    }

    ++v20;
    *(v21 + 16) = v37 + 1;
    sub_1909F0110(v9, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37, type metadata accessor for MenuItem);
    v22 = v54;
  }

  while (v53 != v20);

  a1 = v50;
  a3 = v51;
  a2 = v49;
LABEL_23:
  v39 = [a1 contact];
  if (v39)
  {

    result = CKFrameworkBundle();
    if (result)
    {
      v40 = result;
LABEL_28:
      v41 = sub_190D56ED0();
      v42 = sub_190D56ED0();
      v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

      v44 = sub_190D56F10();
      v46 = v45;

      v47 = swift_allocObject();
      *(v47 + 16) = a2;
      *(v47 + 24) = a1;
      *a3 = v44;
      a3[1] = v46;
      a3[2] = sub_1909EFF70;
      a3[3] = v47;
      a3[4] = v21;
      type metadata accessor for ButtonModel(0);
      swift_unknownObjectRetain();
      v48 = a1;
      return sub_190D50450();
    }

    goto LABEL_30;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v40 = result;
    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
  return result;
}

id NicknameUpdateListViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NicknameUpdateListViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NicknameUpdateListViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NicknameUpdateListViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NicknameUpdateListViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1909EFDFC()
{
  v0 = sub_190D54DC0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D54DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B60);
  sub_190233640(&qword_1EAD59B68, &qword_1EAD59B60);
  sub_1909F0624(&unk_1EAD45220, MEMORY[0x1E697C720]);
  sub_190D55720();
  return (*(v1 + 8))(v3, v0);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1909F0028(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16);
  if (result)
  {
    return [result updateInterfaceSelectedAction:a2 forUpdate:*(v2 + 24)];
  }

  return result;
}

uint64_t sub_1909F0048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909F00B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1909F0110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1909F01A0()
{
  type metadata accessor for AvatarImageModel(319);
  if (v0 <= 0x3F)
  {
    sub_1909F03FC(319, &qword_1EAD46740, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ButtonModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1909F0294()
{
  sub_1909F0578(319, &qword_1EAD598F0, &qword_1EAD598A8, &unk_190DE55A8, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1909F03FC(319, &qword_1EAD57F70, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIUserInterfaceIdiom(319);
      if (v2 <= 0x3F)
      {
        sub_1909F0E10(319, &qword_1EAD562D0, MEMORY[0x1E697BF90]);
        if (v3 <= 0x3F)
        {
          sub_1909F0578(319, &qword_1EAD598F8, &qword_1EAD59900, &unk_190DE55F8, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1909F03FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1909F0474()
{
  sub_1909F0578(319, &qword_1EAD44E10, &qword_1EAD55E20, &unk_190DDB640, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1909F0578(319, &qword_1EAD45138, &unk_1EAD59920, &unk_190DE7730, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_190D518A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1909F0578(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1909F0624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1909F0688@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NicknameUpdateListView(0);
  sub_190D53D30();
  return sub_1909EB4F8(a1, v2);
}

uint64_t objectdestroy_29Tm()
{
  updated = type metadata accessor for NicknameUpdateListView(0);
  v2 = *(*(updated - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(updated - 8) + 64);

  v5 = *(updated + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D53D10();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1909F0908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NicknameUpdateListView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1909EC138(a1, v7, a2, v6);
}

uint64_t sub_1909F098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_190D52690();
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD599B8);
  sub_190233640(&qword_1EAD599D8, &qword_1EAD598A8);
  sub_1909F0B70();
  sub_1909F0624(&qword_1EAD599E0, type metadata accessor for NicknameUpdateListCellModel);
  return sub_190D56290();
}

unint64_t sub_1909F0AEC()
{
  result = qword_1EAD599A8;
  if (!qword_1EAD599A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD599A0);
    sub_1909F0B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD599A8);
  }

  return result;
}

unint64_t sub_1909F0B70()
{
  result = qword_1EAD599B0;
  if (!qword_1EAD599B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD599B8);
    type metadata accessor for NicknameUpdateListCell(255);
    sub_190D54390();
    sub_1909F0624(&unk_1EAD599C0, type metadata accessor for NicknameUpdateListCell);
    sub_1909F0624(&qword_1EAD54AF8, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD599B0);
  }

  return result;
}

void sub_1909F0D48()
{
  type metadata accessor for NicknameUpdateListCellModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIUserInterfaceIdiom(319);
    if (v1 <= 0x3F)
    {
      sub_1909F0E10(319, &unk_1EAD59A18, MEMORY[0x1E697F6A0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1909F0E10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D53A80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_1909F0E80(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_190D54A90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_1909F1298()
{
  result = qword_1EAD59A60;
  if (!qword_1EAD59A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59A60);
  }

  return result;
}

unint64_t sub_1909F12EC()
{
  result = qword_1EAD59A70;
  if (!qword_1EAD59A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59A70);
  }

  return result;
}

uint64_t sub_1909F1340(uint64_t a1)
{
  v3 = type metadata accessor for ButtonModel(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = *(v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 16);
  if (v6)
  {
    return v6(a1);
  }

  return result;
}

double sub_1909F13B4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for NicknameUpdateListCell(0);

  *&result = sub_1909EEAC8((v1 + v4), a1).n128_u64[0];
  return result;
}

unint64_t sub_1909F1498()
{
  result = qword_1EAD59AC8;
  if (!qword_1EAD59AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59AB8);
    sub_190233640(&qword_1EAD59AD0, &qword_1EAD59AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59AC8);
  }

  return result;
}

unint64_t sub_1909F1550()
{
  result = qword_1EAD59AF8;
  if (!qword_1EAD59AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59AF0);
    sub_1909F15D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59AF8);
  }

  return result;
}

unint64_t sub_1909F15D4()
{
  result = qword_1EAD59B00;
  if (!qword_1EAD59B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59B08);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59B00);
  }

  return result;
}

uint64_t sub_1909F173C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_19081BE48(result, a2, a3 & 1);

    return sub_190D52690();
  }

  return result;
}

uint64_t sub_1909F1780(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_19081E474(result, a2, a3 & 1);
  }

  return result;
}

id sub_1909F1858(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_1909F189C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  qword_1EAD9D840 = result;
  return result;
}

void sub_1909F18D0()
{
  v0 = sub_1909F1F68(0.5, 0.0, 0.5, 1.0);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 effectWithVariableBlurRadius:v2 imageMask:5.0];

  qword_1EAD59B70 = v3;
}

uint64_t static NavigationBarStylingMetrics.fauxGradientBlurEffect.getter()
{
  if (qword_1EAD51B38 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD59B70;
  v1 = qword_1EAD59B70;
  return v0;
}

id NavigationBarStylingMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NavigationBarStylingMetrics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarStylingMetrics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NavigationBarStylingMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarStylingMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1909F1B0C(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  [v17 setType_];
  [v17 setBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_190DDD0F0;
  v19 = objc_opt_self();
  v20 = [v19 blackColor];
  v21 = [v20 CGColor];

  type metadata accessor for CGColor(0);
  v23 = v22;
  *(v18 + 56) = v22;
  *(v18 + 32) = v21;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0745 alpha:0.3];
  v25 = [v24 CGColor];

  *(v18 + 88) = v23;
  *(v18 + 64) = v25;
  v26 = [v19 blackColor];
  v27 = [v26 colorWithAlphaComponent_];

  v28 = [v27 CGColor];
  *(v18 + 120) = v23;
  *(v18 + 96) = v28;
  v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.235 alpha:0.08];
  v30 = [v29 CGColor];

  *(v18 + 152) = v23;
  *(v18 + 128) = v30;
  v31 = [v19 blackColor];
  v32 = [v31 colorWithAlphaComponent_];

  v33 = [v32 CGColor];
  *(v18 + 184) = v23;
  *(v18 + 160) = v33;
  v34 = sub_190D57160();

  [v17 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_190DE5950;
  *(v35 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v35 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v35 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v35 + 56) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v35 + 64) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_19021DC70();
  v36 = sub_190D57160();

  [v17 setLocations_];

  [v17 setStartPoint_];
  [v17 setEndPoint_];
  v38 = [a1 CGContext];
  [v17 renderInContext_];
}

uint64_t sub_1909F1F68(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA80]) init];
  v9 = [objc_opt_self() currentTraitCollection];
  [v9 displayScale];
  v11 = v10;

  [v8 setScale_];
  [v8 setPreferredRange_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds:v8 format:{0.0, 0.0, 100.0, 100.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = vdupq_n_s64(0x4059000000000000uLL);
  *(v13 + 48) = a1;
  *(v13 + 56) = a2;
  *(v13 + 64) = a3;
  *(v13 + 72) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1909F22F8;
  *(v14 + 24) = v13;
  v18[4] = sub_190233AFC;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_190233A24;
  v18[3] = &block_descriptor_56;
  v15 = _Block_copy(v18);
  sub_190D50920();

  v16 = [v12 imageWithActions_];

  _Block_release(v15);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return v16;
  }

  __break(1u);
  return result;
}

void sub_1909F21B4(void *a1)
{
  v2 = [a1 layer];
  [v2 setShadowOffset_];

  v3 = [a1 layer];
  LODWORD(v4) = 1050253722;
  [v3 setShadowOpacity_];

  v5 = [a1 layer];
  [v5 setShadowRadius_];

  v6 = [a1 layer];
  v7 = [objc_opt_self() blackColor];
  v8 = [v7 CGColor];

  [v6 setShadowColor_];
}

uint64_t sub_1909F2348(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_190D563D0();
      v5 = sub_190D571D0();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_190D563D0();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

double sub_1909F24A4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = sub_190D54AC0();
  LOBYTE(v49) = 0;
  sub_1909F2B2C(v1, &v51);
  v72 = v59;
  v73 = v60;
  v68 = v55;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v64 = v51;
  v65 = v52;
  v66 = v53;
  v67 = v54;
  v75[8] = v59;
  v75[9] = v60;
  v75[4] = v55;
  v75[5] = v56;
  v75[6] = v57;
  v75[7] = v58;
  v75[0] = v51;
  v75[1] = v52;
  v74 = v61;
  v76 = v61;
  v75[2] = v53;
  v75[3] = v54;
  sub_19022FD14(&v64, v50, &qword_1EAD59C08);
  sub_19022EEA4(v75, &qword_1EAD59C08);
  *&v62[119] = v71;
  *&v62[135] = v72;
  *&v62[151] = v73;
  *&v62[55] = v67;
  *&v62[71] = v68;
  *&v62[87] = v69;
  *&v62[103] = v70;
  *&v62[7] = v64;
  *&v62[23] = v65;
  v62[167] = v74;
  *&v62[39] = v66;
  v45 = 0;
  v47 = sub_190D55D20();
  v46 = sub_190D552B0();
  sub_190D56500();
  sub_190D53C60();
  *&v63[7] = v50[0];
  *&v63[23] = v50[1];
  *&v63[39] = v50[2];
  sub_190D572A0();
  sub_1909F5A2C(v1, &v51);
  v4 = sub_190D57290();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = v2[5];
  *(v5 + 96) = v2[4];
  *(v5 + 112) = v7;
  v8 = v2[7];
  *(v5 + 128) = v2[6];
  *(v5 + 144) = v8;
  v9 = v2[1];
  *(v5 + 32) = *v2;
  *(v5 + 48) = v9;
  v10 = v2[3];
  *(v5 + 64) = v2[2];
  *(v5 + 80) = v10;
  v44 = sub_190D572E0();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v39 - v13;
  sub_190D572C0();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v42 = sub_190D54080();
    v43 = v39;
    v41 = *(v42 - 8);
    MEMORY[0x1EEE9AC00](v42);
    v40 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_190D582B0();

    *&v51 = 0xD000000000000031;
    *(&v51 + 1) = 0x8000000190E6C0A0;
    v49 = 57;
    v16 = sub_190D58720();
    MEMORY[0x193AF28B0](v16);

    v39[2] = v39;
    v39[1] = v51;
    v18 = MEMORY[0x1EEE9AC00](v17);
    v19 = v39 - v13;
    v20 = v39 - v13;
    v21 = v44;
    (*(v11 + 16))(v19, v20, v44, v18);
    v22 = v14;
    v23 = v40;
    sub_190D54070();
    (*(v11 + 8))(v22, v21);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52290);
    (*(v41 + 32))(a1 + *(v24 + 36), v23, v42);
    v25 = *&v62[96];
    *(a1 + 129) = *&v62[112];
    v26 = *&v62[144];
    *(a1 + 145) = *&v62[128];
    *(a1 + 161) = v26;
    v27 = *&v62[32];
    *(a1 + 65) = *&v62[48];
    v28 = *&v62[80];
    *(a1 + 81) = *&v62[64];
    *(a1 + 97) = v28;
    *(a1 + 113) = v25;
    v29 = *&v62[16];
    *(a1 + 17) = *v62;
    *(a1 + 33) = v29;
    *(a1 + 49) = v27;
  }

  else
  {
    v32 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD522A0) + 36));
    v33 = sub_190D53E20();
    (*(v11 + 32))(&v32[*(v33 + 20)], v39 - v13, v44);
    *v32 = &unk_190DE5E00;
    *(v32 + 1) = v5;
    v34 = *&v62[48];
    *(a1 + 49) = *&v62[32];
    v35 = *v62;
    *(a1 + 33) = *&v62[16];
    *(a1 + 17) = v35;
    v36 = *&v62[112];
    *(a1 + 113) = *&v62[96];
    v37 = *&v62[64];
    *(a1 + 97) = *&v62[80];
    *(a1 + 81) = v37;
    *(a1 + 65) = v34;
    v38 = *&v62[128];
    *(a1 + 161) = *&v62[144];
    *(a1 + 145) = v38;
    *(a1 + 129) = v36;
  }

  v30 = *&v63[16];
  *(a1 + 201) = *v63;
  *a1 = v48;
  *(a1 + 8) = 0;
  *(a1 + 16) = v45;
  *(a1 + 177) = *&v62[160];
  *(a1 + 185) = v51;
  *(a1 + 188) = *(&v51 + 3);
  *(a1 + 192) = v47;
  *(a1 + 200) = v46;
  *(a1 + 217) = v30;
  result = *&v63[32];
  *(a1 + 233) = *&v63[32];
  *(a1 + 248) = *&v63[47];
  return result;
}

uint64_t sub_1909F2B2C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_190D548D0();
  sub_1909F37A8(a1, &v35);
  v4 = v35;
  v25 = *(&v35 + 1);
  v26 = v35;
  v5 = v36;
  v24 = v36;
  v6 = BYTE8(v36);
  v7 = *(&v37 + 1);
  v22 = v37;
  v23 = BYTE8(v36);
  v8 = sub_190D552B0();
  LOBYTE(v35) = 1;
  v9 = sub_190D55D20();
  v10 = sub_190D552B0();
  sub_1909F2D80(a1, &v35);
  v11 = v35;
  v12 = v36;
  v13 = BYTE8(v36);
  v28 = v27;
  v29[0] = 1;
  *&v29[8] = v4;
  *&v29[24] = v5;
  LOBYTE(v30) = v6;
  *(&v30 + 1) = v22;
  *&v31 = v7;
  BYTE8(v31) = v8;
  v32 = 0u;
  v33 = 0u;
  v34[0] = 1;
  *&v34[8] = v9;
  v34[16] = v10;
  *&v34[17] = 256;
  v37 = *&v29[16];
  v38 = v30;
  v35 = v27;
  v36 = *v29;
  v14 = *v34;
  *&v42[15] = *&v34[15];
  v41 = 0u;
  *v42 = *v34;
  v39 = v31;
  v40 = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = v14;
  v15 = *&v42[16];
  v16 = v36;
  v17 = v38;
  v18 = v39;
  *(a2 + 32) = v37;
  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  *(a2 + 80) = 0u;
  *a2 = v35;
  *(a2 + 16) = v16;
  *(a2 + 128) = v15;
  *(a2 + 136) = v11;
  *(a2 + 152) = v12;
  v19 = v12;
  *(a2 + 160) = v13;
  LOBYTE(a2) = v13;
  sub_19022FD14(&v28, v43, &qword_1EAD59C38);
  sub_1909F5BE8(v11, *(&v11 + 1), v19, a2);
  sub_1909F5C34(v11, *(&v11 + 1), v19, a2);
  v43[0] = v27;
  v43[1] = 0;
  v44 = 1;
  v45 = v26;
  v46 = v25;
  v47 = v24;
  v48 = v23;
  v49 = v22;
  v50 = v8;
  v51 = 0u;
  v52 = 0u;
  v53 = 1;
  v54 = v9;
  v55 = v10;
  v56 = 256;
  return sub_19022EEA4(v43, &qword_1EAD59C38);
}

void sub_1909F2D80(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C40);
  sub_190D55FD0();
  if (v14 == 1 && (v4 = a1[6], v19 = a1[5], v20 = v4, v21 = a1[7], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C58), sub_190D55FD0(), v17))
  {
    sub_1909F5C7C();
    sub_1909F5CD0();
    v5 = v18;
    sub_190D54C50();
    sub_1909F5D24(v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = a1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C10);
    sub_190D55FD0();
    v6 = swift_allocObject();
    v7 = a1[5];
    v6[5] = a1[4];
    v6[6] = v7;
    v8 = a1[7];
    v6[7] = a1[6];
    v6[8] = v8;
    v9 = a1[1];
    v6[1] = *a1;
    v6[2] = v9;
    v10 = a1[3];
    v6[3] = a1[2];
    v6[4] = v10;
    sub_1909F5A2C(a1, &v19);
    sub_1909F5C7C();
    sub_1909F5CD0();
    sub_190D54C50();
  }

  v11 = *(&v19 + 1);
  v12 = v20;
  v13 = BYTE8(v20);
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
}

void sub_1909F2F84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v11 = sub_190D51660();
  v12 = [v10 initWithData_];

  if (v12)
  {
    v13 = *(a5 + 96);
    v27[0] = *(a5 + 80);
    v27[1] = v13;
    v15 = *(a5 + 80);
    v14 = *(a5 + 96);
    v27[2] = *(a5 + 112);
    v24 = v15;
    v25 = v14;
    v26 = *(a5 + 112);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = v12;
    sub_190D52690();
    v16 = v12;
    sub_19083B680(a1, a2);
    sub_19022FD14(v27, v18, &qword_1EAD59C58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C58);
    sub_190D55FE0();
    sub_1909F5D24(v24, *(&v24 + 1), v25, *(&v25 + 1), v26);

    (*a5)(a1, a2, a3, a4);
    v17 = sub_190D56540();
    MEMORY[0x1EEE9AC00](v17);
    sub_190D53E40();
  }
}

uint64_t sub_1909F3140()
{
  v0[2] = sub_190D572A0();
  v0[3] = sub_190D57290();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1909F31EC;

  return sub_1909F3388();
}

uint64_t sub_1909F31EC()
{

  v1 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909F3328, v1, v0);
}

uint64_t sub_1909F3328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1909F3388()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  v1[7] = swift_task_alloc();
  sub_190D572A0();
  v1[8] = sub_190D57290();
  v3 = sub_190D57240();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1909F3458, v3, v2);
}

uint64_t sub_1909F3458()
{
  v1 = v0[7];
  sub_190D572C0();
  v2 = sub_190D572E0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = sub_190C774F8(0, 0, v1, &unk_190DE5E30, v3);
  v0[11] = v4;
  sub_19022EEA4(v1, &qword_1EAD5BAF0);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BF0);
  *v5 = v0;
  v5[1] = sub_1909F35B8;

  return MEMORY[0x1EEE6DA40](v0 + 4, v4, v6);
}

uint64_t sub_1909F35B8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1909F36FC, v3, v2);
}

uint64_t sub_1909F36FC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 32);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C10);
  sub_190D55FE0();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1909F37A8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[5];
  v4[5] = a1[4];
  v4[6] = v5;
  v6 = a1[7];
  v4[7] = a1[6];
  v4[8] = v6;
  v7 = a1[1];
  v4[1] = *a1;
  v4[2] = v7;
  v8 = a1[3];
  v9 = a1[4];
  v4[3] = a1[2];
  v4[4] = v8;
  v18 = v9;
  sub_1909F5A2C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C40);
  sub_190D55FD0();
  if (v17[0] == 1)
  {
    v10 = swift_allocObject();
    v11 = a1[5];
    v10[5] = a1[4];
    v10[6] = v11;
    v12 = a1[7];
    v10[7] = a1[6];
    v10[8] = v12;
    v13 = a1[1];
    v10[1] = *a1;
    v10[2] = v13;
    v14 = a1[3];
    v10[3] = a1[2];
    v10[4] = v14;
    sub_1909F5A2C(a1, v17);
    sub_190D50920();
    v15 = sub_1909F5E18;
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  sub_190D50920();
  sub_19029063C(v15);
  sub_19022123C(v15);
  *a2 = sub_1909F5D88;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v10;
  sub_19022123C(v15);
}

uint64_t sub_1909F3918(uint64_t a1)
{
  v15[0] = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C40);
  v2 = sub_190D55FD0();
  if (v12 != 1)
  {
    return (*(a1 + 16))(v2);
  }

  v3 = sub_190D56540();
  MEMORY[0x1EEE9AC00](v3);
  sub_190D53E40();

  v4 = *(a1 + 96);
  v15[0] = *(a1 + 80);
  v15[1] = v4;
  v6 = *(a1 + 80);
  v5 = *(a1 + 96);
  v15[2] = *(a1 + 112);
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 112);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  sub_19022FD14(v15, v8, &qword_1EAD59C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C58);
  sub_190D55FE0();
  sub_1909F5D24(v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
}

uint64_t sub_1909F3A7C(uint64_t a1)
{
  v1[13] = a1;
  v2 = sub_190D515F0();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1909F3B3C, 0, 0);
}

uint64_t sub_1909F3B3C()
{
  v76 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = [objc_opt_self() systemPhotoLibraryURL];
  sub_190D515B0();

  v5 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v6 = sub_190D51570();
  v7 = [v5 initWithPhotoLibraryURL_];

  (*(v2 + 8))(v1, v3);
  v8 = [v7 librarySpecificFetchOptions];
  [v8 setIncludeAssetSourceTypes_];
  sub_1902188FC(0, &qword_1EAD59C18);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (![v9 includeSharedAlbums])
  {

    goto LABEL_32;
  }

  v10 = [v9 selectedSharedAlbumCloudIdentifiers];

  v11 = sub_190D57180();
  if (!*(v11 + 16))
  {

    goto LABEL_32;
  }

  v70 = v11;
  v66 = v9;
  v65 = (v0 + 88);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v67 = v8;
  v13 = [objc_opt_self() fetchAssetCollectionsWithType:1 subtype:101 options:v8];
  *(v0 + 48) = sub_1909F5BB4;
  *(v0 + 56) = v12;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1909F4620;
  *(v0 + 40) = &block_descriptor_57;
  v14 = _Block_copy((v0 + 16));
  sub_190D50920();

  [v13 enumerateObjectsUsingBlock_];
  _Block_release(v14);

  v69 = v0;
  swift_beginAccess();
  sub_190D52690();
  v68 = v7;
  v8 = sub_190D576E0();

  v15 = v8 + 64;
  v16 = -1 << v8[32];
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v9 = v17 & *(v8 + 8);
  v18 = (63 - v16) >> 6;
  p_name = &OBJC_PROTOCOL___UIVideoEditorControllerDelegatePrivate.name;
  v72 = v18;
  v73 = v8 + 64;
  v71 = v8;
  v20 = 0;
  if (v9)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_11:
    v0 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_36:
      swift_once();
      goto LABEL_29;
    }

    if (v0 >= v18)
    {
      break;
    }

    v9 = *&v15[8 * v0];
    v20 = (v20 + 1);
    if (v9)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v22 = (v0 << 10) | (16 * v21);
        v23 = *(v8 + 6) + v22;
        v7 = *v23;
        v24 = *(v23 + 8);
        v25 = *(v8 + 7) + v22;
        v26 = *v25;
        v27 = *(v25 + 8);
        sub_190D52690();
        v74 = v26;
        if (v27)
        {
          sub_1909F5BBC(v26);
          if (p_name[407] != -1)
          {
            swift_once();
          }

          v28 = sub_190D53040();
          __swift_project_value_buffer(v28, qword_1EAD9E058);
          sub_190D52690();
          sub_1909F5BBC(v26);
          v29 = sub_190D53020();
          v30 = sub_190D576A0();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = p_name;
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v75[0] = v34;
            *v31 = 136315394;
            v7 = sub_19021D9F8(v7, v24, v75);

            *(v31 + 4) = v7;
            *(v31 + 12) = 2112;
            v35 = _swift_stdlib_bridgeErrorToNSError();
            *(v31 + 14) = v35;
            *v33 = v35;
            _os_log_impl(&dword_19020E000, v29, v30, "Error fetching album cloud identifier for local identifier: %s. Error: %@.", v31, 0x16u);
            sub_19022EEA4(v33, &unk_1EAD54610);
            v36 = v33;
            p_name = v32;
            v18 = v72;
            MEMORY[0x193AF7A40](v36, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v34);
            v37 = v34;
            v8 = v71;
            MEMORY[0x193AF7A40](v37, -1, -1);
            v38 = v31;
            v15 = v73;
            MEMORY[0x193AF7A40](v38, -1, -1);
          }

          else
          {

            sub_19083B5AC(v74);
          }

          sub_19083B5AC(v74);
          v20 = v0;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_1909F5BBC(v26);
          v39 = [v26 stringValue];
          v40 = sub_190D56F10();
          v42 = v41;

          v69[11] = v40;
          v69[12] = v42;
          v43 = swift_task_alloc();
          *(v43 + 16) = v65;
          LOBYTE(v40) = sub_190CA8558(sub_1909F5BC8, v43, v70);

          if (v40)
          {
            sub_1908AA174(v75, v7, v24);
            sub_19083B5AC(v74);
          }

          else
          {

            sub_19083B5AC(v74);
          }

          v18 = v72;
          v15 = v73;
          v20 = v0;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        v0 = v20;
      }
    }
  }

  v44 = objc_opt_self();
  v45 = sub_190D57400();

  v46 = [v44 uuidsFromLocalIdentifiers_];

  if (v46)
  {
    v47 = sub_190D57410();

    sub_1902188FC(0, &unk_1EAD450A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_190DD1D90;
    *(v48 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C28);
    *(v48 + 64) = sub_190233640(&qword_1EAD59C30, &qword_1EAD59C28);
    *(v48 + 32) = v47;
    v49 = sub_190D575E0();
    v8 = v67;
    [v67 setInternalInclusionPredicate_];

    v7 = v68;
    v0 = v69;
    v9 = v66;
    goto LABEL_32;
  }

  v7 = v68;
  v0 = v69;
  v9 = v66;
  v8 = v67;
  if (p_name[407] != -1)
  {
    goto LABEL_36;
  }

LABEL_29:
  v50 = sub_190D53040();
  __swift_project_value_buffer(v50, qword_1EAD9E058);
  v51 = sub_190D53020();
  v52 = sub_190D576A0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_19020E000, v51, v52, "Unable to get UUIDs from shared album local identifiers.", v53, 2u);
    MEMORY[0x193AF7A40](v53, -1, -1);
  }

LABEL_32:
  v54 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_190DD55F0;
  v56 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v57 = sub_190D56ED0();
  v58 = [v56 initWithKey:v57 ascending:0];

  *(v55 + 32) = v58;
  sub_1902188FC(0, &qword_1EAD59C20);
  v59 = sub_190D57160();

  [v8 setSortDescriptors_];

  v60 = objc_opt_self();
  v61 = v8;
  v62 = [v60 fetchAssetsWithMediaType:1 options:v61];

  *v54 = v62;

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1909F452C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 localIdentifier];
  v6 = sub_190D56F10();
  v8 = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1908354D4(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1908354D4((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_1909F4620(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v4 = a2;
  v3();
}

uint64_t sub_1909F46F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D55EB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_190D55E90();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v9 = sub_190D55F10();

  (*(v5 + 8))(v7, v4);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BC0) + 36));
  v11 = *(sub_190D543E0() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_190D54A20();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)] = 256;
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_190D54280();
  LOBYTE(v9) = sub_190D552B0();
  sub_190D539C0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BC8);
  v28 = a2 + *(result + 36);
  *v28 = v9;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1909F4940()
{
  sub_190D55290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B78);
  sub_1909F50F8();
  return sub_190D53A20();
}

uint64_t sub_1909F49CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B90);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  sub_190D53D30();
  sub_1909F52B4(v14, v15);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  sub_190D54AC0();
  v36 = 0;
  sub_1909F5460();
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B98);
  sub_1909F54B8();
  sub_190D565F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  LOBYTE(a3) = sub_190D552E0();
  *(inited + 32) = a3;
  v17 = sub_190D55300();
  *(inited + 33) = v17;
  v18 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != a3)
  {
    v18 = sub_190D552F0();
  }

  sub_190D552F0();
  if (sub_190D552F0() != v17)
  {
    v18 = sub_190D552F0();
  }

  sub_190D54280();
  sub_190D539C0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v31;
  (*(v11 + 32))(v31, v13, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59B78);
  v29 = v27 + *(result + 36);
  *v29 = v18;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_1909F4CA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v9 = sub_190D53D60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BB0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  if (a1)
  {
    v29 = a3;
    v31 = v13;
    v17 = a1;
    result = [v17 count];
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v32 = 0;
      v33 = result;
      KeyPath = swift_getKeyPath();
      (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
      v19 = *(v10 + 80);
      v27 = a5;
      v20 = (v19 + 48) & ~v19;
      v21 = swift_allocObject();
      *(v21 + 2) = v17;
      *(v21 + 3) = a1;
      v22 = v29;
      *(v21 + 4) = v30;
      *(v21 + 5) = v22;
      (*(v10 + 32))(&v21[v20], &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      v23 = v17;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54DC0);
      sub_190878748();
      sub_1909F55C0();
      sub_190D56280();
      v24 = v27;
      (*(v31 + 32))(v27, v16, v12);
      return (*(v31 + 56))(v24, 0, 1, v12);
    }
  }

  else
  {
    v25 = *(v13 + 56);

    return v25(a5, 1, 1, v12, v14);
  }

  return result;
}

__n128 sub_1909F4FA8@<Q0>(id a1@<X1>, void *a2@<X0>, unint64_t a3@<X3>, unint64_t a4@<X4>, __n128 *a5@<X8>)
{
  v8 = [a1 objectAtIndex_];
  sub_190D50920();
  sub_190D53D30();
  v11 = sub_1909F569C(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD590B0);
  sub_190D55FC0();
  result = v13;
  a5->n128_u64[0] = v8;
  a5->n128_u64[1] = a3;
  a5[1].n128_u64[0] = a4;
  a5[1].n128_f64[1] = v11;
  a5[2] = v13;
  return result;
}

uint64_t sub_1909F5068@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = sub_1909F50E0;
  a1[1] = v6;
  v7 = v3;

  return sub_190D50920();
}

unint64_t sub_1909F50F8()
{
  result = qword_1EAD59B80;
  if (!qword_1EAD59B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59B78);
    sub_190233640(&qword_1EAD59B88, &qword_1EAD59B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59B80);
  }

  return result;
}

__n128 sub_1909F51B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BF0);
  sub_190D55FC0();
  sub_190D55FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BF8);
  sub_190D55FC0();
  result = v15;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v15;
  *(a7 + 64) = v15.n128_u8[0];
  *(a7 + 72) = v15.n128_u64[1];
  *(a7 + 80) = v15;
  *(a7 + 96) = v16;
  *(a7 + 112) = v17;
  return result;
}

uint64_t sub_1909F52B4(double a1, double a2)
{
  v4 = sub_190D563C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_190D563D0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = xmmword_190DE3850;
  (*(v5 + 104))(v7, *MEMORY[0x1E697D748], v4);
  sub_190D563E0();
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = 3;
  if (a2 < a1)
  {
    v13 = 4;
  }

  if (v12 == 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = 2;
  }

  return sub_1909F2348(v10, v14);
}

unint64_t sub_1909F5460()
{
  result = qword_1EAD5AB40;
  if (!qword_1EAD5AB40)
  {
    sub_190D54DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AB40);
  }

  return result;
}

unint64_t sub_1909F54B8()
{
  result = qword_1EAD59BA0;
  if (!qword_1EAD59BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59B98);
    sub_1909F553C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59BA0);
  }

  return result;
}

unint64_t sub_1909F553C()
{
  result = qword_1EAD59BA8;
  if (!qword_1EAD59BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59BB0);
    sub_1909F55C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59BA8);
  }

  return result;
}

unint64_t sub_1909F55C0()
{
  result = qword_1EAD59BB8;
  if (!qword_1EAD59BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59BB8);
  }

  return result;
}

double sub_1909F5614@<D0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  sub_190D53D60();
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];

  *&result = sub_1909F4FA8(v5, a1, v6, v7, a2).n128_u64[0];
  return result;
}

double sub_1909F569C(double a1, double a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  sub_190D54280();
  v7 = 3;
  if (a2 < a1)
  {
    v7 = 4;
  }

  if (v5 != 1)
  {
    v7 = 2;
  }

  return (a1 - (v6 + v6) + (v7 - 1) * -4.0) / v7;
}

unint64_t sub_1909F5744()
{
  result = qword_1EAD59BE0;
  if (!qword_1EAD59BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59BC8);
    sub_1909F57D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59BE0);
  }

  return result;
}

unint64_t sub_1909F57D0()
{
  result = qword_1EAD59BE8;
  if (!qword_1EAD59BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59BC0);
    sub_1908E6408();
    sub_190233640(&qword_1EAD467C8, &qword_1EAD55A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59BE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_7ChatKit22ClarityPhotoPickerViewV13SelectedImageVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1909F5900(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1909F5948(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1909F59BC()
{
  result = qword_1EAD59C00;
  if (!qword_1EAD59C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59C00);
  }

  return result;
}

uint64_t sub_1909F5A64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA0;

  return sub_1909F3140();
}

uint64_t sub_1909F5B08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA4;

  return sub_1909F3A7C(a1);
}

id sub_1909F5BE8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;

    return sub_190D50920();
  }

  else
  {

    return a1;
  }
}

void sub_1909F5C34(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;

    a1 = v5;
    v4 = vars8;
  }
}

unint64_t sub_1909F5C7C()
{
  result = qword_1EAD59C48;
  if (!qword_1EAD59C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59C48);
  }

  return result;
}

unint64_t sub_1909F5CD0()
{
  result = qword_1EAD59C50;
  if (!qword_1EAD59C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59C50);
  }

  return result;
}

uint64_t sub_1909F5D24(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    sub_19083B6D4(result, a2);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{

  if (*(v0 + 120))
  {
    sub_19083B6D4(*(v0 + 96), *(v0 + 104));
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

unint64_t sub_1909F5EBC()
{
  result = qword_1EAD59C60;
  if (!qword_1EAD59C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52298);
    sub_1909F5F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59C60);
  }

  return result;
}

unint64_t sub_1909F5F48()
{
  result = qword_1EAD59C68;
  if (!qword_1EAD59C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59C70);
    sub_190233640(&qword_1EAD59C78, &qword_1EAD59C80);
    sub_190233640(&unk_1EAD59690, &unk_1EAD5F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59C68);
  }

  return result;
}

uint64_t sub_1909F6078@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_190D56450();
  v8 = sub_190D552B0();
  v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52278) + 36)] = v8;
  sub_1909F6554(v7, v4);
  sub_1909F6554(v4, a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59CA0) + 48)) = 1;
  sub_1909F65C4(v7);
  return sub_1909F65C4(v4);
}

uint64_t sub_1909F6188(uint64_t (*a1)(uint64_t))
{
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FD0();
  if (v4)
  {
  }

  sub_190D55FE0();

  return a1(v3);
}

uint64_t sub_1909F624C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  *a1 = sub_190D56500();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C88);
  sub_1909F6078(a1 + *(v8 + 44));
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C90) + 36));
  *v10 = sub_1909F6544;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_190D50920();

  return sub_190D50920();
}

double sub_1909F6324@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E68);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_190DDD0E0;
  v5 = a1;
  sub_190D55D90();
  sub_190D55DF0();

  *(v4 + 32) = sub_190D56390();
  *(v4 + 40) = v6;
  sub_190D55D90();
  sub_190D55DF0();

  *(v4 + 48) = sub_190D56390();
  *(v4 + 56) = v7;
  sub_190D55D90();
  sub_190D55DF0();

  *(v4 + 64) = sub_190D56390();
  *(v4 + 72) = v8;
  sub_190D55D90();
  sub_190D55DF0();

  *(v4 + 80) = sub_190D56390();
  *(v4 + 88) = v9;
  sub_190D56670();
  sub_190D56680();
  sub_190D563A0();
  sub_190D53EE0();
  *a2 = a1;
  *(a2 + 8) = v11;
  result = *&v12;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 48) = 0;
  return result;
}

__n128 sub_1909F64BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_190D56500();
  v6 = v5;
  sub_1909F6324(v3, v12);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v15;
  result = v13;
  v11 = v14;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 48) = v11;
  *(a1 + 64) = v9;
  return result;
}

uint64_t sub_1909F6554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909F65C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1909F663C()
{
  result = qword_1EAD59CA8;
  if (!qword_1EAD59CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59C90);
    sub_190233640(&qword_1EAD59CB0, &qword_1EAD59CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59CA8);
  }

  return result;
}

uint64_t sub_1909F6710@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_190D54AC0();
  sub_1909F6828(a1, v21);
  *&v20[23] = v21[1];
  *&v20[39] = v21[2];
  *&v20[55] = v21[3];
  v20[71] = v22;
  *&v20[7] = v21[0];
  v5 = sub_190D55310();
  sub_190D539C0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_190D552A0();
  result = sub_190D539C0();
  *(a2 + 33) = *&v20[16];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = *&v20[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 81) = *&v20[64];
  *(a2 + 17) = *v20;
  *(a2 + 96) = v5;
  *(a2 + 104) = v7;
  *(a2 + 112) = v9;
  *(a2 + 120) = v11;
  *(a2 + 128) = v13;
  *(a2 + 136) = 0;
  *(a2 + 144) = v14;
  *(a2 + 152) = v16;
  *(a2 + 160) = v17;
  *(a2 + 168) = v18;
  *(a2 + 176) = v19;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_1909F6828@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v3 = sub_190D548D0();
    v5 = sub_190D55EA0();
    v6 = sub_190D55DC0();
    sub_190D50920();
    sub_190D50920();
    v4 = 1;
  }

  sub_1909F694C(v3, 0, v4, 0, v4, v5);
  sub_1909F6990(v3, 0, v4, 0, v4, v5);
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;

  return sub_1909F6990(v3, 0, v4, 0, v4, v5);
}

uint64_t sub_1909F694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_190D50920();

    return sub_190D50920();
  }

  return result;
}

uint64_t sub_1909F6990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_1909F69D4()
{
  result = qword_1EAD59CD0;
  if (!qword_1EAD59CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59CD8);
    sub_1909F6A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59CD0);
  }

  return result;
}

unint64_t sub_1909F6A60()
{
  result = qword_1EAD59CE0;
  if (!qword_1EAD59CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59CE8);
    sub_1909F6AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59CE0);
  }

  return result;
}

unint64_t sub_1909F6AEC()
{
  result = qword_1EAD59CF0;
  if (!qword_1EAD59CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59CF8);
    sub_190233640(&qword_1EAD59D00, &qword_1EAD59D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59CF0);
  }

  return result;
}

id CKVisionAppMenuViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKVisionAppMenuViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKVisionAppMenuViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKVisionAppMenuViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKVisionAppMenuViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1909F6D68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VisionAppMenuView();
  sub_19022FD14(v1 + *(v10 + 28), v9, &qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1909F6F70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VisionAppMenuView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v28 = v5;
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_190D54AC0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v26[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D38) + 44);
  v27 = v1;
  v33 = *v1;
  sub_1909F87F8(v1, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1909F885C(v6, v8 + v7);
  sub_190D52690();
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D40);
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D48);
  sub_190233640(&qword_1EAD59D50, &qword_1EAD59D40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59D58);
  v10 = sub_190233640(&qword_1EAD59D60, &qword_1EAD59D58);
  v11 = sub_1909F8940();
  v29 = v9;
  v30 = &type metadata for VisionAppMenuButtonStyle;
  v31 = v10;
  v32 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1909F8F94(&qword_1EAD59D70, sub_1909F8580);
  sub_190D56290();
  v12 = v27;
  v13 = sub_190D552B0();
  sub_190D539C0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D78) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  sub_1909F87F8(v12, v6);
  v23 = swift_allocObject();
  sub_1909F885C(v6, v23 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D80);
  v25 = (a1 + *(result + 36));
  *v25 = 0;
  v25[1] = 0;
  v25[2] = sub_1909F8ACC;
  v25[3] = v23;
  return result;
}

uint64_t sub_1909F72DC(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for VisionAppMenuView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D58);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9];
  v11 = *a1;
  sub_1909F87F8(a2, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1909F885C(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v17 = v11;
  v18 = a2;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D88);
  sub_1909F8BCC();
  sub_190D56030();
  sub_190233640(&qword_1EAD59D60, &qword_1EAD59D58);
  sub_1909F8940();
  sub_190D55730();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1909F753C(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53D10();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909F6D68(v7);
  sub_190D53D00();
  (*(v5 + 8))(v7, v4);
  return (*(a1 + 8))(a2);
}

uint64_t sub_1909F7628@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_190D548D0();
  v30 = 1;
  sub_1909F783C(a1, a2, &v18);
  v39 = v26;
  v40 = v27;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v42[8] = v26;
  v42[9] = v27;
  v42[4] = v22;
  v42[5] = v23;
  v42[6] = v24;
  v42[7] = v25;
  v42[0] = v18;
  v42[1] = v19;
  v41 = v28;
  v43 = v28;
  v42[2] = v20;
  v42[3] = v21;
  sub_19022FD14(&v31, v17, &qword_1EAD59DA8);
  sub_19022EEA4(v42, &qword_1EAD59DA8);
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v29[167] = v41;
  *&v29[39] = v33;
  LOBYTE(a1) = v30;
  type metadata accessor for VisionAppMenuView();
  LOBYTE(a2) = sub_190D552B0();
  result = sub_190D539C0();
  v8 = *&v29[96];
  *(a3 + 129) = *&v29[112];
  v9 = *&v29[144];
  *(a3 + 145) = *&v29[128];
  *(a3 + 161) = v9;
  v10 = *&v29[32];
  *(a3 + 65) = *&v29[48];
  v11 = *&v29[80];
  *(a3 + 81) = *&v29[64];
  *(a3 + 97) = v11;
  *(a3 + 113) = v8;
  v12 = *&v29[16];
  *(a3 + 17) = *v29;
  *(a3 + 33) = v12;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 177) = *&v29[160];
  *(a3 + 49) = v10;
  *(a3 + 192) = a2;
  *(a3 + 200) = v13;
  *(a3 + 208) = v14;
  *(a3 + 216) = v15;
  *(a3 + 224) = v16;
  *(a3 + 232) = 0;
  return result;
}

uint64_t sub_1909F783C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_190D55EB0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 image];
  sub_190D55E90();
  (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6);
  v49 = sub_190D55F10();

  (*(v7 + 8))(v10, v6);
  v37 = type metadata accessor for VisionAppMenuView();
  v38 = a2;
  sub_190D56500();
  sub_190D53C60();
  v48 = v55;
  v44 = v56;
  v47 = v57;
  v43 = v58;
  v46 = v59;
  v45 = v60;
  sub_190D56500();
  sub_190D53C60();
  v42 = v61;
  v41 = v63;
  v40 = v65;
  v39 = v66;
  v69 = 1;
  v68 = v62;
  v67 = v64;
  v12 = [a1 displayName];
  v13 = sub_190D56F10();
  v15 = v14;

  v53 = v13;
  v54 = v15;
  sub_19081E484();
  v16 = sub_190D555F0();
  v18 = v17;
  v20 = v19;
  sub_190D55360();
  v21 = sub_190D555B0();
  v23 = v22;
  LOBYTE(v6) = v24;
  v26 = v25;

  sub_19081E474(v16, v18, v20 & 1);

  v27 = *(v38 + *(v37 + 48));
  v28 = v69;
  v29 = v68;
  v30 = v67;
  v31 = v44;
  LOBYTE(v53) = v44;
  v32 = v43;
  v52 = v43;
  v51 = v6 & 1;
  v50 = 0;
  v33 = v48;
  *a3 = v49;
  *(a3 + 8) = v33;
  *(a3 + 16) = v31;
  *(a3 + 24) = v47;
  *(a3 + 32) = v32;
  v34 = v45;
  *(a3 + 40) = v46;
  *(a3 + 48) = v34;
  *(a3 + 56) = 0;
  *(a3 + 64) = v28;
  *(a3 + 72) = v42;
  *(a3 + 80) = v29;
  *(a3 + 88) = v41;
  *(a3 + 96) = v30;
  v35 = v39;
  *(a3 + 104) = v40;
  *(a3 + 112) = v35;
  *(a3 + 120) = v21;
  *(a3 + 128) = v23;
  *(a3 + 136) = v6 & 1;
  *(a3 + 144) = v26;
  *(a3 + 152) = v27;
  *(a3 + 160) = 0;
  sub_190D50920();
  sub_19081BE48(v21, v23, v6 & 1);
  sub_190D52690();
  sub_19081E474(v21, v23, v6 & 1);
}

uint64_t sub_1909F7C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v33 = sub_190D54CB0();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59DD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59DD8);
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59DE0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  sub_190D54F60();
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59DE8) + 36)];
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_190D54A20();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59DF0) + 36)] = 0;
  v18 = &v7[*(v5 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8);
  sub_190D54480();
  *v18 = swift_getKeyPath();
  sub_190D544F0();
  sub_1909F8DF4();
  sub_1909F8F94(&qword_1EAD59E10, MEMORY[0x1E697C688]);
  v19 = v33;
  sub_190D55770();
  (*(v2 + 8))(v4, v19);
  sub_19022EEA4(v7, &qword_1EAD59DD0);
  if (sub_190D54F70())
  {
    v20 = 0.97;
  }

  else
  {
    v20 = 1.0;
  }

  sub_190D56690();
  v22 = v21;
  v24 = v23;
  (*(v8 + 32))(v14, v10, v32);
  v25 = &v14[*(v12 + 44)];
  *v25 = v20;
  *(v25 + 1) = v20;
  *(v25 + 2) = v22;
  *(v25 + 3) = v24;
  v26 = sub_190D565B0();
  v27 = sub_190D54F70();
  v28 = v34;
  sub_190272DA4(v14, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59E18);
  v30 = v28 + *(result + 36);
  *v30 = v26;
  *(v30 + 8) = v27 & 1;
  return result;
}

uint64_t CKAppMenuItem.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_190D56F10();

  return v2;
}

void sub_1909F80AC(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_190D56F10();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_1909F8104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v28 = a4;
  v8 = sub_190D55190();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for VisionAppMenuView();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = objc_opt_self();
  v13 = [objc_opt_self() currentTraitCollection];
  v14 = [v12 orderedItemsForTraitCollection:v13 conversation:a1];

  sub_1909F8580();
  v15 = sub_190D57180();

  *(v11 + v9[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v17 = v27;
  v16 = v28;
  *v11 = v15;
  v11[1] = v17;
  v11[2] = a3;
  v11[3] = v16;
  v11[4] = a5;
  *(v11 + v9[8]) = 0x4024000000000000;
  *(v11 + v9[9]) = 0x4028000000000000;
  *(v11 + v9[10]) = 0x403C000000000000;
  *(v11 + v9[11]) = 0x4028000000000000;
  *(v11 + v9[12]) = 0x4028000000000000;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59D18));
  sub_190D50920();
  sub_190D50920();
  v18 = sub_190D54B60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_190DD1D90;
  sub_190D55180();
  v31 = v19;
  sub_1909F8F94(&qword_1EAD548D8, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548E0);
  sub_190233640(&qword_1EAD548E8, &qword_1EAD548E0);
  sub_190D58170();
  sub_190D54B30();
  v20 = v18;
  [v20 setModalPresentationStyle_];
  v21 = [v20 popoverPresentationController];
  if (v21)
  {
    v22 = v21;
    sub_190D54B70();
    v23 = *(v11 + v9[10]) * 0.5 + *(v11 + v9[9]);
    v24 = *(v11 + v9[8]);
    sub_1909F85CC(v11);
    [v22 _setCornerRadius_];
  }

  return v20;
}

uint64_t type metadata accessor for VisionAppMenuView()
{
  result = qword_1EAD59D20;
  if (!qword_1EAD59D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1909F8580()
{
  result = qword_1EAD59D10;
  if (!qword_1EAD59D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD59D10);
  }

  return result;
}

uint64_t sub_1909F85CC(uint64_t a1)
{
  v2 = type metadata accessor for VisionAppMenuView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1909F8650()
{
  sub_1909F8778(319, &qword_1EAD59D30, sub_1909F8580, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1908E1324();
    if (v1 <= 0x3F)
    {
      sub_19081C950();
      if (v2 <= 0x3F)
      {
        sub_1909F8778(319, &qword_1EAD562D0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1909F8778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1909F87F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisionAppMenuView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909F885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisionAppMenuView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909F88C0(void **a1)
{
  v3 = *(type metadata accessor for VisionAppMenuView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1909F72DC(a1, v4);
}

unint64_t sub_1909F8940()
{
  result = qword_1EAD59D68;
  if (!qword_1EAD59D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59D68);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for VisionAppMenuView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D53D10();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1909F8ACC()
{
  v1 = type metadata accessor for VisionAppMenuView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 24);
  if (v4)
  {
    return v4();
  }

  return result;
}

uint64_t sub_1909F8B38()
{
  v1 = *(type metadata accessor for VisionAppMenuView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1909F753C(v0 + v2, v3);
}

unint64_t sub_1909F8BCC()
{
  result = qword_1EAD59D90;
  if (!qword_1EAD59D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59D88);
    sub_190233640(&qword_1EAD59D98, &qword_1EAD59DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59D90);
  }

  return result;
}

unint64_t sub_1909F8C94()
{
  result = qword_1EAD59DB0;
  if (!qword_1EAD59DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59D80);
    sub_1909F8D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59DB0);
  }

  return result;
}

unint64_t sub_1909F8D20()
{
  result = qword_1EAD59DB8;
  if (!qword_1EAD59DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59D78);
    sub_190233640(&qword_1EAD59DC0, &qword_1EAD59DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59DB8);
  }

  return result;
}

unint64_t sub_1909F8DF4()
{
  result = qword_1EAD59DF8;
  if (!qword_1EAD59DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59DD0);
    sub_1909F8EAC();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59DF8);
  }

  return result;
}

unint64_t sub_1909F8EAC()
{
  result = qword_1EAD59E00;
  if (!qword_1EAD59E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59DE8);
    sub_1909F8F94(&qword_1EAD45210, MEMORY[0x1E697C8D0]);
    sub_190233640(&qword_1EAD59E08, &qword_1EAD59DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59E00);
  }

  return result;
}

uint64_t sub_1909F8F94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1909F8FDC()
{
  result = qword_1EAD59E20;
  if (!qword_1EAD59E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59E18);
    sub_1909F9094();
    sub_190233640(&qword_1EAD557B0, &qword_1EAD557B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59E20);
  }

  return result;
}

unint64_t sub_1909F9094()
{
  result = qword_1EAD59E28;
  if (!qword_1EAD59E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59DD0);
    sub_190D54CB0();
    sub_1909F8DF4();
    sub_1909F8F94(&qword_1EAD59E10, MEMORY[0x1E697C688]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59E28);
  }

  return result;
}

id sub_1909F91AC(void *a1)
{
  v1 = a1;
  sub_1909F9214();

  v2 = sub_190D56ED0();

  return v2;
}

id sub_1909F9214()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [v0 transferGUID];
    if (!v3)
    {
      sub_190D56F10();
      v3 = sub_190D56ED0();
    }

    v4 = [v2 transferForGUID_];

    if (!v4)
    {
      if (qword_1EAD46248 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9D790);
      v12 = v0;
      v13 = sub_190D53020();
      v14 = sub_190D576A0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v45[0] = v16;
        *v15 = 136315138;
        v17 = [v12 transferGUID];
        v18 = sub_190D56F10();
        v20 = v19;

        v21 = sub_19021D9F8(v18, v20, v45);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_19020E000, v13, v14, "Could not find transfer for transfer guid: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x193AF7A40](v16, -1, -1);
        MEMORY[0x193AF7A40](v15, -1, -1);
      }

      v22 = [v12 transferGUID];
      v10 = sub_190D56F10();

      return v10;
    }

    v5 = [v4 stickerUserInfo];
    if (v5)
    {
      v6 = v5;
      v7 = sub_190D56D90();

      v44 = sub_190D56F10();
      sub_190D58230();
      if (*(v7 + 16) && (v8 = sub_190875C84(v45), (v9 & 1) != 0))
      {
        sub_19021834C(*(v7 + 56) + 32 * v8, v46);
        sub_19084CFD0(v45);

        if (swift_dynamicCast())
        {

          return v44;
        }
      }

      else
      {

        sub_19084CFD0(v45);
      }

      if (qword_1EAD46248 != -1)
      {
        swift_once();
      }

      v23 = sub_190D53040();
      __swift_project_value_buffer(v23, qword_1EAD9D790);
      v24 = v0;
      v25 = sub_190D53020();
      v26 = sub_190D576A0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v45[0] = v28;
        *v27 = 136315138;
        v29 = [v24 transferGUID];
        v30 = sub_190D56F10();
        v32 = v31;

        v33 = sub_19021D9F8(v30, v32, v45);

        *(v27 + 4) = v33;
        _os_log_impl(&dword_19020E000, v25, v26, "No value for IMStickerUserInfoStickerGUIDKey for transfer guid: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x193AF7A40](v28, -1, -1);
        MEMORY[0x193AF7A40](v27, -1, -1);
      }
    }

    else
    {
      if (qword_1EAD46248 != -1)
      {
        swift_once();
      }

      v34 = sub_190D53040();
      __swift_project_value_buffer(v34, qword_1EAD9D790);
      v24 = v0;
      v25 = sub_190D53020();
      v35 = sub_190D576A0();

      if (os_log_type_enabled(v25, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45[0] = v37;
        *v36 = 136315138;
        v38 = [v24 transferGUID];
        v39 = sub_190D56F10();
        v41 = v40;

        v42 = sub_19021D9F8(v39, v41, v45);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_19020E000, v25, v35, "Could not find stickerUserInfo for transfer guid: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x193AF7A40](v37, -1, -1);
        MEMORY[0x193AF7A40](v36, -1, -1);
      }
    }

    v43 = [v24 transferGUID];
    v10 = sub_190D56F10();

    return v10;
  }

  __break(1u);
  return result;
}

id sub_1909F988C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_contentView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_titleRowView;
  _s12TitleRowViewCMa();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView;
  *&v4[v12] = [objc_allocWithZone(CKProgressView) init];
  v4[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarValue] = 0;
  v13 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarColor;
  *&v4[v13] = [objc_opt_self() systemBlueColor];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TranscriptNavigationBarOrnamentView();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1909F9B68();

  return v14;
}

id sub_1909F9A08(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_contentView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_titleRowView;
  _s12TitleRowViewCMa();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView;
  *&v1[v6] = [objc_allocWithZone(CKProgressView) init];
  v1[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarValue] = 0;
  v7 = OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarColor;
  *&v1[v7] = [objc_opt_self() systemBlueColor];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TranscriptNavigationBarOrnamentView();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1909F9B68();
  }

  return v9;
}

id sub_1909F9B68()
{
  v1 = [v0 layer];
  [v1 setCornerCurve_];

  v2 = *&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_contentView];
  [v2 setClipsToBounds_];
  [v0 addSubview_];
  [v2 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel];
  if (qword_1EAD46898 != -1)
  {
    swift_once();
  }

  [v3 setTextColor_];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setNumberOfLines_];
  [v3 setTextAlignment_];
  [v3 setAdjustsFontForContentSizeCategory_];
  [v2 addSubview_];
  v5 = *&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView];
  [v5 setAlpha_];
  [v5 setCapStyle_];
  v6 = [objc_opt_self() clearColor];
  [v5 setTrackTintColor_];

  return [v2 addSubview_];
}

uint64_t sub_1909F9E5C()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for TranscriptNavigationBarOrnamentView();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v26 = v1;
  v4 = v3;
  sub_1909FA074(v28);
  if (v31)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v31)
  {
    v6 = 5.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = UIEdgeInsetsInsetRect(0.0, 0.0, v2, v4, v5, v5);
  v23 = v8;
  v24 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v30;
  [v29 ck:v9 constrainedSizeThatFits:v11];
  v15 = v14;
  v17 = v16;
  [v13 ck:v10 constrainedSizeThatFits:v12];
  v19 = v18;
  v25 = v20;
  v22 = (v10 - v18) * 0.5;
  [*&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_contentView] setFrame_];
  [*&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_titleRowView] setFrame_];
  [*&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel] setFrame_];
  [*&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView] setFrame_];
  sub_1909FA174();
  return sub_1909FB530(v28);
}

id sub_1909FA074@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_contentView);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_titleRowView);
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel);
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView);
  v6 = *(v1 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter);
  v7 = *&v3[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons];
  v15 = v5;
  if (v7 >> 62)
  {
    v14 = a1;
    v8 = sub_190D581C0();
    v5 = v15;
    a1 = v14;
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v3[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 33) = v8 != 0;
  *(a1 + 34) = v9;
  v10 = v2;
  v11 = v3;
  v12 = v4;

  return v15;
}

void sub_1909FA174()
{
  v1 = [*&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel] text];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [v0 layer];
    [v7 setCornerRadius_];

    v15 = [*&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_contentView] layer];
    v8 = [v0 layer];
    [v8 cornerRadius];
    v10 = v9;

    [v15 setCornerRadius_];
  }

  else
  {
LABEL_6:
    v11 = [v0 layer];
    [v0 bounds];
    [v11 setCornerRadius_];

    v13 = *&v0[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_contentView];
    v15 = [v13 layer];
    [v13 bounds];
    [v15 setCornerRadius_];
  }
}

id sub_1909FA360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptNavigationBarOrnamentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1909FA434(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59E88);
  sub_190D55FD0();
  swift_getKeyPath();
  v32 = v31;
  sub_1909FB41C();
  sub_190D51C20();

  v8 = *(v31 + 16);
  v7 = *(v31 + 24);
  sub_190D52690();

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = [objc_opt_self() labelColor];
  v11 = type metadata accessor for ConversationTitle();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title];
  *v13 = v8;
  v13[1] = v9;
  v12[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron] = 1;
  *&v12[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons] = MEMORY[0x1E69E7CC0];
  *&v12[OBJC_IVAR____TtC7ChatKit17ConversationTitle_color] = v10;
  v30.receiver = v12;
  v30.super_class = v11;
  v14 = objc_msgSendSuper2(&v30, sel_init);
  v15 = *&a1[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_titleRowView];
  v16 = *(v15 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle);
  *(v15 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle) = v14;
  v17 = v14;

  sub_190AFC538();
  sub_190D52690();
  v18 = sub_190D56ED0();

  [a1 setAccessibilityLabel_];

  [a1 setNeedsLayout];
  v32 = a3;
  v33 = a4;
  sub_190D55FD0();
  v19 = v31;
  swift_getKeyPath();
  v32 = v19;
  sub_190D51C20();

  v20 = *(v19 + 40);
  sub_190D52690();

  v21 = *&a1[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel];
  if (v20)
  {
    v22 = sub_190D56ED0();
  }

  else
  {
    v22 = 0;
  }

  [v21 setText_];

  [a1 setNeedsLayout];
  v32 = a3;
  v33 = a4;
  sub_190D55FD0();
  v23 = v31;
  swift_getKeyPath();
  v32 = v23;
  sub_190D51C20();

  v24 = *(v23 + 48);

  v25 = a1[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter];
  a1[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter] = v24;
  if (v24 != v25)
  {
    v26 = &selRef_ck_applyGlassBackground;
    if (!v24)
    {
      v26 = &selRef_ck_removeGlassBackground;
    }

    [a1 *v26];
  }

  v32 = a3;
  v33 = a4;
  sub_190D55FD0();
  v27 = v31;
  swift_getKeyPath();
  v32 = v27;
  sub_190D51C20();

  v28 = *(v27 + 49);

  *(v15 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron) = v28;
  [*(v15 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView) setHidden_];
  return [a1 setNeedsLayout];
}

uint64_t sub_1909FA828()
{
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  v1 = *(v0 + 16);
  sub_190D52690();
  return v1;
}

uint64_t sub_1909FA8A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1909FA924(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1909FB41C();
    sub_190D51C10();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1909FAA64()
{
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  v1 = *(v0 + 32);
  sub_190D52690();
  return v1;
}

uint64_t sub_1909FAAE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1909FAB60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1909FB41C();
    sub_190D51C10();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1909FACA0()
{
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  return *(v0 + 48);
}

uint64_t sub_1909FAD10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1909FADB0(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1909FB41C();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1909FAE98()
{
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  return *(v0 + 49);
}

uint64_t sub_1909FAF08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1909FB41C();
  sub_190D51C20();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1909FAFA8(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1909FB41C();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1909FB090()
{

  v1 = OBJC_IVAR____TtCV7ChatKit25ConversationNameTitleView13Configuration___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConversationNameTitleView.Configuration()
{
  result = qword_1EAD59E70;
  if (!qword_1EAD59E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1909FB190()
{
  result = sub_190D51C60();
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

id sub_1909FB248()
{
  type metadata accessor for TranscriptNavigationBarOrnamentView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_1909FB288(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_1909FB2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1909FB4BC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1909FB338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1909FB4BC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1909FB39C()
{
  sub_1909FB4BC();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_1909FB3C8()
{
  result = qword_1EAD59E80;
  if (!qword_1EAD59E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59E80);
  }

  return result;
}

unint64_t sub_1909FB41C()
{
  result = qword_1EAD5ABD0;
  if (!qword_1EAD5ABD0)
  {
    type metadata accessor for ConversationNameTitleView.Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ABD0);
  }

  return result;
}

uint64_t keypath_setTm_3(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_190D52690();
  return a5(v7, v6);
}

unint64_t sub_1909FB4BC()
{
  result = qword_1EAD59E90;
  if (!qword_1EAD59E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59E90);
  }

  return result;
}

id sub_1909FB584(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_titleRowView];
  v5 = *(v4 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle);
  *(v4 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle) = a1;
  v6 = a1;

  sub_190AFC538();
  if (a1)
  {
    sub_190D52690();
    v7 = sub_190D56ED0();
  }

  else
  {
    v7 = 0;
  }

  [v2 setAccessibilityLabel_];

  return [v2 setNeedsLayout];
}

void __swiftcall CKConversationListCollectionViewController.generateInternalMenuIfAllowed(conversations:)(UIMenu_optional *__return_ptr retstr, Swift::OpaquePointer conversations)
{
  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  if (!v4)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v4 isInternalInstall];

  if (!v6)
  {
    return;
  }

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = [v7 BOOLForKey_];

  if (v8)
  {
    return;
  }

  v30 = MEMORY[0x1E69E7CC0];
  if (conversations._rawValue >> 62)
  {
    if (sub_190D581C0())
    {
LABEL_6:
      v9 = [v3 sharedInstance];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 isInternalInstall];

        if (v11)
        {
          sub_1902188FC(0, &qword_1EAD464F0);
          v12 = sub_190D56ED0();
          v13 = [objc_opt_self() systemImageNamed_];

          v14 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v15 = swift_allocObject();
          v15[2]._rawValue = v14;
          v15[3]._rawValue = conversations._rawValue;
          sub_190D52690();
          v16 = sub_190D57DC0();
          MEMORY[0x193AF29E0](v16, v17, v18, v19, v20);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();

          v21 = v30;
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        v22 = sub_1909FBE98(conversations._rawValue);
        if (v22)
        {
          v23 = v22;
          MEMORY[0x193AF29E0](v23, v24, v25, v26, v27);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();

          v21 = v30;
        }

        goto LABEL_18;
      }

LABEL_25:
      __break(1u);
      return;
    }
  }

  else if (*((conversations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (v21 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_20;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:
    sub_1902188FC(0, &unk_1EAD44ED0);
    v28 = sub_190D56ED0();
    v29 = [objc_opt_self() systemImageNamed_];

    sub_190D57C90();
    return;
  }
}

void sub_1909FBAEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 window];

      if (v4)
      {
        v5 = [v4 windowScene];

        if (v5)
        {
          v6 = [v5 delegate];

          if (v6)
          {
            objc_opt_self();
            v7 = swift_dynamicCastObjCClass();
            if (!v7)
            {

              swift_unknownObjectRelease();
              return;
            }

            v8 = v7;
            sub_1902188FC(0, &qword_1EAD466B0);
            v9 = sub_190D57160();
            [v8 showInspectorViewForConversations_];
            swift_unknownObjectRelease();
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1909FBC48(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_21:
    v4 = sub_190D581C0();
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_green_chevronImage;
  do
  {
    v8 = v5;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v8, a2);
      }

      else
      {
        if (v8 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 chat];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    v12 = v11;
    v13 = [v11 v7[53]];

    v14 = sub_190D56F10();
    v21 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1908354D4(0, *(v6 + 2) + 1, 1, v6);
    }

    v17 = *(v6 + 2);
    v16 = *(v6 + 3);
    if (v17 >= v16 >> 1)
    {
      v6 = sub_1908354D4((v16 > 1), v17 + 1, 1, v6);
    }

    *(v6 + 2) = v17 + 1;
    v18 = &v6[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v21;
    v7 = &selRef_green_chevronImage;
  }

  while (v5 != v4);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_19085CD58();
  sub_190D56DF0();

  v19 = [objc_opt_self() generalPasteboard];
  v20 = sub_190D56ED0();

  [v19 setString_];
}

id sub_1909FBE98(unint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result isInternalInstall];

    if (!v4)
    {
      return 0;
    }

    if (a1 >> 62)
    {
      if (sub_190D581C0() != 1)
      {
        goto LABEL_12;
      }

      result = sub_190D581C0();
      if (!result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result != 1)
      {
        goto LABEL_12;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AF3B90](0, a1);
      goto LABEL_8;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
LABEL_8:
      v6 = v5;
      v7 = [v5 chat];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 guid];
        v10 = sub_190D56F10();
        v12 = v11;

        MEMORY[0x193AF28B0](v10, v12);

LABEL_13:
        sub_1902188FC(0, &qword_1EAD464F0);
        v14 = sub_190D56ED0();
        v15 = [objc_opt_self() systemImageNamed_];

        *(swift_allocObject() + 16) = a1;
        sub_190D52690();
        return sub_190D57DC0();
      }

LABEL_12:
      v13 = sub_190D58720();
      MEMORY[0x193AF28B0](v13);

      MEMORY[0x193AF28B0](0x734449554720, 0xE600000000000000);
      goto LABEL_13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1909FC164()
{
  v1 = v0;
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0x403E000000000000;
  *(v1 + 24) = 50000000;
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  sub_190D515B0();
  sub_190D51590();
  (*(v3 + 8))(v5, v2);
  v8 = OBJC_IVAR____TtC7ChatKit30ImagePlaygroundSuggestionStore_store;
  *(v1 + OBJC_IVAR____TtC7ChatKit30ImagePlaygroundSuggestionStore_store) = MEMORY[0x1E69E7CC0];
  sub_1909FC9E0();
  swift_beginAccess();
  result = sub_1909FE8F8((v1 + v8));
  v10 = *(*(v1 + v8) + 16);
  if (v10 < result)
  {
    __break(1u);
  }

  else
  {
    sub_190A0F0F8(result, v10);
    swift_endAccess();
    return v1;
  }

  return result;
}

uint64_t sub_1909FC320()
{
  v1 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7ChatKit30ImagePlaygroundSuggestionStore_store;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_190D58390();
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_1909FF22C(v9, v4, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
      sub_190D50920();
      sub_1909FF608(v4, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
      v9 += v10;
      --v7;
    }

    while (v7);

    return v11;
  }

  return result;
}

uint64_t sub_1909FC4B8()
{
  v1 = v0;
  sub_190D51320();
  swift_allocObject();
  sub_190D51310();
  sub_190D512F0();
  v2 = OBJC_IVAR____TtC7ChatKit30ImagePlaygroundSuggestionStore_store;
  swift_beginAccess();
  v20 = *(v0 + v2);
  sub_1909FF1B8();
  sub_190D52690();
  v3 = sub_190D51300();
  v5 = v4;

  sub_190D51690();
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D730);
  swift_retain_n();
  v7 = sub_190D53020();
  v8 = sub_190D57680();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v9 = 136315906;
    type metadata accessor for ImagePlaygroundSuggestionStore(0);
    v18 = v8;
    sub_190D50920();
    v10 = sub_190D56F50();
    v12 = sub_19021D9F8(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_19021D9F8(0x292865766173, 0xE600000000000000, &v20);
    *(v9 + 22) = 2048;
    v13 = *(*(v1 + v2) + 16);

    *(v9 + 24) = v13;

    *(v9 + 32) = 2080;
    sub_190D515F0();
    sub_1909FF11C(&qword_1EAD55F30, MEMORY[0x1E6968FB0]);
    v14 = sub_190D58720();
    v16 = sub_19021D9F8(v14, v15, &v20);

    *(v9 + 34) = v16;
    _os_log_impl(&dword_19020E000, v7, v18, "%s, %s successfully saved %ld suggestions to fileURL: %s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v19, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  else
  {
  }

  sub_19083B6D4(v3, v5);
}

void sub_1909FC9E0()
{
  v1 = v0;
  v63[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  sub_190D515D0();
  v4 = sub_190D56ED0();

  v5 = [v3 fileExistsAtPath_];

  if (v5)
  {
    v6 = [v2 defaultManager];
    sub_190D515D0();
    v7 = sub_190D56ED0();

    v62[0] = 0;
    v8 = [v6 attributesOfItemAtPath:v7 error:v62];

    v9 = v62[0];
    if (v8)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1909FF11C(&qword_1EAD53628, type metadata accessor for FileAttributeKey);
      v10 = sub_190D56D90();
      v11 = v9;

      if (*(v10 + 16) && (v12 = sub_1908789E0(*MEMORY[0x1E696A3B8]), (v13 & 1) != 0))
      {
        sub_19021834C(*(v10 + 56) + 32 * v12, v62);

        sub_19021DC70();
        if (swift_dynamicCast())
        {
          v14 = v63[0];
          if ([v63[0] integerValue] >= 50000001)
          {
            v15 = [v2 defaultManager];
            v16 = sub_190D51570();
            v62[0] = 0;
            v17 = [v15 removeItemAtURL:v16 error:v62];

            if (v17)
            {
              v18 = qword_1EAD46218;
              v19 = v62[0];
              if (v18 != -1)
              {
                swift_once();
              }

              v20 = sub_190D53040();
              __swift_project_value_buffer(v20, qword_1EAD9D730);
              v21 = v14;
              sub_190D50920();
              v22 = sub_190D53020();
              v23 = sub_190D57680();

              if (os_log_type_enabled(v22, v23))
              {
                v24 = swift_slowAlloc();
                v25 = swift_slowAlloc();
                v62[0] = v25;
                *v24 = 136315650;
                v63[0] = v1;
                type metadata accessor for ImagePlaygroundSuggestionStore(0);
                sub_190D50920();
                v26 = sub_190D56F50();
                v28 = sub_19021D9F8(v26, v27, v62);

                *(v24 + 4) = v28;
                *(v24 + 12) = 2080;
                *(v24 + 14) = sub_19021D9F8(0x292864616F6CLL, 0xE600000000000000, v62);
                *(v24 + 22) = 2048;
                v29 = [v21 integerValue];

                *(v24 + 24) = v29;
                _os_log_impl(&dword_19020E000, v22, v23, "%s, %s removed large suggestion store file with fileSize %ld", v24, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x193AF7A40](v25, -1, -1);
                MEMORY[0x193AF7A40](v24, -1, -1);
              }

              else
              {
              }

LABEL_25:

              return;
            }

            v58 = v62[0];
            v31 = sub_190D51420();

            swift_willThrow();
            goto LABEL_14;
          }
        }
      }

      else
      {
      }

LABEL_19:
      v43 = sub_190D51610();
      v45 = v44;
      sub_190D512E0();
      swift_allocObject();
      sub_190D512D0();
      sub_1909FF164();
      sub_190D512C0();
      v46 = v63[0];
      v47 = OBJC_IVAR____TtC7ChatKit30ImagePlaygroundSuggestionStore_store;
      swift_beginAccess();
      *&v1[v47] = v46;

      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v48 = sub_190D53040();
      __swift_project_value_buffer(v48, qword_1EAD9D730);
      swift_retain_n();
      v21 = sub_190D53020();
      v49 = sub_190D57680();
      if (os_log_type_enabled(v21, v49))
      {
        v50 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v63[0] = v61;
        *v50 = 136315906;
        type metadata accessor for ImagePlaygroundSuggestionStore(0);
        v59 = v49;
        sub_190D50920();
        v51 = sub_190D56F50();
        v53 = sub_19021D9F8(v51, v52, v63);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_19021D9F8(0x292864616F6CLL, 0xE600000000000000, v63);
        *(v50 + 22) = 2048;
        v54 = *(*&v1[v47] + 16);

        *(v50 + 24) = v54;

        *(v50 + 32) = 2080;
        sub_190D515F0();
        sub_1909FF11C(&qword_1EAD55F30, MEMORY[0x1E6968FB0]);
        v55 = sub_190D58720();
        v57 = sub_19021D9F8(v55, v56, v63);

        *(v50 + 34) = v57;
        _os_log_impl(&dword_19020E000, v21, v59, "%s, %s successfully loaded %ld suggestions to fileURL: %s", v50, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v61, -1, -1);
        MEMORY[0x193AF7A40](v50, -1, -1);
      }

      else
      {
      }

      sub_19083B6D4(v43, v45);
      goto LABEL_25;
    }

    v30 = v62[0];
    v31 = sub_190D51420();

    swift_willThrow();
LABEL_14:
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v32 = sub_190D53040();
    __swift_project_value_buffer(v32, qword_1EAD9D730);
    sub_190D50920();
    v33 = v31;
    v34 = sub_190D53020();
    v35 = sub_190D576A0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62[0] = v60;
      *v36 = 136315650;
      v63[0] = v1;
      type metadata accessor for ImagePlaygroundSuggestionStore(0);
      sub_190D50920();
      v38 = sub_190D56F50();
      v40 = sub_19021D9F8(v38, v39, v62);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_19021D9F8(0x292864616F6CLL, 0xE600000000000000, v62);
      *(v36 + 22) = 2112;
      v41 = v31;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 24) = v42;
      *v37 = v42;
      _os_log_impl(&dword_19020E000, v34, v35, "%s, %s failed to remove large file in suggestion store: %@", v36, 0x20u);
      sub_190830D58(v37);
      MEMORY[0x193AF7A40](v37, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v60, -1, -1);
      MEMORY[0x193AF7A40](v36, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t sub_1909FD528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_190D58760();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1909FD5C0(uint64_t a1)
{
  v2 = sub_1909FF668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1909FD5FC(uint64_t a1)
{
  v2 = sub_1909FF668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1909FD638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_190D51840();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59F70);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1909FF668();
  sub_190D588F0();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1909FF11C(&qword_1EAD59F80, MEMORY[0x1E6969530]);
    sub_190D58660();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1909FF5A4(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1909FD8C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59F58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1909FF550();
  sub_190D58900();
  v12 = 0;
  type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
  sub_1909FF11C(&qword_1EAD59F60, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata);
  sub_190D586E0();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0) + 20));
    v10[15] = 1;
    _s10SuggestionCMa(0);
    sub_1909FF11C(&qword_1EAD59F68, _s10SuggestionCMa);
    sub_190D586E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1909FDAC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59F38);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1909FF550();
  sub_190D588F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_1909FF11C(&qword_1EAD59F48, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata);
  v14 = v19;
  sub_190D58660();
  sub_1909FF5A4(v20, v12);
  _s10SuggestionCMa(0);
  v22 = 1;
  sub_1909FF11C(&qword_1EAD59F50, _s10SuggestionCMa);
  sub_190D58660();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_1909FF22C(v12, v17, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1909FF608(v12, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
}

uint64_t sub_1909FDE08(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59ED8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1909FF00C();
  sub_190D58900();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59EC0);
  sub_1909FF080(&qword_1EAD59EE0, &qword_1EAD59EE8);
  sub_190D586E0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1909FDFB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59F88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1909FF668();
  sub_190D58900();
  sub_190D51840();
  sub_1909FF11C(&qword_1EAD59F90, MEMORY[0x1E6969530]);
  sub_190D586E0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1909FE12C()
{
  if (*v0)
  {
    return 0x6974736567677573;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1909FE16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_190D58760() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_190D58760();

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

uint64_t sub_1909FE25C(uint64_t a1)
{
  v2 = sub_1909FF550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1909FE298(uint64_t a1)
{
  v2 = sub_1909FF550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1909FE324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_190D58760();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1909FE3B0(uint64_t a1)
{
  v2 = sub_1909FF00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1909FE3EC(uint64_t a1)
{
  v2 = sub_1909FF00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1909FE428@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1909FEE50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1909FE470()
{
  v1 = OBJC_IVAR____TtC7ChatKit30ImagePlaygroundSuggestionStore_fileURL;
  v2 = sub_190D515F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1909FE544()
{
  result = sub_190D515F0();
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

uint64_t sub_1909FE600(uint64_t a1)
{
  v3 = sub_190D51840();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = v13 == 0;
  v26 = v13;
  if (!v13)
  {
    return 0;
  }

  v23[1] = v1;
  v15 = (v4 + 8);
  v16 = 0;
  v17 = *(type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0) - 8);
  v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = *(v17 + 72);
  while (1)
  {
    v25 = v14;
    sub_1909FF22C(v18, v12, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata);
    sub_190D51830();
    sub_190D51770();
    v19 = *v15;
    (*v15)(v6, v3);
    v20 = sub_190D517A0();
    v19(v9, v3);
    v19(v12, v3);
    if (v20)
    {
      break;
    }

    sub_1909FF22C(v18, v12, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata);
    sub_190D51830();
    sub_190D51770();
    v19(v6, v3);
    v21 = sub_190D51790();
    v19(v9, v3);
    v19(v12, v3);
    if (v21)
    {
      break;
    }

    ++v16;
    v18 += v24;
    v14 = v26 == v16;
    if (v26 == v16)
    {
      return 0;
    }
  }

  return v16;
}

uint64_t sub_1909FE8F8(void **a1)
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v22 = a1;
  v23 = *a1;
  v24 = v69;
  result = sub_1909FE600(v23);
  if (v24)
  {
    return result;
  }

  v58 = v21;
  v59 = v11;
  v57 = 0;
  if (v26)
  {
    return v23[2];
  }

  v55 = v15;
  v56 = v18;
  v62 = v8;
  v60 = result;
  v27 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  v29 = v23 + 2;
  v28 = v23[2];
  v30 = v59;
  if (v27 == v28)
  {
    return v60;
  }

  v31 = (v68 + 1);
  v32 = v58;
  v53 = (v68 + 1);
  v54 = v22;
  v61 = v13;
  while (v27 < v28)
  {
    v34 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v68 = v23;
    v63 = v34;
    v65 = *(v13 + 72);
    v66 = v23 + v34;
    v69 = v27;
    v64 = v65 * v27;
    sub_1909FF22C(v23 + v34 + v65 * v27, v32, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
    sub_1909FF22C(v32, v30, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata);
    sub_190D51830();
    v35 = v30;
    v36 = v62;
    sub_190D51770();
    v37 = v32;
    v38 = *v31;
    v39 = v67;
    (*v31)(v5, v67);
    v40 = sub_190D517A0();
    v38(v36, v39);
    v38(v35, v39);
    if (v40)
    {
      result = sub_1909FF608(v37, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
      v13 = v61;
      v32 = v37;
      v30 = v35;
      v23 = v68;
LABEL_10:
      v33 = v69;
      goto LABEL_11;
    }

    v41 = v37;
    sub_1909FF22C(v37, v35, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata);
    sub_190D51830();
    sub_190D51770();
    v42 = v5;
    v38(v5, v39);
    v43 = sub_190D51790();
    v38(v36, v39);
    v38(v35, v39);
    result = sub_1909FF608(v41, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
    v32 = v41;
    v30 = v35;
    if (v43)
    {
      v13 = v61;
      v23 = v68;
      v5 = v42;
      goto LABEL_10;
    }

    v44 = v60;
    v33 = v69;
    v23 = v68;
    if (v69 == v60)
    {
      v13 = v61;
      v5 = v42;
    }

    else
    {
      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v45 = *v29;
      if (v60 >= *v29)
      {
        goto LABEL_28;
      }

      v5 = v42;
      v46 = v66;
      v47 = v65 * v60;
      v48 = v56;
      result = sub_1909FF22C(&v66[v65 * v60], v56, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
      if (v33 >= v45)
      {
        goto LABEL_29;
      }

      v49 = v64;
      v50 = &v46[v64];
      v51 = v55;
      sub_1909FF22C(v50, v55, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_190A5BC4C(v23);
      }

      v13 = v61;
      v52 = v23 + v63;
      result = sub_1909FF294(v51, v23 + v63 + v47);
      if (v69 >= v23[2])
      {
        goto LABEL_30;
      }

      result = sub_1909FF294(v48, &v52[v49]);
      v31 = v53;
      *v54 = v23;
      v30 = v59;
      v44 = v60;
      v32 = v58;
      v33 = v69;
    }

    v60 = v44 + 1;
LABEL_11:
    v27 = v33 + 1;
    v29 = v23 + 2;
    v28 = v23[2];
    if (v27 == v28)
    {
      return v60;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}