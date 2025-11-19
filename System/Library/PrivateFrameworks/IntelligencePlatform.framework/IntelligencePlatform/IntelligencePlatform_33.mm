uint64_t sub_1ABCF1E84(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x64496E6F73726570;
}

uint64_t sub_1ABCF1EF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABCF1E84(*v1);
}

uint64_t sub_1ABCF1F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABCF1D74(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABCF1F4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABCF1FA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABCF201C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABCF2114(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphAgentAffiliationRelationship.init(from:)();
}

void static CustomGraphAttendeeRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABD1B81C(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCF2680(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a6;
  v79 = a4;
  v83 = *(a5 - 8);
  v84 = a2;
  v10 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v76 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v82 = v76 - v17;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 1);
  v87 = AssociatedTypeWitness;
  v21 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v76 - v25;
  v27 = *(v19 + 24);
  v88 = a1;
  v27(v92, a5, v19, v24);
  v76[1] = a3;
  v77 = v12;
  v80 = v15;
  v85 = a5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v29 = v92[0];
  v28 = v92[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[300], *(_Records_GDEntityPredicate_records + 76), *(_Records_GDEntityPredicate_records + 77), &v90);
  if (v90 == v29 && v91 == v28)
  {

LABEL_9:

    v32 = v88;
    v33 = v85;
    (*(v19 + 32))(v85, v19);
    v34 = v87;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = (*(AssociatedConformanceWitness + 24))(v34, AssociatedConformanceWitness);
    v38 = v37;
    (*(v86 + 8))(v26, v34);
    if (v38)
    {
      v39 = v84;
      swift_beginAccess();
      sub_1ABB4DC20();
      v40 = *(*(v39 + 16) + 16);
      sub_1ABB4E024(v40);
      v41 = *(v39 + 16);
      *(v41 + 16) = v40 + 1;
      v42 = v41 + 16 * v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v38;
      *(v39 + 16) = v41;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v43 = sub_1ABF237F4();
    sub_1ABA7AA24(v43, qword_1ED871B40);
    v44 = v82;
    v45 = v83;
    v46 = *(v83 + 16);
    v46(v82, v32, v33);
    v47 = sub_1ABF237D4();
    v48 = sub_1ABF24664();
    if (!os_log_type_enabled(v47, v48))
    {

      (*(v45 + 8))(v44, v33);
      return;
    }

    v49 = swift_slowAlloc();
    LODWORD(v88) = v48;
    v50 = v49;
    v87 = swift_slowAlloc();
    v90 = v87;
    *v50 = 136642819;
    v46(v80, v44, v33);
    v51 = sub_1ABF23C94();
    v53 = v52;
    (*(v45 + 8))(v44, v33);
    v54 = sub_1ABADD6D8(v51, v53, &v90);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_1ABA78000, v47, v88, "Failed to parse %{sensitive}s.", v50, 0xCu);
    v55 = v87;
    sub_1ABA84B54(v87);
    MEMORY[0x1AC5AB8B0](v55, -1, -1);
    v56 = v50;
    goto LABEL_30;
  }

  v76[0] = v6;
  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_36;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[324], *(_Records_GDEntityPredicate_records + 82), *(_Records_GDEntityPredicate_records + 83), &v90);
  v57 = v90 == v29 && v91 == v28;
  v58 = v76[0];
  v59 = v88;
  if (v57)
  {
  }

  else
  {
    v60 = sub_1ABF25054();

    if ((v60 & 1) == 0)
    {
      return;
    }
  }

  v61 = v81;
  v62 = v85;
  (*(v19 + 32))(v85, v19);
  v63 = v87;
  v64 = swift_getAssociatedConformanceWitness();
  (*(v64 + 32))(&v90, v63, v64);
  (*(v86 + 8))(v61, v63);
  if (v91)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v65 = sub_1ABF237F4();
    sub_1ABA7AA24(v65, qword_1ED871B40);
    v66 = v83;
    v67 = *(v83 + 16);
    v68 = v77;
    v67(v77, v59, v62);
    v47 = sub_1ABF237D4();
    v69 = sub_1ABF24664();
    if (os_log_type_enabled(v47, v69))
    {
      v70 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v90 = v88;
      *v70 = 136642819;
      LODWORD(v87) = v69;
      v67(v80, v68, v62);
      v71 = sub_1ABF23C94();
      v73 = v72;
      (*(v66 + 8))(v68, v62);
      v74 = sub_1ABADD6D8(v71, v73, &v90);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_1ABA78000, v47, v87, "Failed to parse %{sensitive}s.", v70, 0xCu);
      v75 = v88;
      sub_1ABA84B54(v88);
      MEMORY[0x1AC5AB8B0](v75, -1, -1);
      v56 = v70;
LABEL_30:
      MEMORY[0x1AC5AB8B0](v56, -1, -1);

      return;
    }

    (*(v66 + 8))(v68, v62);
  }

  else
  {
    TypedEntityIdentifier.init(untyped:)(&v90, v79, *(v78 + 8), &v93);
    if (!v58)
    {
      v89 = v93;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier();
      sub_1ABF241F4();
      sub_1ABF241A4();
      goto LABEL_11;
    }
  }
}

uint64_t sub_1ABCF2F50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001ABF8D720 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6565646E65747461 && a2 == 0xEA00000000006449)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABCF3074(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x6565646E65747461;
}

uint64_t sub_1ABCF30DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABCF3074(*v1);
}

uint64_t sub_1ABCF30E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABCF2F50(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABCF3118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABCF316C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABCF31E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABCF32E0()
{
  sub_1ABA7BCA8();
  v32 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = v8;
  v9(255);
  sub_1ABAA030C();
  swift_getWitnessTable();
  sub_1ABA82858();
  v36 = sub_1ABF24EB4();
  sub_1ABA7BB64(v36);
  v34 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E5C0();
  v15 = v7[3];
  v14 = v7[4];
  v16 = sub_1ABA97F40();
  sub_1ABA93E20(v16, v17);
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v7);
  }

  else
  {
    v18 = v3;
    sub_1ABD0E3C0();
    sub_1ABF24E64();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    LOBYTE(v38) = 1;
    sub_1ABD0A2D4();
    sub_1ABF24E64();
    v31 = v41;
    v19 = v41;
    sub_1ABD1B77C(*(&v41 + 1));
    v20 = v42;
    v21 = *(v18 + 8);
    type metadata accessor for TypedEntityIdentifier();
    type metadata accessor for OneOf();
    sub_1ABD1B178();
    sub_1ABA8A1E0();
    WitnessTable = swift_getWitnessTable();
    sub_1ABA9F6E4();
    v48 = WitnessTable;
    v49 = swift_getWitnessTable();
    sub_1ABD1BD18();
    sub_1ABA8AE78();
    swift_getWitnessTable();
    sub_1ABD1B66C();
    sub_1ABF24E64();
    v23 = *(v34 + 8);
    v24 = sub_1ABA954F0();
    v25(v24);
    v37 = v50;
    v35 = v51;
    v53 = v52;
    v38 = v41;
    *&v39 = v41;
    *(&v39 + 1) = v30;
    *&v40[0] = v42;
    *(&v40[0] + 1) = v50;
    *&v40[1] = v51;
    BYTE8(v40[1]) = v52;
    v26 = v39;
    *v33 = v41;
    v33[1] = v26;
    v33[2] = v40[0];
    *(v33 + 41) = *(v40 + 9);
    v27 = v32(0, v5, v18);
    v28 = *(v27 - 8);
    (*(v28 + 16))(&v41, &v38, v27);
    v29 = sub_1ABA8D348();
    sub_1ABA84B54(v29);
    v41 = v31;
    v42 = v19;
    v43 = v30;
    v44 = v20;
    v45 = v37;
    v46 = v35;
    v47 = v53;
    (*(v28 + 8))(&v41, v27);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void sub_1ABCF36FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphAttendeeRelationship.init(from:)();
}

void static CustomGraphDateRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4E0), *(_Records_GDEntityClass_records + 0x4E8), *(_Records_GDEntityClass_records + 0x4F0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s20IntelligencePlatform16CustomGraphEventV26getInitializationResources10Foundation11JSONDecoderCyFZ_0()
{
  v0 = sub_1ABF217F4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1ABF217E4();
}

uint64_t sub_1ABCF37DC@<X0>(void (*a1)(void *__return_ptr, void (*)(uint64_t a1), void, void (*)(), void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = a1;
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v34 - v6;
  v39 = type metadata accessor for CustomGraphDateRelationship(0);
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = v12 + 16;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v9;
  v14[4] = v11;
  v14[5] = v12;

  v15 = v43;
  v41(v42, sub_1ABCF3F60, 0, sub_1ABD192F4, v14);
  if (v15)
  {
  }

  else
  {
    v35 = v11;
    v36 = v12;
    v41 = v9;
    v17 = v38;
    v43 = a2;

    v19 = v42[0];
    v18 = v42[1];
    swift_beginAccess();
    if (*(*(v9 + 16) + 16) || (swift_beginAccess(), *(*(v11 + 16) + 16)) || (swift_beginAccess(), *(*v13 + 16)))
    {
      v34 = 0;
      v20 = v17;
      *v17 = v19;
      v17[1] = v18;
      v21 = sub_1ABF21EB4();
      v22 = v37;
      sub_1ABA7B9B4(v37, 1, 1, v21);
      v23 = v39;
      v24 = *(v39 + 20);

      sub_1ABC8B078(v25, v22, (v17 + v24));
      swift_beginAccess();
      v26 = *(v35 + 16);
      sub_1ABA7B9B4(v22, 1, 1, v21);
      v27 = *(v23 + 24);

      sub_1ABC8B078(v28, v22, (v17 + v27));
      swift_beginAccess();
      v29 = *(v36 + 16);
      sub_1ABA7B9B4(v22, 1, 1, v21);
      v30 = *(v23 + 28);

      sub_1ABC8B078(v31, v22, (v20 + v30));

      v32 = v40;
      sub_1ABCF9424();
      v33 = 0;
    }

    else
    {

      v33 = 1;
      v23 = v39;
      v32 = v40;
    }

    return sub_1ABA7B9B4(v32, v33, 1, v23);
  }
}

void sub_1ABCF3BF0()
{
  sub_1ABA7BCA8();
  v48 = v1;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v47 = v7;
  v8 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v8);
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v12);
  v46 = type metadata accessor for CustomGraphDateRelationship(0);
  v13 = sub_1ABA7BBB0(v46);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v45 = v16;
  sub_1ABA7D028();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = v19 + 16;
  sub_1ABA7D028();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  sub_1ABA807B4();
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = v48;
  v22[4] = v5;
  v22[5] = v17;
  v22[6] = v19;
  v22[7] = v21;

  sub_1ABD1B678();
  v49();
  if (v0)
  {
  }

  else
  {

    sub_1ABD1B0E8();
    if (*(*(v17 + 16) + 16) || (sub_1ABA890D8(), *(*v20 + 16)) || (sub_1ABAAA634(), sub_1ABD1B9FC(), v23))
    {
      *v45 = v50;
      v45[1] = v51;
      v24 = sub_1ABF21EB4();
      sub_1ABD1BD18();
      v25 = sub_1ABD1ADF0();
      sub_1ABA7B9B4(v25, v26, v27, v24);
      v28 = v46;
      v29 = v46[5];

      sub_1ABC8B078(v30, v20, (v45 + v29));
      sub_1ABA890D8();
      v31 = *(v19 + 16);
      v32 = sub_1ABD1ADF0();
      sub_1ABA7B9B4(v32, v33, v34, v24);
      v35 = v46[6];

      sub_1ABC8B078(v36, v20, (v45 + v35));
      sub_1ABAAA634();
      v37 = *(v21 + 16);
      v38 = sub_1ABD1ADF0();
      sub_1ABA7B9B4(v38, v39, v40, v24);
      v41 = v46[7];

      sub_1ABC8B078(v42, v20, (v45 + v41));

      sub_1ABA9DF34();
      v43 = v47;
      sub_1ABCF9424();
      v44 = 0;
    }

    else
    {

      v44 = 1;
      v28 = v46;
      v43 = v47;
    }

    sub_1ABA7B9B4(v43, v44, 1, v28);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCF3F60(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphDateRelationship init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4E0), *(_Records_GDEntityClass_records + 0x4E8), *(_Records_GDEntityClass_records + 0x4F0), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4E0), *(_Records_GDEntityClass_records + 0x4E8), *(_Records_GDEntityClass_records + 0x4F0), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCF41F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = sub_1ABF21EB4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v77 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v25;
  v76 = a4;
  v81 = a2;
  v82 = v27;
  v79 = v28;
  v83 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_41;
  }

  v29 = *a1;
  v30 = a1[1];
  v80 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), v84);
  if (*&v84[0] == v29 && *(&v84[0] + 1) == v30)
  {

    goto LABEL_21;
  }

  v73 = a5;
  v32 = sub_1ABF25054();

  if (v32)
  {
LABEL_21:
    v38 = v80;
    v39 = v80[5];
    v40 = v80[6];
    v41 = *(v80 + 56);
    sub_1ABD5253C();
    v42 = v82;
    if (sub_1ABA7E1E0(v18, 1, v82) == 1)
    {
      sub_1ABAB480C(v18, &qword_1EB4D9BF0, &qword_1ABF34240);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v43 = sub_1ABF237F4();
      sub_1ABA7AA24(v43, qword_1ED871B40);
      sub_1ABD1927C(v38, v84);
      v44 = sub_1ABF237D4();
      v45 = sub_1ABF24664();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_32;
      }

LABEL_25:
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v86 = v47;
      *v46 = 136642819;
      v48 = v38[1];
      v84[0] = *v38;
      v84[1] = v48;
      v85[0] = v38[2];
      *(v85 + 9) = *(v38 + 41);
      v49 = sub_1ABF23C94();
      v51 = sub_1ABADD6D8(v49, v50, &v86);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1ABA78000, v44, v45, "Failed to parse %{sensitive}s.", v46, 0xCu);
      sub_1ABA84B54(v47);
      MEMORY[0x1AC5AB8B0](v47, -1, -1);
      MEMORY[0x1AC5AB8B0](v46, -1, -1);

      return;
    }

    v52 = v79;
    (*(v79 + 32))(v26, v18, v42);
    swift_beginAccess();
    sub_1ABB4DD70();
    v53 = *(*(a3 + 16) + 16);
    sub_1ABB4E174(v53);
    v54 = *(a3 + 16);
    *(v54 + 16) = v53 + 1;
    (*(v52 + 16))(v54 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v53, v26, v42);
    *(a3 + 16) = v54;
    goto LABEL_27;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1548], *(_Records_GDEntityPredicate_records + 388), *(_Records_GDEntityPredicate_records + 389), v84);
  v33 = *&v84[0] == v29 && *(&v84[0] + 1) == v30;
  v34 = v73;
  if (v33)
  {

    goto LABEL_29;
  }

  v35 = sub_1ABF25054();

  if (v35)
  {
LABEL_29:
    v38 = v80;
    v55 = v80[5];
    v56 = v80[6];
    v57 = *(v80 + 56);
    v58 = v78;
    sub_1ABD5253C();
    v42 = v82;
    if (sub_1ABA7E1E0(v58, 1, v82) == 1)
    {
      sub_1ABAB480C(v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      if (qword_1ED871B38 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }

    v52 = v79;
    v26 = v77;
    (*(v79 + 32))(v77, v58, v42);
    v60 = v76;
    swift_beginAccess();
    sub_1ABB4DD70();
    v61 = *(*(v60 + 16) + 16);
    sub_1ABB4E174(v61);
    v62 = *(v60 + 16);
    *(v62 + 16) = v61 + 1;
    (*(v52 + 16))(v62 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v61, v26, v42);
    *(v60 + 16) = v62;
LABEL_27:
    (*(v52 + 8))(v26, v42);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_42:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1332], *(_Records_GDEntityPredicate_records + 334), *(_Records_GDEntityPredicate_records + 335), v84);
  if (*&v84[0] == v29 && *(&v84[0] + 1) == v30)
  {
  }

  else
  {
    v37 = sub_1ABF25054();

    if ((v37 & 1) == 0)
    {
      return;
    }
  }

  v38 = v80;
  v63 = v80[5];
  v64 = v80[6];
  v65 = *(v80 + 56);
  v66 = v75;
  sub_1ABD5253C();
  v67 = v82;
  if (sub_1ABA7E1E0(v66, 1, v82) != 1)
  {
    v68 = v79;
    v69 = v74;
    (*(v79 + 32))(v74, v66, v67);
    swift_beginAccess();
    sub_1ABB4DD70();
    v70 = *(*(v34 + 16) + 16);
    sub_1ABB4E174(v70);
    v71 = *(v34 + 16);
    *(v71 + 16) = v70 + 1;
    (*(v68 + 16))(v71 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v70, v69, v67);
    *(v34 + 16) = v71;
    (*(v68 + 8))(v69, v67);
    return;
  }

  sub_1ABAB480C(v66, &qword_1EB4D9BF0, &qword_1ABF34240);
  if (qword_1ED871B38 != -1)
  {
LABEL_38:
    swift_once();
  }

LABEL_31:
  v59 = sub_1ABF237F4();
  sub_1ABA7AA24(v59, qword_1ED871B40);
  sub_1ABD1927C(v38, v84);
  v44 = sub_1ABF237D4();
  v45 = sub_1ABF24664();
  if (os_log_type_enabled(v44, v45))
  {
    goto LABEL_25;
  }

LABEL_32:

  sub_1ABB6DBB8(v38);
}

void sub_1ABCF4A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v93 = a5;
  v97 = a4;
  v102 = a3;
  v111 = a2;
  v105 = *(a6 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v94 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v91 - v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  v110 = AssociatedTypeWitness;
  v20 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v108 = &v91 - v21;
  v22 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v95 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v91 - v28;
  v30 = sub_1ABF21EB4();
  v104 = *(v30 - 8);
  v31 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v92 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v96 = &v91 - v34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v101 = &v91 - v37;
  (*(v18 + 24))(v114, v6, v18, v36);
  v106 = v30;
  v107 = a1;
  v100 = v14;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_51;
  }

  v39 = v114[0];
  v38 = v114[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), &v112);
  if (v112 != v39 || v113 != v38)
  {
    v91 = v6;
    v41 = sub_1ABF25054();

    if (v41)
    {
      v6 = v91;
      goto LABEL_9;
    }

    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[1548], *(_Records_GDEntityPredicate_records + 388), *(_Records_GDEntityPredicate_records + 389), &v112);
      if (v112 == v39 && v113 == v38)
      {

LABEL_26:
        v6 = v91;

        v67 = v107;
        v68 = v108;
        (*(v18 + 32))(v6, v18);
        v69 = v110;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v71 = v99;
        BaseEntityFactObjectProtocol.asDateFromJSON(decodeWith:)(v111, v69, AssociatedConformanceWitness, v99);
        (*(v109 + 8))(v68, v69);
        v46 = v106;
        if (sub_1ABA7E1E0(v71, 1, v106) == 1)
        {
          sub_1ABAB480C(v71, &qword_1EB4D9BF0, &qword_1ABF34240);
          if (qword_1ED871B38 != -1)
          {
            swift_once();
          }

          v72 = sub_1ABF237F4();
          sub_1ABA7AA24(v72, qword_1ED871B40);
          v49 = *(v105 + 16);
          v50 = v98;
          v49(v98, v67, v6);
          v51 = sub_1ABF237D4();
          v52 = sub_1ABF24664();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v48 = v105;
            goto LABEL_14;
          }

          goto LABEL_48;
        }

        v62 = v104;
        v63 = v96;
        (*(v104 + 32))(v96, v71, v46);
        v73 = &v116;
        goto LABEL_32;
      }

      v66 = sub_1ABF25054();

      if (v66)
      {
        goto LABEL_26;
      }

      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1332], *(_Records_GDEntityPredicate_records + 334), *(_Records_GDEntityPredicate_records + 335), &v112);
        if (v112 == v39 && v113 == v38)
        {
        }

        else
        {
          v77 = sub_1ABF25054();

          if ((v77 & 1) == 0)
          {
            return;
          }
        }

        v78 = v107;
        v79 = v108;
        v6 = v91;
        (*(v18 + 32))(v91, v18);
        v80 = v110;
        v81 = swift_getAssociatedConformanceWitness();
        v82 = v95;
        BaseEntityFactObjectProtocol.asDateFromJSON(decodeWith:)(v111, v80, v81, v95);
        (*(v109 + 8))(v79, v80);
        v46 = v106;
        if (sub_1ABA7E1E0(v82, 1, v106) == 1)
        {
          sub_1ABAB480C(v82, &qword_1EB4D9BF0, &qword_1ABF34240);
          if (qword_1ED871B38 != -1)
          {
            swift_once();
          }

          v83 = sub_1ABF237F4();
          sub_1ABA7AA24(v83, qword_1ED871B40);
          v84 = *(v105 + 16);
          v50 = v94;
          v84(v94, v78, v6);
          v51 = sub_1ABF237D4();
          v85 = sub_1ABF24664();
          if (os_log_type_enabled(v51, v85))
          {
            v54 = swift_slowAlloc();
            v86 = v6;
            v56 = swift_slowAlloc();
            v112 = v56;
            *v54 = 136642819;
            v84(v100, v50, v86);
            v87 = sub_1ABF23C94();
            v89 = v88;
            (*(v105 + 8))(v50, v86);
            v90 = sub_1ABADD6D8(v87, v89, &v112);

            *(v54 + 4) = v90;
            v61 = v85;
            goto LABEL_15;
          }

LABEL_48:

          (*(v105 + 8))(v50, v6);
          return;
        }

        v62 = v104;
        v63 = v92;
        (*(v104 + 32))(v92, v82, v46);
        v73 = &v115;
