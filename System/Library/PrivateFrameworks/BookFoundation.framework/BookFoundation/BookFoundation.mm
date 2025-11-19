uint64_t static Capabilities.isInternalBuild.getter()
{
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_2810D5780;
}

uint64_t sub_241C8D9EC()
{
  result = os_variant_has_internal_content();
  byte_2810D5780 = result;
  return result;
}

uint64_t sub_241C8DA14(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall String.append(pathComponent:)(Swift::String pathComponent)
{
  v1 = sub_241CF9008();
  v2 = sub_241CF9008();
  v3 = [v1 stringByAppendingPathComponent_];

  v4 = sub_241CF9038();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void sub_241C8DB10()
{
  v0 = _sSo14NSUserDefaultsC14BookFoundationE05booksB16NeedingMigrationABSgyFZ_0();
  if (qword_2810D56C8 != -1)
  {
    swift_once();
  }

  v1 = qword_2810D56D0;
  sub_241C93918(&qword_27EC6A9B0, &qword_241CFF520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241CFF510;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x8000000241D00EA0;
  v3 = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 72) = v3;
  strcpy((inited + 80), "BKMenuOnLeft");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 120) = v3;
  *(inited + 96) = 0;
  sub_241C8E044(inited);
  swift_setDeallocating();
  sub_241C93918(&qword_27EC6A7C8, &qword_241CFEDC0);
  swift_arrayDestroy();
  v4 = sub_241CF8EE8();

  [v1 registerDefaults_];

  if (v0)
  {
    sub_241CD4268(v0);
  }
}

id _sSo14NSUserDefaultsC14BookFoundationE05booksB16NeedingMigrationABSgyFZ_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_241CF9008();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_241CF95F8();
    swift_unknownObjectRelease();
  }

  else
  {

    v0 = 0;
    memset(v4, 0, sizeof(v4));
  }

  sub_241C8DA14(v4);
  return v0;
}

id sub_241C8DD6C()
{
  result = sub_241C8DD8C();
  qword_2810D56D0 = result;
  return result;
}

id sub_241C8DD8C()
{
  v0 = sub_241CF8CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundlePath];

  v7 = sub_241CF9038();
  v9 = v8;

  v19[2] = v7;
  v19[3] = v9;
  v19[0] = 0x736B6F6F42;
  v19[1] = 0xE500000000000000;
  sub_241C8DFF0();
  LOBYTE(v7) = sub_241CF95E8();

  v10 = objc_opt_self();
  if (v7)
  {
    v11 = [v10 bu_groupUserDefaults];

    return v11;
  }

  else
  {
    v13 = v10;
    v14 = sub_241CF9008();
    v15 = [objc_opt_self() books];
    v16 = [v15 containerURL];

    sub_241CF8CB8();
    v17 = sub_241CF8C98();
    (*(v1 + 8))(v4, v0);
    v18 = [v13 bu:v14 createWithSuiteName:v17 container:?];

    return v18;
  }
}

unint64_t sub_241C8DFF0()
{
  result = qword_2810D56F0;
  if (!qword_2810D56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56F0);
  }

  return result;
}

unint64_t sub_241C8E044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_241C93918(&qword_27EC6A2E8, &qword_241CFCE18);
    v3 = sub_241CF9808();
    v4 = a1 + 32;

    while (1)
    {
      sub_241C8E174(v4, &v13, &qword_27EC6A7C8, &qword_241CFEDC0);
      v5 = v13;
      v6 = v14;
      result = sub_241C8E1DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_241C8E30C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_241C8E174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_241C93918(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_241C8E1DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_241CF9998();
  sub_241CF90B8();
  v6 = sub_241CF99C8();

  return sub_241C8E254(a1, a2, v6);
}

unint64_t sub_241C8E254(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_241CF98C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_241C8E30C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for MSeries()
{
  result = qword_2810D5700;
  if (!qword_2810D5700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241C8E378()
{
  result = sub_241CF8CF8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MAsset()
{
  result = qword_2810D5710;
  if (!qword_2810D5710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241C8E498()
{
  result = sub_241CF8CF8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_241C8E5C8(uint64_t a1)
{
  result = sub_241C8E670(319, &unk_2810D56B8, 0x277CBEBD0);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_241C8E670(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t UserDefault.init(_:defaults:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for UserDefault();
  v10 = *(*(a5 - 8) + 32);
  v11 = a6 + *(v9 + 32);

  return v10(v11, a4, a5);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = (*(*(sub_241CF9598() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v25 - v7;
  if (swift_dynamicCastMetatype())
  {
    v9 = *(v2 + 1);
    v10 = *(v2 + 2);
    v11 = *v2;
    v12 = sub_241CF9008();
    v13 = [v10 objectForKey_];

    if (v13)
    {
      sub_241CF95F8();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_241C8E670(0, &qword_2810D56A8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v19 = v26;
        v20 = [v26 BOOLValue];

        LOBYTE(v29) = v20;
        return swift_dynamicCast();
      }
    }

    else
    {
      sub_241C8EA54(&v29, &qword_27EC6A0B0, &qword_241CFE350);
    }

    return (*(*(v5 - 8) + 16))(a2, &v2[*(a1 + 32)], v5);
  }

  else
  {
    v14 = *(v2 + 1);
    v15 = *(v2 + 2);
    v16 = *v2;
    v17 = sub_241CF9008();
    v18 = [v15 objectForKey_];

    if (v18)
    {
      sub_241CF95F8();
      swift_unknownObjectRelease();
      sub_241C8E30C(&v27, &v29);
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
    v22 = swift_dynamicCast();
    v23 = *(v5 - 8);
    v24 = *(v23 + 56);
    if (v22)
    {
      v24(v8, 0, 1, v5);
      return (*(v23 + 32))(a2, v8, v5);
    }

    else
    {
      v24(v8, 1, 1, v5);
      return (*(v23 + 16))(a2, &v2[*(a1 + 32)], v5);
    }
  }
}

uint64_t sub_241C8EA54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_241C93918(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (Collection.validate(index:)())
  {
    v4 = sub_241CF94E8();
    v6 = v5;
    v7 = *(a1 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(AssociatedTypeWitness - 8);
    (*(v9 + 16))(a2, v6, AssociatedTypeWitness);
    v4(&v14, 0);
    return (*(v9 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = swift_getAssociatedTypeWitness();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t Collection.validate(index:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v9 - v3;
  sub_241CF9458();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = sub_241CF9208();
  (*(v1 + 8))(v4, AssociatedTypeWitness);
  return v7 & 1;
}

unint64_t sub_241C8EE20()
{
  result = qword_2810D5730;
  if (!qword_2810D5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5730);
  }

  return result;
}

const char *sub_241C8EE88()
{
  v1 = "uip_floating_tab_bar";
  v2 = "uip_fluid_transitions";
  if (*v0 != 2)
  {
    v2 = "uip_document_landing_page";
  }

  if (*v0)
  {
    v1 = "uip_floating_tab_bar_only";
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

uint64_t sub_241C8EEE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void OSAllocatedUnfairLock.valueWithLock.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v5));
  sub_241C8EFD8(a1 + v4, a2);
  os_unfair_lock_unlock((a1 + v5));
}

uint64_t sub_241C8F048@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_241CF9038();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_241C8F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_241C8F150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommonLibraryAssetInfo();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

__n128 sub_241C8F21C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_241C8F280@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_241CA61B0(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_241C8F2E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MSeries.assetsResourceSet.getter();
  *a2 = result;
  return result;
}

uint64_t sub_241C8F318@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  v2 = *(*a1 + 48);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_241C8F328(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 48);
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_241C8F378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MSeries.currentSort.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_241C8F3D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExplicit];
  *a2 = result;
  return result;
}

uint64_t sub_241C8F450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_241C8F51C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommonLibraryAssetInfo();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

unint64_t sub_241C8F6B8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MAsset.seriesResource.getter();
  *a2 = result;
  return result;
}

void sub_241C8F6E4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_241CB4624(v2);
}

uint64_t sub_241C8F764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_241C8F83C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_241C8F90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241C8F984(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_241C8FA00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241C8FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A1F8, &qword_241CFCA78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C8FBB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A1F8, &qword_241CFCA78);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_241C8FC78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_241CBC9DC();
  *a2 = result;
  return result;
}

uint64_t sub_241C8FCB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_241CBCA58();
  *a2 = result;
  return result;
}

uint64_t sub_241C8FCE8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_241C8FD20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_241C8FD50()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_241C8FD80()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_241C8FDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_241C8FE6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_241C8FF2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_241C8FF50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_241C90054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MAsset.bookWorkTitle.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_241C9008C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MAsset.bookWorkAuthorName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_241C9022C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExplicit];
  *a2 = result;
  return result;
}

id sub_241C902D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPreorder];
  *a2 = result;
  return result;
}

uint64_t sub_241C903D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MAsset.publisherName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_241C90418@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsUnifiedProductPage];
  *a2 = result;
  return result;
}

uint64_t sub_241C90498@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_241C97000(a1, v4);
  result = (*(*(v3 + 8) + 64))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_241C9060C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSG];
  *a2 = result;
  return result;
}

uint64_t sub_241C90640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C90704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_241C907C8()
{
  v1 = sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241C9085C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C90920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_241C909E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_241C90AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_241C90BA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.getter(v5, a3);
}

uint64_t sub_241C90C08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_241C8EEE8((v0 + 56));
  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 148, 7);
}

uint64_t sub_241C90CA0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CommonLibraryAssetInfo();
  *a1 = *(v1 + *(result + 68));
  return result;
}

double sub_241C90EAC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_241C90EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_241C90FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

double sub_241C91138@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_241C9114C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241C911B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_241C91268@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKMenuOnLeft];
  *a2 = result;
  return result;
}

id sub_241C912B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKSettingFilterBrightImages];
  *a2 = result;
  return result;
}

uint64_t sub_241C912F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_241C913CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_241C914E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_241C914FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

id sub_241C9152C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = MEMORY[0x277CBEBD0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] _initWithSuiteName:v7 container:v6];

  return v8;
}

__n128 sub_241C915B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_241C915C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_241C9161C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_241C9167C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_241C91690(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241C916B0(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

uint64_t _s14BookFoundation11ContentKindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t sub_241C91738()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

unint64_t sub_241C9178C()
{
  v1 = 0xD000000000000028;
  v2 = 0xD00000000000007FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000029;
  }

  if (*v0)
  {
    v1 = 0xD000000000000034;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_241C917FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 104) = *v6;
  v8 = *(v6 + 8);
  *(v7 + 64) = a6;
  *(v7 + 72) = v8;
  return MEMORY[0x2822009F8](sub_241C91830, 0, 0);
}

uint64_t sub_241C91830()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = v1;
  v2 = [objc_opt_self() defaultBag];
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_241C91924;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return sub_241C91D8C(v8, v6, v7, v4, v2, &unk_241CFABC8, 0, v5);
}

uint64_t sub_241C91924(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_241C91A7C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_241C91A7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_241C91AE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v1;
  v4[1] = sub_241C91B94;

  return MCatalogRequest.fetch()();
}

uint64_t sub_241C91B94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_241C91D74;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_241C91CBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241C91CBC()
{
  v1 = *(v0 + 120);
  v2 = [v1 responseDataItems];

  if (v2)
  {
    sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
    v3 = sub_241CF9298();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_241C91D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 440) = a7;
  *(v9 + 448) = a8;
  *(v9 + 424) = a5;
  *(v9 + 432) = a6;
  *(v9 + 408) = a3;
  *(v9 + 416) = a4;
  *(v9 + 392) = a1;
  *(v9 + 400) = a2;
  *(v9 + 489) = *v8;
  *(v9 + 456) = *(v8 + 8);
  return MEMORY[0x2822009F8](sub_241C91DC8, 0, 0);
}

uint64_t sub_241C91DC8()
{
  v1 = *(v0 + 489);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v35 = *(v0 + 456);
  v6 = sub_241C92528(*(v0 + 392));
  *(v0 + 488) = v1;

  v7 = v3;

  sub_241CD7850(v6, v5, v4, v2, v7, (v0 + 488), (v0 + 192));
  LODWORD(v5) = *(v0 + 489);
  v8 = *(v0 + 208);
  *(v0 + 256) = *(v0 + 192);
  *(v0 + 272) = v8;
  v9 = *(v0 + 240);
  *(v0 + 288) = *(v0 + 224);
  *(v0 + 304) = v9;
  v10 = objc_opt_self();
  sub_241C9300C(v0 + 256, v0 + 320);
  v11 = [v10 defaultBag];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultSessionConfiguration];
  v15 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

  v16 = *(v0 + 456);
  v17 = *(v0 + 432);
  v18 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v19 = v13;
  v20 = v15;
  v21 = sub_241CF9008();

  v22 = [v18 initWithClientIdentifier:v21 bag:v19];

  v23 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v20 setProtocolHandler_];

  v24 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v22 bag:v19];
  [v24 setAccount_];
  v25 = [objc_opt_self() currentProcess];
  [v24 setClientInfo_];

  v26 = *(v0 + 288);
  v27 = *(v0 + 304);
  *(v0 + 64) = v26;
  *(v0 + 80) = v27;
  v29 = *(v0 + 256);
  v28 = *(v0 + 272);
  *(v0 + 32) = v29;
  *(v0 + 48) = v28;
  *(v0 + 16) = v24;
  *(v0 + 24) = v20;
  *(v0 + 96) = v19;
  *(v0 + 184) = v19;
  *(v0 + 120) = v29;
  *(v0 + 168) = v27;
  *(v0 + 152) = v26;
  *(v0 + 136) = v28;
  *(v0 + 104) = *(v0 + 16);
  v34 = (v17 + *v17);
  v30 = v17[1];
  v31 = swift_task_alloc();
  *(v0 + 464) = v31;
  *v31 = v0;
  v31[1] = sub_241C92228;
  v32 = *(v0 + 440);

  return v34(v0 + 104);
}

