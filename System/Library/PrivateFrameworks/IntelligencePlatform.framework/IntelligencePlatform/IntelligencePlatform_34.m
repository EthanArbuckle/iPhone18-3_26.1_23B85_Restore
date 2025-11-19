uint64_t sub_1ABD07BD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABD07C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD0795C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD07C50(uint64_t a1)
{
  v2 = sub_1ABD0E764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD07C8C(uint64_t a1)
{
  v2 = sub_1ABD0E764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABD07CF0@<D0>(__n128 *a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  *&result = _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0(a1).n128_u64[0];
  return result;
}

void CustomGraphVisualIdentifierRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D7208, &qword_1ABF510D0);
  sub_1ABA96D00(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA9F7AC();
  v12 = *v1;
  v13 = v1[1];
  sub_1ABD1B2D8();
  sub_1ABD1BF50();
  v19 = v1[10];
  v16 = v1[11];
  v17 = v1[12];
  v18 = v1[13];
  v14 = v5[3];
  v15 = v5[4];
  sub_1ABA8A074(v5);
  sub_1ABD0E764();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABF24F84();
  if (!v2)
  {
    sub_1ABD1AC6C(v21, v20);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA80C2C();
    sub_1ABA9E3E8();
    sub_1ABF24F84();
    if (!v22)
    {
      sub_1ABAA1210();

      sub_1ABD1B178();

      sub_1ABD1ABF4();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
      sub_1ABAA1210();

      sub_1ABAB5EC8();
      sub_1ABD1AF94();

      sub_1ABD1ABF4();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
      sub_1ABD1AFA0();

      sub_1ABA8B908();

      sub_1ABD1ABF4();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
    }

    sub_1ABAA1210();
  }

  (*(v8 + 8))(v3, v0);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphVisualIdentifierRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D7218, &qword_1ABF510D8);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8176C();
  v9 = v2[3];
  v10 = v2[4];
  v11 = sub_1ABA954F0();
  sub_1ABA88DCC(v11, v12);
  sub_1ABD0E764();
  sub_1ABD1B684();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABAB5E80();
    sub_1ABA84B54(v2);
    if (v9)
    {

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  sub_1ABD0E3C0();
  v13 = v5;
  sub_1ABA827AC();
  sub_1ABD1B51C();
  v28 = v31;
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABD0A2D4();
  sub_1ABA9F8E0();
  sub_1ABD1B51C();
  v25 = v32;
  v26 = v31;
  v27 = v33;
  sub_1ABA9F8E0();
  sub_1ABD1B51C();
  v23 = v33;
  v24 = v31;
  LOBYTE(v30[0]) = 3;
  sub_1ABA9F8E0();
  sub_1ABD1B51C();
  v20 = v32;
  v21 = v32;
  v14 = v32;
  v22 = v31;
  v15 = v33;
  sub_1ABA8B908();
  sub_1ABD1B66C();
  sub_1ABD1B51C();
  v16 = sub_1ABA9F1EC();
  v17(v16, v13);
  v29 = v45;
  v18 = v47;
  v19 = v46;
  v30[0] = v28;
  v30[1] = v25;
  v30[2] = v26;
  v30[3] = v21;
  v30[4] = v27;
  v30[5] = v24;
  v30[6] = v20;
  v30[7] = v23;
  v30[8] = v22;
  v30[9] = v14;
  v30[10] = v15;
  v30[11] = v45;
  v30[12] = v46;
  v30[13] = v47;
  memcpy(v4, v30, 0x70uLL);
  sub_1ABD0E7B8(v30, &v31);
  sub_1ABA84B54(v2);
  v31 = v28;
  v32 = v25;
  v33 = v26;
  v34 = v21;
  v35 = v27;
  v36 = v24;
  v37 = v20;
  v38 = v23;
  v39 = v22;
  v40 = v14;
  v41 = v15;
  v42 = v29;
  v43 = v19;
  v44 = v18;
  sub_1ABD0E7F0(&v31);
LABEL_8:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphSoftwareRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5B8), *(_Records_GDEntityClass_records + 0x5C0), *(_Records_GDEntityClass_records + 0x5C8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABD08410@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, uint64_t (*a2)(_OWORD *)@<X2>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  v20[0] = *a3;
  result = a1(v20);
  if (!v4)
  {
    v9 = *(a3 + 16);
    v10 = *(v9 + 16);
    for (i = (v9 + 32); v10; --v10)
    {
      v12 = *i;
      v13 = i[1];
      v14 = i[2];
      *&v21[9] = *(i + 41);
      v20[1] = v13;
      *v21 = v14;
      v20[0] = v12;
      v15 = i[1];
      v18[0] = *i;
      v18[1] = v15;
      v19[0] = i[2];
      *(v19 + 9) = *(i + 41);
      sub_1ABD1927C(v20, &v17);
      v16 = a2(v18);
      result = sub_1ABD1B5AC(v16);
      i += 4;
    }

    *a4 = *a3;
  }

  return result;
}

void sub_1ABD08514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7BCA8();
  v52 = v23;
  v25 = v24;
  sub_1ABD1BE10(v26, v27, v28, v29);
  v51 = *(a21 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1ABA7BB64(AssociatedTypeWitness);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7E5C0();
  v36 = *(a21 + 24);
  v36(&v53, v25, a21);
  v37 = sub_1ABD1BA14();
  v38(v37);
  if (v22)
  {
LABEL_10:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

  v50 = v35;
  v39 = (*(v51 + 32))(v25);
  v40 = sub_1ABF240E4();
  sub_1ABD1BDC4(v40);
  v41 = a21;
  while (1)
  {
    v42 = sub_1ABF24194();
    v43 = v53;
    if (v53 == v42)
    {

      (v36)(v25, v41);
      goto LABEL_10;
    }

    v44 = v41;
    v45 = sub_1ABF24174();
    sub_1ABF24124();
    if (v45)
    {
      (*(v33 + 16))(v21, v39 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v43, AssociatedTypeWitness);
      goto LABEL_6;
    }

    sub_1ABA7ABE4();
    v48 = sub_1ABF24B04();
    if (v50 != 8)
    {
      break;
    }

    sub_1ABD1BAF8(v48);
    v49(v21);
    swift_unknownObjectRelease();
LABEL_6:
    v41 = v44;
    sub_1ABF241D4();
    v52(v21);
    v46 = sub_1ABD1BFA8();
    v47(v46);
  }

  __break(1u);
}

double sub_1ABD08790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABD1B3D0();
  sub_1ABA7D028();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];

  v7(v16, a4, 0, a5, v10);

  if (v6)
  {
  }

  else
  {
    v12 = v16[0];
    v13 = v16[1];
    sub_1ABD1B0E8();
    sub_1ABD1BE24();
    if (v14)
    {
      v15 = *(v10 + 48);

      *v5 = v12;
      *(v5 + 8) = v13;
      *(v5 + 16) = v10 + 16;
      *(v5 + 24) = v15;
      *(v5 + 32) = 0;
    }

    else
    {

      *(v5 + 32) = 0;
      result = 0.0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
    }
  }

  return result;
}

void sub_1ABD08894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_1ABD1C088();
  a33 = v37;
  a34 = v38;
  a24 = v36;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v65 = v47;
  v61 = v48;
  v63 = a35;
  v64 = a36;
  sub_1ABA7D028();
  v49 = swift_allocObject();
  v50 = *(v42 + 8);
  v62 = type metadata accessor for TypedEntityIdentifier();
  *(v49 + 16) = sub_1ABF24154();
  sub_1ABAA267C();
  v51 = swift_allocObject();
  v51[2] = v46;
  v51[3] = v44;
  v51[4] = v42;
  v51[5] = v40;
  sub_1ABAB10A4();
  v52 = swift_allocObject();
  v52[2] = v46;
  v52[3] = v44;
  v52[4] = v42;
  v52[5] = v40;
  v52[6] = v49;

  v53 = a24;
  v65(&a20, v63, v51, v64, v52);
  if (v53)
  {
  }

  else
  {

    v55 = a20;
    v54 = a21;
    sub_1ABAAA634();
    a17 = *(v49 + 16);
    sub_1ABF241F4();
    sub_1ABA887D0();
    if (sub_1ABF24574())
    {

      *(v61 + 32) = 0;
      *v61 = 0u;
      *(v61 + 16) = 0u;
    }

    else
    {
      v56 = *(v49 + 16);
      a15 = 0;
      a16 = 1;

      OneOf.init(_:potentiallyPreferred:)(v57, &a15, v62, &a17);

      v58 = a17;
      v59 = a18;
      v60 = a19;
      *v61 = v55;
      *(v61 + 8) = v54;
      *(v61 + 16) = v58;
      *(v61 + 24) = v59;
      *(v61 + 32) = v60;
    }
  }

  sub_1ABD1C06C();
}

void sub_1ABD08A58(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphSoftwareRelationship init", v11, 2u);
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
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5B8), *(_Records_GDEntityClass_records + 0x5C0), *(_Records_GDEntityClass_records + 0x5C8), v29);
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
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5B8), *(_Records_GDEntityClass_records + 0x5C0), *(_Records_GDEntityClass_records + 0x5C8), &v25);
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

uint64_t sub_1ABD08CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t), uint64_t a7)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v34);
  v11 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v29 = v37;
    v15 = a6(0, a2, a4);
    static GraphObjectBase.entityClass.getter(v15, a7);
    v16 = v45 == v13 && v14 == v46;
    if (v16 || (sub_1ABAB603C(), (sub_1ABF25054() & 1) != 0))
    {
      sub_1ABA88934(v44);
LABEL_8:
      v17 = sub_1ABD1AEFC();
      return sub_1ABAA8FA8(v17, v18);
    }

    *&v34 = v12;
    *(&v34 + 1) = v11;
    v35 = v13;
    v36 = v14;
    v37 = v29;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v27 = v26;

    sub_1ABA88934(v44);
    if (v27)
    {
      goto LABEL_8;
    }

    static GraphObjectBase.entityClass.getter(v15, a7);
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    *v38 = *v47;
    *&v38[3] = *&v47[3];
    v39 = v12;
    v40 = v11;
    v41 = v13;
    v42 = v14;
    v43 = v29;
    sub_1ABC7B1C0();
    sub_1ABA7BD00();
    sub_1ABC81B08(&v34, v28);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v20 = sub_1ABF237F4();
    sub_1ABAA2318(v20, qword_1ED871B40);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24674();
    if (sub_1ABA9E624(v22))
    {
      v23 = sub_1ABA88598();
      sub_1ABA96044(v23);
      sub_1ABD1B2B4(&dword_1ABA78000);
      sub_1ABA90C1C();
    }

    sub_1ABB6DA08();
    v24 = sub_1ABA7BD00();
    sub_1ABA8A3DC(v24, v25);
  }

  return swift_willThrow();
}

void sub_1ABD091A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1764], *(_Records_GDEntityPredicate_records + 442), *(_Records_GDEntityPredicate_records + 443), &v51);
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

uint64_t _s20IntelligencePlatform27CustomGraphSongRelationshipV11subentityId08all_songH0ACyxGAA19SubentityIdentifierV_SayAA011TypedEntityL0VyxGGtcfC_0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  v11 = 0;
  v12 = 1;
  v6 = *(a3 + 8);
  v7 = type metadata accessor for TypedEntityIdentifier();
  result = OneOf.init(_:potentiallyPreferred:)(a2, &v11, v7, v13);
  v9 = v13[1];
  v10 = v14;
  *(a4 + 16) = v13[0];
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  return result;
}

uint64_t sub_1ABD09744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEA00000000006449)
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

uint64_t sub_1ABD09818(char a1)
{
  if (a1)
  {
    return 0x6572617774666F73;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABD0985C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1ABF25234();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1ABF25294();
}

uint64_t sub_1ABD098B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABD09818(*v1);
}

uint64_t sub_1ABD098C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABD09744(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD09924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD09978(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD099F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABD09A98()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v6 = v5;
  v19 = *(v7 + 24);
  v8(255, *(v7 + 16));
  swift_getWitnessTable();
  v9 = sub_1ABF24FC4();
  sub_1ABA96D00(v9);
  v21 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA8176C();
  v14 = *v0;
  v20 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v22 = *(v0 + 32);
  v15 = v6[4];
  sub_1ABA88DCC(v6, v6[3]);
  sub_1ABA96C48();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABA8B6EC();
    v16 = *(v19 + 8);
    type metadata accessor for TypedEntityIdentifier();
    sub_1ABA82858();
    type metadata accessor for OneOf();
    sub_1ABD1BA80();

    sub_1ABA8A1E0();
    swift_getWitnessTable();
    sub_1ABA9F6E4();
    swift_getWitnessTable();
    sub_1ABA9F2E0();
    swift_getWitnessTable();
    sub_1ABAB56F0();
    sub_1ABA81934();
    sub_1ABF24F84();
    sub_1ABD1AFA0();
  }

  (*(v21 + 8))(v2, v4);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void sub_1ABD09CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CustomGraphSoftwareRelationship.init(from:)();
}

unint64_t sub_1ABD09D0C()
{
  result = qword_1EB4D6588;
  if (!qword_1EB4D6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6588);
  }

  return result;
}

unint64_t sub_1ABD09D60()
{
  result = qword_1EB4D65A8;
  if (!qword_1EB4D65A8)
  {
    sub_1ABAE2850(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65A8);
  }

  return result;
}

unint64_t sub_1ABD09DE4()
{
  result = qword_1EB4D65B0;
  if (!qword_1EB4D65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65B0);
  }

  return result;
}

unint64_t sub_1ABD09E38()
{
  result = qword_1EB4D65C0;
  if (!qword_1EB4D65C0)
  {
    sub_1ABAE2850(&qword_1EB4D65B8, &qword_1ABF50B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65C0);
  }

  return result;
}

