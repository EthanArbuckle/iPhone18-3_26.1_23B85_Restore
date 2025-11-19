char *sub_1BA2808C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1D1BC(0, &unk_1EDC5DBA0, type metadata accessor for HKDisplayTypeIdentifier, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1BA280A04(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B9F2180C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1BA280B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DBE8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1BA280C6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EBBEF6B0, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BA280D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA280EE0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
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

  if (v13)
  {
    sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1BA281078()
{
  if (!qword_1EBBEF660)
  {
    sub_1B9F0D9AC(255, qword_1EDC62BD0);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF660);
    }
  }
}

void sub_1BA28155C()
{
  if (!qword_1EDC5E5B0)
  {
    v0 = sub_1BA4A6E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E5B0);
    }
  }
}

void sub_1BA2815B4()
{
  if (!qword_1EBBEF680)
  {
    sub_1B9F0D9AC(255, &qword_1EBBE9AF0);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF680);
    }
  }
}

void sub_1BA281620()
{
  if (!qword_1EDC5DC38)
  {
    sub_1B9F0D9AC(255, &qword_1EDC603E0);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DC38);
    }
  }
}

void sub_1BA28168C()
{
  if (!qword_1EDC6B448)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6E1B0);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B448);
    }
  }
}

void sub_1BA28172C()
{
  if (!qword_1EBBEF698)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEF6A0);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF698);
    }
  }
}

void sub_1BA281798()
{
  if (!qword_1EBBEAC28)
  {
    sub_1B9F0D9AC(255, &qword_1EBBE9B10);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAC28);
    }
  }
}

void sub_1BA281804()
{
  if (!qword_1EBBEF6B8)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEDF00);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF6B8);
    }
  }
}

void sub_1BA281870()
{
  if (!qword_1EDC5DC68)
  {
    sub_1B9F0D9AC(255, &unk_1EDC66C80);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DC68);
    }
  }
}

void sub_1BA2818DC()
{
  if (!qword_1EDC6E280)
  {
    sub_1B9F2180C(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A14B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E280);
    }
  }
}

uint64_t sub_1BA281958(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1BA28196C()
{
  if (!qword_1EBBEAC80)
  {
    sub_1B9F2180C(255, &qword_1EBBEAC88, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAC80);
    }
  }
}

void sub_1BA2819E8()
{
  if (!qword_1EBBEAC48)
  {
    sub_1B9F0D9AC(255, &unk_1EBBE9B28);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAC48);
    }
  }
}

void sub_1BA281A54()
{
  if (!qword_1EDC5DC80)
  {
    sub_1B9F0D9AC(255, qword_1EDC69430);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DC80);
    }
  }
}

void sub_1BA281AC0()
{
  if (!qword_1EBBED838)
  {
    sub_1B9F0D9AC(255, &qword_1EDC67F10);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED838);
    }
  }
}

void sub_1BA281B2C()
{
  if (!qword_1EDC61770)
  {
    sub_1B9F0D9AC(255, qword_1EDC61778);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC61770);
    }
  }
}

id DataTypeDetailConfiguration.HideableHearingArticlesComponent.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

__n128 DataTypeDetailConfiguration.HideableHearingArticlesComponent.init(predicate:maximumNumberOfArticles:header:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

uint64_t DataTypeDetailConfiguration.HideableHearingArticlesComponent.makeDataSource(context:)(uint64_t a1)
{
  sub_1BA1863C8();
  v41 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v43 = *(v1 + 8);
  v8 = *(v1 + 24);
  v44 = *(v1 + 16);
  v42 = v8;
  v9 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v10 = sub_1BA4A1B68();
  sub_1BA15E094();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  *(v11 + 32) = 0;
  if (*(a1 + 48) == 2)
  {
  }

  else
  {
    v12 = sub_1BA4A8338();

    if ((v12 & 1) == 0)
    {
      v13 = v7;
      v14 = [*(a1 + 40) profileIdentifier];
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        v37 = v14;
        v11 = sub_1BA27EFDC((v15 > 1), v16 + 1, 1, v11);
        v14 = v37;
      }

      *(v11 + 16) = v16 + 1;
      *(v11 + 8 * v16 + 32) = v14;
      v7 = v13;
    }
  }

  v17 = *(a1 + 40);
  v18 = *MEMORY[0x1E696B898];
  v19 = objc_allocWithZone(MEMORY[0x1E696C178]);
  v40 = v7;
  v39 = v10;
  v20 = v42;
  sub_1BA048494(v42, v9);
  v21 = [v19 initWithFeatureIdentifier:v18 healthStore:v17];
  v45[0] = v21;
  sub_1BA282138();
  v45[0] = sub_1BA4A39A8();
  sub_1BA0B9D44();
  v22 = v7;
  sub_1BA282184(&qword_1EDC5F500, sub_1BA0B9D44);
  sub_1BA4A4FE8();

  sub_1BA282184(&qword_1EBBED118, sub_1BA1863C8);
  v23 = v41;
  sub_1BA4A4F98();
  (*(v4 + 8))(v6, v23);
  v24 = objc_allocWithZone(type metadata accessor for HideableHearingArticlesFRCDataSource());
  *&v24[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
  v25 = &v24[qword_1EBBED128];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v24[qword_1EBBED130];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v24[qword_1EBBED138];
  *v27 = v22;
  v28 = v43;
  v27[8] = v43;
  *&v24[qword_1EBBED140] = v11;
  v46 = v22;
  v47 = v28;
  v45[0] = v20;
  v45[1] = v9;
  v29 = v39;
  v30 = v40;

  v31 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v29, v11, &v46, v45);
  v32 = sub_1BA186BA8(0);
  v33 = qword_1EDC84AD8;
  swift_beginAccess();
  v34 = [*&v31[v33] fetchRequest];
  [v34 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C();

  sub_1BA2821CC();
  swift_allocObject();
  v35 = sub_1BA0488BC(v31, v44);

  return v35;
}

unint64_t sub_1BA282138()
{
  result = qword_1EBBF15E0;
  if (!qword_1EBBF15E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBF15E0);
  }

  return result;
}

uint64_t sub_1BA282184(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA2821CC()
{
  if (!qword_1EBBEF700)
  {
    type metadata accessor for HideableHearingArticlesFRCDataSource();
    v0 = type metadata accessor for DataSourceWithSectionItemLimit();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF700);
    }
  }
}

uint64_t CloudSyncAlert.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CloudSyncAlert.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudSyncAlert.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CloudSyncAlert.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CloudSyncAlert.action.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CloudSyncAlert.action.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static CloudSyncAlert.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BA4A8338() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1BA4A8338();
}

uint64_t sub_1BA2824EC()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1BA282548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA285E78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA282570(uint64_t a1)
{
  v2 = sub_1BA282798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2825AC(uint64_t a1)
{
  v2 = sub_1BA282798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudSyncAlert.encode(to:)(void *a1)
{
  sub_1BA282CD4(0, &qword_1EBBEFA08, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA282798();
  sub_1BA4A8548();
  v15 = 0;
  v10 = v12[5];
  sub_1BA4A8248();
  if (!v10)
  {
    v14 = 1;
    sub_1BA4A8248();
    v13 = 2;
    sub_1BA4A8248();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA282798()
{
  result = qword_1EBBEFA10;
  if (!qword_1EBBEFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA10);
  }

  return result;
}

uint64_t CloudSyncAlert.hash(into:)()
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t CloudSyncAlert.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t CloudSyncAlert.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA282CD4(0, &qword_1EBBEFA18, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA282798();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_1BA4A8188();
  v12 = v11;
  v23 = v10;
  v25 = 1;
  v21 = sub_1BA4A8188();
  v22 = v13;
  v24 = 2;
  v14 = sub_1BA4A8188();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v9, v6);
  v18 = v22;
  *a2 = v23;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BA282B64()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA282BE8()
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t sub_1BA282C54()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

void sub_1BA282CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA282798();
    v7 = a3(a1, &type metadata for CloudSyncAlert.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA282D68(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BA4A8338() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1BA4A8338();
}

id sub_1BA282E60()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setMaximumUnitCount_];
  qword_1EBC09808 = v0;
  return result;
}

uint64_t static CloudSyncAlert.notSynced(since:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1BA4A3EA8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  if (qword_1EBBE85D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBC09808;
  v13 = sub_1BA4A16B8();
  sub_1BA4A1718();
  v14 = sub_1BA4A16B8();
  v15 = *(v6 + 8);
  v15(v11, v5);
  v16 = [v12 stringFromDate:v13 toDate:v14];

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;

    if (qword_1EBBE8658 != -1)
    {
      swift_once();
    }

    sub_1B9F2EAC0();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BA4B5480;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1B9F1BE20();
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    v21 = sub_1BA4A6768();
    v23 = v22;

    if ([objc_opt_self() wapiCapability])
    {
      if (qword_1EBBE8648 != -1)
      {
        swift_once();
      }

      v24 = &qword_1EBBEF8B8;
    }

    else
    {
      if (qword_1EBBE8640 != -1)
      {
        swift_once();
      }

      v24 = &qword_1EBBEF8A8;
    }

    v35 = *v24;
    v36 = v24[1];

    if (qword_1EBBE8650 != -1)
    {
      swift_once();
    }

    v37 = qword_1EBBEF8C8;
    v38 = unk_1EBBEF8D0;
    v39 = v51;
    *v51 = v21;
    v39[1] = v23;
    v39[2] = v35;
    v39[3] = v36;
    v39[4] = v37;
    v39[5] = v38;
  }

  else
  {
    v25 = v48;
    sub_1BA4A3E68();
    (*(v6 + 16))(v8, a1, v5);
    v26 = v25;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v29 = 136315138;
      v30 = sub_1BA4A1678();
      v32 = v31;
      v15(v8, v5);
      v33 = sub_1B9F0B82C(v30, v32, &v52);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1B9F07000, v27, v28, "Failed to format %s", v29, 0xCu);
      v34 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    else
    {

      v15(v8, v5);
    }

    (*(v49 + 8))(v26, v50);
    if (qword_1EBBE85E0 != -1)
    {
      swift_once();
    }

    v40 = unk_1EBBEF710;
    v41 = qword_1EBBEF718;
    v42 = unk_1EBBEF720;
    v43 = qword_1EBBEF728;
    v44 = unk_1EBBEF730;
    v45 = v51;
    *v51 = qword_1EBBEF708;
    v45[1] = v40;
    v45[2] = v41;
    v45[3] = v42;
    v45[4] = v43;
    v45[5] = v44;
  }
}

uint64_t sub_1BA283420()
{
  if (qword_1EBBE8638 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF898;
  v0 = unk_1EBBEF8A0;
  v2 = objc_opt_self();

  if ([v2 wapiCapability])
  {
    if (qword_1EBBE8648 != -1)
    {
      swift_once();
    }

    v3 = &qword_1EBBEF8B8;
  }

  else
  {
    if (qword_1EBBE8640 != -1)
    {
      swift_once();
    }

    v3 = &qword_1EBBEF8A8;
  }

  v5 = *v3;
  v4 = v3[1];

  if (qword_1EBBE8650 != -1)
  {
    swift_once();
  }

  qword_1EBBEF708 = v1;
  unk_1EBBEF710 = v0;
  qword_1EBBEF718 = v5;
  unk_1EBBEF720 = v4;
  qword_1EBBEF728 = qword_1EBBEF8C8;
  unk_1EBBEF730 = unk_1EBBEF8D0;
}

uint64_t static CloudSyncAlert.notSynced.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE85E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF710;
  v2 = qword_1EBBEF718;
  v3 = unk_1EBBEF720;
  v4 = qword_1EBBEF728;
  v5 = unk_1EBBEF730;
  *a1 = qword_1EBBEF708;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA283620()
{
  if (qword_1EBBE8660 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF8E8;
  v0 = unk_1EBBEF8F0;
  v2 = qword_1EBBE8668;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF8F8;
  v3 = unk_1EBBEF900;
  v5 = qword_1EBBE8670;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF738 = v1;
  unk_1EBBEF740 = v0;
  qword_1EBBEF748 = v4;
  unk_1EBBEF750 = v3;
  qword_1EBBEF758 = qword_1EBBEF908;
  unk_1EBBEF760 = unk_1EBBEF910;
}

uint64_t static CloudSyncAlert.iCloudStorageFull.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE85E8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF740;
  v2 = qword_1EBBEF748;
  v3 = unk_1EBBEF750;
  v4 = qword_1EBBEF758;
  v5 = unk_1EBBEF760;
  *a1 = qword_1EBBEF738;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA2837C8()
{
  if (qword_1EBBE8678 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF918;
  v0 = unk_1EBBEF920;
  v2 = qword_1EBBE8680;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_1EBBEF768 = v1;
  unk_1EBBEF770 = v0;
  qword_1EBBEF778 = 0;
  unk_1EBBEF780 = 0xE000000000000000;
  qword_1EBBEF788 = qword_1EBBEF928;
  unk_1EBBEF790 = unk_1EBBEF930;
}

uint64_t static CloudSyncAlert.iCloudCFU.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE85F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF770;
  v2 = qword_1EBBEF778;
  v3 = unk_1EBBEF780;
  v4 = qword_1EBBEF788;
  v5 = unk_1EBBEF790;
  *a1 = qword_1EBBEF768;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA283928()
{
  if (qword_1EDC5E7D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E7E0;
  v0 = *algn_1EDC5E7E8;
  v2 = qword_1EDC5E770;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC5E778;
  v3 = unk_1EDC5E780;
  v5 = qword_1EDC5E7A8;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EDC69370 = v1;
  *algn_1EDC69378 = v0;
  qword_1EDC69380 = v4;
  unk_1EDC69388 = v3;
  qword_1EDC69390 = qword_1EDC5E7B0;
  unk_1EDC69398 = *algn_1EDC5E7B8;
}

uint64_t static CloudSyncAlert.iCloudDisabled.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDC69368 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EDC69378;
  v2 = qword_1EDC69380;
  v3 = unk_1EDC69388;
  v4 = qword_1EDC69390;
  v5 = unk_1EDC69398;
  *a1 = qword_1EDC69370;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA283AD0()
{
  if (qword_1EBBE8690 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF938;
  v0 = unk_1EBBEF940;
  v2 = qword_1EBBE8698;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF948;
  v3 = unk_1EBBEF950;
  v5 = qword_1EBBE8650;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF798 = v1;
  unk_1EBBEF7A0 = v0;
  qword_1EBBEF7A8 = v4;
  unk_1EBBEF7B0 = v3;
  qword_1EBBEF7B8 = qword_1EBBEF8C8;
  unk_1EBBEF7C0 = unk_1EBBEF8D0;
}

uint64_t static CloudSyncAlert.iCloudFutureProtocolVersion.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE8600 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF7A0;
  v2 = qword_1EBBEF7A8;
  v3 = unk_1EBBEF7B0;
  v4 = qword_1EBBEF7B8;
  v5 = unk_1EBBEF7C0;
  *a1 = qword_1EBBEF798;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA283C78()
{
  if (qword_1EDC5E7C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E7C8;
  v0 = unk_1EDC5E7D0;
  v2 = qword_1EDC5E788;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC5E790;
  v3 = unk_1EDC5E798;
  v5 = qword_1EDC5E750;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EDC69330 = v1;
  *algn_1EDC69338 = v0;
  qword_1EDC69340 = v4;
  unk_1EDC69348 = v3;
  qword_1EDC69350 = qword_1EDC5E758;
  unk_1EDC69358 = unk_1EDC5E760;
}

uint64_t static CloudSyncAlert.healthSharingDisabled.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDC69328 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EDC69338;
  v2 = qword_1EDC69340;
  v3 = unk_1EDC69348;
  v4 = qword_1EDC69350;
  v5 = unk_1EDC69358;
  *a1 = qword_1EDC69330;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA283E20()
{
  if (qword_1EBBE86A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF958;
  v0 = unk_1EBBEF960;
  v2 = qword_1EBBE86B0;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF968;
  v3 = unk_1EBBEF970;
  v5 = qword_1EBBE86B8;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF7C8 = v1;
  unk_1EBBEF7D0 = v0;
  qword_1EBBEF7D8 = v4;
  unk_1EBBEF7E0 = v3;
  qword_1EBBEF7E8 = qword_1EBBEF978;
  unk_1EBBEF7F0 = unk_1EBBEF980;
}

uint64_t static CloudSyncAlert.healthSharingICloudManage.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE8610 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF7D0;
  v2 = qword_1EBBEF7D8;
  v3 = unk_1EBBEF7E0;
  v4 = qword_1EBBEF7E8;
  v5 = unk_1EBBEF7F0;
  *a1 = qword_1EBBEF7C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA283FC8()
{
  if (qword_1EBBE86C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF988;
  v0 = unk_1EBBEF990;
  v2 = qword_1EBBE86C8;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF998;
  v3 = unk_1EBBEF9A0;
  v5 = qword_1EBBE86D0;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF7F8 = v1;
  unk_1EBBEF800 = v0;
  qword_1EBBEF808 = v4;
  unk_1EBBEF810 = v3;
  qword_1EBBEF818 = qword_1EBBEF9A8;
  unk_1EBBEF820 = unk_1EBBEF9B0;
}

uint64_t static CloudSyncAlert.healthSyncEnabledManateeDisabled.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE8618 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF800;
  v2 = qword_1EBBEF808;
  v3 = unk_1EBBEF810;
  v4 = qword_1EBBEF818;
  v5 = unk_1EBBEF820;
  *a1 = qword_1EBBEF7F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA284170()
{
  if (qword_1EBBE86D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF9B8;
  v0 = unk_1EBBEF9C0;
  v2 = qword_1EBBE86E0;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF9C8;
  v3 = unk_1EBBEF9D0;
  v5 = qword_1EBBE86E8;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF828 = v1;
  unk_1EBBEF830 = v0;
  qword_1EBBEF838 = v4;
  unk_1EBBEF840 = v3;
  qword_1EBBEF848 = qword_1EBBEF9D8;
  unk_1EBBEF850 = unk_1EBBEF9E0;
}

uint64_t static CloudSyncAlert.healthSharingManateeDisabled.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE8620 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF830;
  v2 = qword_1EBBEF838;
  v3 = unk_1EBBEF840;
  v4 = qword_1EBBEF848;
  v5 = unk_1EBBEF850;
  *a1 = qword_1EBBEF828;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA284318()
{
  if (qword_1EBBE86F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF9E8;
  v0 = unk_1EBBEF9F0;
  v2 = qword_1EBBE86F8;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_1EBBEF858 = v1;
  unk_1EBBEF860 = v0;
  qword_1EBBEF868 = qword_1EBBEF9F8;
  unk_1EBBEF870 = unk_1EBBEFA00;
  qword_1EBBEF878 = 0;
  unk_1EBBEF880 = 0xE000000000000000;
}

uint64_t static CloudSyncAlert.healthSharingRestoreInProgress.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBE8628 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF860;
  v2 = qword_1EBBEF868;
  v3 = unk_1EBBEF870;
  v4 = qword_1EBBEF878;
  v5 = unk_1EBBEF880;
  *a1 = qword_1EBBEF858;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1BA284478()
{
  if ([objc_opt_self() wapiCapability])
  {
    if (qword_1EBBE8648 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EBBEF8B8;
  }

  else
  {
    if (qword_1EBBE8640 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EBBEF8A8;
  }

  v1 = *v0;

  qword_1EBBEF888 = v1;
  unk_1EBBEF890 = result;
  return result;
}

uint64_t static CloudSyncAlert.wifiSyncExplanation.getter()
{
  if (qword_1EBBE8630 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEF888;

  return v0;
}

void sub_1BA2845A0()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF898 = v1;
  unk_1EBBEF8A0 = v3;
}

void sub_1BA284684()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8A8 = v1;
  unk_1EBBEF8B0 = v3;
}

void sub_1BA284764()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8B8 = v1;
  unk_1EBBEF8C0 = v3;
}

void sub_1BA284844()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8C8 = v1;
  unk_1EBBEF8D0 = v3;
}

void sub_1BA284934()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8D8 = v1;
  unk_1EBBEF8E0 = v3;
}

void sub_1BA284A14()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8E8 = v1;
  unk_1EBBEF8F0 = v3;
}

void sub_1BA284AF8()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8F8 = v1;
  unk_1EBBEF900 = v3;
}

void sub_1BA284BD8()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF908 = v1;
  unk_1EBBEF910 = v3;
}

void sub_1BA284CC4()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF918 = v1;
  unk_1EBBEF920 = v3;
}

void sub_1BA284DAC()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF928 = v1;
  unk_1EBBEF930 = v3;
}

void sub_1BA284E98()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EDC5E7E0 = v1;
  *algn_1EDC5E7E8 = v3;
}

void sub_1BA284F78()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EDC5E778 = v1;
  unk_1EDC5E780 = v3;
}

void sub_1BA285058()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EDC5E7B0 = v1;
  *algn_1EDC5E7B8 = v3;
}

void sub_1BA28513C()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF938 = v1;
  unk_1EBBEF940 = v3;
}

void sub_1BA285220()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF948 = v1;
  unk_1EBBEF950 = v3;
}

