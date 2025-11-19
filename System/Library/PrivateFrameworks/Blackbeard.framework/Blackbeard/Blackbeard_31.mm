uint64_t sub_1E61A9168(uint64_t a1)
{
  v2 = sub_1E61A9AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A91A4(uint64_t a1)
{
  v2 = sub_1E61A9AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A91E0(uint64_t a1)
{
  v2 = sub_1E61A9A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A921C(uint64_t a1)
{
  v2 = sub_1E61A9A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A9258(uint64_t a1)
{
  v2 = sub_1E61A99FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A9294(uint64_t a1)
{
  v2 = sub_1E61A99FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A92D0(uint64_t a1)
{
  v2 = sub_1E61A99A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A930C(uint64_t a1)
{
  v2 = sub_1E61A99A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A9348(uint64_t a1)
{
  v2 = sub_1E61A9954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A9384(uint64_t a1)
{
  v2 = sub_1E61A9954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkOverlayTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076118, &qword_1E65F4B00);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076120, &qword_1E65F4B08);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076128, &qword_1E65F4B10);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076130, &qword_1E65F4B18);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076138, &qword_1E65F4B20);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076140, &qword_1E65F4B28);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1E61A9900();
  sub_1E65E6DA8();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_1E61A9A50();
      v38 = v52;
      sub_1E65E6B18();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_1E61A9AA4();
      v38 = v52;
      sub_1E65E6B18();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1E61A99FC();
      v29 = v40;
      v30 = v52;
      sub_1E65E6B18();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_1E61A99A8();
      v29 = v43;
      v30 = v52;
      sub_1E65E6B18();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1E61A9954();
      v29 = v46;
      v30 = v52;
      sub_1E65E6B18();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_1E61A9900()
{
  result = qword_1ED076148;
  if (!qword_1ED076148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076148);
  }

  return result;
}

unint64_t sub_1E61A9954()
{
  result = qword_1ED076150;
  if (!qword_1ED076150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076150);
  }

  return result;
}

unint64_t sub_1E61A99A8()
{
  result = qword_1ED076158;
  if (!qword_1ED076158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076158);
  }

  return result;
}

unint64_t sub_1E61A99FC()
{
  result = qword_1ED076160;
  if (!qword_1ED076160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076160);
  }

  return result;
}

unint64_t sub_1E61A9A50()
{
  result = qword_1ED076168;
  if (!qword_1ED076168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076168);
  }

  return result;
}

unint64_t sub_1E61A9AA4()
{
  result = qword_1ED076170;
  if (!qword_1ED076170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076170);
  }

  return result;
}

uint64_t ArtworkOverlayTag.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076178, &qword_1E65F4B30);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076180, &qword_1E65F4B38);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076188, &qword_1E65F4B40);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076190, &qword_1E65F4B48);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076198, &qword_1E65F4B50);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0761A0, &unk_1E65F4B58);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1E61A9900();
  v26 = v69;
  sub_1E65E6D98();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_1E65E6AF8();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_1E5FBE3EC();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_1E65E68F8();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v41 = &type metadata for ArtworkOverlayTag;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_1E61A9A50();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_1E65E6A68();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_1E61A9AA4();
      v45 = v54;
      sub_1E65E6A68();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_1E61A99FC();
    v46 = v31;
    v47 = v54;
    sub_1E65E6A68();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_1E61A9954();
    v49 = v64;
    v50 = v54;
    sub_1E65E6A68();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_1E61A99A8();
  v38 = v54;
  sub_1E65E6A68();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t ArtworkOverlayTag.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E61AA40C()
{
  result = qword_1ED0761A8;
  if (!qword_1ED0761A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761A8);
  }

  return result;
}

unint64_t sub_1E61AA464()
{
  result = qword_1ED0761B0;
  if (!qword_1ED0761B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761B0);
  }

  return result;
}

unint64_t sub_1E61AA4BC()
{
  result = qword_1ED0761B8;
  if (!qword_1ED0761B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761B8);
  }

  return result;
}

unint64_t sub_1E61AA514()
{
  result = qword_1ED0761C0;
  if (!qword_1ED0761C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761C0);
  }

  return result;
}

unint64_t sub_1E61AA56C()
{
  result = qword_1ED0761C8;
  if (!qword_1ED0761C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761C8);
  }

  return result;
}

unint64_t sub_1E61AA5C4()
{
  result = qword_1ED0761D0;
  if (!qword_1ED0761D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761D0);
  }

  return result;
}

unint64_t sub_1E61AA61C()
{
  result = qword_1ED0761D8;
  if (!qword_1ED0761D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761D8);
  }

  return result;
}

unint64_t sub_1E61AA674()
{
  result = qword_1ED0761E0;
  if (!qword_1ED0761E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761E0);
  }

  return result;
}

unint64_t sub_1E61AA6CC()
{
  result = qword_1ED0761E8;
  if (!qword_1ED0761E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761E8);
  }

  return result;
}

unint64_t sub_1E61AA724()
{
  result = qword_1ED0761F0;
  if (!qword_1ED0761F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761F0);
  }

  return result;
}

unint64_t sub_1E61AA77C()
{
  result = qword_1ED0761F8;
  if (!qword_1ED0761F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761F8);
  }

  return result;
}

unint64_t sub_1E61AA7D4()
{
  result = qword_1ED076200;
  if (!qword_1ED076200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076200);
  }

  return result;
}

unint64_t sub_1E61AA82C()
{
  result = qword_1ED076208;
  if (!qword_1ED076208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076208);
  }

  return result;
}

uint64_t sub_1E61AA880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E65636572 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

id sub_1E61AAA48(void *a1)
{
  v21 = a1;
  v2 = sub_1E65D7848();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E65E5C28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 6;
  if (v7 >> 6 > 1)
  {
    if (v8 == 2)
    {
      [v21 setModalPresentationStyle_];
      v9 = [v21 popoverPresentationController];
      if (v9)
      {
        v10 = v9;
        [v9 setSourceView_];
      }
    }

    else if (__PAIR128__(-64, 1) >= __PAIR128__(v7, v6))
    {
      if (v6 | v7 ^ 0xC0)
      {
        v15 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
        [v15 setContentViewController_];
        sub_1E65E5BA8();
        type metadata accessor for LocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v17 = [objc_opt_self() bundleForClass_];
        sub_1E65D77C8();
        sub_1E65E5D48();
        v18 = sub_1E65E5C48();

        v19 = [objc_opt_self() actionWithTitle:v18 style:0 handler:0];

        [v15 addAction_];
        return v15;
      }
    }

    else if (v7 == 192 && v6 == 2)
    {
      [v21 setModalPresentationStyle_];
    }

    else if (v7 == 192 && v6 == 3)
    {
      [v21 setModalPresentationStyle_];
    }

    else
    {
      [v21 setModalPresentationStyle_];
    }
  }

  else if (v8)
  {
    [v21 setModalPresentationStyle_];
    if ((v7 & 1) == 0)
    {
      v11 = [v21 sheetPresentationController];
      if (v11)
      {
        v12 = v11;
        sub_1E65E6488();
      }
    }
  }

  else
  {
    [v21 setModalPresentationStyle_];
    [v21 setModalInPresentation_];
  }

  return v21;
}

uint64_t RoutingContextPresentationStyle.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x1E694E740](7);
      return sub_1E65E65B8();
    }

    else
    {
      if (__PAIR128__(-64, 1) >= __PAIR128__(v2, v1))
      {
        v8 = (v1 | *(v0 + 8) ^ 0xC0) != 0;
      }

      else if (*(v0 + 8) == 192 && v1 == 2)
      {
        v8 = 3;
      }

      else if (*(v0 + 8) == 192 && v1 == 3)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }

      return MEMORY[0x1E694E740](v8);
    }
  }

  else if (v3)
  {
    MEMORY[0x1E694E740](6);
    if (v2)
    {
      return sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v1;
      }

      else
      {
        v7 = 0;
      }

      return MEMORY[0x1E694E770](v7);
    }
  }

  else
  {
    MEMORY[0x1E694E740](2);
    return sub_1E65E6D48();
  }
}

uint64_t RoutingContextPresentationStyle.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1E65E6D28();
  RoutingContextPresentationStyle.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E61AAF08()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1E65E6D28();
  RoutingContextPresentationStyle.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E61AAF60()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1E65E6D28();
  RoutingContextPresentationStyle.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v6 == 2)
    {
      if ((v5 & 0xC0) == 0x80)
      {
        sub_1E61AB3BC();
        sub_1E5FA9D20(*&v4, v5);
        sub_1E5FA9D20(*&v2, v3);
        v8 = sub_1E65E65A8();
        sub_1E5F94E00(*&v2, v3);
        sub_1E5F94E00(*&v4, v5);
        return v8 & 1;
      }

      v13 = *&v2;
      goto LABEL_27;
    }

    if (__PAIR128__(-64, 1) >= __PAIR128__(v3, *&v2))
    {
      if (*&v2 | *(a1 + 8) ^ 0xC0)
      {
        if (v5 >= 0xC0 && *&v4 == 1 && v5 == 192)
        {
          sub_1E5F94E00(*a1, v3);
          v7 = 1;
          sub_1E5F94E00(1, 192);
          return v7 & 1;
        }

        goto LABEL_27;
      }

      if (v5 < 0xC0 || v4 != 0.0 || v5 != 192)
      {
LABEL_27:
        sub_1E5FA9D20(*&v4, v5);
        sub_1E5F94E00(*&v2, v3);
        sub_1E5F94E00(*&v4, v5);
        goto LABEL_28;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 0;
    }

    else if (*(a1 + 8) == 192 && *&v2 == 2)
    {
      if (v5 < 0xC0 || *&v4 != 2 || v5 != 192)
      {
        goto LABEL_27;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 2;
    }

    else if (*(a1 + 8) == 192 && *&v2 == 3)
    {
      if (v5 < 0xC0 || *&v4 != 3 || v5 != 192)
      {
        goto LABEL_27;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 3;
    }

    else
    {
      if (v5 < 0xC0 || *&v4 != 4 || v5 != 192)
      {
        goto LABEL_27;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 4;
    }

    sub_1E5F94E00(v12, 192);
    v7 = 1;
    return v7 & 1;
  }

  if (v6)
  {
    if ((v5 & 0xC0) == 0x40)
    {
      sub_1E5F94E00(*a1, v3);
      sub_1E5F94E00(*&v4, v5);
      if (v3)
      {
        if ((v5 & 1) == 0)
        {
LABEL_28:
          v7 = 0;
          return v7 & 1;
        }
      }

      else if ((v5 & 1) != 0 || v2 != v4)
      {
        goto LABEL_28;
      }

      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_27;
  }

  if (v5 >= 0x40)
  {
    goto LABEL_27;
  }

  sub_1E5F94E00(*a1, v3);
  sub_1E5F94E00(*&v4, v5);
  v7 = LOBYTE(v4) ^ LOBYTE(v2) ^ 1;
  return v7 & 1;
}

unint64_t sub_1E61AB244()
{
  result = qword_1ED076210;
  if (!qword_1ED076210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076210);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard31RoutingContextPresentationStyleO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E61AB2C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E61AB31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
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

uint64_t sub_1E61AB380(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

unint64_t sub_1E61AB3BC()
{
  result = qword_1ED076218;
  if (!qword_1ED076218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED076218);
  }

  return result;
}

uint64_t type metadata accessor for BrowsePage()
{
  result = qword_1EE2DBCF0;
  if (!qword_1EE2DBCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E61AB454()
{
  sub_1E5DEF56C();
  if (v0 <= 0x3F)
  {
    sub_1E5DF1414(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void RouteResource.hash(into:)(__int128 *a1)
{
  v393 = a1;
  v378 = sub_1E65D9048();
  v376 = *(v378 - 8);
  v1 = *(v376 + 64);
  MEMORY[0x1EEE9AC00](v378);
  v374 = &v313 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = sub_1E65E58D8();
  v375 = *(v377 - 8);
  v3 = *(v375 + 64);
  MEMORY[0x1EEE9AC00](v377);
  v373 = &v313 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = sub_1E65DA308();
  v370 = *(v372 - 8);
  v5 = *(v370 + 64);
  MEMORY[0x1EEE9AC00](v372);
  v366 = &v313 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = sub_1E65E56B8();
  v368 = *(v371 - 8);
  v7 = *(v368 + 64);
  MEMORY[0x1EEE9AC00](v371);
  v365 = &v313 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = sub_1E65D7EB8();
  v361 = *(v363 - 8);
  v9 = *(v361 + 64);
  MEMORY[0x1EEE9AC00](v363);
  v360 = &v313 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_1E65E55E8();
  v358 = *(v359 - 8);
  v11 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v359);
  v357 = &v313 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_1E65DAEB8();
  v318 = *(v319 - 8);
  v13 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v317 = &v313 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = type metadata accessor for PlaylistType();
  v15 = *(*(v346 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v346);
  v348 = (&v313 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v356 = &v313 - v18;
  v19 = sub_1E65E52B8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v345 = &v313 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_1E65E5528();
  v354 = *(v355 - 8);
  v22 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v355);
  v352 = &v313 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = sub_1E65E57D8();
  v350 = *(v351 - 8);
  v24 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v351);
  v384 = &v313 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = sub_1E65D7A38();
  v379 = *(v380 - 8);
  v26 = *(v379 + 64);
  MEMORY[0x1EEE9AC00](v380);
  v321 = &v313 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_1E65DB5D8();
  v364 = *(v367 - 8);
  v28 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v367);
  v320 = &v313 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_1E65DB3E8();
  v347 = *(v349 - 8);
  v30 = *(v347 + 64);
  MEMORY[0x1EEE9AC00](v349);
  v316 = &v313 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v362 = &v313 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v369 = &v313 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v353 = &v313 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v388 = &v313 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v344 = &v313 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v387 = &v313 - v46;
  v343 = sub_1E65D96F8();
  v342 = *(v343 - 8);
  v47 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v343);
  v315 = &v313 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v340 = &v313 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v341 = &v313 - v53;
  v333 = sub_1E65DB718();
  v332 = *(v333 - 8);
  v54 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v333);
  v330 = &v313 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E65D74E8();
  v57 = *(v56 - 8);
  v391 = v56;
  v392 = v57;
  v58 = *(v57 + 64);
  v59 = MEMORY[0x1EEE9AC00](v56);
  v385 = &v313 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v337 = &v313 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v336 = &v313 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v386 = &v313 - v65;
  v335 = sub_1E65E1518();
  v334 = *(v335 - 8);
  v66 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v331 = &v313 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1E65DB848();
  v389 = *(v68 - 8);
  v390 = v68;
  v69 = *(v389 + 64);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v329 = &v313 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v328 = &v313 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v383 = &v313 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v326 = &v313 - v76;
  v77 = sub_1E65E0B48();
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77 - 8);
  v80 = &v313 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_1E65D72D8();
  v322 = *(v323 - 8);
  v81 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](v323);
  v83 = &v313 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_1E65E1FC8();
  v338 = *(v339 - 8);
  v84 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v339);
  v314 = &v313 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_1E65E2CF8();
  v325 = *(v327 - 8);
  v86 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v327);
  v313 = &v313 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E65D76F8();
  v381 = *(v88 - 8);
  v89 = *(v381 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v313 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v93 = *(*(v92 - 8) + 64);
  v94 = MEMORY[0x1EEE9AC00](v92 - 8);
  v324 = &v313 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v313 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v99 = *(*(v98 - 8) + 64);
  v100 = MEMORY[0x1EEE9AC00](v98 - 8);
  v102 = &v313 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v313 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v106 = *(*(v105 - 8) + 64);
  v107 = MEMORY[0x1EEE9AC00](v105 - 8);
  v109 = &v313 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107);
  v382 = &v313 - v110;
  v111 = type metadata accessor for RouteResource();
  v112 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v313 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61B7384(v394, v114, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v181 = &v114[v180[12]];
      v183 = *v181;
      v182 = *(v181 + 1);
      v389 = v183;
      v390 = v182;
      v184 = v180[16];
      v391 = *&v114[v180[20]];
      v185 = v180[24];
      LODWORD(v392) = v114[v180[28]];
      v186 = &v114[v180[32]];
      v388 = *v186;
      LODWORD(v394) = v186[8];
      v187 = v382;
      sub_1E5FAB460(v114, v382, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5FAB460(&v114[v184], v104, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5FAB460(&v114[v185], v97, &unk_1ED077750, &unk_1E66011C0);
      v188 = v393;
      MEMORY[0x1E694E740](3);
      sub_1E5DFD1CC(v187, v109, &unk_1ED077760, &unk_1E66011D0);
      v189 = v381;
      if ((*(v381 + 48))(v109, 1, v88) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        (*(v189 + 32))(v91, v109, v88);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
        sub_1E65E5B48();
        (*(v189 + 8))(v91, v88);
      }

      v285 = v339;
      v286 = v338;
      v287 = v327;
      v288 = v325;
      if (v390)
      {
        sub_1E65E6D48();
        sub_1E65E5D78();
      }

      else
      {
        sub_1E65E6D48();
      }

      sub_1E5DFD1CC(v104, v102, &qword_1ED072B60, &unk_1E65FA490);
      if ((*(v288 + 48))(v102, 1, v287) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v289 = v313;
        (*(v288 + 32))(v313, v102, v287);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076298, MEMORY[0x1E699F5D8]);
        sub_1E65E5B48();
        (*(v288 + 8))(v289, v287);
      }

      v290 = v324;
      sub_1E61B0084(v188, v391);

      sub_1E5DFD1CC(v97, v290, &unk_1ED077750, &unk_1E66011C0);
      if ((*(v286 + 48))(v290, 1, v285) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v291 = v314;
        (*(v286 + 32))(v314, v290, v285);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED0762A0, MEMORY[0x1E699F198]);
        sub_1E65E5B48();
        (*(v286 + 8))(v291, v285);
      }

      v292 = v394;
      v293 = sub_1E65E2938();
      MEMORY[0x1E694E740](v293);
      sub_1E65E6D48();
      if (!v292)
      {
        MEMORY[0x1E694E740](v388);
      }

      sub_1E5DFE50C(v97, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v104, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v382, &unk_1ED077760, &unk_1E66011D0);
      return;
    case 2u:
      v162 = *v114;
      v163 = *(v114 + 1);
      v117 = 4;
      goto LABEL_40;
    case 3u:
      v166 = *v114;
      v167 = *(v114 + 1);
      v168 = v114[16];
      v169 = v114[17];
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v171 = v322;
      v172 = v323;
      (*(v322 + 32))(v83, &v114[*(v170 + 80)], v323);
      MEMORY[0x1E694E740](5);
      sub_1E65E5D78();

      sub_1E65E03C8();
      sub_1E65E5D78();

      sub_1E65DFB58();
      sub_1E65E5D78();

      sub_1E61B7730(&qword_1ED0734B0, MEMORY[0x1E6968848]);
      sub_1E65E5B48();
      (*(v171 + 8))(v83, v172);
      return;
    case 4u:
      v139 = &v114[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48)];
      v140 = *v139;
      v141 = *(v139 + 1);
      sub_1E61B7400(v114, v80, MEMORY[0x1E699DD40]);
      MEMORY[0x1E694E740](6);
      sub_1E65E0B38();
      sub_1E65E5D78();

      sub_1E61B76D0(v80, MEMORY[0x1E699DD40]);
      return;
    case 5u:
      v203 = *v114;
      MEMORY[0x1E694E740](9);
      sub_1E65DF568();
      sub_1E65E5D78();

      return;
    case 6u:
      v215 = *v114;
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v217 = *(v216 + 64);
      v219 = v389;
      v218 = v390;
      v220 = v326;
      (*(v389 + 32))(v326, &v114[*(v216 + 48)], v390);
      v221 = v334;
      v222 = v331;
      v223 = v335;
      (*(v334 + 32))(v331, &v114[v217], v335);
      MEMORY[0x1E694E740](10);
      sub_1E65E6D48();
      if (v215)
      {
        v215 = v215;
        sub_1E65E65B8();
      }

      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1EE2D64F0, MEMORY[0x1E699E860]);
      sub_1E65E5B48();

      (*(v221 + 8))(v222, v223);
      (*(v219 + 8))(v220, v218);
      return;
    case 7u:
      v173 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290) + 48);
      v175 = v389;
      v174 = v390;
      v176 = v383;
      (*(v389 + 32))(v383, v114, v390);
      v177 = v391;
      v178 = v392;
      v179 = v386;
      (*(v392 + 32))(v386, &v114[v173], v391);
      MEMORY[0x1E694E740](11);
      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
      sub_1E65E5B48();
      (*(v178 + 8))(v179, v177);
      (*(v175 + 8))(v176, v174);
      return;
    case 8u:
      v146 = *v114;
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v231 = *(v230 + 64);
      v150 = v389;
      v149 = v390;
      v151 = v328;
      (*(v389 + 32))(v328, &v114[*(v230 + 48)], v390);
      v152 = v391;
      v153 = v392;
      v154 = v336;
      (*(v392 + 32))(v336, &v114[v231], v391);
      v155 = 12;
      goto LABEL_42;
    case 9u:
      v146 = *v114;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v148 = *(v147 + 64);
      v150 = v389;
      v149 = v390;
      v151 = v329;
      (*(v389 + 32))(v329, &v114[*(v147 + 48)], v390);
      v152 = v391;
      v153 = v392;
      v154 = v337;
      (*(v392 + 32))(v337, &v114[v148], v391);
      v155 = 13;
LABEL_42:
      MEMORY[0x1E694E740](v155);
      sub_1E65E6D48();
      if (v146)
      {
        v146 = v146;
        sub_1E65E65B8();
      }

      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
      sub_1E65E5B48();

      (*(v153 + 8))(v154, v152);
      (*(v150 + 8))(v151, v149);
      return;
    case 0xAu:
      v228 = *v114;
      v229 = *(v114 + 1);
      v117 = 14;
      goto LABEL_40;
    case 0xBu:
      v137 = *v114;
      v138 = *(v114 + 1);
      v117 = 15;
      goto LABEL_40;
    case 0xCu:
      v142 = *v114;
      v143 = *(v114 + 1);
      v144 = *(v114 + 2);
      v145 = v114[24];
      MEMORY[0x1E694E740](16);
      sub_1E65E5D78();

      *&v395 = v144;
      BYTE8(v395) = v145;
      RoutingContextPresentationStyle.hash(into:)();
      sub_1E5F94E00(v144, v145);
      return;
    case 0xDu:
      v213 = *v114;
      v214 = *(v114 + 1);
      v117 = 17;
      goto LABEL_40;
    case 0xEu:
      v126 = v332;
      v127 = v330;
      v128 = v333;
      (*(v332 + 32))(v330, v114, v333);
      MEMORY[0x1E694E740](21);
      v129 = &unk_1ED076290;
      v130 = MEMORY[0x1E69CD5A8];
      goto LABEL_52;
    case 0xFu:
      v164 = *v114;
      v165 = *(v114 + 1);
      v117 = 22;
      goto LABEL_40;
    case 0x10u:
      v124 = *v114;
      v125 = *(v114 + 1);
      v117 = 24;
      goto LABEL_40;
    case 0x11u:
      v192 = *v114;
      v193 = *(v114 + 1);
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0);
      v159 = v391;
      v160 = v392;
      v161 = v386;
      (*(v392 + 32))(v386, &v114[*(v194 + 48)], v391);
      MEMORY[0x1E694E740](26);
      sub_1E65E5D78();

      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
      sub_1E65E5B48();
      goto LABEL_28;
    case 0x12u:
      v224 = *v114;
      v225 = *(v114 + 1);
      v226 = v114[16];
      v227 = v393;
      MEMORY[0x1E694E740](27);
      *&v395 = v224;
      *(&v395 + 1) = v225;
      LOBYTE(v396) = v226;
      QueuedSessionType.hash(into:)(v227);
      sub_1E5F94E14();
      return;
    case 0x13u:
      v128 = v391;
      v126 = v392;
      v127 = v386;
      (*(v392 + 32))(v386, v114, v391);
      MEMORY[0x1E694E740](28);
      v129 = &qword_1ED073F58;
      v130 = MEMORY[0x1E6968FB0];