unint64_t sub_1ABD09EBC(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABD09F00()
{
  result = qword_1EB4D65E8;
  if (!qword_1EB4D65E8)
  {
    sub_1ABAE2850(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD1044C(&unk_1EB4D65F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65E8);
  }

  return result;
}

unint64_t sub_1ABD09FB0()
{
  result = qword_1EB4D6600;
  if (!qword_1EB4D6600)
  {
    sub_1ABAE2850(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABD1044C(&unk_1EB4D6608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6600);
  }

  return result;
}

unint64_t sub_1ABD0A060()
{
  result = qword_1EB4D6618;
  if (!qword_1EB4D6618)
  {
    sub_1ABAE2850(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1044C(&unk_1EB4D6620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6618);
  }

  return result;
}

unint64_t sub_1ABD0A110()
{
  result = qword_1EB4D6630;
  if (!qword_1EB4D6630)
  {
    sub_1ABAE2850(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1044C(&unk_1EB4D6638);
    sub_1ABD1044C(&unk_1EB4D6648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6630);
  }

  return result;
}

unint64_t sub_1ABD0A1FC()
{
  result = qword_1EB4D6660;
  if (!qword_1EB4D6660)
  {
    sub_1ABAE2850(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD0A280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6660);
  }

  return result;
}

unint64_t sub_1ABD0A280()
{
  result = qword_1EB4D6668;
  if (!qword_1EB4D6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6668);
  }

  return result;
}

unint64_t sub_1ABD0A2D4()
{
  result = qword_1EB4D6670;
  if (!qword_1EB4D6670)
  {
    sub_1ABAE2850(&qword_1EB4D65B8, &qword_1ABF50B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6670);
  }

  return result;
}

unint64_t sub_1ABD0A358(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABD09EBC(&unk_1EB4D65D0);
    sub_1ABA8B588();
    sub_1ABD09EBC(v3);
    result = sub_1ABD1C0A4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABD0A408()
{
  result = qword_1EB4D6680;
  if (!qword_1EB4D6680)
  {
    sub_1ABAE2850(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD1044C(&unk_1EB4D6688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6680);
  }

  return result;
}

unint64_t sub_1ABD0A4B8()
{
  result = qword_1EB4D6690;
  if (!qword_1EB4D6690)
  {
    sub_1ABAE2850(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABD1044C(&unk_1EB4D6698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6690);
  }

  return result;
}

unint64_t sub_1ABD0A568()
{
  result = qword_1EB4D66A0;
  if (!qword_1EB4D66A0)
  {
    sub_1ABAE2850(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1044C(&unk_1EB4D66A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66A0);
  }

  return result;
}

unint64_t sub_1ABD0A618()
{
  result = qword_1EB4D66B0;
  if (!qword_1EB4D66B0)
  {
    sub_1ABAE2850(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1044C(&unk_1EB4D6638);
    sub_1ABD1044C(&unk_1EB4D6648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66B0);
  }

  return result;
}

unint64_t sub_1ABD0A704()
{
  result = qword_1EB4D66C0;
  if (!qword_1EB4D66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66C0);
  }

  return result;
}

unint64_t sub_1ABD0A758()
{
  result = qword_1EB4D66E0;
  if (!qword_1EB4D66E0)
  {
    sub_1ABAE2850(&qword_1EB4D66D8, &qword_1ABF50BA8);
    sub_1ABD1044C(&unk_1EB4D66E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66E0);
  }

  return result;
}

unint64_t sub_1ABD0A808()
{
  result = qword_1EB4D66F8;
  if (!qword_1EB4D66F8)
  {
    sub_1ABAE2850(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD1044C(&unk_1EB4D6700);
    sub_1ABD1044C(&unk_1EB4D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66F8);
  }

  return result;
}

unint64_t sub_1ABD0A8F4()
{
  result = qword_1EB4D6720;
  if (!qword_1EB4D6720)
  {
    sub_1ABAE2850(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A980();
    sub_1ABD0A9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6720);
  }

  return result;
}

unint64_t sub_1ABD0A980()
{
  result = qword_1EB4D6728;
  if (!qword_1EB4D6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6728);
  }

  return result;
}

unint64_t sub_1ABD0A9D4()
{
  result = qword_1EB4D6730;
  if (!qword_1EB4D6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6730);
  }

  return result;
}

unint64_t sub_1ABD0AA28()
{
  result = qword_1EB4D6740;
  if (!qword_1EB4D6740)
  {
    sub_1ABAE2850(&qword_1EB4D6738, &dword_1ABF50BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6740);
  }

  return result;
}

unint64_t sub_1ABD0AAAC()
{
  result = qword_1EB4D6758;
  if (!qword_1EB4D6758)
  {
    sub_1ABAE2850(&qword_1EB4D66D8, &qword_1ABF50BA8);
    sub_1ABD1044C(&unk_1EB4D6760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6758);
  }

  return result;
}

unint64_t sub_1ABD0AB5C()
{
  result = qword_1EB4D6768;
  if (!qword_1EB4D6768)
  {
    sub_1ABAE2850(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD1044C(&unk_1EB4D6700);
    sub_1ABD1044C(&unk_1EB4D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6768);
  }

  return result;
}

unint64_t sub_1ABD0AC48()
{
  result = qword_1EB4D6770;
  if (!qword_1EB4D6770)
  {
    sub_1ABAE2850(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A980();
    sub_1ABD0A9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6770);
  }

  return result;
}

unint64_t sub_1ABD0ACD4()
{
  result = qword_1EB4D6778;
  if (!qword_1EB4D6778)
  {
    sub_1ABAE2850(&qword_1EB4D6738, &dword_1ABF50BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6778);
  }

  return result;
}

uint64_t sub_1ABD0AD58()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

uint64_t sub_1ABD0ADB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1ABD0AE08()
{
  result = qword_1EB4D6788;
  if (!qword_1EB4D6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6788);
  }

  return result;
}

unint64_t sub_1ABD0AE5C()
{
  result = qword_1EB4D67A8;
  if (!qword_1EB4D67A8)
  {
    sub_1ABAE2850(&qword_1EB4D67A0, &unk_1ABF50BF0);
    sub_1ABD1044C(&unk_1EB4D67B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D67A8);
  }

  return result;
}

unint64_t sub_1ABD0AF0C()
{
  result = qword_1EB4D67C8;
  if (!qword_1EB4D67C8)
  {
    sub_1ABAE2850(&qword_1EB4D67A0, &unk_1ABF50BF0);
    sub_1ABD1044C(&unk_1EB4D67D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D67C8);
  }

  return result;
}

unint64_t sub_1ABD0AFBC()
{
  result = qword_1EB4D67E0;
  if (!qword_1EB4D67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D67E0);
  }

  return result;
}

unint64_t sub_1ABD0B010()
{
  result = qword_1EB4D6800;
  if (!qword_1EB4D6800)
  {
    sub_1ABAE2850(&qword_1EB4D67F8, &qword_1ABF50C18);
    sub_1ABD1044C(&unk_1EB4D6808);
    sub_1ABD1044C(&unk_1EB4D6818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6800);
  }

  return result;
}

unint64_t sub_1ABD0B0FC()
{
  result = qword_1EB4D6828;
  if (!qword_1EB4D6828)
  {
    sub_1ABAE2850(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABD0B188();
    sub_1ABD0B1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6828);
  }

  return result;
}

unint64_t sub_1ABD0B188()
{
  result = qword_1EB4D6830;
  if (!qword_1EB4D6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6830);
  }

  return result;
}

unint64_t sub_1ABD0B1DC()
{
  result = qword_1EB4D6838;
  if (!qword_1EB4D6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6838);
  }

  return result;
}

unint64_t sub_1ABD0B230()
{
  result = qword_1EB4D6850;
  if (!qword_1EB4D6850)
  {
    sub_1ABAE2850(&qword_1EB4D67F8, &qword_1ABF50C18);
    sub_1ABD1044C(&unk_1EB4D6808);
    sub_1ABD1044C(&unk_1EB4D6818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6850);
  }

  return result;
}

unint64_t sub_1ABD0B31C()
{
  result = qword_1EB4D6858;
  if (!qword_1EB4D6858)
  {
    sub_1ABAE2850(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABD0B188();
    sub_1ABD0B1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6858);
  }

  return result;
}

unint64_t sub_1ABD0B3A8()
{
  result = qword_1EB4D6868;
  if (!qword_1EB4D6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6868);
  }

  return result;
}

unint64_t sub_1ABD0B3FC()
{
  result = qword_1EB4D6898;
  if (!qword_1EB4D6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6898);
  }

  return result;
}

unint64_t sub_1ABD0B450()
{
  result = qword_1EB4D68C8;
  if (!qword_1EB4D68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D68C8);
  }

  return result;
}

unint64_t sub_1ABD0B4A4()
{
  result = qword_1EB4D68F8;
  if (!qword_1EB4D68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D68F8);
  }

  return result;
}

unint64_t sub_1ABD0B4F8()
{
  result = qword_1EB4D6928;
  if (!qword_1EB4D6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6928);
  }

  return result;
}

unint64_t sub_1ABD0B54C()
{
  result = qword_1EB4D6958;
  if (!qword_1EB4D6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6958);
  }

  return result;
}

unint64_t sub_1ABD0B5A0()
{
  result = qword_1EB4D6988;
  if (!qword_1EB4D6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6988);
  }

  return result;
}

unint64_t sub_1ABD0B5F4()
{
  result = qword_1EB4D69B8;
  if (!qword_1EB4D69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D69B8);
  }

  return result;
}

unint64_t sub_1ABD0B648()
{
  result = qword_1EB4D69E8;
  if (!qword_1EB4D69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D69E8);
  }

  return result;
}

unint64_t sub_1ABD0B69C()
{
  result = qword_1EB4D6A18;
  if (!qword_1EB4D6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A18);
  }

  return result;
}

unint64_t sub_1ABD0B6F0()
{
  result = qword_1EB4D6A48;
  if (!qword_1EB4D6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A48);
  }

  return result;
}

unint64_t sub_1ABD0B744()
{
  result = qword_1EB4D6A78;
  if (!qword_1EB4D6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A78);
  }

  return result;
}

unint64_t sub_1ABD0B798()
{
  result = qword_1EB4D6A98;
  if (!qword_1EB4D6A98)
  {
    sub_1ABAE2850(&qword_1EB4D6A90, &unk_1ABF50D50);
    sub_1ABD1044C(&unk_1EB4D6AA0);
    sub_1ABD1044C(&unk_1EB4D6AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A98);
  }

  return result;
}

unint64_t sub_1ABD0B884()
{
  result = qword_1EB4D6AC0;
  if (!qword_1EB4D6AC0)
  {
    sub_1ABAE2850(&qword_1EB4D6A90, &unk_1ABF50D50);
    sub_1ABD1044C(&unk_1EB4D6AA0);
    sub_1ABD1044C(&unk_1EB4D6AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6AC0);
  }

  return result;
}

unint64_t sub_1ABD0B970()
{
  result = qword_1EB4D6AD0;
  if (!qword_1EB4D6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6AD0);
  }

  return result;
}

unint64_t sub_1ABD0B9C4()
{
  result = qword_1EB4D6B00;
  if (!qword_1EB4D6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B00);
  }

  return result;
}

unint64_t sub_1ABD0BA18()
{
  result = qword_1EB4D6B30;
  if (!qword_1EB4D6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B30);
  }

  return result;
}

unint64_t sub_1ABD0BA6C()
{
  result = qword_1EB4D6B60;
  if (!qword_1EB4D6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B60);
  }

  return result;
}

unint64_t sub_1ABD0BAC0()
{
  result = qword_1EB4D6B90;
  if (!qword_1EB4D6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B90);
  }

  return result;
}

unint64_t sub_1ABD0BB14()
{
  result = qword_1EB4D6BC0;
  if (!qword_1EB4D6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6BC0);
  }

  return result;
}

unint64_t sub_1ABD0BB68()
{
  result = qword_1EB4D6BF0;
  if (!qword_1EB4D6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6BF0);
  }

  return result;
}

unint64_t sub_1ABD0BBBC()
{
  result = qword_1EB4D6C20;
  if (!qword_1EB4D6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6C20);
  }

  return result;
}

unint64_t sub_1ABD0BC10()
{
  result = qword_1EB4D6C50;
  if (!qword_1EB4D6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6C50);
  }

  return result;
}

unint64_t sub_1ABD0BC64()
{
  result = qword_1EB4D6C80;
  if (!qword_1EB4D6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6C80);
  }

  return result;
}

unint64_t sub_1ABD0BCB8()
{
  result = qword_1EB4D6CB0;
  if (!qword_1EB4D6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6CB0);
  }

  return result;
}

unint64_t sub_1ABD0BD0C()
{
  result = qword_1EB4D6CE0;
  if (!qword_1EB4D6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6CE0);
  }

  return result;
}

unint64_t sub_1ABD0BD60()
{
  result = qword_1EB4D6D10;
  if (!qword_1EB4D6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6D10);
  }

  return result;
}

unint64_t sub_1ABD0BDB4()
{
  result = qword_1EB4D6D40;
  if (!qword_1EB4D6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6D40);
  }

  return result;
}

unint64_t sub_1ABD0BE08()
{
  result = qword_1EB4D6D70;
  if (!qword_1EB4D6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6D70);
  }

  return result;
}

unint64_t sub_1ABD0BE5C()
{
  result = qword_1EB4D6DA0;
  if (!qword_1EB4D6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6DA0);
  }

  return result;
}

unint64_t sub_1ABD0BEB0()
{
  result = qword_1EB4D6DD0;
  if (!qword_1EB4D6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6DD0);
  }

  return result;
}

unint64_t sub_1ABD0BF04()
{
  result = qword_1EB4D6E00;
  if (!qword_1EB4D6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6E00);
  }

  return result;
}