LABEL_32:
        v64 = *(v73 - 32);
        goto LABEL_33;
      }

LABEL_52:
      __break(1u);
      return;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_9:

  v42 = v107;
  v43 = v108;
  (*(v18 + 32))(v6, v18);
  v44 = v110;
  v45 = swift_getAssociatedConformanceWitness();
  BaseEntityFactObjectProtocol.asDateFromJSON(decodeWith:)(v111, v44, v45, v29);
  (*(v109 + 8))(v43, v44);
  v46 = v106;
  if (sub_1ABA7E1E0(v29, 1, v106) != 1)
  {
    v62 = v104;
    v63 = v101;
    (*(v104 + 32))(v101, v29, v46);
    v64 = v102;
LABEL_33:
    swift_beginAccess();
    sub_1ABB4DD70();
    v74 = *(*(v64 + 16) + 16);
    sub_1ABB4E174(v74);
    v75 = *(v64 + 16);
    *(v75 + 16) = v74 + 1;
    (*(v62 + 16))(v75 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v74, v63, v46);
    *(v64 + 16) = v75;
    (*(v62 + 8))(v63, v46);
    return;
  }

  sub_1ABAB480C(v29, &qword_1EB4D9BF0, &qword_1ABF34240);
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v47 = sub_1ABF237F4();
  sub_1ABA7AA24(v47, qword_1ED871B40);
  v48 = v105;
  v49 = *(v105 + 16);
  v50 = v103;
  v49(v103, v42, v6);
  v51 = sub_1ABF237D4();
  v52 = sub_1ABF24664();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
LABEL_14:
    LODWORD(v111) = v52;
    v54 = v53;
    v55 = v6;
    v56 = swift_slowAlloc();
    v112 = v56;
    *v54 = 136642819;
    v49(v100, v50, v55);
    v57 = sub_1ABF23C94();
    v59 = v58;
    (*(v48 + 8))(v50, v55);
    v60 = sub_1ABADD6D8(v57, v59, &v112);

    *(v54 + 4) = v60;
    v61 = v111;
LABEL_15:
    _os_log_impl(&dword_1ABA78000, v51, v61, "Failed to parse %{sensitive}s.", v54, 0xCu);
    sub_1ABA84B54(v56);
    MEMORY[0x1AC5AB8B0](v56, -1, -1);
    MEMORY[0x1AC5AB8B0](v54, -1, -1);

    return;
  }

  (*(v48 + 8))(v50, v6);
}

uint64_t CustomGraphDateRelationship.init(subentityId:all_startDate:all_endDate:all_occurrenceDate:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v11 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7ED98();
  *a5 = *a1;
  v15 = sub_1ABF21EB4();
  v16 = sub_1ABD1ADF0();
  sub_1ABA7B9B4(v16, v17, v18, v15);
  v19 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABC8B078(a2, v5, (a5 + v19[5]));
  v20 = sub_1ABD1ADF0();
  sub_1ABA7B9B4(v20, v21, v22, v15);
  sub_1ABC8B078(a3, v5, (a5 + v19[6]));
  v23 = sub_1ABD1ADF0();
  sub_1ABA7B9B4(v23, v24, v25, v15);
  return sub_1ABC8B078(a4, v5, (a5 + v19[7]));
}

uint64_t sub_1ABCF57B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6572727563636FLL && a2 == 0xEE00657461446563)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABCF5920(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0x7461447472617473;
      break;
    case 2:
      result = 0x65746144646E65;
      break;
    case 3:
      result = 0x6E6572727563636FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCF59C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCF57B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCF59EC(uint64_t a1)
{
  v2 = sub_1ABD0E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCF5A28(uint64_t a1)
{
  v2 = sub_1ABD0E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphDateRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4D7178, &qword_1ABF51070);
  sub_1ABA96D00(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0E474();
  sub_1ABA8D27C();
  v13 = *v0;
  sub_1ABD0E36C();
  sub_1ABF24F84();
  if (!v1)
  {
    v6 = type metadata accessor for CustomGraphDateRelationship(0);
    v7 = v6[5];
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA80C14();
    sub_1ABD0C9E8(v8);
    sub_1ABD1AC08();
    sub_1ABF24F84();
    v9 = v6[6];
    sub_1ABD1AC08();
    sub_1ABF24F84();
    v10 = v6[7];
    sub_1ABD1AC08();
    sub_1ABF24F84();
  }

  v11 = sub_1ABA89DE4();
  v12(v11);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void CustomGraphDateRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v33[2] = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  v5 = sub_1ABA7BBB0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v34 = sub_1ABAD219C(&qword_1EB4D7188, &qword_1ABF51078);
  sub_1ABA7BB64(v34);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BCE0();
  v35 = type metadata accessor for CustomGraphDateRelationship(0);
  v15 = sub_1ABA7BBB0(v35);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C21C();
  v36 = v18;
  v19 = v2[3];
  v20 = v2[4];
  v38 = v2;
  v21 = sub_1ABA7ABE4();
  sub_1ABA88DCC(v21, v22);
  sub_1ABD0E474();
  sub_1ABAA0704();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v38);
  }

  else
  {
    v37 = v10;
    sub_1ABD0E3C0();
    sub_1ABF24E64();
    *v36 = v39;
    LOBYTE(v39) = 1;
    sub_1ABA7F460();
    sub_1ABD0C9E8(v23);
    sub_1ABD1B874();
    v33[1] = v24;
    sub_1ABF24E64();
    v25 = *(v35 + 20);
    sub_1ABAE2F1C();
    LOBYTE(v39) = 2;
    sub_1ABD1B874();
    sub_1ABA9E3E8();
    sub_1ABF24E64();
    v26 = v35;
    v27 = *(v35 + 24);
    sub_1ABAE2F1C();
    LOBYTE(v39) = 3;
    sub_1ABD1B874();
    sub_1ABF24E64();
    v28 = sub_1ABA8CC40();
    v29(v28);
    v30 = *(v26 + 28);
    sub_1ABA94EB8();
    sub_1ABA8AA88();
    sub_1ABD0AD58();
    sub_1ABA84B54(v38);
    v31 = sub_1ABA7D000();
    sub_1ABD0ADB0(v31, v32);
  }

  sub_1ABD1C004();
  sub_1ABA7BC90();
}

void static CustomGraphEmploymentRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1F8), *(_Records_GDEntityClass_records + 0x200), *(_Records_GDEntityClass_records + 0x208), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCF60E8(uint64_t a1, uint64_t a2)
{
  EntityClass.init(intValue:)(SHIBYTE(a2), &v16);
  v2 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphEmploymentRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1F8), *(_Records_GDEntityClass_records + 0x200), *(_Records_GDEntityClass_records + 0x208), v29);
    v7 = v30 == v4 && v5 == v31;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v29);
LABEL_9:
      sub_1ABAA8FA8(v3, v2);
      return;
    }

    *&v16 = v3;
    *(&v16 + 1) = v2;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v14 = v13;

    sub_1ABA88934(v29);
    if (v14)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1F8), *(_Records_GDEntityClass_records + 0x200), *(_Records_GDEntityClass_records + 0x208), &v25);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v20 = v3;
      v21 = v2;
      v22 = v4;
      v23 = v5;
      v24 = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v16, v15);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCF6380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[600], *(_Records_GDEntityPredicate_records + 151), *(_Records_GDEntityPredicate_records + 152), v30);
  if (*&v30[0] == v7 && *(&v30[0] + 1) == v8)
  {

LABEL_15:
    if ((*(a1 + 56) & 1) == 0)
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      swift_beginAccess();

      sub_1ABB4DC20();
      v24 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v24);
      v25 = *(a2 + 16);
      *(v25 + 16) = v24 + 1;
      v26 = v25 + 16 * v24;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      *(a2 + 16) = v25;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v10 = sub_1ABF25054();

  if (v10)
  {
    goto LABEL_15;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_29:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[588], *(_Records_GDEntityPredicate_records + 148), *(_Records_GDEntityPredicate_records + 149), v30);
  if (*&v30[0] == v7 && *(&v30[0] + 1) == v8)
  {
  }

  else
  {
    v12 = sub_1ABF25054();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    sub_1ABC4A52C(&v32, *(a1 + 40));
    if (!v3)
    {
      v27 = v32;
      swift_beginAccess();
      sub_1ABB4DD10();
      v28 = *(*(a3 + 16) + 16);
      sub_1ABB4E114(v28);
      v29 = *(a3 + 16);
      *(v29 + 16) = v28 + 1;
      *(v29 + 8 * v28 + 32) = v27;
      *(a3 + 16) = v29;
    }

    return;
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_17:
  v13 = sub_1ABF237F4();
  sub_1ABA7AA24(v13, qword_1ED871B40);
  sub_1ABD1927C(a1, v30);
  v14 = sub_1ABF237D4();
  v15 = sub_1ABF24664();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136642819;
    v18 = *(a1 + 16);
    v30[0] = *a1;
    v30[1] = v18;
    v31[0] = *(a1 + 32);
    *(v31 + 9) = *(a1 + 41);
    v19 = sub_1ABF23C94();
    v21 = sub_1ABADD6D8(v19, v20, &v32);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1ABA78000, v14, v15, "Failed to parse %{sensitive}s.", v16, 0xCu);
    sub_1ABA84B54(v17);
    MEMORY[0x1AC5AB8B0](v17, -1, -1);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
  }

  else
  {

    sub_1ABB6DBB8(a1);
  }
}

void sub_1ABCF671C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a6;
  v77 = a4;
  v81 = *(a5 - 8);
  v82 = a2;
  v10 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v72 - v17;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v21 = v84[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v72 - v25;
  v27 = *(v19 + 24);
  v85 = a1;
  v27(v89, a5, v19, v24);
  v74 = a3;
  v75 = v12;
  v78 = v15;
  v83 = a5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v29 = v89[0];
  v28 = v89[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[600], *(_Records_GDEntityPredicate_records + 151), *(_Records_GDEntityPredicate_records + 152), &v87);
  if (v87 == v29 && v88 == v28)
  {

LABEL_9:

    v32 = v83;
    (*(v19 + 32))(v83, v19);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v36 = v35;
    (v84[1])(v26, AssociatedTypeWitness);
    if (v36)
    {
      v37 = v82;
      swift_beginAccess();
      sub_1ABB4DC20();
      v38 = *(*(v37 + 16) + 16);
      sub_1ABB4E024(v38);
      v39 = *(v37 + 16);
      *(v39 + 16) = v38 + 1;
      v40 = v39 + 16 * v38;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      *(v37 + 16) = v39;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v41 = sub_1ABF237F4();
    sub_1ABA7AA24(v41, qword_1ED871B40);
    v42 = v80;
    v43 = v81;
    v44 = *(v81 + 16);
    v44(v80, v85, v32);
    v45 = sub_1ABF237D4();
    v46 = sub_1ABF24664();
    if (!os_log_type_enabled(v45, v46))
    {

      (*(v43 + 8))(v42, v32);
      return;
    }

    v47 = swift_slowAlloc();
    LODWORD(v85) = v46;
    v48 = v47;
    v84 = swift_slowAlloc();
    v87 = v84;
    *v48 = 136642819;
    v44(v78, v42, v32);
    v49 = sub_1ABF23C94();
    v51 = v50;
    (*(v43 + 8))(v42, v32);
    v52 = sub_1ABADD6D8(v49, v51, &v87);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1ABA78000, v45, v85, "Failed to parse %{sensitive}s.", v48, 0xCu);
    v53 = v84;
    sub_1ABA84B54(v84);
    MEMORY[0x1AC5AB8B0](v53, -1, -1);
    v54 = v48;
    goto LABEL_30;
  }

  v73 = v6;
  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_36;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[588], *(_Records_GDEntityPredicate_records + 148), *(_Records_GDEntityPredicate_records + 149), &v87);
  v55 = v87 == v29 && v88 == v28;
  v56 = v73;
  if (v55)
  {
  }

  else
  {
    v57 = sub_1ABF25054();

    if ((v57 & 1) == 0)
    {
      return;
    }
  }

  v58 = v79;
  v59 = v83;
  (*(v19 + 32))(v83, v19);
  v60 = swift_getAssociatedConformanceWitness();
  (*(v60 + 32))(&v87, AssociatedTypeWitness, v60);
  (v84[1])(v58, AssociatedTypeWitness);
  if (v88)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v61 = sub_1ABF237F4();
    sub_1ABA7AA24(v61, qword_1ED871B40);
    v62 = v81;
    v63 = *(v81 + 16);
    v64 = v75;
    v63(v75, v85, v59);
    v45 = sub_1ABF237D4();
    v65 = sub_1ABF24664();
    if (os_log_type_enabled(v45, v65))
    {
      v66 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v87 = v85;
      *v66 = 136642819;
      LODWORD(v84) = v65;
      v63(v78, v64, v59);
      v67 = sub_1ABF23C94();
      v69 = v68;
      (*(v62 + 8))(v64, v59);
      v70 = sub_1ABADD6D8(v67, v69, &v87);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_1ABA78000, v45, v84, "Failed to parse %{sensitive}s.", v66, 0xCu);
      v71 = v85;
      sub_1ABA84B54(v85);
      MEMORY[0x1AC5AB8B0](v71, -1, -1);
      v54 = v66;
LABEL_30:
      MEMORY[0x1AC5AB8B0](v54, -1, -1);

      return;
    }

    (*(v62 + 8))(v64, v59);
  }

  else
  {
    TypedEntityIdentifier.init(untyped:)(&v87, v77, *(v76 + 8), &v90);
    if (!v56)
    {
      v86 = v90;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier();
      sub_1ABF241F4();
      sub_1ABF241A4();
      goto LABEL_11;
    }
  }
}

uint64_t sub_1ABCF6FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D747261706564 && a2 == 0xEA0000000000746ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617A696E6167726FLL && a2 == 0xEE0064496E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABCF70E4(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0x656D747261706564;
  }

  return 0x617A696E6167726FLL;
}

uint64_t sub_1ABCF7154(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABCF70E4(*v1);
}

uint64_t sub_1ABCF7160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABCF6FC0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABCF7190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABCF71E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABCF7260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABCF7358(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphEmploymentRelationship.init(from:)();
}

double sub_1ABCF73A4@<D0>(void (*a1)(void *__return_ptr, uint64_t (*)(uint64_t a1), void, void (*)(_OWORD *a1), void *)@<X0>, void *a2@<X8>)
{
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v6;

  v8 = v20;
  a1(v19, sub_1ABCF7868, 0, sub_1ABD19888, v7);
  if (v8)
  {
  }

  else
  {

    v10 = v19[0];
    v11 = v19[1];
    swift_beginAccess();
    v12 = *(v3 + 16);
    if (v12[2] || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*(v6 + 16) + 16)))
    {
      v20 = sub_1ABB2B834(v12);
      v17 = v13;
      swift_beginAccess();
      v14 = *(v5 + 16);
      swift_beginAccess();
      v15 = *(v6 + 16);

      *a2 = v10;
      a2[1] = v11;
      v16 = v20;
      a2[2] = v12;
      a2[3] = v16;
      a2[4] = v17;
      a2[5] = v14;
      a2[6] = v15;
    }

    else
    {

      a2[6] = 0;
      result = 0.0;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
    }
  }

  return result;
}

void sub_1ABCF762C(void (*a1)(void *__return_ptr, uint64_t (*)(uint64_t a1), void, uint64_t (*)(uint64_t a1), void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, __n128 *a4@<X8>)
{
  sub_1ABA7D028();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v8 = swift_allocObject();
  sub_1ABD1BEF0(v8);
  sub_1ABA7D028();
  v9 = swift_allocObject();
  sub_1ABD1BED8(v9);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;

  v11 = v24;
  a1(v23, sub_1ABCF7868, 0, sub_1ABD194C8, v10);
  if (v11)
  {
  }

  else
  {

    v12 = v23[0];
    v13 = v23[1];
    sub_1ABA890D8();
    v14 = *(v7 + 16);
    if (v14[2] || (sub_1ABAA9068(), *(*v4 + 16)) || (sub_1ABAAA634(), sub_1ABD1B9FC(), v15))
    {
      v24 = sub_1ABB2B834(v14);
      v22 = v16;
      sub_1ABAA9068();
      v17 = *(v8 + 16);
      sub_1ABAAA634();
      v18 = *(v9 + 16);

      a4->n128_u64[0] = v12;
      a4->n128_u64[1] = v13;
      v19 = v24;
      a4[1].n128_u64[0] = v14;
      a4[1].n128_u64[1] = v19;
      a4[2].n128_u64[0] = v22;
      a4[2].n128_u64[1] = v17;
      a4[3].n128_u64[0] = v18;
    }

    else
    {

      a4[3].n128_u64[0] = 0;
      sub_1ABD1BA2C(a4, 0);
    }
  }
}

void sub_1ABCF7888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_41;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[432], *(_Records_GDEntityPredicate_records + 109), *(_Records_GDEntityPredicate_records + 110), v37);
  if (*&v37[0] == v8 && *(&v37[0] + 1) == v9)
  {
  }

  else
  {
    v36 = a4;
    v11 = sub_1ABF25054();

    if ((v11 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[420], *(_Records_GDEntityPredicate_records + 106), *(_Records_GDEntityPredicate_records + 107), v37);
        if (*&v37[0] == v8 && *(&v37[0] + 1) == v9)
        {
        }

        else
        {
          v13 = sub_1ABF25054();

          if ((v13 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[408], *(_Records_GDEntityPredicate_records + 103), *(_Records_GDEntityPredicate_records + 104), v37);
              if (*&v37[0] == v8 && *(&v37[0] + 1) == v9)
              {
              }

              else
              {
                v15 = sub_1ABF25054();

                if ((v15 & 1) == 0)
                {
                  return;
                }
              }

              if ((*(a1 + 56) & 1) == 0)
              {
                v32 = *(a1 + 40);
                v31 = *(a1 + 48);
                a3 = v36;
                goto LABEL_34;
              }

              goto LABEL_29;
            }

LABEL_42:
            __break(1u);
            return;
          }
        }

        if ((*(a1 + 56) & 1) == 0)
        {
          v32 = *(a1 + 40);
          v31 = *(a1 + 48);
LABEL_34:
          swift_beginAccess();

          sub_1ABB4DC20();
          v33 = *(*(a3 + 16) + 16);
          sub_1ABB4E024(v33);
          v34 = *(a3 + 16);
          *(v34 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v32;
          *(v35 + 40) = v31;
          *(a3 + 16) = v34;
          goto LABEL_35;
        }

LABEL_29:
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v30 = sub_1ABF237F4();
        sub_1ABA7AA24(v30, qword_1ED871B40);
        sub_1ABD1927C(a1, v37);
        v17 = sub_1ABF237D4();
        v18 = sub_1ABF24664();
        if (!os_log_type_enabled(v17, v18))
        {
LABEL_32:

          sub_1ABB6DBB8(a1);
          return;
        }

LABEL_25:
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136642819;
        v21 = *(a1 + 16);
        v37[0] = *a1;
        v37[1] = v21;
        v38[0] = *(a1 + 32);
        *(v38 + 9) = *(a1 + 41);
        v22 = sub_1ABF23C94();
        v24 = sub_1ABADD6D8(v22, v23, &v39);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_1ABA78000, v17, v18, "Failed to parse %{sensitive}s.", v19, 0xCu);
        sub_1ABA84B54(v20);
        MEMORY[0x1AC5AB8B0](v20, -1, -1);
        MEMORY[0x1AC5AB8B0](v19, -1, -1);

        return;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (*(a1 + 56))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B40);
    sub_1ABD1927C(a1, v37);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v26 = *(a1 + 40);
  v25 = *(a1 + 48);
  swift_beginAccess();

  sub_1ABB4DC20();
  v27 = *(*(a2 + 16) + 16);
  sub_1ABB4E024(v27);
  v28 = *(a2 + 16);
  *(v28 + 16) = v27 + 1;
  v29 = v28 + 16 * v27;
  *(v29 + 32) = v26;
  *(v29 + 40) = v25;
  *(a2 + 16) = v28;