LABEL_52:
      sub_1E61B7730(v129, v130);
      sub_1E65E5B48();
      (*(v126 + 8))(v127, v128);
      return;
    case 0x14u:
      v196 = *v114;
      v195 = *(v114 + 1);
      v198 = *(v114 + 2);
      v197 = *(v114 + 3);
      v199 = *(v114 + 4);
      v200 = v114[40];
      v201 = *(v114 + 6);
      v202 = *(v114 + 7);
      MEMORY[0x1E694E740](29);
      sub_1E65E6D48();
      if (v195)
      {
        sub_1E65E5D78();
      }

      sub_1E65E5D78();

      MEMORY[0x1E694E740](v199);
      sub_1E65D89A8();
      sub_1E65E5D78();

      v294 = 0.0;
      if (v201 != 0.0)
      {
        v294 = v201;
      }

      MEMORY[0x1E694E770](*&v294);
      sub_1E65E65B8();

      return;
    case 0x15u:
      v205 = *v114;
      v204 = *(v114 + 1);
      v207 = *(v114 + 2);
      v206 = *(v114 + 3);
      v208 = *(v114 + 4);
      v209 = v114[40];
      v210 = *(v114 + 6);
      v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      v212 = v341;
      sub_1E5FAB460(&v114[*(v211 + 112)], v341, &unk_1ED077780, &unk_1E66097F0);
      MEMORY[0x1E694E740](30);
      sub_1E65E6D48();
      if (v204)
      {
        sub_1E65E5D78();
      }

      v295 = v343;
      v296 = v342;
      v297 = v340;
      sub_1E65E5D78();

      MEMORY[0x1E694E740](v208);
      sub_1E65D89A8();
      sub_1E65E5D78();

      v298 = 0.0;
      if (v210 != 0.0)
      {
        v298 = v210;
      }

      MEMORY[0x1E694E770](*&v298);
      sub_1E5DFD1CC(v212, v297, &unk_1ED077780, &unk_1E66097F0);
      if ((*(v296 + 48))(v297, 1, v295) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v299 = v315;
        (*(v296 + 32))(v315, v297, v295);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED074190, MEMORY[0x1E69CC278]);
        sub_1E65E5B48();
        (*(v296 + 8))(v299, v295);
      }

      sub_1E5DFE50C(v212, &unk_1ED077780, &unk_1E66097F0);
      return;
    case 0x16u:
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v247 = v246[12];
      v248 = &v114[v246[16]];
      v250 = *v248;
      v249 = *(v248 + 1);
      v251 = v246[20];
      v252 = &v114[v246[24]];
      v253 = v252[1];
      v390 = *v252;
      v254 = &v114[v246[28]];
      v255 = v254[1];
      v394 = *v254;
      v256 = v246[32];
      v257 = v246[36];
      v258 = *(v114 + 1);
      v395 = *v114;
      v396 = v258;
      v397 = *(v114 + 4);
      v259 = v391;
      (*(v392 + 32))(v385, &v114[v247], v391);
      sub_1E5FAB460(&v114[v251], v387, &qword_1ED076220, &unk_1E65FA4A0);
      sub_1E5FAB460(&v114[v256], v388, &unk_1ED077770, &unk_1E660C190);
      v260 = &v114[v257];
      v261 = v369;
      sub_1E5FAB460(v260, v369, &unk_1ED07B500, &qword_1E65F0EE0);
      MEMORY[0x1E694E740](31);
      sub_1E65E6838();
      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
      sub_1E65E5B48();
      sub_1E65E6D48();
      if (v249)
      {
        sub_1E65E5D78();
      }

      v300 = v364;
      v301 = v349;
      v302 = v347;
      v303 = v344;
      sub_1E5DFD1CC(v387, v344, &qword_1ED076220, &unk_1E65FA4A0);
      if ((*(v302 + 48))(v303, 1, v301) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v304 = v316;
        (*(v302 + 32))(v316, v303, v301);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076278, MEMORY[0x1E69CD4E0]);
        sub_1E65E5B48();
        (*(v302 + 8))(v304, v301);
      }

      sub_1E65E6D48();
      if (v253)
      {
        sub_1E65E5D78();
      }

      v305 = v392;
      v306 = v379;
      v307 = v367;
      sub_1E65E6D48();
      if (v255)
      {
        sub_1E65E5D78();
      }

      v308 = v380;
      v309 = v353;
      sub_1E5DFD1CC(v388, v353, &unk_1ED077770, &unk_1E660C190);
      if ((*(v300 + 48))(v309, 1, v307) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v310 = v320;
        (*(v300 + 32))(v320, v309, v307);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076280, MEMORY[0x1E69CD550]);
        sub_1E65E5B48();
        (*(v300 + 8))(v310, v307);
      }

      v311 = v362;
      sub_1E5DFD1CC(v261, v362, &unk_1ED07B500, &qword_1E65F0EE0);
      if ((*(v306 + 48))(v311, 1, v308) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v312 = v321;
        (*(v306 + 32))(v321, v311, v308);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076288, MEMORY[0x1E69CAF60]);
        sub_1E65E5B48();
        (*(v306 + 8))(v312, v308);
      }

      sub_1E5DFE50C(v261, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v388, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v387, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v305 + 8))(v385, v259);
      sub_1E6009FC0(&v395);
      return;
    case 0x17u:
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v263 = v262[12];
      v264 = &v114[v262[16]];
      v265 = *v264;
      v392 = v264[1];
      v266 = v350;
      v267 = *(v350 + 32);
      LODWORD(v394) = v114[v262[20]];
      v268 = v351;
      v267(v384, v114, v351);
      v269 = v354;
      v270 = v352;
      v271 = v355;
      (*(v354 + 32))(v352, &v114[v263], v355);
      MEMORY[0x1E694E740](32);
      sub_1E61B7730(&qword_1ED076268, MEMORY[0x1E69CD910]);
      v272 = v268;
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED076270, MEMORY[0x1E69CD868]);
      sub_1E65E5B48();
      v273 = v392;
      sub_1E65D8CC8();
      sub_1E61B73EC(v265, v273);
      sub_1E65E5D78();

      sub_1E65DA218();
      sub_1E65E5D78();

      (*(v269 + 8))(v270, v271);
      (*(v266 + 8))(v384, v272);
      return;
    case 0x18u:
      v157 = *v114;
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0);
      v160 = v389;
      v159 = v390;
      v161 = v383;
      (*(v389 + 32))(v383, &v114[*(v158 + 48)], v390);
      MEMORY[0x1E694E740](33);
      sub_1E65E65B8();
      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620]);
      sub_1E65E5B48();

      goto LABEL_28;
    case 0x19u:
      v156 = *v114;
      MEMORY[0x1E694E740](34);
      MEMORY[0x1E694E740](v156);
      return;
    case 0x1Au:
      v282 = v345;
      sub_1E61B7400(v114, v345, MEMORY[0x1E69CD768]);
      MEMORY[0x1E694E740](35);
      sub_1E65E52A8();
      sub_1E61B76D0(v282, MEMORY[0x1E69CD768]);
      return;
    case 0x1Bu:
      v119 = v356;
      sub_1E61B7400(v114, v356, type metadata accessor for PlaylistType);
      MEMORY[0x1E694E740](36);
      v120 = v348;
      sub_1E61B7384(v119, v348, type metadata accessor for PlaylistType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v121 = v318;
        v122 = v317;
        v123 = v319;
        (*(v318 + 32))(v317, v120, v319);
        MEMORY[0x1E694E740](1);
        sub_1E61B7730(&qword_1ED076258, MEMORY[0x1E69CD370]);
        sub_1E65E5B48();
        (*(v121 + 8))(v122, v123);
      }

      else
      {
        v283 = *v120;
        v284 = v120[1];
        MEMORY[0x1E694E740](0);
        sub_1E65E5D78();
      }

      sub_1E61B76D0(v119, type metadata accessor for PlaylistType);
      return;
    case 0x1Cu:
      v274 = v381;
      (*(v381 + 32))(v91, v114, v88);
      MEMORY[0x1E694E740](38);
      sub_1E61B7730(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
      sub_1E65E5B48();
      (*(v274 + 8))(v91, v88);
      return;
    case 0x1Du:
      v275 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v276 = v358;
      v277 = v357;
      v278 = v359;
      (*(v358 + 32))(v357, v114, v359);
      v279 = v361;
      v280 = v360;
      v281 = v363;
      (*(v361 + 32))(v360, &v114[v275], v363);
      MEMORY[0x1E694E740](39);
      sub_1E61B7730(&qword_1ED076248, MEMORY[0x1E69CD8B0]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED076250, MEMORY[0x1E69CB0E0]);
      sub_1E65E5B48();
      (*(v279 + 8))(v280, v281);
      (*(v276 + 8))(v277, v278);
      return;
    case 0x1Eu:
      v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v233 = *&v114[*(v232 + 48)];
      v234 = *&v114[*(v232 + 64)];
      v134 = v368;
      v135 = v365;
      v136 = v371;
      (*(v368 + 32))(v365, v114, v371);
      v235 = v393;
      MEMORY[0x1E694E740](40);
      sub_1E61B7730(&qword_1ED076240, MEMORY[0x1E69CD8D8]);
      sub_1E65E5B48();
      sub_1E61B0648(v235, v233, MEMORY[0x1E69CCF28], &qword_1ED072C50, MEMORY[0x1E69CCF28], MEMORY[0x1E69CCF30]);

      sub_1E61B0648(v235, v234, MEMORY[0x1E69CC8D0], &qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);

      goto LABEL_45;
    case 0x1Fu:
      v190 = *&v114[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v160 = v370;
      v161 = v366;
      v159 = v372;
      (*(v370 + 32))(v366, v114, v372);
      v191 = v393;
      MEMORY[0x1E694E740](41);
      sub_1E61B7730(&qword_1ED076238, MEMORY[0x1E69CCC50]);
      sub_1E65E5B48();
      sub_1E61B0648(v191, v190, MEMORY[0x1E69CC8D0], &qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);

LABEL_28:
      (*(v160 + 8))(v161, v159);
      return;
    case 0x20u:
      v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v237 = *&v114[*(v236 + 48)];
      v238 = *&v114[*(v236 + 64)];
      v239 = v375;
      v240 = v373;
      v241 = v377;
      (*(v375 + 32))(v373, v114, v377);
      v242 = v393;
      MEMORY[0x1E694E740](42);
      sub_1E61B7730(&qword_1ED076230, MEMORY[0x1E69CD970]);
      sub_1E65E5B48();
      v243 = MEMORY[0x1E69CC8D0];
      v244 = MEMORY[0x1E69CC8D0];
      v245 = MEMORY[0x1E69CC8D8];
      sub_1E61B0648(v242, v237, MEMORY[0x1E69CC8D0], &qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);

      sub_1E61B0648(v242, v238, v243, &qword_1ED0741A0, v244, v245);

      (*(v239 + 8))(v240, v241);
      return;
    case 0x21u:
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v132 = v114[*(v131 + 48)];
      v133 = v114[*(v131 + 64)];
      v134 = v376;
      v135 = v374;
      v136 = v378;
      (*(v376 + 32))(v374, v114, v378);
      MEMORY[0x1E694E740](43);
      sub_1E61B7730(&qword_1ED076228, MEMORY[0x1E69CBE40]);
      sub_1E65E5B48();
      sub_1E65E6D48();
      sub_1E65E6D48();
LABEL_45:
      (*(v134 + 8))(v135, v136);
      return;
    case 0x22u:
      v118 = 0;
      goto LABEL_58;
    case 0x23u:
      v118 = 2;
      goto LABEL_58;
    case 0x24u:
      v118 = 7;
      goto LABEL_58;
    case 0x25u:
      v118 = 8;
      goto LABEL_58;
    case 0x26u:
      v118 = 18;
      goto LABEL_58;
    case 0x27u:
      v118 = 19;
      goto LABEL_58;
    case 0x28u:
      v118 = 20;
      goto LABEL_58;
    case 0x29u:
      v118 = 23;
      goto LABEL_58;
    case 0x2Au:
      v118 = 25;
      goto LABEL_58;
    case 0x2Bu:
      v118 = 37;
LABEL_58:
      MEMORY[0x1E694E740](v118);
      break;
    default:
      v115 = *v114;
      v116 = *(v114 + 1);
      v117 = 1;
LABEL_40:
      MEMORY[0x1E694E740](v117);
      sub_1E65E5D78();

      break;
  }
}