uint64_t sub_1BA285304()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E7C8 = result;
  unk_1EDC5E7D0 = v1;
  return result;
}

uint64_t sub_1BA2853B0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E790 = result;
  unk_1EDC5E798 = v1;
  return result;
}

uint64_t sub_1BA28545C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E758 = result;
  unk_1EDC5E760 = v1;
  return result;
}

uint64_t sub_1BA285508()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF958 = result;
  unk_1EBBEF960 = v1;
  return result;
}

uint64_t sub_1BA2855B4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF968 = result;
  unk_1EBBEF970 = v1;
  return result;
}

uint64_t sub_1BA285660()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF978 = result;
  unk_1EBBEF980 = v1;
  return result;
}

uint64_t sub_1BA28570C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF988 = result;
  unk_1EBBEF990 = v1;
  return result;
}

uint64_t sub_1BA2857B8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF998 = result;
  unk_1EBBEF9A0 = v1;
  return result;
}

uint64_t sub_1BA285864()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9A8 = result;
  unk_1EBBEF9B0 = v1;
  return result;
}

uint64_t sub_1BA285910()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9B8 = result;
  unk_1EBBEF9C0 = v1;
  return result;
}

uint64_t sub_1BA2859BC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9C8 = result;
  unk_1EBBEF9D0 = v1;
  return result;
}

uint64_t sub_1BA285A68()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9D8 = result;
  unk_1EBBEF9E0 = v1;
  return result;
}

uint64_t sub_1BA285B14()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9E8 = result;
  unk_1EBBEF9F0 = v1;
  return result;
}

uint64_t sub_1BA285BC0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9F8 = result;
  unk_1EBBEFA00 = v1;
  return result;
}

id sub_1BA285C7C()
{
  _s31ClassForLocatingCloudSyncBundleCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC5E0F8 = result;
  return result;
}

unint64_t sub_1BA285CD8()
{
  result = qword_1EBBEFA20;
  if (!qword_1EBBEFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA20);
  }

  return result;
}

unint64_t sub_1BA285D74()
{
  result = qword_1EBBEFA28;
  if (!qword_1EBBEFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA28);
  }

  return result;
}

unint64_t sub_1BA285DCC()
{
  result = qword_1EBBEFA30;
  if (!qword_1EBBEFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA30);
  }

  return result;
}

unint64_t sub_1BA285E24()
{
  result = qword_1EBBEFA38;
  if (!qword_1EBBEFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA38);
  }

  return result;
}

uint64_t sub_1BA285E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t sub_1BA285F8C()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v2 == 3)
  {
    if (v1 == 192)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (v1 == 193)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (*v0 <= 0x81u)
  {
    if (v1 == 128)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v1 == 130)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_27:
    swift_once();
  }

  return sub_1BA4A1318();
}

double sub_1BA286428@<D0>(uint64_t a1@<X8>)
{
  if ((*v1 & 0xC0) == 0x40 && (*v1 & 0x3F) == 2)
  {
    v3 = [objc_opt_self() configurationWithScale_];
    v4 = sub_1BA4A6758();
    v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

    v6 = [objc_opt_self() systemGrayColor];
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 56) = 0;
    *(a1 + 64) = 1;
  }

  else
  {
    *a1 = 1;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 49) = 0u;
  }

  return result;
}

uint64_t sub_1BA286570()
{
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (*v0 == 2)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA2867D8()
{
  if (!*v0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_9;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA28691C(uint64_t a1@<X8>)
{
  if (*v1 == 2)
  {
    v3 = [objc_opt_self() configurationWithScale_];
    v4 = sub_1BA4A6758();
    v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

    v6 = [objc_opt_self() systemGrayColor];
    v7 = 1;
    *a1 = v5;
    *(a1 + 24) = 1;
    *(a1 + 48) = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *a1 = 1;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = v7;
}

HealthExperienceUI::SummarySharingSelectionSuggestedLabsCategory_optional __swiftcall SummarySharingSelectionSuggestedLabsCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HealthExperienceUI::SummarySharingSelectionSuggestedMedicationsCategory_optional __swiftcall SummarySharingSelectionSuggestedMedicationsCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_1BA286AD0()
{
  sub_1BA28A1BC(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B9FD0;
  *(v0 + 32) = -32384;
  *(v0 + 34) = -126;
  v16 = v0;
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v4 = [v3 chamomile];

  if (v4)
  {
    v5 = sub_1BA27F5FC(1, 4, 1, v0);
    *(v5 + 2) = 4;
    v5[35] = -62;
    v16 = v5;
  }

  sub_1B9FE242C(&unk_1F37FC018);
  v6 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1BA27F5FC(0, *(v16 + 16) + 1, 1, v16);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 1, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v10;
  v6[v8 + 32] = 0;
  v11 = v8 + 2;
  if (v9 < (v8 + 2))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 2, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v11;
  v6[v10 + 32] = 1;
  v12 = v8 + 3;
  if (v9 < (v8 + 3))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 3, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v12;
  v6[v11 + 32] = 2;
  v13 = v8 + 4;
  if (v9 < (v8 + 4))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 4, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v13;
  v6[v12 + 32] = 3;
  v14 = v8 + 5;
  if (v9 < (v8 + 5))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 5, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v14;
  v6[v13 + 32] = 64;
  v15 = v8 + 6;
  if (v9 < (v8 + 6))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 6, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v15;
  v6[v14 + 32] = 65;
  if (v9 < (v8 + 7))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 7, 1, v6);
  }

  *(v6 + 2) = v8 + 7;
  v6[v15 + 32] = 66;
}

uint64_t (*static SummarySharingSelectionSuggestedCategory.allCases.modify())()
{
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1BA286EF8()
{
  sub_1BA28A1BC(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B9FD0;
  *(v0 + 32) = -32384;
  *(v0 + 34) = -126;
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 chamomile];

  if (v4)
  {
    v5 = sub_1BA27F5FC(1, 4, 1, v0);
    *(v5 + 2) = 4;
    v5[35] = -62;
  }

  sub_1B9FE242C(&unk_1F37FC930);
}

uint64_t sub_1BA28704C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1BA2870CC(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static SummarySharingSelectionSuggestedCategory.suggestedFlowCategoryOrder.modify())()
{
  if (qword_1EBBE8700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BA2871BC@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
}

uint64_t sub_1BA287224(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v7;
}

uint64_t sub_1BA2872AC()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v2 == 3)
  {
    if (v1 == 192)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (v1 == 193)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (*v0 <= 0x81u)
  {
    if (v1 == 128)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v1 == 130)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_27:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA28772C()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      goto LABEL_14;
    }

    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EBC095A8;
    v4 = sub_1BA4A6758();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (v5)
    {
      return;
    }

    __break(1u);
  }

  if (v2 != 3)
  {
    goto LABEL_18;
  }

  if (v1 == 192)
  {
LABEL_29:
    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBC095A8;
    v19 = sub_1BA4A6758();
    v20 = [objc_opt_self() imageNamed:v19 inBundle:v18];

    if (v20)
    {
      return;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 193)
  {
LABEL_33:
    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EBC095A8;
    v22 = sub_1BA4A6758();
    v23 = [objc_opt_self() imageNamed:v22 inBundle:v21];

    if (v23)
    {
      return;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBC095A8;
  v7 = sub_1BA4A6758();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    return;
  }

  __break(1u);
LABEL_14:
  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBC095A8;
  v10 = sub_1BA4A6758();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    return;
  }

  __break(1u);
LABEL_18:
  if (v1 <= 129)
  {
    if (v1 != 128)
    {
LABEL_37:
      if (qword_1EBBE83F8 != -1)
      {
        swift_once();
      }

      v24 = qword_1EBC095A8;
      v25 = sub_1BA4A6758();
      v26 = [objc_opt_self() imageNamed:v25 inBundle:v24];

      if (!v26)
      {
        __break(1u);
        goto LABEL_41;
      }

      return;
    }

    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EBC095A8;
    v13 = sub_1BA4A6758();
    v14 = [objc_opt_self() imageNamed:v13 inBundle:v12];

    if (v14)
    {
      return;
    }

    __break(1u);
  }

  if (v1 != 130)
  {
LABEL_41:
    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EBC095A8;
    v28 = sub_1BA4A6758();
    v29 = [objc_opt_self() imageNamed:v28 inBundle:v27];

    if (!v29)
    {
      __break(1u);
    }

    return;
  }

  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EBC095A8;
  v16 = sub_1BA4A6758();
  v17 = [objc_opt_self() imageNamed:v16 inBundle:v15];

  if (!v17)
  {
    __break(1u);
    goto LABEL_29;
  }
}

char *SummarySharingSelectionSuggestedCategory.suggestedDataTypes.getter()
{
  v1 = *v0;
  if (v1 >> 6 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v1 >> 6 != 3)
  {
    return *(&off_1E7EECF20 + (v1 ^ 0x1FFFFFFFFFFFFF80));
  }

  if (v1 == 192)
  {
    sub_1BA28A050(0, &unk_1EDC5DBA0, type metadata accessor for HKDisplayTypeIdentifier, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B9FD0;
    *(inited + 32) = xmmword_1BA4CAE70;
    *(inited + 48) = 60;
    result = sub_1BA2808C8(1, 4, 1, inited);
    *(result + 2) = 4;
    *(result + 7) = 275;
  }

  else if (v1 == 193)
  {
    sub_1BA28A050(0, &unk_1EDC5DBA0, type metadata accessor for HKDisplayTypeIdentifier, MEMORY[0x1E69E6F90]);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_1BA4CAE10;
    *(v3 + 32) = xmmword_1BA4CAE20;
    *(v3 + 48) = xmmword_1BA4CAE30;
    *(v3 + 64) = xmmword_1BA4CAE40;
    *(v3 + 80) = xmmword_1BA4CAE50;
    *(v3 + 96) = xmmword_1BA4CAE60;
    result = sub_1BA2808C8(1, 11, 1, v3);
    *(result + 2) = 11;
    *(result + 14) = 275;
  }

  else
  {
    return &unk_1F37FD008;
  }

  return result;
}

uint64_t sub_1BA287EFC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *v2;
  if (v4 != 192)
  {
    if (a1 >> 62)
    {
      goto LABEL_76;
    }

    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

    return result;
  }

  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  result = [v6 displayTypeWithIdentifier_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result objectType];

  v41 = v7;
  v42 = v6;
  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_79:

    return 0;
  }

  v10 = sub_1BA4A7CC8();
  if (!v10)
  {
    goto LABEL_79;
  }

LABEL_6:
  v11 = 0;
  v12 = v3 & 0xC000000000000001;
  v13 = v3 & 0xFFFFFFFFFFFFFF8;
  v49 = v10;
  v51 = v3 + 32;
  v43 = v3;
  v45 = v3 & 0xFFFFFFFFFFFFFF8;
  v47 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v12)
    {
      v30 = MEMORY[0x1BFAF2860](v11, v3);
    }

    else
    {
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_73;
      }

      v30 = *(v51 + 8 * v11);
    }

    v31 = v30;
    v18 = __OFADD__(v11++, 1);
    if (v18)
    {
      break;
    }

    v32 = sub_1BA4A2758();
    v33 = v32;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v34 = v9;
      v4 = sub_1BA4A7D08();

      if (v4)
      {

        v31 = v42;
        goto LABEL_70;
      }

      if (v11 == v10)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (*(v32 + 16))
      {
        v4 = sub_1B9F0ADF8(0, &qword_1EDC6E920);
        v35 = sub_1BA4A7788();
        v36 = -1 << *(v33 + 32);
        v37 = v35 & ~v36;
        if ((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = *(*(v33 + 48) + 8 * v37);
            v40 = sub_1BA4A7798();

            if (v40)
            {
              break;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_51;
            }
          }

LABEL_70:

          return 1;
        }
      }

LABEL_51:

      v3 = v43;
      v13 = v45;
      v12 = v47;
      v10 = v49;
      if (v11 == v49)
      {
        goto LABEL_79;
      }
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    result = sub_1BA4A7CC8();
    if (!result)
    {
      return result;
    }

LABEL_9:
    v14 = 0;
    v15 = v4 >> 6;
    v50 = v3 & 0xFFFFFFFFFFFFFF8;
    v52 = v3 & 0xC000000000000001;
    v44 = v3;
    v46 = result;
    v48 = v3 + 32;
    while (1)
    {
      if (v52)
      {
        v16 = MEMORY[0x1BFAF2860](v14, v44);
      }

      else
      {
        if (v14 >= *(v50 + 16))
        {
          goto LABEL_75;
        }

        v16 = *(v48 + 8 * v14);
      }

      v17 = v16;
      v18 = __OFADD__(v14++, 1);
      if (v18)
      {
        break;
      }

      v19 = sub_1BA4A2768();
      if (v4 >> 6 > 1)
      {
        if (v15 == 3)
        {
          if (v4 == 194)
          {
            v20 = sub_1BA4A2218();
          }

          else
          {
            v20 = sub_1BA4A2268();
          }
        }

        else if (v4 > 129)
        {
          if (v4 == 130)
          {
            v20 = sub_1BA4A2238();
          }

          else
          {
            v20 = sub_1BA4A2278();
          }
        }

        else if (v4 == 128)
        {
          v20 = sub_1BA4A2248();
        }

        else
        {
          v20 = sub_1BA4A2258();
        }
      }

      else if (v15)
      {
        if ((v4 & 0x3F) != 0)
        {
          if ((v4 & 0x3F) == 1)
          {
            v20 = sub_1BA4A21C8();
          }

          else
          {
            v20 = sub_1BA4A21A8();
          }
        }

        else
        {
          v20 = sub_1BA4A21B8();
        }
      }

      else if (v4 > 1)
      {
        if (v4 == 2)
        {
          v20 = sub_1BA4A1FC8();
        }

        else
        {
          v20 = sub_1BA4A1F98();
        }
      }

      else if (v4)
      {
        v20 = sub_1BA4A1FA8();
      }

      else
      {
        v20 = sub_1BA4A1FD8();
      }

      v22 = v20;
      v23 = v21;
      if (*(v19 + 16))
      {
        sub_1BA4A8488();
        sub_1BA4A68C8();
        v24 = sub_1BA4A84D8();
        v3 = v19 + 56;
        v25 = -1 << *(v19 + 32);
        v26 = v24 & ~v25;
        if ((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(v19 + 48) + 16 * v26);
            v29 = *v28 == v22 && v28[1] == v23;
            if (v29 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v3 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          return 1;
        }
      }

LABEL_10:

      if (v14 == v46)
      {
        return 0;
      }
    }
  }
}