unint64_t sub_1ABD0BF58()
{
  result = qword_1EB4D6E30;
  if (!qword_1EB4D6E30)
  {
    sub_1ABAE2850(&qword_1EB4D6E28, &unk_1ABF50F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6E30);
  }

  return result;
}

unint64_t sub_1ABD0BFDC(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D6E18, &qword_1ABF50F10);
    sub_1ABD09EBC(v4);
    sub_1ABAA030C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABD0C070()
{
  result = qword_1EB4D6E50;
  if (!qword_1EB4D6E50)
  {
    sub_1ABAE2850(&qword_1EB4D6E28, &unk_1ABF50F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6E50);
  }

  return result;
}

unint64_t sub_1ABD0C0F4(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABD0C1DC()
{
  result = qword_1EB4D6E60;
  if (!qword_1EB4D6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6E60);
  }

  return result;
}

unint64_t sub_1ABD0C230()
{
  result = qword_1EB4D6E80;
  if (!qword_1EB4D6E80)
  {
    sub_1ABAE2850(&qword_1EB4D6E78, &unk_1ABF50F40);
    sub_1ABD1044C(&unk_1EB4D6E88);
    sub_1ABD1044C(&unk_1EB4D6E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6E80);
  }

  return result;
}

unint64_t sub_1ABD0C31C()
{
  result = qword_1EB4D6EA8;
  if (!qword_1EB4D6EA8)
  {
    sub_1ABAE2850(&qword_1EB4D6E78, &unk_1ABF50F40);
    sub_1ABD1044C(&unk_1EB4D6E88);
    sub_1ABD1044C(&unk_1EB4D6E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6EA8);
  }

  return result;
}

unint64_t sub_1ABD0C448()
{
  result = qword_1EB4D6EB8;
  if (!qword_1EB4D6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6EB8);
  }

  return result;
}

unint64_t sub_1ABD0C49C()
{
  result = qword_1EB4D6EC8;
  if (!qword_1EB4D6EC8)
  {
    sub_1ABAE2850(&qword_1EB4D6EC0, &qword_1ABF50F60);
    sub_1ABD0C528();
    sub_1ABD0C57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6EC8);
  }

  return result;
}

unint64_t sub_1ABD0C528()
{
  result = qword_1EB4D6ED0;
  if (!qword_1EB4D6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6ED0);
  }

  return result;
}

unint64_t sub_1ABD0C57C()
{
  result = qword_1EB4D6ED8;
  if (!qword_1EB4D6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6ED8);
  }

  return result;
}

unint64_t sub_1ABD0C5D0()
{
  result = qword_1EB4D6EE8;
  if (!qword_1EB4D6EE8)
  {
    sub_1ABAE2850(&qword_1EB4D6EE0, &qword_1ABF50F68);
    sub_1ABD0C65C();
    sub_1ABD0C6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6EE8);
  }

  return result;
}

unint64_t sub_1ABD0C65C()
{
  result = qword_1EB4D6EF0;
  if (!qword_1EB4D6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6EF0);
  }

  return result;
}

unint64_t sub_1ABD0C6B0()
{
  result = qword_1EB4D6EF8;
  if (!qword_1EB4D6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6EF8);
  }

  return result;
}

unint64_t sub_1ABD0C704()
{
  result = qword_1EB4D6F08;
  if (!qword_1EB4D6F08)
  {
    sub_1ABAE2850(&qword_1EB4D6EC0, &qword_1ABF50F60);
    sub_1ABD0C528();
    sub_1ABD0C57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6F08);
  }

  return result;
}

unint64_t sub_1ABD0C790()
{
  result = qword_1EB4D6F10;
  if (!qword_1EB4D6F10)
  {
    sub_1ABAE2850(&qword_1EB4D6EE0, &qword_1ABF50F68);
    sub_1ABD0C65C();
    sub_1ABD0C6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6F10);
  }

  return result;
}

unint64_t sub_1ABD0C884()
{
  result = qword_1EB4D6F20;
  if (!qword_1EB4D6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6F20);
  }

  return result;
}

unint64_t sub_1ABD0C8D8()
{
  result = qword_1EB4D6F50;
  if (!qword_1EB4D6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6F50);
  }

  return result;
}

unint64_t sub_1ABD0C994()
{
  result = qword_1EB4D6F80;
  if (!qword_1EB4D6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6F80);
  }

  return result;
}

unint64_t sub_1ABD0C9E8(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABD09EBC(&qword_1ED870CD0);
    sub_1ABD09EBC(&qword_1ED86B860);
    result = sub_1ABD1C0A4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABD0CAA8()
{
  result = qword_1EB4D6FA8;
  if (!qword_1EB4D6FA8)
  {
    sub_1ABAE2850(&qword_1EB4D6FA0, &qword_1ABF50FB8);
    sub_1ABD1044C(&unk_1EB4D6FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6FA8);
  }

  return result;
}

unint64_t sub_1ABD0CB58()
{
  result = qword_1EB4D6FC0;
  if (!qword_1EB4D6FC0)
  {
    sub_1ABAE2850(&qword_1EB4D6FB8, &qword_1ABF50FC8);
    sub_1ABD1044C(&unk_1EB4D6FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6FC0);
  }

  return result;
}

unint64_t sub_1ABD0CC08()
{
  result = qword_1EB4D6FD8;
  if (!qword_1EB4D6FD8)
  {
    sub_1ABAE2850(&qword_1EB4D6FD0, &qword_1ABF50FD8);
    sub_1ABD1044C(&unk_1EB4D6FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6FD8);
  }

  return result;
}

unint64_t sub_1ABD0CCB8()
{
  result = qword_1EB4D6FF0;
  if (!qword_1EB4D6FF0)
  {
    sub_1ABAE2850(&qword_1EB4D6FE8, &qword_1ABF50FE8);
    sub_1ABD0CD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6FF0);
  }

  return result;
}

unint64_t sub_1ABD0CD3C()
{
  result = qword_1EB4D6FF8;
  if (!qword_1EB4D6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6FF8);
  }

  return result;
}

unint64_t sub_1ABD0CD90()
{
  result = qword_1EB4D7008;
  if (!qword_1EB4D7008)
  {
    sub_1ABAE2850(&qword_1EB4D7000, &qword_1ABF50FF0);
    sub_1ABD0CE14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7008);
  }

  return result;
}

unint64_t sub_1ABD0CE14()
{
  result = qword_1EB4D7010;
  if (!qword_1EB4D7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7010);
  }

  return result;
}

unint64_t sub_1ABD0CE68()
{
  result = qword_1EB4D7030;
  if (!qword_1EB4D7030)
  {
    sub_1ABAE2850(&qword_1EB4D6FA0, &qword_1ABF50FB8);
    sub_1ABD1044C(&unk_1EB4D7038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7030);
  }

  return result;
}

unint64_t sub_1ABD0CF18()
{
  result = qword_1EB4D7040;
  if (!qword_1EB4D7040)
  {
    sub_1ABAE2850(&qword_1EB4D6FB8, &qword_1ABF50FC8);
    sub_1ABD1044C(&unk_1EB4D7048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7040);
  }

  return result;
}

unint64_t sub_1ABD0CFC8()
{
  result = qword_1EB4D7050;
  if (!qword_1EB4D7050)
  {
    sub_1ABAE2850(&qword_1EB4D6FD0, &qword_1ABF50FD8);
    sub_1ABD1044C(&unk_1EB4D7058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7050);
  }

  return result;
}

unint64_t sub_1ABD0D078()
{
  result = qword_1EB4D7060;
  if (!qword_1EB4D7060)
  {
    sub_1ABAE2850(&qword_1EB4D6FE8, &qword_1ABF50FE8);
    sub_1ABD0D0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7060);
  }

  return result;
}

unint64_t sub_1ABD0D0FC()
{
  result = qword_1EB4D7068;
  if (!qword_1EB4D7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7068);
  }

  return result;
}

unint64_t sub_1ABD0D150()
{
  result = qword_1EB4D7070;
  if (!qword_1EB4D7070)
  {
    sub_1ABAE2850(&qword_1EB4D7000, &qword_1ABF50FF0);
    sub_1ABD0D1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7070);
  }

  return result;
}

unint64_t sub_1ABD0D1D4()
{
  result = qword_1EB4D7078;
  if (!qword_1EB4D7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7078);
  }

  return result;
}

__n128 sub_1ABD0D228(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  memcpy(__dst, __src, 0x62uLL);
  sub_1ABCDC8A4(__dst, a2, a3, a4, a5, a6, a7, a8);
  return result;
}

void sub_1ABD0D32C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v6[0] = *a1;
  v6[1] = v5;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  sub_1ABD06760(v6, a2, a3, a4, a5);
}

void sub_1ABD0D368(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5[0] = *a1;
  v5[1] = v4;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  sub_1ABCF973C(v5, a2, a3, a4);
}

void sub_1ABD0D3A4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5[0] = *a1;
  v5[1] = v4;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  sub_1ABCF7888(v5, a2, a3, a4);
}

void sub_1ABD0D400(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  sub_1ABD04078(v3, a2);
}

void sub_1ABD0D45C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  sub_1ABCF6380(v4, a2, a3);
}

void sub_1ABD0D4B8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  sub_1ABCFC9BC(v4, a2, a3);
}

void sub_1ABD0D514(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  sub_1ABCF1134(v4, a2, a3);
}

uint64_t sub_1ABD0D5E4(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_1ABD0507C(v3);
}

void sub_1ABD0D620(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v6[0] = *a1;
  v6[1] = v5;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  sub_1ABCF41F8(v6, a2, a3, a4, a5);
}

__n128 sub_1ABD0D65C(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  memcpy(__dst, __src, 0x62uLL);
  sub_1ABC8DF94(__dst, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, *(&a10 + 1), a11);
  return result;
}

void sub_1ABD0D718(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  sub_1ABCF0320(v3, a2, sub_1ABC4A730, sub_1ABB4DDE8, sub_1ABB4E1EC);
}

void sub_1ABD0D790(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  sub_1ABCF0320(v3, a2, sub_1ABC6C238, sub_1ABB4DE90, sub_1ABB4E294);
}

uint64_t sub_1ABD0D808(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  return sub_1ABCF2350(v5, a2, a3, sub_1ABC4A328, sub_1ABB4DD58, sub_1ABB4E15C);
}

void sub_1ABD0D924(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  sub_1ABCFB51C(v3, a2);
}

unint64_t sub_1ABD0DA6C()
{
  result = qword_1EB4D7088;
  if (!qword_1EB4D7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7088);
  }

  return result;
}

unint64_t sub_1ABD0DB28()
{
  result = qword_1EB4D70B8;
  if (!qword_1EB4D70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D70B8);
  }

  return result;
}

unint64_t sub_1ABD0DB7C()
{
  result = qword_1EB4D70D8;
  if (!qword_1EB4D70D8)
  {
    sub_1ABAE2850(&qword_1EB4D70D0, &qword_1ABF51028);
    sub_1ABD0DC08();
    sub_1ABD0DC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D70D8);
  }

  return result;
}

unint64_t sub_1ABD0DC08()
{
  result = qword_1EB4D70E0;
  if (!qword_1EB4D70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D70E0);
  }

  return result;
}

unint64_t sub_1ABD0DC5C()
{
  result = qword_1EB4D70E8;
  if (!qword_1EB4D70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D70E8);
  }

  return result;
}

uint64_t sub_1ABD0DCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1ABD0DCF4()
{
  result = qword_1EB4D7100;
  if (!qword_1EB4D7100)
  {
    sub_1ABAE2850(&qword_1EB4D70D0, &qword_1ABF51028);
    sub_1ABD0DC08();
    sub_1ABD0DC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7100);
  }

  return result;
}

void sub_1ABD0DE5C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a1[1];
  v11[0] = *a1;
  v11[1] = v10;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  sub_1ABCFED78(v11, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_1ABD0DEA0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  sub_1ABD029FC(v4, a2, a3);
}

uint64_t sub_1ABD0E138(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  return sub_1ABCF2350(v5, a2, a3, sub_1ABC4C9B8, sub_1ABB4DF20, sub_1ABB4E324);
}

unint64_t sub_1ABD0E218()
{
  result = qword_1EB4D7110;
  if (!qword_1EB4D7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7110);
  }

  return result;
}

unint64_t sub_1ABD0E26C()
{
  result = qword_1EB4D7128;
  if (!qword_1EB4D7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7128);
  }

  return result;
}

uint64_t sub_1ABD0E2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = v5[2];
  v11 = v5[6];
  v13 = v5[4];
  return sub_1ABB6B644(a1, a2, a3, a4, v5[3], v5[5], a5);
}

unint64_t sub_1ABD0E300()
{
  result = qword_1EB4D7140;
  if (!qword_1EB4D7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7140);
  }

  return result;
}

unint64_t sub_1ABD0E36C()
{
  result = qword_1EB4D7168;
  if (!qword_1EB4D7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7168);
  }

  return result;
}

unint64_t sub_1ABD0E3C0()
{
  result = qword_1EB4D7170;
  if (!qword_1EB4D7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7170);
  }

  return result;
}

unint64_t sub_1ABD0E474()
{
  result = qword_1EB4D7180;
  if (!qword_1EB4D7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7180);
  }

  return result;
}

unint64_t sub_1ABD0E4F8()
{
  result = qword_1EB4D7198;
  if (!qword_1EB4D7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7198);
  }

  return result;
}

unint64_t sub_1ABD0E54C()
{
  result = qword_1EB4D71B0;
  if (!qword_1EB4D71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D71B0);
  }

  return result;
}

unint64_t sub_1ABD0E608()
{
  result = qword_1EB4D71C8;
  if (!qword_1EB4D71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D71C8);
  }

  return result;
}

unint64_t sub_1ABD0E68C()
{
  result = qword_1EB4D71E0;
  if (!qword_1EB4D71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D71E0);
  }

  return result;
}