uint64_t RouteResource.hashValue.getter()
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AE7B8()
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AE7FC()
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AE83C(__int128 *a1, uint64_t a2)
{
  v56 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D0, &qword_1E65F53C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v49 - v10);
  v12 = *(a2 + 64);
  v49 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v51 = v3 + 16;
  v17 = (v3 + 32);
  v53 = v3;
  v54 = a2;
  v55 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v21 = &unk_1E65F9E50;
  v52 = v11;
  v50 = (v3 + 32);
  while (1)
  {
    v22 = v21;
    v60 = v19;
    if (!v15)
    {
      break;
    }

    v23 = v20;
LABEL_13:
    v27 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v28 = v27 | (v23 << 6);
    v29 = v53;
    v30 = (*(v54 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v58;
    v34 = v59;
    (*(v53 + 16))(v58, *(v54 + 56) + *(v53 + 72) * v28, v59);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, v22);
    v36 = *(v35 + 48);
    v37 = v57;
    *v57 = v31;
    *(v37 + 1) = v32;
    v26 = v37;
    v38 = v34;
    v17 = v50;
    (*(v29 + 32))(&v37[v36], v33, v38);
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);

    v25 = v23;
    v21 = v22;
    v11 = v52;
LABEL_14:
    sub_1E5FAB460(v26, v11, &qword_1ED0762D0, &qword_1E65F53C0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, v21);
    if ((*(*(v39 - 8) + 48))(v11, 1, v39) == 1)
    {

      return MEMORY[0x1E694E740](v60);
    }

    v40 = *(v39 + 48);
    v41 = *v11;
    v42 = v11[1];
    v43 = v25;
    v45 = v58;
    v44 = v59;
    (*v17)(v58, v11 + v40, v59);
    v46 = v56[3];
    v63 = v56[2];
    v64 = v46;
    v65 = *(v56 + 8);
    v47 = v56[1];
    v61 = *v56;
    v62 = v47;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED0762E0, &qword_1ED0762C8, &qword_1E65F53B8);
    sub_1E65E5B48();
    (*v55)(v45, v44);
    result = sub_1E65E6D78();
    v19 = result ^ v60;
    v20 = v43;
  }

  if (v16 <= v20 + 1)
  {
    v24 = v20 + 1;
  }

  else
  {
    v24 = v16;
  }

  v25 = v24 - 1;
  v26 = v57;
  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      v21 = v22;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, v22);
      (*(*(v48 - 8) + 56))(v26, 1, 1, v48);
      v15 = 0;
      goto LABEL_14;
    }

    v15 = *(v49 + 8 * v23);
    ++v20;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AECB8(__int128 *a1, uint64_t a2)
{
  v56 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F0, &qword_1E65F53D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v49 - v10);
  v12 = *(a2 + 64);
  v49 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v51 = v3 + 16;
  v17 = (v3 + 32);
  v53 = v3;
  v54 = a2;
  v55 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v21 = &unk_1E65F9E60;
  v52 = v11;
  v50 = (v3 + 32);
  while (1)
  {
    v22 = v21;
    v60 = v19;
    if (!v15)
    {
      break;
    }

    v23 = v20;
LABEL_13:
    v27 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v28 = v27 | (v23 << 6);
    v29 = v53;
    v30 = (*(v54 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v58;
    v34 = v59;
    (*(v53 + 16))(v58, *(v54 + 56) + *(v53 + 72) * v28, v59);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, v22);
    v36 = *(v35 + 48);
    v37 = v57;
    *v57 = v31;
    *(v37 + 1) = v32;
    v26 = v37;
    v38 = v34;
    v17 = v50;
    (*(v29 + 32))(&v37[v36], v33, v38);
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);

    v25 = v23;
    v21 = v22;
    v11 = v52;
LABEL_14:
    sub_1E5FAB460(v26, v11, &qword_1ED0762F0, &qword_1E65F53D0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, v21);
    if ((*(*(v39 - 8) + 48))(v11, 1, v39) == 1)
    {

      return MEMORY[0x1E694E740](v60);
    }

    v40 = *(v39 + 48);
    v41 = *v11;
    v42 = v11[1];
    v43 = v25;
    v45 = v58;
    v44 = v59;
    (*v17)(v58, v11 + v40, v59);
    v46 = v56[3];
    v63 = v56[2];
    v64 = v46;
    v65 = *(v56 + 8);
    v47 = v56[1];
    v61 = *v56;
    v62 = v47;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED076300, &qword_1ED0762E8, &qword_1E65F53C8);
    sub_1E65E5B48();
    (*v55)(v45, v44);
    result = sub_1E65E6D78();
    v19 = result ^ v60;
    v20 = v43;
  }

  if (v16 <= v20 + 1)
  {
    v24 = v20 + 1;
  }

  else
  {
    v24 = v16;
  }

  v25 = v24 - 1;
  v26 = v57;
  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      v21 = v22;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, v22);
      (*(*(v48 - 8) + 56))(v26, 1, 1, v48);
      v15 = 0;
      goto LABEL_14;
    }

    v15 = *(v49 + 8 * v23);
    ++v20;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AF134(__int128 *a1, uint64_t a2)
{
  v56 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076310, &qword_1E65F53E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v49 - v10);
  v12 = *(a2 + 64);
  v49 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v51 = v3 + 16;
  v17 = (v3 + 32);
  v53 = v3;
  v54 = a2;
  v55 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v21 = &unk_1E65F9E70;
  v52 = v11;
  v50 = (v3 + 32);
  while (1)
  {
    v22 = v21;
    v60 = v19;
    if (!v15)
    {
      break;
    }

    v23 = v20;
LABEL_13:
    v27 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v28 = v27 | (v23 << 6);
    v29 = v53;
    v30 = (*(v54 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v58;
    v34 = v59;
    (*(v53 + 16))(v58, *(v54 + 56) + *(v53 + 72) * v28, v59);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, v22);
    v36 = *(v35 + 48);
    v37 = v57;
    *v57 = v31;
    *(v37 + 1) = v32;
    v26 = v37;
    v38 = v34;
    v17 = v50;
    (*(v29 + 32))(&v37[v36], v33, v38);
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);

    v25 = v23;
    v21 = v22;
    v11 = v52;
LABEL_14:
    sub_1E5FAB460(v26, v11, &qword_1ED076310, &qword_1E65F53E0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, v21);
    if ((*(*(v39 - 8) + 48))(v11, 1, v39) == 1)
    {

      return MEMORY[0x1E694E740](v60);
    }

    v40 = *(v39 + 48);
    v41 = *v11;
    v42 = v11[1];
    v43 = v25;
    v45 = v58;
    v44 = v59;
    (*v17)(v58, v11 + v40, v59);
    v46 = v56[3];
    v63 = v56[2];
    v64 = v46;
    v65 = *(v56 + 8);
    v47 = v56[1];
    v61 = *v56;
    v62 = v47;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED076320, &qword_1ED076308, &qword_1E65F53D8);
    sub_1E65E5B48();
    (*v55)(v45, v44);
    result = sub_1E65E6D78();
    v19 = result ^ v60;
    v20 = v43;
  }

  if (v16 <= v20 + 1)
  {
    v24 = v20 + 1;
  }

  else
  {
    v24 = v16;
  }

  v25 = v24 - 1;
  v26 = v57;
  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      v21 = v22;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, v22);
      (*(*(v48 - 8) + 56))(v26, 1, 1, v48);
      v15 = 0;
      goto LABEL_14;
    }

    v15 = *(v49 + 8 * v23);
    ++v20;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AF5B0(__int128 *a1, uint64_t a2)
{
  v58 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v57 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076328, &qword_1E65F53E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v50 - v13;
  v15 = *(a2 + 64);
  v50[0] = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v50[1] = v3 + 16;
  v59 = (v3 + 32);
  v54 = v3;
  v55 = a2;
  v56 = (v3 + 8);

  v21 = 0;
  v51 = v14;
  v52 = v12;
  v62 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v54;
      v28 = *(v55 + 48) + 24 * v26;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v32 = v53;
      v33 = v60;
      (*(v54 + 16))(v53, *(v55 + 56) + *(v54 + 72) * v26, v60);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
      v35 = *(v34 + 48);
      v36 = v52;
      *v52 = v29;
      v36[1] = v30;
      *(v36 + 16) = v31;
      v37 = v33;
      v12 = v36;
      (*(v27 + 32))(v36 + v35, v32, v37);
      (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
      sub_1E600B01C(v29, v30, v31);
      v24 = v22;
      v14 = v51;
LABEL_13:
      sub_1E5FAB460(v12, v14, &qword_1ED076328, &qword_1E65F53E8);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
      if ((*(*(v38 - 8) + 48))(v14, 1, v38) == 1)
      {
        break;
      }

      v39 = *(v38 + 48);
      v61 = v24;
      v40 = *v14;
      v41 = *(v14 + 1);
      v42 = v60;
      v43 = v14[16];
      v44 = v12;
      v45 = v57;
      (*v59)(v57, &v14[v39], v60);
      v46 = v58[3];
      v65 = v58[2];
      v66 = v46;
      v67 = *(v58 + 8);
      v47 = v58[1];
      v63 = *v58;
      v64 = v47;
      MEMORY[0x1E694E740](v43);
      sub_1E65E5D78();
      sub_1E6001C2C(v40, v41, v43);
      sub_1E61B767C(&qword_1ED076338, &qword_1ED072AE0, &qword_1E65F9E00);
      sub_1E65E5B48();
      v48 = v45;
      v12 = v44;
      (*v56)(v48, v42);
      result = sub_1E65E6D78();
      v21 = v61;
      v62 ^= result;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1E694E740](v62);
  }

  else
  {
LABEL_5:
    if (v19 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
        (*(*(v49 - 8) + 56))(v12, 1, 1, v49);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v50[0] + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E61AFA9C(__int128 *a1, uint64_t a2)
{
  v56 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076340, &qword_1E65F53F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v49 - v10);
  v12 = *(a2 + 64);
  v49 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v51 = v3 + 16;
  v17 = (v3 + 32);
  v53 = v3;
  v54 = a2;
  v55 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v21 = &unk_1E65F9E90;
  v52 = v11;
  v50 = (v3 + 32);
  while (1)
  {
    v22 = v21;
    v60 = v19;
    if (!v15)
    {
      break;
    }

    v23 = v20;
LABEL_13:
    v27 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v28 = v27 | (v23 << 6);
    v29 = v53;
    v30 = (*(v54 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v58;
    v34 = v59;
    (*(v53 + 16))(v58, *(v54 + 56) + *(v53 + 72) * v28, v59);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, v22);
    v36 = *(v35 + 48);
    v37 = v57;
    *v57 = v31;
    *(v37 + 1) = v32;
    v26 = v37;
    v38 = v34;
    v17 = v50;
    (*(v29 + 32))(&v37[v36], v33, v38);
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);

    v25 = v23;
    v21 = v22;
    v11 = v52;
LABEL_14:
    sub_1E5FAB460(v26, v11, &qword_1ED076340, &qword_1E65F53F0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, v21);
    if ((*(*(v39 - 8) + 48))(v11, 1, v39) == 1)
    {

      return MEMORY[0x1E694E740](v60);
    }

    v40 = *(v39 + 48);
    v41 = *v11;
    v42 = v11[1];
    v43 = v25;
    v45 = v58;
    v44 = v59;
    (*v17)(v58, v11 + v40, v59);
    v46 = v56[3];
    v63 = v56[2];
    v64 = v46;
    v65 = *(v56 + 8);
    v47 = v56[1];
    v61 = *v56;
    v62 = v47;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED076338, &qword_1ED072AE0, &qword_1E65F9E00);
    sub_1E65E5B48();
    (*v55)(v45, v44);
    result = sub_1E65E6D78();
    v19 = result ^ v60;
    v20 = v43;
  }

  if (v16 <= v20 + 1)
  {
    v24 = v20 + 1;
  }

  else
  {
    v24 = v16;
  }

  v25 = v24 - 1;
  v26 = v57;
  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      v21 = v22;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, v22);
      (*(*(v48 - 8) + 56))(v26, 1, 1, v48);
      v15 = 0;
      goto LABEL_14;
    }

    v15 = *(v49 + 8 * v23);
    ++v20;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AFF18(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_1E65E5D78();

    sub_1E65E5D78();

    result = sub_1E65E6D78();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E694E740](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61B0084(__int128 *a1, uint64_t a2)
{
  v53 = a1;
  v57 = sub_1E65E2A38();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076350, &qword_1E65F53F8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v45 - v10);
  v12 = *(a2 + 64);
  v46 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v48 = v3 + 16;
  v17 = (v3 + 32);
  v50 = v3;
  v51 = a2;
  v52 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v49 = v11;
  v47 = (v3 + 32);
  if (v15)
  {
    while (1)
    {
      v55 = v19;
      v21 = v20;
LABEL_13:
      v24 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v50;
      v27 = (*(v51 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v31 = v56;
      v30 = v57;
      (*(v50 + 16))(v56, *(v51 + 56) + *(v50 + 72) * v25, v57);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
      v33 = *(v32 + 48);
      v34 = v54;
      *v54 = v28;
      v34[1] = v29;
      v23 = v34;
      v35 = *(v26 + 32);
      v17 = v47;
      v35(v23 + v33, v31, v30);
      (*(*(v32 - 8) + 56))(v23, 0, 1, v32);

      v58 = v21;
      v11 = v49;
      v19 = v55;
LABEL_14:
      sub_1E5FAB460(v23, v11, &qword_1ED076350, &qword_1E65F53F8);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
      if ((*(*(v36 - 8) + 48))(v11, 1, v36) == 1)
      {
        break;
      }

      v37 = *(v36 + 48);
      v38 = *v11;
      v39 = v11[1];
      v41 = v56;
      v40 = v57;
      (*v17)(v56, v11 + v37, v57);
      v42 = v53[3];
      v61 = v53[2];
      v62 = v42;
      v63 = *(v53 + 8);
      v43 = v53[1];
      v59 = *v53;
      v60 = v43;
      sub_1E65E5D78();

      sub_1E61B7730(&qword_1ED076360, MEMORY[0x1E699F498]);
      sub_1E65E5B48();
      (*v52)(v41, v40);
      result = sub_1E65E6D78();
      v19 ^= result;
      v20 = v58;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1E694E740](v19);
  }

  else
  {
LABEL_5:
    if (v16 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v16;
    }

    v23 = v54;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v16)
      {
        v58 = v22 - 1;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
        (*(*(v44 - 8) + 56))(v23, 1, 1, v44);
        v15 = 0;
        goto LABEL_14;
      }

      v15 = *(v46 + 8 * v21);
      ++v20;
      if (v15)
      {
        v55 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E61B051C(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1E65E6D78();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E65E6D28();
    MEMORY[0x1E694E740](v12);
    result = sub_1E65E6D78();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E694E740](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61B0648(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  v13 = a1[3];
  v33 = a1[2];
  v34 = v13;
  v35 = *(a1 + 8);
  v15 = *a1;
  v14 = a1[1];
  v27[1] = a1;
  v31 = v15;
  v32 = v14;
  v16 = sub_1E65E6D78();
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v27[3] = v9 + 16;
  v27[4] = v16;
  v27[2] = v9 + 8;

  v22 = 0;
  for (i = 0; v19; v22 ^= v26)
  {
    v24 = i;
LABEL_9:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v9 + 16))(v12, *(a2 + 48) + *(v9 + 72) * (v25 | (v24 << 6)), v8);
    sub_1E61B7730(v28, v29);
    v26 = sub_1E65E5B38();
    result = (*(v9 + 8))(v12, v8);
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return MEMORY[0x1E694E740](v22);
    }

    v19 = *(a2 + 56 + 8 * v24);
    ++i;
    if (v19)
    {
      i = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10Blackbeard13RouteResourceO2eeoiySbAC_ACtFZ_0(char *a1, uint64_t *a2)
{
  v941 = a1;
  v942 = a2;
  v910 = sub_1E65D9048();
  v909 = *(v910 - 8);
  v2 = *(v909 + 64);
  MEMORY[0x1EEE9AC00](v910);
  v850 = &v794 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v912 = sub_1E65E58D8();
  v911 = *(v912 - 8);
  v4 = *(v911 + 64);
  MEMORY[0x1EEE9AC00](v912);
  v851 = &v794 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v906 = sub_1E65DA308();
  v905 = *(v906 - 8);
  v6 = *(v905 + 64);
  MEMORY[0x1EEE9AC00](v906);
  v849 = &v794 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v908 = sub_1E65E56B8();
  v907 = *(v908 - 8);
  v8 = *(v907 + 64);
  MEMORY[0x1EEE9AC00](v908);
  v848 = &v794 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v904 = sub_1E65D7EB8();
  v903 = *(v904 - 8);
  v10 = *(v903 + 64);
  v11 = MEMORY[0x1EEE9AC00](v904);
  v847 = &v794 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v915 = &v794 - v13;
  v933 = sub_1E65E55E8();
  v902 = *(v933 - 8);
  v14 = *(v902 + 64);
  MEMORY[0x1EEE9AC00](v933);
  v860 = &v794 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlaylistType();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v846 = &v794 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E52B8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v845 = &v794 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v925 = sub_1E65E5528();
  v929 = *(v925 - 8);
  v22 = *(v929 + 64);
  v23 = MEMORY[0x1EEE9AC00](v925);
  v855 = &v794 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v927 = &v794 - v25;
  v928 = sub_1E65E57D8();
  v913 = *(v928 - 8);
  v26 = *(v913 + 64);
  MEMORY[0x1EEE9AC00](v928);
  v861 = &v794 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v799 = sub_1E65D7A38();
  v798 = *(v799 - 8);
  v28 = *(v798 + 64);
  MEMORY[0x1EEE9AC00](v799);
  v794 = &v794 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v796 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076368, &qword_1E65F5400);
  v30 = *(*(v796 - 8) + 64);
  MEMORY[0x1EEE9AC00](v796);
  v803 = &v794 - v31;
  v805 = sub_1E65DB5D8();
  v804 = *(v805 - 8);
  v32 = *(v804 + 64);
  MEMORY[0x1EEE9AC00](v805);
  v795 = &v794 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v802 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076370, &qword_1E65F5408);
  v34 = *(*(v802 - 8) + 64);
  MEMORY[0x1EEE9AC00](v802);
  v807 = &v794 - v35;
  v827 = sub_1E65DB3E8();
  v821 = *(v827 - 8);
  v36 = *(v821 + 64);
  MEMORY[0x1EEE9AC00](v827);
  v809 = &v794 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v817 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076378, &qword_1E65F5410);
  v38 = *(*(v817 - 8) + 64);
  MEMORY[0x1EEE9AC00](v817);
  v828 = &v794 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v797 = &v794 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v853 = &v794 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v916 = &v794 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v801 = &v794 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v852 = &v794 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v917 = &v794 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v814 = &v794 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v856 = &v794 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v920 = &v794 - v60;
  v816 = sub_1E65D96F8();
  v818 = *(v816 - 8);
  v61 = *(v818 + 64);
  MEMORY[0x1EEE9AC00](v816);
  v808 = &v794 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v815 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076380, &qword_1E65F5418);
  v63 = *(*(v815 - 8) + 64);
  MEMORY[0x1EEE9AC00](v815);
  v820 = &v794 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x1EEE9AC00](v65 - 8);
  v830 = &v794 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v900 = &v794 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v901 = &v794 - v71;
  v899 = sub_1E65DB718();
  v898 = *(v899 - 8);
  v72 = *(v898 + 64);
  MEMORY[0x1EEE9AC00](v899);
  v840 = &v794 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E65D74E8();
  v75 = *(v74 - 8);
  v938 = v74;
  v939 = v75;
  v76 = *(v75 + 64);
  v77 = MEMORY[0x1EEE9AC00](v74);
  v854 = &v794 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v926 = &v794 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v839 = &v794 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v842 = &v794 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v897 = &v794 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v844 = &v794 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v924 = &v794 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v843 = &v794 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v923 = &v794 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v838 = &v794 - v96;
  MEMORY[0x1EEE9AC00](v95);
  v914 = &v794 - v97;
  v98 = sub_1E65E1518();
  v934 = *(v98 - 8);
  v935 = v98;
  v99 = *(v934 + 64);
  v100 = MEMORY[0x1EEE9AC00](v98);
  v841 = &v794 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v922 = &v794 - v102;
  v103 = sub_1E65DB848();
  v936 = *(v103 - 8);
  v937 = v103;
  v104 = *(v936 + 64);
  v105 = MEMORY[0x1EEE9AC00](v103);
  v835 = &v794 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x1EEE9AC00](v105);
  v836 = &v794 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v894 = &v794 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v896 = &v794 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v892 = &v794 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v895 = &v794 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v859 = &v794 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v890 = &v794 - v120;
  MEMORY[0x1EEE9AC00](v119);
  v891 = &v794 - v121;
  v122 = sub_1E65E0B48();
  v123 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122 - 8);
  v834 = &v794 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v893 = sub_1E65D72D8();
  v930 = *(v893 - 8);
  v125 = *(v930 + 64);
  v126 = MEMORY[0x1EEE9AC00](v893);
  v837 = &v794 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126);
  v862 = &v794 - v128;
  v819 = sub_1E65E1FC8();
  v813 = *(v819 - 8);
  v129 = *(v813 + 64);
  MEMORY[0x1EEE9AC00](v819);
  v800 = &v794 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v810 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076388, &qword_1E65F5420);
  v131 = *(*(v810 - 8) + 64);
  MEMORY[0x1EEE9AC00](v810);
  v812 = &v794 - v132;
  v824 = sub_1E65E2CF8();
  v825 = *(v824 - 8);
  v133 = *(v825 + 64);
  MEMORY[0x1EEE9AC00](v824);
  v811 = &v794 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v822 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076390, &qword_1E65F5428);
  v135 = *(*(v822 - 8) + 64);
  MEMORY[0x1EEE9AC00](v822);
  v823 = &v794 - v136;
  v932 = sub_1E65D76F8();
  v931 = *(v932 - 8);
  v137 = *(v931 + 64);
  v138 = MEMORY[0x1EEE9AC00](v932);
  v832 = &v794 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v138);
  v826 = &v794 - v140;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v142 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141 - 8);
  v831 = &v794 - v143;
  v833 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076398, &qword_1E65F5430);
  v144 = *(*(v833 - 8) + 64);
  MEMORY[0x1EEE9AC00](v833);
  v858 = &v794 - v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v147 = *(*(v146 - 8) + 64);
  v148 = MEMORY[0x1EEE9AC00](v146 - 8);
  v806 = &v794 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = MEMORY[0x1EEE9AC00](v148);
  v918 = &v794 - v151;
  MEMORY[0x1EEE9AC00](v150);
  v919 = &v794 - v152;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v154 = *(*(v153 - 8) + 64);
  v155 = MEMORY[0x1EEE9AC00](v153 - 8);
  v829 = &v794 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = MEMORY[0x1EEE9AC00](v155);
  v857 = &v794 - v158;
  MEMORY[0x1EEE9AC00](v157);
  v921 = &v794 - v159;
  v940 = type metadata accessor for RouteResource();
  v160 = *(*(v940 - 1) + 64);
  v161 = MEMORY[0x1EEE9AC00](v940);
  v887 = &v794 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = MEMORY[0x1EEE9AC00](v161);
  v888 = &v794 - v164;
  v165 = MEMORY[0x1EEE9AC00](v163);
  v885 = &v794 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v886 = &v794 - v168;
  v169 = MEMORY[0x1EEE9AC00](v167);
  v884 = &v794 - v170;
  v171 = MEMORY[0x1EEE9AC00](v169);
  v882 = &v794 - v172;
  v173 = MEMORY[0x1EEE9AC00](v171);
  v881 = &v794 - v174;
  v175 = MEMORY[0x1EEE9AC00](v173);
  v880 = &v794 - v176;
  v177 = MEMORY[0x1EEE9AC00](v175);
  v877 = (&v794 - v178);
  v179 = MEMORY[0x1EEE9AC00](v177);
  v879 = (&v794 - v180);
  v181 = MEMORY[0x1EEE9AC00](v179);
  v883 = &v794 - v182;
  v183 = MEMORY[0x1EEE9AC00](v181);
  v889 = &v794 - v184;
  v185 = MEMORY[0x1EEE9AC00](v183);
  v878 = &v794 - v186;
  v187 = MEMORY[0x1EEE9AC00](v185);
  v874 = &v794 - v188;
  v189 = MEMORY[0x1EEE9AC00](v187);
  v876 = &v794 - v190;
  v191 = MEMORY[0x1EEE9AC00](v189);
  v872 = &v794 - v192;
  v193 = MEMORY[0x1EEE9AC00](v191);
  v875 = &v794 - v194;
  v195 = MEMORY[0x1EEE9AC00](v193);
  v871 = (&v794 - v196);
  v197 = MEMORY[0x1EEE9AC00](v195);
  v868 = (&v794 - v198);
  v199 = MEMORY[0x1EEE9AC00](v197);
  v873 = &v794 - v200;
  v201 = MEMORY[0x1EEE9AC00](v199);
  v865 = (&v794 - v202);
  v203 = MEMORY[0x1EEE9AC00](v201);
  v864 = &v794 - v204;
  v205 = MEMORY[0x1EEE9AC00](v203);
  v207 = (&v794 - v206);
  v208 = MEMORY[0x1EEE9AC00](v205);
  v210 = (&v794 - v209);
  v211 = MEMORY[0x1EEE9AC00](v208);
  v870 = (&v794 - v212);
  v213 = MEMORY[0x1EEE9AC00](v211);
  v866 = (&v794 - v214);
  v215 = MEMORY[0x1EEE9AC00](v213);
  v869 = &v794 - v216;
  v217 = MEMORY[0x1EEE9AC00](v215);
  v863 = (&v794 - v218);
  v219 = MEMORY[0x1EEE9AC00](v217);
  v221 = &v794 - v220;
  v222 = MEMORY[0x1EEE9AC00](v219);
  v224 = &v794 - v223;
  v225 = MEMORY[0x1EEE9AC00](v222);
  v227 = &v794 - v226;
  v228 = MEMORY[0x1EEE9AC00](v225);
  v230 = (&v794 - v229);
  v231 = MEMORY[0x1EEE9AC00](v228);
  v867 = &v794 - v232;
  MEMORY[0x1EEE9AC00](v231);
  v234 = (&v794 - v233);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0763A0, &qword_1E65F5438);
  v236 = *(*(v235 - 8) + 64);
  v237 = MEMORY[0x1EEE9AC00](v235 - 8);
  v239 = &v794 - v238;
  v240 = &v794 + *(v237 + 56) - v238;
  sub_1E61B7384(v941, &v794 - v238, type metadata accessor for RouteResource);
  v241 = v942;
  v942 = v240;
  sub_1E61B7384(v241, v240, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v941 = v239;
      v355 = v867;
      sub_1E61B7384(v239, v867, type metadata accessor for RouteResource);
      v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v357 = v356[12];
      v358 = *(v355 + v357 + 8);
      v939 = *(v355 + v357);
      v359 = v356[16];
      v360 = v356[20];
      v361 = *(v355 + v360);
      v362 = v356[24];
      v363 = v356[28];
      LODWORD(v938) = *(v355 + v363);
      v364 = v356[32];
      v936 = *(v355 + v364);
      LODWORD(v937) = *(v355 + v364 + 8);
      v365 = v942;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        sub_1E5DFE50C(v355 + v362, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFE50C(v355 + v359, &qword_1ED072B60, &unk_1E65FA490);
        sub_1E5DFE50C(v355, &unk_1ED077760, &unk_1E66011D0);
        v239 = v941;
        goto LABEL_173;
      }

      v934 = v358;
      v935 = v361;
      v940 = *(v365 + v360);
      v366 = *(v365 + v357 + 8);
      v933 = *(v365 + v357);
      LODWORD(v930) = *(v365 + v363);
      v928 = *(v365 + v364);
      LODWORD(v929) = *(v365 + v364 + 8);
      sub_1E5FAB460(v355 + v359, v921, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5FAB460(v355 + v362, v919, &unk_1ED077750, &unk_1E66011C0);
      v367 = v365 + v359;
      v368 = v857;
      sub_1E5FAB460(v367, v857, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5FAB460(v365 + v362, v918, &unk_1ED077750, &unk_1E66011C0);
      v369 = *(v833 + 48);
      v370 = v858;
      sub_1E5FAB460(v355, v858, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5FAB460(v365, v370 + v369, &unk_1ED077760, &unk_1E66011D0);
      v371 = v931;
      v372 = *(v931 + 48);
      v373 = v932;
      if (v372(v370, 1, v932) == 1)
      {
        v374 = v372(v370 + v369, 1, v373) == 1;
        v375 = v370;
        v239 = v941;
        if (!v374)
        {

LABEL_233:
          v655 = &qword_1ED076398;
          v656 = &qword_1E65F5430;
          v657 = v858;
LABEL_234:
          sub_1E5DFE50C(v657, v655, v656);
LABEL_235:
          sub_1E5DFE50C(v918, &unk_1ED077750, &unk_1E66011C0);
          sub_1E5DFE50C(v368, &qword_1ED072B60, &unk_1E65FA490);
          sub_1E5DFE50C(v919, &unk_1ED077750, &unk_1E66011C0);
          v658 = v921;
          v659 = &qword_1ED072B60;
          v660 = &unk_1E65FA490;
          goto LABEL_309;
        }

        sub_1E5DFE50C(v375, &unk_1ED077760, &unk_1E66011D0);
        v376 = v934;
      }

      else
      {
        v621 = v831;
        sub_1E5DFD1CC(v370, v831, &unk_1ED077760, &unk_1E66011D0);
        v622 = v372(v370 + v369, 1, v373);
        v623 = v941;
        if (v622 == 1)
        {

          (*(v371 + 8))(v621, v373);
          v239 = v623;
          v368 = v857;
          goto LABEL_233;
        }

        v661 = v370 + v369;
        v662 = v826;
        (*(v371 + 32))(v826, v661, v373);
        sub_1E61B7730(&qword_1EE2D71A0, MEMORY[0x1E69695A8]);
        v663 = sub_1E65E5B98();
        v664 = *(v371 + 8);
        v664(v662, v373);
        v664(v621, v373);
        sub_1E5DFE50C(v370, &unk_1ED077760, &unk_1E66011D0);
        v239 = v623;
        v368 = v857;
        v376 = v934;
        if ((v663 & 1) == 0)
        {

          goto LABEL_235;
        }
      }

      if (v376)
      {
        v665 = v829;
        if (!v366)
        {

          goto LABEL_348;
        }

        if (v939 == v933 && v376 == v366)
        {
        }

        else
        {
          v716 = sub_1E65E6C18();

          if ((v716 & 1) == 0)
          {
            goto LABEL_348;
          }
        }
      }

      else
      {
        v665 = v829;
        if (v366)
        {

          goto LABEL_235;
        }
      }

      v717 = v940;
      v718 = *(v822 + 48);
      v719 = v823;
      sub_1E5DFD1CC(v921, v823, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFD1CC(v368, v719 + v718, &qword_1ED072B60, &unk_1E65FA490);
      v720 = *(v825 + 48);
      v721 = v824;
      if (v720(v719, 1, v824) == 1)
      {
        v722 = v720(v719 + v718, 1, v721);
        v723 = v819;
        if (v722 == 1)
        {
          sub_1E5DFE50C(v719, &qword_1ED072B60, &unk_1E65FA490);
          v724 = v935;
          goto LABEL_329;
        }

LABEL_327:
        v655 = &qword_1ED076390;
        v656 = &qword_1E65F5428;
        v657 = v719;
        goto LABEL_234;
      }

      sub_1E5DFD1CC(v719, v665, &qword_1ED072B60, &unk_1E65FA490);
      if (v720(v719 + v718, 1, v721) == 1)
      {

        (*(v825 + 8))(v665, v721);
        goto LABEL_327;
      }

      v732 = v825;
      v733 = v719 + v718;
      v734 = v811;
      (*(v825 + 32))(v811, v733, v721);
      sub_1E61B7730(&qword_1ED0763D8, MEMORY[0x1E699F5D8]);
      v735 = sub_1E65E5B98();
      v736 = *(v732 + 8);
      v736(v734, v721);
      v736(v665, v721);
      v723 = v819;
      sub_1E5DFE50C(v719, &qword_1ED072B60, &unk_1E65FA490);
      v724 = v935;
      if (v735)
      {
LABEL_329:
        v737 = sub_1E62871C8(v724, v717);

        if ((v737 & 1) == 0)
        {
          goto LABEL_235;
        }

        v738 = *(v810 + 48);
        v739 = v812;
        sub_1E5DFD1CC(v919, v812, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFD1CC(v918, v739 + v738, &unk_1ED077750, &unk_1E66011C0);
        v740 = *(v813 + 48);
        if (v740(v739, 1, v723) == 1)
        {
          v374 = v740(v739 + v738, 1, v723) == 1;
          v657 = v739;
          if (!v374)
          {
            goto LABEL_353;
          }

          sub_1E5DFE50C(v739, &unk_1ED077750, &unk_1E66011C0);
        }

        else
        {
          v750 = v806;
          sub_1E5DFD1CC(v739, v806, &unk_1ED077750, &unk_1E66011C0);
          if (v740(v739 + v738, 1, v723) == 1)
          {
            (*(v813 + 8))(v750, v723);
            v657 = v812;
LABEL_353:
            v655 = &qword_1ED076388;
            v656 = &qword_1E65F5420;
            goto LABEL_234;
          }

          v752 = v813;
          v753 = v723;
          v754 = v750;
          v755 = v812;
          v756 = v812 + v738;
          v757 = v800;
          (*(v813 + 32))(v800, v756, v753);
          sub_1E61B7730(&qword_1ED0763D0, MEMORY[0x1E699F198]);
          v758 = sub_1E65E5B98();
          v759 = *(v752 + 8);
          v759(v757, v753);
          v759(v754, v753);
          sub_1E5DFE50C(v755, &unk_1ED077750, &unk_1E66011C0);
          if ((v758 & 1) == 0)
          {
            goto LABEL_235;
          }
        }

        v760 = sub_1E65E2938();
        v761 = sub_1E65E2938();
        sub_1E5DFE50C(v918, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFE50C(v368, &qword_1ED072B60, &unk_1E65FA490);
        sub_1E5DFE50C(v919, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFE50C(v921, &qword_1ED072B60, &unk_1E65FA490);
        if (v760 == v761)
        {
          if (v937)
          {
            if (v929)
            {
              goto LABEL_397;
            }
          }

          else
          {
            v770 = v929;
            if (v936 != v928)
            {
              v770 = 1;
            }

            if ((v770 & 1) == 0)
            {
              goto LABEL_397;
            }
          }

          goto LABEL_376;
        }

        goto LABEL_310;
      }

LABEL_348:

      goto LABEL_235;
    case 2u:
      sub_1E61B7384(v239, v230, type metadata accessor for RouteResource);
      v243 = *v230;
      v242 = v230[1];
      v244 = v942;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 3u:
      sub_1E61B7384(v239, v227, type metadata accessor for RouteResource);
      v327 = *v227;
      v326 = *(v227 + 1);
      v328 = v227[16];
      v329 = v227[17];
      v330 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v331 = v942;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v930 + 8))(&v227[v330], v893);

        goto LABEL_173;
      }

      LODWORD(v940) = v329;
      v941 = v239;
      v333 = *v331;
      v332 = v331[1];
      LODWORD(v939) = *(v331 + 16);
      LODWORD(v938) = *(v331 + 17);
      v334 = *(v930 + 32);
      v335 = &v227[v330];
      v336 = v893;
      v334(v862, v335, v893);
      v337 = v331 + v330;
      v338 = v837;
      v334(v837, v337, v336);
      if (v327 == v333 && v326 == v332)
      {

LABEL_185:
        v615 = sub_1E65E03C8();
        v617 = v616;
        v618 = sub_1E65E03C8();
        v305 = v941;
        if (v615 == v618 && v617 == v619)
        {
        }

        else
        {
          v632 = sub_1E65E6C18();

          if ((v632 & 1) == 0)
          {
LABEL_225:
            v650 = *(v930 + 8);
            v650(v338, v336);
            v650(v862, v336);
LABEL_277:
            sub_1E61B76D0(v305, type metadata accessor for RouteResource);
            goto LABEL_174;
          }
        }

        v633 = sub_1E65DFB58();
        v635 = v634;
        if (v633 == sub_1E65DFB58() && v635 == v636)
        {

LABEL_223:
          v648 = v862;
          v248 = sub_1E65D7288();
          v649 = *(v930 + 8);
          v649(v338, v336);
          v649(v648, v336);
          goto LABEL_224;
        }

        v647 = sub_1E65E6C18();

        if (v647)
        {
          goto LABEL_223;
        }

        goto LABEL_225;
      }

      v614 = sub_1E65E6C18();

      if (v614)
      {
        goto LABEL_185;
      }

      v654 = *(v930 + 8);
      v654(v338, v336);
      v654(v862, v336);
      goto LABEL_376;
    case 4u:
      sub_1E61B7384(v239, v224, type metadata accessor for RouteResource);
      v270 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48);
      v272 = *&v224[v270];
      v271 = *&v224[v270 + 8];
      v273 = v942;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1E61B76D0(v224, MEMORY[0x1E699DD40]);
        goto LABEL_173;
      }

      v275 = *(v273 + v270);
      v274 = *(v273 + v270 + 8);
      v276 = v834;
      sub_1E61B7400(v273, v834, MEMORY[0x1E699DD40]);
      v277 = MEMORY[0x1E6948530](v224, v276);
      sub_1E61B76D0(v224, MEMORY[0x1E699DD40]);
      if ((v277 & 1) == 0)
      {
        sub_1E61B76D0(v276, MEMORY[0x1E699DD40]);

        goto LABEL_310;
      }

      if (v272 == v275 && v271 == v274)
      {

        sub_1E61B76D0(v276, MEMORY[0x1E699DD40]);
        goto LABEL_227;
      }

      v651 = sub_1E65E6C18();

      sub_1E61B76D0(v276, MEMORY[0x1E699DD40]);
      if (v651)
      {
        goto LABEL_227;
      }

      goto LABEL_310;
    case 5u:
      sub_1E61B7384(v239, v221, type metadata accessor for RouteResource);
      v421 = v942;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_173;
      }

      v422 = *v221;
      v423 = *v421;
      v424 = sub_1E65DF568();
      v426 = v425;
      if (v424 != sub_1E65DF568() || v426 != v427)
      {
        goto LABEL_194;
      }

      goto LABEL_103;
    case 6u:
      v447 = v863;
      sub_1E61B7384(v239, v863, type metadata accessor for RouteResource);
      v448 = *v447;
      v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v450 = *(v449 + 48);
      v451 = *(v449 + 64);
      v452 = v942;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        (*(v934 + 8))(v447 + v451, v935);
        (*(v936 + 8))(v447 + v450, v937);
        goto LABEL_173;
      }

      v940 = *v452;
      v941 = v239;
      v453 = v937;
      v454 = *(v936 + 32);
      v454(v891, v447 + v450, v937);
      v455 = v935;
      v456 = v447;
      v457 = *(v934 + 32);
      v457(v922, v456 + v451, v935);
      v454(v890, v452 + v450, v453);
      v458 = v841;
      v457(v841, v452 + v451, v455);
      if (v448)
      {
        v459 = v940;
        if (!v940)
        {
          v305 = v941;
          v464 = v937;
          v463 = v891;
          goto LABEL_250;
        }

        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        v460 = v448;
        v461 = v459;
        v462 = sub_1E65E65A8();

        v305 = v941;
        v463 = v891;
        if ((v462 & 1) == 0)
        {

          v448 = v461;
          v464 = v937;
LABEL_250:

          v671 = v935;
          v672 = *(v934 + 8);
          v672(v458, v935);
          v673 = *(v936 + 8);
          v673(v890, v464);
          v672(v922, v671);
          v673(v463, v464);
          goto LABEL_277;
        }
      }

      else
      {
        v459 = v940;
        v305 = v941;
        v463 = v891;
        if (v940)
        {
          v448 = v940;
          v464 = v937;
          goto LABEL_250;
        }
      }

      v641 = v890;
      v642 = sub_1E65DB828();
      v643 = v937;
      if (v642)
      {
        v248 = MEMORY[0x1E6948EE0](v922, v458);

        v644 = v935;
        v645 = *(v934 + 8);
        v645(v458, v935);
        v646 = *(v936 + 8);
        v646(v641, v643);
        v645(v922, v644);
        v646(v463, v643);
        goto LABEL_224;
      }

      v693 = v935;
      v694 = *(v934 + 8);
      v694(v458, v935);
      v695 = *(v936 + 8);
      v695(v641, v643);
      v694(v922, v693);
      v695(v463, v643);
      goto LABEL_277;
    case 7u:
      v339 = v869;
      sub_1E61B7384(v239, v869, type metadata accessor for RouteResource);
      v340 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290) + 48);
      v341 = v942;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        (*(v939 + 8))(v339 + v340, v938);
        (*(v936 + 8))(v339, v937);
        goto LABEL_173;
      }

      v342 = v936;
      v343 = v859;
      (*(v936 + 32))(v859, v341, v937);
      v345 = v938;
      v344 = v939;
      v346 = *(v939 + 32);
      v346(v914, v339 + v340, v938);
      v347 = v341 + v340;
      v348 = v838;
      v346(v838, v347, v345);
      v349 = sub_1E65DB828();
      v350 = *(v342 + 8);
      v351 = v339;
      v352 = v937;
      v350(v351, v937);
      if (v349)
      {
        v353 = v914;
        v248 = sub_1E65D7468();
        v354 = *(v344 + 8);
        v354(v348, v345);
        v354(v353, v345);
        v350(v859, v352);
        goto LABEL_149;
      }

      v620 = *(v344 + 8);
      v620(v348, v345);
      v620(v914, v345);
      v350(v343, v352);
      goto LABEL_310;
    case 8u:
      v289 = v866;
      sub_1E61B7384(v239, v866, type metadata accessor for RouteResource);
      v290 = *v289;
      v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v292 = *(v478 + 48);
      v293 = *(v478 + 64);
      v479 = v942;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_109;
      }

      v940 = *v479;
      v941 = v239;
      v480 = v937;
      v481 = *(v936 + 32);
      v481(v895, v289 + v292, v937);
      v482 = *(v939 + 32);
      v483 = v289 + v293;
      v484 = v938;
      v482(v923, v483, v938);
      v481(v892, v479 + v292, v480);
      v485 = v843;
      v482(v843, v479 + v293, v484);
      if (v290)
      {
        v486 = v940;
        if (!v940)
        {
          v305 = v941;
          v306 = v937;
          v307 = v895;
          v490 = v892;
          goto LABEL_252;
        }

        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        v487 = v290;
        v488 = v486;
        v489 = sub_1E65E65A8();

        v305 = v941;
        v306 = v937;
        v307 = v895;
        v490 = v892;
        if ((v489 & 1) == 0)
        {

          v290 = v488;
LABEL_252:

          goto LABEL_275;
        }
      }

      else
      {
        v486 = v940;
        v305 = v941;
        v306 = v937;
        v307 = v895;
        v490 = v892;
        if (v940)
        {
          v290 = v940;
          goto LABEL_252;
        }
      }

      if (sub_1E65DB828())
      {
        v248 = sub_1E65D7468();

        v637 = v938;
        v638 = *(v939 + 8);
        v638(v485, v938);
        v639 = *(v936 + 8);
        v639(v490, v306);
        v640 = &v949;
        goto LABEL_221;
      }