uint64_t SummarySharingSelectionSuggestedCategory.keyword.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 3)
    {
      if (v1 == 192)
      {
        return sub_1BA4A2228();
      }

      else if (v1 == 193)
      {
        return sub_1BA4A2268();
      }

      else
      {
        return sub_1BA4A2218();
      }
    }

    else if (*v0 > 0x81u)
    {
      if (v1 == 130)
      {
        return sub_1BA4A2238();
      }

      else
      {
        return sub_1BA4A2278();
      }
    }

    else if (v1 == 128)
    {
      return sub_1BA4A2248();
    }

    else
    {
      return sub_1BA4A2258();
    }
  }

  else if (v2)
  {
    v4 = v1 & 0x3F;
    if (v4)
    {
      if (v4 == 1)
      {
        return sub_1BA4A21C8();
      }

      else
      {
        return sub_1BA4A21A8();
      }
    }

    else
    {
      return sub_1BA4A21B8();
    }
  }

  else if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      return sub_1BA4A1FC8();
    }

    else
    {
      return sub_1BA4A1F98();
    }
  }

  else if (*v0)
  {
    return sub_1BA4A1FA8();
  }

  else
  {
    return sub_1BA4A1FD8();
  }
}

uint64_t SummarySharingSelectionSuggestedCategory.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 3)
    {
      v1 = 0x80504u >> (8 * (v1 + 64));
    }

    else
    {
      LOBYTE(v1) = v1 ^ 0x80;
    }
  }

  else
  {
    if (v2)
    {
      LOBYTE(v1) = v1 & 0x3F;
      v3 = 7;
    }

    else
    {
      v3 = 6;
    }

    MEMORY[0x1BFAF2ED0](v3);
  }

  return MEMORY[0x1BFAF2ED0](v1);
}

uint64_t SummarySharingSelectionSuggestedCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 3)
    {
      v1 = 0x80504u >> (8 * (v1 + 64));
    }

    else
    {
      LOBYTE(v1) = v1 ^ 0x80;
    }
  }

  else
  {
    if (v2)
    {
      LOBYTE(v1) = v1 & 0x3F;
      v3 = 7;
    }

    else
    {
      v3 = 6;
    }

    MEMORY[0x1BFAF2ED0](v3);
  }

  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA2885E4@<X0>(void *a1@<X8>)
{
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EDC605A0;
}

uint64_t sub_1BA288670()
{
  sub_1BA4A8488();
  SummarySharingSelectionSuggestedCategory.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t static SummarySharingSelectionSuggestedCategory.keywords(for:)(void *a1)
{
  v1 = sub_1BA288890([a1 displayTypeIdentifier]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v2, 0);
    v3 = 32;
    v4 = v16;
    do
    {
      v5 = *(v1 + v3);
      v6 = v5 >> 6;
      if (v5 >> 6 > 1)
      {
        if (v6 == 3)
        {
          if (v5 == 192)
          {
            v7 = sub_1BA4A2228();
          }

          else if (v5 == 193)
          {
            v7 = sub_1BA4A2268();
          }

          else
          {
            v7 = sub_1BA4A2218();
          }
        }

        else if (*(v1 + v3) > 0x81u)
        {
          if (v5 == 130)
          {
            v7 = sub_1BA4A2238();
          }

          else
          {
            v7 = sub_1BA4A2278();
          }
        }

        else if (v5 == 128)
        {
          v7 = sub_1BA4A2248();
        }

        else
        {
          v7 = sub_1BA4A2258();
        }
      }

      else if (v6)
      {
        v9 = v5 & 0x3F;
        if (v9)
        {
          if (v9 == 1)
          {
            v7 = sub_1BA4A21C8();
          }

          else
          {
            v7 = sub_1BA4A21A8();
          }
        }

        else
        {
          v7 = sub_1BA4A21B8();
        }
      }

      else if (*(v1 + v3) > 1u)
      {
        if (v5 == 2)
        {
          v7 = sub_1BA4A1FC8();
        }

        else
        {
          v7 = sub_1BA4A1F98();
        }
      }

      else if (*(v1 + v3))
      {
        v7 = sub_1BA4A1FA8();
      }

      else
      {
        v7 = sub_1BA4A1FD8();
      }

      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v7;
        v14 = v8;
        sub_1B9F1C360((v10 > 1), v11 + 1, 1);
        v8 = v14;
        v7 = v13;
      }

      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1BA288890(uint64_t a1)
{
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(off_1EDC605A0 + 2);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = off_1EDC605A0 + 32;

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v3[v4];
    v7 = SummarySharingSelectionSuggestedCategory.suggestedDataTypes.getter();
    v8 = *(v7 + 2);
    v9 = 32;
    do
    {
      if (!v8)
      {

        goto LABEL_6;
      }

      v10 = *&v7[v9];
      v9 += 8;
      --v8;
    }

    while (v10 != a1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BA066CA4(0, *(v5 + 16) + 1, 1);
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1BA066CA4((v11 > 1), v12 + 1, 1);
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + v12 + 32) = v6;
LABEL_6:
    ++v4;
  }

  while (v4 != v2);

  return v5;
}

uint64_t sub_1BA288A14@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA28A050(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  v7 = *a1;
  sub_1BA4A27B8();
  sub_1BA28A050(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69A3B68], v8);
  v16[15] = v7;
  SummarySharingSelectionSuggestedCategory.keyword.getter();
  v12 = sub_1BA4A0FA8();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1BA28A1BC(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = sub_1BA4A1D78();
  *(v13 + 40) = 0;
  v14 = sub_1BA4A25F8();

  result = sub_1B9F1C1B0(v6);
  *a2 = v14;
  return result;
}

void sub_1BA288CA4(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v3 = sub_1BA4A6AE8();
  v4 = objc_opt_self();
  v5 = [v4 orPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  sub_1BA4A21D8();
  v6 = sub_1BA4A2628();

  sub_1BA28A1BC(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B7510;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = v5;
  v9 = v6;
  v10 = sub_1BA4A6AE8();

  v11 = [v4 andPredicateWithSubpredicates_];

  v12 = sub_1BA4A26C8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5470;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:0];

  *(v13 + 32) = v16;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v17 = sub_1BA4A6AE8();

  [v12 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v12;
  v19 = sub_1BA4A1B68();
  v20 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v18 managedObjectContext:v19 sectionNameKeyPath:0 cacheName:0];

  v27[0] = 0;
  if ([v20 performFetch_])
  {
    v21 = v27[0];
    v22 = [v20 fetchedObjects];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1BA4A6B08();

      *a2 = v24;
    }

    else
    {

      *a2 = 0;
    }
  }

  else
  {
    v25 = v27[0];
    sub_1BA4A1488();

    swift_willThrow();
  }
}

uint64_t sub_1BA28903C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v7 = off_1EDC605A0;
  v8 = *(off_1EDC605A0 + 2);
  if (v8)
  {
    v14 = a3;

    v9 = MEMORY[0x1E69E7CC0];
    v10 = 32;
    v15 = a2;
    do
    {
      v13 = v7[v10];
      if (sub_1BA287EFC(v5, a2))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BA066CA4(0, *(v9 + 16) + 1, 1);
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1BA066CA4((v11 > 1), v12 + 1, 1);
        }

        *(v9 + 16) = v12 + 1;
        *(v9 + v12 + 32) = v13;
        a2 = v15;
      }

      ++v10;
      --v8;
    }

    while (v8);

    a3 = v14;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v9;
  return result;
}

BOOL _s18HealthExperienceUI40SummarySharingSelectionSuggestedCategoryO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v2 == 192)
      {
        if (v3 == 192)
        {
          return 1;
        }
      }

      else if (v2 == 193)
      {
        if (v3 == 193)
        {
          return 1;
        }
      }

      else if (v3 == 194)
      {
        return 1;
      }
    }

    else if (*a1 > 0x81u)
    {
      if (v2 == 130)
      {
        if (v3 == 130)
        {
          return 1;
        }
      }

      else if (v3 == 131)
      {
        return 1;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v4)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }
  }

  else if (v3 <= 0x3F)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_1BA2892B4()
{
  result = qword_1EBBEFA48;
  if (!qword_1EBBEFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA48);
  }

  return result;
}

unint64_t sub_1BA289350()
{
  result = qword_1EBBEFA60;
  if (!qword_1EBBEFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA60);
  }

  return result;
}

uint64_t sub_1BA2893E8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA28A1BC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA289488()
{
  result = qword_1EBBEFA80;
  if (!qword_1EBBEFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingSelectionSuggestedCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3D)
  {
    goto LABEL_17;
  }

  if (a2 + 195 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 195) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 195;
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

      return (*a1 | (v4 << 8)) - 195;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 195;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SummarySharingSelectionSuggestedCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 195 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 195) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3D)
  {
    v4 = 0;
  }

  if (a2 > 0x3C)
  {
    v5 = ((a2 - 61) >> 8) + 1;
    *result = a2 - 61;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BA289654(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 & 3 | (4 * (v1 >> 6))) - 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_1BA289688(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (((a2 - 2) >> 2) << 6)) ^ 0x80;
  }

  return result;
}

uint64_t sub_1BA2896CC(void *a1, uint64_t a2)
{
  v31 = a2;
  v38 = a1;
  sub_1BA289CD4();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA289DAC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA289F0C();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA289F74();
  v36 = v13;
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA28A0B4();
  v37 = v16;
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v39[0] = off_1EDC605A0;
  sub_1BA28A1BC(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA2893E8(&qword_1EBBEFA90, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory);
  sub_1BA4A6A18();
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v19 = v30;
  sub_1BA4A4C68();
  (*(v29 + 8))(v4, v19);
  sub_1BA4A4C88();
  (*(v7 + 8))(v9, v6);
  sub_1B9F0A534(v31, v39);
  v20 = swift_allocObject();
  sub_1B9F25598(v39, v20 + 16);
  sub_1BA28A050(0, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
  sub_1BA289EC4(&qword_1EBBEFAB8, sub_1BA289F0C);
  v21 = v33;
  sub_1BA4A4FD8();

  (*(v32 + 8))(v12, v21);
  v22 = swift_allocObject();
  v23 = v38;
  *(v22 + 16) = v38;
  sub_1BA289EC4(&qword_1EBBEFAC8, sub_1BA289F74);
  v24 = v23;
  v25 = v36;
  sub_1BA4A5058();

  (*(v34 + 8))(v15, v25);
  sub_1BA289EC4(&qword_1EBBEFAD0, sub_1BA28A0B4);
  v26 = v37;
  v27 = sub_1BA4A4F98();
  (*(v35 + 8))(v18, v26);
  return v27;
}

void sub_1BA289CD4()
{
  if (!qword_1EBBEFA88)
  {
    sub_1BA28A1BC(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2893E8(&qword_1EBBEFA90, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory);
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFA88);
    }
  }
}

void sub_1BA289DAC()
{
  if (!qword_1EBBEFA98)
  {
    sub_1BA289E5C();
    sub_1BA289EC4(&qword_1EBBEFAA0, sub_1BA289E5C);
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFA98);
    }
  }
}

void sub_1BA289E5C()
{
  if (!qword_1EBBE9A68)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B630);
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE9A68);
    }
  }
}

uint64_t sub_1BA289EC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA289F0C()
{
  if (!qword_1EBBEFAA8)
  {
    sub_1BA289E5C();
    v0 = sub_1BA4A84F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFAA8);
    }
  }
}

void sub_1BA289F74()
{
  if (!qword_1EBBEFAB0)
  {
    sub_1BA289F0C();
    sub_1BA28A050(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    sub_1BA289EC4(&qword_1EBBEFAB8, sub_1BA289F0C);
    v0 = sub_1BA4A4B18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFAB0);
    }
  }
}

void sub_1BA28A050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA28A0B4()
{
  if (!qword_1EBBEFAC0)
  {
    sub_1BA289F74();
    sub_1BA28A1BC(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA289EC4(&qword_1EBBEFAC8, sub_1BA289F74);
    v0 = sub_1BA4A4C08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFAC0);
    }
  }
}

void sub_1BA28A1BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SearchCoordinator.__allocating_init(healthExperienceStore:healthStore:enhancedSearchResultProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1B9F146F0(a1, a2, a3);

  return v4;
}

uint64_t SearchCoordinator.__allocating_init(healthExperienceStore:healthStore:injectedEnhancedSearchResultProvider:injectedKeywordSearchResultProvider:injectedDirectSearchResultProvider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F0A534(a1, v26);
  if (*(a3 + 24))
  {
    sub_1B9F0A534(a3, v24);
  }

  else
  {
    v10 = *(a3 + 16);
    v24[0] = *a3;
    v24[1] = v10;
    v25 = *(a3 + 32);
  }

  sub_1B9F0A534(a4, v23);
  sub_1B9F0A534(a5, v20);
  v11 = v21;
  v12 = v22;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v16, v14);
  v18 = sub_1BA28C63C(v26, v24, v23, v16, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  if (*(a3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v18;
}

uint64_t SearchCoordinator.search(_:enhanced:actionHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  if (*(v5 + 176))
  {

    sub_1BA4A6C98();
  }

  v15 = sub_1BA4A6C88();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1BA4A6C68();

  v16 = sub_1BA4A6C58();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = a3 & 1;
  *(v17 + 40) = v6;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a4;
  *(v17 + 72) = a5;
  *(v6 + 176) = sub_1BA0BF220(0, 0, v14, &unk_1BA4CB1B8, v17);
}

uint64_t sub_1BA28A5B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v13;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 120) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a5;
  *(v8 + 64) = sub_1BA4A6C68();
  *(v8 + 72) = sub_1BA4A6C58();
  v10 = sub_1BA4A6C28();
  *(v8 + 80) = v10;
  *(v8 + 88) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BA28A664, v10, v9);
}

uint64_t sub_1BA28A664()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for SearchResultUpdate();
  v10 = *(v0 + 40);
  *(v0 + 96) = sub_1BA4A6C58();
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v10;
  *(v6 + 56) = v1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1BA28A7A4;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DBF8](v8, v5);
}

uint64_t sub_1BA28A7A4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BA28A904, v3, v2);
}

uint64_t sub_1BA28A904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA28A964(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 208) = a3;
  *(v8 + 16) = a2;
  *(v8 + 24) = a4;
  *(v8 + 64) = type metadata accessor for DirectSearchResult(0);
  *(v8 + 72) = swift_task_alloc();
  v9 = type metadata accessor for SearchResultUpdate();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  v10 = MEMORY[0x1E69E6720];
  sub_1BA28CBC0(0, &qword_1EBBEFAF0, type metadata accessor for SearchResultUpdate, MEMORY[0x1E69E6720]);
  *(v8 + 120) = swift_task_alloc();
  sub_1BA28CBC0(0, &qword_1EBBEFAF8, type metadata accessor for SearchResultUpdate, MEMORY[0x1E69E8590]);
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], v10);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = sub_1BA4A6C68();
  *(v8 + 168) = sub_1BA4A6C58();
  v13 = sub_1BA4A6C28();
  *(v8 + 176) = v13;
  *(v8 + 184) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BA28ABDC, v13, v12);
}