unint64_t sub_1ABD0E6E0()
{
  result = qword_1EB4D71F8;
  if (!qword_1EB4D71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D71F8);
  }

  return result;
}

unint64_t sub_1ABD0E764()
{
  result = qword_1EB4D7210;
  if (!qword_1EB4D7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7210);
  }

  return result;
}

unint64_t sub_1ABD0E838(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86DB00);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0E8D4(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86D280);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0E970(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86D1D8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EA0C(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C5D8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EAA8(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CA70);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EB44(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CB88);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EBE0(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CDC0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EC7C(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C818);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0ED18(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C620);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EDB4(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CA08);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EE50(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C7F0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EEEC(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C9E8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0EF88(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C900);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F024(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CB58);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F0C0(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C7A0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F15C(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CD98);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F1F8(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C7C8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F294(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C9C0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F330(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C888);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F3CC(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C8B0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F468(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CC58);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F504(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CDE0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F5A0(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C3B8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F63C(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C838);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F6D8(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C5F8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F774(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CA90);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F810(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CB38);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F8AC(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C9A0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F948(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CD78);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0F9E4(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86C860);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FA80(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CA28);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FB1C(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CC30);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FBB8(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86CA48);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FC54(uint64_t a1)
{
  result = sub_1ABD0FC7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FC7C()
{
  result = qword_1ED86D260;
  if (!qword_1ED86D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D260);
  }

  return result;
}

unint64_t sub_1ABD0FD14(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1EB4D7330);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FDB0(uint64_t a1)
{
  result = sub_1ABD0FDD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FDD8()
{
  result = qword_1ED86D428;
  if (!qword_1ED86D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D428);
  }

  return result;
}

unint64_t sub_1ABD0FE70(uint64_t a1)
{
  result = sub_1ABD0FE98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FE98()
{
  result = qword_1ED86D2B8;
  if (!qword_1ED86D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D2B8);
  }

  return result;
}

unint64_t sub_1ABD0FF30(uint64_t a1)
{
  result = sub_1ABD0FF58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD0FF58()
{
  result = qword_1ED86D388;
  if (!qword_1ED86D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D388);
  }

  return result;
}

unint64_t sub_1ABD0FFF0(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1ED86D6D0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD1008C(uint64_t a1)
{
  result = sub_1ABD100B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD100B4()
{
  result = qword_1ED86DAE0;
  if (!qword_1ED86DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DAE0);
  }

  return result;
}

unint64_t sub_1ABD1014C(uint64_t a1)
{
  result = sub_1ABD10174();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD10174()
{
  result = qword_1ED86DB38;
  if (!qword_1ED86DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB38);
  }

  return result;
}

unint64_t sub_1ABD1020C(uint64_t a1)
{
  result = sub_1ABD10234();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD10234()
{
  result = qword_1ED86CF40;
  if (!qword_1ED86CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CF40);
  }

  return result;
}

unint64_t sub_1ABD102CC(uint64_t a1)
{
  result = sub_1ABD102F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD102F4()
{
  result = qword_1ED86CB68;
  if (!qword_1ED86CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CB68);
  }

  return result;
}

unint64_t sub_1ABD1038C(uint64_t a1)
{
  result = sub_1ABD103B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD103B4()
{
  result = qword_1ED86D418;
  if (!qword_1ED86D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D418);
  }

  return result;
}

unint64_t sub_1ABD1044C(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABD10490(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD104CC()
{
  result = qword_1EB4D7388;
  if (!qword_1EB4D7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7388);
  }

  return result;
}

uint64_t sub_1ABD10520(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD1055C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD10598(uint64_t a1)
{
  result = sub_1ABD09EBC(&unk_1EB4D7390);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD105F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD1062C(uint64_t a1)
{
  result = sub_1ABD10654();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD10654()
{
  result = qword_1EB4D7398;
  if (!qword_1EB4D7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7398);
  }

  return result;
}

unint64_t sub_1ABD106A8(uint64_t a1)
{
  result = sub_1ABD106D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD106D0()
{
  result = qword_1EB4D73A0;
  if (!qword_1EB4D73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D73A0);
  }

  return result;
}

unint64_t sub_1ABD10728()
{
  result = qword_1EB4D73A8;
  if (!qword_1EB4D73A8)
  {
    sub_1ABAE2850(&qword_1EB4D33A8, &unk_1ABF627B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D73A8);
  }

  return result;
}

unint64_t sub_1ABD107A4(uint64_t a1)
{
  result = sub_1ABD107CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD107CC()
{
  result = qword_1EB4D73B0;
  if (!qword_1EB4D73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D73B0);
  }

  return result;
}

uint64_t sub_1ABD10820(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD1085C(uint64_t a1)
{
  result = sub_1ABD10884();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD10884()
{
  result = qword_1EB4D73B8;
  if (!qword_1EB4D73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D73B8);
  }

  return result;
}

unint64_t sub_1ABD108D8(uint64_t a1)
{
  result = sub_1ABD10900();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD10900()
{
  result = qword_1EB4D73C0;
  if (!qword_1EB4D73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D73C0);
  }

  return result;
}

uint64_t sub_1ABD10954(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD10990(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD109CC(uint64_t a1)
{
  result = sub_1ABD109F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD109F4()
{
  result = qword_1EB4D73C8;
  if (!qword_1EB4D73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D73C8);
  }

  return result;
}

uint64_t sub_1ABD10A48(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1ABD10AAC()
{
  sub_1ABD10CD4();
  if (v0 <= 0x3F)
  {
    sub_1ABD14198(319, &qword_1ED86E440, &type metadata for CustomGraphIdentifierRelationship, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
      if (v2 <= 0x3F)
      {
        sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
        if (v3 <= 0x3F)
        {
          sub_1ABD14134(319, &qword_1ED86B9B8, &qword_1EB4D1898, &qword_1ABF33A28, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1ABD14134(319, &qword_1EB4D73D8, &qword_1EB4D1240, &qword_1ABF333C8, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1ABD14134(319, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1ABD14134(319, &qword_1ED86C0D8, &qword_1EB4D6640, &qword_1ABF60FA0, type metadata accessor for OneOf);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1ABD10CD4()
{
  if (!qword_1EB4D73D0)
  {
    type metadata accessor for CustomGraphEvent(255);
    sub_1ABD09EBC(&qword_1ED86DAF8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D73D0);
    }
  }
}

void sub_1ABD10D90()
{
  sub_1ABD110B8();
  if (v0 <= 0x3F)
  {
    sub_1ABD14198(319, &qword_1ED86E440, &type metadata for CustomGraphIdentifierRelationship, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
      if (v2 <= 0x3F)
      {
        sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
        if (v3 <= 0x3F)
        {
          sub_1ABD14134(319, &qword_1ED86B9B8, &qword_1EB4D1898, &qword_1ABF33A28, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1ABD14134(319, &qword_1EB4D73D8, &qword_1EB4D1240, &qword_1ABF333C8, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1ABD14134(319, &qword_1EB4D73E8, &qword_1EB4D18D8, &qword_1ABF50BB0, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1ABD14134(319, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  sub_1ABD14134(319, &qword_1ED86C0D8, &qword_1EB4D6640, &qword_1ABF60FA0, type metadata accessor for OneOf);
                  if (v8 <= 0x3F)
                  {
                    sub_1ABD14134(319, &qword_1ED86C0D0, &qword_1EB4D6708, &unk_1ABF50BC0, type metadata accessor for OneOf);
                    if (v9 <= 0x3F)
                    {
                      sub_1ABD14198(319, &qword_1ED86C0E8, &type metadata for ActivityEventType, type metadata accessor for OneOf);
                      if (v10 <= 0x3F)
                      {
                        sub_1ABD14198(319, &qword_1ED86C0A0, MEMORY[0x1E69E63B0], type metadata accessor for OneOf);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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
  }
}

void sub_1ABD110B8()
{
  if (!qword_1EB4D73E0)
  {
    type metadata accessor for CustomGraphActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86D278);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D73E0);
    }
  }
}

uint64_t sub_1ABD11160()
{
  sub_1ABD1B904();
  if (v3)
  {
    return sub_1ABA8A59C(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  v8 = v0 + *(v5 + 28);

  return sub_1ABA7E1E0(v8, v6, v7);
}

void sub_1ABD111F4()
{
  sub_1ABAA1CCC();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    v5 = sub_1ABAA1E20(*(v4 + 28));

    sub_1ABA7B9B4(v5, v6, v7, v8);
  }
}

void sub_1ABD1126C()
{
  sub_1ABD11494();
  if (v0 <= 0x3F)
  {
    sub_1ABD14198(319, &qword_1ED86E440, &type metadata for CustomGraphIdentifierRelationship, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
      if (v2 <= 0x3F)
      {
        sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
        if (v3 <= 0x3F)
        {
          sub_1ABD14134(319, &qword_1EB4D73D8, &qword_1EB4D1240, &qword_1ABF333C8, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1ABD14134(319, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1ABD14134(319, &qword_1ED86C0D8, &qword_1EB4D6640, &qword_1ABF60FA0, type metadata accessor for OneOf);
              if (v6 <= 0x3F)
              {
                sub_1ABD14134(319, &qword_1ED86B9C0, &qword_1EB4D1270, &qword_1ABF333F8, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1ABD11494()
{
  if (!qword_1EB4D73F0)
  {
    type metadata accessor for CustomGraphSportsGameEvent(255);
    sub_1ABD09EBC(&qword_1ED86D1D0);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D73F0);
    }
  }
}

void sub_1ABD11550()
{
  sub_1ABD11834();
  if (v0 <= 0x3F)
  {
    sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
    if (v1 <= 0x3F)
    {
      sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
      if (v2 <= 0x3F)
      {
        sub_1ABD14134(319, &qword_1ED86B9B8, &qword_1EB4D1898, &qword_1ABF33A28, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1ABD14134(319, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1ABD14134(319, &qword_1ED86C0D8, &qword_1EB4D6640, &qword_1ABF60FA0, type metadata accessor for OneOf);
            if (v5 <= 0x3F)
            {
              sub_1ABD14134(319, &qword_1ED86C0D0, &qword_1EB4D6708, &unk_1ABF50BC0, type metadata accessor for OneOf);
              if (v6 <= 0x3F)
              {
                sub_1ABD14198(319, &qword_1ED86C0E8, &type metadata for ActivityEventType, type metadata accessor for OneOf);
                if (v7 <= 0x3F)
                {
                  sub_1ABD14198(319, &qword_1ED86C0A0, MEMORY[0x1E69E63B0], type metadata accessor for OneOf);
                  if (v8 <= 0x3F)
                  {
                    sub_1ABD14134(319, &qword_1ED86C0E0, &qword_1EB4D6810, &qword_1ABF50C20, type metadata accessor for OneOf);
                    if (v9 <= 0x3F)
                    {
                      sub_1ABD14198(319, &qword_1ED86C0B8, &type metadata for TransportationActivityEventType, type metadata accessor for OneOf);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_1ABD11834()
{
  if (!qword_1EB4D73F8)
  {
    type metadata accessor for CustomGraphTransportationActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C5D0);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D73F8);
    }
  }
}

void sub_1ABD11908()
{
  if (!qword_1EB4D7400)
  {
    type metadata accessor for CustomGraphWorkingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CA68);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7400);
    }
  }
}

void sub_1ABD119DC()
{
  if (!qword_1EB4D7408)
  {
    type metadata accessor for CustomGraphMeetingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CB80);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7408);
    }
  }
}

void sub_1ABD11AB0()
{
  if (!qword_1EB4D7410)
  {
    type metadata accessor for CustomGraphEatingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CDB8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7410);
    }
  }
}

void sub_1ABD11B84()
{
  if (!qword_1EB4D7418)
  {
    type metadata accessor for CustomGraphWatchingTVActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C810);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7418);
    }
  }
}

void sub_1ABD11C58()
{
  if (!qword_1EB4D7420)
  {
    type metadata accessor for CustomGraphCommunicatingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C618);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7420);
    }
  }
}

void sub_1ABD11D2C()
{
  if (!qword_1EB4D7428)
  {
    type metadata accessor for CustomGraphShoppingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CA00);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7428);
    }
  }
}

void sub_1ABD11E00()
{
  if (!qword_1EB4D7430)
  {
    type metadata accessor for CustomGraphMindfulnessActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C7E8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7430);
    }
  }
}

void sub_1ABD11ED4()
{
  if (!qword_1EB4D7438)
  {
    type metadata accessor for CustomGraphSleepingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C9E0);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7438);
    }
  }
}

void sub_1ABD11FA8()
{
  if (!qword_1EB4D7440)
  {
    type metadata accessor for CustomGraphTravelingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C8F8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7440);
    }
  }
}

void sub_1ABD1207C()
{
  if (!qword_1EB4D7448)
  {
    type metadata accessor for CustomGraphReadingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CB50);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7448);
    }
  }
}

void sub_1ABD12150()
{
  if (!qword_1EB4D7450)
  {
    type metadata accessor for CustomGraphVacationingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C798);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7450);
    }
  }
}

void sub_1ABD1220C()
{
  sub_1ABD124B4();
  if (v0 <= 0x3F)
  {
    sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
    if (v1 <= 0x3F)
    {
      sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
      if (v2 <= 0x3F)
      {
        sub_1ABD14134(319, &qword_1ED86B9B8, &qword_1EB4D1898, &qword_1ABF33A28, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1ABD14134(319, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1ABD14134(319, &qword_1ED86C0D8, &qword_1EB4D6640, &qword_1ABF60FA0, type metadata accessor for OneOf);
            if (v5 <= 0x3F)
            {
              sub_1ABD14134(319, &qword_1ED86C0D0, &qword_1EB4D6708, &unk_1ABF50BC0, type metadata accessor for OneOf);
              if (v6 <= 0x3F)
              {
                sub_1ABD14198(319, &qword_1ED86C0E8, &type metadata for ActivityEventType, type metadata accessor for OneOf);
                if (v7 <= 0x3F)
                {
                  sub_1ABD14198(319, &qword_1ED86C0A0, MEMORY[0x1E69E63B0], type metadata accessor for OneOf);
                  if (v8 <= 0x3F)
                  {
                    sub_1ABD14134(319, &qword_1ED86C0C0, &qword_1EB4D18B8, &qword_1ABF33A48, type metadata accessor for OneOf);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1ABD124B4()
{
  if (!qword_1EB4D7458)
  {
    type metadata accessor for CustomGraphGamingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CD90);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7458);
    }
  }
}

void sub_1ABD12588()
{
  if (!qword_1EB4D7460)
  {
    type metadata accessor for CustomGraphSocializingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C7C0);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7460);
    }
  }
}

void sub_1ABD1265C()
{
  if (!qword_1EB4D7468)
  {
    type metadata accessor for CustomGraphWakingUpActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C9B8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7468);
    }
  }
}

void sub_1ABD12730()
{
  if (!qword_1EB4D7470)
  {
    type metadata accessor for CustomGraphGoingToBedActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C880);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7470);
    }
  }
}

void sub_1ABD12804()
{
  if (!qword_1EB4D7478)
  {
    type metadata accessor for CustomGraphExercisingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C8A8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7478);
    }
  }
}

void sub_1ABD128D8()
{
  if (!qword_1EB4D7480)
  {
    type metadata accessor for CustomGraphCommuteActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CC50);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7480);
    }
  }
}

void sub_1ABD129AC()
{
  if (!qword_1EB4D7488)
  {
    type metadata accessor for CustomGraphDiningActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CDD8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7488);
    }
  }
}

void sub_1ABD12A80()
{
  if (!qword_1EB4D7490)
  {
    type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C3B0);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7490);
    }
  }
}

void sub_1ABD12B54()
{
  if (!qword_1EB4D7498)
  {
    type metadata accessor for CustomGraphStationaryActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C830);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7498);
    }
  }
}

void sub_1ABD12C28()
{
  if (!qword_1EB4D74A0)
  {
    type metadata accessor for CustomGraphLocationVisitActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C5F0);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74A0);
    }
  }
}

void sub_1ABD12CFC()
{
  if (!qword_1EB4D74A8)
  {
    type metadata accessor for CustomGraphWalkingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CA88);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74A8);
    }
  }
}

void sub_1ABD12DD0()
{
  if (!qword_1EB4D74B0)
  {
    type metadata accessor for CustomGraphRunningActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CB30);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74B0);
    }
  }
}