LABEL_35:
  swift_endAccess();
}

void sub_1ABCF7CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v80 = a4;
  v83 = a3;
  v87 = *(a5 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = v77 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v77 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v86 = v77 - v17;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  v21 = v90[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v85 = v77 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v77 - v27;
  (*(v19 + 24))(v93, v5, v19, v26);
  v88 = AssociatedTypeWitness;
  v79 = v10;
  v89 = a1;
  v84 = v15;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v30 = v93[0];
  v29 = v93[1];
  v31 = v93[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[432], *(_Records_GDEntityPredicate_records + 109), *(_Records_GDEntityPredicate_records + 110), &v91);
  if (v91 == v30 && v92 == v29)
  {

    goto LABEL_9;
  }

  v77[1] = v31;
  v78 = v5;
  v33 = sub_1ABF25054();

  if (v33)
  {
    v5 = v78;
LABEL_9:

    v34 = v89;
    (*(v19 + 32))(v5, v19);
    v35 = v88;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = (*(AssociatedConformanceWitness + 24))(v35, AssociatedConformanceWitness);
    v39 = v38;
    (v90[1])(v28, v35);
    if (v39)
    {
      swift_beginAccess();
      sub_1ABB4DC20();
      v40 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v40);
      v41 = *(a2 + 16);
      *(v41 + 16) = v40 + 1;
      v42 = v41 + 16 * v40;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      *(a2 + 16) = v41;
LABEL_28:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v43 = sub_1ABF237F4();
    sub_1ABA7AA24(v43, qword_1ED871B40);
    v44 = v86;
    v45 = v87;
    v46 = *(v87 + 16);
    v46(v86, v34, v5);
    goto LABEL_14;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_47;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[420], *(_Records_GDEntityPredicate_records + 106), *(_Records_GDEntityPredicate_records + 107), &v91);
  v55 = v91 == v30 && v92 == v29;
  v45 = v87;
  if (v55)
  {

    v5 = v78;
LABEL_25:
    v57 = v85;

    v58 = v89;
    (*(v19 + 32))(v5, v19);
    v59 = v88;
    v60 = swift_getAssociatedConformanceWitness();
    v61 = (*(v60 + 24))(v59, v60);
    v63 = v62;
    (v90[1])(v57, v59);
    if (v63)
    {
      v64 = v83;
LABEL_27:
      swift_beginAccess();
      sub_1ABB4DC20();
      v65 = *(*(v64 + 16) + 16);
      sub_1ABB4E024(v65);
      v66 = *(v64 + 16);
      *(v66 + 16) = v65 + 1;
      v67 = v66 + 16 * v65;
      *(v67 + 32) = v61;
      *(v67 + 40) = v63;
      *(v64 + 16) = v66;
      goto LABEL_28;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v68 = sub_1ABF237F4();
    sub_1ABA7AA24(v68, qword_1ED871B40);
    v46 = *(v45 + 16);
    v44 = v82;
    v46(v82, v58, v5);
    goto LABEL_14;
  }

  v56 = sub_1ABF25054();

  v5 = v78;
  if (v56)
  {
    goto LABEL_25;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_48:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[408], *(_Records_GDEntityPredicate_records + 103), *(_Records_GDEntityPredicate_records + 104), &v91);
  if (v91 == v30 && v92 == v29)
  {
  }

  else
  {
    v70 = sub_1ABF25054();

    if ((v70 & 1) == 0)
    {
      return;
    }
  }

  v71 = v81;
  v72 = v89;
  (*(v19 + 32))(v5, v19);
  v73 = v88;
  v74 = swift_getAssociatedConformanceWitness();
  v61 = (*(v74 + 24))(v73, v74);
  v63 = v75;
  (v90[1])(v71, v73);
  if (v63)
  {
    v64 = v80;
    goto LABEL_27;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v76 = sub_1ABF237F4();
  sub_1ABA7AA24(v76, qword_1ED871B40);
  v46 = *(v45 + 16);
  v44 = v79;
  v46(v79, v72, v5);
LABEL_14:
  v47 = sub_1ABF237D4();
  v48 = sub_1ABF24664();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = v90;
    *v49 = 136642819;
    v46(v84, v44, v5);
    v50 = sub_1ABF23C94();
    v52 = v51;
    (*(v45 + 8))(v44, v5);
    v53 = sub_1ABADD6D8(v50, v52, &v91);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_1ABA78000, v47, v48, "Failed to parse %{sensitive}s.", v49, 0xCu);
    v54 = v90;
    sub_1ABA84B54(v90);
    MEMORY[0x1AC5AB8B0](v54, -1, -1);
    MEMORY[0x1AC5AB8B0](v49, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v44, v5);
  }
}

uint64_t CustomGraphHandleRelationship.init(subentityId:all_label:all_emailAddresses:all_phoneNumbers:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  if (a2[2])
  {
    v10 = a2[4];
    v9 = a2[5];
  }

  else
  {
    v10 = 0;
    result = 0;
  }

  *(a5 + 16) = a2;
  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

uint64_t sub_1ABCF867C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6464416C69616D65 && a2 == 0xEE00736573736572;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABCF87E0(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x6464416C69616D65;
      break;
    case 3:
      result = 0x6D754E656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCF8884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCF867C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCF88AC(uint64_t a1)
{
  v2 = sub_1ABD0E4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCF88E8(uint64_t a1)
{
  v2 = sub_1ABD0E4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABCF8948@<D0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  *&result = _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0(a1).n128_u64[0];
  return result;
}

void CustomGraphHandleRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  v3 = sub_1ABAD219C(&qword_1EB4D7190, &qword_1ABF51080);
  sub_1ABA96D00(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v10 = *v0;
  v9 = v0[1];
  sub_1ABD1B2D8();
  v18 = v0[6];
  v11 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD0E4F8();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABD1B97C();
  if (v1)
  {
    v12 = *(v5 + 8);
    v13 = sub_1ABA7D0EC();
    v14(v13);
  }

  else
  {
    sub_1ABD1AC6C(v20, v19);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABD1B178();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308);
    sub_1ABA80C2C();
    sub_1ABAB5FAC();
    sub_1ABAA6564();
    if (!v21)
    {
      sub_1ABD1AF94();
      sub_1ABA80C2C();
      sub_1ABAB5FAC();
      sub_1ABAA6564();
    }

    v15 = *(v5 + 8);
    v16 = sub_1ABA7D0EC();
    v17(v16);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphHandleRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA841B8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D71A0, &qword_1ABF51088);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8176C();
  v8 = v1[3];
  v9 = v1[4];
  sub_1ABA8A074(v1);
  sub_1ABD0E4F8();
  sub_1ABD1B684();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v1);
  }

  else
  {
    sub_1ABD0E3C0();
    sub_1ABD1AF3C();
    sub_1ABA827AC();
    sub_1ABD1B9CC();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA89A14();
    sub_1ABD0A2D4();
    sub_1ABAA112C();
    sub_1ABA9F49C();
    sub_1ABF24E64();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABD1B178();
    sub_1ABA7E810(&qword_1ED870660);
    sub_1ABD1AC44();
    sub_1ABD1B9CC();
    sub_1ABA8AB1C(3);
    sub_1ABD1B9CC();
    v10 = sub_1ABA9F1EC();
    v11(v10, v4);
    *v3 = v12;
    v3[1] = v13;
    v3[2] = v12;
    v3[3] = v13;
    v3[4] = v14;
    v3[5] = v12;
    v3[6] = v12;

    sub_1ABA84B54(v1);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void static CustomGraphIdentifierRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1C8), *(_Records_GDEntityClass_records + 0x1D0), *(_Records_GDEntityClass_records + 0x1D0 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

double sub_1ABCF8EE8@<D0>(void (*a1)(void *__return_ptr, void (*)(uint64_t a1), void, void (*)(_OWORD *a1), void *)@<X0>, void *a2@<X8>)
{
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v6;

  v8 = v29;
  a1(v28, sub_1ABCF94AC, 0, sub_1ABD1925C, v7);
  if (v8)
  {
  }

  else
  {

    v10 = v28[0];
    v29 = v28[1];
    swift_beginAccess();
    v11 = *(v3 + 16);
    if (v11[2] || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*(v6 + 16) + 16)))
    {
      v12 = sub_1ABB2B834(v11);
      v25 = v13;
      v27 = v12;
      swift_beginAccess();
      v14 = *(v5 + 16);
      v15 = sub_1ABB2B834(v14);
      v23 = v16;
      v24 = v15;
      swift_beginAccess();
      v17 = *(v6 + 16);
      v18 = sub_1ABB2B834(v17);
      v21 = v19;
      v22 = v18;

      v20 = v29;
      *a2 = v10;
      a2[1] = v20;
      a2[2] = v11;
      a2[3] = v27;
      a2[4] = v25;
      a2[5] = v14;
      a2[6] = v24;
      a2[7] = v23;
      a2[8] = v17;
      a2[9] = v22;
      a2[10] = v21;
    }

    else
    {

      a2[10] = 0;
      result = 0.0;
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
    }
  }

  return result;
}

void sub_1ABCF9198(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, __n128 *a4@<X8>)
{
  sub_1ABA7D028();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v8 = swift_allocObject();
  sub_1ABD1BED8(v8);
  sub_1ABA7D028();
  v9 = swift_allocObject();
  sub_1ABD1BEF0(v9);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;

  sub_1ABD1B678();
  a1();
  if (v26)
  {
  }

  else
  {

    sub_1ABA890D8();
    v11 = *(v7 + 16);
    if (v11[2] || (sub_1ABAAA634(), sub_1ABD1B9FC(), v12) || (sub_1ABAA9068(), *(*v4 + 16)))
    {
      v27 = sub_1ABB2B834(v11);
      v23 = v13;
      sub_1ABAAA634();
      v21 = sub_1ABD1C2E4();
      v19 = v14;
      sub_1ABAA9068();
      v15 = *(v9 + 16);
      v16 = sub_1ABB2B834(v15);
      v18 = v17;

      a4->n128_u64[0] = v24;
      a4->n128_u64[1] = v25;
      a4[1].n128_u64[0] = v11;
      a4[1].n128_u64[1] = v27;
      a4[2].n128_u64[0] = v23;
      a4[2].n128_u64[1] = v24;
      a4[3].n128_u64[0] = v21;
      a4[3].n128_u64[1] = v19;
      a4[4].n128_u64[0] = v15;
      a4[4].n128_u64[1] = v16;
      a4[5].n128_u64[0] = v18;
    }

    else
    {

      a4[5].n128_u64[0] = 0;
      a4[3] = 0u;
      a4[4] = 0u;
      sub_1ABD1BA2C(a4, 0);
    }
  }
}

void sub_1ABCF9404()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1ABD05BE4();
}

uint64_t sub_1ABCF9424()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

void sub_1ABCF94AC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphIdentifierRelationship init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1C8), *(_Records_GDEntityClass_records + 0x1D0), *(_Records_GDEntityClass_records + 0x1D0 + 8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1C8), *(_Records_GDEntityClass_records + 0x1D0), *(_Records_GDEntityClass_records + 0x1D0 + 8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCF973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_41;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[540], *(_Records_GDEntityPredicate_records + 136), *(_Records_GDEntityPredicate_records + 137), v38);
  if (*&v38[0] == v7 && *(&v38[0] + 1) == v8)
  {
  }

  else
  {
    v36 = a4;
    v10 = sub_1ABF25054();

    if ((v10 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[276], *(_Records_GDEntityPredicate_records + 70), *(_Records_GDEntityPredicate_records + 71), v38);
        if (*&v38[0] == v7 && *(&v38[0] + 1) == v8)
        {
        }

        else
        {
          v12 = sub_1ABF25054();

          if ((v12 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[2556], *(_Records_GDEntityPredicate_records + 640), *(_Records_GDEntityPredicate_records + 641), v38);
              if (*&v38[0] == v7 && *(&v38[0] + 1) == v8)
              {
              }

              else
              {
                v14 = sub_1ABF25054();

                if ((v14 & 1) == 0)
                {
                  return;
                }
              }

              if ((*(a1 + 56) & 1) == 0)
              {
                v31 = *(a1 + 40);
                v30 = *(a1 + 48);
                v32 = v36;
                goto LABEL_34;
              }

              goto LABEL_29;
            }

LABEL_42:
            __break(1u);
            return;
          }
        }

        if ((*(a1 + 56) & 1) == 0)
        {
          v31 = *(a1 + 40);
          v30 = *(a1 + 48);
          v32 = a3;
LABEL_34:
          swift_beginAccess();

          sub_1ABB4DC20();
          v33 = *(*(v32 + 16) + 16);
          sub_1ABB4E024(v33);
          v34 = *(v32 + 16);
          *(v34 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v31;
          *(v35 + 40) = v30;
          *(v32 + 16) = v34;
          goto LABEL_35;
        }

LABEL_29:
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v29 = sub_1ABF237F4();
        sub_1ABA7AA24(v29, qword_1ED871B40);
        sub_1ABD1927C(a1, v38);
        v16 = sub_1ABF237D4();
        v17 = sub_1ABF24664();
        if (!os_log_type_enabled(v16, v17))
        {
LABEL_32:

          sub_1ABB6DBB8(a1);
          return;
        }

LABEL_25:
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v40 = v19;
        *v18 = 136642819;
        v20 = *(a1 + 16);
        v38[0] = *a1;
        v38[1] = v20;
        v39[0] = *(a1 + 32);
        *(v39 + 9) = *(a1 + 41);
        v21 = sub_1ABF23C94();
        v23 = sub_1ABADD6D8(v21, v22, &v40);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1ABA78000, v16, v17, "Failed to parse %{sensitive}s.", v18, 0xCu);
        sub_1ABA84B54(v19);
        MEMORY[0x1AC5AB8B0](v19, -1, -1);
        MEMORY[0x1AC5AB8B0](v18, -1, -1);

        return;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (*(a1 + 56))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B40);
    sub_1ABD1927C(a1, v38);
    v16 = sub_1ABF237D4();
    v17 = sub_1ABF24664();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  swift_beginAccess();

  sub_1ABB4DC20();
  v26 = *(*(a2 + 16) + 16);
  sub_1ABB4E024(v26);
  v27 = *(a2 + 16);
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = v25;
  *(v28 + 40) = v24;
  *(a2 + 16) = v27;
LABEL_35:
  swift_endAccess();
}

void sub_1ABCF9BBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a4;
  v100 = a3;
  v104 = *(a5 - 8);
  v105 = a2;
  v8 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v94 - v18;
  v20 = *(v19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v107 = *(AssociatedTypeWitness - 8);
  v108 = AssociatedTypeWitness;
  v22 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v97 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v94 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v94 - v28;
  v30 = *(v20 + 24);
  v112 = a1;
  v30(v111, a5, v20, v27);
  v98 = 279;
  v99 = v13;
  v95 = v10;
  v101 = v16;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v31 = a5;
  v33 = v111[0];
  v32 = v111[1];
  v34 = v111[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[540], *(_Records_GDEntityPredicate_records + 136), *(_Records_GDEntityPredicate_records + 137), &v109);
  if (v109 == v33 && v110 == v32)
  {

    v37 = v5;
    goto LABEL_9;
  }

  v94 = v34;
  v103 = v5;
  v36 = sub_1ABF25054();

  if (v36)
  {
    v37 = v103;
LABEL_9:

    v38 = v112;
    v39 = v31;
    (*(v20 + 32))(v31, v20);
    v40 = v108;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = (*(AssociatedConformanceWitness + 24))(v40, AssociatedConformanceWitness);
    v44 = v43;
    (*(v107 + 8))(v29, v40);
    v45 = v106;
    if (v44)
    {
      v46 = v105;
LABEL_11:
      swift_beginAccess();
      sub_1ABB4DC20();
      v47 = *(*(v46 + 16) + 16);
      sub_1ABB4E024(v47);
      v48 = *(v46 + 16);
      *(v48 + 16) = v47 + 1;
      v49 = v48 + 16 * v47;
      *(v49 + 32) = v42;
      *(v49 + 40) = v44;
      *(v46 + 16) = v48;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v50 = sub_1ABF237F4();
    sub_1ABA7AA24(v50, qword_1ED871B40);
    v51 = v104;
    v52 = *(v104 + 16);
    v52(v45, v38, v39);
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24664();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v103 = v37;
      v112 = v56;
      v109 = v56;
      *v55 = 136642819;
      v52(v101, v45, v39);
      v57 = sub_1ABF23C94();
      v59 = v58;
      (*(v51 + 8))(v45, v39);
LABEL_16:
      v60 = sub_1ABADD6D8(v57, v59, &v109);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1ABA78000, v53, v54, "Failed to parse %{sensitive}s.", v55, 0xCu);
      v61 = v112;
      sub_1ABA84B54(v112);
      MEMORY[0x1AC5AB8B0](v61, -1, -1);
      MEMORY[0x1AC5AB8B0](v55, -1, -1);

      return;
    }

    (*(v51 + 8))(v45, v39);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_52;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[276], *(_Records_GDEntityPredicate_records + 70), *(_Records_GDEntityPredicate_records + 71), &v109);
  v62 = v109 == v33 && v110 == v32;
  v63 = v31;
  if (!v62)
  {
    v64 = sub_1ABF25054();

    if (v64)
    {
      goto LABEL_26;
    }

    if (v98 < 0xD6)
    {
      __break(1u);
LABEL_50:
      swift_once();
LABEL_46:
      v81 = sub_1ABF237F4();
      sub_1ABA7AA24(v81, qword_1ED871B40);
      v82 = v104;
      v83 = *(v104 + 16);
      v84 = v95;
      v83(v95, v33, v63);
      v85 = sub_1ABF237D4();
      v86 = sub_1ABF24664();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        LODWORD(v112) = v86;
        v88 = v87;
        v89 = swift_slowAlloc();
        v109 = v89;
        *v88 = 136642819;
        v83(v101, v84, v63);
        v90 = sub_1ABF23C94();
        v92 = v91;
        (*(v82 + 8))(v84, v63);
        v93 = sub_1ABADD6D8(v90, v92, &v109);

        *(v88 + 4) = v93;
        _os_log_impl(&dword_1ABA78000, v85, v112, "Failed to parse %{sensitive}s.", v88, 0xCu);
        sub_1ABA84B54(v89);
        MEMORY[0x1AC5AB8B0](v89, -1, -1);
        MEMORY[0x1AC5AB8B0](v88, -1, -1);
      }

      else
      {

        (*(v82 + 8))(v84, v63);
      }

      return;
    }

    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[2556], *(_Records_GDEntityPredicate_records + 640), *(_Records_GDEntityPredicate_records + 641), &v109);
      if (v109 == v33 && v110 == v32)
      {
      }

      else
      {
        v76 = sub_1ABF25054();

        if ((v76 & 1) == 0)
        {
          return;
        }
      }

      v77 = v97;
      v33 = v112;
      (*(v20 + 32))(v31, v20);
      v78 = v108;
      v79 = swift_getAssociatedConformanceWitness();
      v42 = (*(v79 + 24))(v78, v79);
      v44 = v80;
      (*(v107 + 8))(v77, v78);
      if (v44)
      {
        v46 = v96;
        goto LABEL_11;
      }

      if (qword_1ED871B38 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

LABEL_53:
    __break(1u);
    return;
  }

LABEL_26:

  v65 = v102;
  v66 = v112;
  (*(v20 + 32))(v31, v20);
  v67 = v108;
  v68 = swift_getAssociatedConformanceWitness();
  v42 = (*(v68 + 24))(v67, v68);
  v44 = v69;
  (*(v107 + 8))(v65, v67);
  if (v44)
  {
    v46 = v100;
    goto LABEL_11;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v70 = sub_1ABF237F4();
  sub_1ABA7AA24(v70, qword_1ED871B40);
  v71 = v104;
  v72 = *(v104 + 16);
  v73 = v99;
  v72(v99, v66, v63);
  v53 = sub_1ABF237D4();
  v54 = sub_1ABF24664();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v109 = v112;
    *v55 = 136642819;
    v72(v101, v73, v63);
    v57 = sub_1ABF23C94();
    v59 = v74;
    (*(v71 + 8))(v73, v63);
    goto LABEL_16;
  }

  (*(v71 + 8))(v73, v63);
}