uint64_t sub_1BA28ABDC()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 208);
  v5 = *(v0 + 24);
  v6 = sub_1BA4A6C88();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 48) = v3;
  *(v8 + 56) = v2;

  sub_1BA28BD20(v1, &unk_1BA4CB2E8, v8);
  sub_1BA28CCFC(v1);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v3;
  v9[6] = v2;

  sub_1BA28BD20(v1, &unk_1BA4CB2F8, v9);
  sub_1BA28CCFC(v1);
  sub_1BA4A6C38();
  *(v0 + 209) = 0;
  v10 = sub_1BA4A6C58();
  *(v0 + 192) = v10;
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_1BA28AE00;
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8A8](v12, v10, v14, v13);
}

uint64_t sub_1BA28AE00()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BA28AF44, v3, v2);
}

uint64_t sub_1BA28AF44()
{
  v1 = *(v0 + 120);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    v2 = *(v0 + 209);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    if ((v2 & 1) == 0 && (sub_1BA4A6CA8() & 1) == 0)
    {
      v3 = *(v0 + 96);
      v4 = *(v0 + 48);
      v5 = *(v0 + 40);
      *v3 = *(v0 + 32);
      v3[1] = v5;
      swift_storeEnumTagMultiPayload();

      v4(v3);
      sub_1BA28CE50(v3, type metadata accessor for SearchResultUpdate);
    }

    goto LABEL_7;
  }

  sub_1BA28CF14(v1, *(v0 + 112), type metadata accessor for SearchResultUpdate);
  if (sub_1BA4A6CA8())
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);

    sub_1BA28CE50(v9, type metadata accessor for SearchResultUpdate);
    (*(v7 + 8))(v6, v8);
LABEL_7:

    v10 = *(v0 + 8);

    return v10();
  }

  sub_1BA28CEB0(*(v0 + 112), *(v0 + 104));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 104);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BA28CE50(v13, type metadata accessor for SearchResultUpdate);
LABEL_19:
      v19 = *(v0 + 209);
      goto LABEL_20;
    }

    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    sub_1BA28CF14(v13, v14, type metadata accessor for DirectSearchResult);
    v16 = *(*(v14 + *(v15 + 20)) + 16);
    sub_1BA28CE50(v14, type metadata accessor for DirectSearchResult);
    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = *v13;
    if (v17 >> 62)
    {
      v18 = sub_1BA4A7CC8();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
      goto LABEL_19;
    }
  }

  (*(v0 + 48))(*(v0 + 112));
  v19 = 1;
LABEL_20:
  sub_1BA28CE50(*(v0 + 112), type metadata accessor for SearchResultUpdate);
  *(v0 + 209) = v19;
  v20 = sub_1BA4A6C58();
  *(v0 + 192) = v20;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_1BA28AE00;
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  v24 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8A8](v22, v20, v24, v23);
}

uint64_t sub_1BA28B2BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 1584) = a7;
  *(v7 + 1576) = a6;
  *(v7 + 1568) = a5;
  *(v7 + 1624) = a4;
  *(v7 + 1560) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA28B2EC, 0, 0);
}

uint64_t sub_1BA28B2EC()
{
  if (*(v0 + 1624) == 1)
  {
    v1 = *(v0 + 1568);
    if (*(v1 + 80))
    {
      sub_1B9F0A534(v1 + 56, v0 + 1416);
      if (*(v0 + 1440))
      {
LABEL_4:
        v2 = *(v0 + 1584);
        v3 = *(v0 + 1576);
        v4 = *(v0 + 1568);
        sub_1B9F1134C((v0 + 1416), v0 + 1336);
        v5 = swift_task_alloc();
        *(v0 + 1592) = v5;
        v5[2] = v4;
        v5[3] = v3;
        v5[4] = v2;
        sub_1BA28CBC0(0, &qword_1EBBE99C0, sub_1BA28CA4C, MEMORY[0x1E69E62F8]);
        swift_asyncLet_begin();
        v6 = swift_task_alloc();
        *(v0 + 1600) = v6;
        v6[2] = v0 + 1336;
        v6[3] = v3;
        v6[4] = v2;
        swift_asyncLet_begin();

        return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 1544, sub_1BA28B598, v0 + 1296);
      }
    }

    else
    {
      v7 = *(v1 + 56);
      v8 = *(v1 + 72);
      *(v0 + 1448) = *(v1 + 88);
      *(v0 + 1416) = v7;
      *(v0 + 1432) = v8;
      if (*(v0 + 1440))
      {
        goto LABEL_4;
      }
    }
  }

  v9 = *(v0 + 1568);
  v10 = v9[15];
  v11 = v9[16];
  __swift_project_boxed_opaque_existential_1(v9 + 12, v10);
  v16 = (*(v11 + 16) + **(v11 + 16));
  v12 = swift_task_alloc();
  *(v0 + 1616) = v12;
  *v12 = v0;
  v12[1] = sub_1BA28B804;
  v13 = *(v0 + 1584);
  v14 = *(v0 + 1576);

  return v16(v0 + 1496, v14, v13, v10, v11);
}

uint64_t sub_1BA28B598()
{
  *(v0 + 1608) = *(v0 + 1544);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1552, sub_1BA28B608, v0 + 1376);
}

uint64_t sub_1BA28B624()
{
  v1 = *(v0 + 1560);

  sub_1B9FE294C(v2);
  sub_1BA28CA4C();
  sub_1BA28D19C();
  v3 = sub_1BA4A6B18();

  *v1 = v3;
  type metadata accessor for SearchResultUpdate();
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1552, sub_1BA28B6F8, v0 + 1456);
}

uint64_t sub_1BA28B714()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1544, sub_1BA28B780, v0 + 1504);
}

uint64_t sub_1BA28B79C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 1336);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA28B804()
{

  return MEMORY[0x1EEE6DFA0](sub_1BA28B900, 0, 0);
}

uint64_t sub_1BA28B900()
{
  **(v0 + 1560) = *(v0 + 1496);
  type metadata accessor for SearchResultUpdate();
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA28B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA28B9A0, 0, 0);
}

uint64_t sub_1BA28B9A0()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA28D258;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1BA28BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA28BAF8, 0, 0);
}

uint64_t sub_1BA28BAF8()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA28BC28;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1BA28BC28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA28BD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v20 - v8;
  v10 = *v3;
  v11 = swift_taskGroup_addPending();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1BA0C3488(a1, v9);
  v12 = sub_1BA4A6C88();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    sub_1BA4A6C78();
    (*(v13 + 8))(v9, v12);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_1BA28CCFC(v9);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1BA4A6C28();
  v16 = v15;
  swift_unknownObjectRelease();
LABEL_8:
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  type metadata accessor for SearchResultUpdate();
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v10;
  swift_task_create();
LABEL_11:

  return v11 & 1;
}

uint64_t sub_1BA28BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BA28BF8C, 0, 0);
}

uint64_t sub_1BA28BF8C()
{
  v1 = v0[3];
  v2 = v1[20];
  v3 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA28C0C0;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1BA28C0C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BA28C1BC, 0, 0);
}

uint64_t sub_1BA28C1BC()
{
  type metadata accessor for SearchResultUpdate();
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SearchCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return v0;
}

uint64_t SearchCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t _s18HealthExperienceUI18SearchResultUpdateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectSearchResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchResultUpdate();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v30 - v14);
  sub_1BA28D1F4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 56)];
  sub_1BA28CEB0(a1, v18);
  sub_1BA28CEB0(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BA28CEB0(v18, v15);
    v24 = *v15;
    if (!swift_getEnumCaseMultiPayload())
    {
      LOBYTE(v22) = sub_1B9FF1244(v24, *v20);

      v23 = type metadata accessor for SearchResultUpdate;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1BA28CEB0(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BA28CF14(v20, v6, type metadata accessor for DirectSearchResult);
      LOBYTE(v22) = _s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0();
      sub_1BA28CE50(v6, type metadata accessor for DirectSearchResult);
      sub_1BA28CE50(v12, type metadata accessor for DirectSearchResult);
      v23 = type metadata accessor for SearchResultUpdate;
      goto LABEL_17;
    }

    sub_1BA28CE50(v12, type metadata accessor for DirectSearchResult);
LABEL_16:
    LOBYTE(v22) = 0;
    v23 = sub_1BA28D1F4;
    goto LABEL_17;
  }

  sub_1BA28CEB0(v18, v9);
  v26 = *v9;
  v25 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_14:

    goto LABEL_16;
  }

  if (v26 == *v20 && v25 == v20[1])
  {

    LOBYTE(v22) = 1;
  }

  else
  {
    v28 = sub_1BA4A8338();

    v22 = v28 << 31 >> 31;
  }

  v23 = type metadata accessor for SearchResultUpdate;
LABEL_17:
  sub_1BA28CE50(v18, v23);
  return v22 & 1;
}

uint64_t sub_1BA28C63C(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a4, a5);
  type metadata accessor for SearchCoordinator();
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  sub_1B9F1134C(a1, v12 + 16);
  v13 = *(a2 + 16);
  *(v12 + 56) = *a2;
  *(v12 + 72) = v13;
  *(v12 + 88) = *(a2 + 32);
  sub_1B9F1134C(a3, v12 + 96);
  sub_1B9F1134C(&v15, v12 + 136);
  return v12;
}

uint64_t sub_1BA28C714(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BA0C2E3C;

  return sub_1BA28A5B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of SearchResultProvider.search(text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BA0C36D8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for SearchResultUpdate()
{
  result = qword_1EBBEFAD8;
  if (!qword_1EBBEFAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA28C994()
{
  sub_1BA28CBC0(319, &qword_1EBBE99C0, sub_1BA28CA4C, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DirectSearchResult(319);
    if (v1 <= 0x3F)
    {
      sub_1BA28CA98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BA28CA4C()
{
  result = qword_1EDC5E4A0;
  if (!qword_1EDC5E4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E4A0);
  }

  return result;
}

uint64_t sub_1BA28CA98()
{
  result = qword_1EBBEFAE8;
  if (!qword_1EBBEFAE8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EBBEFAE8);
  }

  return result;
}

uint64_t sub_1BA28CAE0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1BA0C36D8;

  return sub_1BA28A964(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_1BA28CBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA28CC24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA0C36D8;

  return sub_1BA28B2BC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BA28CCFC(uint64_t a1)
{
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA28CD88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA0C36D8;

  return sub_1BA28BF68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BA28CE50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA28CEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA28CF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA28CF7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C36D8;

  return sub_1BA0C1C88(a1, v4);
}

uint64_t sub_1BA28D034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C36D8;

  return sub_1BA28B97C(a1, v4, v5, v6);
}

uint64_t sub_1BA28D0E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA28BAD4(a1, v4, v5, v6);
}

unint64_t sub_1BA28D19C()
{
  result = qword_1EDC5E490;
  if (!qword_1EDC5E490)
  {
    sub_1BA28CA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E490);
  }

  return result;
}

void sub_1BA28D1F4()
{
  if (!qword_1EBBEFB00)
  {
    type metadata accessor for SearchResultUpdate();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEFB00);
    }
  }
}

uint64_t SnippetAllDataDataSource.__allocating_init(healthStore:healthExperienceStore:allDataSummarySections:additionalPredicates:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA28ED0C(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_1BA28D2D0()
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B7510;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = sub_1BA4A6758();
  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = sub_1BA4A6758();
  v6 = [v4 initWithKey:v5 ascending:1 selector:sel_localizedStandardCompare_];

  *(v0 + 40) = v6;
  return v0;
}

char *SnippetSectionDataSource.__allocating_init(healthStore:healthExperienceStore:allDataSummarySection:additionalPredicates:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a1;
  v9 = sub_1BA4A0FA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = objc_allocWithZone(v5);
  v37 = v16;
  v17 = qword_1EDC84BF0;
  v18 = sub_1BA4A3BD8();
  v19 = *(v18 - 8);
  v20 = &v16[v17];
  v21 = v18;
  (*(v19 + 16))(v20, a3);
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v10 + 8))(v12, v9);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  *(v22 + 32) = [a1 profileIdentifier];
  v23 = sub_1BA28E2EC(a3, v15, 0, v22);

  sub_1B9F1C1B0(v15);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5470;
  *(v24 + 32) = v23;
  v38 = v24;
  v25 = v23;
  sub_1B9F33948(v35);
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v26 = sub_1BA4A6AE8();

  v27 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v28 = MEMORY[0x1BFAED110]();
  [v28 setPredicate_];
  sub_1BA28D2D0();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v29 = sub_1BA4A6AE8();

  [v28 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v30 = v28;
  v31 = sub_1BA4A1B68();
  v32 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v30 managedObjectContext:v31 sectionNameKeyPath:0 cacheName:0];

  v33 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v32);
  (*(v19 + 8))(a3, v21);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v33;
}

char *SnippetSectionDataSource.init(healthStore:healthExperienceStore:allDataSummarySection:additionalPredicates:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v8 = sub_1BA4A0FA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = qword_1EDC84BF0;
  v33 = sub_1BA4A3BD8();
  v16 = *(v33 - 8);
  (*(v16 + 16))(v4 + v15, a3, v33);
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v9 + 8))(v11, v8);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5480;
  *(v17 + 32) = [a1 profileIdentifier];
  v18 = sub_1BA28E2EC(a3, v14, 0, v17);

  sub_1B9F1C1B0(v14);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5470;
  *(v19 + 32) = v18;
  v34 = v19;
  v20 = v18;
  sub_1B9F33948(v31);
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v21 = sub_1BA4A6AE8();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v23 = MEMORY[0x1BFAED110]();
  [v23 setPredicate_];
  sub_1BA28D2D0();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v24 = sub_1BA4A6AE8();

  [v23 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = v23;
  v26 = sub_1BA4A1B68();
  v27 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v25 managedObjectContext:v26 sectionNameKeyPath:0 cacheName:0];

  v28 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v27);
  (*(v16 + 8))(a3, v33);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v28;
}

uint64_t sub_1BA28DC20@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v1 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A3BD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A0FA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1BA4A3C28();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0F18();
  sub_1BA4A3C08();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 16))(v6, v25[1] + qword_1EDC84BF0, v3);
  sub_1BA4A3BE8();
  v16 = sub_1BA4A3BF8();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v19 = v26;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v20 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v16, v18, 0, 0, 0, 0, v19, 0, 0);
  v22 = v21;
  v23 = v27;
  v27[3] = v20;
  result = sub_1B9F323C4(&qword_1EDC69800, type metadata accessor for HeaderItem);
  v23[4] = result;
  *v23 = v22;
  return result;
}