void sub_1ABD12EA4()
{
  if (!qword_1EB4D74B8)
  {
    type metadata accessor for CustomGraphBicyclingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C998);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74B8);
    }
  }
}

void sub_1ABD12F78()
{
  if (!qword_1EB4D74C0)
  {
    type metadata accessor for CustomGraphHikingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CD70);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74C0);
    }
  }
}

void sub_1ABD1304C()
{
  if (!qword_1EB4D74C8)
  {
    type metadata accessor for CustomGraphOnThePhoneActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86C858);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74C8);
    }
  }
}

void sub_1ABD13120()
{
  if (!qword_1EB4D74D0)
  {
    type metadata accessor for CustomGraphFacetimeActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CA20);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74D0);
    }
  }
}

void sub_1ABD131F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    sub_1ABD1AE00(v4, &qword_1ED86C0B0, MEMORY[0x1E69E6158]);
    if (v6 <= 0x3F)
    {
      sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
      if (v8 <= 0x3F)
      {
        sub_1ABAB5EEC(v7, &qword_1ED86B9B8, &qword_1EB4D1898, &qword_1ABF33A28);
        if (v10 <= 0x3F)
        {
          sub_1ABAB5EEC(v9, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0);
          if (v12 <= 0x3F)
          {
            sub_1ABAB5F78(v11, &qword_1ED86C0D8, &qword_1EB4D6640, &qword_1ABF60FA0);
            if (v14 <= 0x3F)
            {
              sub_1ABAB5F78(v13, &qword_1ED86C0D0, &qword_1EB4D6708, &unk_1ABF50BC0);
              if (v16 <= 0x3F)
              {
                sub_1ABD1AE00(v15, &qword_1ED86C0E8, &type metadata for ActivityEventType);
                if (v18 <= 0x3F)
                {
                  sub_1ABD1AE00(v17, &qword_1ED86C0A0, MEMORY[0x1E69E63B0]);
                  if (v19 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1ABD133B4()
{
  if (!qword_1EB4D74D8)
  {
    type metadata accessor for CustomGraphDrivingActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CC28);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74D8);
    }
  }
}

uint64_t sub_1ABD1345C()
{
  sub_1ABD1B904();
  if (v3)
  {
    return sub_1ABA8A59C(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  v8 = v0 + *(v5 + 24);

  return sub_1ABA7E1E0(v8, v6, v7);
}

void sub_1ABD134F0()
{
  sub_1ABAA1CCC();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    v5 = sub_1ABAA1E20(*(v4 + 24));

    sub_1ABA7B9B4(v5, v6, v7, v8);
  }
}

uint64_t sub_1ABD13568()
{
  sub_1ABD137E4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1ABD14134(319, &qword_1ED86B9B8, &qword_1EB4D1898, &qword_1ABF33A28, MEMORY[0x1E69E62F8]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1ABD14134(319, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0, MEMORY[0x1E69E62F8]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_1ABD14134(319, &qword_1ED86C0D8, &qword_1EB4D6640, &qword_1ABF60FA0, type metadata accessor for OneOf);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_1ABD14134(319, &qword_1ED86C0D0, &qword_1EB4D6708, &unk_1ABF50BC0, type metadata accessor for OneOf);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_1ABD14198(319, &qword_1ED86C0E8, &type metadata for ActivityEventType, type metadata accessor for OneOf);
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_1ABD14198(319, &qword_1ED86C0A0, MEMORY[0x1E69E63B0], type metadata accessor for OneOf);
      if (v12 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1ABD137E4()
{
  if (!qword_1EB4D74E0)
  {
    type metadata accessor for CustomGraphBehaviorActivityEvent(255);
    sub_1ABD09EBC(&qword_1ED86CA40);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74E0);
    }
  }
}

uint64_t sub_1ABD13880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD138C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABD13950()
{
  sub_1ABD13A70();
  if (v0 <= 0x3F)
  {
    sub_1ABD140E0(319, &qword_1ED86C0C8, type metadata accessor for CustomGraphDateRelationship);
    if (v1 <= 0x3F)
    {
      sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
      if (v2 <= 0x3F)
      {
        sub_1ABD14134(319, &qword_1EB4D7500, &qword_1EB4D1880, &qword_1ABF33A10, type metadata accessor for OneOf);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1ABD13A70()
{
  if (!qword_1EB4D74F8)
  {
    type metadata accessor for CustomGraphSongEvent(255);
    sub_1ABD09EBC(qword_1EB4D1B50);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D74F8);
    }
  }
}

uint64_t sub_1ABD13B0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 400))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD13B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD13C14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD13C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD13CE0()
{
  sub_1ABD1404C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1ABD14198(319, &qword_1ED871B00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1ABD140E0(319, qword_1ED86C0F0, MEMORY[0x1E6969530]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1ABD14198(319, &qword_1ED86C0B0, MEMORY[0x1E69E6158], type metadata accessor for OneOf);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1ABD14198(319, &qword_1ED86C0A8, MEMORY[0x1E69E6370], type metadata accessor for OneOf);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_1ABD14134(319, qword_1EB4D7510, &qword_1EB4D1818, &qword_1ABF50FC0, MEMORY[0x1E69E62F8]);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_1ABD14134(319, &qword_1ED86B9B0, &qword_1EB4D1258, &qword_1ABF333E0, MEMORY[0x1E69E62F8]);
          if (v12 > 0x3F)
          {
            return v9;
          }

          sub_1ABD14134(319, &qword_1ED86B9A8, &qword_1EB4D1828, &qword_1ABF50FD0, MEMORY[0x1E69E62F8]);
          if (v13 > 0x3F)
          {
            return v9;
          }

          sub_1ABD14134(319, &qword_1ED86B9D0, &qword_1EB4D1838, &qword_1ABF50FE0, MEMORY[0x1E69E62F8]);
          if (v14 > 0x3F)
          {
            return v9;
          }

          sub_1ABD14198(319, &qword_1ED86B9C8, &type metadata for CustomGraphHandleRelationship, MEMORY[0x1E69E62F8]);
          if (v15 > 0x3F)
          {
            return v9;
          }

          sub_1ABD14198(319, &qword_1ED86E440, &type metadata for CustomGraphIdentifierRelationship, MEMORY[0x1E69E62F8]);
          if (v16 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_1ABD14198(319, &qword_1ED86B9A0, &type metadata for CustomGraphVisualIdentifierRelationship, MEMORY[0x1E69E62F8]);
            v1 = v17;
            if (v18 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1ABD1404C()
{
  if (!qword_1EB4D7508)
  {
    type metadata accessor for CustomGraphPerson(255);
    sub_1ABD09EBC(&qword_1ED86D6C8);
    v0 = type metadata accessor for TypedEntityIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D7508);
    }
  }
}

void sub_1ABD140E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for OneOf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1ABD14134(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1ABAE2850(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1ABD14198(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1ABD14200(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD14240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD142C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1ABA8C590(v2);
}

uint64_t sub_1ABD14304(uint64_t result, int a2, int a3)
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

      return sub_1ABD1BBAC(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1ABD1BBAC(result, a2);
    }
  }

  return result;
}

uint64_t sub_1ABD1434C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD1438C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD143DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1ABA8C590(v2);
}

uint64_t sub_1ABD14418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

      return sub_1ABD1BBAC(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return sub_1ABD1BBAC(result, a2);
    }
  }

  return result;
}

void sub_1ABD144AC()
{
  sub_1ABD140E0(319, qword_1ED86C0F0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1ABD1454C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD1458C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD145E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD14628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD1468C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD146CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD14724(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD14764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD147EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0 && *(a1 + 57))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1ABA8C590(v2);
}

uint64_t sub_1ABD14828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

      return sub_1ABD1BBA0(result, a2);
    }

    *(result + 57) = 0;
    if (a2)
    {
      return sub_1ABD1BBA0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1ABD148C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0 && *(a1 + 33))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1ABA8C590(v2);
}

uint64_t sub_1ABD148FC(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

      return sub_1ABD1BBA0(result, a2);
    }

    *(result + 33) = 0;
    if (a2)
    {
      return sub_1ABD1BBA0(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1ABD14A00(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomGraphPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomGraphPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD14C30(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD14CFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomGraphLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD14EA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD15090(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 11);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 11);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 11);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABD15114(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD15280(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 10);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 10);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 10);
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

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABD15304(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 9);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD153F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 13);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABD15474(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD15540(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 9);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABD155C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD15694()
{
  result = qword_1EB4D7998;
  if (!qword_1EB4D7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7998);
  }

  return result;
}

unint64_t sub_1ABD156EC()
{
  result = qword_1EB4D79A0;
  if (!qword_1EB4D79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79A0);
  }

  return result;
}

unint64_t sub_1ABD15744()
{
  result = qword_1EB4D79A8;
  if (!qword_1EB4D79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79A8);
  }

  return result;
}

unint64_t sub_1ABD1579C()
{
  result = qword_1EB4D79B0;
  if (!qword_1EB4D79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79B0);
  }

  return result;
}

unint64_t sub_1ABD157F4()
{
  result = qword_1EB4D79B8;
  if (!qword_1EB4D79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79B8);
  }

  return result;
}

unint64_t sub_1ABD1584C()
{
  result = qword_1EB4D79C0;
  if (!qword_1EB4D79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79C0);
  }

  return result;
}

unint64_t sub_1ABD158A4()
{
  result = qword_1EB4D79C8;
  if (!qword_1EB4D79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79C8);
  }

  return result;
}

unint64_t sub_1ABD158FC()
{
  result = qword_1EB4D79D0;
  if (!qword_1EB4D79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79D0);
  }

  return result;
}

unint64_t sub_1ABD15954()
{
  result = qword_1EB4D79D8;
  if (!qword_1EB4D79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79D8);
  }

  return result;
}

unint64_t sub_1ABD159AC()
{
  result = qword_1EB4D79E0;
  if (!qword_1EB4D79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79E0);
  }

  return result;
}

unint64_t sub_1ABD15A04()
{
  result = qword_1EB4D79E8;
  if (!qword_1EB4D79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79E8);
  }

  return result;
}

unint64_t sub_1ABD15A5C()
{
  result = qword_1EB4D79F0;
  if (!qword_1EB4D79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79F0);
  }

  return result;
}

unint64_t sub_1ABD15AB4()
{
  result = qword_1EB4D79F8;
  if (!qword_1EB4D79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D79F8);
  }

  return result;
}

unint64_t sub_1ABD15B0C()
{
  result = qword_1EB4D7A00;
  if (!qword_1EB4D7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A00);
  }

  return result;
}

unint64_t sub_1ABD15B64()
{
  result = qword_1EB4D7A08;
  if (!qword_1EB4D7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A08);
  }

  return result;
}

unint64_t sub_1ABD15BBC()
{
  result = qword_1EB4D7A10;
  if (!qword_1EB4D7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A10);
  }

  return result;
}

unint64_t sub_1ABD15C14()
{
  result = qword_1EB4D7A18;
  if (!qword_1EB4D7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A18);
  }

  return result;
}

unint64_t sub_1ABD15C6C()
{
  result = qword_1EB4D7A20;
  if (!qword_1EB4D7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A20);
  }

  return result;
}

unint64_t sub_1ABD15CC4()
{
  result = qword_1EB4D7A28;
  if (!qword_1EB4D7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A28);
  }

  return result;
}

unint64_t sub_1ABD15D1C()
{
  result = qword_1EB4D7A30;
  if (!qword_1EB4D7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A30);
  }

  return result;
}