uint64_t CustomGraphIdentifierRelationship.init(subentityId:all_type:all_id:all_hasProfileImage:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1ABD1B584(a1, a2, a5);
  *(a5 + 16) = a2;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  v11 = sub_1ABB2B834(a3);
  *(a5 + 40) = a3;
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  result = sub_1ABB2B834(a4);
  *(a5 + 64) = a4;
  *(a5 + 72) = result;
  *(a5 + 80) = v14;
  return result;
}

uint64_t sub_1ABCFA730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x69666F7250736168 && a2 == 0xEF6567616D49656CLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABCFA88C(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x69666F7250736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCFA918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCFA730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCFA940(uint64_t a1)
{
  v2 = sub_1ABD0E54C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCFA97C(uint64_t a1)
{
  v2 = sub_1ABD0E54C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABCFA9E0@<X0>(uint64_t *a1@<X8>)
{
  result = CustomGraphSportsTeam.qid.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void CustomGraphIdentifierRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D71A8, &qword_1ABF51090);
  sub_1ABA96D00(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v11 = *v0;
  v10 = v0[1];
  sub_1ABD1B2D8();
  sub_1ABD1BF50();
  v22 = v0[10];
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = sub_1ABA894A0();
  sub_1ABA88DCC(v14, v15);
  sub_1ABD0E54C();
  sub_1ABA82E0C();
  sub_1ABA8177C();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABD1B97C();
  if (v1)
  {
    v16 = sub_1ABA89DE4();
    v17(v16);
  }

  else
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA80C2C();
    sub_1ABAA03A4();
    if (v23)
    {
      sub_1ABAA1210();

      v18 = v6;
    }

    else
    {
      sub_1ABAA1210();

      sub_1ABD1B178();

      sub_1ABA80C2C();
      sub_1ABAA03A4();
      sub_1ABD1AFA0();

      v18 = v6;
      sub_1ABAB5EC8();
      sub_1ABD1AF94();

      sub_1ABA80C2C();
      sub_1ABAA03A4();
      sub_1ABD1AFA0();
    }

    v19 = *(v18 + 8);
    v20 = sub_1ABA7D0EC();
    v21(v20);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphIdentifierRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA841B8();
  v2 = sub_1ABAD219C(&qword_1EB4D71B8, &qword_1ABF51098);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8176C();
  v6 = v1[3];
  v7 = v1[4];
  sub_1ABA8A074(v1);
  sub_1ABD0E54C();
  sub_1ABD1B684();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v1);
  }

  else
  {
    sub_1ABD0E3C0();
    sub_1ABD1B3AC();
    sub_1ABD1B9CC();
    sub_1ABD1B6F4(v24);
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA9E1A8(1);
    sub_1ABD0A2D4();
    sub_1ABD1B3AC();
    sub_1ABD1B004();
    sub_1ABD1B9CC();
    v20 = v25;
    v8 = v24;
    sub_1ABD1B77C(v25);
    v21 = v26;
    sub_1ABA9E1A8(2);
    sub_1ABD1B3AC();
    sub_1ABD1B004();
    sub_1ABD1B9CC();
    sub_1ABAA168C();
    sub_1ABD1AF94();
    sub_1ABD1B66C();
    sub_1ABD1B004();
    sub_1ABD1B9CC();
    v9 = sub_1ABD1B148();
    v10(v9);
    sub_1ABD1BAA4(v32);
    v23[0] = v22;
    v23[1] = v25;
    v23[2] = v24;
    v23[3] = v19;
    v23[4] = v26;
    v23[5] = v17;
    v23[6] = v16;
    v23[7] = v18;
    v23[8] = v11;
    v23[9] = v33;
    v23[10] = v34;
    v12 = sub_1ABAA63C4();
    memcpy(v12, v13, 0x58uLL);
    sub_1ABD0E5A0(v23, &v24);
    sub_1ABA84B54(v1);
    v24 = v22;
    v25 = v20;
    v26 = v8;
    v27 = v19;
    v28 = v21;
    v29 = v17;
    sub_1ABD1BB28();
    v30 = v14;
    v31 = v18;
    v15 = sub_1ABAA3ED0();
    sub_1ABD0E5D8(v15);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void static CustomGraphQuantityRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x240), *(_Records_GDEntityClass_records + 0x248), *(_Records_GDEntityClass_records + 0x250), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

double sub_1ABCFAFF0@<D0>(void (*a1)(void *__return_ptr, void (*)(uint64_t a1), void, void (*)(_OWORD *a1), uint64_t)@<X0>, void *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];

  a1(v13, sub_1ABCFB284, 0, sub_1ABD19460, v5);

  if (v2)
  {
  }

  else
  {
    v7 = v13[0];
    v8 = v13[1];
    swift_beginAccess();
    v9 = *(v5 + 16);
    if (v9[2])
    {
      v10 = sub_1ABB2B834(v9);
      v12 = v11;

      *a2 = v7;
      a2[1] = v8;
      a2[2] = v9;
      a2[3] = v10;
      a2[4] = v12;
    }

    else
    {

      a2[4] = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
    }
  }

  return result;
}

void sub_1ABCFB130(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_1ABA7D028();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v10 = (v9 + 16);
  sub_1ABAA4EC8();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v9;

  sub_1ABD1BAC8();
  a1();
  if (v4)
  {
  }

  else
  {

    sub_1ABD1B0E8();
    sub_1ABD1BE24();
    if (v12)
    {
      sub_1ABB2B834(v10);
      sub_1ABD1B6A8();

      *a4 = v13;
      a4[1] = v14;
      a4[2] = v10;
      a4[3] = a1;
      a4[4] = v11;
    }

    else
    {

      a4[4] = 0;
      *a4 = 0u;
      *(a4 + 1) = 0u;
    }
  }

  sub_1ABA7E708();
}

void sub_1ABCFB284(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphQuantityRelationship init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x240), *(_Records_GDEntityClass_records + 0x248), *(_Records_GDEntityClass_records + 0x250), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x240), *(_Records_GDEntityClass_records + 0x248), *(_Records_GDEntityClass_records + 0x250), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCFB51C(uint64_t a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v26[7] = v2;
  v26[8] = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[660], *(_Records_GDEntityPredicate_records + 166), *(_Records_GDEntityPredicate_records + 167), v24);
  if (*&v24[0] == v6 && *(&v24[0] + 1) == v7)
  {
  }

  else
  {
    v9 = sub_1ABF25054();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    sub_1ABD1927C(a1, v24);
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24664();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136642819;
      v15 = *(a1 + 16);
      v24[0] = *a1;
      v24[1] = v15;
      v25[0] = *(a1 + 32);
      *(v25 + 9) = *(a1 + 41);
      v16 = sub_1ABF23C94();
      v18 = sub_1ABADD6D8(v16, v17, v26);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1ABA78000, v11, v12, "Failed to parse %{sensitive}s.", v13, 0xCu);
      sub_1ABA84B54(v14);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    else
    {

      sub_1ABB6DBB8(a1);
    }
  }

  else
  {
    v20 = *(a1 + 40);
    v19 = *(a1 + 48);
    swift_beginAccess();

    sub_1ABB4DC20();
    v21 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v21);
    v22 = *(a2 + 16);
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 16 * v21;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
    *(a2 + 16) = v22;
    swift_endAccess();
  }
}

void sub_1ABCFB7B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = *(a3 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v10;
  v12 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v44 - v17;
  (*(v12 + 24))(v51, a3, v12, v16);
  v47 = a2;
  v48 = v14;
  v49 = a1;
  v44 = v8;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v20 = v51[0];
  v19 = v51[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[660], *(_Records_GDEntityPredicate_records + 166), *(_Records_GDEntityPredicate_records + 167), v50);
  if (v50[0] == v20 && v50[1] == v19)
  {
  }

  else
  {
    v22 = sub_1ABF25054();

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  v23 = v49;
  (*(v12 + 32))(a3, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v27 = v26;
  (*(v48 + 8))(v18, AssociatedTypeWitness);
  if (v27)
  {
    v28 = v47;
    swift_beginAccess();
    sub_1ABB4DC20();
    v29 = *(*(v28 + 16) + 16);
    sub_1ABB4E024(v29);
    v30 = *(v28 + 16);
    *(v30 + 16) = v29 + 1;
    v31 = v30 + 16 * v29;
    *(v31 + 32) = v25;
    *(v31 + 40) = v27;
    *(v28 + 16) = v30;
    swift_endAccess();
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v32 = sub_1ABF237F4();
    sub_1ABA7AA24(v32, qword_1ED871B40);
    v34 = v45;
    v33 = v46;
    v35 = *(v46 + 16);
    v35(v45, v23, a3);
    v36 = sub_1ABF237D4();
    v37 = sub_1ABF24664();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50[0] = v49;
      *v38 = 136642819;
      v35(v44, v34, a3);
      v39 = sub_1ABF23C94();
      v41 = v40;
      (*(v33 + 8))(v34, a3);
      v42 = sub_1ABADD6D8(v39, v41, v50);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to parse %{sensitive}s.", v38, 0xCu);
      v43 = v49;
      sub_1ABA84B54(v49);
      MEMORY[0x1AC5AB8B0](v43, -1, -1);
      MEMORY[0x1AC5AB8B0](v38, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v34, a3);
    }
  }
}

uint64_t CustomGraphQuantityRelationship.init(subentityId:all_quantity:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  if (a2[2])
  {
    v6 = a2[4];
    v5 = a2[5];
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  *(a3 + 16) = a2;
  *(a3 + 24) = v6;
  *(a3 + 32) = result;
  return result;
}

uint64_t sub_1ABCFBCE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABCFBDB0()
{
  sub_1ABD1B788();
  MEMORY[0x1AC5AA8A0](v0 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABCFBDEC(char a1)
{
  if (a1)
  {
    return 0x797469746E617571;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABCFBE2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABCFBE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCFBCE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCFBEA8(uint64_t a1)
{
  v2 = sub_1ABD0E608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCFBEE4(uint64_t a1)
{
  v2 = sub_1ABD0E608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABCFBF48@<D0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  *&result = _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0(a1).n128_u64[0];
  return result;
}

void CustomGraphQuantityRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  v3 = sub_1ABAD219C(&qword_1EB4D71C0, &qword_1ABF510A0);
  sub_1ABA96D00(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  v11 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD0E608();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABD1B97C();
  if (!v1)
  {
    sub_1ABD1AC6C(v16, v15);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();
  }

  v12 = *(v5 + 8);
  v13 = sub_1ABA7D0EC();
  v14(v13);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphQuantityRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  v3 = sub_1ABAD219C(&qword_1EB4D71D0, &qword_1ABF510A8);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0E608();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABD0E3C0();
    sub_1ABD1AF3C();
    sub_1ABA827AC();
    sub_1ABD1B7A4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA89A14();
    sub_1ABD0A2D4();
    sub_1ABAA112C();
    sub_1ABAA43F0();
    v7 = sub_1ABA7BFF0();
    v8(v7);
    *v1 = v9;
    *(v1 + 8) = v10;
    *(v1 + 16) = v9;
    *(v1 + 24) = v10;
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void static CustomGraphLocationRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABD1C204(_Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCFC2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, BOOL a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABD1C050();
  a31 = v33;
  a32 = v34;
  v57 = v35;
  v37 = v36;
  v39 = v38;
  v55 = v40;
  sub_1ABA7D028();
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E7CC0];
  *(v41 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  v44 = v43 + 16;
  sub_1ABA7D9B8();
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v43;

  v39(&a18, v37, 0, v57, v45);
  if (v32)
  {
  }

  else
  {

    v46 = a18;
    v47 = a19;
    sub_1ABAA9068();
    v48 = *(v41 + 16);
    if (v48[2] || (sub_1ABD1B080(), *(*v44 + 16)))
    {
      v56 = v47;
      v58 = v46;
      v49 = sub_1ABB2B834(v48);
      v51 = v50;
      sub_1ABD1B080();
      sub_1ABD1B610();
      if (v52)
      {
        v53 = *(v43 + 48);
      }

      else
      {
        v53 = 0;
      }

      v54 = v52 == 0;

      a22 = v54;
      *v55 = v58;
      *(v55 + 8) = v56;
      *(v55 + 16) = v48;
      *(v55 + 24) = v49;
      *(v55 + 32) = v51;
      *(v55 + 40) = v44;
      *(v55 + 48) = v53;
      *(v55 + 56) = v54;
    }

    else
    {

      *(v55 + 41) = 0u;
      sub_1ABD1BA2C(v55, 0);
    }
  }

  sub_1ABD1C034();
}

void sub_1ABCFC498(void (*a1)(void *__return_ptr, uint64_t, void *, uint64_t, void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v29 = v12 + 16;
  sub_1ABA7D028();
  v13 = swift_allocObject();
  v14 = *(a4 + 8);
  v31 = type metadata accessor for TypedEntityIdentifier();
  *(v13 + 16) = sub_1ABF24154();
  sub_1ABAA267C();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = a5;
  sub_1ABA807B4();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = v16;
  v17[6] = v12;
  v17[7] = v13;

  a1(v39, a7, v15, a8, v17);
  if (v33)
  {

    return;
  }

  v18 = v39[0];
  v19 = v39[1];
  sub_1ABD1B058();
  v20 = *v29;
  if (!*(*v29 + 16))
  {
    sub_1ABAA9068();
    v36 = *(v13 + 16);
    sub_1ABF241F4();
    sub_1ABA887D0();
    if (sub_1ABF24574())
    {

      *(a6 + 41) = 0u;
      sub_1ABD1BA2C(a6, 0);
      return;
    }

    v20 = *v29;
  }

  v21 = sub_1ABB2B834(v20);
  v23 = v22;
  sub_1ABAA9068();
  v24 = *(v13 + 16);
  v34 = 0;
  v35 = 1;

  OneOf.init(_:potentiallyPreferred:)(v25, &v34, v31, v37);

  v26 = v37[0];
  v27 = v37[1];
  v28 = v38;
  *a6 = v18;
  *(a6 + 8) = v19;
  *(a6 + 16) = v20;
  *(a6 + 24) = v21;
  *(a6 + 32) = v23;
  *(a6 + 40) = v26;
  *(a6 + 48) = v27;
  *(a6 + 56) = v28;
}

void sub_1ABCFC724(uint64_t a1, uint64_t a2)
{
  EntityClass.init(intValue:)(SHIBYTE(a2), &v16);
  v2 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphLocationRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), v29);
    v7 = v30 == v4 && v5 == v31;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v29);
LABEL_9:
      sub_1ABAA8FA8(v3, v2);
      return;
    }

    *&v16 = v3;
    *(&v16 + 1) = v2;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v14 = v13;

    sub_1ABA88934(v29);
    if (v14)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), &v25);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v20 = v3;
      v21 = v2;
      v22 = v4;
      v23 = v5;
      v24 = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v16, v15);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCFC9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), v30);
  if (*&v30[0] == v7 && *(&v30[0] + 1) == v8)
  {

LABEL_15:
    if ((*(a1 + 56) & 1) == 0)
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      swift_beginAccess();

      sub_1ABB4DC20();
      v24 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v24);
      v25 = *(a2 + 16);
      *(v25 + 16) = v24 + 1;
      v26 = v25 + 16 * v24;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      *(a2 + 16) = v25;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v10 = sub_1ABF25054();

  if (v10)
  {
    goto LABEL_15;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_29:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[612], *(_Records_GDEntityPredicate_records + 154), *(_Records_GDEntityPredicate_records + 155), v30);
  if (*&v30[0] == v7 && *(&v30[0] + 1) == v8)
  {
  }

  else
  {
    v12 = sub_1ABF25054();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    sub_1ABC4A630(&v32, *(a1 + 40));
    if (!v3)
    {
      v27 = v32;
      swift_beginAccess();
      sub_1ABB4DD40();
      v28 = *(*(a3 + 16) + 16);
      sub_1ABB4E144(v28);
      v29 = *(a3 + 16);
      *(v29 + 16) = v28 + 1;
      *(v29 + 8 * v28 + 32) = v27;
      *(a3 + 16) = v29;
    }

    return;
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_17:
  v13 = sub_1ABF237F4();
  sub_1ABA7AA24(v13, qword_1ED871B40);
  sub_1ABD1927C(a1, v30);
  v14 = sub_1ABF237D4();
  v15 = sub_1ABF24664();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136642819;
    v18 = *(a1 + 16);
    v30[0] = *a1;
    v30[1] = v18;
    v31[0] = *(a1 + 32);
    *(v31 + 9) = *(a1 + 41);
    v19 = sub_1ABF23C94();
    v21 = sub_1ABADD6D8(v19, v20, &v32);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1ABA78000, v14, v15, "Failed to parse %{sensitive}s.", v16, 0xCu);
    sub_1ABA84B54(v17);
    MEMORY[0x1AC5AB8B0](v17, -1, -1);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
  }

  else
  {

    sub_1ABB6DBB8(a1);
  }
}

void sub_1ABCFCD58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a6;
  v77 = a4;
  v81 = *(a5 - 8);
  v82 = a2;
  v10 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v72 - v17;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v21 = v84[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v72 - v25;
  v27 = *(v19 + 24);
  v85 = a1;
  v27(v89, a5, v19, v24);
  v74 = a3;
  v75 = v12;
  v78 = v15;
  v83 = a5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v29 = v89[0];
  v28 = v89[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), &v87);
  if (v87 == v29 && v88 == v28)
  {

LABEL_9:

    v32 = v83;
    (*(v19 + 32))(v83, v19);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v36 = v35;
    (v84[1])(v26, AssociatedTypeWitness);
    if (v36)
    {
      v37 = v82;
      swift_beginAccess();
      sub_1ABB4DC20();
      v38 = *(*(v37 + 16) + 16);
      sub_1ABB4E024(v38);
      v39 = *(v37 + 16);
      *(v39 + 16) = v38 + 1;
      v40 = v39 + 16 * v38;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      *(v37 + 16) = v39;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v41 = sub_1ABF237F4();
    sub_1ABA7AA24(v41, qword_1ED871B40);
    v42 = v80;
    v43 = v81;
    v44 = *(v81 + 16);
    v44(v80, v85, v32);
    v45 = sub_1ABF237D4();
    v46 = sub_1ABF24664();
    if (!os_log_type_enabled(v45, v46))
    {

      (*(v43 + 8))(v42, v32);
      return;
    }

    v47 = swift_slowAlloc();
    LODWORD(v85) = v46;
    v48 = v47;
    v84 = swift_slowAlloc();
    v87 = v84;
    *v48 = 136642819;
    v44(v78, v42, v32);
    v49 = sub_1ABF23C94();
    v51 = v50;
    (*(v43 + 8))(v42, v32);
    v52 = sub_1ABADD6D8(v49, v51, &v87);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1ABA78000, v45, v85, "Failed to parse %{sensitive}s.", v48, 0xCu);
    v53 = v84;
    sub_1ABA84B54(v84);
    MEMORY[0x1AC5AB8B0](v53, -1, -1);
    v54 = v48;
    goto LABEL_30;
  }

  v73 = v6;
  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_36;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[612], *(_Records_GDEntityPredicate_records + 154), *(_Records_GDEntityPredicate_records + 155), &v87);
  v55 = v87 == v29 && v88 == v28;
  v56 = v73;
  if (v55)
  {
  }

  else
  {
    v57 = sub_1ABF25054();

    if ((v57 & 1) == 0)
    {
      return;
    }
  }

  v58 = v79;
  v59 = v83;
  (*(v19 + 32))(v83, v19);
  v60 = swift_getAssociatedConformanceWitness();
  (*(v60 + 32))(&v87, AssociatedTypeWitness, v60);
  (v84[1])(v58, AssociatedTypeWitness);
  if (v88)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v61 = sub_1ABF237F4();
    sub_1ABA7AA24(v61, qword_1ED871B40);
    v62 = v81;
    v63 = *(v81 + 16);
    v64 = v75;
    v63(v75, v85, v59);
    v45 = sub_1ABF237D4();
    v65 = sub_1ABF24664();
    if (os_log_type_enabled(v45, v65))
    {
      v66 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v87 = v85;
      *v66 = 136642819;
      LODWORD(v84) = v65;
      v63(v78, v64, v59);
      v67 = sub_1ABF23C94();
      v69 = v68;
      (*(v62 + 8))(v64, v59);
      v70 = sub_1ABADD6D8(v67, v69, &v87);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_1ABA78000, v45, v84, "Failed to parse %{sensitive}s.", v66, 0xCu);
      v71 = v85;
      sub_1ABA84B54(v85);
      MEMORY[0x1AC5AB8B0](v71, -1, -1);
      v54 = v66;
LABEL_30:
      MEMORY[0x1AC5AB8B0](v54, -1, -1);

      return;
    }

    (*(v62 + 8))(v64, v59);
  }

  else
  {
    TypedEntityIdentifier.init(untyped:)(&v87, v77, *(v76 + 8), &v90);
    if (!v56)
    {
      v86 = v90;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier();
      sub_1ABF241F4();
      sub_1ABF241A4();
      goto LABEL_11;
    }
  }
}