uint64_t sub_1BA28DFBC()
{
  v1 = qword_1EDC84BF0;
  v2 = sub_1BA4A3BD8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id SnippetSectionDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetSectionDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA28E05C(uint64_t a1)
{
  v2 = qword_1EDC84BF0;
  v3 = sub_1BA4A3BD8();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t SnippetAllDataDataSource.init(healthStore:healthExperienceStore:allDataSummarySections:additionalPredicates:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1BA28ED0C(a1, a2, a3, a4);

  return v5;
}

uint64_t SnippetAllDataDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SnippetAllDataDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1BA28E2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v75 = a4;
  v76 = a3;
  v73 = a2;
  v5 = sub_1BA4A1728();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - v8;
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  v14 = sub_1BA4A0FA8();
  v15 = *(v14 - 8);
  v77 = v14;
  v78 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A3BD8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v65 - v22;
  v24 = *(v18 + 16);
  v67 = a1;
  v24(&v65 - v22, a1, v17, v21);
  v25 = (*(v18 + 88))(v23, v17);
  LODWORD(a1) = *MEMORY[0x1E69A3E30];
  sub_1B9F0CB04(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v26 = sub_1BA4A1C68();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v30 = v29;
  v65 = xmmword_1BA4B5480;
  *(v29 + 16) = xmmword_1BA4B5480;
  v31 = *(v27 + 104);
  if (v25 == a1)
  {
    v31(v29 + v28, *MEMORY[0x1E69A3BB8], v26);
  }

  else
  {
    v31(v29 + v28, *MEMORY[0x1E69A3BB0], v26);
    (*(v18 + 8))(v23, v17);
  }

  sub_1BA1FA3F8(v73, v13);
  v33 = v77;
  v32 = v78;
  if ((*(v78 + 48))(v13, 1, v77) == 1)
  {
    sub_1B9F1C1B0(v13);
    v34 = v66;
    (*(v18 + 104))(v66, *MEMORY[0x1E69A3E48], v17);
    sub_1B9F323C4(&qword_1EBBEFB08, MEMORY[0x1E69A3E70]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v80 == v79[8] && v81 == v79[9])
    {
      (*(v18 + 8))(v34, v17);

      v36 = v74;
      v35 = v75;
    }

    else
    {
      v50 = sub_1BA4A8338();
      (*(v18 + 8))(v34, v17);

      v36 = v74;
      v35 = v75;
      if ((v50 & 1) == 0)
      {
        v48 = 0;
        goto LABEL_12;
      }
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    sub_1B9F0CB04(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = v65;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1B9F1BE20();
    *(v51 + 32) = 0x746E6176656C6572;
    *(v51 + 40) = 0xEF65746144646E45;
    v32 = v78;
    v48 = sub_1BA4A6EE8();
    v52 = v48;
  }

  else
  {
    v37 = v68;
    (*(v32 + 32))(v68, v13, v33);
    v67 = sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v66 = "tAllDataDataSource";
    sub_1B9F0CB04(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BA4C9870;
    v39 = MEMORY[0x1E69E6158];
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v40 = sub_1B9F1BE20();
    *(v38 + 64) = v40;
    *(v38 + 32) = 0x746E6176656C6572;
    *(v38 + 40) = 0xEF65746144646E45;
    v41 = v69;
    sub_1BA4A0F88();
    v42 = sub_1BA4A16B8();
    v73 = v30;
    v43 = v72;
    v71 = *(v71 + 8);
    (v71)(v41, v72);
    v44 = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
    *(v38 + 96) = v44;
    v45 = sub_1B9F6A24C();
    *(v38 + 72) = v42;
    *(v38 + 136) = v39;
    *(v38 + 144) = v40;
    *(v38 + 104) = v45;
    *(v38 + 112) = 0x746E6176656C6572;
    *(v38 + 120) = 0xEF65746144646E45;
    v33 = v77;
    v32 = v78;
    v46 = v70;
    sub_1BA4A0F58();
    v47 = sub_1BA4A16B8();
    (v71)(v46, v43);
    v30 = v73;
    *(v38 + 176) = v44;
    *(v38 + 184) = v45;
    *(v38 + 152) = v47;
    v48 = sub_1BA4A6EE8();
    (*(v32 + 8))(v37, v33);
    v36 = v74;
    v35 = v75;
    v49 = v48;
  }

LABEL_12:
  sub_1BA4A27B8();
  (*(v32 + 56))(v36, 1, 1, v33);
  v53 = MEMORY[0x1BFAED020](v30, 0, v36, v35);

  sub_1B9F1C1B0(v36);
  v54 = v53;
  v55 = sub_1BA4A2608();
  v79[4] = v53;
  v79[5] = v48;
  v79[6] = 0;
  v79[7] = v55;
  v80 = MEMORY[0x1E69E7CC0];
  v56 = v48;
  result = v55;
  v58 = result;
  v59 = 0;
LABEL_13:
  if (v59 <= 4)
  {
    v60 = 4;
  }

  else
  {
    v60 = v59;
  }

  while (1)
  {
    if (v59 == 4)
    {
      sub_1B9F8AE1C();
      swift_arrayDestroy();
      sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v63 = sub_1BA4A6AE8();

      v64 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v64;
    }

    if (v60 == v59)
    {
      break;
    }

    v61 = v79[v59++ + 4];
    if (v61)
    {
      v62 = v61;
      MEMORY[0x1BFAF1510]();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      result = sub_1BA4A6BB8();
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA28ED0C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = a1;
  v59 = a2;
  v57 = sub_1BA4A0FA8();
  v7 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = v43 - v10;
  v54 = sub_1BA4A3BD8();
  v11 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13)
  {
    v43[1] = v4;
    v51 = objc_opt_self();
    v50 = sub_1BA4A27B8();
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v43[0] = a3;
    v15 = a3 + v14;
    v16 = *(v11 + 72);
    v48 = (v11 + 16);
    v49 = v16;
    v47 = (v7 + 8);
    v17 = MEMORY[0x1E69E7CC0];
    v46 = (v11 + 8);
    v45 = xmmword_1BA4B5480;
    v44 = xmmword_1BA4B5470;
    v52 = a4;
    do
    {
      v61 = v17;
      v62 = v13;
      sub_1B9F0A534(v59, v64);
      v18 = *v48;
      v19 = v53;
      v20 = v54;
      (*v48)(v53, v15, v54);
      v21 = objc_allocWithZone(type metadata accessor for SnippetSectionDataSource(0));
      v18(&v21[qword_1EDC84BF0], v19, v20);
      v22 = v58;
      v60 = v22;

      v23 = v56;
      sub_1BA4A0F18();
      v24 = v55;
      sub_1BA4A3C18();
      (*v47)(v23, v57);
      sub_1B9F1C048(0, &qword_1EDC6B450);
      v25 = swift_allocObject();
      *(v25 + 16) = v45;
      *(v25 + 32) = [v22 profileIdentifier];
      v26 = sub_1BA28E2EC(v19, v24, 0, v25);

      sub_1B9F1C1B0(v24);
      sub_1B9F1C048(0, &qword_1EDC6B400);
      v27 = swift_allocObject();
      *(v27 + 16) = v44;
      *(v27 + 32) = v26;
      v63 = v27;
      v28 = v26;
      sub_1B9F33948(a4);
      sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v29 = sub_1BA4A6AE8();

      v30 = [v51 andPredicateWithSubpredicates_];

      v31 = MEMORY[0x1BFAED110]();
      [v31 setPredicate_];
      sub_1BA28D2D0();
      sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
      v32 = sub_1BA4A6AE8();

      [v31 setSortDescriptors_];

      __swift_project_boxed_opaque_existential_1(v64, v64[3]);
      v33 = v31;
      v34 = sub_1BA4A1B68();
      v35 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v33 managedObjectContext:v34 sectionNameKeyPath:0 cacheName:0];

      v36 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v35);
      v17 = v61;

      (*v46)(v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1B9F1E00C(0, *(v17 + 16) + 1, 1, v17);
      }

      v38 = *(v17 + 16);
      v37 = *(v17 + 24);
      a4 = v52;
      v39 = v62;
      if (v38 >= v37 >> 1)
      {
        v17 = sub_1B9F1E00C(v37 > 1, v38 + 1, 1, v17);
      }

      *(v17 + 16) = v38 + 1;
      v40 = v17 + 16 * v38;
      *(v40 + 32) = v36;
      *(v40 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
      v15 += v49;
      v13 = v39 - 1;
    }

    while (v13);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v41 = CompoundSectionedDataSource.init(_:)(v17);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v41;
}

uint64_t sub_1BA28F354()
{
  result = sub_1BA4A3BD8();
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

uint64_t PDFHorizontallySequentialItems.init(spacing:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

CGFloat PDFHorizontallySequentialItems.render(context:document:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 16);
  v5 = 0.0;
  if (v4)
  {
    v7 = v2[1];
    v8 = *(a2 + 96);
    v9 = *v2 + 32;
    v10 = 0.0;
    v49 = v7;
    do
    {
      sub_1B9F0A534(v9, v51);
      type metadata accessor for PDFBuilder.Document();
      swift_allocObject();
      v24 = sub_1BA20F244(a2);
      if (v8)
      {
        v11 = v52;
        v12 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v54.origin.x = (*(v12 + 24))(v24, v11, v12);
        x = v54.origin.x;
        y = v54.origin.y;
        width = v54.size.width;
        height = v54.size.height;
        v17 = CGRectGetHeight(v54);
        if (v5 <= v17)
        {
          v5 = v17;
        }

        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        v10 = v10 + v7 + CGRectGetWidth(v55);
        v56.origin.x = PDFBuilder.Document.drawingContext.getter();
        v18 = CGRectGetMaxX(v56) - v10;
        v19 = *(a2 + 176);
        PDFBuilder.Document.drawingContext.getter();
        *(v24 + 168) = v18;
        *(v24 + 176) = v19;
        *(v24 + 184) = v20;
        *(v24 + 192) = v21;
        *(v24 + 200) = 0;
      }

      else
      {
        v57.origin.x = PDFBuilder.Document.drawingContext.getter();
        v25 = v57.origin.x;
        v26 = v57.origin.y;
        v27 = v57.size.width;
        v28 = v57.size.height;
        v50 = v5;
        v29 = v10 + CGRectGetMinX(v57);
        v58.origin.x = v25;
        v58.origin.y = v26;
        v58.size.width = v27;
        v58.size.height = v28;
        v30 = CGRectGetMinY(v58) + 0.0;
        v59.origin.x = v25;
        v59.origin.y = v26;
        v59.size.width = v27;
        v59.size.height = v28;
        v31 = CGRectGetWidth(v59) - v10;
        v60.origin.x = v25;
        v60.origin.y = v26;
        v60.size.width = v27;
        v60.size.height = v28;
        v32 = CGRectGetHeight(v60);
        *(v24 + 168) = v29;
        *(v24 + 176) = v30;
        v5 = v50;
        *(v24 + 184) = v31;
        *(v24 + 192) = v32;
        *(v24 + 200) = 0;
        v33 = v52;
        v34 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v61.origin.x = (*(v34 + 24))(v24, v33, v34);
        v35 = v61.origin.x;
        v36 = v61.origin.y;
        v37 = v61.size.width;
        v38 = v61.size.height;
        v39 = CGRectGetHeight(v61);
        if (v50 <= v39)
        {
          v5 = v39;
        }

        v62.origin.x = v35;
        v62.origin.y = v36;
        v62.size.width = v37;
        v62.size.height = v38;
        v7 = v49;
        v10 = v10 + v49 + CGRectGetWidth(v62);
      }

      v22 = v52;
      v23 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      (*(v23 + 16))(a1, v24, v22, v23);

      __swift_destroy_boxed_opaque_existential_1(v51);
      v9 += 40;
      --v4;
    }

    while (v4);
  }

  v63.origin.x = PDFBuilder.Document.drawingContext.getter();
  v40 = v63.origin.x;
  v41 = v63.origin.y;
  v42 = v63.size.width;
  v43 = v63.size.height;
  v44 = CGRectGetMinX(v63) + 0.0;
  v64.origin.x = v40;
  v64.origin.y = v41;
  v64.size.width = v42;
  v64.size.height = v43;
  v45 = v5;
  v46 = v5 + CGRectGetMinY(v64);
  v65.origin.x = v40;
  v65.origin.y = v41;
  v65.size.width = v42;
  v65.size.height = v43;
  v47 = CGRectGetWidth(v65);
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v42;
  v66.size.height = v43;
  result = CGRectGetHeight(v66) - v45;
  *(a2 + 168) = v44;
  *(a2 + 176) = v46;
  *(a2 + 184) = v47;
  *(a2 + 192) = result;
  *(a2 + 200) = 0;
  return result;
}

void PDFHorizontallySequentialItems.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v5 = sub_1BA20F244(a1);
  v6 = *(*&v3 + 16);
  if (v6)
  {
    v7 = *&v3 + 32;
    v8 = 0.0;
    v9 = 0.0;
    v31 = v4;
    do
    {
      v10 = v4;
      sub_1B9F0A534(v7, v33);
      v11 = v34;
      v12 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v13 = (*(v12 + 24))(v5, v11, v12);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v33);
      v36.origin.x = v13;
      v36.origin.y = v15;
      v36.size.width = v17;
      v36.size.height = v19;
      Height = CGRectGetHeight(v36);
      if (v8 <= Height)
      {
        v8 = Height;
      }

      v37.origin.x = v13;
      v37.origin.y = v15;
      v37.size.width = v17;
      v37.size.height = v19;
      v21 = v9 + CGRectGetWidth(v37);
      v38.origin.x = v13;
      v38.origin.y = v15;
      v38.size.width = v17;
      v38.size.height = v19;
      v22 = v10 + CGRectGetWidth(v38);
      v39.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      v26 = v39.size.height;
      v32 = v22 + CGRectGetMinX(v39);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = v26;
      v27 = v21;
      v28 = CGRectGetMinY(v40) + 0.0;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = v26;
      v29 = CGRectGetWidth(v41) - v22;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = v26;
      v30 = CGRectGetHeight(v42);
      v4 = v31;
      *(v5 + 168) = v32;
      *(v5 + 176) = v28;
      v9 = v27;
      *(v5 + 184) = v29;
      *(v5 + 192) = v30;
      v7 += 40;
      *(v5 + 200) = 0;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  PDFBuilder.Document.drawingContext.getter();
}

uint64_t HealthChecklistBaseFeatureStatusFeedItemProvider.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A3B78];
  v3 = sub_1BA4A1C68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1BA28FB54()
{
  sub_1B9F25350();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5460;
  *(v0 + 32) = 0x684368746C616548;
  *(v0 + 40) = 0xEF7473696C6B6365;
  *(v0 + 48) = sub_1BA4A24C8();
  *(v0 + 56) = v1;
  v2 = sub_1BA4A6AE8();

  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t HealthChecklistBaseFeatureStatusFeedItemProvider.makeFeedItemPublisher(context:featureStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  sub_1BA29080C(0, &qword_1EDC5F448, sub_1BA2906B8, MEMORY[0x1E695C000]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  sub_1BA2906B8(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(a4 + 72))(a1, a2, v22, a4, v16);
  sub_1BA2906EC(v18, v14);
  sub_1BA4A4E78();
  sub_1BA290750();
  v19 = sub_1BA4A4F98();
  (*(v9 + 8))(v11, v8);
  sub_1BA290870(v18, sub_1BA2906B8);
  return v19;
}

uint64_t HealthChecklistBaseFeatureStatusFeedItemProvider._makeFeedItem(context:featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a1;
  v83 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v81 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = v60 - v10;
  v11 = sub_1BA4A2A88();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v74 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1BA4A1C68();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v66 = AssociatedConformanceWitness;
  v65 = v14;
  swift_getAssociatedConformanceWitness();
  v64 = v16;
  v63 = swift_getAssociatedTypeWitness();
  v17 = sub_1BA4A7AA8();
  v77 = *(v17 - 8);
  v78 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v82 = v60 - v18;
  sub_1BA2907D8(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A30B8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v60 - v28;
  v30 = *(a4 + 64);
  v68 = a2;
  v71 = a3;
  v31 = a4;
  v30(a2, a3, a4, v27);
  v32 = v22;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1BA290870(v21, sub_1BA2907D8);
    v33 = sub_1BA4A1F38();
    return (*(*(v33 - 8) + 56))(v83, 1, 1, v33);
  }

  else
  {
    v62 = v23;
    (*(v23 + 32))(v29, v21, v22);
    v35 = v31;
    v36 = *(v31 + 56);
    v60[0] = v29;
    v37 = v71;
    v68 = v36(v29, v68, v71, v31);
    v67 = v38;
    v39 = *(v23 + 16);
    v61 = v32;
    v39(v25, v29, v32);
    v40 = v82;
    v41 = v63;
    v42 = swift_dynamicCast();
    (*(*(v41 - 8) + 56))(v40, v42 ^ 1u, 1, v41);
    v43 = swift_checkMetadataState();
    v44 = swift_checkMetadataState();
    v65 = *(v31 + 8);
    v60[1] = v5;
    v45 = sub_1BA4A2498();
    v47 = v46;
    v48 = v69;
    sub_1BA4A24A8();
    v49 = sub_1BA4A1F68();
    v50 = v83;
    static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(v43, v44, v68, v67, v45, v47, v40, v48, v49);

    (*(v70 + 8))(v48, v72);
    v51 = v60[0];
    sub_1BA4A30A8();
    sub_1BA4A1E18();
    sub_1B9F25350();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5480;
    v53 = v74;
    sub_1BA4A3018();
    v54 = sub_1BA4A2C78();
    v56 = v55;
    (*(v75 + 8))(v53, v76);
    *(inited + 32) = v54;
    *(inited + 40) = v56;
    sub_1B9FF6B78(inited);
    swift_setDeallocating();
    sub_1BA000898(inited + 32);
    sub_1BA4A1EF8();
    v57 = v79;
    (*(v35 + 48))(v37, v35);
    v58 = v81;
    swift_getAssociatedConformanceWitness();
    sub_1BA4A29E8();
    (*(v80 + 8))(v57, v58);
    sub_1BA4A1F18();
    sub_1BA4A1E08();
    sub_1BA4A24B8();
    sub_1BA4A1E48();
    sub_1BA28FB54();
    sub_1BA4A1ED8();
    sub_1B9F6AC8C(v68, v67);
    (*(v62 + 8))(v51, v61);
    v59 = sub_1BA4A1F38();
    (*(*(v59 - 8) + 56))(v50, 0, 1, v59);
    return (*(v77 + 8))(v82, v78);
  }
}

uint64_t sub_1BA2906EC(uint64_t a1, uint64_t a2)
{
  sub_1BA2906B8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA290750()
{
  result = qword_1EDC5F450;
  if (!qword_1EDC5F450)
  {
    sub_1BA29080C(255, &qword_1EDC5F448, sub_1BA2906B8, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F450);
  }

  return result;
}

void sub_1BA29080C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA290870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t static AnalyticsTransforming.analyticsString(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0x5F7972616D6D7573;
  switch(v1)
  {
    case 1:
      result = 0x6C6C615F776F6873;
      break;
    case 2:
      result = 0x745F6573776F7262;
      break;
    case 3:
      result = 0x79726F6765746163;
      break;
    case 4:
      result = 0x725F6C6961746564;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656C69666F7270;
      break;
    case 8:
    case 9:
      result = 0x5F676E6972616873;
      break;
    case 10:
      result = 0x72616265646973;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E6572745F6C6C61;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1BA290B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingCloudErrorDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharingCloudErrorDataSource()
{
  result = qword_1EDC64E00;
  if (!qword_1EDC64E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA290BA0()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D3C8;
  v14[5] = unk_1EDC6D3D8;
  v14[6] = xmmword_1EDC6D3E8;
  v14[7] = unk_1EDC6D3F8;
  v14[0] = xmmword_1EDC6D388;
  v14[1] = xmmword_1EDC6D398;
  v14[2] = xmmword_1EDC6D3A8;
  v14[3] = xmmword_1EDC6D3B8;
  v4 = xmmword_1EDC6D388;
  v0 = *(&xmmword_1EDC6D398 + 1);
  v5 = xmmword_1EDC6D398;
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D3C8 + 8);
  v10 = *&qword_1EDC6D3E0;
  v11 = *(&xmmword_1EDC6D3E8 + 8);
  v12 = qword_1EDC6D400;
  v8 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

char *sub_1BA290CC4(void *a1, void *a2)
{
  sub_1BA4A27B8();
  v4 = [a1 profileIdentifier];
  sub_1BA4A28F8();

  v5 = sub_1BA4A26A8();

  sub_1BA4A20F8();
  v6 = sub_1BA4A2628();

  sub_1B9F109F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B7510;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v8 = v5;
  v9 = v6;
  v10 = sub_1BA4A6AE8();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  v12 = sub_1BA4A26C8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5470;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v17 = sub_1BA4A6AE8();

  [v12 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = v12;
  v19 = sub_1BA4A1B68();
  v20 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v18 managedObjectContext:v19 sectionNameKeyPath:0 cacheName:0];

  v21 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v20);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v21;
}

Swift::Void __swiftcall DataTypeDetailRoomEntryAnalyticsEventSubmitting.sendRoomEntryAnalyticsEvent(objectType:chartOverlayVersion:healthStore:)(HKObjectType objectType, __C::HKChartOverlayVersion chartOverlayVersion, HKHealthStore healthStore)
{
  v5 = [(objc_class *)objectType.super.isa identifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  _s18HealthExperienceUI47DataTypeDetailRoomEntryAnalyticsEventSubmittingPAAE04sendghiJ010identifier19chartOverlayVersion11healthStoreySS_So07HKChartoP0aSo08HKHealthR0CtF_0(v6, v8, chartOverlayVersion._rawValue, healthStore.super.isa);
}

id sub_1BA291008(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA29131C();
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_1BA4B9FD0;
  *(inited + 40) = 0x80000001BA4F8FD0;
  *(inited + 48) = sub_1BA4A6758();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001BA4F8FF0;
  *(inited + 72) = a3;
  *(inited + 80) = 0x54656C69666F7270;
  *(inited + 88) = 0xEB00000000657079;
  v5 = a3;
  result = HKStringFromProfileType();
  if (result)
  {
    *(inited + 96) = result;
    v7 = sub_1B9FDC028(inited);
    swift_setDeallocating();
    sub_1BA291374();
    swift_arrayDestroy();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s18HealthExperienceUI47DataTypeDetailRoomEntryAnalyticsEventSubmittingPAAE04sendghiJ010identifier19chartOverlayVersion11healthStoreySS_So07HKChartoP0aSo08HKHealthR0CtF_0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  v8 = sub_1BA4A2F28();

  if (v8)
  {

    v10 = [a4 profileIdentifier];
    v11 = [v10 type];

    v15[5] = a1;
    v15[6] = a2;
    v15[7] = a3;
    v15[8] = v11;
    v12 = sub_1BA4A29B8();
    v13 = a3;
    v14 = sub_1BA4A29A8();
    v15[3] = v12;
    v15[4] = MEMORY[0x1E69A3198];
    v15[0] = v14;
    sub_1BA1190B4();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

unint64_t sub_1BA291270()
{
  result = qword_1EBBEFB10;
  if (!qword_1EBBEFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFB10);
  }

  return result;
}

unint64_t sub_1BA2912C8()
{
  result = qword_1EBBEFB18;
  if (!qword_1EBBEFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFB18);
  }

  return result;
}

void sub_1BA29131C()
{
  if (!qword_1EBBEFB20)
  {
    sub_1BA291374();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFB20);
    }
  }
}

void sub_1BA291374()
{
  if (!qword_1EBBEFB28)
  {
    sub_1BA0004FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEFB28);
    }
  }
}

uint64_t sub_1BA2913DC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA291478();
  return sub_1B9F4428C(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t sub_1BA291478()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6C084(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v43 - v7;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v13, v46);
  if (v47)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    v43[1] = sub_1B9F0D950(0, &unk_1EBBEFBC0);
    if (swift_dynamicCast())
    {
      if (*(&v49 + 1))
      {
        sub_1B9F1134C(&v48, v51);
        v14 = sub_1BA291FFC();
        v15 = v52;
        v16 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        (*(v16 + 24))(v15, v16);
        v17 = sub_1BA4A6758();

        [v14 setText_];

        v18 = v52;
        v19 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        (*(v19 + 16))(v18, v19);
        if (v20)
        {
          v21 = sub_1BA292494();
          v22 = sub_1BA4A6758();

          [v21 setInitialText:v22 alignment:{2 * (objc_msgSend(v1, sel_effectiveUserInterfaceLayoutDirection) != 1)}];
        }

        v23 = v52;
        v24 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        (*(v24 + 8))(v23, v24);
        if ((*(v10 + 48))(v8, 1, v9) == 1)
        {
          sub_1BA05DB44(v8);
        }

        else
        {
          (*(v10 + 32))(v12, v8, v9);
          v38 = sub_1BA292494();
          v39 = sub_1BA4A16B8();
          [v38 setCurrentDate_];

          (*(v10 + 8))(v12, v9);
        }

        sub_1B9F0A534(v51, v46);
        sub_1B9F0D950(0, qword_1EDC61778);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v44, &v48);
          v40 = *(&v49 + 1);
          v41 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          v42.value._countAndFlagsBits = (*(v41 + 8))(v40, v41);
          CompactDatePickerTableViewCell.updateAutomationIdentifiers(with:)(v42);

          __swift_destroy_boxed_opaque_existential_1(&v48);
        }

        else
        {
          v45 = 0;
          memset(v44, 0, sizeof(v44));
          sub_1B9F4428C(v44, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0D950);
        }

        return __swift_destroy_boxed_opaque_existential_1(v51);
      }
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }
  }

  else
  {
    sub_1B9F4428C(v46, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
  }

  sub_1B9F4428C(&v48, &qword_1EBBEFBB8, &unk_1EBBEFBC0, &protocol descriptor for CompactDatePickerTableViewCellDataSource, sub_1B9F0D950);
  sub_1BA4A3DE8();
  v25 = v1;
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51[0] = v29;
    *v28 = 136446722;
    v30 = sub_1BA4A85D8();
    v32 = sub_1B9F0B82C(v30, v31, v51);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v51);
    *(v28 + 22) = 2082;
    sub_1B9F0D4D8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    *&v48 = v33;
    sub_1BA0928CC();
    v34 = sub_1BA4A6808();
    v36 = sub_1B9F0B82C(v34, v35, v51);

    *(v28 + 24) = v36;
    _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to CompactDatePickerTableViewCellDataSource", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall CompactDatePickerTableViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (with.value._object)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA292494();

    MEMORY[0x1BFAF1350](0x746361706D6F432ELL, 0xEE0072656B636950);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];

    v6 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] initialTextLabel];
    if (v6)
    {
      v7 = v6;

      MEMORY[0x1BFAF1350](0xD000000000000010, 0x80000001BA4F9040);
      v8 = sub_1BA4A6758();

      [v7 setAccessibilityIdentifier_];
    }

    v9 = sub_1BA291FFC();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v13 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];
  }

  else
  {
    [v1 setAccessibilityIdentifier_];
    v10 = sub_1BA292494();
    [v10 setAccessibilityIdentifier_];

    v11 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] initialTextLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setAccessibilityIdentifier_];
    }

    v13 = sub_1BA291FFC();
    [v13 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA291DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA291E44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA291478();
  return sub_1B9F4428C(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t (*sub_1BA291EDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA291F40;
}

uint64_t sub_1BA291F40(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA291478();
  }

  return result;
}

id sub_1BA291F74()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA291FFC()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel);
  }

  else
  {
    v41 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setAdjustsFontForContentSizeCategory_];
    v10 = *MEMORY[0x1E69DDCF8];
    v11 = objc_opt_self();
    v12 = [v11 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:0];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v15 = v10;
      v16 = sub_1BA4A3E88();
      v17 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v18 = 136315906;
        v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v21 = sub_1B9F0B82C(v19, v20, &v44);
        v39 = v15;
        v22 = v21;

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1B9F6C084(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v44);

        *(v18 + 14) = v25;
        *(v18 + 22) = 2080;
        LODWORD(v42) = 0;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v44);
        v15 = v39;

        *(v18 + 24) = v28;
        *(v18 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v18 + 34) = v29;
        v30 = v37;
        *v37 = v29;
        _os_log_impl(&dword_1B9F07000, v16, v17, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v18, 0x2Au);
        sub_1B9F4428C(v30, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v18, -1, -1);
      }

      (*(v2 + 8))(v5, v41);
      v0 = v40;
      v32 = [v11 preferredFontDescriptorWithTextStyle_];
      v14 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v9 setFont_];

    v33 = [objc_opt_self() labelColor];
    [v9 setTextColor_];

    [v9 setNumberOfLines_];
    v34 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v35 = v7;
  return v8;
}