LABEL_275:
      v689 = v938;
      v690 = *(v939 + 8);
      v690(v485, v938);
      v691 = *(v936 + 8);
      v691(v490, v306);
      v692 = &v949;
LABEL_276:
      v690(*(v692 - 32), v689);
      v691(v307, v306);
      goto LABEL_277;
    case 9u:
      v289 = v870;
      sub_1E61B7384(v239, v870, type metadata accessor for RouteResource);
      v290 = *v289;
      v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v292 = *(v291 + 48);
      v293 = *(v291 + 64);
      v294 = v942;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_109:

        (*(v939 + 8))(v289 + v293, v938);
        (*(v936 + 8))(v289 + v292, v937);
        goto LABEL_173;
      }

      v940 = *v294;
      v941 = v239;
      v295 = v937;
      v296 = *(v936 + 32);
      v296(v896, v289 + v292, v937);
      v297 = *(v939 + 32);
      v298 = v289 + v293;
      v299 = v938;
      v297(v924, v298, v938);
      v296(v894, v294 + v292, v295);
      v300 = v844;
      v297(v844, v294 + v293, v299);
      if (v290)
      {
        v301 = v940;
        if (!v940)
        {
          v305 = v941;
          v306 = v937;
          v307 = v896;
          v308 = v894;
          goto LABEL_246;
        }

        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        v302 = v290;
        v303 = v301;
        v304 = sub_1E65E65A8();

        v305 = v941;
        v306 = v937;
        v307 = v896;
        v308 = v894;
        if ((v304 & 1) == 0)
        {

          v290 = v303;
LABEL_246:

LABEL_272:
          v689 = v938;
          v690 = *(v939 + 8);
          v690(v300, v938);
          v691 = *(v936 + 8);
          v691(v308, v306);
          v692 = &v950;
          goto LABEL_276;
        }
      }

      else
      {
        v301 = v940;
        v305 = v941;
        v306 = v937;
        v307 = v896;
        v308 = v894;
        if (v940)
        {
          v290 = v940;
          goto LABEL_246;
        }
      }

      if ((sub_1E65DB828() & 1) == 0)
      {

        goto LABEL_272;
      }

      v248 = sub_1E65D7468();

      v637 = v938;
      v638 = *(v939 + 8);
      v638(v300, v938);
      v639 = *(v936 + 8);
      v639(v308, v306);
      v640 = &v950;
LABEL_221:
      v638(*(v640 - 32), v637);
      v639(v307, v306);
LABEL_224:
      sub_1E61B76D0(v305, type metadata accessor for RouteResource);
      return v248 & 1;
    case 0xAu:
      sub_1E61B7384(v239, v210, type metadata accessor for RouteResource);
      v474 = *v210;
      v473 = v210[1];
      v475 = v942;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_161;
      }

      v476 = *v475;
      v477 = v475[1];
      if (v474 == v476 && v473 == v477)
      {
        goto LABEL_103;
      }

LABEL_194:
      v627 = sub_1E65E6C18();

      if ((v627 & 1) == 0)
      {
        goto LABEL_310;
      }

      goto LABEL_227;
    case 0xBu:
      sub_1E61B7384(v239, v207, type metadata accessor for RouteResource);
      v243 = *v207;
      v242 = v207[1];
      v244 = v942;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 0xCu:
      v278 = v239;
      v279 = v864;
      sub_1E61B7384(v239, v864, type metadata accessor for RouteResource);
      v281 = *v279;
      v280 = *(v279 + 8);
      v282 = *(v279 + 16);
      v283 = *(v279 + 24);
      v284 = v942;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_1E5F94E00(v282, v283);

        v239 = v278;
        goto LABEL_173;
      }

      v285 = *v284;
      v286 = v284[1];
      v287 = v284[2];
      v288 = *(v284 + 24);
      if (v281 == v285 && v280 == v286)
      {
      }

      else
      {
        v612 = sub_1E65E6C18();

        if ((v612 & 1) == 0)
        {
          sub_1E5F94E00(v287, v288);
          sub_1E5F94E00(v282, v283);
LABEL_231:
          sub_1E61B76D0(v278, type metadata accessor for RouteResource);
          goto LABEL_174;
        }
      }

      *&v946 = v282;
      BYTE8(v946) = v283;
      v943 = v287;
      LOBYTE(v944) = v288;
      v248 = _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v946, &v943);
      sub_1E5F94E00(v287, v288);
      sub_1E5F94E00(v282, v283);
      goto LABEL_181;
    case 0xDu:
      v443 = v865;
      sub_1E61B7384(v239, v865, type metadata accessor for RouteResource);
      v243 = *v443;
      v242 = v443[1];
      v244 = v942;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_89;
      }

      goto LABEL_161;
    case 0xEu:
      v251 = v873;
      sub_1E61B7384(v239, v873, type metadata accessor for RouteResource);
      v252 = v942;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v253 = v898;
        v254 = v840;
        v255 = v899;
        (*(v898 + 32))(v840, v252, v899);
        v256 = MEMORY[0x1E6943110](v251, v254);
        goto LABEL_140;
      }

      (*(v898 + 8))(v251, v899);
      goto LABEL_173;
    case 0xFu:
      v325 = v868;
      sub_1E61B7384(v239, v868, type metadata accessor for RouteResource);
      v243 = *v325;
      v242 = v325[1];
      v244 = v942;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 0x10u:
      v250 = v871;
      sub_1E61B7384(v239, v871, type metadata accessor for RouteResource);
      v243 = *v250;
      v242 = v250[1];
      v244 = v942;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 0x11u:
      v387 = v875;
      sub_1E61B7384(v239, v875, type metadata accessor for RouteResource);
      v389 = *v387;
      v388 = *(v387 + 1);
      v390 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      v391 = v942;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        (*(v939 + 8))(&v387[v390], v938);
LABEL_161:

LABEL_173:
        sub_1E5DFE50C(v239, &qword_1ED0763A0, &qword_1E65F5438);
        goto LABEL_174;
      }

      v941 = v239;
      v393 = *v391;
      v392 = v391[1];
      v394 = v939;
      v395 = *(v939 + 32);
      v396 = &v387[v390];
      v397 = v391;
      v398 = v938;
      v395(v897, v396, v938);
      v399 = v397 + v390;
      v400 = v842;
      v395(v842, v399, v398);
      if (v389 == v393 && v388 == v392)
      {

        v401 = v941;
      }

      else
      {
        v624 = sub_1E65E6C18();

        v401 = v941;
        if ((v624 & 1) == 0)
        {
          v666 = *(v394 + 8);
          v666(v400, v398);
          v666(v897, v398);
          sub_1E61B76D0(v401, type metadata accessor for RouteResource);
LABEL_174:
          v248 = 0;
          return v248 & 1;
        }
      }

      v625 = v897;
      v248 = sub_1E65D7468();
      v626 = *(v394 + 8);
      v626(v400, v398);
      v626(v625, v398);
      sub_1E61B76D0(v401, type metadata accessor for RouteResource);
      return v248 & 1;
    case 0x12u:
      v465 = v872;
      sub_1E61B7384(v239, v872, type metadata accessor for RouteResource);
      v467 = *v465;
      v466 = *(v465 + 8);
      v468 = *(v465 + 16);
      v469 = v942;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        sub_1E5F94E14();
        goto LABEL_173;
      }

      v470 = *v469;
      v471 = v469[1];
      v278 = v239;
      v472 = *(v469 + 16);
      *&v946 = v467;
      *(&v946 + 1) = v466;
      LOBYTE(v947) = v468;
      v943 = v470;
      v944 = v471;
      v945 = v472;
      v248 = _s10Blackbeard17QueuedSessionTypeO2eeoiySbAC_ACtFZ_0(&v946, &v943);
      sub_1E5F94E14();
      sub_1E5F94E14();