uint64_t _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityId26all_eventParticipationType0i9_attendeeH0ACyxGAA19SubentityIdentifierV_SaySSGSayAA011TypedEntityO0VyxGGtcfC_0()
{
  sub_1ABA9FE20();
  v7 = sub_1ABD1B584(v4, v5, v6);
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 32) = v8;
  v14 = 0;
  v15 = 1;
  v9 = *(v0 + 8);
  v10 = type metadata accessor for TypedEntityIdentifier();
  result = OneOf.init(_:potentiallyPreferred:)(v1, &v14, v10, v16);
  v12 = v16[1];
  v13 = v17;
  *(v3 + 40) = v16[0];
  *(v3 + 48) = v12;
  *(v3 + 56) = v13;
  return result;
}

uint64_t sub_1ABCFD680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000006449)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABCFD798()
{
  sub_1ABD1B788();
  MEMORY[0x1AC5AA8A0](v0);
  return sub_1ABF25294();
}

uint64_t sub_1ABCFD7D4(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x6E6F697461636F6CLL;
}

uint64_t sub_1ABCFD834(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1ABF25234();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1ABF25294();
}

uint64_t sub_1ABCFD88C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABCFD7D4(*v1);
}

uint64_t sub_1ABCFD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABCFD680(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABCFD8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABCFD948(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABCFD9C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABCFDA68()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v27 = *(v4 + 24);
  v5(255, *(v4 + 16));
  swift_getWitnessTable();
  v6 = sub_1ABF24FC4();
  sub_1ABA7BB64(v6);
  v28 = v7;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v11 = *v0;
  v12 = v0[1];
  v25 = v0[4];
  v26 = v0[2];
  v23 = v0[5];
  v24 = v0[3];
  v22 = v0[6];
  v29 = *(v0 + 56);
  v13 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABF24F84();
  if (v1)
  {
    v14 = *(v28 + 8);
    v15 = sub_1ABA8BBFC();
    v16(v15);
  }

  else
  {
    sub_1ABD1AC6C(v25, v24);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA0194();
    sub_1ABA81934();
    sub_1ABF24F84();
    sub_1ABD1C224();

    if (v26)
    {
      v17 = v28;
    }

    else
    {
      sub_1ABD1B178();
      v18 = *(v27 + 8);
      type metadata accessor for TypedEntityIdentifier();
      type metadata accessor for OneOf();

      sub_1ABA8A1E0();
      swift_getWitnessTable();
      sub_1ABA9F6E4();
      swift_getWitnessTable();
      sub_1ABA9F2E0();
      swift_getWitnessTable();
      sub_1ABAA0194();
      sub_1ABA9F49C();
      sub_1ABF24F84();
      v17 = v28;
    }

    v19 = *(v17 + 8);
    v20 = sub_1ABA8BBFC();
    v21(v20);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void sub_1ABCFDD4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphLocationRelationship.init(from:)();
}

void _s20IntelligencePlatform29CustomGraphHandleRelationshipV14getEntityClassAA0hI0VyFZ_0()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x198), *(_Records_GDEntityClass_records + 0x1A0), *(_Records_GDEntityClass_records + 0x1A0 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1ABCFDDF4@<X0>(void (*a1)(void *__return_ptr, uint64_t (*)(uint64_t a1), void, void (*)(), void *)@<X0>, void *a2@<X8>)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v49 = v2 + 16;
  v61 = swift_allocObject();
  *(v61 + 16) = v3;
  v4 = swift_allocObject();
  v63 = v4;
  *(v4 + 16) = v3;
  v54 = v4 + 16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v44 = v8 + 16;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v61;
  v11[4] = v63;
  v11[5] = v5;
  v11[6] = v6;
  v11[7] = v7;
  v11[8] = v8;
  v11[9] = v9;
  v11[10] = v10;

  v60 = v5;

  a1(__src, sub_1ABCFEBC4, 0, sub_1ABD19A1C, v11);
  if (v59)
  {
  }

  else
  {
    v58 = v8;
    v43 = v10;
    v13 = v63;

    v41 = __src[1];
    v42 = __src[0];
    swift_beginAccess();
    v14 = *v49;
    if (*(*v49 + 16))
    {
      goto LABEL_12;
    }

    swift_beginAccess();
    if (*(*(v61 + 16) + 16) || (swift_beginAccess(), *(*v54 + 16)) || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*(v6 + 16) + 16)) || (swift_beginAccess(), *(*(v7 + 16) + 16)) || (swift_beginAccess(), *(*v44 + 16)) || (swift_beginAccess(), *(*(v9 + 16) + 16)) || (swift_beginAccess(), *(*(v10 + 16) + 16)))
    {
LABEL_12:
      v50 = sub_1ABB2B834(v14);
      v40 = v15;
      swift_beginAccess();
      v16 = *(v61 + 16);
      v48 = sub_1ABB2B834(v16);
      v39 = v17;
      swift_beginAccess();
      v32 = *(v13 + 16);
      v55 = sub_1ABB2B834(v32);
      v38 = v18;
      swift_beginAccess();
      v19 = *(v60 + 16);
      v53 = sub_1ABB2B834(v19);
      v37 = v20;
      swift_beginAccess();
      v30 = *(v6 + 16);
      v47 = sub_1ABB2B834(v30);
      v36 = v21;
      swift_beginAccess();
      v22 = *(v7 + 16);
      v46 = sub_1ABB2B834(v22);
      v35 = v23;
      swift_beginAccess();
      v24 = *(v58 + 16);
      v45 = sub_1ABB2B834(v24);
      v34 = v25;
      swift_beginAccess();
      v26 = *(v9 + 16);
      v56 = sub_1ABB2B834(v26);
      v33 = v27;
      swift_beginAccess();
      v28 = *(v43 + 16);
      v52 = sub_1ABB2B834(v28);
      v31 = v29;

      __src[0] = v42;
      __src[1] = v41;
      __src[2] = v14;
      __src[3] = v50;
      __src[4] = v40;
      __src[5] = v16;
      __src[6] = v48;
      __src[7] = v39;
      __src[8] = v32;
      __src[9] = v55;
      __src[10] = v38;
      __src[11] = v19;
      __src[12] = v53;
      __src[13] = v37;
      __src[14] = v30;
      __src[15] = v47;
      __src[16] = v36;
      __src[17] = v22;
      __src[18] = v46;
      __src[19] = v35;
      __src[20] = v24;
      __src[21] = v45;
      __src[22] = v34;
      __src[23] = v26;
      __src[24] = v56;
      __src[25] = v33;
      __src[26] = v28;
      __src[27] = v52;
      __src[28] = v31;
      nullsub_1(__src);
    }

    else
    {

      sub_1ABD0C440(__src);
    }

    return memcpy(a2, __src, 0xE8uLL);
  }
}

void sub_1ABCFE560()
{
  sub_1ABA7BCA8();
  v75 = v1;
  v71 = v2;
  v73 = v3;
  __dst = v4;
  sub_1ABA7D028();
  v76 = swift_allocObject();
  sub_1ABD1B184(v76);
  v66 = v5;
  sub_1ABA7D028();
  v6 = swift_allocObject();
  sub_1ABD1B184(v6);
  v69 = v7;
  sub_1ABA7D028();
  v78 = swift_allocObject();
  sub_1ABD1B184(v78);
  v64 = v8;
  sub_1ABA7D028();
  v9 = swift_allocObject();
  sub_1ABD1B184(v9);
  v62 = v10;
  sub_1ABA7D028();
  v11 = swift_allocObject();
  sub_1ABD1B184(v11);
  sub_1ABA7D028();
  v12 = swift_allocObject();
  sub_1ABD1B184(v12);
  v59 = v13;
  sub_1ABA7D028();
  v14 = swift_allocObject();
  sub_1ABD1B184(v14);
  v57 = v15;
  sub_1ABA7D028();
  v16 = swift_allocObject();
  sub_1ABD1B184(v16);
  v55 = v17;
  sub_1ABA7D028();
  v18 = swift_allocObject();
  sub_1ABD1B184(v18);
  v53 = v19;
  sub_1ABA88928();
  v20 = swift_allocObject();
  v20[2] = v71;
  v20[3] = v75;
  v20[4] = v76;
  v20[5] = v6;
  v20[6] = v78;
  v20[7] = v9;
  v20[8] = v11;
  v20[9] = v12;
  v20[10] = v14;
  v20[11] = v16;
  v20[12] = v18;

  v73(__src, sub_1ABCFEBC4, 0, sub_1ABD19934, v20);
  if (v0)
  {
  }

  else
  {
    v72 = v12;
    v74 = v16;

    v51 = __src[1];
    v52 = __src[0];
    v21 = v66;
    sub_1ABD1B03C();
    v67 = *v66;
    if ((*v21)[2])
    {
      goto LABEL_12;
    }

    sub_1ABA8A740();
    if (*(*v69 + 16))
    {
      goto LABEL_12;
    }

    sub_1ABD1B1F4();
    if (*(*v64 + 16) || (sub_1ABA890D8(), *(*v62 + 16)) || (sub_1ABAAA634(), sub_1ABD1B9FC(), v22) || (sub_1ABD1B080(), *(*v59 + 16)) || (sub_1ABAA9068(), *(*v57 + 16)) || (sub_1ABD1B058(), *(*v55 + 16)) || (sub_1ABA8A740(), *(*v53 + 16)))
    {
LABEL_12:
      v23 = sub_1ABB2B834(v67);
      v49 = v24;
      v50 = v23;
      sub_1ABA7F2A0();
      v42 = *(v6 + 16);
      v70 = sub_1ABB2B834(v42);
      v48 = v25;
      sub_1ABD1B1F4();
      v40 = *(v78 + 16);
      v65 = sub_1ABB2B834(v40);
      v47 = v26;
      sub_1ABA890D8();
      v27 = *(v9 + 16);
      v63 = sub_1ABB2B834(v27);
      v46 = v28;
      sub_1ABAAA634();
      v38 = *(v11 + 16);
      v61 = sub_1ABB2B834(v38);
      v45 = v29;
      sub_1ABD1B080();
      v37 = *(v72 + 16);
      v60 = sub_1ABB2B834(v37);
      v44 = v30;
      sub_1ABAA9068();
      v31 = *(v14 + 16);
      v58 = sub_1ABB2B834(v31);
      v43 = v32;
      sub_1ABD1B058();
      v33 = *(v74 + 16);
      v56 = sub_1ABB2B834(v33);
      v41 = v34;
      sub_1ABA8A740();
      v35 = *(v18 + 16);
      v54 = sub_1ABB2B834(v35);
      v39 = v36;

      __src[0] = v52;
      __src[1] = v51;
      __src[2] = v67;
      __src[3] = v50;
      __src[4] = v49;
      __src[5] = v42;
      __src[6] = v70;
      __src[7] = v48;
      __src[8] = v40;
      __src[9] = v65;
      __src[10] = v47;
      __src[11] = v27;
      __src[12] = v63;
      __src[13] = v46;
      __src[14] = v38;
      __src[15] = v61;
      __src[16] = v45;
      __src[17] = v37;
      __src[18] = v60;
      __src[19] = v44;
      __src[20] = v31;
      __src[21] = v58;
      __src[22] = v43;
      __src[23] = v33;
      __src[24] = v56;
      __src[25] = v41;
      __src[26] = v35;
      __src[27] = v54;
      __src[28] = v39;
      nullsub_1(__src);
    }

    else
    {

      sub_1ABD0C440(__src);
    }

    memcpy(__dst, __src, 0xE8uLL);
  }

  sub_1ABA7BC90();
}

void sub_1ABCFED78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_101;
  }

  v14 = *a1;
  v15 = a1[1];
  v74 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_57;
  }

  v70 = a8;
  v17 = sub_1ABF25054();

  if (v17)
  {
LABEL_57:
    v34 = v74;
    if (*(v74 + 56))
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v35 = sub_1ABF237F4();
      sub_1ABA7AA24(v35, qword_1ED871B40);
      sub_1ABD1927C(v74, &v75);
      v36 = sub_1ABF237D4();
      v37 = sub_1ABF24664();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_71;
      }

LABEL_61:
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78 = v39;
      *v38 = 136642819;
      v40 = v34[1];
      v75 = *v34;
      v76 = v40;
      v77[0] = v34[2];
      v41 = *(v34 + 41);
LABEL_62:
      *(v77 + 9) = v41;
      v42 = sub_1ABF23C94();
      v44 = sub_1ABADD6D8(v42, v43, &v78);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to parse %{sensitive}s.", v38, 0xCu);
      sub_1ABA84B54(v39);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);
      MEMORY[0x1AC5AB8B0](v38, -1, -1);

      return;
    }

    v46 = *(v74 + 40);
    v45 = *(v74 + 48);
    goto LABEL_64;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[456], *(_Records_GDEntityPredicate_records + 115), *(_Records_GDEntityPredicate_records + 116), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

LABEL_67:
    v34 = v74;
    if ((*(v74 + 56) & 1) == 0)
    {
      v53 = *(v74 + 40);
      v52 = *(v74 + 48);
      swift_beginAccess();

      sub_1ABB4DC20();
      v54 = *(*(a3 + 16) + 16);
      sub_1ABB4E024(v54);
      v55 = *(a3 + 16);
      *(v55 + 16) = v54 + 1;
      v56 = v55 + 16 * v54;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52;
      *(a3 + 16) = v55;
      goto LABEL_65;
    }

    goto LABEL_68;
  }

  v19 = sub_1ABF25054();

  if (v19)
  {
    goto LABEL_67;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_102:
    __break(1u);
    __break(1u);
    goto LABEL_103;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

LABEL_76:
    v34 = v74;
    if ((*(v74 + 56) & 1) == 0)
    {
      v58 = *(v74 + 40);
      v57 = *(v74 + 48);
      swift_beginAccess();

      sub_1ABB4DC20();
      v59 = *(*(a4 + 16) + 16);
      sub_1ABB4E024(v59);
      v60 = *(a4 + 16);
      *(v60 + 16) = v59 + 1;
      v61 = v60 + 16 * v59;
      *(v61 + 32) = v58;
      *(v61 + 40) = v57;
      *(a4 + 16) = v60;
      goto LABEL_65;
    }

    goto LABEL_68;
  }

  v21 = sub_1ABF25054();

  if (v21)
  {
    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[468], *(_Records_GDEntityPredicate_records + 118), *(_Records_GDEntityPredicate_records + 119), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_79;
  }

  v23 = sub_1ABF25054();

  if (v23)
  {
LABEL_79:
    v34 = v74;
    if (*(v74 + 56))
    {
      goto LABEL_68;
    }

    v46 = *(v74 + 40);
    v45 = *(v74 + 48);
    a2 = a5;
    goto LABEL_64;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_106;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_82;
  }

  v25 = sub_1ABF25054();

  if (v25)
  {
LABEL_82:
    v34 = v74;
    if (*(v74 + 56))
    {
      goto LABEL_68;
    }

    v46 = *(v74 + 40);
    v45 = *(v74 + 48);
    a2 = a6;
    goto LABEL_64;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[372], *(_Records_GDEntityPredicate_records + 94), *(_Records_GDEntityPredicate_records + 95), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_85;
  }

  v27 = sub_1ABF25054();

  if (v27)
  {
LABEL_85:
    v34 = v74;
    if (*(v74 + 56))
    {
      goto LABEL_68;
    }

    v46 = *(v74 + 40);
    v45 = *(v74 + 48);
    a2 = a7;
LABEL_64:
    swift_beginAccess();

    sub_1ABB4DC20();
    v47 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v47);
    v48 = *(a2 + 16);
    *(v48 + 16) = v47 + 1;
    v49 = v48 + 16 * v47;
    *(v49 + 32) = v46;
    *(v49 + 40) = v45;
    *(a2 + 16) = v48;
LABEL_65:
    swift_endAccess();
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[504], *(_Records_GDEntityPredicate_records + 127), *(_Records_GDEntityPredicate_records + 128), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {
  }

  else
  {
    v29 = sub_1ABF25054();

    if ((v29 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1296], *(_Records_GDEntityPredicate_records + 325), *(_Records_GDEntityPredicate_records + 326), &v75);
        if (v75 == v14 && *(&v75 + 1) == v15)
        {
        }

        else
        {
          v31 = sub_1ABF25054();

          if ((v31 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[2496], *(_Records_GDEntityPredicate_records + 625), *(_Records_GDEntityPredicate_records + 626), &v75);
              if (v75 == v14 && *(&v75 + 1) == v15)
              {
              }

              else
              {
                v33 = sub_1ABF25054();

                if ((v33 & 1) == 0)
                {
                  return;
                }
              }

              if ((*(v74 + 56) & 1) == 0)
              {
                a9 = a10;
                goto LABEL_95;
              }

LABEL_92:
              if (qword_1ED871B38 == -1)
              {
LABEL_93:
                v62 = sub_1ABF237F4();
                sub_1ABA7AA24(v62, qword_1ED871B40);
                sub_1ABD1927C(v74, &v75);
                v36 = sub_1ABF237D4();
                v37 = sub_1ABF24664();
                if (os_log_type_enabled(v36, v37))
                {
                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  v78 = v39;
                  *v38 = 136642819;
                  v63 = *(v74 + 16);
                  v75 = *v74;
                  v76 = v63;
                  v77[0] = *(v74 + 32);
                  v41 = *(v74 + 41);
                  goto LABEL_62;
                }

                v51 = v74;
                goto LABEL_72;
              }

LABEL_104:
              swift_once();
              goto LABEL_93;
            }

LABEL_109:
            __break(1u);
            return;
          }
        }

        if ((*(v74 + 56) & 1) == 0)
        {
LABEL_95:
          v66 = *(v74 + 40);
          v65 = *(v74 + 48);
          swift_beginAccess();

          sub_1ABB4DC20();
          v67 = *(*(a9 + 16) + 16);
          sub_1ABB4E024(v67);
          v68 = *(a9 + 16);
          *(v68 + 16) = v67 + 1;
          v69 = v68 + 16 * v67;
          *(v69 + 32) = v66;
          *(v69 + 40) = v65;
          *(a9 + 16) = v68;
          goto LABEL_65;
        }

        goto LABEL_92;
      }

LABEL_108:
      __break(1u);
      goto LABEL_109;
    }
  }

  v34 = v74;
  if ((*(v74 + 56) & 1) == 0)
  {
    v46 = *(v74 + 40);
    v45 = *(v74 + 48);
    a2 = v70;
    goto LABEL_64;
  }

LABEL_68:
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v50 = sub_1ABF237F4();
  sub_1ABA7AA24(v50, qword_1ED871B40);
  sub_1ABD1927C(v34, &v75);
  v36 = sub_1ABF237D4();
  v37 = sub_1ABF24664();
  if (os_log_type_enabled(v36, v37))
  {
    goto LABEL_61;
  }

LABEL_71:

  v51 = v34;
LABEL_72:
  sub_1ABB6DBB8(v51);
}

void sub_1ABCFF6EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v205 = a8;
  v208 = a7;
  v211 = a6;
  v213 = a5;
  v216 = a4;
  v218 = a3;
  v13 = *(a11 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v200 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v202 = &v197 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v204 = &v197 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v207 = &v197 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v210 = &v197 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v197 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v215 = &v197 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v217 = &v197 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v219 = &v197 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v221 = &v197 - v34;
  v36 = *(v35 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v224 = AssociatedTypeWitness;
  v225 = v38;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v201 = &v197 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v203 = &v197 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v206 = &v197 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v209 = &v197 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v212 = &v197 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v214 = &v197 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v197 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v197 - v55;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v197 - v59;
  v61 = *(v36 + 24);
  v234 = a1;
  v226 = a11;
  v61(&v230, a11, v36, v58);
  v220 = 279;
  v222 = v13;
  v223 = v36;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_148;
  }

  v62 = v230;
  v63 = v231[0];
  v64 = v231[2];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), &v227);
  if (v227 == v62 && v228 == v63)
  {

LABEL_9:
    v68 = v223;

    v53 = v226;
    (*(v68 + 32))(v226, v68);
    v69 = v224;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v71 = (*(AssociatedConformanceWitness + 24))(v69, AssociatedConformanceWitness);
    v73 = v72;
    (*(v225 + 8))(v60, v69);
    if (v73)
    {
      swift_beginAccess();
      sub_1ABB4DC20();
      v74 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v74);
      v75 = *(a2 + 16);
      *(v75 + 16) = v74 + 1;
      v76 = v75 + 16 * v74;
      *(v76 + 32) = v71;
      *(v76 + 40) = v73;
      *(a2 + 16) = v75;
LABEL_51:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v77 = sub_1ABF237F4();
    sub_1ABA7AA24(v77, qword_1ED871B40);
    v78 = v221;
    v79 = v222;
    v80 = *(v222 + 16);
    v80(v221, v234, v53);
    v81 = sub_1ABF237D4();
    v82 = sub_1ABF24664();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v227 = v234;
      *v83 = 136642819;
      v80(v219, v78, v53);
      v84 = sub_1ABF23C94();
      v86 = v85;
      (*(v79 + 8))(v78, v53);
      v87 = sub_1ABADD6D8(v84, v86, &v227);
LABEL_15:

      *(v83 + 4) = v87;
      _os_log_impl(&dword_1ABA78000, v81, v82, "Failed to parse %{sensitive}s.", v83, 0xCu);
      v88 = v234;
      sub_1ABA84B54(v234);
      v89 = v88;
LABEL_16:
      MEMORY[0x1AC5AB8B0](v89, -1, -1);
      v90 = v83;
LABEL_35:
      MEMORY[0x1AC5AB8B0](v90, -1, -1);

      return;
    }

    v94 = *(v79 + 8);
    v95 = v78;