id sub_1BA292494()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker);
  }

  else
  {
    v4 = sub_1BA2924F8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA2924F8(uint64_t a1)
{
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1718();
  v6 = objc_allocWithZone(MEMORY[0x1E69A4440]);
  v7 = sub_1BA4A16B8();
  v8 = [v6 initWithFrame:0 initialText:v7 defaultDate:150 maxYears:{0.0, 0.0, 0.0, 0.0}];

  (*(v3 + 8))(v5, v2);
  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.960784314 blue:0.976470588 alpha:1.0];
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = v11;
  v12[4] = 0;
  v12[5] = v10;
  v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  aBlock[4] = sub_1B9FD7F54;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7EBBC;
  aBlock[3] = &block_descriptor_68;
  v14 = _Block_copy(aBlock);
  v15 = [v13 initWithDynamicProvider_];
  _Block_release(v14);

  [v9 setBackgroundColor_];

  [v9 setDelegate_];
  return v9;
}

id CompactDatePickerTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id CompactDatePickerTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for CompactDatePickerTableViewCell();
  v7 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  sub_1BA2929C4();

  return v8;
}

id sub_1BA2929C4()
{
  v1 = v0;
  v2 = sub_1BA4A4428();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA291F74();
  v5 = sub_1BA291FFC();
  [v4 addSubview_];

  v6 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView;
  v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView];
  v8 = sub_1BA292494();
  [v7 &selRef_centerXAnchor];

  v50 = objc_opt_self();
  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4BBC90;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel;
  v11 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel] leadingAnchor];
  v12 = [*&v1[v6] leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v9 + 32) = v13;
  v14 = [*&v1[v10] topAnchor];
  v15 = [*&v1[v6] topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v9 + 40) = v16;
  v17 = [*&v1[v10] bottomAnchor];
  v18 = [*&v1[v6] bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v9 + 48) = v19;
  v20 = [*&v1[v10] trailingAnchor];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker;
  v22 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] leadingAnchor];
  v23 = [v20 constraintLessThanOrEqualToAnchor:v22 constant:-8.0];

  *(v9 + 56) = v23;
  v24 = [*&v1[v21] trailingAnchor];
  v25 = [*&v1[v6] trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v9 + 64) = v26;
  v27 = [*&v1[v21] topAnchor];
  v28 = [*&v1[v6] topAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v9 + 72) = v29;
  v30 = [*&v1[v21] bottomAnchor];
  v31 = [*&v1[v6] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v9 + 80) = v32;
  v33 = [*&v1[v21] widthAnchor];
  v34 = [*&v1[v6] widthAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 multiplier:0.25];

  *(v9 + 88) = v35;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v36 = sub_1BA4A6AE8();

  [v50 activateConstraints_];

  [v1 setAccessibilityTraits_];
  v37 = [v1 contentView];
  [v37 addSubview_];

  v38 = v51;
  sub_1BA4A43A8();
  sub_1BA4A4338();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  (*(v52 + 8))(v38, v53);
  v47 = *&v1[v6];
  v48 = [v1 contentView];
  [v47 hk:v48 alignConstraintsWithView:v40 insets:{v42, v44, v46}];

  return [v1 setSelectionStyle_];
}

id CompactDatePickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompactDatePickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2931BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v7);
  if (v8)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &unk_1EBBEFBC0);
    if (swift_dynamicCast())
    {
      v4 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        v5 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v5 + 32))(v1, a1, v4, v5);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F4428C(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F4428C(&v9, &qword_1EBBEFBB8, &unk_1EBBEFBC0, &protocol descriptor for CompactDatePickerTableViewCellDataSource, sub_1B9F0D950);
}

uint64_t sub_1BA293478()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC601B0 = result;
  *algn_1EDC601B8 = v1;
  return result;
}

void sub_1BA29354C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  qword_1EDC601C8 = v2;
}

uint64_t static SummarySharingOnboardingInfoViewController.headerIcon.getter()
{
  if (qword_1EDC601C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC601C8;
  v1 = qword_1EDC601C8;
  return v0;
}

void sub_1BA293668()
{
  v0 = _UISolariumEnabled();
  v1 = MEMORY[0x1E69DDDB8];
  if (!v0)
  {
    v1 = MEMORY[0x1E69DDD58];
  }

  v2 = *v1;
  v3 = MEMORY[0x1E69DB978];
  if (!v0)
  {
    v3 = MEMORY[0x1E69DB980];
  }

  v4 = *v3;
  v5 = v2;
  v6 = sub_1B9F6B774(v5, v4, 0, 0, 0, 0, 1);

  qword_1EDC60110 = v6;
}

void sub_1BA293714()
{
  if (qword_1EDC60108 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60110;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont_];

  qword_1EDC60198 = v3;
}

void sub_1BA2937D0()
{
  if (qword_1EDC60190 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60198;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  qword_1EDC60180 = v2;
}

uint64_t sub_1BA2938D0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC60148 = result;
  *algn_1EDC60150 = v1;
  return result;
}

uint64_t sub_1BA2939A4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600E0 = result;
  *algn_1EDC600E8 = v1;
  return result;
}

void sub_1BA293A78()
{
  _UISolariumEnabled();
  if (qword_1EDC60190 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60198;
  v1 = sub_1BA4A6758();

  v2 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  qword_1EDC60168 = v2;
}

uint64_t sub_1BA293BA0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC60130 = result;
  *algn_1EDC60138 = v1;
  return result;
}

uint64_t sub_1BA293C74()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600C8 = result;
  unk_1EDC600D0 = v1;
  return result;
}

void sub_1BA293D48()
{
  _UISolariumEnabled();
  if (qword_1EDC60190 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60198;
  v1 = sub_1BA4A6758();

  v2 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  qword_1EDC60120 = v2;
}

uint64_t sub_1BA293E74()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600F8 = result;
  unk_1EDC60100 = v1;
  return result;
}

uint64_t sub_1BA293F48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600B0 = result;
  *algn_1EDC600B8 = v1;
  return result;
}