unint64_t sub_1ABD15D74()
{
  result = qword_1EB4D7A38;
  if (!qword_1EB4D7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A38);
  }

  return result;
}

unint64_t sub_1ABD15DCC()
{
  result = qword_1EB4D7A40;
  if (!qword_1EB4D7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A40);
  }

  return result;
}

unint64_t sub_1ABD15E24()
{
  result = qword_1EB4D7A48;
  if (!qword_1EB4D7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A48);
  }

  return result;
}

unint64_t sub_1ABD15E7C()
{
  result = qword_1EB4D7A50;
  if (!qword_1EB4D7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A50);
  }

  return result;
}

unint64_t sub_1ABD15ED4()
{
  result = qword_1EB4D7A58;
  if (!qword_1EB4D7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A58);
  }

  return result;
}

unint64_t sub_1ABD15F2C()
{
  result = qword_1EB4D7A60;
  if (!qword_1EB4D7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A60);
  }

  return result;
}

unint64_t sub_1ABD15F84()
{
  result = qword_1EB4D7A68;
  if (!qword_1EB4D7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A68);
  }

  return result;
}

unint64_t sub_1ABD15FDC()
{
  result = qword_1EB4D7A70;
  if (!qword_1EB4D7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A70);
  }

  return result;
}

unint64_t sub_1ABD16034()
{
  result = qword_1EB4D7A78;
  if (!qword_1EB4D7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A78);
  }

  return result;
}

unint64_t sub_1ABD1608C()
{
  result = qword_1EB4D7A80;
  if (!qword_1EB4D7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A80);
  }

  return result;
}

unint64_t sub_1ABD160E4()
{
  result = qword_1EB4D7A88;
  if (!qword_1EB4D7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A88);
  }

  return result;
}

unint64_t sub_1ABD1613C()
{
  result = qword_1EB4D7A90;
  if (!qword_1EB4D7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A90);
  }

  return result;
}

unint64_t sub_1ABD16194()
{
  result = qword_1EB4D7A98;
  if (!qword_1EB4D7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7A98);
  }

  return result;
}

unint64_t sub_1ABD161EC()
{
  result = qword_1EB4D7AA0;
  if (!qword_1EB4D7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AA0);
  }

  return result;
}

unint64_t sub_1ABD16244()
{
  result = qword_1EB4D7AA8;
  if (!qword_1EB4D7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AA8);
  }

  return result;
}

unint64_t sub_1ABD1629C()
{
  result = qword_1EB4D7AB0;
  if (!qword_1EB4D7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AB0);
  }

  return result;
}

unint64_t sub_1ABD162F4()
{
  result = qword_1EB4D7AB8;
  if (!qword_1EB4D7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AB8);
  }

  return result;
}

unint64_t sub_1ABD1634C()
{
  result = qword_1EB4D7AC0;
  if (!qword_1EB4D7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AC0);
  }

  return result;
}

unint64_t sub_1ABD163A4()
{
  result = qword_1EB4D7AC8;
  if (!qword_1EB4D7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AC8);
  }

  return result;
}

unint64_t sub_1ABD163FC()
{
  result = qword_1EB4D7AD0;
  if (!qword_1EB4D7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AD0);
  }

  return result;
}

unint64_t sub_1ABD16454()
{
  result = qword_1EB4D7AD8;
  if (!qword_1EB4D7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AD8);
  }

  return result;
}

unint64_t sub_1ABD164AC()
{
  result = qword_1EB4D7AE0;
  if (!qword_1EB4D7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AE0);
  }

  return result;
}

unint64_t sub_1ABD16504()
{
  result = qword_1EB4D7AE8;
  if (!qword_1EB4D7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AE8);
  }

  return result;
}

unint64_t sub_1ABD1655C()
{
  result = qword_1EB4D7AF0;
  if (!qword_1EB4D7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AF0);
  }

  return result;
}

unint64_t sub_1ABD16608()
{
  result = qword_1EB4D7AF8;
  if (!qword_1EB4D7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7AF8);
  }

  return result;
}

unint64_t sub_1ABD1667C()
{
  result = qword_1EB4D7B00;
  if (!qword_1EB4D7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B00);
  }

  return result;
}

unint64_t sub_1ABD166D4()
{
  result = qword_1EB4D7B08;
  if (!qword_1EB4D7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B08);
  }

  return result;
}

unint64_t sub_1ABD1672C()
{
  result = qword_1EB4D7B10;
  if (!qword_1EB4D7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B10);
  }

  return result;
}

unint64_t sub_1ABD167A0()
{
  result = qword_1EB4D7B18;
  if (!qword_1EB4D7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B18);
  }

  return result;
}

unint64_t sub_1ABD167F8()
{
  result = qword_1EB4D7B20;
  if (!qword_1EB4D7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B20);
  }

  return result;
}

unint64_t sub_1ABD16888()
{
  result = qword_1EB4D7B28;
  if (!qword_1EB4D7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B28);
  }

  return result;
}

unint64_t sub_1ABD16934()
{
  result = qword_1EB4D7B30;
  if (!qword_1EB4D7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B30);
  }

  return result;
}

unint64_t sub_1ABD1698C()
{
  result = qword_1EB4D7B38;
  if (!qword_1EB4D7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B38);
  }

  return result;
}

unint64_t sub_1ABD16A54()
{
  result = qword_1EB4D7B40;
  if (!qword_1EB4D7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B40);
  }

  return result;
}

unint64_t sub_1ABD16AAC()
{
  result = qword_1EB4D7B48;
  if (!qword_1EB4D7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B48);
  }

  return result;
}

unint64_t sub_1ABD16B04()
{
  result = qword_1EB4D7B50;
  if (!qword_1EB4D7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B50);
  }

  return result;
}

unint64_t sub_1ABD16B5C()
{
  result = qword_1EB4D7B58;
  if (!qword_1EB4D7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B58);
  }

  return result;
}

unint64_t sub_1ABD16BEC()
{
  result = qword_1EB4D7B60;
  if (!qword_1EB4D7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B60);
  }

  return result;
}

unint64_t sub_1ABD16C44()
{
  result = qword_1EB4D7B68;
  if (!qword_1EB4D7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B68);
  }

  return result;
}

unint64_t sub_1ABD16C9C()
{
  result = qword_1EB4D7B70;
  if (!qword_1EB4D7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B70);
  }

  return result;
}

unint64_t sub_1ABD16CF4()
{
  result = qword_1EB4D7B78;
  if (!qword_1EB4D7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B78);
  }

  return result;
}

unint64_t sub_1ABD16D4C()
{
  result = qword_1EB4D7B80;
  if (!qword_1EB4D7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B80);
  }

  return result;
}

unint64_t sub_1ABD16DA4()
{
  result = qword_1EB4D7B88;
  if (!qword_1EB4D7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B88);
  }

  return result;
}

unint64_t sub_1ABD16E34()
{
  result = qword_1EB4D7B90;
  if (!qword_1EB4D7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B90);
  }

  return result;
}

unint64_t sub_1ABD16E8C()
{
  result = qword_1EB4D7B98;
  if (!qword_1EB4D7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7B98);
  }

  return result;
}

unint64_t sub_1ABD16F8C()
{
  result = qword_1EB4D7BA0;
  if (!qword_1EB4D7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BA0);
  }

  return result;
}

unint64_t sub_1ABD16FE4()
{
  result = qword_1EB4D7BA8;
  if (!qword_1EB4D7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BA8);
  }

  return result;
}

unint64_t sub_1ABD1703C()
{
  result = qword_1EB4D7BB0;
  if (!qword_1EB4D7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BB0);
  }

  return result;
}

unint64_t sub_1ABD17094()
{
  result = qword_1EB4D7BB8;
  if (!qword_1EB4D7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BB8);
  }

  return result;
}

unint64_t sub_1ABD170EC()
{
  result = qword_1EB4D7BC0;
  if (!qword_1EB4D7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BC0);
  }

  return result;
}

unint64_t sub_1ABD17144()
{
  result = qword_1EB4D7BC8;
  if (!qword_1EB4D7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BC8);
  }

  return result;
}

unint64_t sub_1ABD1719C()
{
  result = qword_1EB4D7BD0;
  if (!qword_1EB4D7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BD0);
  }

  return result;
}

unint64_t sub_1ABD171F4()
{
  result = qword_1EB4D7BD8;
  if (!qword_1EB4D7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BD8);
  }

  return result;
}

unint64_t sub_1ABD1724C()
{
  result = qword_1EB4D7BE0;
  if (!qword_1EB4D7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BE0);
  }

  return result;
}

unint64_t sub_1ABD172A4()
{
  result = qword_1EB4D7BE8;
  if (!qword_1EB4D7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BE8);
  }

  return result;
}

unint64_t sub_1ABD172FC()
{
  result = qword_1EB4D7BF0;
  if (!qword_1EB4D7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BF0);
  }

  return result;
}

unint64_t sub_1ABD17354()
{
  result = qword_1EB4D7BF8;
  if (!qword_1EB4D7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7BF8);
  }

  return result;
}

unint64_t sub_1ABD173AC()
{
  result = qword_1EB4D7C00;
  if (!qword_1EB4D7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C00);
  }

  return result;
}

unint64_t sub_1ABD17404()
{
  result = qword_1EB4D7C08;
  if (!qword_1EB4D7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C08);
  }

  return result;
}

unint64_t sub_1ABD1745C()
{
  result = qword_1EB4D7C10;
  if (!qword_1EB4D7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C10);
  }

  return result;
}

unint64_t sub_1ABD174B4()
{
  result = qword_1EB4D7C18;
  if (!qword_1EB4D7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C18);
  }

  return result;
}

unint64_t sub_1ABD1750C()
{
  result = qword_1EB4D7C20;
  if (!qword_1EB4D7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C20);
  }

  return result;
}

unint64_t sub_1ABD17564()
{
  result = qword_1EB4D7C28;
  if (!qword_1EB4D7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C28);
  }

  return result;
}

unint64_t sub_1ABD175BC()
{
  result = qword_1EB4D7C30;
  if (!qword_1EB4D7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C30);
  }

  return result;
}

unint64_t sub_1ABD17614()
{
  result = qword_1EB4D7C38;
  if (!qword_1EB4D7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C38);
  }

  return result;
}

unint64_t sub_1ABD1766C()
{
  result = qword_1EB4D7C40;
  if (!qword_1EB4D7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C40);
  }

  return result;
}

unint64_t sub_1ABD176C4()
{
  result = qword_1EB4D7C48;
  if (!qword_1EB4D7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C48);
  }

  return result;
}

unint64_t sub_1ABD1771C()
{
  result = qword_1EB4D7C50;
  if (!qword_1EB4D7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C50);
  }

  return result;
}

unint64_t sub_1ABD17774()
{
  result = qword_1EB4D7C58;
  if (!qword_1EB4D7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C58);
  }

  return result;
}

unint64_t sub_1ABD177CC()
{
  result = qword_1EB4D7C60;
  if (!qword_1EB4D7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C60);
  }

  return result;
}

unint64_t sub_1ABD17824()
{
  result = qword_1EB4D7C68;
  if (!qword_1EB4D7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C68);
  }

  return result;
}

unint64_t sub_1ABD1787C()
{
  result = qword_1EB4D7C70;
  if (!qword_1EB4D7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C70);
  }

  return result;
}

unint64_t sub_1ABD178D4()
{
  result = qword_1EB4D7C78;
  if (!qword_1EB4D7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C78);
  }

  return result;
}

unint64_t sub_1ABD1792C()
{
  result = qword_1EB4D7C80;
  if (!qword_1EB4D7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C80);
  }

  return result;
}

unint64_t sub_1ABD17984()
{
  result = qword_1EB4D7C88;
  if (!qword_1EB4D7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C88);
  }

  return result;
}

unint64_t sub_1ABD179DC()
{
  result = qword_1EB4D7C90;
  if (!qword_1EB4D7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C90);
  }

  return result;
}

unint64_t sub_1ABD17A34()
{
  result = qword_1EB4D7C98;
  if (!qword_1EB4D7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7C98);
  }

  return result;
}

unint64_t sub_1ABD17A8C()
{
  result = qword_1EB4D7CA0;
  if (!qword_1EB4D7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CA0);
  }

  return result;
}

unint64_t sub_1ABD17AE4()
{
  result = qword_1EB4D7CA8;
  if (!qword_1EB4D7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CA8);
  }

  return result;
}

unint64_t sub_1ABD17B3C()
{
  result = qword_1EB4D7CB0;
  if (!qword_1EB4D7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CB0);
  }

  return result;
}

unint64_t sub_1ABD17B94()
{
  result = qword_1EB4D7CB8;
  if (!qword_1EB4D7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CB8);
  }

  return result;
}

unint64_t sub_1ABD17BEC()
{
  result = qword_1EB4D7CC0;
  if (!qword_1EB4D7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CC0);
  }

  return result;
}

unint64_t sub_1ABD17C44()
{
  result = qword_1EB4D7CC8;
  if (!qword_1EB4D7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CC8);
  }

  return result;
}

unint64_t sub_1ABD17C9C()
{
  result = qword_1EB4D7CD0;
  if (!qword_1EB4D7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CD0);
  }

  return result;
}

unint64_t sub_1ABD17CF4()
{
  result = qword_1EB4D7CD8;
  if (!qword_1EB4D7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CD8);
  }

  return result;
}

unint64_t sub_1ABD17D4C()
{
  result = qword_1EB4D7CE0;
  if (!qword_1EB4D7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CE0);
  }

  return result;
}

unint64_t sub_1ABD17DA4()
{
  result = qword_1EB4D7CE8;
  if (!qword_1EB4D7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CE8);
  }

  return result;
}

unint64_t sub_1ABD17DFC()
{
  result = qword_1EB4D7CF0;
  if (!qword_1EB4D7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CF0);
  }

  return result;
}