uint64_t sub_241C92228(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v7 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v5 = sub_241C924BC;
  }

  else
  {
    v5 = sub_241C9233C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241C9233C()
{
  v1 = *(v0 + 472);
  if (v1)
  {
    v2 = *(v0 + 480);
    v3 = *(v0 + 489);
    v4 = *(v0 + 448);
    v5 = *(v0 + 456);
    *(v0 + 384) = sub_241CF8ED8();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    *(v6 + 32) = v5;
    *(v6 + 40) = v0 + 384;
    sub_241C92DB4(sub_241C93164, v6, v1);
    sub_241C93068(v0 + 256);
    sub_241C930BC(v0 + 16);

    v7 = *(v0 + 384);
    v8 = *(v0 + 8);

    return v8(v7);
  }

  else
  {
    sub_241C93110();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    sub_241C930BC(v0 + 16);
    sub_241C93068(v0 + 256);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_241C924BC()
{
  sub_241C93068(v0 + 256);
  sub_241C930BC(v0 + 16);
  v1 = *(v0 + 480);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241C92528(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v4)) | (v7 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v13 = *v11;
        v12 = v11[1];
        v14 = *(*(a1 + 56) + v10);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_241CBF86C(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_241CBF86C((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        v4 &= v4 - 1;
        v8[2] = v16 + 1;
        v17 = &v8[3 * v16];
        v17[4] = v13;
        v17[5] = v12;
        *(v17 + 48) = v14;
      }

      while (v4);
    }
  }

  v18 = sub_241C936F8(v8);

  sub_241C93918(&qword_27EC69BD8, &qword_241CFEDD0);
  result = sub_241CF97E8();
  v19 = result;
  v20 = 0;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;
  v48 = v18;
  v49 = result + 64;
  v47 = result;
  v45 = v18 + 64;
  v46 = v24;
  if (!v23)
  {
LABEL_18:
    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_35;
      }

      if (v20 >= v24)
      {

        return v19;
      }

      v27 = *(v45 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v25 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_23:
    v28 = v25 | (v20 << 6);
    v29 = *(v18 + 56);
    v30 = *(*(v18 + 48) + v28);
    v31 = *(v29 + 8 * v28);
    v32 = *(v31 + 16);
    if (v32)
    {
      v50 = *(*(v18 + 48) + v28);
      v52 = MEMORY[0x277D84F90];

      sub_241C94488(0, v32, 0);
      v33 = v52;
      v34 = (v31 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        v38 = *(v52 + 16);
        v37 = *(v52 + 24);

        if (v38 >= v37 >> 1)
        {
          sub_241C94488((v37 > 1), v38 + 1, 1);
        }

        *(v52 + 16) = v38 + 1;
        v39 = v52 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        v34 += 3;
        --v32;
      }

      while (v32);
      v19 = v47;
      v18 = v48;
      v24 = v46;
      v30 = v50;
    }

    else
    {
      v40 = *(v29 + 8 * v28);

      v33 = MEMORY[0x277D84F90];
    }

    v41 = sub_241CDE8A8(v33);

    *(v49 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(v19[6] + v28) = v30;
    *(v19[7] + 8 * v28) = v41;
    v42 = v19[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      break;
    }

    v19[2] = v44;
    if (!v23)
    {
      goto LABEL_18;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_241C928A4(uint64_t *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  LODWORD(v50) = a2;
  v9 = sub_241CF9598();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v41 - v15;
  v44 = *(a5 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v45 = 1701869940;
  v46 = 0xE400000000000000;
  sub_241CF9668();
  if (*(v20 + 16) && (v21 = sub_241CF45AC(&v47), (v22 & 1) != 0))
  {
    sub_241C93664(*(v20 + 56) + 32 * v21, v49);
    sub_241C93610(&v47);
    if (swift_dynamicCast())
    {
      v41[1] = v5;
      v23 = static MResourceType.classType(for:)(v45, v46);

      if (v23)
      {
        LOBYTE(v47) = v50;
        v48 = a3;
        v50 = *(v23 + 128);
        v24 = a3;

        v26 = v50(v25, &v47);
        if (v26)
        {
          v28 = *(v26 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
          v27 = *(v26 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
          v47 = v26;
          v29 = v26;
          type metadata accessor for MResource();

          v30 = v29;
          if (swift_dynamicCast())
          {
            v50 = v30;
            v31 = v44;
            v32 = *(v44 + 56);
            v32(v16, 0, 1, a5);
            (*(v31 + 32))(v19, v16, a5);
            (*(v31 + 16))(v13, v19, a5);
            v32(v13, 0, 1, a5);
            v47 = v28;
            v48 = v27;
            sub_241CF8F38();
            sub_241CF8F68();

            (*(v31 + 8))(v19, a5);
          }

          else
          {

            (*(v44 + 56))(v16, 1, 1, a5);
            (*(v42 + 8))(v16, v9);
            if (qword_27EC69AA8 != -1)
            {
              swift_once();
            }

            v33 = sub_241CF8E88();
            sub_241C936C0(v33, qword_27EC69E40);
            v34 = sub_241CF8E68();
            v35 = sub_241CF9508();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              v47 = v37;
              *v36 = 136315138;
              swift_getMetatypeMetadata();
              v38 = sub_241CF9A58();
              v40 = sub_241CB3A88(v38, v39, &v47);

              *(v36 + 4) = v40;
              _os_log_impl(&dword_241C8C000, v34, v35, "Failed to cast dataItem response to expected Resource type of: %s", v36, 0xCu);
              sub_241C8EEE8(v37);
              MEMORY[0x245CFE970](v37, -1, -1);
              MEMORY[0x245CFE970](v36, -1, -1);
            }
          }
        }
      }
    }
  }

  else
  {
    sub_241C93610(&v47);
  }
}

uint64_t sub_241C92DB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_241C92E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_241C92F0C;

  return sub_241C917FC(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_241C92F0C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_241C93110()
{
  result = qword_27EC69BD0;
  if (!qword_27EC69BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69BD0);
  }

  return result;
}

uint64_t sub_241C93188(uint64_t a1, id *a2)
{
  result = sub_241CF9018();
  *a2 = 0;
  return result;
}

uint64_t sub_241C93200(uint64_t a1, id *a2)
{
  v3 = sub_241CF9028();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_241C93280@<X0>(uint64_t *a1@<X8>)
{
  sub_241CF9038();
  v2 = sub_241CF9008();

  *a1 = v2;
  return result;
}

uint64_t sub_241C932C4(uint64_t a1)
{
  v2 = sub_241C93C1C(&qword_27EC69C50, type metadata accessor for MCatalogRequestRelationship);
  v3 = sub_241C93C1C(&qword_27EC69C58, type metadata accessor for MCatalogRequestRelationship);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_241C93380@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_241CF9008();

  *a2 = v5;
  return result;
}

uint64_t sub_241C933C8(uint64_t a1)
{
  v2 = sub_241C93C1C(&qword_27EC69C40, type metadata accessor for MCatalogRequestView);
  v3 = sub_241C93C1C(&qword_27EC69C48, type metadata accessor for MCatalogRequestView);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_241C93484()
{
  v1 = *v0;
  v2 = sub_241CF9038();
  v3 = MEMORY[0x245CFD8D0](v2);

  return v3;
}

uint64_t sub_241C934C0()
{
  v1 = *v0;
  sub_241CF9038();
  sub_241CF90B8();
}

uint64_t sub_241C93514()
{
  v1 = *v0;
  sub_241CF9038();
  sub_241CF9998();
  sub_241CF90B8();
  v2 = sub_241CF99C8();

  return v2;
}

uint64_t sub_241C93588(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_241CF9038();
  v6 = v5;
  if (v4 == sub_241CF9038() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_241CF98C8();
  }

  return v9 & 1;
}

uint64_t sub_241C93664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241C936C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_241C936F8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v5 = *(i - 2);
    v6 = *(i - 1);
    v7 = *i;
    v8 = sub_241CF4160(*i);
    v10 = v1[2];
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    v14 = v9;
    v15 = v1[3];

    if (v15 < v12)
    {
      sub_241CC6BD4(v12, 1);
      v1 = v31;
      v16 = sub_241CF4160(v7);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v13 = v16;
    }

    if (v14)
    {
      v18 = v1[7];
      v19 = *(v18 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 8 * v13) = v19;
      v30 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_241CBF86C(0, v19[2] + 1, 1, v19);
        *(v18 + 8 * v13) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = sub_241CBF86C((v21 > 1), v22 + 1, 1, v19);
        v23 = v22 + 1;
        v19 = v24;
        *(v30 + 8 * v13) = v24;
      }

      v19[2] = v23;
      v4 = &v19[3 * v22];
      v4[4] = v5;
      v4[5] = v6;
      *(v4 + 48) = v7;
    }

    else
    {
      sub_241C93918(&qword_27EC69BE0, &unk_241CFABE0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_241CFAAF0;
      *(v25 + 32) = v5;
      *(v25 + 40) = v6;
      *(v25 + 48) = v7;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      *(v1[6] + v13) = v7;
      *(v1[7] + 8 * v13) = v25;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_241C93918(&qword_27EC69BE8, "vE");
  result = sub_241CF9938();
  __break(1u);
  return result;
}

uint64_t sub_241C93918(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_241C93988(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MCatalogRequestHandler.FetchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MCatalogRequestHandler.FetchError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_241C93B38()
{
  result = qword_27EC69C08;
  if (!qword_27EC69C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69C08);
  }

  return result;
}

uint64_t sub_241C93C1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Optional<A>.int32Value.getter(uint64_t result, char a2)
{
  if (a2)
  {
    v2 = 0;
    return v2 | ((a2 & 1) << 32);
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v2 = result;
    return v2 | ((a2 & 1) << 32);
  }

  __break(1u);
  return result;
}

int64_t static String.random(length:)(int64_t result)
{
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = result;
  v2 = MEMORY[0x277D84F90];
  if (!result)
  {
LABEL_13:
    v14 = v2;
    sub_241C93918(&qword_27EC69D20, &qword_241CFB028);
    sub_241C944C8();
    return sub_241CF9198();
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_241C944A8(0, result, 0);
  if ((" a invalid resource type" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v3 = 0;
    v2 = v14;
    while (1)
    {
      result = sub_241CF90C8();
      if (result < 0)
      {
        break;
      }

      v4 = result;
      if (!result)
      {
        goto LABEL_15;
      }

      v13 = 0;
      MEMORY[0x245CFE980](&v13, 8);
      if (v4 > v13 * v4)
      {
        v5 = -v4 % v4;
        while (v5 > v13 * v4)
        {
          v13 = 0;
          MEMORY[0x245CFE980](&v13, 8);
        }
      }

      sub_241CF90F8();
      v6 = sub_241CF9188();
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_241C944A8((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v2 = v14;
      }

      ++v3;
      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      if (v3 == v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall String.urlQueryEscaped(excludingCharacters:)(Swift::String_optional excludingCharacters)
{
  v3 = v2;
  v4 = v1;
  object = excludingCharacters.value._object;
  v6 = sub_241CF8AB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241CF8A98();
  if (object)
  {
    sub_241CF8AA8();
  }

  v17[0] = v4;
  v17[1] = v3;
  sub_241C8DFF0();
  v11 = sub_241CF95C8();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = v11;
  v15 = v13;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

Swift::String __swiftcall String.urlFragmentRemoved()()
{
  sub_241C941F4(35, 0xE100000000000000, v0, v1);
  v2 = sub_241CF91B8();
  v3 = MEMORY[0x245CFD7E0](v2);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_241C941F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_241CF9188() != a1 || v9 != a2)
  {
    v10 = sub_241CF98C8();

    if (v10)
    {
      return v8;
    }

    v8 = sub_241CF90D8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

Swift::String __swiftcall String.leadingSlashesRemoved()()
{

  v0 = sub_241CF91A8();
  v2 = v1;
  v11 = v1;

  v3 = 0;
  while (1)
  {
    v8 = sub_241CF9118();
    if (!v9)
    {
      break;
    }

    if (v8 == 47 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v4 = sub_241CF98C8();

      if ((v4 & 1) == 0)
      {
        break;
      }
    }

    if (__OFADD__(v3++, 1))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  if (v3 >= 1)
  {
    sub_241C94400(v3);
    v2 = v11;
  }

  v5 = v0;
  v6 = v2;
LABEL_12:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_241C94400(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_241CF90E8();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x2821FBD18](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v2);
  }

  return result;
}

char *sub_241C94488(char *a1, int64_t a2, char a3)
{
  result = sub_241C94774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241C944A8(char *a1, int64_t a2, char a3)
{
  result = sub_241C94B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_241C944C8()
{
  result = qword_2810D56E0;
  if (!qword_2810D56E0)
  {
    sub_241C9452C(&qword_27EC69D20, &qword_241CFB028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56E0);
  }

  return result;
}

uint64_t sub_241C9452C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_241C94574(void *a1, int64_t a2, char a3)
{
  result = sub_241C94DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241C94594(void *a1, int64_t a2, char a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69DB0, &qword_241CFB0A8, &qword_27EC69DB8, &qword_241CFB0B0);
  *v3 = result;
  return result;
}

char *sub_241C945D4(char *a1, int64_t a2, char a3)
{
  result = sub_241C94EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241C945F4(char *a1, int64_t a2, char a3)
{
  result = sub_241C94FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241C94614(void *a1, int64_t a2, char a3)
{
  result = sub_241C95100(a1, a2, a3, *v3, &qword_27EC69D58, &qword_241CFB060, &qword_27EC69D60, &qword_241CFB068);
  *v3 = result;
  return result;
}

void *sub_241C94654(void *a1, int64_t a2, char a3)
{
  result = sub_241C95100(a1, a2, a3, *v3, &qword_27EC69D68, &qword_241CFB070, &qword_27EC69D70, &qword_241CFB078);
  *v3 = result;
  return result;
}

void *sub_241C94694(void *a1, int64_t a2, char a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69D48, &qword_241CFB050, &qword_27EC69D50, &qword_241CFB058);
  *v3 = result;
  return result;
}

void *sub_241C946D4(void *a1, int64_t a2, char a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69D78, &qword_241CFB080, &qword_27EC69D80, &qword_241CFB088);
  *v3 = result;
  return result;
}

void *sub_241C94714(void *a1, int64_t a2, char a3)
{
  result = sub_241C95234(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241C94734(void *a1, int64_t a2, char a3)
{
  result = sub_241C95368(a1, a2, a3, *v3, &qword_27EC69D28, &qword_241CFB030, &qword_27EC69D30, &qword_241CFB038);
  *v3 = result;
  return result;
}

char *sub_241C94774(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69D98, &unk_241CFED80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_241C94880(size_t result, int64_t a2, char a3, void *a4)
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

  sub_241C93918(&qword_27EC69D90, &qword_241CFCF80);
  v10 = *(sub_241CF8B38() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_241CF8B38() - 8);
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

char *sub_241C94A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69D88, &qword_241CFB090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_241C94B4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69DE0, &unk_241CFB0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_241C94C58(void *result, int64_t a2, char a3, void *a4)
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
    sub_241C93918(&qword_27EC69DD0, &qword_241CFB0C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_241C94DA0(void *result, int64_t a2, char a3, void *a4)
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
    sub_241C93918(&qword_27EC69DC0, &qword_241CFB0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(&qword_27EC69DC8, &qword_241CFB0C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_241C94EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69DA8, &qword_241CFB0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_241C94FF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69DA0, &qword_241CFB098);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_241C95100(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_241C93918(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_241C95234(void *result, int64_t a2, char a3, void *a4)
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
    sub_241C93918(&qword_27EC69D38, &qword_241CFB040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(&qword_27EC69D40, &qword_241CFB048);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_241C95368(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_241C93918(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_241C954AC()
{
  v0 = sub_241CF91B8();
  v4 = sub_241C95530(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_241C95530(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_241CF90A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_241CF95A8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_241CB3EC8(v9, 0);
  v12 = sub_241C95688(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_241CF90A8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_241CF9708();
LABEL_4:

  return sub_241CF90A8();
}

unint64_t sub_241C95688(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_241C958A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_241CF9158();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_241CF9708();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_241C958A8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_241CF9138();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_241C958A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_241CF9168();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245CFD8A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *SeriesListSortOrder.sortedAssets(for:)(void *a1)
{
  v2 = *v1;
  if (v2 <= 1)
  {
    if (*v1)
    {
      v12 = a1[2];
      if (v12)
      {
        v13 = (a1 + 4);
        while (1)
        {
          sub_241C96F9C(v13, v19);
          v14 = v20;
          v15 = v21;
          sub_241C97000(v19, v20);
          AssetInfo.sequenceNumber.getter(v14, v15);
          v17 = v16;
          sub_241C8EEE8(v19);
          if ((v17 & 0x100000000) != 0)
          {
            break;
          }

          v13 += 40;
          if (!--v12)
          {
            goto LABEL_17;
          }
        }

        v19[0] = a1;

        v3 = sub_241C9B73C;
        v4 = sub_241C97F88;
      }

      else
      {
LABEL_17:
        v19[0] = a1;

        v3 = sub_241C9AEC8;
        v4 = sub_241C97DF8;
      }
    }

    else
    {
      v6 = a1[2];
      if (v6)
      {
        v7 = (a1 + 4);
        while (1)
        {
          sub_241C96F9C(v7, v19);
          v8 = v20;
          v9 = v21;
          sub_241C97000(v19, v20);
          AssetInfo.sequenceNumber.getter(v8, v9);
          v11 = v10;
          sub_241C8EEE8(v19);
          if ((v11 & 0x100000000) != 0)
          {
            break;
          }

          v7 += 40;
          if (!--v6)
          {
            goto LABEL_10;
          }
        }

        v19[0] = a1;

        v3 = sub_241C9CDE8;
        v4 = sub_241C985E4;
      }

      else
      {
LABEL_10:
        v19[0] = a1;

        v3 = sub_241C9C520;
        v4 = sub_241C98438;
      }
    }
  }

  else if (v2 == 2)
  {
    v19[0] = a1;

    v3 = sub_241C9A0A8;
    v4 = sub_241C9794C;
  }

  else
  {
    v19[0] = a1;
    if (v2 == 3)
    {

      v3 = sub_241C992C4;
      v4 = sub_241C9749C;
    }

    else
    {

      v3 = sub_241C98A74;
      v4 = sub_241C97304;
    }
  }

  sub_241C96ED8(v19, v3, v4);
  return v19[0];
}

uint64_t sub_241C95BC8(void *a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_241CF8D88();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v19 = a1[3];
  v18 = a1[4];
  sub_241C97000(a1, v19);
  AssetInfo.seriesSortKey.getter(v19, v18);
  if (v20 & 1) != 0 && (v21 = a2[3], v22 = a2[4], sub_241C97000(a2, v21), AssetInfo.seriesSortKey.getter(v21, v22), (v23))
  {
    v24 = a1[3];
    v25 = a1[4];
    sub_241C97000(a1, v24);
    AssetInfo.releaseDate.getter(v24, v25, v10);
    v26 = v48;
    v27 = *(v48 + 48);
    v28 = v27(v10, 1, v11);
    v47 = v27;
    if (v28 == 1)
    {
      sub_241CF8D28();
      if (v27(v10, 1, v11) != 1)
      {
        sub_241CA0DE4(v10);
      }
    }

    else
    {
      (*(v26 + 32))(v17, v10, v11);
    }

    v40 = a2[3];
    v41 = a2[4];
    sub_241C97000(a2, v40);
    AssetInfo.releaseDate.getter(v40, v41, v8);
    v42 = v47;
    if (v47(v8, 1, v11) == 1)
    {
      sub_241CF8D28();
      v43 = v42(v8, 1, v11);
      v44 = v48;
      if (v43 != 1)
      {
        sub_241CA0DE4(v8);
      }
    }

    else
    {
      v44 = v48;
      (*(v48 + 32))(v15, v8, v11);
    }

    v39 = sub_241CF8D58();
    v45 = *(v44 + 8);
    v45(v15, v11);
    v45(v17, v11);
  }

  else
  {
    v29 = a1[3];
    v30 = a1[4];
    sub_241C97000(a1, v29);
    v31 = AssetInfo.seriesSortKey.getter(v29, v30);
    v33 = v32;
    v34 = a2[3];
    v35 = a2[4];
    sub_241C97000(a2, v34);
    v36 = AssetInfo.seriesSortKey.getter(v34, v35);
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v37 & 1) == 0)
    {
      v38 = v36;
    }

    v39 = (v31 < v38) & ~v33;
  }

  return v39 & 1;
}

uint64_t sub_241C95F74(void *a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = sub_241CF8D88();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v19 = a1[3];
  v18 = a1[4];
  sub_241C97000(a1, v19);
  AssetInfo.seriesSortKey.getter(v19, v18);
  if (v20 & 1) != 0 && (v21 = a2[3], v22 = a2[4], sub_241C97000(a2, v21), AssetInfo.seriesSortKey.getter(v21, v22), (v23))
  {
    v24 = a1[3];
    v25 = a1[4];
    sub_241C97000(a1, v24);
    AssetInfo.releaseDate.getter(v24, v25, v10);
    v26 = v47;
    v27 = *(v47 + 48);
    v28 = v27(v10, 1, v11);
    v46 = v27;
    if (v28 == 1)
    {
      sub_241CF8D28();
      if (v27(v10, 1, v11) != 1)
      {
        sub_241CA0DE4(v10);
      }
    }

    else
    {
      (*(v26 + 32))(v17, v10, v11);
    }

    v39 = a2[3];
    v40 = a2[4];
    sub_241C97000(a2, v39);
    AssetInfo.releaseDate.getter(v39, v40, v8);
    v41 = v46;
    if (v46(v8, 1, v11) == 1)
    {
      sub_241CF8D28();
      v42 = v41(v8, 1, v11);
      v43 = v47;
      if (v42 != 1)
      {
        sub_241CA0DE4(v8);
      }
    }

    else
    {
      v43 = v47;
      (*(v47 + 32))(v15, v8, v11);
    }

    v38 = sub_241CF8D48();
    v44 = *(v43 + 8);
    v44(v15, v11);
    v44(v17, v11);
  }

  else
  {
    v29 = a1[3];
    v30 = a1[4];
    sub_241C97000(a1, v29);
    v31 = AssetInfo.seriesSortKey.getter(v29, v30);
    if (v32)
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    v34 = a2[3];
    v35 = a2[4];
    sub_241C97000(a2, v34);
    v36 = AssetInfo.seriesSortKey.getter(v34, v35) < v33;
    v38 = v36 & ~v37;
  }

  return v38 & 1;
}

uint64_t sub_241C96318(void *a1, void *a2)
{
  v44 = a2;
  v3 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = sub_241CF8D88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v41 = a1;
  sub_241C97000(a1, v18);
  AssetInfo.releaseDate.getter(v18, v17, v9);
  v19 = *(v11 + 48);
  v20 = v19(v9, 1, v10);
  v43 = v16;
  if (v20 == 1)
  {
    sub_241CF8D28();
    if (v19(v9, 1, v10) != 1)
    {
      sub_241CA0DE4(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = v44;
  v22 = v44[3];
  v23 = v44[4];
  sub_241C97000(v44, v22);
  AssetInfo.releaseDate.getter(v22, v23, v7);
  v24 = v19(v7, 1, v10);
  v25 = v42;
  if (v24 == 1)
  {
    sub_241CF8D28();
    if (v19(v7, 1, v10) != 1)
    {
      sub_241CA0DE4(v7);
    }
  }

  else
  {
    (*(v11 + 32))(v42, v7, v10);
  }

  v26 = v43;
  if (sub_241CF8D68())
  {
    v27 = v41[3];
    v28 = v41[4];
    sub_241C97000(v41, v27);
    v29 = AssetInfo.seriesSortKey.getter(v27, v28);
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    v32 = v21[3];
    v33 = v21[4];
    sub_241C97000(v21, v32);
    v34 = AssetInfo.seriesSortKey.getter(v32, v33);
    LOBYTE(v33) = v35;
    v36 = *(v11 + 8);
    v36(v25, v10);
    v36(v26, v10);
    if (v33)
    {
      v37 = 0;
    }

    else
    {
      v37 = v34;
    }

    v38 = v37 < v31;
  }

  else
  {
    v38 = sub_241CF8D48();
    v39 = *(v11 + 8);
    v39(v25, v10);
    v39(v26, v10);
  }

  return v38 & 1;
}

uint64_t sub_241C966B4(void *a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_241CF8D88();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v19 = a1[3];
  v18 = a1[4];
  sub_241C97000(a1, v19);
  AssetInfo.seriesSortKey.getter(v19, v18);
  if (v20 & 1) != 0 && (v21 = a2[3], v22 = a2[4], sub_241C97000(a2, v21), AssetInfo.seriesSortKey.getter(v21, v22), (v23))
  {
    v24 = a1[3];
    v25 = a1[4];
    sub_241C97000(a1, v24);
    AssetInfo.releaseDate.getter(v24, v25, v10);
    v26 = v48;
    v27 = *(v48 + 48);
    v28 = v27(v10, 1, v11);
    v47 = v27;
    if (v28 == 1)
    {
      sub_241CF8D28();
      if (v27(v10, 1, v11) != 1)
      {
        sub_241CA0DE4(v10);
      }
    }

    else
    {
      (*(v26 + 32))(v17, v10, v11);
    }

    v40 = a2[3];
    v41 = a2[4];
    sub_241C97000(a2, v40);
    AssetInfo.releaseDate.getter(v40, v41, v8);
    v42 = v47;
    if (v47(v8, 1, v11) == 1)
    {
      sub_241CF8D28();
      v43 = v42(v8, 1, v11);
      v44 = v48;
      if (v43 != 1)
      {
        sub_241CA0DE4(v8);
      }
    }

    else
    {
      v44 = v48;
      (*(v48 + 32))(v15, v8, v11);
    }

    v39 = sub_241CF8D58();
    v45 = *(v44 + 8);
    v45(v15, v11);
    v45(v17, v11);
  }

  else
  {
    v29 = a1[3];
    v30 = a1[4];
    sub_241C97000(a1, v29);
    v31 = AssetInfo.seriesSortKey.getter(v29, v30);
    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    v34 = a2[3];
    v35 = a2[4];
    sub_241C97000(a2, v34);
    v36 = AssetInfo.seriesSortKey.getter(v34, v35);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    v39 = v33 < v38;
  }

  return v39 & 1;
}

BookFoundation::SeriesListSortOrder_optional __swiftcall SeriesListSortOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SeriesListSortOrder.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E69646E65637361;
  v3 = 0x44657361656C6572;
  v4 = 0x72616C75706F70;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69646E6563736564;
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

uint64_t sub_241C96B68()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241C96C58()
{
  *v0;
  *v0;
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241C96D34()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241C96E2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0x6E69646E65637361;
  v5 = 0xEB00000000657461;
  v6 = 0x44657361656C6572;
  v7 = 0xE700000000000000;
  v8 = 0x72616C75706F70;
  if (v2 != 3)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69646E6563736564;
    v3 = 0xEA0000000000676ELL;
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

uint64_t sub_241C96ED8(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_241CDE83C(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_241C971EC(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_241C96F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_241C97000(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_241C97048()
{
  result = qword_27EC69DE8;
  if (!qword_27EC69DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MClientIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MClientIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241C971EC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_241CF9898();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        v9 = sub_241CF92D8();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_241C97304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v7 = v6;
    v16 = v5;
    while (1)
    {
      sub_241C96F9C(v5, &v20);
      sub_241C96F9C(v5 - 40, v17);
      v8 = v21;
      v9 = v22;
      sub_241C97000(&v20, v21);
      AssetInfo.title.getter(v8, v9);
      v10 = v18;
      v11 = v19;
      sub_241C97000(v17, v18);
      AssetInfo.title.getter(v10, v11);
      sub_241C8DFF0();
      v12 = sub_241CF95D8();

      sub_241C8EEE8(v17);
      result = sub_241C8EEE8(&v20);
      if (v12 != -1)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v16 + 40;
        --v6;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_241C914E4(v5, &v20);
      v13 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v13;
      *(v5 + 32) = *(v5 - 8);
      result = sub_241C914E4(&v20, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C9749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v65 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v55[-v12];
  v14 = sub_241CF8D88();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v64 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v16);
  v73 = &v55[-v20];
  v56 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v66 = (v19 + 48);
    v61 = (v19 + 8);
    v62 = (v19 + 32);
    v22 = v21 + 40 * a3;
    v23 = a1 - a3;
    v63 = v21;
    v60 = v13;
LABEL_5:
    v58 = v22;
    v59 = a3;
    v57 = v23;
    v24 = v22;
    while (1)
    {
      sub_241C96F9C(v24, &v70);
      sub_241C96F9C(v24 - 40, v67);
      v25 = v71;
      v26 = v72;
      sub_241C97000(&v70, v71);
      AssetInfo.seriesSortKey.getter(v25, v26);
      if (v27 & 1) != 0 && (v28 = v68, v29 = v69, sub_241C97000(v67, v68), AssetInfo.seriesSortKey.getter(v28, v29), (v30))
      {
        v31 = v71;
        v32 = v72;
        sub_241C97000(&v70, v71);
        AssetInfo.releaseDate.getter(v31, v32, v13);
        v33 = *v66;
        if ((*v66)(v13, 1, v14) == 1)
        {
          sub_241CF8D28();
          if (v33(v13, 1, v14) != 1)
          {
            sub_241CA0DE4(v13);
          }
        }

        else
        {
          (*v62)(v73, v13, v14);
        }

        v45 = v68;
        v46 = v69;
        sub_241C97000(v67, v68);
        v47 = v65;
        AssetInfo.releaseDate.getter(v45, v46, v65);
        v48 = v47;
        if (v33(v47, 1, v14) == 1)
        {
          v49 = v64;
          sub_241CF8D28();
          v50 = v14;
          if (v33(v48, 1, v14) != 1)
          {
            sub_241CA0DE4(v48);
          }
        }

        else
        {
          v49 = v64;
          (*v62)(v64, v48, v14);
          v50 = v14;
        }

        v51 = v73;
        v44 = sub_241CF8D58();
        v52 = *v61;
        (*v61)(v49, v50);
        v52(v51, v50);
        v21 = v63;
        v14 = v50;
        v13 = v60;
      }

      else
      {
        v34 = v71;
        v35 = v72;
        sub_241C97000(&v70, v71);
        v36 = AssetInfo.seriesSortKey.getter(v34, v35);
        if (v37)
        {
          v38 = 0;
        }

        else
        {
          v38 = v36;
        }

        v39 = v68;
        v40 = v69;
        sub_241C97000(v67, v68);
        v41 = AssetInfo.seriesSortKey.getter(v39, v40);
        if (v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        v44 = v38 < v43;
      }

      sub_241C8EEE8(v67);
      result = sub_241C8EEE8(&v70);
      if ((v44 & 1) == 0)
      {
LABEL_4:
        a3 = v59 + 1;
        v22 = v58 + 40;
        v23 = v57 - 1;
        if (v59 + 1 == v56)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      sub_241C914E4(v24, &v70);
      v53 = *(v24 - 24);
      *v24 = *(v24 - 40);
      *(v24 + 16) = v53;
      *(v24 + 32) = *(v24 - 8);
      result = sub_241C914E4(&v70, v24 - 40);
      v24 -= 40;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C9794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v55[-v13];
  v15 = sub_241CF8D88();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v17);
  v73 = &v55[-v21];
  v56 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v66 = (v20 + 48);
    v62 = (v20 + 8);
    v63 = (v20 + 32);
    v60 = v22;
    v23 = v22 + 40 * a3;
    v24 = a1 - a3;
LABEL_5:
    v58 = v23;
    v59 = a3;
    v57 = v24;
    v25 = v24;
    v26 = v23;
    while (1)
    {
      v65 = v25;
      sub_241C96F9C(v26, &v70);
      sub_241C96F9C(v26 - 40, v67);
      v27 = v71;
      v28 = v72;
      sub_241C97000(&v70, v71);
      AssetInfo.releaseDate.getter(v27, v28, v14);
      v29 = *v66;
      if ((*v66)(v14, 1, v15) == 1)
      {
        sub_241CF8D28();
        if (v29(v14, 1, v15) != 1)
        {
          sub_241CA0DE4(v14);
        }
      }

      else
      {
        (*v63)(v73, v14, v15);
      }

      v30 = v68;
      v31 = v69;
      sub_241C97000(v67, v68);
      AssetInfo.releaseDate.getter(v30, v31, v12);
      if (v29(v12, 1, v15) == 1)
      {
        v32 = v64;
        sub_241CF8D28();
        v33 = v29(v12, 1, v15);
        v34 = v73;
        if (v33 != 1)
        {
          sub_241CA0DE4(v12);
        }
      }

      else
      {
        v32 = v64;
        (*v63)(v64, v12, v15);
        v34 = v73;
      }

      if (sub_241CF8D68())
      {
        v35 = v71;
        v36 = v72;
        sub_241C97000(&v70, v71);
        v37 = AssetInfo.seriesSortKey.getter(v35, v36);
        if (v38)
        {
          v39 = 0;
        }

        else
        {
          v39 = v37;
        }

        v61 = v39;
        v40 = v68;
        v41 = v69;
        sub_241C97000(v67, v68);
        v42 = AssetInfo.seriesSortKey.getter(v40, v41);
        LOBYTE(v41) = v43;
        v44 = v14;
        v45 = v12;
        v46 = *v62;
        (*v62)(v64, v15);
        v46(v73, v15);
        v12 = v45;
        v14 = v44;
        if (v41)
        {
          v47 = 0;
        }

        else
        {
          v47 = v42;
        }

        v48 = v47 < v61;
      }

      else
      {
        v49 = sub_241CF8D48();
        v50 = v32;
        v48 = v49;
        v51 = *v62;
        (*v62)(v50, v15);
        v51(v34, v15);
      }

      sub_241C8EEE8(v67);
      result = sub_241C8EEE8(&v70);
      v52 = v65;
      if (!v48)
      {
LABEL_4:
        a3 = v59 + 1;
        v23 = v58 + 40;
        v24 = v57 - 1;
        if (v59 + 1 == v56)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v60)
      {
        break;
      }

      sub_241C914E4(v26, &v70);
      v53 = *(v26 - 24);
      *v26 = *(v26 - 40);
      *(v26 + 16) = v53;
      *(v26 + 32) = *(v26 - 8);
      result = sub_241C914E4(&v70, v26 - 40);
      v26 -= 40;
      v54 = __CFADD__(v52, 1);
      v25 = v52 + 1;
      if (v54)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C97DF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v26 = a3;
    v18 = v6;
    v19 = v5;
    while (1)
    {
      sub_241C96F9C(v5, &v23);
      sub_241C96F9C(v5 - 40, v20);
      v7 = v24;
      v8 = v25;
      sub_241C97000(&v23, v24);
      AssetInfo.sequenceNumber.getter(v7, v8);
      if ((v9 & 0x100000000) != 0)
      {
        MEMORY[0x245CFDCB0](0);
      }

      v11 = v21;
      v10 = v22;
      sub_241C97000(v20, v21);
      v12 = AssetInfo.sequenceNumber.getter(v11, v10);
      if ((v13 & 0x100000000) != 0)
      {
        v12 = MEMORY[0x245CFDCB0](0);
      }

      v14 = MEMORY[0x245CFDCD0](v12);
      sub_241C8EEE8(v20);
      result = sub_241C8EEE8(&v23);
      if ((v14 & 1) == 0)
      {
LABEL_4:
        a3 = v26 + 1;
        v5 = v19 + 40;
        v6 = v18 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_241C914E4(v5, &v23);
      v15 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v15;
      *(v5 + 32) = *(v5 - 8);
      result = sub_241C914E4(&v23, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C97F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v62 = &v54[-v12];
  v13 = sub_241CF8D88();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v15);
  v72 = &v54[-v19];
  v55 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v65 = (v18 + 48);
    v59 = (v18 + 8);
    v60 = (v18 + 32);
    v21 = v20 + 40 * a3;
    v22 = a1 - a3;
    v61 = v20;
LABEL_5:
    v57 = v21;
    v58 = a3;
    v56 = v22;
    v23 = v21;
    while (1)
    {
      sub_241C96F9C(v23, &v69);
      sub_241C96F9C(v23 - 40, v66);
      v24 = v70;
      v25 = v71;
      sub_241C97000(&v69, v70);
      AssetInfo.seriesSortKey.getter(v24, v25);
      if (v26 & 1) != 0 && (v27 = v67, v28 = v68, sub_241C97000(v66, v67), AssetInfo.seriesSortKey.getter(v27, v28), (v29))
      {
        v30 = v70;
        v31 = v71;
        sub_241C97000(&v69, v70);
        v32 = v62;
        AssetInfo.releaseDate.getter(v30, v31, v62);
        v33 = *v65;
        if ((*v65)(v32, 1, v13) == 1)
        {
          sub_241CF8D28();
          if (v33(v32, 1, v13) != 1)
          {
            sub_241CA0DE4(v32);
          }
        }

        else
        {
          (*v60)(v72, v32, v13);
        }

        v44 = v67;
        v45 = v68;
        sub_241C97000(v66, v67);
        v46 = v64;
        AssetInfo.releaseDate.getter(v44, v45, v64);
        v47 = v46;
        if (v33(v46, 1, v13) == 1)
        {
          v48 = v63;
          sub_241CF8D28();
          v49 = v13;
          if (v33(v47, 1, v13) != 1)
          {
            sub_241CA0DE4(v47);
          }
        }

        else
        {
          v48 = v63;
          (*v60)(v63, v47, v13);
          v49 = v13;
        }

        v50 = v72;
        v43 = sub_241CF8D48();
        v51 = *v59;
        (*v59)(v48, v49);
        v51(v50, v49);
        v20 = v61;
        v13 = v49;
      }

      else
      {
        v34 = v70;
        v35 = v71;
        sub_241C97000(&v69, v70);
        v36 = AssetInfo.seriesSortKey.getter(v34, v35);
        if (v37)
        {
          v38 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        v39 = v67;
        v40 = v68;
        sub_241C97000(v66, v67);
        v41 = AssetInfo.seriesSortKey.getter(v39, v40) < v38;
        v43 = v41 & ~v42;
      }

      sub_241C8EEE8(v66);
      result = sub_241C8EEE8(&v69);
      if ((v43 & 1) == 0)
      {
LABEL_4:
        a3 = v58 + 1;
        v21 = v57 + 40;
        v22 = v56 - 1;
        if (v58 + 1 == v55)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      sub_241C914E4(v23, &v69);
      v52 = *(v23 - 24);
      *v23 = *(v23 - 40);
      *(v23 + 16) = v52;
      *(v23 + 32) = *(v23 - 8);
      result = sub_241C914E4(&v69, v23 - 40);
      v23 -= 40;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C98438(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v33 = a3;
    v25 = v6;
    v26 = v5;
    while (1)
    {
      sub_241C96F9C(v5, &v30);
      sub_241C96F9C(v5 - 40, v27);
      v7 = v31;
      v8 = v32;
      sub_241C97000(&v30, v31);
      v9 = AssetInfo.sequenceNumber.getter(v7, v8);
      if ((v11 & 0x100000000) != 0)
      {
        v12 = MEMORY[0x245CFDCB0](0);
      }

      else
      {
        v12 = v9;
      }

      v13 = v10;
      v14 = v11;
      v16 = v28;
      v15 = v29;
      sub_241C97000(v27, v28);
      v17 = AssetInfo.sequenceNumber.getter(v16, v15);
      if ((v19 & 0x100000000) != 0)
      {
        v20 = MEMORY[0x245CFDCB0](0);
      }

      else
      {
        v20 = v17;
      }

      v21 = MEMORY[0x245CFDCD0](v12, v13, v14, v20, v18, v19);
      sub_241C8EEE8(v27);
      result = sub_241C8EEE8(&v30);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v5 = v26 + 40;
        v6 = v25 - 1;
        if (v33 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_241C914E4(v5, &v30);
      v22 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v22;
      *(v5 + 32) = *(v5 - 8);
      result = sub_241C914E4(&v30, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C985E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v56 - v12;
  v13 = sub_241CF8D88();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v56 - v19;
  v57 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = (v18 + 48);
    v61 = (v18 + 8);
    v62 = (v18 + 32);
    v73 = v20;
    v22 = v20 + 40 * a3;
    v23 = a1 - a3;
LABEL_5:
    v59 = v22;
    v60 = a3;
    v58 = v23;
    v24 = v22;
    while (1)
    {
      sub_241C96F9C(v24, &v70);
      sub_241C96F9C(v24 - 40, v67);
      v25 = v71;
      v26 = v72;
      sub_241C97000(&v70, v71);
      AssetInfo.seriesSortKey.getter(v25, v26);
      if (v27 & 1) != 0 && (v28 = v68, v29 = v69, sub_241C97000(v67, v68), AssetInfo.seriesSortKey.getter(v28, v29), (v30))
      {
        v31 = v71;
        v32 = v72;
        sub_241C97000(&v70, v71);
        v33 = v64;
        AssetInfo.releaseDate.getter(v31, v32, v64);
        v34 = v33;
        v35 = *v21;
        if ((*v21)(v34, 1, v13) == 1)
        {
          sub_241CF8D28();
          if (v35(v34, 1, v13) != 1)
          {
            sub_241CA0DE4(v34);
          }
        }

        else
        {
          (*v62)(v66, v34, v13);
        }

        v47 = v68;
        v48 = v69;
        sub_241C97000(v67, v68);
        v49 = v65;
        AssetInfo.releaseDate.getter(v47, v48, v65);
        if (v35(v49, 1, v13) == 1)
        {
          v50 = v63;
          sub_241CF8D28();
          if (v35(v49, 1, v13) != 1)
          {
            sub_241CA0DE4(v49);
          }
        }

        else
        {
          v50 = v63;
          (*v62)(v63, v49, v13);
        }

        v51 = v66;
        v46 = sub_241CF8D58();
        v52 = v50;
        v53 = *v61;
        (*v61)(v52, v13);
        v53(v51, v13);
      }

      else
      {
        v36 = v71;
        v37 = v72;
        sub_241C97000(&v70, v71);
        v38 = AssetInfo.seriesSortKey.getter(v36, v37);
        v40 = v39;
        v41 = v68;
        v42 = v69;
        sub_241C97000(v67, v68);
        v43 = AssetInfo.seriesSortKey.getter(v41, v42);
        v45 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v44 & 1) == 0)
        {
          v45 = v43;
        }

        v46 = (v38 < v45) & ~v40;
      }

      sub_241C8EEE8(v67);
      result = sub_241C8EEE8(&v70);
      if ((v46 & 1) == 0)
      {
LABEL_4:
        a3 = v60 + 1;
        v22 = v59 + 40;
        v23 = v58 - 1;
        if (v60 + 1 == v57)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v73)
      {
        break;
      }

      sub_241C914E4(v24, &v70);
      v54 = *(v24 - 24);
      *v24 = *(v24 - 40);
      *(v24 + 16) = v54;
      *(v24 + 32) = *(v24 - 8);
      result = sub_241C914E4(&v70, v24 - 40);
      v24 -= 40;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241C98A74(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v103 = result;
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v26 = v9 + 1;
      }

      else
      {
        v112 = v8;
        v106 = v10;
        v11 = *v6;
        sub_241C96F9C(*v6 + 40 * (v9 + 1), &v118);
        v12 = 40 * v9;
        v13 = v11 + 40 * v9;
        sub_241C96F9C(v13, v115);
        v14 = v9;
        v15 = v119;
        v16 = v120;
        sub_241C97000(&v118, v119);
        AssetInfo.title.getter(v15, v16);
        v17 = v116;
        v18 = v117;
        sub_241C97000(v115, v116);
        AssetInfo.title.getter(v17, v18);
        sub_241C8DFF0();
        v109 = sub_241CF95D8();

        sub_241C8EEE8(v115);
        result = sub_241C8EEE8(&v118);
        v104 = v14;
        v19 = v14 + 2;
        v20 = v13 + 80;
        while (v112 != v19)
        {
          sub_241C96F9C(v20, &v118);
          sub_241C96F9C(v20 - 40, v115);
          v21 = v119;
          v22 = v120;
          sub_241C97000(&v118, v119);
          AssetInfo.title.getter(v21, v22);
          v23 = v116;
          v24 = v117;
          sub_241C97000(v115, v116);
          AssetInfo.title.getter(v23, v24);
          v25 = sub_241CF95D8();

          sub_241C8EEE8(v115);
          result = sub_241C8EEE8(&v118);
          ++v19;
          v20 += 40;
          if ((v109 == -1) == (v25 != -1))
          {
            v26 = v19 - 1;
            goto LABEL_11;
          }
        }

        v26 = v112;
LABEL_11:
        v6 = a3;
        v9 = v104;
        v7 = v103;
        if (v109 == -1)
        {
          if (v26 < v104)
          {
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
            return result;
          }

          if (v104 < v26)
          {
            v27 = v26;
            v28 = 40 * v26 - 40;
            v113 = v26;
            v29 = v104;
            do
            {
              if (v29 != --v27)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v30 = v34 + v12;
                v31 = v34 + v28;
                sub_241C914E4((v34 + v12), &v118);
                v32 = *(v31 + 32);
                v33 = *(v31 + 16);
                *v30 = *v31;
                *(v30 + 16) = v33;
                *(v30 + 32) = v32;
                result = sub_241C914E4(&v118, v31);
              }

              ++v29;
              v28 -= 40;
              v12 += 40;
            }

            while (v29 < v27);
            v10 = v106;
            v7 = v103;
            v26 = v113;
          }
        }
      }

      v35 = v6[1];
      if (v26 >= v35)
      {
        goto LABEL_30;
      }

      if (__OFSUB__(v26, v9))
      {
        goto LABEL_119;
      }

      if (v26 - v9 >= a4)
      {
        goto LABEL_30;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_120;
      }

      if (v9 + a4 >= v35)
      {
        v36 = v6[1];
      }

      else
      {
        v36 = (v9 + a4);
      }

      if (v36 < v9)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v26 == v36)
      {
LABEL_30:
        v37 = v26;
        if (v26 < v9)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v105 = v9;
        v107 = v10;
        v101 = v5;
        v84 = *v6;
        v85 = v84 + 40 * v26;
        v111 = v36;
        v114 = v26;
        v86 = (v9 - v26);
        do
        {
          v87 = v86;
          v88 = v85;
          do
          {
            sub_241C96F9C(v88, &v118);
            sub_241C96F9C(v88 - 40, v115);
            v89 = v119;
            v90 = v120;
            sub_241C97000(&v118, v119);
            AssetInfo.title.getter(v89, v90);
            v91 = v116;
            v92 = v117;
            sub_241C97000(v115, v116);
            AssetInfo.title.getter(v91, v92);
            sub_241C8DFF0();
            v93 = sub_241CF95D8();

            sub_241C8EEE8(v115);
            result = sub_241C8EEE8(&v118);
            if (v93 != -1)
            {
              break;
            }

            if (!v84)
            {
              goto LABEL_124;
            }

            sub_241C914E4(v88, &v118);
            v94 = *(v88 - 24);
            *v88 = *(v88 - 40);
            *(v88 + 16) = v94;
            *(v88 + 32) = *(v88 - 8);
            sub_241C914E4(&v118, v88 - 40);
            v88 -= 40;
          }

          while (!__CFADD__(v87++, 1));
          v37 = v111;
          v85 += 40;
          --v86;
          ++v114;
        }

        while (v114 != v111);
        v5 = v101;
        v10 = v107;
        v6 = a3;
        v7 = v103;
        v9 = v105;
        if (v111 < v105)
        {
          goto LABEL_118;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_241CBFB88(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v39 = *(v10 + 2);
      v38 = *(v10 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_241CBFB88((v38 > 1), v39 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v40;
      v41 = &v10[16 * v39];
      *(v41 + 4) = v9;
      *(v41 + 5) = v37;
      v9 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v110 = v37;
      if (v39)
      {
        while (1)
        {
          v42 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v43 = *(v10 + 4);
            v44 = *(v10 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_50:
            if (v46)
            {
              goto LABEL_107;
            }

            v59 = &v10[16 * v40];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_110;
            }

            v65 = &v10[16 * v42 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_114;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v40 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          v69 = &v10[16 * v40];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_64:
          if (v64)
          {
            goto LABEL_109;
          }

          v72 = &v10[16 * v42];
          v74 = *(v72 + 4);
          v73 = *(v72 + 5);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_112;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_71:
          v80 = v42 - 1;
          if (v42 - 1 >= v40)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*v6)
          {
            goto LABEL_125;
          }

          v81 = *&v10[16 * v80 + 32];
          v82 = *&v10[16 * v42 + 40];
          sub_241C9DBE4((*v6 + 40 * v81), (*v6 + 40 * *&v10[16 * v42 + 32]), *v6 + 40 * v82, v9);
          if (v5)
          {
          }

          if (v82 < v81)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_241CDE470(v10);
          }

          if (v80 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v83 = &v10[16 * v80];
          *(v83 + 4) = v81;
          *(v83 + 5) = v82;
          v121 = v10;
          result = sub_241CDE3E4(v42);
          v10 = v121;
          v40 = *(v121 + 2);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v47 = &v10[16 * v40 + 32];
        v48 = *(v47 - 64);
        v49 = *(v47 - 56);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_105;
        }

        v52 = *(v47 - 48);
        v51 = *(v47 - 40);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_106;
        }

        v54 = &v10[16 * v40];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_108;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v58 >= v50)
        {
          v76 = &v10[16 * v42 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_115;
          }

          if (v45 < v79)
          {
            v42 = v40 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_50;
      }

LABEL_3:
      v8 = v6[1];
      v9 = v110;
      if (v110 >= v8)
      {
        goto LABEL_91;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_91:
  v7 = *v7;
  if (!v7)
  {
    goto LABEL_129;
  }

  v9 = v10;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_241CDE470(v9);
    v9 = result;
  }

  v121 = v9;
  v96 = *(v9 + 16);
  if (v96 >= 2)
  {
    while (1)
    {
      v97 = *v6;
      if (!*v6)
      {
        goto LABEL_126;
      }

      v6 = (v96 - 1);
      v98 = *(v9 + 16 * v96);
      v99 = *(v9 + 16 * (v96 - 1) + 40);
      sub_241C9DBE4((v97 + 40 * v98), (v97 + 40 * *(v9 + 16 * (v96 - 1) + 32)), v97 + 40 * v99, v7);
      if (v5)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_241CDE470(v9);
      }

      if (v96 - 2 >= *(v9 + 16))
      {
        goto LABEL_117;
      }

      v100 = (v9 + 16 * v96);
      *v100 = v98;
      *(v100 + 1) = v99;
      v121 = v9;
      result = sub_241CDE3E4(v6);
      v9 = v121;
      v96 = *(v121 + 2);
      v6 = a3;
      if (v96 <= 1)
      {
      }
    }
  }
}

uint64_t sub_241C992C4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v158 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v164 = &v158 - v17;
  MEMORY[0x28223BE20](v16);
  v166 = &v158 - v18;
  v19 = sub_241CF8D88();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v178 = &v158 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v163 = &v158 - v25;
  result = MEMORY[0x28223BE20](v24);
  v167 = &v158 - v29;
  if (a3[1] < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_127:
    a4 = *v162;
    if (!*v162)
    {
      goto LABEL_167;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_129;
  }

  v30 = a3[1];
  v172 = v28;
  v173 = v15;
  v159 = a4;
  v31 = 0;
  v32 = (v27 + 48);
  v175 = (v27 + 8);
  v176 = (v27 + 32);
  v33 = MEMORY[0x277D84F90];
  v165 = a3;
  v174 = v12;
  v179 = (v27 + 48);
  v34 = v30;
  while (1)
  {
    if (v31 + 1 >= v34)
    {
      v34 = v31 + 1;
    }

    else
    {
      v35 = *a3;
      sub_241C96F9C(*a3 + 40 * (v31 + 1), &v184);
      sub_241C96F9C(v35 + 40 * v31, v181);
      LODWORD(v180) = sub_241C966B4(&v184, v181);
      if (v5)
      {
        sub_241C8EEE8(v181);
        sub_241C8EEE8(&v184);
      }

      v160 = 0;
      sub_241C8EEE8(v181);
      result = sub_241C8EEE8(&v184);
      v36 = v31;
      v37 = v31 + 2;
      v161 = v36;
      v5 = 40 * v36;
      a4 = v35 + 40 * v36 + 80;
      a3 = v166;
      v177 = v33;
      v171 = v34;
      while (v34 != v37)
      {
        sub_241C96F9C(a4, &v184);
        sub_241C96F9C(a4 - 40, v181);
        v49 = v185;
        v50 = v186;
        sub_241C97000(&v184, v185);
        AssetInfo.seriesSortKey.getter(v49, v50);
        if (v51 & 1) != 0 && (v52 = v182, v53 = v183, sub_241C97000(v181, v182), AssetInfo.seriesSortKey.getter(v52, v53), (v54))
        {
          v55 = v185;
          v56 = v186;
          sub_241C97000(&v184, v185);
          AssetInfo.releaseDate.getter(v55, v56, a3);
          v57 = *v32;
          if (v57(a3, 1, v19) == 1)
          {
            sub_241CF8D28();
            if (v57(a3, 1, v19) != 1)
            {
              sub_241CA0DE4(a3);
            }
          }

          else
          {
            (*v176)(v167, a3, v19);
          }

          v58 = v182;
          v59 = v183;
          sub_241C97000(v181, v182);
          v60 = v164;
          AssetInfo.releaseDate.getter(v58, v59, v164);
          if (v57(v60, 1, v19) == 1)
          {
            v61 = v163;
            sub_241CF8D28();
            if (v57(v60, 1, v19) != 1)
            {
              sub_241CA0DE4(v60);
            }
          }

          else
          {
            v61 = v163;
            (*v176)(v163, v60, v19);
          }

          v62 = v167;
          v48 = sub_241CF8D58();
          v63 = *v175;
          (*v175)(v61, v19);
          v63(v62, v19);
          a3 = v166;
          v33 = v177;
        }

        else
        {
          v38 = v185;
          v39 = v186;
          sub_241C97000(&v184, v185);
          v40 = AssetInfo.seriesSortKey.getter(v38, v39);
          if (v41)
          {
            v42 = 0;
          }

          else
          {
            v42 = v40;
          }

          v43 = v182;
          v44 = v183;
          sub_241C97000(v181, v182);
          v45 = AssetInfo.seriesSortKey.getter(v43, v44);
          if (v46)
          {
            v47 = 0;
          }

          else
          {
            v47 = v45;
          }

          v48 = v42 < v47;
        }

        sub_241C8EEE8(v181);
        result = sub_241C8EEE8(&v184);
        ++v37;
        a4 += 40;
        v32 = v179;
        v34 = v171;
        if ((v180 ^ v48))
        {
          v34 = v37 - 1;
          break;
        }
      }

      v31 = v161;
      if ((v180 & 1) == 0)
      {
        goto LABEL_37;
      }

      if (v34 < v161)
      {
        goto LABEL_160;
      }

      if (v161 < v34)
      {
        v64 = v34;
        v65 = 40 * v34 - 40;
        v66 = v161;
        v171 = v64;
        v67 = v64;
        do
        {
          if (v66 != --v67)
          {
            v68 = *v165;
            if (!*v165)
            {
              goto LABEL_164;
            }

            a4 = v68 + v5;
            v69 = v68 + v65;
            sub_241C914E4((v68 + v5), &v184);
            v70 = *(v69 + 32);
            v71 = *(v69 + 16);
            *a4 = *v69;
            *(a4 + 16) = v71;
            *(a4 + 32) = v70;
            result = sub_241C914E4(&v184, v69);
          }

          ++v66;
          v65 -= 40;
          v5 += 40;
        }

        while (v66 < v67);
        v5 = v160;
        a3 = v165;
        v32 = v179;
        v31 = v161;
        v34 = v171;
      }

      else
      {
LABEL_37:
        v5 = v160;
        a3 = v165;
      }
    }

    v72 = a3[1];
    if (v34 < v72)
    {
      if (__OFSUB__(v34, v31))
      {
        goto LABEL_157;
      }

      if (v34 - v31 < v159)
      {
        if (__OFADD__(v31, v159))
        {
          goto LABEL_158;
        }

        if (v31 + v159 >= v72)
        {
          a4 = a3[1];
        }

        else
        {
          a4 = v31 + v159;
        }

        if (a4 < v31)
        {
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          result = sub_241CDE470(v33);
          v33 = result;
LABEL_129:
          v187 = v33;
          v154 = *(v33 + 2);
          if (v154 >= 2)
          {
            while (*a3)
            {
              v155 = *&v33[16 * v154];
              v156 = *&v33[16 * v154 + 24];
              sub_241C9DFD4((*a3 + 40 * v155), (*a3 + 40 * *&v33[16 * v154 + 16]), *a3 + 40 * v156, a4);
              if (v5)
              {
              }

              if (v156 < v155)
              {
                goto LABEL_154;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_241CDE470(v33);
              }

              if (v154 - 2 >= *(v33 + 2))
              {
                goto LABEL_155;
              }

              v157 = &v33[16 * v154];
              *v157 = v155;
              *(v157 + 1) = v156;
              v187 = v33;
              result = sub_241CDE3E4(v154 - 1);
              v33 = v187;
              v154 = *(v187 + 2);
              if (v154 <= 1)
              {
              }
            }

            goto LABEL_165;
          }
        }

        if (v34 != a4)
        {
          break;
        }
      }
    }

    a4 = v34;
    if (v34 < v31)
    {
      goto LABEL_156;
    }

LABEL_49:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_241CBFB88(0, *(v33 + 2) + 1, 1, v33);
      v33 = result;
    }

    v74 = *(v33 + 2);
    v73 = *(v33 + 3);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      result = sub_241CBFB88((v73 > 1), v74 + 1, 1, v33);
      v33 = result;
    }

    *(v33 + 2) = v75;
    v76 = &v33[16 * v74];
    *(v76 + 4) = v31;
    *(v76 + 5) = a4;
    v168 = a4;
    a4 = *v162;
    if (!*v162)
    {
      goto LABEL_166;
    }

    if (v74)
    {
      while (1)
      {
        v77 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v33 + 4);
          v79 = *(v33 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_68:
          if (v81)
          {
            goto LABEL_145;
          }

          v94 = &v33[16 * v75];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_148;
          }

          v100 = &v33[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_151;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_152;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v75 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v104 = &v33[16 * v75];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_82:
        if (v99)
        {
          goto LABEL_147;
        }

        v107 = &v33[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_150;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_89:
        v115 = v77 - 1;
        if (v77 - 1 >= v75)
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (!*a3)
        {
          goto LABEL_163;
        }

        v116 = *&v33[16 * v115 + 32];
        v117 = *&v33[16 * v77 + 40];
        sub_241C9DFD4((*a3 + 40 * v116), (*a3 + 40 * *&v33[16 * v77 + 32]), *a3 + 40 * v117, a4);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_241CDE470(v33);
        }

        if (v115 >= *(v33 + 2))
        {
          goto LABEL_142;
        }

        v118 = &v33[16 * v115];
        *(v118 + 4) = v116;
        *(v118 + 5) = v117;
        v187 = v33;
        result = sub_241CDE3E4(v77);
        v33 = v187;
        v75 = *(v187 + 2);
        v32 = v179;
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v33[16 * v75 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_143;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_144;
      }

      v89 = &v33[16 * v75];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_146;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_149;
      }

      if (v93 >= v85)
      {
        v111 = &v33[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_153;
        }

        if (v80 < v114)
        {
          v77 = v75 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_3:
    v34 = a3[1];
    v31 = v168;
    if (v168 >= v34)
    {
      goto LABEL_127;
    }
  }

  v160 = v5;
  v180 = *a3;
  v119 = v180 + 40 * v34;
  v161 = v31;
  v120 = v31 - v34;
  v177 = v33;
  v168 = a4;
LABEL_100:
  v171 = v34;
  v169 = v120;
  v170 = v119;
  v121 = v119;
  while (1)
  {
    sub_241C96F9C(v121, &v184);
    sub_241C96F9C(v121 - 40, v181);
    v122 = v185;
    v123 = v186;
    sub_241C97000(&v184, v185);
    AssetInfo.seriesSortKey.getter(v122, v123);
    if (v124 & 1) != 0 && (v125 = v182, v126 = v183, sub_241C97000(v181, v182), AssetInfo.seriesSortKey.getter(v125, v126), (v127))
    {
      v128 = v185;
      v129 = v186;
      sub_241C97000(&v184, v185);
      v130 = v173;
      AssetInfo.releaseDate.getter(v128, v129, v173);
      v131 = *v32;
      if ((*v32)(v130, 1, v19) == 1)
      {
        sub_241CF8D28();
        if (v131(v130, 1, v19) != 1)
        {
          sub_241CA0DE4(v130);
        }
      }

      else
      {
        (*v176)(v178, v130, v19);
      }

      v143 = v182;
      v144 = v183;
      sub_241C97000(v181, v182);
      v145 = v174;
      AssetInfo.releaseDate.getter(v143, v144, v174);
      v146 = v145;
      if (v131(v145, 1, v19) == 1)
      {
        v147 = v172;
        sub_241CF8D28();
        v148 = v131(v145, 1, v19);
        v149 = v19;
        if (v148 != 1)
        {
          sub_241CA0DE4(v146);
        }
      }

      else
      {
        v147 = v172;
        (*v176)(v172, v145, v19);
        v149 = v19;
      }

      v150 = v178;
      v142 = sub_241CF8D58();
      v151 = *v175;
      (*v175)(v147, v149);
      v151(v150, v149);
      v19 = v149;
      v33 = v177;
      v32 = v179;
    }

    else
    {
      v132 = v185;
      v133 = v186;
      sub_241C97000(&v184, v185);
      v134 = AssetInfo.seriesSortKey.getter(v132, v133);
      if (v135)
      {
        v136 = 0;
      }

      else
      {
        v136 = v134;
      }

      v137 = v182;
      v138 = v183;
      sub_241C97000(v181, v182);
      v139 = AssetInfo.seriesSortKey.getter(v137, v138);
      if (v140)
      {
        v141 = 0;
      }

      else
      {
        v141 = v139;
      }

      v142 = v136 < v141;
    }

    sub_241C8EEE8(v181);
    result = sub_241C8EEE8(&v184);
    if ((v142 & 1) == 0)
    {
LABEL_99:
      v34 = v171 + 1;
      v119 = v170 + 40;
      v120 = v169 - 1;
      a4 = v168;
      if (v171 + 1 != v168)
      {
        goto LABEL_100;
      }

      v5 = v160;
      a3 = v165;
      v31 = v161;
      if (v168 < v161)
      {
        goto LABEL_156;
      }

      goto LABEL_49;
    }

    if (!v180)
    {
      break;
    }

    sub_241C914E4(v121, &v184);
    v152 = *(v121 - 24);
    *v121 = *(v121 - 40);
    *(v121 + 16) = v152;
    *(v121 + 32) = *(v121 - 8);
    sub_241C914E4(&v184, v121 - 40);
    v121 -= 40;
    if (__CFADD__(v120++, 1))
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_241C9A0A8(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v152 = a1;
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v168 = &v149 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v149 - v16;
  MEMORY[0x28223BE20](v15);
  v159 = &v149 - v17;
  v173 = sub_241CF8D88();
  v18 = *(*(v173 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v173);
  v167 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v172 = &v149 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](v23);
  v163 = &v149 - v27;
  v162 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_128:
    v32 = *v152;
    if (!*v152)
    {
      goto LABEL_170;
    }

    a4 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_164;
    }

    result = a4;
LABEL_131:
    v180 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v162)
      {
        v145 = *(result + 16 * a4);
        v146 = result;
        v147 = *(result + 16 * (a4 - 1) + 40);
        sub_241C9E924((*v162 + 40 * v145), (*v162 + 40 * *(result + 16 * (a4 - 1) + 32)), *v162 + 40 * v147, v32);
        if (v5)
        {
        }

        if (v147 < v145)
        {
          goto LABEL_157;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_241CDE470(v146);
        }

        if (a4 - 2 >= *(v146 + 2))
        {
          goto LABEL_158;
        }

        v148 = &v146[16 * a4];
        *v148 = v145;
        *(v148 + 1) = v147;
        v180 = v146;
        sub_241CDE3E4(a4 - 1);
        result = v180;
        a4 = *(v180 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_168;
    }
  }

  v150 = a4;
  v29 = 0;
  v30 = (v25 + 48);
  v169 = (v25 + 8);
  v170 = (v25 + 32);
  v31 = MEMORY[0x277D84F90];
  v164 = v12;
  v161 = v26;
  v171 = (v25 + 48);
  while (1)
  {
    v32 = v29;
    v155 = v31;
    v153 = v29;
    if (v29 + 1 >= v28)
    {
      v28 = v29 + 1;
      goto LABEL_38;
    }

    v33 = *v162;
    a4 = 40;
    sub_241C96F9C(*v162 + 40 * (v29 + 1), &v177);
    sub_241C96F9C(v33 + 40 * v29, v174);
    LODWORD(v166) = sub_241C96318(&v177, v174);
    if (v5)
    {
      sub_241C8EEE8(v174);
      sub_241C8EEE8(&v177);
    }

    v151 = 0;
    sub_241C8EEE8(v174);
    result = sub_241C8EEE8(&v177);
    v34 = v29 + 2;
    v165 = 40 * v29;
    v35 = v33 + 40 * v29 + 80;
    while (v28 != v34)
    {
      sub_241C96F9C(v35, &v177);
      sub_241C96F9C(v35 - 40, v174);
      v38 = v178;
      v39 = v179;
      sub_241C97000(&v177, v178);
      v40 = v159;
      AssetInfo.releaseDate.getter(v38, v39, v159);
      v41 = *v30;
      if (v41(v40, 1, v173) == 1)
      {
        sub_241CF8D28();
        if (v41(v40, 1, v173) != 1)
        {
          sub_241CA0DE4(v40);
        }
      }

      else
      {
        (*v170)(v163, v40, v173);
      }

      v42 = v175;
      v43 = v176;
      sub_241C97000(v174, v175);
      v44 = v160;
      AssetInfo.releaseDate.getter(v42, v43, v160);
      if (v41(v44, 1, v173) == 1)
      {
        v45 = v161;
        sub_241CF8D28();
        if (v41(v44, 1, v173) != 1)
        {
          sub_241CA0DE4(v44);
        }
      }

      else
      {
        v45 = v161;
        (*v170)(v161, v44, v173);
      }

      v46 = v163;
      if (sub_241CF8D68())
      {
        v47 = v178;
        v48 = v179;
        sub_241C97000(&v177, v178);
        v49 = AssetInfo.seriesSortKey.getter(v47, v48);
        if (v50)
        {
          v51 = 0;
        }

        else
        {
          v51 = v49;
        }

        v52 = v175;
        v53 = v176;
        sub_241C97000(v174, v175);
        v54 = AssetInfo.seriesSortKey.getter(v52, v53);
        LOBYTE(v53) = v55;
        v56 = *v169;
        v57 = v173;
        (*v169)(v161, v173);
        v56(v163, v57);
        if (v53)
        {
          v58 = 0;
        }

        else
        {
          v58 = v54;
        }

        a4 = v58 < v51;
      }

      else
      {
        a4 = sub_241CF8D48();
        v36 = *v169;
        v37 = v173;
        (*v169)(v45, v173);
        v36(v46, v37);
      }

      sub_241C8EEE8(v174);
      result = sub_241C8EEE8(&v177);
      ++v34;
      v35 += 40;
      v30 = v171;
      if ((v166 ^ a4))
      {
        v28 = v34 - 1;
        break;
      }
    }

    v5 = v151;
    v32 = v153;
    if (v166)
    {
      if (v28 < v153)
      {
        goto LABEL_163;
      }

      v12 = v164;
      if (v153 < v28)
      {
        v59 = 40 * v28 - 40;
        v60 = v28;
        v61 = v28;
        v62 = v153;
        v63 = v165;
        do
        {
          if (v62 != --v61)
          {
            v64 = *v162;
            if (!*v162)
            {
              goto LABEL_167;
            }

            v65 = v64 + v63;
            a4 = v64 + v59;
            sub_241C914E4((v64 + v63), &v177);
            v66 = *(a4 + 32);
            v67 = *(a4 + 16);
            *v65 = *a4;
            *(v65 + 16) = v67;
            *(v65 + 32) = v66;
            result = sub_241C914E4(&v177, a4);
            v32 = v153;
          }

          ++v62;
          v59 -= 40;
          v63 += 40;
        }

        while (v62 < v61);
        v30 = v171;
        v28 = v60;
      }
    }

    else
    {
      v12 = v164;
    }

LABEL_38:
    v68 = v162[1];
    if (v28 >= v68)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v28, v32))
    {
      goto LABEL_160;
    }

    if (v28 - v32 >= v150)
    {
      goto LABEL_47;
    }

    if (__OFADD__(v32, v150))
    {
      goto LABEL_161;
    }

    if (&v32[v150] >= v68)
    {
      v69 = v162[1];
    }

    else
    {
      v69 = &v32[v150];
    }

    if (v69 < v32)
    {
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      result = sub_241CDE470(a4);
      goto LABEL_131;
    }

    if (v28 == v69)
    {
LABEL_47:
      v29 = v28;
      if (v28 < v32)
      {
        goto LABEL_159;
      }

      goto LABEL_48;
    }

    v151 = v5;
    v165 = *v162;
    v116 = v165 + 40 * v28;
    v117 = &v32[-v28];
    v154 = v69;
LABEL_100:
    v158 = v28;
    v156 = v117;
    v157 = v116;
LABEL_101:
    sub_241C96F9C(v116, &v177);
    sub_241C96F9C(v116 - 40, v174);
    v118 = v178;
    v119 = v179;
    sub_241C97000(&v177, v178);
    v120 = v168;
    AssetInfo.releaseDate.getter(v118, v119, v168);
    v121 = v120;
    v122 = *v171;
    if ((*v171)(v121, 1, v173) == 1)
    {
      sub_241CF8D28();
      if (v122(v121, 1, v173) != 1)
      {
        sub_241CA0DE4(v121);
      }
    }

    else
    {
      (*v170)(v172, v121, v173);
    }

    v123 = v175;
    v124 = v176;
    sub_241C97000(v174, v175);
    AssetInfo.releaseDate.getter(v123, v124, v12);
    if (v122(v12, 1, v173) == 1)
    {
      v125 = v167;
      sub_241CF8D28();
      if (v122(v12, 1, v173) != 1)
      {
        sub_241CA0DE4(v12);
      }
    }

    else
    {
      v125 = v167;
      (*v170)(v167, v12, v173);
    }

    if (sub_241CF8D68())
    {
      v126 = v178;
      v127 = v179;
      sub_241C97000(&v177, v178);
      v128 = AssetInfo.seriesSortKey.getter(v126, v127);
      v130 = (v129 & 1) != 0 ? 0 : v128;
      v166 = v130;
      v131 = v175;
      v132 = v176;
      sub_241C97000(v174, v175);
      v133 = AssetInfo.seriesSortKey.getter(v131, v132);
      LOBYTE(v132) = v134;
      v135 = *v169;
      v136 = v125;
      v137 = v172;
      v138 = v173;
      (*v169)(v136, v173);
      v135(v137, v138);
      v12 = v164;
      v139 = (v132 & 1) != 0 ? 0 : v133;
      a4 = v139 < v166;
    }

    else
    {
      v140 = v172;
      a4 = sub_241CF8D48();
      v141 = *v169;
      v142 = v173;
      (*v169)(v125, v173);
      v141(v140, v142);
    }

    sub_241C8EEE8(v174);
    result = sub_241C8EEE8(&v177);
    if (a4)
    {
      break;
    }

LABEL_99:
    v28 = v158 + 1;
    v116 = v157 + 40;
    v117 = v156 - 1;
    v29 = v154;
    if ((v158 + 1) != v154)
    {
      goto LABEL_100;
    }

    v5 = v151;
    v30 = v171;
    v32 = v153;
    if (v154 < v153)
    {
      goto LABEL_159;
    }

LABEL_48:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v31 = v155;
    }

    else
    {
      result = sub_241CBFB88(0, *(v155 + 2) + 1, 1, v155);
      v31 = result;
    }

    v71 = *(v31 + 2);
    v70 = *(v31 + 3);
    a4 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      result = sub_241CBFB88((v70 > 1), v71 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = a4;
    v72 = &v31[16 * v71];
    *(v72 + 4) = v32;
    *(v72 + 5) = v29;
    v32 = *v152;
    if (!*v152)
    {
      goto LABEL_169;
    }

    if (v71)
    {
      while (1)
      {
        v73 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v74 = *(v31 + 4);
          v75 = *(v31 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_67:
          if (v77)
          {
            goto LABEL_148;
          }

          v90 = &v31[16 * a4];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_151;
          }

          v96 = &v31[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_154;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_155;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = a4 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v100 = &v31[16 * a4];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_81:
        if (v95)
        {
          goto LABEL_150;
        }

        v103 = &v31[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_153;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_88:
        v111 = v73 - 1;
        if (v73 - 1 >= a4)
        {
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (!*v162)
        {
          goto LABEL_166;
        }

        v112 = v31;
        a4 = *&v31[16 * v111 + 32];
        v113 = *&v31[16 * v73 + 40];
        sub_241C9E924((*v162 + 40 * a4), (*v162 + 40 * *&v31[16 * v73 + 32]), *v162 + 40 * v113, v32);
        if (v5)
        {
        }

        if (v113 < a4)
        {
          goto LABEL_144;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v114 = v112;
        }

        else
        {
          v114 = sub_241CDE470(v112);
        }

        v12 = v164;
        if (v111 >= *(v114 + 2))
        {
          goto LABEL_145;
        }

        v115 = &v114[16 * v111];
        *(v115 + 4) = a4;
        *(v115 + 5) = v113;
        v180 = v114;
        result = sub_241CDE3E4(v73);
        v31 = v180;
        a4 = *(v180 + 16);
        v30 = v171;
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v31[16 * a4 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_146;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_147;
      }

      v85 = &v31[16 * a4];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_149;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_152;
      }

      if (v89 >= v81)
      {
        v107 = &v31[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_156;
        }

        if (v76 < v110)
        {
          v73 = a4 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v28 = v162[1];
    if (v29 >= v28)
    {
      goto LABEL_128;
    }
  }

  if (v165)
  {
    sub_241C914E4(v116, &v177);
    v143 = *(v116 - 24);
    *v116 = *(v116 - 40);
    *(v116 + 16) = v143;
    *(v116 + 32) = *(v116 - 8);
    sub_241C914E4(&v177, v116 - 40);
    v116 -= 40;
    if (__CFADD__(v117++, 1))
    {
      goto LABEL_99;
    }

    goto LABEL_101;
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_241C9AEC8(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_104:
    v8 = *v107;
    if (!*v107)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_139:
      result = sub_241CDE470(v4);
    }

    v100 = v6;
    v128 = result;
    v101 = *(result + 16);
    if (v101 >= 2)
    {
      v4 = 40;
      while (*a3)
      {
        v102 = *(result + 16 * v101);
        v103 = result;
        v6 = *(result + 16 * (v101 - 1) + 40);
        sub_241C9F2D8((*a3 + 40 * v102), (*a3 + 40 * *(result + 16 * (v101 - 1) + 32)), *a3 + 40 * v6, v8);
        if (v100)
        {
        }

        if (v6 < v102)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_241CDE470(v103);
        }

        if (v101 - 2 >= *(v103 + 2))
        {
          goto LABEL_133;
        }

        v104 = &v103[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v6;
        v128 = v103;
        sub_241CDE3E4(v101 - 1);
        result = v128;
        v101 = *(v128 + 16);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_143;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v110 = v9;
    if (v8 + 1 >= v7)
    {
      v17 = v8 + 1;
    }

    else
    {
      v11 = v6;
      v12 = *a3;
      sub_241C96F9C(*a3 + 40 * v10, v125);
      v108 = v8;
      sub_241C96F9C(v12 + 40 * v8, v122);
      v13 = v126;
      v14 = v127;
      sub_241C97000(v125, v126);
      v15 = AssetInfo.sequenceNumber.getter(v13, v14);
      if ((v16 & 0x100000000) != 0)
      {
        v4 = MEMORY[0x245CFDCB0](0);
      }

      else
      {
        v4 = v15;
      }

      v18 = v123;
      v19 = v124;
      sub_241C97000(v122, v123);
      v20 = AssetInfo.sequenceNumber.getter(v18, v19);
      if ((v21 & 0x100000000) != 0)
      {
        v20 = MEMORY[0x245CFDCB0](0);
      }

      v113 = MEMORY[0x245CFDCD0](v20);
      sub_241C8EEE8(v122);
      result = sub_241C8EEE8(v125);
      v22 = v108 + 2;
      if (v108 + 2 >= v7)
      {
        v17 = v108 + 2;
        v6 = v11;
      }

      else
      {
        v23 = v12 + 40 * v108 + 40;
        v6 = v11;
        while (1)
        {
          v4 = v22;
          sub_241C96F9C(v23 + 40, &v119);
          sub_241C96F9C(v23, v116);
          v24 = v120;
          v25 = v121;
          sub_241C97000(&v119, v120);
          AssetInfo.sequenceNumber.getter(v24, v25);
          if ((v26 & 0x100000000) != 0)
          {
            MEMORY[0x245CFDCB0](0);
          }

          v27 = v117;
          v28 = v118;
          sub_241C97000(v116, v117);
          v29 = AssetInfo.sequenceNumber.getter(v27, v28);
          if ((v30 & 0x100000000) != 0)
          {
            v29 = MEMORY[0x245CFDCB0](0);
          }

          v31 = MEMORY[0x245CFDCD0](v29);
          sub_241C8EEE8(v116);
          result = sub_241C8EEE8(&v119);
          if ((v113 ^ v31))
          {
            break;
          }

          v22 = v4 + 1;
          v23 += 40;
          if (v7 == v4 + 1)
          {
            v10 = v4;
            v17 = v7;
            goto LABEL_22;
          }
        }

        v17 = v4;
        v10 = v4 - 1;
      }

LABEL_22:
      v8 = v108;
      if (v113)
      {
        if (v17 < v108)
        {
          goto LABEL_136;
        }

        if (v108 <= v10)
        {
          v32 = v108;
          v33 = v6;
          v4 = 40 * v17 - 40;
          v34 = 40 * v108;
          v35 = v17;
          do
          {
            if (v32 != --v35)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v36 = v40 + v34;
              v37 = v40 + v4;
              sub_241C914E4((v40 + v34), &v119);
              v38 = *(v37 + 32);
              v39 = *(v37 + 16);
              *v36 = *v37;
              *(v36 + 16) = v39;
              *(v36 + 32) = v38;
              result = sub_241C914E4(&v119, v37);
            }

            ++v32;
            v4 -= 40;
            v34 += 40;
          }

          while (v32 < v35);
          v6 = v33;
          v8 = v108;
        }
      }
    }

    v41 = a3[1];
    if (v17 < v41)
    {
      if (__OFSUB__(v17, v8))
      {
        goto LABEL_135;
      }

      if (v17 - v8 < a4)
      {
        v42 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_137;
        }

        if (v42 >= v41)
        {
          v42 = a3[1];
        }

        if (v42 < v8)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v17 != v42)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v17 < v8)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v110;
    }

    else
    {
      result = sub_241CBFB88(0, *(v110 + 16) + 1, 1, v110);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v54 = *(v9 + 24);
    v55 = v4 + 1;
    if (v4 >= v54 >> 1)
    {
      result = sub_241CBFB88((v54 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v55;
    v56 = v9 + 16 * v4;
    *(v56 + 32) = v8;
    *(v56 + 40) = v17;
    v57 = *v107;
    if (!*v107)
    {
      goto LABEL_144;
    }

    v8 = v17;
    if (v4)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v9 + 32);
          v60 = *(v9 + 40);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_72:
          if (v62)
          {
            goto LABEL_123;
          }

          v75 = (v9 + 16 * v55);
          v77 = *v75;
          v76 = v75[1];
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_126;
          }

          v81 = (v9 + 32 + 16 * v58);
          v83 = *v81;
          v82 = v81[1];
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_130;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v85 = (v9 + 16 * v55);
        v87 = *v85;
        v86 = v85[1];
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_86:
        if (v80)
        {
          goto LABEL_125;
        }

        v88 = v9 + 16 * v58;
        v90 = *(v88 + 32);
        v89 = *(v88 + 40);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_128;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_93:
        v4 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v96 = v9;
        v97 = *(v9 + 32 + 16 * v4);
        v98 = *(v9 + 32 + 16 * v58 + 8);
        sub_241C9F2D8((*a3 + 40 * v97), (*a3 + 40 * *(v9 + 32 + 16 * v58)), *a3 + 40 * v98, v57);
        if (v6)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_241CDE470(v96);
        }

        if (v4 >= *(v96 + 2))
        {
          goto LABEL_120;
        }

        v99 = &v96[16 * v4];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v128 = v96;
        result = sub_241CDE3E4(v58);
        v9 = v128;
        v55 = *(v128 + 16);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = v9 + 32 + 16 * v55;
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_121;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_122;
      }

      v70 = (v9 + 16 * v55);
      v72 = *v70;
      v71 = v70[1];
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_124;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_127;
      }

      if (v74 >= v66)
      {
        v92 = (v9 + 32 + 16 * v58);
        v94 = *v92;
        v93 = v92[1];
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_131;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_104;
    }
  }

  v105 = v6;
  v4 = *a3;
  v43 = *a3 + 40 * v17;
  v109 = v42;
  v44 = v8 - v17 + 1;
LABEL_42:
  v112 = v43;
  v114 = v17;
  v111 = v44;
  while (1)
  {
    sub_241C96F9C(v43, v125);
    sub_241C96F9C(v43 - 40, v122);
    v45 = v126;
    v46 = v127;
    sub_241C97000(v125, v126);
    AssetInfo.sequenceNumber.getter(v45, v46);
    if ((v47 & 0x100000000) != 0)
    {
      MEMORY[0x245CFDCB0](0);
    }

    v48 = v123;
    v49 = v124;
    sub_241C97000(v122, v123);
    v50 = AssetInfo.sequenceNumber.getter(v48, v49);
    if ((v51 & 0x100000000) != 0)
    {
      v50 = MEMORY[0x245CFDCB0](0);
    }

    v52 = MEMORY[0x245CFDCD0](v50);
    sub_241C8EEE8(v122);
    result = sub_241C8EEE8(v125);
    if ((v52 & 1) == 0)
    {
LABEL_41:
      ++v17;
      v43 = v112 + 40;
      v44 = v111 - 1;
      if ((v114 + 1) != v109)
      {
        goto LABEL_42;
      }

      v17 = v109;
      v6 = v105;
      goto LABEL_52;
    }

    if (!v4)
    {
      break;
    }

    sub_241C914E4(v43, &v119);
    v53 = *(v43 - 24);
    *v43 = *(v43 - 40);
    *(v43 + 16) = v53;
    *(v43 + 32) = *(v43 - 8);
    sub_241C914E4(&v119, v43 - 40);
    if (!v44)
    {
      goto LABEL_41;
    }

    ++v44;
    v43 -= 40;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_241C9B73C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v156 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v162 = &v156 - v17;
  MEMORY[0x28223BE20](v16);
  v164 = &v156 - v18;
  v19 = sub_241CF8D88();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v176 = &v156 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v161 = &v156 - v25;
  result = MEMORY[0x28223BE20](v24);
  v165 = &v156 - v29;
  if (a3[1] < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_121:
    a4 = *v160;
    if (!*v160)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_123;
  }

  v30 = a3[1];
  v170 = v28;
  v171 = v15;
  v157 = a4;
  v31 = 0;
  v32 = (v27 + 48);
  v173 = (v27 + 8);
  v174 = (v27 + 32);
  v33 = MEMORY[0x277D84F90];
  v163 = a3;
  v172 = v12;
  v177 = (v27 + 48);
  v34 = v30;
  while (1)
  {
    if (v31 + 1 >= v34)
    {
      v34 = v31 + 1;
    }

    else
    {
      v35 = *a3;
      sub_241C96F9C(*a3 + 40 * (v31 + 1), &v182);
      sub_241C96F9C(v35 + 40 * v31, v179);
      LODWORD(v178) = sub_241C95F74(&v182, v179);
      if (v5)
      {
        sub_241C8EEE8(v179);
        sub_241C8EEE8(&v182);
      }

      v158 = 0;
      sub_241C8EEE8(v179);
      result = sub_241C8EEE8(&v182);
      v36 = v31;
      v37 = v31 + 2;
      v159 = v36;
      v5 = 40 * v36;
      a4 = v35 + 40 * v36 + 80;
      a3 = v164;
      v175 = v33;
      v169 = v34;
      while (v34 != v37)
      {
        sub_241C96F9C(a4, &v182);
        sub_241C96F9C(a4 - 40, v179);
        v48 = v183;
        v49 = v184;
        sub_241C97000(&v182, v183);
        AssetInfo.seriesSortKey.getter(v48, v49);
        if (v50 & 1) != 0 && (v51 = v180, v52 = v181, sub_241C97000(v179, v180), AssetInfo.seriesSortKey.getter(v51, v52), (v53))
        {
          v54 = v183;
          v55 = v184;
          sub_241C97000(&v182, v183);
          AssetInfo.releaseDate.getter(v54, v55, a3);
          v56 = *v32;
          if (v56(a3, 1, v19) == 1)
          {
            sub_241CF8D28();
            if (v56(a3, 1, v19) != 1)
            {
              sub_241CA0DE4(a3);
            }
          }

          else
          {
            (*v174)(v165, a3, v19);
          }

          v57 = v180;
          v58 = v181;
          sub_241C97000(v179, v180);
          v59 = v162;
          AssetInfo.releaseDate.getter(v57, v58, v162);
          if (v56(v59, 1, v19) == 1)
          {
            v60 = v161;
            sub_241CF8D28();
            if (v56(v59, 1, v19) != 1)
            {
              sub_241CA0DE4(v59);
            }
          }

          else
          {
            v60 = v161;
            (*v174)(v161, v59, v19);
          }

          v61 = v165;
          v47 = sub_241CF8D48();
          v62 = *v173;
          (*v173)(v60, v19);
          v62(v61, v19);
          a3 = v164;
          v33 = v175;
        }

        else
        {
          v38 = v183;
          v39 = v184;
          sub_241C97000(&v182, v183);
          v40 = AssetInfo.seriesSortKey.getter(v38, v39);
          if (v41)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          v43 = v180;
          v44 = v181;
          sub_241C97000(v179, v180);
          v45 = AssetInfo.seriesSortKey.getter(v43, v44) < v42;
          v47 = v45 & ~v46;
        }

        sub_241C8EEE8(v179);
        result = sub_241C8EEE8(&v182);
        ++v37;
        a4 += 40;
        v32 = v177;
        v34 = v169;
        if ((v178 ^ v47))
        {
          v34 = v37 - 1;
          break;
        }
      }

      v31 = v159;
      if ((v178 & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v34 < v159)
      {
        goto LABEL_154;
      }

      if (v159 < v34)
      {
        v63 = v34;
        v64 = 40 * v34 - 40;
        v65 = v159;
        v169 = v63;
        v66 = v63;
        do
        {
          if (v65 != --v66)
          {
            v67 = *v163;
            if (!*v163)
            {
              goto LABEL_158;
            }

            a4 = v67 + v5;
            v68 = v67 + v64;
            sub_241C914E4((v67 + v5), &v182);
            v69 = *(v68 + 32);
            v70 = *(v68 + 16);
            *a4 = *v68;
            *(a4 + 16) = v70;
            *(a4 + 32) = v69;
            result = sub_241C914E4(&v182, v68);
          }

          ++v65;
          v64 -= 40;
          v5 += 40;
        }

        while (v65 < v66);
        v5 = v158;
        a3 = v163;
        v32 = v177;
        v31 = v159;
        v34 = v169;
      }

      else
      {
LABEL_34:
        v5 = v158;
        a3 = v163;
      }
    }

    v71 = a3[1];
    if (v34 < v71)
    {
      if (__OFSUB__(v34, v31))
      {
        goto LABEL_151;
      }

      if (v34 - v31 < v157)
      {
        if (__OFADD__(v31, v157))
        {
          goto LABEL_152;
        }

        if (v31 + v157 >= v71)
        {
          a4 = a3[1];
        }

        else
        {
          a4 = v31 + v157;
        }

        if (a4 < v31)
        {
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          result = sub_241CDE470(v33);
          v33 = result;
LABEL_123:
          v185 = v33;
          v152 = *(v33 + 2);
          if (v152 >= 2)
          {
            while (*a3)
            {
              v153 = *&v33[16 * v152];
              v154 = *&v33[16 * v152 + 24];
              sub_241C9F6E4((*a3 + 40 * v153), (*a3 + 40 * *&v33[16 * v152 + 16]), *a3 + 40 * v154, a4);
              if (v5)
              {
              }

              if (v154 < v153)
              {
                goto LABEL_148;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_241CDE470(v33);
              }

              if (v152 - 2 >= *(v33 + 2))
              {
                goto LABEL_149;
              }

              v155 = &v33[16 * v152];
              *v155 = v153;
              *(v155 + 1) = v154;
              v185 = v33;
              result = sub_241CDE3E4(v152 - 1);
              v33 = v185;
              v152 = *(v185 + 2);
              if (v152 <= 1)
              {
              }
            }

            goto LABEL_159;
          }
        }

        if (v34 != a4)
        {
          break;
        }
      }
    }

    a4 = v34;
    if (v34 < v31)
    {
      goto LABEL_150;
    }

LABEL_46:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_241CBFB88(0, *(v33 + 2) + 1, 1, v33);
      v33 = result;
    }

    v73 = *(v33 + 2);
    v72 = *(v33 + 3);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      result = sub_241CBFB88((v72 > 1), v73 + 1, 1, v33);
      v33 = result;
    }

    *(v33 + 2) = v74;
    v75 = &v33[16 * v73];
    *(v75 + 4) = v31;
    *(v75 + 5) = a4;
    v166 = a4;
    a4 = *v160;
    if (!*v160)
    {
      goto LABEL_160;
    }

    if (v73)
    {
      while (1)
      {
        v76 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v77 = *(v33 + 4);
          v78 = *(v33 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_65:
          if (v80)
          {
            goto LABEL_139;
          }

          v93 = &v33[16 * v74];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_142;
          }

          v99 = &v33[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_146;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v74 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v103 = &v33[16 * v74];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_79:
        if (v98)
        {
          goto LABEL_141;
        }

        v106 = &v33[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_144;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_86:
        v114 = v76 - 1;
        if (v76 - 1 >= v74)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_157;
        }

        v115 = *&v33[16 * v114 + 32];
        v116 = *&v33[16 * v76 + 40];
        sub_241C9F6E4((*a3 + 40 * v115), (*a3 + 40 * *&v33[16 * v76 + 32]), *a3 + 40 * v116, a4);
        if (v5)
        {
        }

        if (v116 < v115)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_241CDE470(v33);
        }

        if (v114 >= *(v33 + 2))
        {
          goto LABEL_136;
        }

        v117 = &v33[16 * v114];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        v185 = v33;
        result = sub_241CDE3E4(v76);
        v33 = v185;
        v74 = *(v185 + 2);
        v32 = v177;
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v33[16 * v74 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_137;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_138;
      }

      v88 = &v33[16 * v74];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_140;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_143;
      }

      if (v92 >= v84)
      {
        v110 = &v33[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_147;
        }

        if (v79 < v113)
        {
          v76 = v74 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v34 = a3[1];
    v31 = v166;
    if (v166 >= v34)
    {
      goto LABEL_121;
    }
  }

  v158 = v5;
  v178 = *a3;
  v118 = v178 + 40 * v34;
  v159 = v31;
  v119 = v31 - v34;
  v175 = v33;
  v166 = a4;
LABEL_97:
  v169 = v34;
  v167 = v119;
  v168 = v118;
  v120 = v118;
  while (1)
  {
    sub_241C96F9C(v120, &v182);
    sub_241C96F9C(v120 - 40, v179);
    v121 = v183;
    v122 = v184;
    sub_241C97000(&v182, v183);
    AssetInfo.seriesSortKey.getter(v121, v122);
    if (v123 & 1) != 0 && (v124 = v180, v125 = v181, sub_241C97000(v179, v180), AssetInfo.seriesSortKey.getter(v124, v125), (v126))
    {
      v127 = v183;
      v128 = v184;
      sub_241C97000(&v182, v183);
      v129 = v171;
      AssetInfo.releaseDate.getter(v127, v128, v171);
      v130 = *v32;
      if ((*v32)(v129, 1, v19) == 1)
      {
        sub_241CF8D28();
        if (v130(v129, 1, v19) != 1)
        {
          sub_241CA0DE4(v129);
        }
      }

      else
      {
        (*v174)(v176, v129, v19);
      }

      v141 = v180;
      v142 = v181;
      sub_241C97000(v179, v180);
      v143 = v172;
      AssetInfo.releaseDate.getter(v141, v142, v172);
      v144 = v143;
      if (v130(v143, 1, v19) == 1)
      {
        v145 = v170;
        sub_241CF8D28();
        v146 = v130(v143, 1, v19);
        v147 = v19;
        if (v146 != 1)
        {
          sub_241CA0DE4(v144);
        }
      }

      else
      {
        v145 = v170;
        (*v174)(v170, v143, v19);
        v147 = v19;
      }

      v148 = v176;
      v140 = sub_241CF8D48();
      v149 = *v173;
      (*v173)(v145, v147);
      v149(v148, v147);
      v19 = v147;
      v33 = v175;
      v32 = v177;
    }

    else
    {
      v131 = v183;
      v132 = v184;
      sub_241C97000(&v182, v183);
      v133 = AssetInfo.seriesSortKey.getter(v131, v132);
      if (v134)
      {
        v135 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v135 = v133;
      }

      v136 = v180;
      v137 = v181;
      sub_241C97000(v179, v180);
      v138 = AssetInfo.seriesSortKey.getter(v136, v137) < v135;
      v140 = v138 & ~v139;
    }

    sub_241C8EEE8(v179);
    result = sub_241C8EEE8(&v182);
    if ((v140 & 1) == 0)
    {
LABEL_96:
      v34 = v169 + 1;
      v118 = v168 + 40;
      v119 = v167 - 1;
      a4 = v166;
      if (v169 + 1 != v166)
      {
        goto LABEL_97;
      }

      v5 = v158;
      a3 = v163;
      v31 = v159;
      if (v166 < v159)
      {
        goto LABEL_150;
      }

      goto LABEL_46;
    }

    if (!v178)
    {
      break;
    }

    sub_241C914E4(v120, &v182);
    v150 = *(v120 - 24);
    *v120 = *(v120 - 40);
    *(v120 + 16) = v150;
    *(v120 + 32) = *(v120 - 8);
    sub_241C914E4(&v182, v120 - 40);
    v120 -= 40;
    if (__CFADD__(v119++, 1))
    {
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_241C9C520(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v126 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v8 = *v126;
    if (!*v126)
    {
      goto LABEL_150;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_144:
      result = sub_241CDE470(v4);
    }

    v119 = v6;
    v148 = result;
    v120 = *(result + 16);
    if (v120 >= 2)
    {
      v4 = 40;
      while (*a3)
      {
        v121 = *(result + 16 * v120);
        v122 = result;
        v6 = *(result + 16 * (v120 - 1) + 40);
        sub_241CA0034((*a3 + 40 * v121), (*a3 + 40 * *(result + 16 * (v120 - 1) + 32)), *a3 + 40 * v6, v8);
        if (v119)
        {
        }

        if (v6 < v121)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_241CDE470(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_138;
        }

        v123 = &v122[16 * v120];
        *v123 = v121;
        *(v123 + 1) = v6;
        v148 = v122;
        sub_241CDE3E4(v120 - 1);
        result = v148;
        v120 = *(v148 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v130 = v9;
    if (v8 + 1 >= v7)
    {
      v20 = v8 + 1;
    }

    else
    {
      v11 = v6;
      v12 = *a3;
      sub_241C96F9C(*a3 + 40 * v10, v145);
      v127 = v8;
      sub_241C96F9C(v12 + 40 * v8, v142);
      v13 = v146;
      v14 = v147;
      sub_241C97000(v145, v146);
      v15 = AssetInfo.sequenceNumber.getter(v13, v14);
      v4 = (v17 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v15;
      v18 = v16;
      v19 = v17;
      v21 = v143;
      v22 = v144;
      sub_241C97000(v142, v143);
      v23 = AssetInfo.sequenceNumber.getter(v21, v22);
      v26 = (v25 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v23;
      v133 = MEMORY[0x245CFDCD0](v4, v18, v19, v26, v24, v25);
      sub_241C8EEE8(v142);
      result = sub_241C8EEE8(v145);
      v27 = v127 + 2;
      if (v127 + 2 >= v7)
      {
        v20 = v127 + 2;
        v6 = v11;
      }

      else
      {
        v28 = v12 + 40 * v127 + 40;
        v6 = v11;
        while (1)
        {
          v4 = v27;
          sub_241C96F9C(v28 + 40, &v139);
          sub_241C96F9C(v28, v136);
          v29 = v140;
          v30 = v141;
          sub_241C97000(&v139, v140);
          v31 = AssetInfo.sequenceNumber.getter(v29, v30);
          v34 = (v33 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v31;
          v35 = v32;
          v36 = v33;
          v37 = v137;
          v38 = v138;
          sub_241C97000(v136, v137);
          v39 = AssetInfo.sequenceNumber.getter(v37, v38);
          v42 = (v41 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v39;
          v43 = MEMORY[0x245CFDCD0](v34, v35, v36, v42, v40, v41);
          sub_241C8EEE8(v136);
          result = sub_241C8EEE8(&v139);
          if ((v133 ^ v43))
          {
            break;
          }

          v27 = v4 + 1;
          v28 += 40;
          if (v7 == v4 + 1)
          {
            v10 = v4;
            v20 = v7;
            goto LABEL_25;
          }
        }

        v20 = v4;
        v10 = v4 - 1;
      }

LABEL_25:
      v8 = v127;
      if (v133)
      {
        if (v20 < v127)
        {
          goto LABEL_141;
        }

        if (v127 <= v10)
        {
          v44 = v127;
          v45 = v6;
          v4 = 40 * v20 - 40;
          v46 = 40 * v127;
          v47 = v20;
          do
          {
            if (v44 != --v47)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_147;
              }

              v48 = v52 + v46;
              v49 = v52 + v4;
              sub_241C914E4((v52 + v46), &v139);
              v50 = *(v49 + 32);
              v51 = *(v49 + 16);
              *v48 = *v49;
              *(v48 + 16) = v51;
              *(v48 + 32) = v50;
              result = sub_241C914E4(&v139, v49);
            }

            ++v44;
            v4 -= 40;
            v46 += 40;
          }

          while (v44 < v47);
          v6 = v45;
          v8 = v127;
        }
      }
    }

    v53 = a3[1];
    if (v20 < v53)
    {
      if (__OFSUB__(v20, v8))
      {
        goto LABEL_140;
      }

      if (v20 - v8 < a4)
      {
        v54 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_142;
        }

        if (v54 >= v53)
        {
          v54 = a3[1];
        }

        if (v54 < v8)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v20 != v54)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v20 < v8)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v130;
    }

    else
    {
      result = sub_241CBFB88(0, *(v130 + 16) + 1, 1, v130);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v73 = *(v9 + 24);
    v74 = v4 + 1;
    if (v4 >= v73 >> 1)
    {
      result = sub_241CBFB88((v73 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v74;
    v75 = v9 + 16 * v4;
    *(v75 + 32) = v8;
    *(v75 + 40) = v20;
    v76 = *v126;
    if (!*v126)
    {
      goto LABEL_149;
    }

    v8 = v20;
    if (v4)
    {
      while (1)
      {
        v77 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v78 = *(v9 + 32);
          v79 = *(v9 + 40);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_77:
          if (v81)
          {
            goto LABEL_128;
          }

          v94 = (v9 + 16 * v74);
          v96 = *v94;
          v95 = v94[1];
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_131;
          }

          v100 = (v9 + 32 + 16 * v77);
          v102 = *v100;
          v101 = v100[1];
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_135;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v74 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v104 = (v9 + 16 * v74);
        v106 = *v104;
        v105 = v104[1];
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_91:
        if (v99)
        {
          goto LABEL_130;
        }

        v107 = v9 + 16 * v77;
        v109 = *(v107 + 32);
        v108 = *(v107 + 40);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_133;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_98:
        v4 = v77 - 1;
        if (v77 - 1 >= v74)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v115 = v9;
        v116 = *(v9 + 32 + 16 * v4);
        v117 = *(v9 + 32 + 16 * v77 + 8);
        sub_241CA0034((*a3 + 40 * v116), (*a3 + 40 * *(v9 + 32 + 16 * v77)), *a3 + 40 * v117, v76);
        if (v6)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_241CDE470(v115);
        }

        if (v4 >= *(v115 + 2))
        {
          goto LABEL_125;
        }

        v118 = &v115[16 * v4];
        *(v118 + 4) = v116;
        *(v118 + 5) = v117;
        v148 = v115;
        result = sub_241CDE3E4(v77);
        v9 = v148;
        v74 = *(v148 + 16);
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = v9 + 32 + 16 * v74;
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_126;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v89 = (v9 + 16 * v74);
      v91 = *v89;
      v90 = v89[1];
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_129;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_132;
      }

      if (v93 >= v85)
      {
        v111 = (v9 + 32 + 16 * v77);
        v113 = *v111;
        v112 = v111[1];
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_136;
        }

        if (v80 < v114)
        {
          v77 = v74 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_109;
    }
  }

  v124 = v6;
  v4 = *a3;
  v55 = *a3 + 40 * v20;
  v128 = v8;
  v129 = v54;
  v56 = v8 - v20 + 1;
LABEL_45:
  v132 = v55;
  v134 = v20;
  v131 = v56;
  while (1)
  {
    sub_241C96F9C(v55, v145);
    sub_241C96F9C(v55 - 40, v142);
    v57 = v146;
    v58 = v147;
    sub_241C97000(v145, v146);
    v59 = AssetInfo.sequenceNumber.getter(v57, v58);
    if ((v61 & 0x100000000) != 0)
    {
      v62 = MEMORY[0x245CFDCB0](0);
    }

    else
    {
      v62 = v59;
    }

    v63 = v60;
    v64 = v61;
    v65 = v143;
    v66 = v144;
    sub_241C97000(v142, v143);
    v67 = AssetInfo.sequenceNumber.getter(v65, v66);
    if ((v69 & 0x100000000) != 0)
    {
      v70 = MEMORY[0x245CFDCB0](0);
    }

    else
    {
      v70 = v67;
    }

    v71 = MEMORY[0x245CFDCD0](v62, v63, v64, v70, v68, v69);
    sub_241C8EEE8(v142);
    result = sub_241C8EEE8(v145);
    if ((v71 & 1) == 0)
    {
LABEL_44:
      ++v20;
      v55 = v132 + 40;
      v56 = v131 - 1;
      if ((v134 + 1) != v129)
      {
        goto LABEL_45;
      }

      v20 = v129;
      v6 = v124;
      v8 = v128;
      goto LABEL_57;
    }

    if (!v4)
    {
      break;
    }

    sub_241C914E4(v55, &v139);
    v72 = *(v55 - 24);
    *v55 = *(v55 - 40);
    *(v55 + 16) = v72;
    *(v55 + 32) = *(v55 - 8);
    sub_241C914E4(&v139, v55 - 40);
    if (!v56)
    {
      goto LABEL_44;
    }

    ++v56;
    v55 -= 40;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}