uint64_t sub_1BA29401C(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

id SummarySharingOnboardingInfoViewController.__allocating_init(healthExperienceStore:healthStore:selectionFlowContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA294B44(a1, a2, a3);

  return v8;
}

id SummarySharingOnboardingInfoViewController.init(healthExperienceStore:healthStore:selectionFlowContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA294B44(a1, a2, a3);

  return v4;
}

void sub_1BA29411C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SummarySharingOnboardingInfoViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  if (qword_1EDC60140 != -1)
  {
    swift_once();
  }

  v1 = sub_1BA4A6758();
  if (qword_1EDC600D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A6758();
  if (qword_1EDC60178 != -1)
  {
    swift_once();
  }

  [v0 addBulletedListItemWithTitle:v1 description:v2 image:qword_1EDC60180];

  if (qword_1EDC60128 != -1)
  {
    swift_once();
  }

  v3 = sub_1BA4A6758();
  if (qword_1EDC600C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BA4A6758();
  if (qword_1EDC60160 != -1)
  {
    swift_once();
  }

  [v0 addBulletedListItemWithTitle:v3 description:v4 image:qword_1EDC60168];

  if (qword_1EDC600F0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A6758();
  if (qword_1EDC600A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A6758();
  if (qword_1EDC60118 != -1)
  {
    swift_once();
  }

  [v0 addBulletedListItemWithTitle:v5 description:v6 image:qword_1EDC60120];
}

void sub_1BA294440()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_selectionFlowContext];
  if (v7)
  {
    memset(v30, 0, sizeof(v30));
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 3;
    v29 = 7;

    sub_1B9FEEC64(ObjectType, v30, 1, &v25);
    sub_1B9FF3BFC(v25, v26, v27, v28);
    sub_1B9F23224(v30);
    sub_1B9F53270();
    v8 = sub_1BA4A7028();
    v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthStore];
    if (v8)
    {
      sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthExperienceStore], &v25);
      v10 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController());

      v11 = v9;
      v12 = sub_1BA202D18(v11, &v25, v7);

      v13 = [v1 navigationController];
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthExperienceStore], &v25);
      v21 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());

      v22 = v9;
      v12 = sub_1BA1F1518(v22, &v25, v7);

      v13 = [v1 navigationController];
      if (!v13)
      {
LABEL_10:

        return;
      }
    }

    v23 = v13;
    [v13 pushViewController:v12 animated:1];

    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Received an empty selectionFlowContext and the user was able to tap the next button. This should not have happened.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

id SummarySharingOnboardingInfoViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id SummarySharingOnboardingInfoViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id SummarySharingOnboardingInfoViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingInfoViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA294B44(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_selectionFlowContext;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_selectionFlowContext] = 0;
  sub_1B9F0A534(a1, &v3[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthExperienceStore]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthStore] = a2;
  *&v3[v7] = a3;
  v8 = qword_1EDC601A8;
  v9 = a2;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A6758();
  if (qword_1EDC601C0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDC601C8;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for SummarySharingOnboardingInfoViewController();
  v12 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v10, 0, v11, 2);

  v13 = v12;
  v14 = sub_1BA4A6758();

  v15 = [v13 hxui_addCancelButton];
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_1BA294D28(uint64_t a1)
{
  v32 = *v1;
  v2 = v32;
  v3 = *(v32 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - v5;
  v6 = sub_1BA4A7AA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v31 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v31 - v12;
  v14 = *(v2 + 144);
  v15 = *(v2 + 152);
  swift_beginAccess();
  v37 = TupleTypeMetadata2;
  v38 = v7;
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *(v7 + 16);
  v17(v13, &v1[v14], v6);
  v34 = v15;
  v17(&v13[v16], &v1[v15], v6);
  v18 = v4;
  v19 = *(v4 + 48);
  v20 = v19(v13, 1, v3);
  v33 = v17;
  if (v20 == 1)
  {
    if (v19(&v13[v16], 1, v3) == 1)
    {
      v21 = *(v38 + 8);
      v21(v13, v6);
      goto LABEL_9;
    }

    return (*(v36 + 8))(v13, v37);
  }

  v17(v39, v13, v6);
  if (v19(&v13[v16], 1, v3) == 1)
  {
    (*(v18 + 8))(v39, v3);
    return (*(v36 + 8))(v13, v37);
  }

  v23 = v1;
  v24 = v18;
  v25 = v31;
  (*(v18 + 32))(v31, &v13[v16], v3);
  v26 = v39;
  v27 = sub_1BA4A6728();
  v28 = *(v24 + 8);
  v28(v25, v3);
  v28(v26, v3);
  v21 = *(v38 + 8);
  result = (v21)(v13, v6);
  if ((v27 & 1) == 0)
  {
    return result;
  }

  v1 = v23;
LABEL_9:
  v29 = *(v1 + 10);
  v30 = v35;
  v33(v35, &v1[v34], v6);
  v29(v30);
  return (v21)(v30, v6);
}

uint64_t sub_1BA29518C()
{
  v1 = *v0;
  v2 = sub_1BA4A7AA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = *(v0 + 8);
  v7 = *(v1 + 152);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v7], v2);
  v8 = v6(v5);
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_1BA2952D8()
{

  v1 = *(*v0 + 144);
  v2 = sub_1BA4A7AA8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 152), v2);
  return v0;
}

uint64_t sub_1BA2953B8()
{
  sub_1BA2952D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA29546C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA295534(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(*(v2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v8;
  v9 = sub_1BA4A7AA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v49 = &v41 - v10;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v41 - v15;
  v53 = *a1;
  swift_getMetatypeMetadata();
  v16 = sub_1BA4A6808();
  v18 = v17;
  v53 = *a2;
  swift_getMetatypeMetadata();
  if (v16 == sub_1BA4A6808() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_1BA4A8338();

    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5)) && (sub_1BA4A8338() & 1) == 0)
  {
    goto LABEL_16;
  }

  v42 = v7;
  v43 = v2;
  v21 = *(*a1 + 152);
  swift_beginAccess();
  v22 = v11;
  v23 = a2;
  v24 = *(v11 + 16);
  v44 = a1;
  v25 = &a1[v21];
  v26 = v51;
  v24(v51, v25, v9);
  v27 = *(*v23 + 152);
  swift_beginAccess();
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v49;
  v24(v49, v26, v9);
  v45 = v23;
  v24(&v29[v28], &v23[v27], v9);
  v46 = v5;
  v30 = *(v5 + 48);
  v31 = v50;
  if (v30(v29, 1, v50) != 1)
  {
    v33 = v47;
    v24(v47, v29, v9);
    if (v30(&v29[v28], 1, v31) != 1)
    {
      v34 = v46;
      v35 = v42;
      (*(v46 + 32))(v42, &v29[v28], v31);
      v36 = sub_1BA4A6728();
      v37 = *(v34 + 8);
      v37(v35, v31);
      v38 = *(v22 + 8);
      v38(v51, v9);
      v37(v33, v31);
      v38(v29, v9);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    (*(v22 + 8))(v51, v9);
    (*(v46 + 8))(v33, v31);
LABEL_13:
    (*(v48 + 8))(v29, TupleTypeMetadata2);
    goto LABEL_16;
  }

  v32 = *(v22 + 8);
  v32(v26, v9);
  if (v30(&v29[v28], 1, v31) != 1)
  {
    goto LABEL_13;
  }

  v32(v29, v9);
LABEL_15:
  if (v44[96] == v45[96])
  {
    v39 = v44[*(*v44 + 160)] ^ v45[*(*v45 + 160)] ^ 1;
    return v39 & 1;
  }

LABEL_16:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s10Foundation14DateComponentsV18HealthExperienceUIE1loiySbAC_ACtFZ_0()
{
  v0 = sub_1BA4A1728();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2510F0();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1BA4A1128();
  sub_1BA4A1128();
  v16 = *(v4 + 56);
  sub_1BA246A0C(v15, v6);
  sub_1BA246A0C(v12, &v6[v16]);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_1BA296094(v12, sub_1B9F7B6A0);
    sub_1BA296094(v15, sub_1B9F7B6A0);
    v18 = v17(&v6[v16], 1, v0);
    if (v18 == 1)
    {
      v19 = sub_1B9F7B6A0;
    }

    else
    {
      v19 = sub_1BA2510F0;
    }

    if (v18 == 1)
    {
      v20 = -1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_1BA246A0C(v6, v9);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_1BA296094(v12, sub_1B9F7B6A0);
      sub_1BA296094(v15, sub_1B9F7B6A0);
      (*(v1 + 8))(v9, v0);
      v20 = 0;
      v19 = sub_1BA2510F0;
    }

    else
    {
      v21 = v25;
      (*(v1 + 32))(v25, &v6[v16], v0);
      sub_1BA2960F4(&qword_1EBBEF228, MEMORY[0x1E6969530]);
      v20 = sub_1BA4A6728();
      v22 = *(v1 + 8);
      v22(v21, v0);
      sub_1BA296094(v12, sub_1B9F7B6A0);
      sub_1BA296094(v15, sub_1B9F7B6A0);
      v22(v9, v0);
      v19 = sub_1B9F7B6A0;
    }
  }

  sub_1BA296094(v6, v19);
  return v20 & 1;
}

uint64_t sub_1BA295EF4()
{
  result = sub_1BA4A7AA8();
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

uint64_t sub_1BA295FD4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA29602C(uint64_t a1)
{
  if (a1 == MEMORY[0x1E69E6530])
  {
    type metadata accessor for HealthDetailsDemographicsCellWithPicker();
  }

  else
  {
    type metadata accessor for HealthDetailsDemographicsCell();
  }

  return static ReusableView.reuseIdentifier.getter();
}

uint64_t sub_1BA296094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA2960F4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1BA29613C(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_trendingDataSource);
  v8 = qword_1EDC84AC8;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v9(v6, v7 + v8, v3);
  v10 = sub_1BA4A4538();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v12 = *(v10 + 16);

  if (v12)
  {
    return 1;
  }

  v14 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_notTrendingDataSource);
  v15 = qword_1EDC84AC8;
  swift_beginAccess();
  v9(v6, v14 + v15, v3);
  v16 = sub_1BA4A4538();
  v11(v6, v3);
  v17 = *(v16 + 16);

  return v17 != 0;
}

uint64_t sub_1BA2963BC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA296558(void *a1, uint64_t a2, unint64_t a3)
{
  v115 = a3;
  v5 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v111 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  *(v9 + 32) = sub_1BA4A21F8();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_1BA4A21E8();
  *(v9 + 56) = v11;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v110 = qword_1EDC84A30;
  v12 = sub_1BA4A1318();
  v14 = v13;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v15 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v12, v14, 0, 0, 0, 0, v7, 0, 0);
  v17 = v16;
  v18 = type metadata accessor for ListLayoutConfiguration();
  v19 = swift_allocBox();
  v21 = v20;
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_1EDC6CBB8);
  sub_1B9F37E38(v22, v21);
  *(v21 + 152) = 0;
  *(v21 + 64) = 0;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  v116 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = MEMORY[0x1E69E7CC0];

  v24 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 0, sub_1BA2986AC, v19);
  v119 = v15;
  v120 = sub_1BA011754();
  v118 = v17;
  sub_1B9F0A534(&v118, &v117);
  v25 = swift_allocObject();
  sub_1B9F1134C(&v117, v25 + 16);
  sub_1B9F32574(0, qword_1EDC693A8, type metadata accessor for Supplementary);
  v26 = swift_allocObject();
  v112 = v26;
  v26[4] = v24;
  v26[5] = sub_1B9F79BC8;
  v26[6] = v25;
  v27 = *(v24 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v28 = *(v24 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v26[2] = v27;
  v26[3] = v28;

  __swift_destroy_boxed_opaque_existential_1(&v118);
  sub_1B9F0A534(a2, &v118);
  ResultsDataSource = type metadata accessor for AllTrendsSectionFetchResultsDataSource(0);
  v97 = objc_allocWithZone(ResultsDataSource);
  v29 = &v97[qword_1EBC09828];
  v30 = sub_1BA4A27B8();
  sub_1BA2984F8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v105 = v31;
  v32 = sub_1BA4A1C68();
  *v29 = 0;
  *(v29 + 1) = 0;
  v103 = v32;
  v33 = *(v32 - 8);
  v114 = a2;
  v34 = v33;
  v106 = *(v33 + 72);
  v104 = *(v33 + 80);
  v35 = (v104 + 32) & ~v104;
  v100 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v116;
  v102 = *MEMORY[0x1E69A3BA0];
  v101 = *(v34 + 104);
  v101(v36 + v35);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v99 = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = v116;
  v91 = a1;
  v39 = v115;

  *(v38 + 32) = sub_1BA4A6F38();
  v90 = v30;
  v40 = MEMORY[0x1BFAED010](v36, v9, 2, v38);
  v109 = v19;
  v41 = v40;

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v92 = v42;
  v43 = swift_allocObject();
  v98 = xmmword_1BA4B7510;
  *(v43 + 16) = xmmword_1BA4B7510;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  swift_getKeyPath();
  *(v43 + 32) = sub_1BA4A71B8();
  swift_getKeyPath();
  *(v43 + 40) = sub_1BA4A71B8();
  v44 = swift_allocObject();
  v96 = xmmword_1BA4B5470;
  *(v44 + 16) = xmmword_1BA4B5470;
  *(v44 + 32) = v41;
  *&v117 = v44;
  v45 = v41;
  sub_1B9F33948(v39);
  v95 = sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v46 = sub_1BA4A6AE8();

  v94 = objc_opt_self();
  v47 = [v94 andPredicateWithSubpredicates_];

  v48 = v47;
  v49 = sub_1BA4A26C8();

  v50 = sub_1BA4A6AE8();
  v108 = v17;
  v51 = v50;

  [v49 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(&v118, v119);
  v52 = v49;
  v53 = sub_1BA4A1B68();
  v54 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v52 managedObjectContext:v53 sectionNameKeyPath:0 cacheName:0];

  v55 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v54);
  v56 = v91;

  __swift_destroy_boxed_opaque_existential_1(&v118);
  v57 = OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_trendingDataSource;
  v58 = v113;
  *(v113 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_trendingDataSource) = v55;
  v59 = sub_1BA298158();
  v97 = v59;
  v60 = *(v58 + v57);
  sub_1BA29843C();
  swift_allocObject();
  v61 = v60;
  v93 = sub_1BA064364(v61, v59);

  sub_1B9F0A534(v114, &v118);
  v62 = swift_allocObject();
  *(v62 + 16) = v116;
  v111 = v56;
  *(v62 + 32) = sub_1BA4A2208();
  *(v62 + 40) = v63;
  v64 = sub_1BA4A1318();
  v66 = v65;
  v67 = objc_allocWithZone(ResultsDataSource);
  v68 = &v67[qword_1EBC09828];
  *v68 = v64;
  v68[1] = v66;
  v69 = v100;
  v70 = swift_allocObject();
  *(v70 + 16) = v116;
  (v101)(v70 + v69, v102, v103);
  v71 = swift_allocObject();
  *(v71 + 16) = v116;
  *(v71 + 32) = sub_1BA4A6F38();
  v72 = MEMORY[0x1BFAED010](v70, v62, 2, v71);

  v73 = swift_allocObject();
  *(v73 + 16) = v98;
  swift_getKeyPath();
  *(v73 + 32) = sub_1BA4A71B8();
  swift_getKeyPath();
  *(v73 + 40) = sub_1BA4A71B8();
  v74 = swift_allocObject();
  *(v74 + 16) = v96;
  *(v74 + 32) = v72;
  *&v117 = v74;
  v75 = v72;
  sub_1B9F33948(v115);
  v76 = sub_1BA4A6AE8();

  v77 = [v94 andPredicateWithSubpredicates_];

  v78 = v77;
  v79 = sub_1BA4A26C8();

  v80 = sub_1BA4A6AE8();

  [v79 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(&v118, v119);
  v81 = v79;
  v82 = sub_1BA4A1B68();
  v83 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v81 managedObjectContext:v82 sectionNameKeyPath:0 cacheName:0];

  v84 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v83);
  v85 = v111;

  __swift_destroy_boxed_opaque_existential_1(&v118);
  *(v58 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_notTrendingDataSource) = v84;
  sub_1B9F1DEA0();
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1BA4B9FD0;
  *(v86 + 32) = v112;
  *(v86 + 40) = &protocol witness table for Supplementary<A>;
  *(v86 + 48) = v93;
  *(v86 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  *(v86 + 64) = v84;
  *(v86 + 72) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v87 = v84;
  v88 = CompoundSectionedDataSource.init(_:)(v86);

  __swift_destroy_boxed_opaque_existential_1(v114);

  return v88;
}

void *sub_1BA297138(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  swift_beginAccess();
  sub_1B9F37E38(v6, v5);
  v7 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v5);
  return v7;
}

void sub_1BA297248()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_notTrendingDataSource);
}

uint64_t sub_1BA297288()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA297358()
{
  sub_1BA297288();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA297420@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 relevantStartDate];
  if (v3)
  {
    v4 = v3;
    sub_1BA4A16F8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BA4A1728();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1BA2974C4(uint64_t a1, void **a2)
{
  sub_1BA2984F8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1BA246A0C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1BA4A1728();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1BA4A16B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setRelevantStartDate_];
}

void sub_1BA297614(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedTitle];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BA29767C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLocalizedTitle_];
}