LABEL_44:
    v94(v95, v53);
    return;
  }

  v199 = v64;
  v198 = v26;
  v66 = v63;
  v67 = sub_1ABF25054();

  if (v67)
  {
    goto LABEL_9;
  }

  v91 = v223;
  if (v220 < 0x27)
  {
    __break(1u);
LABEL_108:

    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_151:
    swift_once();
LABEL_99:
    v160 = sub_1ABF237F4();
    sub_1ABA7AA24(v160, qword_1ED871B40);
    v106 = v222;
    v107 = *(v222 + 16);
    v153 = &v233;
    goto LABEL_87;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[456], *(_Records_GDEntityPredicate_records + 115), *(_Records_GDEntityPredicate_records + 116), &v227);
  if (v227 == v62 && v228 == v66)
  {

LABEL_27:

    v53 = v226;
    (*(v91 + 32))(v226, v91);
    v96 = v224;
    v97 = swift_getAssociatedConformanceWitness();
    v98 = (*(v97 + 24))(v96, v97);
    v100 = v99;
    (*(v225 + 8))(v56, v96);
    if (v100)
    {
      v101 = v218;
      swift_beginAccess();
      sub_1ABB4DC20();
      v102 = *(*(v101 + 16) + 16);
      sub_1ABB4E024(v102);
      v103 = *(v101 + 16);
      *(v103 + 16) = v102 + 1;
      v104 = v103 + 16 * v102;
      *(v104 + 32) = v98;
      *(v104 + 40) = v100;
LABEL_50:
      *(v101 + 16) = v103;
      goto LABEL_51;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v105 = sub_1ABF237F4();
    sub_1ABA7AA24(v105, qword_1ED871B40);
    v106 = v222;
    v107 = *(v222 + 16);
    v108 = v217;
    goto LABEL_32;
  }

  v93 = sub_1ABF25054();

  if (v93)
  {
    goto LABEL_27;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_153;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), &v227);
  if (v227 == v62 && v228 == v66)
  {

LABEL_46:

    (*(v91 + 32))(v226, v91);
    v118 = v224;
    v119 = swift_getAssociatedConformanceWitness();
    v120 = (*(v119 + 24))(v118, v119);
    v122 = v121;
    (*(v225 + 8))(v53, v118);
    if (!v122)
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v126 = sub_1ABF237F4();
      sub_1ABA7AA24(v126, qword_1ED871B40);
      v127 = v222;
      v128 = *(v222 + 16);
      v129 = v215;
      v130 = v226;
      v128(v215, v234, v226);
      v81 = sub_1ABF237D4();
      v109 = sub_1ABF24664();
      if (!os_log_type_enabled(v81, v109))
      {

        (*(v127 + 8))(v129, v130);
        return;
      }

      v110 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v227 = v234;
      *v110 = 136642819;
      v128(v219, v129, v130);
      v111 = sub_1ABF23C94();
      v113 = v131;
      (*(v127 + 8))(v129, v130);
      goto LABEL_34;
    }

    v123 = &v238;
    goto LABEL_48;
  }

  v117 = sub_1ABF25054();

  if (v117)
  {
    goto LABEL_46;
  }

  if (v220 == 39)
  {
    __break(1u);
LABEL_140:

    goto LABEL_141;
  }

  v53 = v226;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    swift_once();
LABEL_127:
    v178 = sub_1ABF237F4();
    sub_1ABA7AA24(v178, qword_1ED871B40);
    v179 = *(v222 + 16);
    v179(v202, v234, v226);
    v81 = sub_1ABF237D4();
    v180 = sub_1ABF24664();
    if (!os_log_type_enabled(v81, v180))
    {

      (*(v222 + 8))(v202, v226);
      return;
    }

    v83 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v227 = v181;
    *v83 = 136642819;
    v182 = v219;
    v183 = v231;
LABEL_129:
    v184 = *(v183 - 32);
    v185 = v226;
    v179(v182, v184, v226);
    v186 = sub_1ABF23C94();
    v188 = v187;
    (*(v222 + 8))(v184, v185);
    v189 = sub_1ABADD6D8(v186, v188, &v227);

    *(v83 + 4) = v189;
    _os_log_impl(&dword_1ABA78000, v81, v180, "Failed to parse %{sensitive}s.", v83, 0xCu);
    sub_1ABA84B54(v181);
    v89 = v181;
    goto LABEL_16;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[468], *(_Records_GDEntityPredicate_records + 118), *(_Records_GDEntityPredicate_records + 119), &v227);
  if (v227 == v62 && v228 == v66)
  {

LABEL_67:

    v134 = v214;
    (*(v91 + 32))(v53, v91);
    v135 = v224;
    v136 = swift_getAssociatedConformanceWitness();
    v120 = (*(v136 + 24))(v135, v136);
    v122 = v137;
    (*(v225 + 8))(v134, v135);
    if (!v122)
    {
      v138 = v53;
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v139 = sub_1ABF237F4();
      sub_1ABA7AA24(v139, qword_1ED871B40);
      v140 = v222;
      v141 = *(v222 + 16);
      v142 = v198;
      v141(v198, v234, v138);
      v81 = sub_1ABF237D4();
      v82 = sub_1ABF24664();
      if (!os_log_type_enabled(v81, v82))
      {

        (*(v140 + 8))(v142, v138);
        return;
      }

      v83 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v227 = v234;
      *v83 = 136642819;
      v141(v219, v142, v138);
      v143 = sub_1ABF23C94();
      v145 = v144;
      (*(v140 + 8))(v142, v138);
      v87 = sub_1ABADD6D8(v143, v145, &v227);
      goto LABEL_15;
    }

    v123 = &v237;
    goto LABEL_48;
  }

  v133 = sub_1ABF25054();

  if (v133)
  {
    goto LABEL_67;
  }

  if (v220 < 0x2C)
  {
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    swift_once();
LABEL_86:
    v152 = sub_1ABF237F4();
    sub_1ABA7AA24(v152, qword_1ED871B40);
    v106 = v222;
    v107 = *(v222 + 16);
    v153 = &v235;
LABEL_87:
    v108 = *(v153 - 32);
LABEL_32:
    v107(v108, v234, v53);
    v81 = sub_1ABF237D4();
    v109 = sub_1ABF24664();
    if (!os_log_type_enabled(v81, v109))
    {

      v94 = *(v106 + 8);
      v95 = v108;
      goto LABEL_44;
    }

    v110 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    v227 = v234;
    *v110 = 136642819;
    v107(v219, v108, v53);
    v111 = sub_1ABF23C94();
    v113 = v112;
    (*(v106 + 8))(v108, v53);
LABEL_34:
    v114 = sub_1ABADD6D8(v111, v113, &v227);

    *(v110 + 4) = v114;
    _os_log_impl(&dword_1ABA78000, v81, v109, "Failed to parse %{sensitive}s.", v110, 0xCu);
    v115 = v234;
    sub_1ABA84B54(v234);
    MEMORY[0x1AC5AB8B0](v115, -1, -1);
    v90 = v110;
    goto LABEL_35;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_158:
    __break(1u);
LABEL_159:
    swift_once();
LABEL_144:
    v196 = sub_1ABF237F4();
    sub_1ABA7AA24(v196, qword_1ED871B40);
    v179 = *(v222 + 16);
    v179(v200, v234, v226);
    v81 = sub_1ABF237D4();
    v180 = sub_1ABF24664();
    if (!os_log_type_enabled(v81, v180))
    {

      (*(v222 + 8))(v200, v226);
      return;
    }

    v83 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v227 = v181;
    *v83 = 136642819;
    v182 = v219;
    v183 = &v229;
    goto LABEL_129;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), &v227);
  if (v227 == v62 && v228 == v66)
  {

    goto LABEL_83;
  }

  v147 = sub_1ABF25054();

  if (v147)
  {
LABEL_83:

    v148 = v212;
    (*(v91 + 32))(v53, v91);
    v149 = v224;
    v150 = swift_getAssociatedConformanceWitness();
    v120 = (*(v150 + 24))(v149, v150);
    v122 = v151;
    (*(v225 + 8))(v148, v149);
    if (v122)
    {
      v123 = &v236;
LABEL_48:
      v101 = *(v123 - 32);
LABEL_49:
      swift_beginAccess();
      sub_1ABB4DC20();
      v124 = *(*(v101 + 16) + 16);
      sub_1ABB4E024(v124);
      v103 = *(v101 + 16);
      *(v103 + 16) = v124 + 1;
      v125 = v103 + 16 * v124;
      *(v125 + 32) = v120;
      *(v125 + 40) = v122;
      goto LABEL_50;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_86;
    }

    goto LABEL_149;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[372], *(_Records_GDEntityPredicate_records + 94), *(_Records_GDEntityPredicate_records + 95), &v227);
  if (v227 == v62 && v228 == v66)
  {

    goto LABEL_96;
  }

  v155 = sub_1ABF25054();

  if (v155)
  {
LABEL_96:

    v156 = v209;
    (*(v91 + 32))(v53, v91);
    v157 = v224;
    v158 = swift_getAssociatedConformanceWitness();
    v120 = (*(v158 + 24))(v157, v158);
    v122 = v159;
    (*(v225 + 8))(v156, v157);
    if (v122)
    {
      v123 = &v234;
      goto LABEL_48;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_99;
    }

    goto LABEL_151;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_161;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[504], *(_Records_GDEntityPredicate_records + 127), *(_Records_GDEntityPredicate_records + 128), &v227);
  if (v227 == v62 && v228 == v66)
  {
    goto LABEL_108;
  }

  v162 = sub_1ABF25054();

  if (v162)
  {
LABEL_109:
    v93 = v234;

    v163 = v206;
    (*(v91 + 32))(v53, v91);
    v164 = v224;
    v165 = swift_getAssociatedConformanceWitness();
    v120 = (*(v165 + 24))(v164, v165);
    v122 = v166;
    (*(v225 + 8))(v163, v164);
    if (v122)
    {
      v123 = &v232;
      goto LABEL_48;
    }

    if (qword_1ED871B38 == -1)
    {
LABEL_112:
      v167 = sub_1ABF237F4();
      sub_1ABA7AA24(v167, qword_1ED871B40);
      v168 = v222;
      v169 = *(v222 + 16);
      v170 = v204;
      v169(v204, v93, v53);
      v81 = sub_1ABF237D4();
      v109 = sub_1ABF24664();
      if (!os_log_type_enabled(v81, v109))
      {

        (*(v168 + 8))(v170, v53);
        return;
      }

      v110 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v227 = v234;
      *v110 = 136642819;
      v169(v219, v170, v53);
      v111 = sub_1ABF23C94();
      v113 = v171;
      (*(v168 + 8))(v170, v53);
      goto LABEL_34;
    }

LABEL_153:
    swift_once();
    goto LABEL_112;
  }

  if (v220 < 0x6D)
  {
    __break(1u);
    goto LABEL_155;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1296], *(_Records_GDEntityPredicate_records + 325), *(_Records_GDEntityPredicate_records + 326), &v227);
  if (v227 == v62 && v228 == v66)
  {

    goto LABEL_124;
  }

  v173 = sub_1ABF25054();

  if (v173)
  {
LABEL_124:

    v174 = v203;
    (*(v223 + 32))(v226, v223);
    v175 = v224;
    v176 = swift_getAssociatedConformanceWitness();
    v120 = (*(v176 + 24))(v175, v176);
    v122 = v177;
    (*(v225 + 8))(v174, v175);
    if (v122)
    {
      v101 = a9;
      goto LABEL_49;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_127;
    }

    goto LABEL_156;
  }

  if (v220 < 0xD1)
  {
    __break(1u);
    goto LABEL_158;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_163:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2496], *(_Records_GDEntityPredicate_records + 625), *(_Records_GDEntityPredicate_records + 626), &v227);
  if (v227 == v62 && v228 == v66)
  {
    goto LABEL_140;
  }

  v191 = sub_1ABF25054();

  if (v191)
  {
LABEL_141:
    v192 = v201;
    (*(v223 + 32))(v226, v223);
    v193 = v224;
    v194 = swift_getAssociatedConformanceWitness();
    v120 = (*(v194 + 24))(v193, v194);
    v122 = v195;
    (*(v225 + 8))(v192, v193);
    if (v122)
    {
      v101 = a10;
      goto LABEL_49;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_144;
    }

    goto LABEL_159;
  }
}