unint64_t sub_1ABD17E54()
{
  result = qword_1EB4D7CF8;
  if (!qword_1EB4D7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7CF8);
  }

  return result;
}

unint64_t sub_1ABD17EAC()
{
  result = qword_1EB4D7D00;
  if (!qword_1EB4D7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D00);
  }

  return result;
}

unint64_t sub_1ABD17F04()
{
  result = qword_1EB4D7D08;
  if (!qword_1EB4D7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D08);
  }

  return result;
}

unint64_t sub_1ABD17F5C()
{
  result = qword_1EB4D7D10;
  if (!qword_1EB4D7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D10);
  }

  return result;
}

unint64_t sub_1ABD17FB4()
{
  result = qword_1EB4D7D18;
  if (!qword_1EB4D7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D18);
  }

  return result;
}

unint64_t sub_1ABD1800C()
{
  result = qword_1EB4D7D20;
  if (!qword_1EB4D7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D20);
  }

  return result;
}

unint64_t sub_1ABD18064()
{
  result = qword_1EB4D7D28;
  if (!qword_1EB4D7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D28);
  }

  return result;
}

unint64_t sub_1ABD180BC()
{
  result = qword_1EB4D7D30;
  if (!qword_1EB4D7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D30);
  }

  return result;
}

unint64_t sub_1ABD18114()
{
  result = qword_1EB4D7D38;
  if (!qword_1EB4D7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D38);
  }

  return result;
}

unint64_t sub_1ABD1816C()
{
  result = qword_1EB4D7D40;
  if (!qword_1EB4D7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D40);
  }

  return result;
}

unint64_t sub_1ABD181C4()
{
  result = qword_1EB4D7D48;
  if (!qword_1EB4D7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D48);
  }

  return result;
}

unint64_t sub_1ABD1821C()
{
  result = qword_1EB4D7D50;
  if (!qword_1EB4D7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D50);
  }

  return result;
}

unint64_t sub_1ABD18274()
{
  result = qword_1EB4D7D58;
  if (!qword_1EB4D7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D58);
  }

  return result;
}

unint64_t sub_1ABD182CC()
{
  result = qword_1EB4D7D60;
  if (!qword_1EB4D7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D60);
  }

  return result;
}

unint64_t sub_1ABD18324()
{
  result = qword_1EB4D7D68;
  if (!qword_1EB4D7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D68);
  }

  return result;
}

unint64_t sub_1ABD1837C()
{
  result = qword_1EB4D7D70;
  if (!qword_1EB4D7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D70);
  }

  return result;
}

unint64_t sub_1ABD183D4()
{
  result = qword_1EB4D7D78;
  if (!qword_1EB4D7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D78);
  }

  return result;
}

unint64_t sub_1ABD1842C()
{
  result = qword_1EB4D7D80;
  if (!qword_1EB4D7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D80);
  }

  return result;
}

unint64_t sub_1ABD18484()
{
  result = qword_1EB4D7D88;
  if (!qword_1EB4D7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D88);
  }

  return result;
}

unint64_t sub_1ABD184DC()
{
  result = qword_1EB4D7D90;
  if (!qword_1EB4D7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D90);
  }

  return result;
}

unint64_t sub_1ABD18534()
{
  result = qword_1EB4D7D98;
  if (!qword_1EB4D7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7D98);
  }

  return result;
}

unint64_t sub_1ABD1858C()
{
  result = qword_1EB4D7DA0;
  if (!qword_1EB4D7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DA0);
  }

  return result;
}

unint64_t sub_1ABD185E4()
{
  result = qword_1EB4D7DA8;
  if (!qword_1EB4D7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DA8);
  }

  return result;
}

unint64_t sub_1ABD1863C()
{
  result = qword_1EB4D7DB0;
  if (!qword_1EB4D7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DB0);
  }

  return result;
}

unint64_t sub_1ABD18694()
{
  result = qword_1EB4D7DB8;
  if (!qword_1EB4D7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DB8);
  }

  return result;
}

unint64_t sub_1ABD186EC()
{
  result = qword_1EB4D7DC0;
  if (!qword_1EB4D7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DC0);
  }

  return result;
}

unint64_t sub_1ABD18744()
{
  result = qword_1EB4D7DC8;
  if (!qword_1EB4D7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DC8);
  }

  return result;
}

unint64_t sub_1ABD1879C()
{
  result = qword_1EB4D7DD0;
  if (!qword_1EB4D7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DD0);
  }

  return result;
}

unint64_t sub_1ABD187F4()
{
  result = qword_1EB4D7DD8;
  if (!qword_1EB4D7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DD8);
  }

  return result;
}

unint64_t sub_1ABD1884C()
{
  result = qword_1EB4D7DE0;
  if (!qword_1EB4D7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DE0);
  }

  return result;
}

unint64_t sub_1ABD188A4()
{
  result = qword_1EB4D7DE8;
  if (!qword_1EB4D7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DE8);
  }

  return result;
}

unint64_t sub_1ABD188FC()
{
  result = qword_1EB4D7DF0;
  if (!qword_1EB4D7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DF0);
  }

  return result;
}

unint64_t sub_1ABD18954()
{
  result = qword_1EB4D7DF8;
  if (!qword_1EB4D7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7DF8);
  }

  return result;
}

unint64_t sub_1ABD189AC()
{
  result = qword_1EB4D7E00;
  if (!qword_1EB4D7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E00);
  }

  return result;
}

unint64_t sub_1ABD18A04()
{
  result = qword_1EB4D7E08;
  if (!qword_1EB4D7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E08);
  }

  return result;
}

unint64_t sub_1ABD18A5C()
{
  result = qword_1EB4D7E10;
  if (!qword_1EB4D7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E10);
  }

  return result;
}

unint64_t sub_1ABD18AB4()
{
  result = qword_1EB4D7E18;
  if (!qword_1EB4D7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E18);
  }

  return result;
}

unint64_t sub_1ABD18B0C()
{
  result = qword_1EB4D7E20;
  if (!qword_1EB4D7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E20);
  }

  return result;
}

unint64_t sub_1ABD18B64()
{
  result = qword_1EB4D7E28;
  if (!qword_1EB4D7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E28);
  }

  return result;
}

unint64_t sub_1ABD18BBC()
{
  result = qword_1EB4D7E30;
  if (!qword_1EB4D7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E30);
  }

  return result;
}

unint64_t sub_1ABD18C14()
{
  result = qword_1EB4D7E38;
  if (!qword_1EB4D7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E38);
  }

  return result;
}

unint64_t sub_1ABD18C6C()
{
  result = qword_1EB4D7E40;
  if (!qword_1EB4D7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E40);
  }

  return result;
}

unint64_t sub_1ABD18CC4()
{
  result = qword_1EB4D7E48;
  if (!qword_1EB4D7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E48);
  }

  return result;
}

unint64_t sub_1ABD18D1C()
{
  result = qword_1EB4D7E50;
  if (!qword_1EB4D7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E50);
  }

  return result;
}

unint64_t sub_1ABD18D74()
{
  result = qword_1EB4D7E58;
  if (!qword_1EB4D7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E58);
  }

  return result;
}

__n128 sub_1ABD18EC0(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  memcpy(__dst, __src, 0x62uLL);
  sub_1ABCACEA0(__dst, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10);
  return result;
}

uint64_t sub_1ABD18F94(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_1ABD08F0C(v3);
}

__n128 sub_1ABD19014(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  memcpy(__dst, __src, 0x62uLL);
  sub_1ABCC5278(__dst, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10);
  return result;
}

__n128 sub_1ABD190C8(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  memcpy(__dst, __src, 0x62uLL);
  sub_1ABC9B250(__dst, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, a11);
  return result;
}

uint64_t sub_1ABD1917C()
{
  sub_1ABD1ADC0();
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  return sub_1ABB6D978() & 1;
}

void sub_1ABD19638()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1ABA9E218();
  sub_1ABCDEAC8(v4, v5, v6, v7, v8, v9, v10, v11, v3.n128_i64[0], v3.n128_i64[1], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23], v0[24], v0[25], v0[26], v0[27], v0[28], v12, v13);
}

unint64_t sub_1ABD19698()
{
  result = qword_1EB4D7E68;
  if (!qword_1EB4D7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E68);
  }

  return result;
}

unint64_t sub_1ABD196EC()
{
  result = qword_1EB4D7E70;
  if (!qword_1EB4D7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E70);
  }

  return result;
}

unint64_t sub_1ABD19740()
{
  result = qword_1EB4D7E78;
  if (!qword_1EB4D7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E78);
  }

  return result;
}

double sub_1ABD19794()
{
  sub_1ABD1ADC0();
  v1 = sub_1ABD1C010();
  *&result = sub_1ABD0D228(v2, v3, v4, v5, v6, v7, v8, v9, *&v1, *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 168), *(v0 + 184), *(v0 + 200), *(v0 + 208)).n128_u64[0];
  return result;
}

uint64_t sub_1ABD19844()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1ABAA4EC8();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1ABD19960()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  sub_1ABAA267C();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

unint64_t sub_1ABD19AE4()
{
  result = qword_1EB4D7E88;
  if (!qword_1EB4D7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E88);
  }

  return result;
}

uint64_t sub_1ABD19B9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABA9E218();
  return v7(v3, v4, v5, v6);
}

uint64_t sub_1ABD19C00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABD19D90()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  sub_1ABD1B534();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1ABD19E38()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1ABA9E218();
  v10 = v0[13];
  return v8(v3, v4, v5, v6, v7);
}

unint64_t sub_1ABD19E78()
{
  result = qword_1EB4D7E90;
  if (!qword_1EB4D7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E90);
  }

  return result;
}

uint64_t sub_1ABD19ECC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ABD19F78()
{
  sub_1ABD1ADC0();
  sub_1ABD1C010();
  v6 = *(v0 + 88);
  return v4(v1, v2, v3);
}

void sub_1ABD19FD0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1ABA9E218();
  sub_1ABC9C4D8(v4, v5, v6, v7, v8, v9, v10, v11, v3.n128_i64[0], v3.n128_i64[1], v0[13], v0[14], v12, v13);
}

double sub_1ABD1A004()
{
  sub_1ABD1ADC0();
  v1 = sub_1ABD1C010();
  *&result = sub_1ABD190C8(v2, v3, v4, v5, v6, v7, v8, v9, *&v1, *(v0 + 88), *(v0 + 96)).n128_u64[0];
  return result;
}

unint64_t sub_1ABD1A064()
{
  result = qword_1EB4D7E98;
  if (!qword_1EB4D7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D7E98);
  }

  return result;
}

void sub_1ABD1A0B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1ABA9E218();
  sub_1ABC8F8F8(v4, v5, v6, v7, v8, v9, v10, v11, v3.n128_i64[0], v3.n128_i64[1], v0[13], v0[14], v0[15], v12, v13);
}

uint64_t sub_1ABD1A26C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  sub_1ABA807B4();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABD1A300()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  sub_1ABA807B4();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1ABD1A3A4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = sub_1ABAB10A4();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1ABD1A43C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  sub_1ABA88928();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1ABD1A4DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1ABD1A580()
{
  sub_1ABD1ADC0();
  v1 = *(v0 + 72);
  v6 = *(v0 + 80);
  return v4(v2, v3);
}

uint64_t sub_1ABD1A5B8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  sub_1ABD1B534();

  return MEMORY[0x1EEE6BDD0](v13, v14, v15);
}

double sub_1ABD1A644()
{
  sub_1ABD1ADC0();
  v1 = sub_1ABD1C010();
  *&result = sub_1ABD0D65C(v2, v3, v4, v5, v6, v7, v8, v9, *&v1, *(v0 + 88), *(v0 + 104)).n128_u64[0];
  return result;
}

uint64_t sub_1ABD1A67C()
{
  sub_1ABD1ADC0();
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  return sub_1ABB6D910() & 1;
}

uint64_t sub_1ABD1A6AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_1ABAA267C();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1ABD1AC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = v2;
  *(v3 - 96) = a2;
  *(v3 - 88) = a1;
  *(v3 - 65) = 1;
}

void sub_1ABD1AC8C()
{

  sub_1ABCA11F0();
}

unint64_t sub_1ABD1ACBC()
{

  return sub_1ABC7B1C0();
}

uint64_t sub_1ABD1ACF0()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 136);

  return sub_1ABF24F84();
}

uint64_t sub_1ABD1AD7C()
{
  *(v3 - 112) = v1;
  v4 = *(v2 + 8);
  return v0;
}

uint64_t sub_1ABD1AD90()
{

  return sub_1ABF24E64();
}

void sub_1ABD1ADC0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

void sub_1ABD1ADD0(int a1@<W8>)
{
  *(v1 - 200) = a1;
  *(v1 - 196) = a1;
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
}

void sub_1ABD1AE00(uint64_t a1, unint64_t *a2, uint64_t a3)
{

  sub_1ABD14198(319, a2, a3, type metadata accessor for OneOf);
}

void sub_1ABD1AE28()
{
  v6 = v3 + v2;
  *v6 = v5;
  *(v6 + 8) = v1;
  *(v6 + 16) = v0;
  v7 = *(v4 + 16);
}

uint64_t sub_1ABD1AE3C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 144);
  return result;
}

uint64_t sub_1ABD1AE84()
{
  v3 = v1[5];
  v0[7] = v1[4];
  v0[8] = v3;
  v0[9] = v1[6];
  *(v0 + 153) = *(v1 + 105);

  return sub_1ABD19208((v0 + 7));
}

uint64_t sub_1ABD1AEB0()
{
  result = v0 - 112;
  v2 = *(v0 - 120);
  return result;
}

uint64_t sub_1ABD1AEC0()
{
  result = v0[46];
  v2 = v0[47];
  v3 = v0[49];
  v4 = v0[1];
  return result;
}