__int128 *sub_1BA2976EC(__int128 *a1)
{
  v3 = v1;
  v10 = *a1;
  v4 = *(a1 + 2);
  static GridLayoutEngine.largeCard.getter(&v18);
  v16 = v10;
  v17 = v4;
  v5 = &v18;
  v6 = GridLayoutEngine.layout(for:)(&v16);
  if (v2)
  {
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    sub_1B9F5A690(&v11);
  }

  else
  {
    v5 = v6;
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    sub_1B9F5A690(&v11);
    if (*(v3 + qword_1EBC09828 + 8))
    {
      v7 = [objc_opt_self() estimatedDimension_];
      v8 = sub_1B9F5CA58(v7, 2);

      return v8;
    }
  }

  return v5;
}

id sub_1BA29784C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllTrendsSectionFetchResultsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA297904@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*v1 + qword_1EBC09828);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v7, v8, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v11;
  return result;
}

void sub_1BA297A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D9AC(255, &qword_1EDC6AD50);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA297AC0(void *a1, void *a2, char *a3)
{
  v47 = sub_1BA4A1798();
  v46 = *(v47 - 8);
  v6 = MEMORY[0x1EEE9AC00](v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v10 = [a1 profileIdentifier];
  LOBYTE(v53) = v9;
  v11 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v10, &v53);

  if (v11 > 2u)
  {
  }

  else
  {
    v12 = sub_1BA4A8338();

    if ((v12 & 1) == 0)
    {
      v45 = 0;
      goto LABEL_6;
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = sub_1BA4A1B68();
  v14 = [a1 profileIdentifier];
  v15 = [v14 identifier];

  sub_1BA4A1778();
  type metadata accessor for SharingEntryProfileInformationDataSource();
  swift_allocObject();
  v45 = sub_1BA19BEB8(v13, v8, 0, 0, 0, 0);
LABEL_6:
  v49 = a2;
  v16 = objc_opt_self();
  v17 = [v16 configurationWithPointSize_];
  v18 = [v16 configurationPreferringMulticolor];
  v19 = [v17 configurationByApplyingConfiguration_];

  v20 = v19;
  v21 = sub_1BA4A6758();
  v22 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v23 = sub_1BA4A1318();
  v25 = v24;
  v26 = sub_1BA4A1318();
  v28 = v27;
  *&v53 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  sub_1BA29855C(0, &qword_1EBBE9E10, type metadata accessor for CenteredIconDescriptionCollectionViewCell);
  *&v53 = sub_1BA4A6808();
  *(&v53 + 1) = v29;
  *&v54 = v22;
  *(&v54 + 1) = v23;
  *&v55 = v25;
  *(&v55 + 1) = v26;
  v57 = 0;
  v56 = v28;
  sub_1BA2985A8(&v53, &v50);
  v30 = MEMORY[0x1E69E7CC0];
  v31 = sub_1BA27EFB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1BA27EFB4((v32 > 1), v33 + 1, 1, v31);
  }

  v51 = &type metadata for CenteredIconDescriptionItem;
  v52 = sub_1BA298604();
  v34 = swift_allocObject();
  *&v50 = v34;
  v35 = v56;
  *(v34 + 48) = v55;
  *(v34 + 64) = v35;
  *(v34 + 80) = v57;
  v36 = v54;
  *(v34 + 16) = v53;
  *(v34 + 32) = v36;
  v31[2] = v33 + 1;
  sub_1B9F1134C(&v50, &v31[5 * v33 + 4]);
  *(v48 + OBJC_IVAR____TtC18HealthExperienceUI25AllTrendsHeaderDataSource_sharingEntryDataSource) = v45;
  sub_1B9F1C048(0, &qword_1EDC5DC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  v38 = sub_1B9FE4F98(v31);

  sub_1BA4A1788();
  v39 = sub_1BA4A1748();
  v41 = v40;
  (*(v46 + 8))(v8, v47);
  *(inited + 48) = v30;
  *(inited + 56) = sub_1B9F1C5F0(v30);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v38;
  v42 = Array<A>.identifierToIndexDict()(v38);

  *(inited + 56) = v42;
  *(inited + 64) = v39;
  *(inited + 72) = v41;
  v43 = sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);

  sub_1BA298658(&v53);

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v43;
}

void *sub_1BA298158()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = swift_allocBox();
  v3 = v2;
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDC6CB90);
  sub_1B9F37E38(v4, v3);
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  *(v3 + 64) = xmmword_1EDC6D270;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA297A34(0, &qword_1EDC5DCA0, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v7 = sub_1BA4A1318();
  v9 = v8;
  *(v6 + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(v6 + 64) = sub_1B9F2F068();
  v10 = swift_allocObject();
  *(v6 + 32) = v10;
  type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1BA29855C(0, qword_1EDC6BBE0, type metadata accessor for TitleEmptyStateCollectionViewCell);
  v10[2] = sub_1BA4A6808();
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v9;
  *(inited + 32) = v6;

  v12 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1BA2984DC, v1);
  sub_1B9F32574(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
  v13 = swift_allocObject();
  v13[4] = v12;
  v13[5] = sub_1BA2971F4;
  v13[6] = 0;
  v15 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v14 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  v13[2] = v15;
  v13[3] = v14;
  return v13;
}

void sub_1BA29843C()
{
  if (!qword_1EBBEFCB0)
  {
    type metadata accessor for AllTrendsSectionFetchResultsDataSource(255);
    sub_1B9F32574(255, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFCB0);
    }
  }
}

void sub_1BA2984F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA29855C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BA298604()
{
  result = qword_1EBBEFCB8;
  if (!qword_1EBBEFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFCB8);
  }

  return result;
}

uint64_t static DirectSearchResult.empty()@<X0>(uint64_t a1@<X8>)
{
  sub_1BA4A1788();
  result = type metadata accessor for DirectSearchResult(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t DirectSearchResult.init(sections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4A1788();
  result = type metadata accessor for DirectSearchResult(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1BA298754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *v3;
  v5 = sub_1BA4A3EA8();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for DirectSearchResult(0);
  v4[33] = swift_task_alloc();
  v6 = sub_1BA4A3CD8();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA2988D8, 0, 0);
}

uint64_t sub_1BA2988D8()
{
  v26 = v0;
  sub_1BA4A3CC8();
  v1 = sub_1BA4A3CF8();
  v2 = sub_1BA4A7418();
  if (sub_1BA4A7A68())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BA4A3CB8();
    _os_signpost_emit_with_name_impl(&dword_1B9F07000, v1, v2, v4, "PluginSearch", "", v3, 2u);
    MEMORY[0x1BFAF43A0](v3, -1, -1);
  }

  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 216);

  (*(v8 + 16))(v5, v6, v7);
  sub_1BA4A3D48();
  swift_allocObject();
  *(v0 + 304) = sub_1BA4A3D38();
  (*(v8 + 8))(v6, v7);
  sub_1B9F12138(v9 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_searchResultProvider, v0 + 120, sub_1B9F14FAC);
  if (*(v0 + 144))
  {
    sub_1B9F1134C((v0 + 120), v0 + 80);
    swift_weakInit();

    return MEMORY[0x1EEE6DFA0](sub_1BA298C60, 0, 0);
  }

  else
  {
    sub_1B9F15018(v0 + 120, sub_1B9F14FAC);
    sub_1BA4A3E18();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] returning empty results because search plugin did not load", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v21 = *(v0 + 256);
    v22 = *(v0 + 192);
    sub_1BA4A1788();
    *(v22 + *(v21 + 20)) = MEMORY[0x1E69E7CC0];
    sub_1BA298FC4();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1BA298C60()
{
  v1 = v0[33];
  v2 = v0[25];
  v10 = v0[26];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1BA298E00;
  v3 = swift_continuation_init();
  v4 = v0[13];
  v5 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v4);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = *(v5 + 24);

  v8(v2, v10, sub_1BA299C08, v7, v4, v5);

  swift_weakDestroy();

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BA298E00()
{
  sub_1BA299C10(*(*v0 + 264), *(*v0 + 192));

  return MEMORY[0x1EEE6DFA0](sub_1BA298F10, 0, 0);
}

uint64_t sub_1BA298F10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  sub_1BA298FC4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA298FC4()
{
  v0 = sub_1BA4A3D18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A3CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3CF8();
  sub_1BA4A3D28();
  v9 = sub_1BA4A7408();
  if (sub_1BA4A7A68())
  {

    sub_1BA4A3D58();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1BA4A3CB8();
    _os_signpost_emit_with_name_impl(&dword_1B9F07000, v8, v9, v12, "PluginSearch", v10, v11, 2u);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA299218(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v76 = a1;
  v5 = sub_1BA4A1798();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DirectSearchResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  v77 = sub_1BA4A3EA8();
  v13 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v71 = v12;
    v72 = v9;
    if (a2)
    {
      v24 = a2;
      sub_1BA4A3E18();
      v25 = a2;

      v26 = sub_1BA4A3E88();
      v27 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v70 = v7;
        v30 = v29;
        v80[0] = v29;
        *v28 = 136315394;
        v31 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_pluginBundleName);
        v32 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_pluginBundleName + 8);

        v33 = sub_1B9F0B82C(v31, v32, v80);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2080;
        v79 = a2;
        v34 = a2;
        sub_1B9F0D9AC(0, &qword_1EDC6E310);
        v35 = sub_1BA4A6808();
        v37 = sub_1B9F0B82C(v35, v36, v80);
        v9 = v72;

        *(v28 + 14) = v37;
        v38 = v78;
        _os_log_impl(&dword_1B9F07000, v26, v27, "Plugin search for %s has completed with error: %s", v28, 0x16u);
        swift_arrayDestroy();
        v39 = v30;
        v7 = v70;
        MEMORY[0x1BFAF43A0](v39, -1, -1);
        MEMORY[0x1BFAF43A0](v28, -1, -1);

        (*(v13 + 8))(v18, v77);
        v40 = v76;
        if (!*(v76 + 16))
        {
LABEL_5:
          sub_1BA4A1788();
          *&v9[*(v7 + 20)] = MEMORY[0x1E69E7CC0];
          sub_1BA299C10(v9, *(*(v38 + 64) + 40));
          swift_continuation_resume();
        }

        goto LABEL_15;
      }

      (*(v13 + 8))(v18, v77);
      v40 = v76;
    }

    else
    {
      sub_1BA4A3E18();

      v40 = v76;

      v45 = sub_1BA4A3E88();
      v46 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v80[0] = v48;
        *v47 = 136315394;
        v49 = v7;
        v50 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_pluginBundleName);
        v51 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_pluginBundleName + 8);

        v52 = sub_1B9F0B82C(v50, v51, v80);
        v7 = v49;

        *(v47 + 4) = v52;
        v40 = v76;
        *(v47 + 12) = 2050;
        *(v47 + 14) = *(v40 + 16);

        _os_log_impl(&dword_1B9F07000, v45, v46, "Plugin search for %s has completed with %{public}ld items", v47, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v53 = v48;
        v9 = v72;
        MEMORY[0x1BFAF43A0](v53, -1, -1);
        MEMORY[0x1BFAF43A0](v47, -1, -1);
      }

      else
      {
      }

      (*(v13 + 8))(v15, v77);
    }

    v38 = v78;
    if (!*(v40 + 16))
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_1B9F14678(0, &qword_1EDC5DC90, MEMORY[0x1E69E6F90]);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1BA4B5480;
    sub_1B9F12138(v23 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_searchResultProvider, v80, sub_1B9F14FAC);
    v55 = v81;
    v56 = v7;
    if (v81)
    {
      v57 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v55 = (*(v57 + 8))(v55, v57);
      v59 = v58;
      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {
      sub_1B9F15018(v80, sub_1B9F14FAC);
      v59 = 0;
    }

    v60 = sub_1B9FE4F98(v40);
    v61 = v73;
    sub_1BA4A1788();
    v62 = sub_1BA4A1748();
    v64 = v63;
    (*(v74 + 8))(v61, v75);
    v65 = MEMORY[0x1E69E7CC0];
    *(v54 + 48) = MEMORY[0x1E69E7CC0];
    v66 = sub_1B9F1C5F0(v65);
    *(v54 + 32) = v55;
    *(v54 + 40) = v59;
    *(v54 + 48) = v60;
    *(v54 + 56) = v66;

    v67 = Array<A>.identifierToIndexDict()(v60);

    *(v54 + 56) = v67;

    *(v54 + 64) = v62;
    *(v54 + 72) = v64;
    v68 = v71;
    sub_1BA4A1788();
    *(v68 + *(v56 + 20)) = v54;
    v69 = v72;
    sub_1B9F12138(v68, v72, type metadata accessor for DirectSearchResult);
    sub_1BA299C10(v69, *(*(v78 + 64) + 40));
    swift_continuation_resume();

    return sub_1B9F15018(v68, type metadata accessor for DirectSearchResult);
  }

  sub_1BA4A3E18();
  v42 = sub_1BA4A3E88();
  v43 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1B9F07000, v42, v43, "Search completed after search provider has already been deallocated", v44, 2u);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
  }

  (*(v13 + 8))(v21, v77);
  sub_1BA4A1788();
  *&v9[*(v7 + 20)] = MEMORY[0x1E69E7CC0];
  sub_1BA299C10(v9, *(*(v78 + 64) + 40));
  return swift_continuation_resume();
}

uint64_t sub_1BA299A78()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_signposter;
  v2 = sub_1BA4A3D08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F15018(v0 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_searchResultProvider, sub_1B9F14FAC);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA299B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA298754(a1, a2, a3);
}

uint64_t sub_1BA299C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectSearchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Step.analyticsString.getter()
{
  if ((*(v0 + 24) - 1) >= 0xB)
  {
    v3 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](543584032, 0xE400000000000000);
    v2 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v2);

    return v3;
  }

  else
  {
    sub_1BA4A7FB8();
    return 0;
  }
}

uint64_t sub_1BA299D78()
{
  v1 = *(v0 + 24);
  if (v1 < 0xC)
  {
    return 0;
  }

  v3 = *(v0 + 16);
  sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](543584032, 0xE400000000000000);
  v4 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v4);

  MEMORY[0x1BFAF1350](10272, 0xE200000000000000);
  MEMORY[0x1BFAF1350](v3, v1);
  MEMORY[0x1BFAF1350](41, 0xE100000000000000);
  v5 = sub_1BA4A6758();

  return v5;
}

void sub_1BA299FA4()
{
  v1 = *(v0 + 96);
}

id *SummarySharingSetupDetailAnalyticsEvent.deinit()
{
  v0 = SummarySharingSetupAnalyticsBaseEvent.deinit();

  return v0;
}

uint64_t SummarySharingSetupDetailAnalyticsEvent.__deallocating_deinit()
{
  v0 = SummarySharingSetupAnalyticsBaseEvent.deinit();
  v1 = v0[10];

  v2 = v0[12];

  return swift_deallocClassInstance();
}

HealthExperienceUI::SummarySharingSetupDetailAnalyticsEvent::OnboardingStepDetailsAnalytics::Action_optional __swiftcall SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1BA0B2740();
  v4 = rawValue;
  v5 = sub_1BA4A77C8();
  v6 = sub_1BA4A7798();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1BA4A77C8();
    v11 = sub_1BA4A7798();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = sub_1BA4A77C8();
      v14 = sub_1BA4A7798();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = sub_1BA4A77C8();
        v17 = sub_1BA4A7798();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = v15;
          v19 = sub_1BA4A77C8();
          v20 = sub_1BA4A7798();

          if (v20)
          {

            v8 = 4;
          }

          else
          {
            v21 = v18;
            v22 = sub_1BA4A77C8();
            v23 = sub_1BA4A7798();

            if (v23)
            {

              v8 = 5;
            }

            else
            {
              v24 = sub_1BA4A77C8();
              v25 = sub_1BA4A7798();

              if (v25)
              {
                v8 = 6;
              }

              else
              {
                v8 = 7;
              }
            }
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1BA29A33C()
{
  sub_1BA0B2740();
  v0 = SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.rawValue.getter();
  v1 = SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.rawValue.getter();
  v2 = sub_1BA4A7798();

  return v2 & 1;
}

unint64_t sub_1BA29A3C0()
{
  result = qword_1EBBEFCD0;
  if (!qword_1EBBEFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFCD0);
  }

  return result;
}

uint64_t sub_1BA29A414()
{
  sub_1BA4A8488();
  v0 = SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.rawValue.getter();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void sub_1BA29A46C()
{
  v0 = SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.rawValue.getter();
  sub_1BA4A77A8();
}

uint64_t sub_1BA29A4CC()
{
  sub_1BA4A8488();
  v0 = SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.rawValue.getter();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA29A528@<X0>(uint64_t *a1@<X8>)
{
  result = SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI39SummarySharingSetupDetailAnalyticsEventC021OnboardingStepDetailsH0V0K0O(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA29A58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 33))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 11;
  if (v4 < 11)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1BA29A5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 2147483636;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFF3)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF3)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_1BA29A65C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 32))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 10;
  if (v5 >= 0xC)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA29A6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 11;
    }
  }

  return result;
}