LABEL_181:
      sub_1E61B76D0(v278, type metadata accessor for RouteResource);
      return v248 & 1;
    case 0x13u:
      v550 = v876;
      sub_1E61B7384(v239, v876, type metadata accessor for RouteResource);
      v551 = v942;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v553 = v938;
        v552 = v939;
        v554 = v839;
        (*(v939 + 32))(v839, v551, v938);
        v248 = sub_1E65D7468();
        v555 = *(v552 + 8);
        v555(v554, v553);
        v555(v550, v553);
        goto LABEL_149;
      }

      (*(v939 + 8))(v550, v938);
      goto LABEL_173;
    case 0x14u:
      v402 = v239;
      v403 = v874;
      sub_1E61B7384(v239, v874, type metadata accessor for RouteResource);
      v404 = *v403;
      v405 = *(v403 + 8);
      v407 = *(v403 + 16);
      v406 = *(v403 + 24);
      v408 = *(v403 + 32);
      v409 = *(v403 + 40);
      v410 = *(v403 + 48);
      v411 = *(v403 + 56);
      v412 = v942;
      if (swift_getEnumCaseMultiPayload() != 20)
      {

        v239 = v402;
        goto LABEL_173;
      }

      LODWORD(v940) = v409;
      v413 = v412;
      v415 = *(v412 + 1);
      v414 = *(v412 + 2);
      v416 = *(v412 + 3);
      v417 = *(v413 + 4);
      v418 = *(v413 + 40);
      v419 = v413[6];
      v420 = *(v413 + 7);
      if (v405)
      {
        if (v415)
        {
          v939 = v417;
          LODWORD(v938) = v418;
          v941 = v420;
          if (v404 == *v942 && v405 == v415)
          {

            goto LABEL_254;
          }

          v674 = sub_1E65E6C18();

          if (v674)
          {
LABEL_254:
            if (v407 == v414 && v406 == v416)
            {

              goto LABEL_258;
            }

            v675 = sub_1E65E6C18();

            if (v675)
            {
LABEL_258:
              v676 = v402;
              if (v408 == v939)
              {
                v677 = sub_1E65D89A8();
                v679 = v678;
                if (v677 == sub_1E65D89A8() && v679 == v680)
                {

                  goto LABEL_299;
                }

                v708 = sub_1E65E6C18();

                if (v708)
                {
LABEL_299:
                  if (v410 == v419)
                  {
                    sub_1E5DEF738(0, &qword_1ED076218, 0x1E69E58C0);
                    v709 = v941;
                    v248 = sub_1E65E65A8();

                    sub_1E61B76D0(v676, type metadata accessor for RouteResource);
                    return v248 & 1;
                  }
                }
              }

              sub_1E61B76D0(v676, type metadata accessor for RouteResource);
              goto LABEL_174;
            }

LABEL_289:
            sub_1E61B76D0(v402, type metadata accessor for RouteResource);
            goto LABEL_174;
          }
        }

        else
        {
          v670 = v420;
        }
      }

      else
      {
        v939 = v417;
        LODWORD(v938) = v418;
        v941 = v420;
        if (!v415)
        {
          goto LABEL_254;
        }
      }

      goto LABEL_289;
    case 0x15u:
      v428 = v239;
      v429 = v878;
      sub_1E61B7384(v239, v878, type metadata accessor for RouteResource);
      v431 = *v429;
      v430 = *(v429 + 8);
      v432 = *(v429 + 24);
      v941 = *(v429 + 16);
      v433 = *(v429 + 32);
      v434 = *(v429 + 40);
      v435 = *(v429 + 48);
      v436 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v437 = v942;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        sub_1E5DFE50C(v429 + v436, &unk_1ED077780, &unk_1E66097F0);

        v239 = v428;
        goto LABEL_173;
      }

      v938 = v433;
      LODWORD(v936) = v434;
      v439 = *v437;
      v438 = *(v437 + 1);
      v440 = *(v437 + 3);
      v939 = *(v437 + 2);
      v940 = v440;
      v937 = *(v437 + 4);
      LODWORD(v935) = *(v437 + 40);
      v441 = v437[6];
      sub_1E5FAB460(v429 + v436, v901, &unk_1ED077780, &unk_1E66097F0);
      sub_1E5FAB460(v437 + v436, v900, &unk_1ED077780, &unk_1E66097F0);
      v239 = v428;
      if (v430)
      {
        if (!v438)
        {

          v442 = v900;
LABEL_292:
          sub_1E5DFE50C(v442, &unk_1ED077780, &unk_1E66097F0);
          v658 = v901;
LABEL_308:
          v659 = &unk_1ED077780;
          v660 = &unk_1E66097F0;
          goto LABEL_309;
        }

        if (v431 == *&v439 && v430 == v438)
        {

          v442 = v900;
LABEL_263:
          if (v941 == v939 && v432 == v940)
          {

            v682 = v901;
            v683 = v830;
          }

          else
          {
            v684 = sub_1E65E6C18();

            v682 = v901;
            v683 = v830;
            if ((v684 & 1) == 0)
            {
              goto LABEL_307;
            }
          }

          if (v938 == v937)
          {
            v685 = sub_1E65D89A8();
            v687 = v686;
            if (v685 == sub_1E65D89A8() && v687 == v688)
            {

              goto LABEL_303;
            }

            v710 = sub_1E65E6C18();

            if (v710)
            {
LABEL_303:
              if (v435 == v441)
              {
                v711 = *(v815 + 48);
                v712 = v820;
                sub_1E5DFD1CC(v682, v820, &unk_1ED077780, &unk_1E66097F0);
                sub_1E5DFD1CC(v442, v712 + v711, &unk_1ED077780, &unk_1E66097F0);
                v713 = *(v818 + 48);
                v714 = v816;
                if (v713(v712, 1, v816) == 1)
                {
                  sub_1E5DFE50C(v442, &unk_1ED077780, &unk_1E66097F0);
                  v715 = v820;
                  sub_1E5DFE50C(v682, &unk_1ED077780, &unk_1E66097F0);
                  if (v713(v715 + v711, 1, v714) == 1)
                  {
                    sub_1E5DFE50C(v715, &unk_1ED077780, &unk_1E66097F0);
                    goto LABEL_227;
                  }
                }

                else
                {
                  sub_1E5DFD1CC(v712, v683, &unk_1ED077780, &unk_1E66097F0);
                  if (v713(v712 + v711, 1, v714) != 1)
                  {
                    v746 = v818;
                    v747 = v712 + v711;
                    v748 = v808;
                    (*(v818 + 32))(v808, v747, v714);
                    sub_1E61B7730(&qword_1ED0763C8, MEMORY[0x1E69CC278]);
                    LODWORD(v942) = sub_1E65E5B98();
                    v749 = *(v746 + 8);
                    v749(v748, v714);
                    sub_1E5DFE50C(v442, &unk_1ED077780, &unk_1E66097F0);
                    sub_1E5DFE50C(v682, &unk_1ED077780, &unk_1E66097F0);
                    v749(v683, v714);
                    sub_1E5DFE50C(v712, &unk_1ED077780, &unk_1E66097F0);
                    if (v942)
                    {
LABEL_227:
                      v652 = v239;
LABEL_228:
                      sub_1E61B76D0(v652, type metadata accessor for RouteResource);
                      v248 = 1;
                      return v248 & 1;
                    }

LABEL_310:
                    sub_1E61B76D0(v239, type metadata accessor for RouteResource);
                    goto LABEL_174;
                  }

                  sub_1E5DFE50C(v442, &unk_1ED077780, &unk_1E66097F0);
                  v715 = v820;
                  sub_1E5DFE50C(v682, &unk_1ED077780, &unk_1E66097F0);
                  (*(v818 + 8))(v683, v714);
                }

                v659 = &qword_1ED076380;
                v660 = &qword_1E65F5418;
                v658 = v715;
LABEL_309:
                sub_1E5DFE50C(v658, v659, v660);
                goto LABEL_310;
              }
            }
          }

LABEL_307:
          sub_1E5DFE50C(v442, &unk_1ED077780, &unk_1E66097F0);
          v658 = v682;
          goto LABEL_308;
        }

        v681 = sub_1E65E6C18();

        v442 = v900;
        if (v681)
        {
          goto LABEL_263;
        }
      }

      else
      {
        v442 = v900;
        if (!v438)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_292;
    case 0x16u:
      v517 = v889;
      sub_1E61B7384(v239, v889, type metadata accessor for RouteResource);
      v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v519 = v518[12];
      v520 = v518[16];
      v521 = *(v517 + v520);
      v522 = *(v517 + v520 + 8);
      v936 = v518[20];
      v937 = v519;
      v523 = v518[24];
      v524 = *(v517 + v523 + 8);
      v933 = *(v517 + v523);
      v934 = v521;
      v525 = v518[28];
      v526 = *(v517 + v525 + 8);
      v932 = *(v517 + v525);
      v527 = v518[32];
      v935 = v518[36];
      v528 = v942;
      if (swift_getEnumCaseMultiPayload() != 22)
      {

        sub_1E5DFE50C(v517 + v935, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v517 + v527, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v517 + v936, &qword_1ED076220, &unk_1E65FA4A0);
        (*(v939 + 8))(v517 + v937, v938);
        sub_1E6009FC0(v517);
        goto LABEL_173;
      }

      v931 = v522;
      v927 = v524;
      v940 = v526;
      v941 = v239;
      v529 = *(v528 + v520 + 8);
      v925 = *(v528 + v520);
      v930 = v529;
      v530 = *(v528 + v523 + 8);
      v924 = *(v528 + v523);
      v929 = v530;
      v531 = *(v528 + v525 + 8);
      v923 = *(v528 + v525);
      v928 = v531;
      v532 = *(v528 + 1);
      v946 = *v528;
      v947 = v532;
      v948 = v528[4];
      v533 = v938;
      v534 = *(v939 + 32);
      v535 = v937;
      v534(v926, v517 + v937, v938);
      v536 = v936;
      sub_1E5FAB460(v517 + v936, v920, &qword_1ED076220, &unk_1E65FA4A0);
      sub_1E5FAB460(v517 + v527, v917, &unk_1ED077770, &unk_1E660C190);
      v537 = v935;
      sub_1E5FAB460(v517 + v935, v916, &unk_1ED07B500, &qword_1E65F0EE0);
      v538 = v528 + v535;
      v539 = v854;
      v534(v854, v538, v533);
      v540 = v856;
      sub_1E5FAB460(v528 + v536, v856, &qword_1ED076220, &unk_1E65FA4A0);
      v541 = v852;
      sub_1E5FAB460(v528 + v527, v852, &unk_1ED077770, &unk_1E660C190);
      v542 = v853;
      sub_1E5FAB460(v528 + v537, v853, &unk_1ED07B500, &qword_1E65F0EE0);
      LOBYTE(v537) = MEMORY[0x1E694E230](v517, &v946);
      sub_1E6009FC0(v517);
      if (v537)
      {
        v543 = v930;
        v544 = v928;
        v545 = v929;
        v546 = v926;
        if (sub_1E65D7468())
        {
          v547 = v939;
          if (v931)
          {
            v548 = v828;
            v549 = v827;
            if (v543)
            {
              if (v934 == v925 && v931 == v543)
              {

                goto LABEL_321;
              }

              v727 = sub_1E65E6C18();

              if (v727)
              {
LABEL_321:
                v728 = *(v817 + 48);
                sub_1E5DFD1CC(v920, v548, &qword_1ED076220, &unk_1E65FA4A0);
                sub_1E5DFD1CC(v856, v548 + v728, &qword_1ED076220, &unk_1E65FA4A0);
                v729 = *(v821 + 48);
                if (v729(v548, 1, v549) == 1)
                {
                  if (v729(v548 + v728, 1, v549) == 1)
                  {
                    sub_1E5DFE50C(v548, &qword_1ED076220, &unk_1E65FA4A0);
                    v730 = v940;
                    goto LABEL_340;
                  }
                }

                else
                {
                  v731 = v814;
                  sub_1E5DFD1CC(v548, v814, &qword_1ED076220, &unk_1E65FA4A0);
                  if (v729(v548 + v728, 1, v549) != 1)
                  {
                    v741 = v821;
                    v742 = v548 + v728;
                    v743 = v809;
                    (*(v821 + 32))(v809, v742, v549);
                    sub_1E61B7730(&qword_1ED0763C0, MEMORY[0x1E69CD4E0]);
                    LODWORD(v942) = sub_1E65E5B98();
                    v744 = *(v741 + 8);
                    v744(v743, v549);
                    v744(v731, v549);
                    sub_1E5DFE50C(v548, &qword_1ED076220, &unk_1E65FA4A0);
                    v730 = v940;
                    if ((v942 & 1) == 0)
                    {

                      goto LABEL_371;
                    }

LABEL_340:
                    if (v927)
                    {
                      if (v545)
                      {
                        if (v933 == v924 && v927 == v545)
                        {

                          goto LABEL_359;
                        }

                        v751 = sub_1E65E6C18();

                        if (v751)
                        {
LABEL_359:
                          if (v730)
                          {
                            if (v544)
                            {
                              if (v932 == v923 && v730 == v544)
                              {

                                goto LABEL_378;
                              }

                              v765 = sub_1E65E6C18();

                              if (v765)
                              {
LABEL_378:
                                v766 = *(v802 + 48);
                                v767 = v807;
                                sub_1E5DFD1CC(v917, v807, &unk_1ED077770, &unk_1E660C190);
                                sub_1E5DFD1CC(v541, v767 + v766, &unk_1ED077770, &unk_1E660C190);
                                v768 = *(v804 + 48);
                                v769 = v805;
                                if (v768(v767, 1, v805) == 1)
                                {
                                  if (v768(v767 + v766, 1, v769) == 1)
                                  {
                                    sub_1E5DFE50C(v807, &unk_1ED077770, &unk_1E660C190);
                                    goto LABEL_390;
                                  }
                                }

                                else
                                {
                                  sub_1E5DFD1CC(v767, v801, &unk_1ED077770, &unk_1E660C190);
                                  if (v768(v767 + v766, 1, v769) != 1)
                                  {
                                    v771 = v804;
                                    v772 = v807;
                                    v773 = v807 + v766;
                                    v774 = v795;
                                    v775 = v805;
                                    (*(v804 + 32))(v795, v773, v805);
                                    sub_1E61B7730(&qword_1ED0763B8, MEMORY[0x1E69CD550]);
                                    v776 = v801;
                                    v777 = sub_1E65E5B98();
                                    v778 = *(v771 + 8);
                                    v778(v774, v775);
                                    v778(v776, v775);
                                    sub_1E5DFE50C(v772, &unk_1ED077770, &unk_1E660C190);
                                    if (v777)
                                    {
LABEL_390:
                                      v779 = *(v796 + 48);
                                      v780 = v803;
                                      sub_1E5DFD1CC(v916, v803, &unk_1ED07B500, &qword_1E65F0EE0);
                                      sub_1E5DFD1CC(v853, v780 + v779, &unk_1ED07B500, &qword_1E65F0EE0);
                                      v781 = *(v798 + 48);
                                      if (v781(v780, 1, v799) == 1)
                                      {
                                        sub_1E5DFE50C(v853, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v852, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v856, &qword_1ED076220, &unk_1E65FA4A0);
                                        v782 = v938;
                                        v783 = *(v939 + 8);
                                        v783(v854, v938);
                                        sub_1E5DFE50C(v916, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v917, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v920, &qword_1ED076220, &unk_1E65FA4A0);
                                        v783(v926, v782);
                                        sub_1E6009FC0(&v946);
                                        if (v781(v803 + v779, 1, v799) == 1)
                                        {
                                          sub_1E5DFE50C(v803, &unk_1ED07B500, &qword_1E65F0EE0);
LABEL_397:
                                          v652 = v941;
                                          goto LABEL_228;
                                        }
                                      }

                                      else
                                      {
                                        v784 = v803;
                                        sub_1E5DFD1CC(v803, v797, &unk_1ED07B500, &qword_1E65F0EE0);
                                        if (v781(v784 + v779, 1, v799) != 1)
                                        {
                                          v787 = v798;
                                          v788 = v794;
                                          v789 = v799;
                                          (*(v798 + 32))(v794, v803 + v779, v799);
                                          sub_1E61B7730(&qword_1ED0763B0, MEMORY[0x1E69CAF60]);
                                          v790 = v797;
                                          LODWORD(v942) = sub_1E65E5B98();
                                          v791 = *(v787 + 8);
                                          v791(v788, v789);
                                          sub_1E5DFE50C(v853, &unk_1ED07B500, &qword_1E65F0EE0);
                                          sub_1E5DFE50C(v852, &unk_1ED077770, &unk_1E660C190);
                                          sub_1E5DFE50C(v856, &qword_1ED076220, &unk_1E65FA4A0);
                                          v792 = v938;
                                          v793 = *(v939 + 8);
                                          v793(v854, v938);
                                          sub_1E5DFE50C(v916, &unk_1ED07B500, &qword_1E65F0EE0);
                                          sub_1E5DFE50C(v917, &unk_1ED077770, &unk_1E660C190);
                                          sub_1E5DFE50C(v920, &qword_1ED076220, &unk_1E65FA4A0);
                                          v793(v926, v792);
                                          sub_1E6009FC0(&v946);
                                          v791(v790, v789);
                                          sub_1E5DFE50C(v803, &unk_1ED07B500, &qword_1E65F0EE0);
                                          if (v942)
                                          {
                                            goto LABEL_397;
                                          }

LABEL_376:
                                          sub_1E61B76D0(v941, type metadata accessor for RouteResource);
                                          goto LABEL_174;
                                        }

                                        sub_1E5DFE50C(v853, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v852, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v856, &qword_1ED076220, &unk_1E65FA4A0);
                                        v785 = v938;
                                        v786 = *(v939 + 8);
                                        v786(v854, v938);
                                        sub_1E5DFE50C(v916, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v917, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v920, &qword_1ED076220, &unk_1E65FA4A0);
                                        v786(v926, v785);
                                        sub_1E6009FC0(&v946);
                                        (*(v798 + 8))(v797, v799);
                                      }

                                      sub_1E5DFE50C(v803, &qword_1ED076368, &qword_1E65F5400);
                                      goto LABEL_376;
                                    }

                                    goto LABEL_384;
                                  }

                                  (*(v804 + 8))(v801, v805);
                                }

                                sub_1E5DFE50C(v807, &qword_1ED076370, &qword_1E65F5408);
LABEL_384:
                                sub_1E5DFE50C(v853, &unk_1ED07B500, &qword_1E65F0EE0);
                                v762 = v852;
                                goto LABEL_373;
                              }

LABEL_372:
                              sub_1E5DFE50C(v542, &unk_1ED07B500, &qword_1E65F0EE0);
                              v762 = v541;
LABEL_373:
                              sub_1E5DFE50C(v762, &unk_1ED077770, &unk_1E660C190);
                              sub_1E5DFE50C(v856, &qword_1ED076220, &unk_1E65FA4A0);
                              v745 = v939;
                              goto LABEL_374;
                            }
                          }

                          else if (!v544)
                          {
                            goto LABEL_378;
                          }

LABEL_371:

                          goto LABEL_372;
                        }
                      }

                      else
                      {
                      }

                      goto LABEL_371;
                    }

                    if (v545)
                    {

                      goto LABEL_371;
                    }

                    goto LABEL_359;
                  }

                  (*(v821 + 8))(v731, v549);
                }

                sub_1E5DFE50C(v548, &qword_1ED076378, &qword_1E65F5410);
                goto LABEL_372;
              }

              v704 = v547;
            }

            else
            {
              v704 = v939;
            }
          }

          else
          {
            v548 = v828;
            v549 = v827;
            if (!v543)
            {
              goto LABEL_321;
            }

            v704 = v939;
          }

          sub_1E5DFE50C(v542, &unk_1ED07B500, &qword_1E65F0EE0);
          sub_1E5DFE50C(v541, &unk_1ED077770, &unk_1E660C190);
          sub_1E5DFE50C(v856, &qword_1ED076220, &unk_1E65FA4A0);
          v745 = v704;
LABEL_374:
          v763 = *(v745 + 8);
          v764 = v938;
          v763(v854, v938);
          sub_1E5DFE50C(v916, &unk_1ED07B500, &qword_1E65F0EE0);
          sub_1E5DFE50C(v917, &unk_1ED077770, &unk_1E660C190);
          sub_1E5DFE50C(v920, &qword_1ED076220, &unk_1E65FA4A0);
          v763(v926, v764);
          goto LABEL_375;
        }

        sub_1E5DFE50C(v542, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v541, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v540, &qword_1ED076220, &unk_1E65FA4A0);
        v667 = *(v939 + 8);
        v668 = v938;
        v667(v539, v938);
        sub_1E5DFE50C(v916, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v917, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v920, &qword_1ED076220, &unk_1E65FA4A0);
        v667(v546, v668);
      }

      else
      {

        sub_1E5DFE50C(v542, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v541, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v540, &qword_1ED076220, &unk_1E65FA4A0);
        v628 = *(v939 + 8);
        v629 = v938;
        v628(v539, v938);
        sub_1E5DFE50C(v916, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v917, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v920, &qword_1ED076220, &unk_1E65FA4A0);
        v628(v926, v629);
      }

LABEL_375:
      sub_1E6009FC0(&v946);
      goto LABEL_376;
    case 0x17u:
      v556 = v883;
      sub_1E61B7384(v239, v883, type metadata accessor for RouteResource);
      v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v558 = v557[12];
      v559 = v557[16];
      v561 = *(v556 + v559);
      v560 = *(v556 + v559 + 8);
      v562 = v557[20];
      v563 = *(v556 + v562);
      v564 = v942;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        sub_1E61B73EC(v561, v560);
        (*(v929 + 8))(v556 + v558, v925);
        (*(v913 + 8))(v556, v928);
        goto LABEL_173;
      }

      v939 = v561;
      v940 = v560;
      LODWORD(v936) = v563;
      v941 = v239;
      v565 = *(v564 + v559);
      v937 = *(v564 + v559 + 8);
      v938 = v565;
      LODWORD(v935) = *(v564 + v562);
      v566 = v913;
      v567 = v861;
      v568 = v928;
      (*(v913 + 32))(v861, v564, v928);
      v569 = v929;
      v570 = *(v929 + 32);
      v571 = v925;
      v570(v927, v556 + v558, v925);
      v572 = v564 + v558;
      v573 = v855;
      v570(v855, v572, v571);
      v574 = MEMORY[0x1E694D1D0](v556, v567);
      v575 = *(v566 + 8);
      v575(v556, v568);
      if ((v574 & 1) == 0)
      {
        sub_1E61B73EC(v938, v937);
        sub_1E61B73EC(v939, v940);
        v630 = *(v569 + 8);
        v630(v573, v571);
        v630(v927, v571);
        v575(v567, v568);
        goto LABEL_376;
      }

      v576 = v937;
      v577 = v938;
      sub_1E61B7730(&qword_1ED0763A8, MEMORY[0x1E69CD868]);
      v578 = v927;
      sub_1E65E5E98();
      sub_1E65E5E98();
      if (v946 != v943)
      {
        sub_1E61B73EC(v577, v576);
        sub_1E61B73EC(v939, v940);
        v669 = *(v929 + 8);
        v669(v573, v571);
        v669(v578, v571);
        v575(v861, v928);
        goto LABEL_376;
      }

      v580 = v939;
      v579 = v940;
      v581 = sub_1E65D8CC8();
      v583 = v582;
      sub_1E61B73EC(v580, v579);
      v584 = v576;
      v585 = sub_1E65D8CC8();
      v587 = v586;
      sub_1E61B73EC(v577, v584);
      if (v581 == v585 && v583 == v587)
      {

        v278 = v941;
        v588 = v929;
        v589 = v928;
        v590 = v861;
      }

      else
      {
        v696 = sub_1E65E6C18();

        v278 = v941;
        v588 = v929;
        v589 = v928;
        v590 = v861;
        if ((v696 & 1) == 0)
        {
          v725 = *(v929 + 8);
          v726 = v925;
          v725(v855, v925);
          v725(v927, v726);
          v575(v590, v589);
          goto LABEL_231;
        }
      }

      v697 = sub_1E65DA218();
      v699 = v698;
      v700 = sub_1E65DA218();
      v702 = v925;
      if (v697 == v700 && v699 == v701)
      {

        v703 = *(v588 + 8);
        v703(v855, v702);
        v703(v927, v702);
        v575(v590, v589);
      }

      else
      {
        v705 = v590;
        v706 = sub_1E65E6C18();

        v707 = *(v588 + 8);
        v707(v855, v702);
        v707(v927, v702);
        v575(v705, v589);
        if ((v706 & 1) == 0)
        {
          goto LABEL_231;
        }
      }

      v652 = v278;
      goto LABEL_228;
    case 0x18u:
      v311 = v879;
      sub_1E61B7384(v239, v879, type metadata accessor for RouteResource);
      v312 = *v311;
      v313 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v314 = v942;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        (*(v936 + 8))(v311 + v313, v937);

        goto LABEL_173;
      }

      v315 = *v314;
      v316 = v936;
      v317 = *(v936 + 32);
      v318 = v311 + v313;
      v319 = v836;
      v320 = v937;
      v317(v836, v318, v937);
      v321 = v314 + v313;
      v322 = v835;
      v317(v835, v321, v320);
      sub_1E5DEF738(0, &qword_1ED076218, 0x1E69E58C0);
      v323 = sub_1E65E65A8();

      if (v323)
      {
        v248 = sub_1E65DB828();
        v324 = *(v316 + 8);
        v324(v322, v320);
        v324(v319, v320);
        goto LABEL_149;
      }

      v613 = *(v316 + 8);
      v613(v322, v320);
      v613(v319, v320);
      goto LABEL_310;
    case 0x19u:
      v309 = v877;
      sub_1E61B7384(v239, v877, type metadata accessor for RouteResource);
      v310 = v942;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_173;
      }

      v248 = *v309 == *v310;
      goto LABEL_149;
    case 0x1Au:
      v245 = v880;
      sub_1E61B7384(v239, v880, type metadata accessor for RouteResource);
      v609 = v942;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v247 = v845;
        sub_1E61B7400(v609, v845, MEMORY[0x1E69CD768]);
        v248 = MEMORY[0x1E694CCA0](v245, v247);
        v249 = MEMORY[0x1E69CD768];
        goto LABEL_148;
      }

      v611 = MEMORY[0x1E69CD768];
      goto LABEL_178;
    case 0x1Bu:
      v245 = v881;
      sub_1E61B7384(v239, v881, type metadata accessor for RouteResource);
      v246 = v942;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v247 = v846;
        sub_1E61B7400(v246, v846, type metadata accessor for PlaylistType);
        v248 = _s10Blackbeard12PlaylistTypeO2eeoiySbAC_ACtFZ_0(v245, v247);
        v249 = type metadata accessor for PlaylistType;
LABEL_148:
        v610 = v249;
        sub_1E61B76D0(v247, v249);
        sub_1E61B76D0(v245, v610);
        goto LABEL_149;
      }

      v611 = type metadata accessor for PlaylistType;
LABEL_178:
      sub_1E61B76D0(v245, v611);
      goto LABEL_173;
    case 0x1Cu:
      v251 = v882;
      sub_1E61B7384(v239, v882, type metadata accessor for RouteResource);
      v591 = v942;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        (*(v931 + 8))(v251, v932);
        goto LABEL_173;
      }

      v253 = v931;
      v254 = v832;
      v255 = v932;
      (*(v931 + 32))(v832, v591, v932);
      v256 = sub_1E65D76D8();
LABEL_140:
      v248 = v256;
      v592 = *(v253 + 8);
      v592(v254, v255);
      v592(v251, v255);
      goto LABEL_149;
    case 0x1Du:
      v593 = v884;
      sub_1E61B7384(v239, v884, type metadata accessor for RouteResource);
      v594 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v595 = v942;
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        (*(v903 + 8))(v593 + v594, v904);
        (*(v902 + 8))(v593, v933);
        goto LABEL_173;
      }

      v596 = v902;
      v597 = v860;
      (*(v902 + 32))(v860, v595, v933);
      v598 = v903;
      v599 = *(v903 + 32);
      v600 = v904;
      v599(v915, v593 + v594, v904);
      v601 = v595 + v594;
      v602 = v847;
      v599(v847, v601, v600);
      v603 = MEMORY[0x1E694CFE0](v593, v597);
      v604 = *(v596 + 8);
      v605 = v593;
      v606 = v933;
      v604(v605, v933);
      if (v603)
      {
        v607 = v915;
        v248 = MEMORY[0x1E693F820](v915, v602);
        v608 = *(v598 + 8);
        v608(v602, v600);
        v608(v607, v600);
        v604(v860, v606);
        goto LABEL_149;
      }

      v631 = *(v598 + 8);
      v631(v602, v600);
      v631(v915, v600);
      v604(v597, v606);
      goto LABEL_310;
    case 0x1Eu:
      v491 = v886;
      sub_1E61B7384(v239, v886, type metadata accessor for RouteResource);
      v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v493 = *(v492 + 48);
      v494 = *(v491 + v493);
      v495 = *(v492 + 64);
      v496 = *(v491 + v495);
      v497 = v942;
      if (swift_getEnumCaseMultiPayload() != 30)
      {

        (*(v907 + 8))(v491, v908);
        goto LABEL_173;
      }

      v941 = v496;
      v498 = *(v497 + v493);
      v499 = *(v497 + v495);
      v500 = v907;
      v501 = v848;
      v502 = v908;
      (*(v907 + 32))(v848, v497, v908);
      v503 = sub_1E65E56A8();
      v504 = *(v500 + 8);
      v504(v491, v502);
      if ((v503 & 1) == 0)
      {
        goto LABEL_167;
      }

      v505 = sub_1E63DA488(v494, v498);
      goto LABEL_116;
    case 0x1Fu:
      v377 = v885;
      sub_1E61B7384(v239, v885, type metadata accessor for RouteResource);
      v378 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      v379 = *(v377 + v378);
      v380 = v942;
      if (swift_getEnumCaseMultiPayload() != 31)
      {

        (*(v905 + 8))(v377, v906);
        goto LABEL_173;
      }

      v381 = *(v380 + v378);
      v382 = v905;
      v383 = v849;
      v384 = v906;
      (*(v905 + 32))(v849, v380, v906);
      v385 = MEMORY[0x1E6941D00](v377, v383);
      v386 = *(v382 + 8);
      v386(v377, v384);
      if (v385)
      {
        v248 = sub_1E63DA838(v379, v381);

        v386(v383, v384);
        goto LABEL_149;
      }

      v386(v383, v384);

      goto LABEL_310;
    case 0x20u:
      v506 = v888;
      sub_1E61B7384(v239, v888, type metadata accessor for RouteResource);
      v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v508 = *(v507 + 48);
      v509 = *(v506 + v508);
      v510 = *(v507 + 64);
      v511 = *(v506 + v510);
      v512 = v942;
      if (swift_getEnumCaseMultiPayload() != 32)
      {

        (*(v911 + 8))(v506, v912);
        goto LABEL_173;
      }

      v941 = v511;
      v513 = *(v512 + v508);
      v499 = *(v512 + v510);
      v514 = v911;
      v501 = v851;
      v502 = v912;
      (*(v911 + 32))(v851, v512, v912);
      v515 = MEMORY[0x1E694D2C0](v506, v501);
      v504 = *(v514 + 8);
      v504(v506, v502);
      if ((v515 & 1) == 0)
      {
LABEL_167:
        v504(v501, v502);

LABEL_197:

        goto LABEL_310;
      }

      v505 = sub_1E63DA838(v509, v513);
LABEL_116:
      v516 = v505;

      if ((v516 & 1) == 0)
      {
        v504(v501, v502);
        goto LABEL_197;
      }

      v248 = sub_1E63DA838(v941, v499);

      v504(v501, v502);
LABEL_149:
      sub_1E61B76D0(v239, type metadata accessor for RouteResource);
      return v248 & 1;
    case 0x21u:
      v257 = v887;
      sub_1E61B7384(v239, v887, type metadata accessor for RouteResource);
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v259 = *(v258 + 48);
      v260 = *(v257 + v259);
      v261 = *(v258 + 64);
      v262 = *(v257 + v261);
      v263 = v942;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        (*(v909 + 8))(v257, v910);
        goto LABEL_173;
      }

      LODWORD(v941) = *(v263 + v259);
      v264 = *(v263 + v261);
      v265 = v909;
      v266 = v850;
      v267 = v910;
      (*(v909 + 32))(v850, v263, v910);
      v268 = MEMORY[0x1E6940A30](v257, v266);
      v269 = *(v265 + 8);
      v269(v266, v267);
      v269(v257, v267);
      if ((v268 & 1) != 0 && v260 == v941)
      {
        sub_1E61B76D0(v239, type metadata accessor for RouteResource);
        v248 = v262 ^ v264 ^ 1;
        return v248 & 1;
      }

      goto LABEL_310;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() == 34)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() == 35)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() == 37)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    default:
      sub_1E61B7384(v239, v234, type metadata accessor for RouteResource);
      v243 = *v234;
      v242 = v234[1];
      v244 = v942;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_161;
      }

LABEL_89:
      v444 = *v244;
      v445 = v244[1];
      if (v243 == v444 && v242 == v445)
      {
LABEL_103:

        goto LABEL_227;
      }

      v446 = sub_1E65E6C18();

      if (v446)
      {
        goto LABEL_227;
      }

      goto LABEL_310;
  }
}

uint64_t sub_1E61B7384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61B73EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_1E61B7400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E61B74B0(uint64_t a1)
{
  if (!qword_1EE2D7190)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077760, &unk_1E66011D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072B60, &unk_1E65FA490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0762B0, &qword_1E65F52F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077750, &unk_1E66011C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0762B8, &qword_1E65F52F8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D7190);
    }
  }
}