void CustomGraphLocationAddressRelationship.init(subentityId:all_street:all_subLocality:all_city:all_subAdministrativeArea:all_state:all_postalCode:all_country:all_isoCountryCode:all_inferredSemanticLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  sub_1ABA7E2A8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1ABAA5CB0();
  v33 = v32;
  v36 = sub_1ABD1B584(v34, v35, v32);
  v33[2] = v25;
  v33[3] = v36;
  v33[4] = v37;
  v38 = sub_1ABB2B834(v24);
  v33[5] = v24;
  v33[6] = v38;
  v33[7] = v39;
  v40 = sub_1ABB2B834(v23);
  v33[8] = v23;
  v33[9] = v40;
  v33[10] = v41;
  v42 = sub_1ABB2B834(v22);
  v33[11] = v22;
  v33[12] = v42;
  v33[13] = v43;
  v44 = sub_1ABB2B834(v31);
  v33[14] = v31;
  v33[15] = v44;
  v33[16] = v45;
  v46 = sub_1ABB2B834(v29);
  v33[17] = v29;
  v33[18] = v46;
  v33[19] = v47;
  v48 = sub_1ABB2B834(v27);
  v33[20] = v27;
  v33[21] = v48;
  v33[22] = v49;
  v50 = sub_1ABB2B834(a21);
  v33[23] = a21;
  v33[24] = v50;
  v33[25] = v51;
  v52 = sub_1ABB2B834(a22);
  v33[26] = a22;
  v33[27] = v52;
  v33[28] = v53;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD01244(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 2037672291 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001ABF8D740 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000015 && 0x80000001ABF8D760 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABD0156C(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0x746565727473;
      break;
    case 2:
      result = 0x6C61636F4C627573;
      break;
    case 3:
      result = 2037672291;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x6574617473;
      break;
    case 6:
      result = 0x6F436C6174736F70;
      break;
    case 7:
      result = 0x7972746E756F63;
      break;
    case 8:
      result = 0x746E756F436F7369;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD01698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD01244(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD016C0(uint64_t a1)
{
  v2 = sub_1ABD0E68C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD016FC(uint64_t a1)
{
  v2 = sub_1ABD0E68C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABD0175C@<D0>(__n128 *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  *&result = _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0(a1).n128_u64[0];
  return result;
}

void CustomGraphLocationAddressRelationship.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4D71D8, &qword_1ABF510B0);
  sub_1ABA7BB64(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7BCE0();
  v33 = *v20;
  v34 = v20[1];
  v67 = v20[4];
  v68 = v20[2];
  v65 = v20[5];
  v66 = v20[3];
  v63 = v20[7];
  v64 = v20[6];
  v60 = v20[8];
  v61 = v20[9];
  v62 = v20[10];
  v57 = v20[11];
  v58 = v20[12];
  v59 = v20[13];
  v54 = v20[14];
  v55 = v20[15];
  v56 = v20[16];
  v51 = v20[17];
  v52 = v20[18];
  v53 = v20[19];
  v49 = v20[20];
  v50 = v20[21];
  v35 = v20[22];
  sub_1ABD1B8A4(v20[23]);
  v48 = v20[24];
  sub_1ABD1B6F4(v20[25]);
  v46 = v20[26];
  sub_1ABD1B77C(v20[27]);
  v36 = v20[28];
  v37 = v26[3];
  v38 = v26[4];
  v39 = v26;
  v41 = v40;
  sub_1ABA88DCC(v39, v37);
  sub_1ABD0E68C();
  sub_1ABAA0704();
  sub_1ABF252E4();
  HIBYTE(a10) = 0;
  sub_1ABD0E36C();
  sub_1ABF24F84();
  if (!v21)
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABD1AEB0();
    sub_1ABA9E3E8();
    sub_1ABF24F84();
    if (v68)
    {
      goto LABEL_9;
    }

    sub_1ABD1B84C();

    sub_1ABD1B178();

    sub_1ABD1AEB0();
    sub_1ABA9E3E8();
    sub_1ABF24F84();
    sub_1ABD1B84C();

    sub_1ABD1AF94();

    sub_1ABD1ACF0();
    if (v60)
    {
      goto LABEL_9;
    }

    sub_1ABD1B84C();

    sub_1ABA8B908();

    sub_1ABD1ACF0();
    if (v57)
    {
      goto LABEL_9;
    }

    sub_1ABD1B84C();

    sub_1ABD1AFDC();

    sub_1ABD1ACF0();
    if (v54)
    {
      goto LABEL_9;
    }

    sub_1ABD1B84C();

    sub_1ABD1BECC(&a18);
    sub_1ABD1AFD0();

    sub_1ABD1ACF0();
    if (v51 || (sub_1ABD1B84C(), , sub_1ABD1BECC(&a15), sub_1ABD1AFC4(), , , sub_1ABD1ACF0(), v49))
    {
LABEL_9:
      sub_1ABD1B84C();
    }

    else
    {

      sub_1ABD1BECC(&a12);
      sub_1ABA8D348();
      sub_1ABD1AFB8();

      sub_1ABD1AEB0();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
      sub_1ABD1B84C();

      if (!v47)
      {
        sub_1ABD1BECC(&a10);
        sub_1ABD1AFE8();

        sub_1ABA9E3E8();
        sub_1ABF24F84();
        sub_1ABD1B84C();

        v45 = *(v29 + 8);
        v43 = sub_1ABA8C53C();
        goto LABEL_11;
      }
    }
  }

  v42 = *(v29 + 8);
  v43 = v22;
  v44 = v41;
LABEL_11:
  v42(v43, v44);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphLocationAddressRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D71E8, &qword_1ABF510B8);
  sub_1ABA7BB64(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BCE0();
  v10 = v3[3];
  v11 = v3[4];
  sub_1ABA88DCC(v3, v10);
  sub_1ABD0E68C();
  sub_1ABAA0704();
  sub_1ABA9EE14();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA88688();
    sub_1ABA84B54(v3);
    if (v11)
    {

      if (v10)
      {
        goto LABEL_10;
      }
    }

    else if (v10)
    {
LABEL_10:

      if ((v5 & 1) == 0)
      {
LABEL_11:
        if (!v1)
        {
          goto LABEL_13;
        }

LABEL_12:

        goto LABEL_13;
      }

LABEL_6:

      if ((v1 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1ABD0E3C0();
  sub_1ABA827AC();
  sub_1ABD1B414();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  LOBYTE(v51[0]) = 1;
  sub_1ABD0A2D4();
  sub_1ABD1ACAC();
  sub_1ABD1B414();
  v33 = v52;
  v34 = v53;
  sub_1ABD1BF38();
  v49 = v13;
  v50 = v12;
  sub_1ABA8B8EC(2);
  sub_1ABA9FABC();
  v32 = v53;
  sub_1ABD1BF38();
  v47 = v15;
  v48 = v14;
  sub_1ABA8B8EC(3);
  sub_1ABA9FABC();
  v31 = v53;
  v45 = v52;
  v46 = v54;
  sub_1ABA8B8EC(4);
  sub_1ABD1B414();
  v30 = v53;
  sub_1ABD1BF38();
  v43 = v17;
  v44 = v16;
  sub_1ABA8B8EC(5);
  sub_1ABA9FABC();
  v29 = v53;
  sub_1ABD1BF38();
  v41 = v19;
  v42 = v18;
  sub_1ABA8B8EC(6);
  sub_1ABA9FABC();
  v27 = v53;
  v28 = v53;
  v39 = v54;
  v40 = v52;
  sub_1ABA8B8EC(7);
  sub_1ABA9FABC();
  v26 = v53;
  v37 = v54;
  v38 = v52;
  sub_1ABA8B8EC(8);
  sub_1ABD1B414();
  v24 = v53;
  v25 = v52;
  v36 = v54;
  sub_1ABD1AFE8();
  sub_1ABD1B66C();
  sub_1ABD1ACAC();
  sub_1ABD1B414();
  v20 = sub_1ABA7BFF0();
  v21(v20);
  v35 = v81;
  v22 = v83;
  v23 = v82;
  v51[0] = v33;
  v51[1] = v34;
  v51[2] = v49;
  v51[3] = v32;
  v51[4] = v50;
  v51[5] = v47;
  v51[6] = v31;
  v51[7] = v48;
  v51[8] = v45;
  v51[9] = v30;
  v51[10] = v46;
  v51[11] = v43;
  v51[12] = v29;
  v51[13] = v44;
  v51[14] = v41;
  v51[15] = v28;
  v51[16] = v42;
  v51[17] = v40;
  v51[18] = v27;
  v51[19] = v39;
  v51[20] = v38;
  v51[21] = v26;
  v51[22] = v37;
  v51[23] = v25;
  v51[24] = v24;
  v51[25] = v36;
  v51[26] = v81;
  v51[27] = v82;
  v51[28] = v83;
  memcpy(v5, v51, 0xE8uLL);
  sub_1ABC6AB40(v51, &v52);
  sub_1ABA84B54(v3);
  v52 = v33;
  v53 = v34;
  v54 = v49;
  v55 = v32;
  v56 = v50;
  v57 = v47;
  v58 = v31;
  v59 = v48;
  v60 = v45;
  v61 = v30;
  v62 = v46;
  v63 = v43;
  v64 = v29;
  v65 = v44;
  v66 = v41;
  v67 = v28;
  v68 = v42;
  v69 = v40;
  v70 = v27;
  v71 = v39;
  v72 = v38;
  v73 = v26;
  v74 = v37;
  v75 = v25;
  v76 = v24;
  v77 = v36;
  v78 = v35;
  v79 = v23;
  v80 = v22;
  sub_1ABC6AB9C(&v52);
LABEL_13:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphLocationLatLongRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABD1C204(_Records_GDEntityClass_records, v9);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }
}

double sub_1ABD02338@<D0>(void (*a1)(void *__return_ptr, void (*)(uint64_t a1), void, void (*)(_OWORD *a1), uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v7 + 16;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;

  a1(v24, sub_1ABD02764, 0, sub_1ABD19A00, v9);
  if (v2)
  {

    return result;
  }

  v11 = v24[0];
  v12 = v24[1];
  swift_beginAccess();
  v13 = *(v5 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v13 + 32);
  }

  else
  {
    swift_beginAccess();
    v15 = 0;
    if (!*(*v8 + 16))
    {

      result = 0.0;
      *(a2 + 41) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }
  }

  v22 = v15;
  v23 = v12;
  v26 = v14 == 0;
  swift_beginAccess();
  v16 = *v8;
  v17 = *(v16 + 16);
  v18 = v11;
  if (v17)
  {
    v19 = *(v16 + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = v17 == 0;

  v25 = v20;
  v21 = v26;
  *a2 = v18;
  *(a2 + 8) = v23;
  *(a2 + 16) = v13;
  *(a2 + 24) = v22;
  *(a2 + 32) = v21;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  return result;
}

void sub_1ABD02570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, BOOL a22, uint64_t a23, BOOL a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1ABD1C088();
  a33 = v36;
  a34 = v37;
  v58 = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1ABA7D028();
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1ABD1BEF0(v45);
  sub_1ABA7D028();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = v47 + 16;
  sub_1ABAA267C();
  v49 = swift_allocObject();
  v49[2] = v42;
  v49[3] = v40;
  v49[4] = v45;
  v49[5] = v47;

  v44(&a19, sub_1ABD02764, 0, sub_1ABD1999C, v49);
  if (v34)
  {
  }

  else
  {

    v59 = a19;
    v57 = a20;
    sub_1ABAA9068();
    v50 = *v35;
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = *(v50 + 32);
    }

    else
    {
      sub_1ABD1B080();
      v52 = 0;
      if (!*(*v48 + 16))
      {

        *(v58 + 41) = 0u;
        *(v58 + 16) = 0u;
        *(v58 + 32) = 0u;
        *v58 = 0u;
        goto LABEL_10;
      }
    }

    a24 = v51 == 0;
    sub_1ABD1B080();
    sub_1ABD1B610();
    if (v53)
    {
      v54 = *(v47 + 48);
    }

    else
    {
      v54 = 0;
    }

    v55 = v53 == 0;

    a22 = v55;
    v56 = a24;
    *v58 = v59;
    *(v58 + 8) = v57;
    *(v58 + 16) = v50;
    *(v58 + 24) = v52;
    *(v58 + 32) = v56;
    *(v58 + 40) = v48;
    *(v58 + 48) = v54;
    *(v58 + 56) = v55;
  }

LABEL_10:
  sub_1ABD1C06C();
}

void sub_1ABD02764(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphLocationLatLongRelationship init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD029FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1128], *(_Records_GDEntityPredicate_records + 283), *(_Records_GDEntityPredicate_records + 284), v37);
  if (*&v37[0] == v6 && *(&v37[0] + 1) == v7)
  {

    goto LABEL_15;
  }

  v36 = a3;
  v9 = sub_1ABF25054();

  if (v9)
  {
LABEL_15:
    if ((*(a1 + 56) & 1) == 0)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);

      v14 = sub_1ABB24D04(v12, v13);
      if ((v15 & 1) == 0)
      {
        v25 = v14;
        swift_beginAccess();
        sub_1ABB4DCB0();
        v26 = *(*(a2 + 16) + 16);
        sub_1ABB4E0CC(v26);
        v27 = *(a2 + 16);
        *(v27 + 16) = v26 + 1;
        *(v27 + 8 * v26 + 32) = v25;
        *(a2 + 16) = v27;
        return;
      }
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B40);
    sub_1ABD1927C(a1, v37);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_31:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1140], *(_Records_GDEntityPredicate_records + 286), *(_Records_GDEntityPredicate_records + 287), v37);
  if (*&v37[0] == v6 && *(&v37[0] + 1) == v7)
  {

    goto LABEL_23;
  }

  v11 = sub_1ABF25054();

  if (v11)
  {
LABEL_23:
    if ((*(a1 + 56) & 1) == 0)
    {
      v28 = *(a1 + 40);
      v29 = *(a1 + 48);

      v30 = sub_1ABB24D04(v28, v29);
      if ((v31 & 1) == 0)
      {
        v33 = v30;
        swift_beginAccess();
        sub_1ABB4DCB0();
        v34 = *(*(v36 + 16) + 16);
        sub_1ABB4E0CC(v34);
        v35 = *(v36 + 16);
        *(v35 + 16) = v34 + 1;
        *(v35 + 8 * v34 + 32) = v33;
        *(v36 + 16) = v35;
        return;
      }
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v32 = sub_1ABF237F4();
    sub_1ABA7AA24(v32, qword_1ED871B40);
    sub_1ABD1927C(a1, v37);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_28:

      sub_1ABB6DBB8(a1);
      return;
    }

LABEL_20:
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = v20;
    *v19 = 136642819;
    v21 = *(a1 + 16);
    v37[0] = *a1;
    v37[1] = v21;
    v38[0] = *(a1 + 32);
    *(v38 + 9) = *(a1 + 41);
    v22 = sub_1ABF23C94();
    v24 = sub_1ABADD6D8(v22, v23, &v39);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1ABA78000, v17, v18, "Failed to parse %{sensitive}s.", v19, 0xCu);
    sub_1ABA84B54(v20);
    MEMORY[0x1AC5AB8B0](v20, -1, -1);
    MEMORY[0x1AC5AB8B0](v19, -1, -1);
  }
}

void sub_1ABD02E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v81 = a2;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v77 - v15;
  v17 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v86 = AssociatedTypeWitness;
  v19 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v77 - v23;
  v25 = *(v17 + 24);
  v87 = a1;
  v25(v90, a4, v17, v22);
  v77 = v10;
  v80 = v13;
  v82 = v7;
  v84 = a4;
  v91 = v4;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_34;
  }

  v27 = v90[0];
  v26 = v90[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1128], *(_Records_GDEntityPredicate_records + 283), *(_Records_GDEntityPredicate_records + 284), &v88);
  if (v88 == v27 && v89 == v26)
  {

LABEL_9:

    v30 = v87;
    v31 = v84;
    (*(v17 + 32))(v84, v17);
    v32 = v86;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = BaseEntityFactObjectProtocol.asGraphLocationDegrees.getter(v32, AssociatedConformanceWitness);
    v36 = v35;
    (*(v85 + 8))(v24, v32);
    v37 = v83;
    if (v36)
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v38 = sub_1ABF237F4();
      sub_1ABA7AA24(v38, qword_1ED871B40);
      v39 = v82;
      v40 = *(v82 + 16);
      v40(v37, v30, v31);
      v41 = sub_1ABF237D4();
      v42 = sub_1ABF24664();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        LODWORD(v87) = v42;
        v45 = v37;
        v46 = v39;
        v47 = v44;
        v88 = v44;
        *v43 = 136642819;
        v40(v80, v45, v31);
        v48 = sub_1ABF23C94();
        v50 = v49;
        (*(v46 + 8))(v45, v31);
        v51 = sub_1ABADD6D8(v48, v50, &v88);

        *(v43 + 4) = v51;
        _os_log_impl(&dword_1ABA78000, v41, v87, "Failed to parse %{sensitive}s.", v43, 0xCu);
        sub_1ABA84B54(v47);
        MEMORY[0x1AC5AB8B0](v47, -1, -1);
        MEMORY[0x1AC5AB8B0](v43, -1, -1);
      }

      else
      {

        (*(v39 + 8))(v37, v31);
      }

      return;
    }

    v52 = v81;
LABEL_15:
    swift_beginAccess();
    sub_1ABB4DCB0();
    v53 = *(*(v52 + 16) + 16);
    sub_1ABB4E0CC(v53);
    v54 = *(v52 + 16);
    *(v54 + 16) = v53 + 1;
    *(v54 + 8 * v53 + 32) = v34;
    *(v52 + 16) = v54;
    return;
  }

  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_34:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1140], *(_Records_GDEntityPredicate_records + 286), *(_Records_GDEntityPredicate_records + 287), &v88);
  if (v88 == v27 && v89 == v26)
  {
  }

  else
  {
    v56 = sub_1ABF25054();

    if ((v56 & 1) == 0)
    {
      return;
    }
  }

  v57 = v79;
  v58 = v87;
  v59 = v84;
  (*(v17 + 32))(v84, v17);
  v60 = v86;
  v61 = swift_getAssociatedConformanceWitness();
  v34 = BaseEntityFactObjectProtocol.asGraphLocationDegrees.getter(v60, v61);
  v63 = v62;
  (*(v85 + 8))(v57, v60);
  if ((v63 & 1) == 0)
  {
    v52 = v78;
    goto LABEL_15;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v64 = sub_1ABF237F4();
  sub_1ABA7AA24(v64, qword_1ED871B40);
  v65 = v82;
  v66 = *(v82 + 16);
  v67 = v77;
  v66(v77, v58, v59);
  v68 = sub_1ABF237D4();
  v69 = sub_1ABF24664();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v65;
    v72 = swift_slowAlloc();
    v88 = v72;
    *v70 = 136642819;
    LODWORD(v87) = v69;
    v66(v80, v67, v59);
    v73 = sub_1ABF23C94();
    v75 = v74;
    (*(v71 + 8))(v67, v59);
    v76 = sub_1ABADD6D8(v73, v75, &v88);

    *(v70 + 4) = v76;
    _os_log_impl(&dword_1ABA78000, v68, v87, "Failed to parse %{sensitive}s.", v70, 0xCu);
    sub_1ABA84B54(v72);
    MEMORY[0x1AC5AB8B0](v72, -1, -1);
    MEMORY[0x1AC5AB8B0](v70, -1, -1);
  }

  else
  {

    (*(v65 + 8))(v67, v59);
  }
}

_OWORD *CustomGraphLocationLatLongRelationship.init(subentityId:all_latitude:all_longitude:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
  }

  else
  {
    v5 = 0;
  }

  *(a4 + 16) = a2;
  *(a4 + 24) = v5;
  *(a4 + 32) = v4 == 0;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = *(a3 + 32);
  }

  else
  {
    v7 = 0;
  }

  *(a4 + 40) = a3;
  *(a4 + 48) = v7;
  *(a4 + 56) = v6 == 0;
  return result;
}

uint64_t sub_1ABD03684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD037A0(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0x656475746974616CLL;
  }

  return 0x64757469676E6F6CLL;
}

uint64_t sub_1ABD0380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD03684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD03834(uint64_t a1)
{
  v2 = sub_1ABD0E6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD03870(uint64_t a1)
{
  v2 = sub_1ABD0E6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABD038D4@<D0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  *&result = _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0(a1).n128_u64[0];
  return result;
}

void CustomGraphLocationLatLongRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  v3 = sub_1ABAD219C(&qword_1EB4D71F0, &qword_1ABF510C0);
  sub_1ABA96D00(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = *v0;
  v10 = v0[1];
  v18 = v0[3];
  v19 = v0[2];
  v20[0] = *(v0 + 32);
  v16 = v0[6];
  v17 = v0[5];
  v15 = *(v0 + 56);
  v11 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD0E6E0();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABD1B97C();
  if (!v1)
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAB2B48();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABD1B178();

    sub_1ABAB2B48();
    sub_1ABAA6564();
    sub_1ABD1AFA0();
  }

  v12 = *(v5 + 8);
  v13 = sub_1ABA7D0EC();
  v14(v13);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphLocationLatLongRelationship.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4D7200, &qword_1ABF510C8);
  sub_1ABA7BB64(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0E6E0();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v20)
  {
    sub_1ABA84B54(v24);
  }

  else
  {
    sub_1ABD0E3C0();
    sub_1ABD1B414();
    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    LOBYTE(v44[0]) = 1;
    sub_1ABD0ACD4();
    sub_1ABD1B014();
    sub_1ABA9FABC();
    v43 = v46;
    v42 = *(&v46 + 1);
    v57 = v47;
    sub_1ABD1B178();
    sub_1ABD1B014();
    sub_1ABA9FABC();
    v33 = *(v29 + 8);
    v34 = sub_1ABA8C53C();
    v35(v34);
    v36 = v55;
    v56 = v55;
    v44[0] = v46;
    v44[1] = v46;
    LOBYTE(v45[0]) = v47;
    *(&v45[0] + 1) = v53;
    *&v45[1] = v54;
    BYTE8(v45[1]) = v55;
    v37 = v46;
    v38 = v46;
    v39 = v45[0];
    *(v26 + 41) = *(v45 + 9);
    v26[1] = v38;
    v26[2] = v39;
    *v26 = v37;
    sub_1ABD0C408(v44, &v46);
    sub_1ABA84B54(v24);
    v46 = v43;
    v47 = v43;
    v48 = v42;
    v49 = v57;
    sub_1ABD1B884(&a15);
    v50 = v41;
    v51 = v40;
    v52 = v36;
    sub_1ABC6ABF0(&v46);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphTopicRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x138), *(_Records_GDEntityClass_records + 0x140), *(_Records_GDEntityClass_records + 0x140 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABD03DE8(uint64_t a1, uint64_t a2)
{
  EntityClass.init(intValue:)(SHIBYTE(a2), &v16);
  v2 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphTopicRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x138), *(_Records_GDEntityClass_records + 0x140), *(_Records_GDEntityClass_records + 0x140 + 8), v29);
    v7 = v30 == v4 && v5 == v31;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v29);
LABEL_9:
      sub_1ABAA8FA8(v3, v2);
      return;
    }

    *&v16 = v3;
    *(&v16 + 1) = v2;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v14 = v13;

    sub_1ABA88934(v29);
    if (v14)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x138), *(_Records_GDEntityClass_records + 0x140), *(_Records_GDEntityClass_records + 0x140 + 8), &v25);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v20 = v3;
      v21 = v2;
      v22 = v4;
      v23 = v5;
      v24 = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v16, v15);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD04078(uint64_t a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v25[7] = v3;
  v25[8] = v4;
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[204], *(_Records_GDEntityPredicate_records + 52), *(_Records_GDEntityPredicate_records + 53), v23);
  if (*&v23[0] == v7 && *(&v23[0] + 1) == v8)
  {
  }

  else
  {
    v10 = sub_1ABF25054();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    sub_1ABC4A42C(v25, *(a1 + 40));
    if (!v2)
    {
      v11 = v25[0];
      swift_beginAccess();
      sub_1ABB4DCF8();
      v12 = *(*(a2 + 16) + 16);
      sub_1ABB4E0FC(v12);
      v13 = *(a2 + 16);
      *(v13 + 16) = v12 + 1;
      *(v13 + 8 * v12 + 32) = v11;
      *(a2 + 16) = v13;
    }
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v14 = sub_1ABF237F4();
    sub_1ABA7AA24(v14, qword_1ED871B40);
    sub_1ABD1927C(a1, v23);
    v15 = sub_1ABF237D4();
    v16 = sub_1ABF24664();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136642819;
      v19 = *(a1 + 16);
      v23[0] = *a1;
      v23[1] = v19;
      v24[0] = *(a1 + 32);
      *(v24 + 9) = *(a1 + 41);
      v20 = sub_1ABF23C94();
      v22 = sub_1ABADD6D8(v20, v21, v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1ABA78000, v15, v16, "Failed to parse %{sensitive}s.", v17, 0xCu);
      sub_1ABA84B54(v18);
      MEMORY[0x1AC5AB8B0](v18, -1, -1);
      MEMORY[0x1AC5AB8B0](v17, -1, -1);
    }

    else
    {

      sub_1ABB6DBB8(a1);
    }
  }
}

void sub_1ABD04310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v45 = a3;
  v46 = *(a4 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v18 = *(v47 + 64);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = v41 - v20;
  v22 = *(v16 + 24);
  v49 = a1;
  v22(v53, a4, v16, v19);
  v41[1] = a2;
  v42 = v11;
  v43 = v14;
  v48 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v24 = v53[0];
  v23 = v53[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[204], *(_Records_GDEntityPredicate_records + 52), *(_Records_GDEntityPredicate_records + 53), &v51);
  if (v51 == v24 && v52 == v23)
  {
  }

  else
  {
    v26 = sub_1ABF25054();

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  (*(v16 + 32))(a4, v16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v51, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v47 + 8))(v21, AssociatedTypeWitness);
  if (v52)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v28 = sub_1ABF237F4();
    sub_1ABA7AA24(v28, qword_1ED871B40);
    v29 = v46;
    v30 = *(v46 + 16);
    v31 = v43;
    v30(v43, v49, a4);
    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v34 = 136642819;
      LODWORD(v47) = v33;
      v30(v42, v31, a4);
      v35 = sub_1ABF23C94();
      v37 = v36;
      (*(v29 + 8))(v31, a4);
      v38 = sub_1ABADD6D8(v35, v37, &v51);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1ABA78000, v32, v47, "Failed to parse %{sensitive}s.", v34, 0xCu);
      v39 = v49;
      sub_1ABA84B54(v49);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v31, a4);
    }
  }

  else
  {
    v40 = v48;
    TypedEntityIdentifier.init(untyped:)(&v51, v45, *(v44 + 8), &v54);
    if (!v40)
    {
      v50 = v54;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier();
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
    }
  }
}

uint64_t sub_1ABD04830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496369706F74 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD048FC(char a1)
{
  if (a1)
  {
    return 0x64496369706F74;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABD0493C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABD048FC(*v1);
}

uint64_t sub_1ABD0494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABD04830(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD0497C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD049D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD04A4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABD04B30()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v6(255);
  swift_getWitnessTable();
  sub_1ABA82858();
  v7 = sub_1ABF24EB4();
  sub_1ABA7BB64(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = v4[3];
  v12 = v4[4];
  v13 = sub_1ABA8BBFC();
  sub_1ABA93E20(v13, v14);
  sub_1ABF252C4();
  if (v0)
  {
    v18 = v4;
  }

  else
  {
    sub_1ABD0E3C0();
    sub_1ABD1AF3C();
    sub_1ABD1B7A4();
    v15 = *(v2 + 8);
    type metadata accessor for TypedEntityIdentifier();
    sub_1ABA82858();
    type metadata accessor for OneOf();
    sub_1ABA8B6EC();
    sub_1ABA8A1E0();
    swift_getWitnessTable();
    sub_1ABA9F6E4();
    swift_getWitnessTable();
    sub_1ABA8AE78();
    swift_getWitnessTable();
    sub_1ABA8B4F0();
    sub_1ABA96C48();
    sub_1ABD1B7A4();
    v16 = sub_1ABA7BFF0();
    v17(v16);
    sub_1ABD1AF54();
    v18 = v4;
    *v22 = v23;
    *(v22 + 8) = v24;
    *(v22 + 16) = v19;
    *(v22 + 24) = v20;
    *(v22 + 32) = v21;
  }

  sub_1ABA84B54(v18);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABD04D38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphTopicRelationship.init(from:)();
}

void static CustomGraphSongRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x588), *(_Records_GDEntityClass_records + 0x590), *(_Records_GDEntityClass_records + 0x598), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABD04DE4(uint64_t a1, uint64_t a2)
{
  EntityClass.init(intValue:)(SHIBYTE(a2), &v16);
  v2 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphSongRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x588), *(_Records_GDEntityClass_records + 0x590), *(_Records_GDEntityClass_records + 0x598), v29);
    v7 = v30 == v4 && v5 == v31;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v29);