__n128 sub_1ABD1AED4(__n128 a1)
{
  *v1 = a1;
  *(v1 + 24) = *(v2 + 24);
  result = *(v2 + 40);
  *(v1 + 40) = result;
  return result;
}

void sub_1ABD1AEEC(uint64_t a1@<X8>)
{
  v5 = v4 + v3;
  *v5 = a1;
  *(v5 + 8) = v1;
  *(v5 + 16) = v2;
}

uint64_t sub_1ABD1AF10()
{
  result = v0 - 136;
  v2 = *(v0 - 144);
  return result;
}

void sub_1ABD1AF54()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
}

uint64_t sub_1ABD1AF60()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABD1B03C()
{

  return swift_beginAccess();
}

uint64_t sub_1ABD1B058()
{

  return swift_beginAccess();
}

uint64_t sub_1ABD1B080()
{

  return swift_beginAccess();
}

uint64_t sub_1ABD1B0B0()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1ABD1B0CC()
{

  return sub_1ABCF9424();
}

uint64_t sub_1ABD1B0E8()
{

  return swift_beginAccess();
}

__n128 sub_1ABD1B11C()
{
  *(v0 + 16) = *(v1 - 104);
  result = *(v1 - 96);
  *(v0 + 24) = result;
  *(v1 - 104) = 3;
  return result;
}

void sub_1ABD1B138(int a1@<W8>)
{
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
}

void sub_1ABD1B190(uint64_t a1@<X8>)
{
  v5 = v4 + v3;
  *v5 = a1;
  *(v5 + 8) = v2;
  v6 = *(v1 + 16);
}

uint64_t sub_1ABD1B1F4()
{

  return swift_beginAccess();
}

uint64_t sub_1ABD1B294()
{
  v2 = *(v0 - 144);

  return sub_1ABF24E64();
}

void sub_1ABD1B2B4(void *a1)
{

  _os_log_impl(a1, v1, v2, v4, v3, 2u);
}

void sub_1ABD1B2D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  *(v1 - 128) = v0[4];
  *(v1 - 120) = v2;
  *(v1 - 144) = v4;
  *(v1 - 136) = v3;
}

uint64_t sub_1ABD1B2FC()
{
  v3 = *(v0 + *(v1 + 40));
}

uint64_t sub_1ABD1B314()
{
  v3 = *(v0 + *(v1 + 32));
}

uint64_t sub_1ABD1B33C()
{
  v4 = *(v1 - 104);
  v3 = *(v1 - 96);
  v5 = *(v1 - 88);
  v7 = *(v1 - 120);
  v6 = *(v1 - 112);
  *v6 = v0;
  v6[1] = v7;
  v8 = *(v1 - 128);
  v6[2] = *(v1 - 136);
  v6[3] = v8;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v5;
}

uint64_t sub_1ABD1B370()
{
  v3 = *(v0 + *(v1 + 28));
}

void sub_1ABD1B388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(uint64_t))
{

  sub_1ABCA243C(a1, a2, a3, a4, a5, a6, a7, a8, v23, v24, v25, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

void sub_1ABD1B3A0()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
}

uint64_t sub_1ABD1B3E8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 24);
  *v1 = *(v3 + 8);
  *(v1 + 16) = v5;
  *(v1 + 32) = v4;
  return v5;
}

uint64_t sub_1ABD1B414()
{

  return sub_1ABF24E64();
}

void *sub_1ABD1B42C()
{
  *(v1 + 16) = v0;

  return memcpy((v1 + 88 * v2 + 32), (v3 - 200), 0x58uLL);
}

void *sub_1ABD1B45C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char __src)
{
  *(v31 + 16) = v30;

  return memcpy((v31 + 88 * v32 + 32), &__src, 0x58uLL);
}

uint64_t sub_1ABD1B48C()
{
}

uint64_t sub_1ABD1B4BC()
{
  v2 = *(v0 - 128);

  return sub_1ABF24E64();
}

uint64_t sub_1ABD1B4DC()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABD1B4FC()
{
  v2 = *(v0 - 240);

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1ABD1B51C()
{

  return sub_1ABF24E64();
}

void sub_1ABD1B540()
{
  v3 = *(v2 + 16);
  *(v3 + 16) = v0 + 1;
  *(v3 + 8 * v0 + 32) = v1;
  *(v2 + 16) = v3;
}

uint64_t sub_1ABD1B55C()
{

  return sub_1ABADD6D8(v0, v1, (v2 - 192));
}

uint64_t sub_1ABD1B584@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = *a1;

  return sub_1ABB2B834(a2);
}

uint64_t sub_1ABD1B5D8()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABD1B5F4(uint64_t result, uint64_t a2)
{
  v6 = (v3 + *(v5 + 72));
  *(v2 + 232) = v4;
  *v6 = v4;
  v6[1] = result;
  v6[2] = a2;
  return result;
}

__n128 sub_1ABD1B634@<Q0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = *(v3 - 120);
  result = *(v3 - 104);
  *(v2 + 24) = result;
  *(v2 + 40) = v1;
  return result;
}

uint64_t sub_1ABD1B650()
{
  v2 = *(*(v1 - 328) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

void sub_1ABD1B6B4()
{
  v1 = *(v0 - 376);
  v2 = *(v0 - 360);
  v3 = *(v0 - 368);
}

void *sub_1ABD1B718(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char __src)
{
  *(v30 + 16) = v32;

  return memcpy((v30 + 88 * v31 + 32), &__src, 0x58uLL);
}

uint64_t sub_1ABD1B744@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
}

void sub_1ABD1B760()
{

  sub_1ABAA6788();
}

uint64_t sub_1ABD1B788()
{

  return sub_1ABF25234();
}

uint64_t sub_1ABD1B7A4()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABD1B7EC()
{
  result = *(v1 + 40);
  v3 = *(v0 + 80);
  return result;
}

uint64_t sub_1ABD1B81C@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 992);
  v2 = *(a1 + 1000);
  return *(a1 + 984);
}

uint64_t sub_1ABD1B84C()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 96);
}

uint64_t sub_1ABD1B864@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 896);
  v2 = *(a1 + 904);
  return *(a1 + 888);
}

void sub_1ABD1B894(uint64_t a1@<X8>)
{
  *(v3 - 128) = a1;
  *(v3 - 120) = v1;
  v4 = *(v2 + 32);
  *(v3 - 144) = *(v2 + 40);
  *(v3 - 136) = v4;
}

__n128 sub_1ABD1B8C4@<Q0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = *(v2 - 96);
  *(v1 + 8) = result;
  return result;
}

uint64_t sub_1ABD1B8D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = *(v2 + 8);
  v4 = *(v2 + 16);
  return result;
}

void sub_1ABD1B8E4(char a1@<W8>)
{
  *v2 = v3;
  *(v2 + 8) = v1;
  *(v2 + 16) = a1;
}

void sub_1ABD1B924(uint64_t a1@<X8>)
{
  v3 = *(a1 + 7);

  EntityClass.init(intValue:)(v3, v1 - 152);
}

uint64_t sub_1ABD1B94C()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 120);
}

uint64_t sub_1ABD1B964()
{
  v2 = *(v0 - 576);
}

uint64_t sub_1ABD1B97C()
{
  v2 = *(v0 - 112);

  return sub_1ABF24F84();
}

uint64_t sub_1ABD1B9CC()
{

  return sub_1ABF24E64();
}

void *sub_1ABD1B9E4()
{

  return ActivityEventType.init(activityTypeEntityClass:)((v0 - 152), (v0 - 176));
}

uint64_t sub_1ABD1BA14()
{
  *(v0 - 112) = *(v0 - 96);
  result = v0 - 112;
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);
  v4 = *(v0 - 128);
  return result;
}

void sub_1ABD1BA2C(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2] = a2;
  *a1 = a2;
}

void sub_1ABD1BA68()
{
  *(v0 + *(v1 + 28)) = v4;
  *(v0 + *(v1 + 32)) = v3;
  v5 = *(v2 + 16);
}

void sub_1ABD1BAB0()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 120);
  *(v0 - 96) = v1;
}

void sub_1ABD1BAD4(char a1@<W8>)
{
  v4 = v3 + *(v2 + 60);
  *v4 = v1;
  *(v4 + 8) = a1;
}

uint64_t sub_1ABD1BAF8(uint64_t result)
{
  *(v1 - 112) = result;
  v2 = **(v1 - 136);
  return result;
}

void sub_1ABD1BB10(uint64_t a1@<X8>)
{
  v6 = v3 + *(v5 + 44);
  *v6 = v4;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  v7 = *(a1 + 16);
}

uint64_t sub_1ABD1BB34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t sub_1ABD1BB4C()
{

  return sub_1ABAE2EC4();
}

uint64_t sub_1ABD1BB64()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
}

uint64_t sub_1ABD1BBB8()
{

  return sub_1ABF24F84();
}

void *sub_1ABD1BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *v15 = a15;

  return memcpy(v15 + 24, (v16 + 24), 0x58uLL);
}

uint64_t sub_1ABD1BBF8()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABD1BC14()
{

  return sub_1ABF24124();
}

uint64_t sub_1ABD1BC38()
{
}

uint64_t sub_1ABD1BC5C()
{
  v2 = *(v0 - 352);
}

uint64_t sub_1ABD1BCB4()
{

  return sub_1ABF24E64();
}

void sub_1ABD1BCCC(char a1@<W8>)
{
  *v2 = v3;
  *(v2 + 8) = v1;
  *(v2 + 16) = a1;
}

__n128 sub_1ABD1BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, unint64_t a16, __n128 a17)
{
  result = a17;
  v17->n128_u64[0] = a15;
  v17->n128_u64[1] = a16;
  v17[1] = a17;
  return result;
}

__n128 sub_1ABD1BD24()
{
  v3 = *(v2 - 104);
  result = *(v2 - 96);
  v0->n128_u64[0] = v1;
  v0->n128_u64[1] = v3;
  v0[1] = result;
  return result;
}

uint64_t sub_1ABD1BDC4(uint64_t result)
{
  *(v2 - 96) = result;
  *(v2 - 136) = v1 + 16;
  *(v2 - 128) = v1 + 8;
  return result;
}

__n128 sub_1ABD1BDD8()
{
  *(v0 + 56) = *(v1 + 56);
  result = *(v1 + 72);
  *(v0 + 72) = result;
  return result;
}

uint64_t sub_1ABD1BE10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(v4 - 72) = a3;
  *(v4 - 144) = a2;
  *(v4 - 136) = result;
  *(v4 - 168) = a4;
  return result;
}

void sub_1ABD1BECC(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 112) = v1;
  *(v2 - 104) = v3;
}

void sub_1ABD1BEFC(uint64_t a1@<X8>)
{
  v6 = v4 + v3;
  *v6 = v5;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  v7 = *(a1 + 16);
}

void sub_1ABD1BF38()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[63];
}

void sub_1ABD1BF44()
{
  v1 = *(v0 - 128);
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
}

void sub_1ABD1BF50()
{
  v2 = v0[6];
  *(v1 - 160) = v0[7];
  *(v1 - 152) = v2;
  v3 = v0[9];
  *(v1 - 184) = v0[8];
  *(v1 - 176) = v3;
}

void sub_1ABD1BF64()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[61];
}

uint64_t sub_1ABD1BF70@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(v3 - 128) = result;
  *(v3 - 120) = v2;
  *(v3 - 112) = a2;
  return result;
}

void sub_1ABD1BF88()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v0;
}

void sub_1ABD1BFBC(char a1@<W8>)
{
  v5 = v4 + *(v2 + 52);
  *v5 = v3;
  *(v5 + 8) = v1;
  *(v5 + 16) = a1;
}

void sub_1ABD1BFF0(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v5 = a1;
  *(v5 + 8) = v3;
  *(v5 + 16) = a2;
  *(v5 + 32) = v4;
  *(v5 + 40) = a3;
}

void sub_1ABD1C028()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_1ABD1C0A4()
{

  return swift_getWitnessTable();
}

void sub_1ABD1C0C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1ABD1C0E4()
{

  return sub_1ABAE2EC4();
}

uint64_t sub_1ABD1C164()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABD1C184()
{
  v2 = *(v0 + 80);

  return sub_1ABF24F84();
}

char *sub_1ABD1C1A4(char *a1)
{

  return sub_1ABADDE9C(a1, v1, 1);
}

uint64_t sub_1ABD1C1C4()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABD1C1E4@<X0>(uint64_t a1@<X8>)
{
  v7 = v1 + a1;
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  v8 = *(v2 + 160);
}

uint64_t sub_1ABD1C204@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v3 = *(a1 + 536);
  v4 = *(a1 + 544);
  v5 = *(a1 + 528);

  return sub_1ABA8882C(v5, v3, v4, va);
}

uint64_t sub_1ABD1C224()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 88);
}

uint64_t sub_1ABD1C23C(uint64_t a1)
{
  v2 = *(a1 + 24);
}

uint64_t sub_1ABD1C254()
{
}

uint64_t sub_1ABD1C26C()
{
  v2 = *v0;

  return sub_1ABB2B834(v2);
}

uint64_t sub_1ABD1C284()
{
  v2 = *v0;

  return sub_1ABB2B834(v2);
}

void *sub_1ABD1C29C(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xE8uLL);
}

uint64_t sub_1ABD1C2B4()
{
  v2 = *(v0 - 288);
}

uint64_t sub_1ABD1C2CC()
{
  v2 = *(v0 + 16);
}

uint64_t sub_1ABD1C2E4()
{
  v2 = *(v0 + 16);

  return sub_1ABB2B834(v2);
}

uint64_t sub_1ABD1C2FC()
{
  v2 = *(v0 - 480);
}

uint64_t sub_1ABD1C314()
{
  v2 = *(v0 - 96);
}

uint64_t sub_1ABD1C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return sub_1ABD0E5A0(&a30, &a19);
}

uint64_t sub_1ABD1C344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1ABC81B08(&a9, a2);
}