uint64_t sub_1E61B767C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E61B76D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61B7730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61B777C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1E61BA270(v14, v11, type metadata accessor for RouteDestination);
      sub_1E61BA270(v15, v8, type metadata accessor for RouteDestination);
      if ((static RouteResource.== infix(_:_:)(v11, v8) & 1) == 0 || (static RouteSource.== infix(_:_:)(&v11[*(v4 + 20)], v8 + *(v4 + 20)) & 1) == 0)
      {
        break;
      }

      v17 = sub_1E63DAF94(*&v11[*(v4 + 24)], *(v8 + *(v4 + 24)));
      sub_1E61BA1A0(v8, type metadata accessor for RouteDestination);
      sub_1E61BA1A0(v11, type metadata accessor for RouteDestination);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1E61BA1A0(v8, type metadata accessor for RouteDestination);
    sub_1E61BA1A0(v11, type metadata accessor for RouteDestination);
    goto LABEL_12;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1E61B7A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_1E61BA2D8(v32, v33);
    v26 = sub_1E65E5B98();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61B7C00(uint64_t a1, _BYTE *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v6 = *(*(type metadata accessor for RouteDestination() - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v7 = type metadata accessor for RoutingContextAction();
  *(v3 + 88) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 29) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E61B7D10, 0, 0);
}

uint64_t sub_1E61B7D10()
{
  v1 = *(v0 + 88);
  sub_1E61BA270(*(v0 + 56), *(v0 + 96), type metadata accessor for RoutingContextAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v52 = *(v0 + 48);
      v53 = **(v0 + 96);
      v54 = v52[3];
      v55 = v52[4];
      __swift_project_boxed_opaque_existential_1(v52, v54);
      v56 = *(v55 + 64);
      v84 = (v56 + *v56);
      v57 = v56[1];
      v58 = swift_task_alloc();
      *(v0 + 152) = v58;
      *v58 = v0;
      v58[1] = sub_1E61B8A4C;
      v10 = v53;
      v11 = v54;
      v12 = v55;
      v13 = v84;

      return v13(v10, v11, v12);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v15 = *(v0 + 29);
      v16 = *(v0 + 96);
      v17 = *(v0 + 72);
      v18 = *(v0 + 48);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v20 = v16 + *(v19 + 48);
      v21 = *v20;
      *(v0 + 168) = *v20;
      v22 = *(v20 + 8);
      *(v0 + 30) = v22;
      v23 = *(v16 + *(v19 + 64));
      sub_1E5F9CE80(v16, v17);
      v24 = v18[3];
      v25 = v18[4];
      __swift_project_boxed_opaque_existential_1(v18, v24);
      *(v0 + 32) = v21;
      *(v0 + 40) = v22;
      *(v0 + 26) = v15;
      v26 = *(v25 + 72);
      v82 = (v26 + *v26);
      v27 = v26[1];
      v28 = swift_task_alloc();
      *(v0 + 176) = v28;
      *v28 = v0;
      v28[1] = sub_1E61B8B60;
      v29 = *(v0 + 72);
      v30 = v0 + 32;
      v31 = v23;
      v32 = v0 + 26;
      v33 = v24;
      v34 = v25;
      v35 = v82;
    }

    else
    {
      v69 = *(v0 + 29);
      v70 = *(v0 + 96);
      v71 = *(v0 + 48);
      v72 = *v70;
      *(v0 + 192) = *v70;
      v73 = v70[1];
      *(v0 + 200) = v73;
      v74 = *(v70 + 16);
      *(v0 + 31) = v74;
      v75 = *(v70 + 17);
      v76 = v71[3];
      v77 = v71[4];
      __swift_project_boxed_opaque_existential_1(v71, v76);
      *(v0 + 16) = v73;
      *(v0 + 24) = v74;
      *(v0 + 25) = v69;
      v78 = *(v77 + 80);
      v86 = (v78 + *v78);
      v79 = v78[1];
      v80 = swift_task_alloc();
      *(v0 + 208) = v80;
      *v80 = v0;
      v80[1] = sub_1E61B8D2C;
      v29 = v72;
      v30 = v0 + 16;
      v31 = v75;
      v32 = v0 + 25;
      v33 = v76;
      v34 = v77;
      v35 = v86;
    }

    return v35(v29, v30, v31, v32, v33, v34);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v3 = *(v0 + 48);
        v4 = **(v0 + 96);
        v5 = v3[3];
        v6 = v3[4];
        __swift_project_boxed_opaque_existential_1(v3, v5);
        v7 = *(v6 + 40);
        v81 = (v7 + *v7);
        v8 = v7[1];
        v9 = swift_task_alloc();
        *(v0 + 120) = v9;
        *v9 = v0;
        v9[1] = sub_1E61B86F4;
        v10 = v4;
        v11 = v5;
        v12 = v6;
        v13 = v81;

        return v13(v10, v11, v12);
      }

      v59 = *(v0 + 29);
      v60 = *(v0 + 96);
      v61 = *(v0 + 64);
      v62 = *(v0 + 48);
      v63 = *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF8, &qword_1E65F4878) + 48));
      sub_1E61BA130(v60, v61);
      v64 = v62[3];
      v65 = v62[4];
      __swift_project_boxed_opaque_existential_1(v62, v64);
      *(v0 + 27) = v59;
      v66 = *(v65 + 48);
      v85 = (v66 + *v66);
      v67 = v66[1];
      v68 = swift_task_alloc();
      *(v0 + 136) = v68;
      *v68 = v0;
      v68[1] = sub_1E61B8894;
      v46 = *(v0 + 64);
      v47 = v63;
      v48 = v0 + 27;
      v49 = v64;
      v50 = v65;
      v51 = v85;
    }

    else
    {
      v36 = *(v0 + 29);
      v37 = *(v0 + 96);
      v38 = *(v0 + 80);
      v39 = *(v0 + 48);
      v40 = *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076000, &unk_1E65F5550) + 48));
      sub_1E5F9CE80(v37, v38);
      v41 = v39[3];
      v42 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v41);
      *(v0 + 28) = v36;
      v43 = *(v42 + 32);
      v83 = (v43 + *v43);
      v44 = v43[1];
      v45 = swift_task_alloc();
      *(v0 + 104) = v45;
      *v45 = v0;
      v45[1] = sub_1E61B8538;
      v46 = *(v0 + 80);
      v47 = v40;
      v48 = v0 + 28;
      v49 = v41;
      v50 = v42;
      v51 = v83;
    }

    return v51(v46, v47, v48, v49, v50);
  }
}

uint64_t sub_1E61B8538()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1E61B8EF4;
  }

  else
  {
    v3 = sub_1E61B864C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61B864C()
{
  sub_1E61BA1A0(v0[10], type metadata accessor for RouteDestination);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61B86F4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1E61B8F9C;
  }

  else
  {
    v3 = sub_1E61B8808;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61B8808()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61B8894()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1E61B9028;
  }

  else
  {
    v3 = sub_1E61B89A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61B89A8()
{
  sub_1E5DFE50C(v0[8], &unk_1ED072040, &qword_1E65F0860);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61B8A4C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E61B90CC;
  }

  else
  {
    v3 = sub_1E61BA320;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61B8B60()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1E61B9158;
  }

  else
  {
    v3 = sub_1E61B8C74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61B8C74()
{
  v1 = *(v0 + 72);
  sub_1E5F94E00(*(v0 + 168), *(v0 + 30));
  sub_1E61BA1A0(v1, type metadata accessor for RouteDestination);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E61B8D2C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1E61B9214;
  }

  else
  {
    v4 = sub_1E61B8E5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61B8E5C()
{
  sub_1E5F94E00(*(v0 + 200), *(v0 + 31));
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E61B8EF4()
{
  sub_1E61BA1A0(v0[10], type metadata accessor for RouteDestination);
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61B8F9C()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61B9028()
{
  sub_1E5DFE50C(v0[8], &unk_1ED072040, &qword_1E65F0860);
  v1 = v0[18];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61B90CC()
{
  v1 = v0[20];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61B9158()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 30);
  sub_1E61BA1A0(*(v0 + 72), type metadata accessor for RouteDestination);
  sub_1E5F94E00(v1, v2);
  v3 = *(v0 + 184);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E61B9214()
{
  sub_1E5F94E00(*(v0 + 200), *(v0 + 31));
  v1 = *(v0 + 216);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t RoutingContextAction.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard20RoutingContextActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v93 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CC0, &qword_1E65EEAA8);
  v6 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v93 - v7;
  v101 = type metadata accessor for RouteDestination();
  v98 = *(v101 - 8);
  v8 = *(v98 + 64);
  v9 = MEMORY[0x1EEE9AC00](v101);
  v99 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v94 = (&v93 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v96 = (&v93 - v13);
  v14 = type metadata accessor for RoutingContextAction();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v93 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v93 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v93 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v93 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v93 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0763F0, &qword_1E65F5560);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v93 + *(v35 + 56) - v36;
  v38 = a1;
  v39 = &v93 - v36;
  sub_1E61BA270(v38, &v93 - v36, type metadata accessor for RoutingContextAction);
  sub_1E61BA270(v102, v37, type metadata accessor for RoutingContextAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E61BA270(v39, v24, type metadata accessor for RoutingContextAction);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v41 = *v24;
        goto LABEL_18;
      }

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v42 = v39;
      sub_1E61BA270(v39, v21, type metadata accessor for RoutingContextAction);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v44 = *(v43 + 48);
      v45 = *&v21[v44];
      v46 = v21[v44 + 8];
      v47 = *(v43 + 64);
      v48 = v21[v47];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1E5F94E00(v45, v46);
        sub_1E61BA1A0(v21, type metadata accessor for RouteDestination);
        v39 = v42;
        goto LABEL_33;
      }

      v49 = *&v37[v44];
      v50 = v37[v44 + 8];
      v51 = v37[v47];
      v52 = v37;
      v53 = v99;
      sub_1E5F9CE80(v52, v99);
      v54 = static RouteResource.== infix(_:_:)(v21, v53);
      v55 = v101;
      if (v54 & 1) != 0 && (static RouteSource.== infix(_:_:)(&v21[*(v101 + 20)], v53 + *(v101 + 20)) & 1) != 0 && (sub_1E63DAF94(*&v21[*(v55 + 24)], *(v53 + *(v55 + 24))))
      {
        sub_1E61BA1A0(v21, type metadata accessor for RouteDestination);
        v105 = v45;
        v106 = v46;
        v103 = v49;
        v104 = v50;
        v56 = _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v105, &v103);
        v57 = v53;
        v58 = v56;
        sub_1E61BA1A0(v57, type metadata accessor for RouteDestination);
        sub_1E5F94E00(v49, v50);
        sub_1E5F94E00(v45, v46);
        if (v58)
        {
          v59 = v48 ^ v51;
LABEL_25:
          v62 = v42;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1E5F94E00(v49, v50);
        sub_1E5F94E00(v45, v46);
        sub_1E61BA1A0(v21, type metadata accessor for RouteDestination);
        sub_1E61BA1A0(v53, type metadata accessor for RouteDestination);
      }

      goto LABEL_51;
    }

    v71 = v39;
    sub_1E61BA270(v39, v18, type metadata accessor for RoutingContextAction);
    v73 = *v18;
    v72 = *(v18 + 1);
    v74 = v18[16];
    v75 = v18[17];
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1E5F94E00(v72, v74);

      v39 = v71;
      goto LABEL_33;
    }

    v76 = *(v37 + 1);
    v77 = v37[16];
    v78 = v37[17];
    v79 = sub_1E61B777C(v73, *v37);

    if (v79)
    {
      v105 = v72;
      v106 = v74;
      v103 = v76;
      v104 = v77;
      v80 = _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v105, &v103);
      sub_1E5F94E00(v76, v77);
      sub_1E5F94E00(v72, v74);
      if (v80)
      {
        v59 = v75 ^ v78;
        v62 = v71;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1E5F94E00(v76, v77);
      sub_1E5F94E00(v72, v74);
    }

    v86 = v71;
LABEL_52:
    sub_1E61BA1A0(v86, type metadata accessor for RoutingContextAction);
    goto LABEL_53;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E61BA270(v39, v32, type metadata accessor for RoutingContextAction);
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076000, &unk_1E65F5550) + 48);
    v61 = v32[v60];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1E61BA1A0(v32, type metadata accessor for RouteDestination);
      goto LABEL_33;
    }

    v81 = v39;
    v82 = v37[v60];
    v83 = v96;
    sub_1E5F9CE80(v37, v96);
    v84 = static RouteResource.== infix(_:_:)(v32, v83);
    v85 = v101;
    if (v84 & 1) != 0 && (static RouteSource.== infix(_:_:)(&v32[*(v101 + 20)], v83 + *(v101 + 20)) & 1) != 0 && (sub_1E63DAF94(*&v32[*(v85 + 24)], *(v83 + *(v85 + 24))))
    {
      sub_1E61BA1A0(v83, type metadata accessor for RouteDestination);
      sub_1E61BA1A0(v32, type metadata accessor for RouteDestination);
      v59 = v61 ^ v82;
      v62 = v81;
      goto LABEL_19;
    }

    sub_1E61BA1A0(v83, type metadata accessor for RouteDestination);
    sub_1E61BA1A0(v32, type metadata accessor for RouteDestination);
    v86 = v81;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v42 = v39;
    sub_1E61BA270(v39, v27, type metadata accessor for RoutingContextAction);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF8, &qword_1E65F4878) + 48);
    v65 = v27[v64];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1E5DFE50C(v27, &unk_1ED072040, &qword_1E65F0860);
      v39 = v42;
      goto LABEL_33;
    }

    v66 = v37[v64];
    v67 = *(v97 + 48);
    v68 = v100;
    sub_1E61BA130(v27, v100);
    sub_1E61BA130(v37, v68 + v67);
    v69 = *(v98 + 48);
    v70 = v101;
    if (v69(v68, 1, v101) == 1)
    {
      if (v69(v68 + v67, 1, v70) == 1)
      {
        sub_1E5DFE50C(v68, &unk_1ED072040, &qword_1E65F0860);
LABEL_24:
        v59 = v65 ^ v66;
        goto LABEL_25;
      }
    }

    else
    {
      v87 = v95;
      sub_1E61BA200(v68, v95);
      if (v69(v68 + v67, 1, v70) != 1)
      {
        v90 = v94;
        sub_1E5F9CE80(v68 + v67, v94);
        if (static RouteResource.== infix(_:_:)(v87, v90) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v87[*(v70 + 20)], v90 + *(v70 + 20)))
        {
          v91 = sub_1E63DAF94(*&v87[*(v70 + 24)], *(v90 + *(v70 + 24)));
          sub_1E61BA1A0(v90, type metadata accessor for RouteDestination);
          sub_1E61BA1A0(v87, type metadata accessor for RouteDestination);
          sub_1E5DFE50C(v68, &unk_1ED072040, &qword_1E65F0860);
          if (v91)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        }

        sub_1E61BA1A0(v90, type metadata accessor for RouteDestination);
        sub_1E61BA1A0(v87, type metadata accessor for RouteDestination);
        v88 = &unk_1ED072040;
        v89 = &qword_1E65F0860;
        goto LABEL_50;
      }

      sub_1E61BA1A0(v87, type metadata accessor for RouteDestination);
    }

    v88 = &qword_1ED073CC0;
    v89 = &qword_1E65EEAA8;
LABEL_50:
    sub_1E5DFE50C(v68, v88, v89);
LABEL_51:
    v86 = v42;
    goto LABEL_52;
  }

  sub_1E61BA270(v39, v30, type metadata accessor for RoutingContextAction);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_33:
    sub_1E5DFE50C(v39, &qword_1ED0763F0, &qword_1E65F5560);
LABEL_53:
    v63 = 0;
    return v63 & 1;
  }

  v41 = *v30;
LABEL_18:
  v59 = v41 ^ *v37;
  v62 = v39;
LABEL_19:
  sub_1E61BA1A0(v62, type metadata accessor for RoutingContextAction);
  v63 = v59 ^ 1;
  return v63 & 1;
}

unint64_t sub_1E61B9DF4()
{
  result = qword_1ED0763E0;
  if (!qword_1ED0763E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0763E0);
  }

  return result;
}

uint64_t type metadata accessor for RoutingContextAction()
{
  result = qword_1EE2D93F8;
  if (!qword_1EE2D93F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E61B9E94()
{
  sub_1E61B9F48();
  if (v0 <= 0x3F)
  {
    sub_1E5E03AA8();
    if (v1 <= 0x3F)
    {
      sub_1E61B9FB4();
      if (v2 <= 0x3F)
      {
        sub_1E61BA02C();
        if (v3 <= 0x3F)
        {
          sub_1E61BA0A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E61B9F48()
{
  if (!qword_1EE2D9FA8)
  {
    type metadata accessor for RouteDestination();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D9FA8);
    }
  }
}

void sub_1E61B9FB4()
{
  if (!qword_1EE2DA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED072040, &qword_1E65F0860);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2DA010);
    }
  }
}

void sub_1E61BA02C()
{
  if (!qword_1EE2D9FB0)
  {
    type metadata accessor for RouteDestination();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D9FB0);
    }
  }
}

void sub_1E61BA0A0()
{
  if (!qword_1EE2D48A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0763E8, &qword_1E65F5500);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D48A0);
    }
  }
}

uint64_t sub_1E61BA130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61BA1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61BA200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61BA270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61BA2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61BA324(uint64_t a1)
{
  v3 = type metadata accessor for RouteDestination();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E61BA730(v1, v11);
  sub_1E5F9CE80(v11, v8);
  MEMORY[0x1E694E740](0);
  RouteResource.hash(into:)(v15);
  v12 = &v8[*(v4 + 28)];
  RouteSource.hash(into:)(v15);
  sub_1E61B7778(v15, *&v8[*(v4 + 32)]);
  sub_1E60111F8(v8);
  return sub_1E65E6D78();
}

uint64_t sub_1E61BA444(__int128 *a1, uint64_t a2)
{
  v5 = type metadata accessor for RouteDestination();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61BA730(v2, v13);
  sub_1E5F9CE80(v13, v10);
  MEMORY[0x1E694E740](0);
  RouteResource.hash(into:)(a1);
  v14 = &v10[*(v6 + 28)];
  RouteSource.hash(into:)(a1);
  sub_1E61B7778(a1, *&v10[*(v6 + 32)]);
  return sub_1E60111F8(v10);
}

uint64_t sub_1E61BA558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E61BA730(v2, v12);
  sub_1E5F9CE80(v12, v9);
  MEMORY[0x1E694E740](0);
  RouteResource.hash(into:)(v16);
  v13 = &v9[*(v5 + 28)];
  RouteSource.hash(into:)(v16);
  sub_1E61B7778(v16, *&v9[*(v5 + 32)]);
  sub_1E60111F8(v9);
  return sub_1E65E6D78();
}

unint64_t sub_1E61BA68C()
{
  result = qword_1ED076400;
  if (!qword_1ED076400)
  {
    type metadata accessor for CanvasTaskIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076400);
  }

  return result;
}

uint64_t type metadata accessor for CanvasTaskIdentifier()
{
  result = qword_1ED076410;
  if (!qword_1ED076410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E61BA730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasTaskIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1E61BA794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076408, &qword_1E65F55E8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v19 - v14;
  v16 = *(v13 + 56);
  sub_1E61BA730(a1, &v19 - v14);
  sub_1E61BA730(a2, &v15[v16]);
  sub_1E5F9CE80(v15, v10);
  sub_1E5F9CE80(&v15[v16], v8);
  v17 = (static RouteResource.== infix(_:_:)(v10, v8) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v10[*(v4 + 20)], v8 + *(v4 + 20)) & 1) != 0 && (sub_1E63DAF94(*&v10[*(v4 + 24)], *(v8 + *(v4 + 24))) & 1) != 0;
  sub_1E60111F8(v8);
  sub_1E60111F8(v10);
  return v17;
}

uint64_t sub_1E61BA918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination();

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1E5EABB54);
}

uint64_t sub_1E61BA970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RouteDestination();

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1E5EABC60);
}

uint64_t sub_1E61BA9D8(uint64_t a1)
{
  result = type metadata accessor for RouteDestination();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t AppComposer.audioLanguageEngagementSheetViewBuilder(onDismissed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F00, &qword_1E65EA320);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - v17;
  sub_1E6318EA0(v27);
  sub_1E61BAD70(v3, a1, a2, v18);
  v19 = sub_1E65E4FD8();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1E65E5018();
  __swift_project_value_buffer(v20, qword_1EE2D49E8);
  v21 = sub_1E65E2E78();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_1E5F99C3C();
  sub_1E65E4728();
  sub_1E5DFE50C(v10, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v14, &qword_1ED071EF8, &unk_1E65FA470);
  sub_1E5DFE50C(v18, &qword_1ED071F00, &qword_1E65EA320);
  v22 = swift_allocObject();
  v23 = v27[3];
  v22[3] = v27[2];
  v22[4] = v23;
  v22[5] = v27[4];
  v24 = v27[1];
  v22[1] = v27[0];
  v22[2] = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  v26 = (a3 + *(result + 36));
  *v26 = 0;
  v26[1] = 0;
  v26[2] = sub_1E5F99E38;
  v26[3] = v22;
  return result;
}

uint64_t sub_1E61BAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v46 = a2;
  v51 = a4;
  v47 = sub_1E65E16A8();
  v44 = *(v47 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076440, &qword_1E65F5688);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076448, &qword_1E65F5690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F30, &qword_1E65EA338);
  v13 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v40 - v14;
  v16 = type metadata accessor for AppComposer();
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = sub_1E65E1638();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + *(v17 + 28) + 8);
  if (v26 >= 2)
  {
    v41 = v12;
    v42 = v23;
    v33 = v45;
    v34 = v47;
    if (v26 == 3)
    {
      sub_1E5E1DEAC(a1, &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v36 = swift_allocObject();
      sub_1E5E1FA80(&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
      v37 = (v36 + ((v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v37 = v46;
      v37[1] = v33;

      v38 = v43;
      sub_1E65E1698();
      v39 = v44;
      (*(v44 + 16))(v41, v38, v34);
      swift_storeEnumTagMultiPayload();
      sub_1E61BD6E0(&qword_1ED071F38, MEMORY[0x1E699E900]);
      sub_1E61BD6E0(&qword_1ED071F40, MEMORY[0x1E699E940]);
      sub_1E65E4138();
      sub_1E5DFD1CC(v15, v48, &qword_1ED071F30, &qword_1E65EA338);
      swift_storeEnumTagMultiPayload();
      sub_1E5F99D4C();
      sub_1E65E4138();
      sub_1E5DFE50C(v15, &qword_1ED071F30, &qword_1E65EA338);
      return (*(v39 + 8))(v38, v34);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v44 = v9;
    v27 = v23;
    sub_1E5E1DEAC(a1, &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v29 = swift_allocObject();
    sub_1E5E1FA80(&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    v30 = (v29 + ((v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v31 = v45;
    *v30 = v46;
    v30[1] = v31;

    sub_1E65E1628();
    (*(v21 + 16))(v12, v25, v27);
    swift_storeEnumTagMultiPayload();
    sub_1E61BD6E0(&qword_1ED071F38, MEMORY[0x1E699E900]);
    sub_1E61BD6E0(&qword_1ED071F40, MEMORY[0x1E699E940]);
    sub_1E65E4138();
    sub_1E5DFD1CC(v15, v48, &qword_1ED071F30, &qword_1E65EA338);
    swift_storeEnumTagMultiPayload();
    sub_1E5F99D4C();
    sub_1E65E4138();
    sub_1E5DFE50C(v15, &qword_1ED071F30, &qword_1E65EA338);
    return (*(v21 + 8))(v25, v27);
  }

  return result;
}

uint64_t AppComposer.makeAudioLanguageEngagementSheetStore(onDismissed:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076420, &qword_1E65F5608);
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - v7;
  v45 = sub_1E65E16C8();
  v47 = *(v45 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v53 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v43 = &v42 - v18;
  v20 = sub_1E65E16F8();
  v51 = *(v20 - 8);
  v52 = v20;
  v21 = *(v51 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v42 - v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  sub_1E5E1DEAC(v2, v19);
  v27 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v28 = swift_allocObject();
  sub_1E5E1FA80(v19, v28 + v27);
  sub_1E5E1DEAC(v2, v17);
  v29 = swift_allocObject();
  sub_1E5E1FA80(v17, v29 + v27);
  sub_1E5E1DEAC(v2, v14);
  v30 = swift_allocObject();
  sub_1E5E1FA80(v14, v30 + v27);

  v31 = v50;
  sub_1E65E16E8();
  v42 = v2;
  v44 = *v2;
  (*(v51 + 16))(v24, v31, v52);
  sub_1E65E16B8();
  v32 = v2;
  v33 = v43;
  sub_1E5E1DEAC(v32, v43);
  v34 = swift_allocObject();
  sub_1E5E1FA80(v33, v34 + v27);
  type metadata accessor for AppFeature();
  sub_1E61BD6E0(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E61BD6E0(&qword_1ED076428, MEMORY[0x1E699E950]);
  v35 = v45;
  v36 = v46;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v42, v33);
  v37 = swift_allocObject();
  sub_1E5E1FA80(v33, v37 + v27);
  sub_1E65E4CC8();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1E61BD47C;
  *(v38 + 24) = v37;

  v39 = v53;
  v40 = sub_1E65E4F08();

  (*(v48 + 8))(v36, v49);
  (*(v47 + 8))(v39, v35);
  (*(v51 + 8))(v50, v52);
  return v40;
}

uint64_t sub_1E61BBA24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61BBA44, 0, 0);
}

uint64_t sub_1E61BBA44()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E61BBAAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D7848();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65DA518();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BBBC8, 0, 0);
}

uint64_t sub_1E61BBBC8()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 112) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for AppEnvironment();
  *(v0 + 80) = v4;
  v5 = v3 + *(v4 + 60);
  v6 = EngagementService.fetchAudioLanguageEngagementSheet.getter();
  *(v0 + 88) = v7;
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1E61BBCEC;
  v10 = *(v0 + 72);

  return v12(v10);
}

uint64_t sub_1E61BBCEC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E61BBF34;
  }

  else
  {
    v4 = sub_1E61BBE1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61BBE1C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 56);
  v7 = *(v0 + 16);
  v8 = v6 + *(v0 + 112);
  v9 = *v6;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E634BC5C(v5, &v8[*(v2 + 136)], v7);
  (*(v4 + 8))(v5, v12);
  (*(v3 + 8))(v1, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E61BBF34()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1E61BBFA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65E1718();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65DABE8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BC0C0, 0, 0);
}

uint64_t sub_1E61BC0C0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = v4 + *(type metadata accessor for AppComposer() + 20);
  v8 = v7 + *(type metadata accessor for AppEnvironment() + 60);
  v9 = EngagementService.updateAudioLanguageEngagementSheetAcknowledgment.getter();
  v0[10] = v10;
  sub_1E65E1728();
  sub_1E65E1708();
  (*(v3 + 8))(v2, v5);
  sub_1E65DABA8();
  sub_1E65DABC8();
  v15 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1E61BC254;
  v13 = v0[9];

  return v15(v13);
}

uint64_t sub_1E61BC254()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60EC658, 0, 0);
  }

  else
  {
    v9 = *(v2 + 72);
    v10 = *(v2 + 48);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_1E61BC43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9AC8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BC500, 0, 0);
}