LABEL_9:
      sub_1ABAA8FA8(v3, v2);
      return;
    }

    *&v16 = v3;
    *(&v16 + 1) = v2;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v14 = v13;

    sub_1ABA88934(v29);
    if (v14)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x588), *(_Records_GDEntityClass_records + 0x590), *(_Records_GDEntityClass_records + 0x598), &v25);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v20 = v3;
      v21 = v2;
      v22 = v4;
      v23 = v5;
      v24 = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v16, v15);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD05318(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v45 = a3;
  v46 = *(a4 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v18 = *(v47 + 64);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = v41 - v20;
  v22 = *(v16 + 24);
  v49 = a1;
  v22(v53, a4, v16, v19);
  v41[1] = a2;
  v42 = v11;
  v43 = v14;
  v48 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v24 = v53[0];
  v23 = v53[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1812], *(_Records_GDEntityPredicate_records + 454), *(_Records_GDEntityPredicate_records + 455), &v51);
  if (v51 == v24 && v52 == v23)
  {
  }

  else
  {
    v26 = sub_1ABF25054();

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  (*(v16 + 32))(a4, v16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v51, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v47 + 8))(v21, AssociatedTypeWitness);
  if (v52)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v28 = sub_1ABF237F4();
    sub_1ABA7AA24(v28, qword_1ED871B40);
    v29 = v46;
    v30 = *(v46 + 16);
    v31 = v43;
    v30(v43, v49, a4);
    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v34 = 136642819;
      LODWORD(v47) = v33;
      v30(v42, v31, a4);
      v35 = sub_1ABF23C94();
      v37 = v36;
      (*(v29 + 8))(v31, a4);
      v38 = sub_1ABADD6D8(v35, v37, &v51);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1ABA78000, v32, v47, "Failed to parse %{sensitive}s.", v34, 0xCu);
      v39 = v49;
      sub_1ABA84B54(v49);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v31, a4);
    }
  }

  else
  {
    v40 = v48;
    TypedEntityIdentifier.init(untyped:)(&v51, v45, *(v44 + 8), &v54);
    if (!v40)
    {
      v50 = v54;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier();
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
    }
  }
}

uint64_t sub_1ABD05840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449676E6F73 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD05908(char a1)
{
  if (a1)
  {
    return 0x6449676E6F73;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABD05944(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABD05908(*v1);
}

uint64_t sub_1ABD05954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABD05840(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD05984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD059D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD05A54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABD05B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphSongRelationship.init(from:)();
}

void static CustomGraphVisualIdentifierRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x558), *(_Records_GDEntityClass_records + 0x560), *(_Records_GDEntityClass_records + 0x568), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABD05BE4()
{
  sub_1ABA7BCA8();
  v35 = v3;
  v5 = v4;
  v7 = v6;
  sub_1ABD1BE10(v8, v9, v10, v11);
  v34 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1ABA7BB64(AssociatedTypeWitness);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7E338();
  v19 = *(v5 + 24);
  v20 = sub_1ABA9FF6C();
  v19(v20);
  v21 = sub_1ABD1BA14();
  v22(v21);
  if (v1)
  {
LABEL_10:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

  (*(v34 + 32))(v7);
  v23 = sub_1ABF240E4();
  sub_1ABD1BDC4(v23);
  while (1)
  {
    sub_1ABD1BEB4();
    if (v36 == sub_1ABF24194())
    {

      (v19)(v7, v5);
      goto LABEL_10;
    }

    sub_1ABD1BEB4();
    sub_1ABF24174();
    sub_1ABD1BC14();
    if (v0)
    {
      v24 = *(v16 + 80);
      sub_1ABD1B7FC();
      v25 = *(v16 + 72);
      v26 = *(v16 + 16);
      v27 = sub_1ABD1BEC0();
      v28(v27);
      goto LABEL_6;
    }

    sub_1ABAA030C();
    v31 = sub_1ABF24B04();
    if (v18 != 8)
    {
      break;
    }

    sub_1ABD1BAF8(v31);
    v32 = sub_1ABD1BEC0();
    v33(v32);
    swift_unknownObjectRelease();
LABEL_6:
    sub_1ABF241D4();
    v35(v2);
    v29 = sub_1ABAB6768();
    v30(v29);
  }

  __break(1u);
}

double sub_1ABD05E38@<D0>(void (*a1)(void *__return_ptr, void (*)(uint64_t a1), void, void (*)(), void *)@<X0>, void *a2@<X8>)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = v6 + 16;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;

  v9 = v38;
  a1(v37, sub_1ABD064C8, 0, sub_1ABD198A8, v8);
  if (v9)
  {
  }

  else
  {
    v36 = v6;
    v38 = v2;

    v11 = v37[0];
    v12 = v37[1];
    swift_beginAccess();
    v13 = *(v2 + 16);
    if (v13[2] || (swift_beginAccess(), *(*(v4 + 16) + 16)) || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*v7 + 16)))
    {
      v14 = sub_1ABB2B834(v13);
      v31 = v15;
      v32 = v14;
      swift_beginAccess();
      v16 = v13;
      v17 = *(v4 + 16);
      v33 = sub_1ABB2B834(v17);
      v30 = v18;
      swift_beginAccess();
      v27 = v12;
      v19 = *(v5 + 16);
      v20 = sub_1ABB2B834(v19);
      v28 = v21;
      v29 = v20;
      swift_beginAccess();
      v22 = *(v36 + 16);
      v23 = sub_1ABB2B834(v22);
      v25 = v24;
      v26 = v23;

      *a2 = v11;
      a2[1] = v27;
      a2[2] = v16;
      a2[3] = v32;
      a2[4] = v31;
      a2[5] = v17;
      a2[6] = v33;
      a2[7] = v30;
      a2[8] = v19;
      a2[9] = v29;
      a2[10] = v28;
      a2[11] = v22;
      a2[12] = v26;
      a2[13] = v25;
    }

    else
    {

      result = 0.0;
      *(a2 + 5) = 0u;
      *(a2 + 6) = 0u;
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
    }
  }

  return result;
}

void sub_1ABD061B0(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, __n128 *a4@<X8>)
{
  sub_1ABA7D028();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_1ABA7D028();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1ABA7D028();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  sub_1ABA807B4();
  v9 = swift_allocObject();
  v10 = v8;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v4;
  v9[5] = v6;
  v9[6] = v7;
  v9[7] = v8;

  sub_1ABD1B678();
  a1();
  if (v35)
  {
  }

  else
  {

    sub_1ABD1B1F4();
    sub_1ABD1BFD0();
    if (v11 || (sub_1ABAAA634(), sub_1ABD1B9FC(), v12) || (sub_1ABD1B0E8(), *(*(v7 + 16) + 16)) || (sub_1ABD1B03C(), *(*(v8 + 16) + 16)))
    {
      v13 = sub_1ABB2B834((v4 + 16));
      v32 = v14;
      v33 = v13;
      sub_1ABAAA634();
      v15 = v4 + 16;
      v16 = *(v6 + 16);
      v17 = sub_1ABB2B834(v16);
      v28 = v18;
      v29 = v17;
      sub_1ABD1B0E8();
      v19 = *(v7 + 16);
      v20 = sub_1ABB2B834(v19);
      v26 = v21;
      v27 = v20;
      sub_1ABD1B03C();
      v22 = *(v10 + 16);
      v23 = sub_1ABB2B834(v22);
      v25 = v24;

      a4->n128_u64[0] = v36;
      a4->n128_u64[1] = v37;
      a4[1].n128_u64[0] = v15;
      a4[1].n128_u64[1] = v33;
      a4[2].n128_u64[0] = v32;
      a4[2].n128_u64[1] = v16;
      a4[3].n128_u64[0] = v29;
      a4[3].n128_u64[1] = v28;
      a4[4].n128_u64[0] = v19;
      a4[4].n128_u64[1] = v27;
      a4[5].n128_u64[0] = v26;
      a4[5].n128_u64[1] = v22;
      a4[6].n128_u64[0] = v23;
      a4[6].n128_u64[1] = v25;
    }

    else
    {

      a4[5] = 0u;
      a4[6] = 0u;
      a4[3] = 0u;
      a4[4] = 0u;
      sub_1ABD1BA2C(a4, 0);
    }
  }
}

void sub_1ABD064C8(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphVisualIdentifierRelationship init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x558), *(_Records_GDEntityClass_records + 0x560), *(_Records_GDEntityClass_records + 0x568), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x558), *(_Records_GDEntityClass_records + 0x560), *(_Records_GDEntityClass_records + 0x568), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD06760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_50;
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1560], *(_Records_GDEntityPredicate_records + 391), *(_Records_GDEntityPredicate_records + 392), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {

    goto LABEL_27;
  }

  v45 = a5;
  v12 = sub_1ABF25054();

  if (v12)
  {
LABEL_27:
    if (*(a1 + 56))
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v19 = sub_1ABF237F4();
      sub_1ABA7AA24(v19, qword_1ED871B40);
      sub_1ABD1927C(a1, v47);
      v20 = sub_1ABF237D4();
      v21 = sub_1ABF24664();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_39;
      }

LABEL_31:
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136642819;
      v24 = *(a1 + 16);
      v47[0] = *a1;
      v47[1] = v24;
      v48[0] = *(a1 + 32);
      *(v48 + 9) = *(a1 + 41);
      v25 = sub_1ABF23C94();
      v27 = sub_1ABADD6D8(v25, v26, &v49);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1ABA78000, v20, v21, "Failed to parse %{sensitive}s.", v22, 0xCu);
      sub_1ABA84B54(v23);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
      MEMORY[0x1AC5AB8B0](v22, -1, -1);

      return;
    }

    v29 = *(a1 + 40);
    v28 = *(a1 + 48);
    swift_beginAccess();

    sub_1ABB4DC20();
    v30 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v30);
    v31 = *(a2 + 16);
    *(v31 + 16) = v30 + 1;
    v32 = v31 + 16 * v30;
    *(v32 + 32) = v29;
    *(v32 + 40) = v28;
    *(a2 + 16) = v31;
    goto LABEL_33;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2424], *(_Records_GDEntityPredicate_records + 607), *(_Records_GDEntityPredicate_records + 608), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {

    goto LABEL_35;
  }

  v14 = sub_1ABF25054();

  if (v14)
  {
LABEL_35:
    if (*(a1 + 56))
    {
      goto LABEL_36;
    }

    v35 = *(a1 + 40);
    v34 = *(a1 + 48);
    swift_beginAccess();

    sub_1ABB4DC20();
    v36 = *(*(a3 + 16) + 16);
    sub_1ABB4E024(v36);
    v37 = *(a3 + 16);
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    *(v38 + 32) = v35;
    *(v38 + 40) = v34;
    *(a3 + 16) = v37;
LABEL_33:
    swift_endAccess();
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2448], *(_Records_GDEntityPredicate_records + 613), *(_Records_GDEntityPredicate_records + 614), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {

LABEL_43:
    if ((*(a1 + 56) & 1) == 0)
    {
      v40 = *(a1 + 40);
      v39 = *(a1 + 48);
      v41 = a4;
LABEL_45:
      swift_beginAccess();

      sub_1ABB4DC20();
      v42 = *(*(v41 + 16) + 16);
      sub_1ABB4E024(v42);
      v43 = *(v41 + 16);
      *(v43 + 16) = v42 + 1;
      v44 = v43 + 16 * v42;
      *(v44 + 32) = v40;
      *(v44 + 40) = v39;
      *(v41 + 16) = v43;
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v16 = sub_1ABF25054();

  if (v16)
  {
    goto LABEL_43;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_52:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2748], *(_Records_GDEntityPredicate_records + 688), *(_Records_GDEntityPredicate_records + 689), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {
  }

  else
  {
    v18 = sub_1ABF25054();

    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v40 = *(a1 + 40);
    v39 = *(a1 + 48);
    v41 = v45;
    goto LABEL_45;
  }

LABEL_36:
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v33 = sub_1ABF237F4();
  sub_1ABA7AA24(v33, qword_1ED871B40);
  sub_1ABD1927C(a1, v47);
  v20 = sub_1ABF237D4();
  v21 = sub_1ABF24664();
  if (os_log_type_enabled(v20, v21))
  {
    goto LABEL_31;
  }

LABEL_39:

  sub_1ABB6DBB8(a1);
}

void sub_1ABD06CD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99[3] = a5;
  v102 = a4;
  v105 = a3;
  v110 = *(a6 - 8);
  v10 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v99[2] = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = v99 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v104 = v99 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v99 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v108 = v99 - v20;
  v22 = *(v21 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  v24 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v103 = v99 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v107 = v99 - v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v99 - v32;
  v34 = *(v22 + 24);
  v118 = a1;
  v114 = a6;
  v34(v117, a6, v22, v31);
  v109 = a2;
  v112 = AssociatedTypeWitness;
  v106 = v18;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v35 = v117[0];
  v36 = v117[1];
  v37 = v117[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1560], *(_Records_GDEntityPredicate_records + 391), *(_Records_GDEntityPredicate_records + 392), &v115);
  if (v115 == v35 && v116 == v36)
  {

    v40 = v6;
    goto LABEL_9;
  }

  v99[1] = v37;
  v111 = v6;
  v39 = sub_1ABF25054();

  if (v39)
  {
    v40 = v111;
LABEL_9:

    v41 = v118;
    v42 = v114;
    (*(v22 + 32))(v114, v22);
    v43 = v42;
    v44 = v112;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = (*(AssociatedConformanceWitness + 24))(v44, AssociatedConformanceWitness);
    v48 = v47;
    (*(v113 + 8))(v33, v44);
    if (v48)
    {
      v49 = v109;
      swift_beginAccess();
      sub_1ABB4DC20();
      v50 = *(*(v49 + 16) + 16);
      sub_1ABB4E024(v50);
      v51 = *(v49 + 16);
      *(v51 + 16) = v50 + 1;
      v52 = v51 + 16 * v50;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
      *(v49 + 16) = v51;
LABEL_41:
      swift_endAccess();
      return;
    }

    v111 = v40;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v53 = sub_1ABF237F4();
    sub_1ABA7AA24(v53, qword_1ED871B40);
    v54 = v110;
    v55 = *(v110 + 16);
    v56 = v108;
    v55(v108, v41, v43);
    v57 = sub_1ABF237D4();
    v58 = sub_1ABF24664();
    if (!os_log_type_enabled(v57, v58))
    {

      (*(v54 + 8))(v56, v43);
      return;
    }

    v59 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v115 = v118;
    *v59 = 136642819;
    v55(v106, v56, v43);
    v60 = sub_1ABF23C94();
    v62 = v61;
    (*(v54 + 8))(v56, v43);
    goto LABEL_48;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_65;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2424], *(_Records_GDEntityPredicate_records + 607), *(_Records_GDEntityPredicate_records + 608), &v115);
  v63 = v115 == v35 && v116 == v36;
  v64 = v110;
  if (v63)
  {

LABEL_24:

    v66 = v107;
    v67 = v114;
    (*(v22 + 32))(v114, v22);
    v68 = v112;
    v69 = swift_getAssociatedConformanceWitness();
    v70 = (*(v69 + 24))(v68, v69);
    v72 = v71;
    (*(v113 + 8))(v66, v68);
    if (v72)
    {
      v73 = v105;
LABEL_40:
      swift_beginAccess();
      sub_1ABB4DC20();
      v84 = *(*(v73 + 16) + 16);
      sub_1ABB4E024(v84);
      v85 = *(v73 + 16);
      *(v85 + 16) = v84 + 1;
      v86 = v85 + 16 * v84;
      *(v86 + 32) = v70;
      *(v86 + 40) = v72;
      *(v73 + 16) = v85;
      goto LABEL_41;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v74 = sub_1ABF237F4();
    sub_1ABA7AA24(v74, qword_1ED871B40);
    v75 = *(v64 + 16);
    v76 = v104;
    v75(v104, v118, v67);
    goto LABEL_46;
  }

  v65 = sub_1ABF25054();

  if (v65)
  {
    goto LABEL_24;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_66;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2448], *(_Records_GDEntityPredicate_records + 613), *(_Records_GDEntityPredicate_records + 614), &v115);
  if (v115 == v35 && v116 == v36)
  {

LABEL_37:

    v79 = v103;
    v67 = v114;
    (*(v22 + 32))(v114, v22);
    v80 = v112;
    v81 = swift_getAssociatedConformanceWitness();
    v70 = (*(v81 + 24))(v80, v81);
    v72 = v82;
    (*(v113 + 8))(v79, v80);
    if (v72)
    {
      v83 = &v122;
LABEL_39:
      v73 = *(v83 - 32);
      goto LABEL_40;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v87 = sub_1ABF237F4();
    sub_1ABA7AA24(v87, qword_1ED871B40);
    v75 = *(v64 + 16);
    v88 = &v121;
    goto LABEL_45;
  }

  v78 = sub_1ABF25054();

  if (v78)
  {
    goto LABEL_37;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_67:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2748], *(_Records_GDEntityPredicate_records + 688), *(_Records_GDEntityPredicate_records + 689), &v115);
  if (v115 == v35 && v116 == v36)
  {
  }

  else
  {
    v93 = sub_1ABF25054();

    if ((v93 & 1) == 0)
    {
      return;
    }
  }

  v94 = v100;
  v67 = v114;
  (*(v22 + 32))(v114, v22);
  v95 = v112;
  v96 = swift_getAssociatedConformanceWitness();
  v70 = (*(v96 + 24))(v95, v96);
  v72 = v97;
  (*(v113 + 8))(v94, v95);
  if (v72)
  {
    v83 = &v120;
    goto LABEL_39;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v98 = sub_1ABF237F4();
  sub_1ABA7AA24(v98, qword_1ED871B40);
  v75 = *(v64 + 16);
  v88 = &v119;
LABEL_45:
  v76 = *(v88 - 32);
  v75(v76, v118, v67);
LABEL_46:
  v57 = sub_1ABF237D4();
  v58 = sub_1ABF24664();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v115 = v118;
    *v59 = 136642819;
    v75(v106, v76, v67);
    v60 = sub_1ABF23C94();
    v62 = v89;
    (*(v64 + 8))(v76, v67);
LABEL_48:
    v90 = sub_1ABADD6D8(v60, v62, &v115);

    *(v59 + 4) = v90;
    _os_log_impl(&dword_1ABA78000, v57, v58, "Failed to parse %{sensitive}s.", v59, 0xCu);
    v91 = v118;
    sub_1ABA84B54(v118);
    MEMORY[0x1AC5AB8B0](v91, -1, -1);
    MEMORY[0x1AC5AB8B0](v59, -1, -1);

    return;
  }

  (*(v64 + 8))(v76, v67);
}

uint64_t CustomGraphVisualIdentifierRelationship.init(subentityId:all_visualIdentifier:all_associationReason:all_suggestedName:all_suggestedRelationshipToDeviceOwner:)()
{
  sub_1ABA9FE20();
  v8 = sub_1ABD1B584(v5, v6, v7);
  v4[2] = v3;
  v4[3] = v8;
  v4[4] = v9;
  v10 = sub_1ABB2B834(v2);
  v4[5] = v2;
  v4[6] = v10;
  v4[7] = v11;
  v12 = sub_1ABB2B834(v1);
  v4[8] = v1;
  v4[9] = v12;
  v4[10] = v13;
  result = sub_1ABB2B834(v0);
  v4[11] = v0;
  v4[12] = result;
  v4[13] = v15;
  return result;
}

uint64_t sub_1ABD0795C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001ABF86E60 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001ABF8D780 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574736567677573 && a2 == 0xED0000656D614E64;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000022 && 0x80000001ABF8D7A0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1ABD07B10(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6574736567677573;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}