uint64_t sub_1E61BC500()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  sub_1E65E61B8();
  sub_1E65D9A98();
  v5 = v3 + *(type metadata accessor for AppComposer() + 20);
  v6 = v5 + *(type metadata accessor for AppEnvironment() + 112);
  v7 = SessionService.updateAudioLanguagePreference.getter();
  v0[8] = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1E61BC64C;
  v11 = v0[7];

  return v13(v11);
}

uint64_t sub_1E61BC64C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1E5FB32D0;
  }

  else
  {
    v4 = sub_1E61BC77C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61BC77C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61BC7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076438, &qword_1E65F5658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v39 - v6;
  v7 = sub_1E65D7768();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E1688();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  v23 = sub_1E65D7848();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v39 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - v28;
  v47 = type metadata accessor for AppState();
  v30 = v47[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v45 = a1;
  sub_1E65E4C98();
  sub_1E5E1F544(v22);
  sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
  v31 = *(v24 + 48);
  v32 = v31(v22, 1, v23);
  v41 = v29;
  if (v32 == 1)
  {
    sub_1E65D77C8();
    if (v31(v22, 1, v23) != 1)
    {
      sub_1E5DFE50C(v22, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v24 + 32))(v29, v22, v23);
  }

  v33 = v45 + v47[6];
  sub_1E6060A50();
  sub_1E65E4C98();
  v34 = v40;
  sub_1E5E1F544(v40);
  sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
  if (v31(v34, 1, v23) == 1)
  {
    v35 = v39;
    sub_1E65D77C8();
    if (v31(v34, 1, v23) != 1)
    {
      sub_1E5DFE50C(v34, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v35 = v39;
    (*(v24 + 32))(v39, v34, v23);
  }

  v36 = *v43;
  sub_1E62388C8(v42);
  (*(v24 + 8))(v35, v23);
  v37 = v47[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  sub_1E65E4C98();
  return sub_1E65E1648();
}

uint64_t sub_1E61BCCC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076438, &qword_1E65F5658);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = *(type metadata accessor for AppState() + 48);
  sub_1E65E1658();
  sub_1E5DFD1CC(v8, v6, &qword_1ED076438, &qword_1E65F5658);
  sub_1E65E4C78();
  sub_1E65E1618();
  sub_1E61BD6E0(&qword_1EE2D64D8, MEMORY[0x1E699E8D8]);
  sub_1E65E4C88();
  sub_1E5DFE50C(v8, &qword_1ED076438, &qword_1E65F5658);
  return (*(v10 + 40))(a1 + v14, v13, v9);
}

uint64_t sub_1E61BCEC8(uint64_t a1)
{
  v2 = sub_1E65E1668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  sub_1E6318EA0(v16);
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v12 = (v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = v16[3];
  v12[2] = v16[2];
  v12[3] = v13;
  v12[4] = v16[4];
  v14 = v16[1];
  *v12 = v16[0];
  v12[1] = v14;
  sub_1E6059EAC(0, 0, v8, &unk_1E65F5650, v11);
}

uint64_t sub_1E61BD0D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61BBA24(v2, v3);
}

uint64_t sub_1E61BD168(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61BBAAC(a1, v1 + v5);
}

uint64_t sub_1E61BD244(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61BBFA4(a1, v1 + v5);
}

uint64_t sub_1E61BD31C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61BC43C(a1, a2, v2 + v7);
}

uint64_t sub_1E61BD3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1E61BC7FC(a1, v6, a2);
}

uint64_t sub_1E61BD47C(uint64_t a1)
{
  v2 = *(*(type metadata accessor for AppComposer() - 8) + 80);

  return sub_1E61BCEC8(a1);
}

unint64_t sub_1E61BD4FC()
{
  result = qword_1ED076430;
  if (!qword_1ED076430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F08, &qword_1E65EA328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F00, &qword_1E65EA320);
    sub_1E5F99C3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076430);
  }

  return result;
}

uint64_t sub_1E61BD5C4(uint64_t a1)
{
  v4 = *(sub_1E65E1668() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E63195A4(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1E61BD6E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61BD72C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return AppComposer.makeAudioLanguageEngagementSheetStore(onDismissed:)(*v2, v2[1]);
}

uint64_t sub_1E61BD7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = type metadata accessor for PageMetricsClick();
  v6[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = sub_1E65D9908();
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076450, &qword_1E65F56A0) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v16 = sub_1E65D8F28();
  v6[14] = v16;
  v17 = *(v16 - 8);
  v6[15] = v17;
  v18 = *(v17 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076458, &qword_1E65F56A8) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v20 = sub_1E65D8C68();
  v6[19] = v20;
  v21 = *(v20 - 8);
  v6[20] = v21;
  v22 = *(v21 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v23 = sub_1E65E0388();
  v6[23] = v23;
  v24 = *(v23 - 8);
  v6[24] = v24;
  v25 = *(v24 + 64) + 15;
  v6[25] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076460, &qword_1E65F56B0) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BDB70, 0, 0);
}

uint64_t sub_1E61BDB70()
{
  v1 = v0[28];
  sub_1E5DFD1CC(v0[2], v1, &qword_1ED074048, &qword_1E65EF200);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074050, &qword_1E65EF208);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
LABEL_11:
    v43 = v0[27];
    v42 = v0[28];
    v45 = v0[25];
    v44 = v0[26];
    v47 = v0[21];
    v46 = v0[22];
    v49 = v0[17];
    v48 = v0[18];
    v50 = v0[16];
    v51 = v0[13];
    v100 = v0[12];
    v101 = v0[9];
    v103 = v0[8];
    v105 = v0[6];
    v107 = v0[5];

    v52 = v0[1];

    return v52();
  }

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v3 + *(v2 + 64));
  sub_1E5FAB460(v3 + *(v2 + 48), v4, &qword_1ED076460, &qword_1E65F56B0);
  sub_1E5DFD1CC(v4, v5, &qword_1ED076460, &qword_1E65F56B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v9 = v0[26];
    sub_1E5DFE50C(v0[27], &qword_1ED076460, &qword_1E65F56B0);
    v10 = v9;
    v11 = &qword_1ED076460;
    v12 = &qword_1E65F56B0;
LABEL_10:
    sub_1E5DFE50C(v10, v11, v12);
    v40 = v0[28];
    v41 = sub_1E65D9CC8();
    (*(*(v41 - 8) + 8))(v40, v41);
    goto LABEL_11;
  }

  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];
  (*(v0[24] + 32))(v0[25], v0[26], v0[23]);
  sub_1E65E0318();
  sub_1E65D8C48();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v0[27];
    v17 = v0[18];
    (*(v0[24] + 8))(v0[25], v0[23]);
    sub_1E5DFE50C(v16, &qword_1ED076460, &qword_1E65F56B0);
    v11 = &qword_1ED076458;
    v12 = &qword_1E65F56A8;
    v10 = v17;
    goto LABEL_10;
  }

  v18 = v0[25];
  v19 = v0[14];
  v20 = v0[15];
  v21 = v0[13];
  v22 = *(v0[20] + 32);
  v22(v0[22], v0[18], v0[19]);
  sub_1E65E0348();
  sub_1E65D8F08();
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    v23 = v0[27];
    v25 = v0[24];
    v24 = v0[25];
    v26 = v0[23];
    v27 = v0[13];
    (*(v0[20] + 8))(v0[22], v0[19]);
    (*(v25 + 8))(v24, v26);
    sub_1E5DFE50C(v23, &qword_1ED076460, &qword_1E65F56B0);
    v11 = &qword_1ED076450;
    v12 = &qword_1E65F56A0;
    v10 = v27;
    goto LABEL_10;
  }

  v28 = v0[25];
  v29 = v0[10];
  v30 = v0[11];
  v31 = v0[9];
  (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
  sub_1E65E0358();
  sub_1E65D98E8();
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v32 = v0[27];
    v34 = v0[24];
    v33 = v0[25];
    v36 = v0[22];
    v35 = v0[23];
    v37 = v0[19];
    v38 = v0[20];
    v39 = v0[9];
    (*(v0[15] + 8))(v0[17], v0[14]);
    (*(v38 + 8))(v36, v37);
    (*(v34 + 8))(v33, v35);
    sub_1E5DFE50C(v32, &qword_1ED076460, &qword_1E65F56B0);
    v11 = &qword_1ED072330;
    v12 = &qword_1E65EAB70;
    v10 = v39;
    goto LABEL_10;
  }

  v104 = v0[25];
  v55 = v0[21];
  v54 = v0[22];
  v57 = v0[19];
  v56 = v0[20];
  v99 = v57;
  v108 = v0[17];
  v88 = v0[15];
  v90 = v0[16];
  v106 = v0[14];
  v97 = v0[11];
  v98 = v0[12];
  v58 = v0[9];
  v96 = v0[10];
  v87 = v0[8];
  v94 = v0[7];
  v59 = v0[5];
  v60 = v0[6];
  v95 = v59;
  v102 = v0[4];
  v91 = v0[3];
  (*(v97 + 32))();
  v61 = sub_1E65D9D78();
  (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
  (*(v56 + 16))(v55, v54, v57);
  v62 = sub_1E65D74E8();
  (*(*(v62 - 8) + 56))(v59, 1, 1, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v63 = *(sub_1E65D86A8() - 8);
  v86 = *(v63 + 72);
  v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1E65EB9E0;
  sub_1E65E0338();
  sub_1E65E0378();
  sub_1E65E0368();
  v92 = v22;
  v65 = *(v88 + 16);
  v65(v90, v108, v106);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  v66 = *v91;
  v67 = v91[1];
  v68 = v91[3];
  v89 = v91[2];
  v69 = type metadata accessor for SectionMetrics();
  v65(v90, v91 + *(v69 + 24), v106);
  v70 = *(v91 + *(v69 + 32));

  sub_1E65D8678();
  v71 = v94[8];
  v72 = sub_1E65DA208();
  (*(*(v72 - 8) + 56))(v87 + v71, 1, 1, v72);
  v73 = sub_1E65E0338();
  v75 = v74;
  v65(v87 + v94[14], v108, v106);
  v76 = v94[15];
  (*(v97 + 16))(v87 + v76, v98, v96);
  (*(v97 + 56))(v87 + v76, 0, 1, v96);
  v77 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  sub_1E5FAB460(v60, v87, &qword_1ED073578, &qword_1E65F0E60);
  v92(v87 + v94[5], v55, v99);
  sub_1E5FAB460(v95, v87 + v94[6], &qword_1ED072340, &qword_1E65EA410);
  *(v87 + v94[7]) = v93;
  v78 = (v87 + v94[9]);
  *v78 = 0;
  v78[1] = 0;
  v79 = (v87 + v94[10]);
  *v79 = 0;
  v79[1] = 0;
  *(v87 + v94[11]) = v77;
  v80 = (v87 + v94[12]);
  *v80 = 0;
  v80[1] = 0;
  v81 = (v87 + v94[13]);
  *v81 = v73;
  v81[1] = v75;
  v82 = *(v102 + 56);
  v109 = (*(v102 + 48) + **(v102 + 48));
  v83 = *(*(v102 + 48) + 4);
  v84 = swift_task_alloc();
  v0[29] = v84;
  *v84 = v0;
  v84[1] = sub_1E61BE558;
  v85 = v0[8];

  return v109(v85);
}

uint64_t sub_1E61BE558()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1E61BE868;
  }

  else
  {
    v3 = sub_1E61BE66C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61BE66C()
{
  v1 = v0[24];
  v29 = v0[25];
  v31 = v0[27];
  v25 = v0[22];
  v27 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];
  sub_1E5FC0990(v0[8]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v25, v3);
  (*(v1 + 8))(v29, v27);
  sub_1E5DFE50C(v31, &qword_1ED076460, &qword_1E65F56B0);
  v10 = v0[28];
  v11 = sub_1E65D9CC8();
  (*(*(v11 - 8) + 8))(v10, v11);
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v17 = v0[21];
  v16 = v0[22];
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  v21 = v0[13];
  v24 = v0[12];
  v26 = v0[9];
  v28 = v0[8];
  v30 = v0[6];
  v32 = v0[5];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E61BE868()
{
  v17 = v0[27];
  v18 = v0[28];
  v19 = v0[26];
  v1 = v0[24];
  v15 = v0[23];
  v16 = v0[25];
  v14 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v20 = v0[21];
  v21 = v0[18];
  v5 = v0[15];
  v6 = v0[14];
  v22 = v0[16];
  v23 = v0[13];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v24 = v0[8];
  v25 = v0[6];
  v26 = v0[5];
  sub_1E5FC0990(v24);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v14, v3);
  (*(v1 + 8))(v16, v15);
  sub_1E5DFE50C(v17, &qword_1ED076460, &qword_1E65F56B0);
  v10 = sub_1E65D9CC8();
  (*(*(v10 - 8) + 8))(v18, v10);

  v11 = v0[1];
  v12 = v0[30];

  return v11();
}

uint64_t AppComposer.summaryWorkoutsCardViewBuilder<A>(identifier:header:items:isInteractive:locale:headerAction:itemAction:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a4;
  v47 = a6;
  v48 = a7;
  v50 = a5;
  v51 = a8;
  v49 = a3;
  v36[1] = a11;
  v45 = a2;
  v46 = a9;
  v38 = a10;
  v12 = type metadata accessor for AppComposer();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v41 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E65D7848();
  v14 = *(v40 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36[0] = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65DF7E8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076468, &qword_1E65F56B8);
  v39 = v22;
  v37 = sub_1E61BEE9C();
  v52 = v22;
  v53 = a10;
  v54 = v37;
  v55 = a11;
  v23 = sub_1E65DF7C8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v36 - v29;
  (*(v18 + 16))(v21, a1, v17);
  (*(v14 + 16))(v36[0], v43, v40);
  v31 = v41;
  sub_1E5E1DEAC(v44, v41);
  v32 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v33 = swift_allocObject();
  sub_1E5E1E2B8(v31, v33 + v32, type metadata accessor for AppComposer);

  sub_1E65DF7B8();
  swift_getWitnessTable();
  sub_1E5FEE4C8(v28);
  v34 = *(v24 + 8);
  v34(v28, v23);
  sub_1E5FEE4C8(v30);
  return (v34)(v30, v23);
}

unint64_t sub_1E61BEE9C()
{
  result = qword_1EE2D4CE0;
  if (!qword_1EE2D4CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076468, &qword_1E65F56B8);
    sub_1E5FEB2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CE0);
  }

  return result;
}

uint64_t sub_1E61BEF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v86 = a1;
  v90 = a3;
  v78 = type metadata accessor for ArtworkContent();
  v3 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ArtworkDescriptor();
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v7 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v8 = *(*(v89 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v89);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v75 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076470, &qword_1E65F56C0);
  v23 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = (&v75 - v24);
  v76 = sub_1E65E4A08();
  v25 = *(v76 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076478, &qword_1E65F56C8);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v75 - v32;
  v34 = sub_1E65DF818();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, v86, v34);
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 == *MEMORY[0x1E699F050])
  {
    (*(v35 + 96))(v38, v34);
    v40 = *v38;
    v41 = *(v38 + 1);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076488, &qword_1E65F56D8);
    (*(v30 + 32))(v33, &v38[*(v42 + 48)], v29);
    if (!sub_1E65E1778())
    {
      v43 = [objc_opt_self() mainBundle];
    }

    v44 = &v38[*(v42 + 64)];
    sub_1E65E4A48();
    v45 = v76;
    (*(v25 + 104))(v28, *MEMORY[0x1E6981630], v76);
    v46 = sub_1E65E4A38();

    (*(v25 + 8))(v28, v45);
    *v88 = v46;
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    (*(v30 + 8))(v33, v29);
    return sub_1E5DFE50C(v44, &qword_1ED0734E8, &qword_1E65ED470);
  }

  if (v39 == *MEMORY[0x1E699F058])
  {
    (*(v35 + 96))(v38, v34);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0) + 48);
    v48 = v85;
    sub_1E5FAB460(v38, v85, &qword_1ED0734E8, &qword_1E65ED470);
    v49 = v81;
    sub_1E5FAB460(&v38[v47], v81, &qword_1ED072340, &qword_1E65EA410);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    sub_1E5DFD1CC(v48, v21, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v49, v77, &qword_1ED072340, &qword_1E65EA410);
    v51 = v79;
    sub_1E65DB248();
    v52 = *MEMORY[0x1E699DC58];
    v53 = sub_1E65DC488();
    (*(*(v53 - 8) + 104))(v51 + v50, v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
    v44 = v48;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v54 = type metadata accessor for AppComposer();
    v55 = v84;
    v56 = *(v84 + *(v54 + 20) + 8);
    v57 = sub_1E65DAE38();
    v58 = sub_1E65DAE38();
    v59 = sub_1E65E4B48();
    v60 = 4.0;
    if (v59)
    {
      v60 = 8.0;
    }

    v61 = 16.0;
    if (v59)
    {
      v61 = 18.0;
    }

    if (v57 == v58)
    {
      v62 = v61;
    }

    else
    {
      v62 = v60;
    }

    if (v57 == v58)
    {
      v63 = 12.0;
    }

    else
    {
      v63 = 8.0;
    }

    sub_1E5E1E2B8(v51, v7, type metadata accessor for ArtworkContent);
    v64 = v80;
    *(v7 + *(v80 + 20)) = MEMORY[0x1E69E7CD0];
    v65 = (v7 + v64[6]);
    *v65 = 0.0;
    v65[1] = v62;
    v65[2] = v62;
    v65[3] = v63;
    *(v7 + v64[7]) = 1;
    v66 = (v7 + v64[8]);
    *v66 = 0;
    v66[1] = 0;
    v67 = v82;
    sub_1E64D2DD0(v7, v55, v82);
    v68 = sub_1E65E4B98();
    v70 = v69;
    v71 = v67 + *(v89 + 36);
    sub_1E64D54B4(v7, v55, v71);
    sub_1E61BF8AC(v7);
    v72 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28) + 36));
    *v72 = v68;
    v72[1] = v70;
    v73 = v83;
    sub_1E5EACC5C(v67, v83);
    sub_1E5EACCCC(v73, v88);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    sub_1E5EACD3C(v73);
    sub_1E5DFE50C(v49, &qword_1ED072340, &qword_1E65EA410);
    return sub_1E5DFE50C(v44, &qword_1ED0734E8, &qword_1E65ED470);
  }

  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E61BF82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E61BEF28(a1, v6, a2);
}

uint64_t sub_1E61BF8AC(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppComposer.sampleContentSummaryViewBuilder(isPreview:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = sub_1E65D76F8();
  v24[0] = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - v15;
  v26 = v24 - v15;
  sub_1E65D76E8();
  sub_1E5E1DEAC(v3, v9);
  (*(v11 + 16))(v14, v16, v10);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = (v17 + v6 + *(v11 + 80)) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_1E5E1E2B8(v9, v19 + v17, type metadata accessor for AppComposer);
  v20 = v24[0];
  (*(v11 + 32))(v19 + v18, v14, v24[0]);
  *(v19 + v18 + v12) = v27;
  v21 = v25;
  sub_1E5E1DEAC(v24[1], v25);
  v22 = swift_allocObject();
  sub_1E5E1E2B8(v21, v22 + v17, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076490, &qword_1E65F56E0);
  sub_1E5FED46C(&qword_1EE2D6768, &qword_1ED076490, &qword_1E65F56E0);
  sub_1E65E3688();
  return (*(v11 + 8))(v26, v20);
}

uint64_t sub_1E61BFC24(void *a1, uint64_t a2, int a3)
{
  v39 = a3;
  v37 = a2;
  v36 = sub_1E65D76F8();
  v4 = *(v36 - 8);
  v35 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764C8, &qword_1E65F5700);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v38 = v33 - v8;
  v9 = sub_1E65E3618();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppComposer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = sub_1E65E3638();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1E65E37E8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[1] = *a1;
  sub_1E5E1DEAC(a1, v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = swift_allocObject();
  sub_1E5E1E2B8(v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AppComposer);
  *(v24 + v23 + v15) = 0;
  sub_1E65E3628();
  sub_1E65E37D8();
  sub_1E65E3608();
  v25 = v34;
  v26 = v36;
  (*(v4 + 16))(v34, v37, v36);
  v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28 = v27 + v35;
  v29 = swift_allocObject();
  (*(v4 + 32))(v29 + v27, v25, v26);
  *(v29 + v28) = v39;
  type metadata accessor for AppFeature();
  sub_1E61C681C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E61C681C(&qword_1EE2D6058, MEMORY[0x1E699EE50]);
  v30 = v38;
  sub_1E65E4DE8();
  v31 = sub_1E65E4F08();
  (*(v42 + 8))(v30, v43);
  (*(v40 + 8))(v12, v41);
  (*(v19 + 8))(v22, v18);
  return v31;
}

uint64_t sub_1E61C01BC()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65D76F8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));

  return sub_1E61BFC24((v0 + v2), v5, v6);
}

id sub_1E61C02A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v55 = a2;
  v49[1] = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v5 = *(*(v57 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v57);
  v59 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D0, &qword_1E65F5738);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D8, &qword_1E65F5740);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v49 - v14;
  v51 = sub_1E65D76F8();
  v16 = *(v51 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v58 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v49 - v25;
  v27 = sub_1E65D7848();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AppState();
  v33 = v32[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v26);
  sub_1E5DFE50C(v22, &qword_1ED071F78, &unk_1E65EA3F0);
  v34 = *(v28 + 48);
  v35 = v34(v26, 1, v27);
  v54 = v31;
  if (v35 == 1)
  {
    sub_1E65D77C8();
    if (v34(v26, 1, v27) != 1)
    {
      sub_1E5DFE50C(v26, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v28 + 32))(v31, v26, v27);
  }

  (*(v16 + 16))(v58, v55, v51);
  v36 = *(a1 + v32[40]);
  v37 = v32[65];
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  sub_1E65E4D78();
  v38 = v53;
  sub_1E65E4C98();
  (*(v52 + 8))(v15, v38);
  v39 = v32[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v40 = v56;
  sub_1E65E4C98();
  v41 = v59;
  sub_1E5FAB460(v40, v59, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
        v44 = *v41;
        v45 = sub_1E65D76A8();
        (*(*(v45 - 8) + 8))(&v41[v43], v45);
      }

      else
      {
        sub_1E5DFE50C(v41, &qword_1ED072808, &qword_1E65EBE00);
      }
    }

    else
    {
      v46 = *v41;
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v48 = result;
    MobileGestalt_get_wapiCapability();

    return sub_1E65E37B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E61C0898@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v146 = a1;
  v144 = a3;
  v183 = sub_1E65E36D8();
  v189 = *(v183 - 8);
  v4 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v165 = v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v164 = v129 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v181 = v129 - v11;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076478, &qword_1E65F56C8);
  v188 = *(v163 - 8);
  v12 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v162 = v129 - v13;
  v202 = sub_1E65E37C8();
  v173 = *(v202 - 8);
  v14 = *(v173 + 64);
  v15 = MEMORY[0x1EEE9AC00](v202);
  v199 = v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v184 = v129 - v17;
  v182 = sub_1E65DF818();
  v172 = *(v182 - 8);
  v18 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v213 = v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1E65E36E8();
  v186 = *(v211 - 8);
  v20 = *(v186 + 64);
  v21 = MEMORY[0x1EEE9AC00](v211);
  v161 = v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v206 = (v129 - v23);
  v205 = sub_1E65E3798();
  v171 = *(v205 - 8);
  v24 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v204 = v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_1E65E3678();
  v208 = *(v212 - 8);
  v26 = *(v208 + 64);
  v27 = MEMORY[0x1EEE9AC00](v212);
  v203 = v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v214 = v129 - v29;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073200, &qword_1E65ED058);
  v30 = *(v210 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v201 = v129 - v32;
  v33 = type metadata accessor for AppComposer();
  v138 = *(v33 - 8);
  v34 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v139 = v35;
  v140 = v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v200 = v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v215 = v129 - v40;
  v41 = sub_1E65D7348();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1E65D7848();
  v141 = *(v142 - 8);
  v45 = *(v141 + 64);
  v46 = MEMORY[0x1EEE9AC00](v142);
  v136 = v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = v129 - v48;
  v50 = sub_1E65E5C28();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v185 = sub_1E65D72D8();
  v52 = *(v185 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x1EEE9AC00](v185);
  v159 = v129 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v158 = v129 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v198 = v129 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v197 = v129 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v63 = v129 - v62;
  v135 = sub_1E65DF7E8();
  v134 = *(v135 - 8);
  v64 = *(v134 + 64);
  v65 = MEMORY[0x1EEE9AC00](v135);
  v131 = v129 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v68 = v129 - v67;
  v133 = sub_1E65D76F8();
  v132 = *(v133 - 8);
  v69 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v130 = v129 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = [objc_opt_self() bundleForClass_];
  v143 = a2;
  v73 = *a2;
  swift_getKeyPath();
  v129[1] = v73;
  sub_1E65E4EC8();

  v137 = v49;
  sub_1E65E5CD8();
  sub_1E65D7338();
  v160 = v44;
  sub_1E65D72E8();
  v74 = *(v52 + 56);
  v180 = v52 + 56;
  v179 = v74;
  v74(v215, 1, 1, v185);
  v145 = v68;
  v157 = v63;
  sub_1E65DF7D8();
  v209 = sub_1E65E3718();
  v207 = *(v209 + 16);
  if (v207)
  {
    v216 = MEMORY[0x1E69E7CC0];
    sub_1E601CA1C(0, v207, 0);
    v75 = 0;
    v76 = v208;
    v195 = v209 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v194 = v208 + 16;
    v193 = *MEMORY[0x1E699EDE0];
    v192 = v208 + 88;
    v191 = (v208 + 8);
    v178 = *MEMORY[0x1E699EDD8];
    v190 = (v30 + 104);
    v187 = (v208 + 96);
    v156 = (v189 + 32);
    v155 = *MEMORY[0x1E699EDD0];
    v154 = *MEMORY[0x1E699F030];
    v153 = *MEMORY[0x1E699EDF0];
    v186 += 104;
    v152 = (v189 + 8);
    v151 = *MEMORY[0x1E699F038];
    v177 = (v171 + 32);
    v176 = (v173 + 16);
    v175 = (v173 + 88);
    v174 = (v173 + 8);
    v173 += 96;
    v172 += 104;
    v150 = (v188 + 32);
    v171 += 8;
    v170 = *MEMORY[0x1E699EDF8];
    v169 = *MEMORY[0x1E699EE38];
    v149 = *MEMORY[0x1E699EE40];
    v148 = *MEMORY[0x1E699F058];
    v147 = *MEMORY[0x1E699F050];
    v168 = *MEMORY[0x1E699F040];
    v189 = v30 + 32;
    v77 = v216;
    v78 = v184;
    v196 = v30;
    while (v75 < *(v209 + 16))
    {
      v215 = v77;
      v79 = *(v76 + 16);
      v80 = v214;
      v81 = v212;
      v79(v214, v195 + *(v76 + 72) * v75, v212);
      v82 = v203;
      v79(v203, v80, v81);
      v83 = (*(v76 + 88))(v82, v81);
      if (v83 == v193)
      {
        (*v187)(v82, v81);
        (*v177)(v204, v82, v205);
        v84 = sub_1E65E3728();
        v85 = v206;
        *v206 = v84;
        v85[1] = v86;
        (*v186)(v85, v170, v211);
        sub_1E65E3748();
        sub_1E65E3788();
        v87 = v200;
        sub_1E65E3778();
        v179(v87, 0, 1, v185);
        LODWORD(v188) = sub_1E65E3738();
        sub_1E65E3768();
        v88 = v199;
        v89 = v202;
        (*v176)(v199, v78, v202);
        v90 = (*v175)(v88, v89);
        if (v90 == v169)
        {
          v91 = v202;
          (*v174)(v78, v202);
          v92 = v199;
          (*v173)(v199, v91);
          v93 = *(v92 + 1);
          v167 = *v92;
          v166 = v93;
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076488, &qword_1E65F56D8);
          v95 = *(v94 + 64);
          v96 = *v150;
          v97 = v162;
          v98 = v163;
          (*v150)(v162, &v92[*(v94 + 48)], v163);
          v99 = v181;
          sub_1E5FAB460(&v92[v95], v181, &qword_1ED0734E8, &qword_1E65ED470);
          v100 = *(v94 + 48);
          v101 = *(v94 + 64);
          *v213 = v167;
          *(v213 + 1) = v166;
          v78 = v184;
          v96(&v213[v100], v97, v98);
          sub_1E5FAB460(v99, &v213[v101], &qword_1ED0734E8, &qword_1E65ED470);
          v102 = (&v182 + 4);
        }

        else
        {
          if (v90 != v149)
          {
            goto LABEL_20;
          }

          v109 = v202;
          (*v174)(v78, v202);
          v110 = v199;
          (*v173)(v199, v109);
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0);
          v112 = *(v111 + 48);
          v113 = v181;
          sub_1E5FAB460(v110, v181, &qword_1ED0734E8, &qword_1E65ED470);
          v114 = v110 + v112;
          v115 = v164;
          sub_1E5FAB460(v114, v164, &qword_1ED072340, &qword_1E65EA410);
          v116 = *(v111 + 48);
          v117 = v213;
          sub_1E5FAB460(v113, v213, &qword_1ED0734E8, &qword_1E65ED470);
          sub_1E5FAB460(v115, &v117[v116], &qword_1ED072340, &qword_1E65EA410);
          v102 = &v183;
        }

        v108 = v196;
        (*v172)(v213, *(v102 - 64), v182);
        sub_1E61C681C(&qword_1EE2D6060, MEMORY[0x1E699EE00]);
        v106 = v201;
        sub_1E65DF808();
        (*v171)(v204, v205);
        v107 = v168;
        v81 = v212;
        v103 = v210;
      }

      else
      {
        v103 = v210;
        if (v83 == v178)
        {
          (*v187)(v82, v81);
          v104 = v165;
          (*v156)(v165, v82, v183);
          v105 = v161;
          sub_1E65E36C8();
          (*v186)(v105, v153, v211);
          sub_1E65E36B8();
          sub_1E65D7338();
          sub_1E65D72E8();
          sub_1E65E36A8();
          sub_1E65D7338();
          sub_1E65D72E8();
          sub_1E65E3698();
          sub_1E65D7338();
          v81 = v212;
          v78 = v184;
          sub_1E65D72E8();
          sub_1E61C681C(&qword_1EE2D6060, MEMORY[0x1E699EE00]);
          v106 = v201;
          v103 = v210;
          sub_1E65DF7F8();
          (*v152)(v104, v183);
          v107 = v151;
          v108 = v196;
        }

        else
        {
          v107 = v154;
          v108 = v196;
          v106 = v201;
          if (v83 != v155)
          {
            goto LABEL_21;
          }
        }
      }

      (*v191)(v214, v81);
      (*v190)(v106, v107, v103);
      v77 = v215;
      v216 = v215;
      v119 = *(v215 + 2);
      v118 = *(v215 + 3);
      if (v119 >= v118 >> 1)
      {
        sub_1E601CA1C(v118 > 1, v119 + 1, 1);
        v77 = v216;
      }

      ++v75;
      *(v77 + 2) = v119 + 1;
      (*(v108 + 32))(&v77[((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v119], v106, v103);
      v76 = v208;
      if (v207 == v75)
      {

        v215 = v77;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    sub_1E65E6C08();
    __break(1u);
LABEL_21:
    result = sub_1E65E6C08();
    __break(1u);
  }

  else
  {

    v215 = MEMORY[0x1E69E7CC0];
LABEL_18:
    LODWORD(v214) = sub_1E65E3708();
    swift_getKeyPath();
    v120 = v137;
    sub_1E65E4EC8();

    v121 = v134;
    v122 = v135;
    (*(v134 + 16))(v131, v145, v135);
    v123 = v141;
    v124 = v142;
    (*(v141 + 16))(v136, v120, v142);
    v125 = v140;
    sub_1E5E1DEAC(v143, v140);
    v126 = (*(v138 + 80) + 16) & ~*(v138 + 80);
    v127 = swift_allocObject();
    sub_1E5E1E2B8(v125, v127 + v126, type metadata accessor for AppComposer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076468, &qword_1E65F56B8);
    sub_1E61BEE9C();
    sub_1E61C681C(&qword_1EE2D6060, MEMORY[0x1E699EE00]);
    sub_1E65DF7B8();
    (*(v123 + 8))(v120, v124);
    (*(v121 + 8))(v145, v122);
    return (*(v132 + 8))(v130, v133);
  }

  return result;
}

uint64_t sub_1E61C208C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1E65E60A8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1E64B80F8(0, 0, v3, &unk_1E65F57B0, v5);
}

uint64_t sub_1E61C217C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v0[18] = swift_task_alloc();
  v2 = sub_1E65D74E8();
  v0[19] = v2;
  v3 = *(v2 - 8);
  v0[20] = v3;
  v4 = *(v3 + 64) + 15;
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C2270, 0, 0);
}

uint64_t sub_1E61C2270()
{
  v15 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v14[0] = 0;
  v14[1] = 0;
  URLAction.makeURL(root:)(v14, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[18], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing explore url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[21];
    v9 = v0[18];

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[22] = objc_opt_self();
    sub_1E65E6058();
    v0[23] = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C24A4, v13, v12);
  }
}

uint64_t sub_1E61C24A4()
{
  v2 = v0[22];
  v1 = v0[23];

  v0[24] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C2528, 0, 0);
}

uint64_t sub_1E61C2528()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = sub_1E65D7448();
  v0[25] = v3;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = sub_1E65E5AF8();
  v0[26] = v4;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1E61C26E8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_50;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C26E8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61C6BE8, 0, 0);
}

uint64_t sub_1E61C27C8(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1E61C2824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_1E65D74E8();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E36F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v42 - v19;
  v21 = sub_1E65E36E8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v25, a1, v21);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == *MEMORY[0x1E699EDF8])
  {
    (*(v22 + 96))(v25, v21);
    v27 = *v25;
    v28 = v25[1];
    v29 = sub_1E65E60A8();
    (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v27;
    v30[5] = v28;
    sub_1E64B80F8(0, 0, v20, &unk_1E65F57A0, v30);
  }

  if (v26 != *MEMORY[0x1E699EDF0])
  {
LABEL_14:
    sub_1E65E6C08();
    __break(1u);
    goto LABEL_15;
  }

  (*(v22 + 96))(v25, v21);
  (*(v10 + 32))(v16, v25, v9);
  (*(v10 + 16))(v14, v16, v9);
  v32 = (*(v10 + 88))(v14, v9);
  if (v32 == *MEMORY[0x1E699EE18])
  {
    sub_1E65D74C8();
    v34 = v44;
    v33 = v45;
    if ((*(v44 + 48))(v5, 1, v45) == 1)
    {
      (*(v10 + 8))(v16, v9);
      return sub_1E5DFE50C(v5, &qword_1ED072340, &qword_1E65EA410);
    }

    v37 = v43;
    (*(v34 + 32))(v43, v5, v33);
    v38 = [objc_opt_self() defaultWorkspace];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1E65D7448();
      sub_1E6215168(MEMORY[0x1E69E7CC0]);
      v41 = sub_1E65E5AF8();

      [v39 openSensitiveURL:v40 withOptions:v41];

      (*(v34 + 8))(v37, v33);
      return (*(v10 + 8))(v16, v9);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v32 != *MEMORY[0x1E699EE10])
  {
LABEL_15:
    result = sub_1E65E6C08();
    __break(1u);
    return result;
  }

  v35 = sub_1E65E60A8();
  (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  sub_1E64B80F8(0, 0, v20, &unk_1E65F5790, v36);

  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_1E61C2E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C2F3C, 0, 0);
}

uint64_t sub_1E61C2F3C()
{
  v17 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[18];
  v15 = v0[19];
  v16[0] = 0;
  v16[1] = 0;
  URLAction.makeURL(root:)(v16, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[20], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing item url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[23];
    v9 = v0[20];

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[24] = objc_opt_self();
    sub_1E65E6058();
    v0[25] = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C3174, v13, v12);
  }
}

uint64_t sub_1E61C3174()
{
  v2 = v0[24];
  v1 = v0[25];

  v0[26] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C31F8, 0, 0);
}

uint64_t sub_1E61C31F8()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = sub_1E65D7448();
  v0[27] = v3;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = sub_1E65E5AF8();
  v0[28] = v4;

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1E61C33B8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_40;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C33B8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61C3498, 0, 0);
}

uint64_t sub_1E61C3498()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61C3538()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v0[18] = swift_task_alloc();
  v2 = sub_1E65D74E8();
  v0[19] = v2;
  v3 = *(v2 - 8);
  v0[20] = v3;
  v4 = *(v3 + 64) + 15;
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C362C, 0, 0);
}

uint64_t sub_1E61C362C()
{
  v15 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v14[0] = 0;
  v14[1] = 0;
  URLAction.makeURL(root:)(v14, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[18], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing explore url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[21];
    v9 = v0[18];

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[22] = objc_opt_self();
    sub_1E65E6058();
    v0[23] = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C3860, v13, v12);
  }
}

uint64_t sub_1E61C3860()
{
  v2 = v0[22];
  v1 = v0[23];

  v0[24] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C38E4, 0, 0);
}

uint64_t sub_1E61C38E4()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = sub_1E65D7448();
  v0[25] = v3;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = sub_1E65E5AF8();
  v0[26] = v4;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1E61C26E8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_43;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t AppComposer.sampleContentWorkoutViewBuilder(onHide:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076498, &qword_1E65F56E8);
  sub_1E61C3D58();
  sub_1E5FED46C(&qword_1ED0764A8, &qword_1ED076498, &qword_1E65F56E8);
  return sub_1E65E4B78();
}

uint64_t sub_1E61C3B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a2;
  v18[1] = a4;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  sub_1E5E1DEAC(a1, v18 - v11);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1E5E1E2B8(v12, v14 + v13, type metadata accessor for AppComposer);
  v15 = (v14 + ((v13 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v18[0];
  v15[1] = a3;
  sub_1E5E1DEAC(a1, v10);
  v16 = swift_allocObject();
  sub_1E5E1E2B8(v10, v16 + v13, type metadata accessor for AppComposer);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076468, &qword_1E65F56B8);
  sub_1E61BEE9C();
  return sub_1E65E3648();
}

unint64_t sub_1E61C3D58()
{
  result = qword_1ED0764A0;
  if (!qword_1ED0764A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0764A0);
  }

  return result;
}

unint64_t sub_1E61C3DAC()
{
  result = qword_1ED0764B8;
  if (!qword_1ED0764B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0764C0, &qword_1E65F56F8);
    sub_1E61C3D58();
    sub_1E5FED46C(&qword_1ED0764A8, &qword_1ED076498, &qword_1E65F56E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0764B8);
  }

  return result;
}

uint64_t sub_1E61C3E70(void *a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764C8, &qword_1E65F5700);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29 = v27 - v7;
  v8 = sub_1E65E3618();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = sub_1E65E3638();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1E65E37E8();
  v28 = *(v17 - 8);
  v18 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = *a1;
  v21 = swift_allocObject();
  *(v21 + 16) = v27[0];
  *(v21 + 24) = a3;
  sub_1E5E1DEAC(a1, v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = swift_allocObject();
  sub_1E5E1E2B8(v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AppComposer);
  *(v23 + v22 + v14) = 1;

  sub_1E65E3628();
  sub_1E65E37D8();
  sub_1E65E3608();
  type metadata accessor for AppFeature();
  sub_1E61C681C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E61C681C(&qword_1EE2D6058, MEMORY[0x1E699EE50]);
  v24 = v29;
  sub_1E65E4DE8();
  v25 = sub_1E65E4F08();
  (*(v32 + 8))(v24, v33);
  (*(v30 + 8))(v11, v31);
  (*(v28 + 8))(v20, v17);
  return v25;
}

uint64_t sub_1E61C4344()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1E61C3E70((v0 + v2), v4, v5);
}

id sub_1E61C43D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v3 = *(*(v49 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v49);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D0, &qword_1E65F5738);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v46 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D8, &qword_1E65F5740);
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v46 - v12;
  v14 = sub_1E65D76F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v46 - v23;
  v25 = sub_1E65D7848();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AppState();
  v31 = v30[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v24);
  sub_1E5DFE50C(v20, &qword_1ED071F78, &unk_1E65EA3F0);
  v32 = *(v26 + 48);
  if (v32(v24, 1, v25) == 1)
  {
    sub_1E65D77C8();
    if (v32(v24, 1, v25) != 1)
    {
      sub_1E5DFE50C(v24, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
  }

  sub_1E65D76E8();
  v33 = *(a1 + v30[40]);
  v34 = v30[65];
  v53 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  sub_1E65E4D78();
  v35 = v47;
  sub_1E65E4C98();
  (*(v10 + 8))(v13, v35);
  v36 = v30[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v37 = v48;
  sub_1E65E4C98();
  v38 = v51;
  sub_1E5FAB460(v37, v51, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
        v41 = *v38;
        v42 = sub_1E65D76A8();
        (*(*(v42 - 8) + 8))(&v38[v40], v42);
      }

      else
      {
        sub_1E5DFE50C(v38, &qword_1ED072808, &qword_1E65EBE00);
      }
    }

    else
    {
      v43 = *v38;
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v45 = result;
    MobileGestalt_get_wapiCapability();

    return sub_1E65E37B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E61C4960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v86 = a1;
  v90 = a3;
  v78 = type metadata accessor for ArtworkContent();
  v3 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ArtworkDescriptor();
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v7 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v8 = *(*(v89 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v89);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v75 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076470, &qword_1E65F56C0);
  v23 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = (&v75 - v24);
  v76 = sub_1E65E4A08();
  v25 = *(v76 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076478, &qword_1E65F56C8);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v75 - v32;
  v34 = sub_1E65E37C8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, v86, v34);
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 == *MEMORY[0x1E699EE38])
  {
    (*(v35 + 96))(v38, v34);
    v40 = *v38;
    v41 = *(v38 + 1);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076488, &qword_1E65F56D8);
    (*(v30 + 32))(v33, &v38[*(v42 + 48)], v29);
    if (!sub_1E65E1778())
    {
      v43 = [objc_opt_self() mainBundle];
    }

    v44 = &v38[*(v42 + 64)];
    sub_1E65E4A48();
    v45 = v76;
    (*(v25 + 104))(v28, *MEMORY[0x1E6981630], v76);
    v46 = sub_1E65E4A38();

    (*(v25 + 8))(v28, v45);
    *v88 = v46;
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    (*(v30 + 8))(v33, v29);
    return sub_1E5DFE50C(v44, &qword_1ED0734E8, &qword_1E65ED470);
  }

  if (v39 == *MEMORY[0x1E699EE40])
  {
    (*(v35 + 96))(v38, v34);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0) + 48);
    v48 = v85;
    sub_1E5FAB460(v38, v85, &qword_1ED0734E8, &qword_1E65ED470);
    v49 = v81;
    sub_1E5FAB460(&v38[v47], v81, &qword_1ED072340, &qword_1E65EA410);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    sub_1E5DFD1CC(v48, v21, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v49, v77, &qword_1ED072340, &qword_1E65EA410);
    v51 = v79;
    sub_1E65DB248();
    v52 = *MEMORY[0x1E699DC58];
    v53 = sub_1E65DC488();
    (*(*(v53 - 8) + 104))(v51 + v50, v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
    v44 = v48;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v54 = type metadata accessor for AppComposer();
    v55 = v84;
    v56 = *(v84 + *(v54 + 20) + 8);
    v57 = sub_1E65DAE38();
    v58 = sub_1E65DAE38();
    v59 = sub_1E65E4B48();
    v60 = 4.0;
    if (v59)
    {
      v60 = 8.0;
    }

    v61 = 16.0;
    if (v59)
    {
      v61 = 18.0;
    }

    if (v57 == v58)
    {
      v62 = v61;
    }

    else
    {
      v62 = v60;
    }

    if (v57 == v58)
    {
      v63 = 12.0;
    }

    else
    {
      v63 = 8.0;
    }

    sub_1E5E1E2B8(v51, v7, type metadata accessor for ArtworkContent);
    v64 = v80;
    *(v7 + *(v80 + 20)) = MEMORY[0x1E69E7CD0];
    v65 = (v7 + v64[6]);
    *v65 = 0.0;
    v65[1] = v62;
    v65[2] = v62;
    v65[3] = v63;
    *(v7 + v64[7]) = 1;
    v66 = (v7 + v64[8]);
    *v66 = 0;
    v66[1] = 0;
    v67 = v82;
    sub_1E64D2DD0(v7, v55, v82);
    v68 = sub_1E65E4B98();
    v70 = v69;
    v71 = v67 + *(v89 + 36);
    sub_1E64D54B4(v7, v55, v71);
    sub_1E61BF8AC(v7);
    v72 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28) + 36));
    *v72 = v68;
    v72[1] = v70;
    v73 = v83;
    sub_1E5EACC5C(v67, v83);
    sub_1E5EACCCC(v73, v88);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    sub_1E5EACD3C(v73);
    sub_1E5DFE50C(v49, &qword_1ED072340, &qword_1E65EA410);
    return sub_1E5DFE50C(v44, &qword_1ED0734E8, &qword_1E65ED470);
  }

  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E61C527C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = sub_1E65D74E8();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C5374, 0, 0);
}

uint64_t sub_1E61C5374()
{
  v17 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[18];
  v15 = v0[19];
  v16[0] = 0;
  v16[1] = 0;
  URLAction.makeURL(root:)(v16, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[20], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing item url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[23];
    v9 = v0[20];

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[24] = objc_opt_self();
    sub_1E65E6058();
    v0[25] = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C55B0, v13, v12);
  }
}