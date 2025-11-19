uint64_t sub_1D70DBC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
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

unint64_t sub_1D70DBDA4()
{
  result = qword_1EC89A668;
  if (!qword_1EC89A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A668);
  }

  return result;
}

uint64_t LiveActivityCommandContext.init(liveActivity:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725C2AC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for LiveActivityCommandContext() + 20);
  v8 = sub_1D725C1EC();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t LiveActivitySubscriptionCommandState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6373627553746F6ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6269726373627573;
}

uint64_t sub_1D70DBF28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001D73BC8F0;
  if (v2 == 1)
  {
    v5 = 0x80000001D73BC8F0;
  }

  else
  {
    v3 = 0x6269726373627573;
    v5 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6373627553746F6ELL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xED00006465626972;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6373627553746F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED00006465626972;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70DC034()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70DC0EC()
{
  sub_1D72621EC();
}

uint64_t sub_1D70DC190()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70DC244@<X0>(_BYTE *a1@<X8>)
{
  result = _s8NewsFeed36LiveActivitySubscriptionCommandStateO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1D70DC274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465626972;
  v4 = 0x80000001D73BC8F0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6373627553746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D70DC2E8(uint64_t a1)
{
  v2 = sub_1D70DC510();

  return MEMORY[0x1EEE48380](a1, v2);
}

uint64_t LiveActivityCommandContext.liveActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725C2AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LiveActivityCommandContext.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityCommandContext() + 20);
  v4 = sub_1D725C1EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static Commands.LiveActivity.toggleSubscription.getter()
{
  if (qword_1EDF3B000 != -1)
  {
    swift_once();
  }
}

uint64_t _s8NewsFeed36LiveActivitySubscriptionCommandStateO8rawValueACSgSS_tcfC_0()
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

unint64_t sub_1D70DC510()
{
  result = qword_1EDF06EE0;
  if (!qword_1EDF06EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06EE0);
  }

  return result;
}

void sub_1D70DC564(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 8);
  v7 = *(v2 + 18);
  v8 = [*(a1 + 40) sourceChannel];
  if (!v7)
  {
    if (v8)
    {
      v14 = [v8 theme];
      swift_unknownObjectRelease();
      if (v14)
      {
        v15 = [v14 defaultHeadlineTemplate];
        swift_unknownObjectRelease();
        v11 = [v15 headlineTitleTextInfo];

        v12 = swift_allocObject();
        if (!v11)
        {
          goto LABEL_20;
        }

        v13 = [v11 font];
        if (!v13)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  if (v7 != 1)
  {
    if (v8)
    {
      v16 = [v8 theme];
      swift_unknownObjectRelease();
      if (v16)
      {
        v17 = [v16 defaultHeadlineTemplate];
        swift_unknownObjectRelease();
        v11 = [v17 headlineBylineTextInfo];

        v12 = swift_allocObject();
        if (!v11)
        {
          goto LABEL_20;
        }

        v13 = [v11 font];
        if (!v13)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v12 = swift_allocObject();
    v20 = 0;
    v11 = 0;
LABEL_21:
    v22 = 0xE000000000000000;
    goto LABEL_22;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = [v8 theme];
  swift_unknownObjectRelease();
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = [v9 defaultHeadlineTemplate];
  swift_unknownObjectRelease();
  v11 = [v10 headlineExcerptTextInfo];

  v12 = swift_allocObject();
  if (!v11)
  {
    goto LABEL_20;
  }

  v13 = [v11 font];
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_17:
  v18 = v13;
  v19 = [v13 fontName];

  if (!v19)
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v20 = sub_1D726207C();
  v22 = v21;

LABEL_22:
  *(v12 + 16) = v20;
  *(v12 + 24) = v22;
  *(v12 + 32) = v4;
  *(v12 + 40) = v5;
  *(v12 + 48) = v6;

  *a2 = v12 | 0x2000000000000000;
}

uint64_t sub_1D70DC880@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D70DCE0C();
  *a1 = result;
  return result;
}

uint64_t sub_1D70DC9A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1D5C0C74C(a2, v9);
  if (v10)
  {
    v16 = xmmword_1D738F8B0;
    v17 = 3072;
    if (v10 == 1)
    {
      v18 = 1;
      sub_1D70DC564(v9, &v19);
      sub_1D6D0A65C(&v19, &v16);
      v11 = 0x78452074726F6853;
      v12 = 0xED00007470726563;
      v13 = a3;
    }

    else
    {
      v18 = 2;
      sub_1D70DC564(v9, &v19);
      sub_1D6D0A65C(&v19, &v16);
      v11 = 0x656E694C207942;
      v13 = a3;
      v12 = 0xE700000000000000;
    }
  }

  else
  {
    v16 = xmmword_1D738F8B0;
    v17 = 3072;
    v18 = 0;
    sub_1D70DC564(v9, &v19);
    sub_1D6D0A65C(&v19, &v16);
    v11 = 0x656C746954;
    v13 = a3;
    v12 = 0xE500000000000000;
  }

  sub_1D711B30C(v11, v12, &v16, v13);
  sub_1D5C10040(v9);
  v14 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
}

unint64_t sub_1D70DCB8C(uint64_t a1)
{
  result = sub_1D70DCBB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70DCBB4()
{
  result = qword_1EC89A670;
  if (!qword_1EC89A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A670);
  }

  return result;
}

unint64_t sub_1D70DCC08(void *a1)
{
  a1[1] = sub_1D6664DE4();
  a1[2] = sub_1D66FDF08();
  result = sub_1D70DCC40();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70DCC40()
{
  result = qword_1EC89A678;
  if (!qword_1EC89A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A678);
  }

  return result;
}

unint64_t sub_1D70DCCB8()
{
  result = qword_1EC89A680;
  if (!qword_1EC89A680)
  {
    sub_1D70DCD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A680);
  }

  return result;
}

void sub_1D70DCD10()
{
  if (!qword_1EC89A688)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A688);
    }
  }
}

unint64_t sub_1D70DCD64()
{
  result = qword_1EC89A690;
  if (!qword_1EC89A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A690);
  }

  return result;
}

unint64_t sub_1D70DCDB8()
{
  result = qword_1EDF0E1F8;
  if (!qword_1EDF0E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E1F8);
  }

  return result;
}

uint64_t sub_1D70DCE0C()
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

uint64_t sub_1D70DCF28(uint64_t a1, void (*a2)(_OWORD *__return_ptr, _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, void (*a8)(_OWORD *, _BYTE *), unint64_t *a9)
{
  sub_1D5B76B10(a1, v16);
  sub_1D5B49474(0, a6);
  if (swift_dynamicCast())
  {
    a8(v14, v17);
    a2(v14, v17);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return *&v14[0];
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D5BFB774(v14, a9, a6);
  }

  return a4;
}

id sub_1D70DD050(uint64_t a1, void (*a2)(_OWORD *__return_ptr, _BYTE *), uint64_t a3, void *a4, unint64_t *a5, uint64_t a6, void (*a7)(_OWORD *, _BYTE *), unint64_t *a8)
{
  sub_1D5B76B10(a1, v16);
  sub_1D5B49474(0, a5);
  if (swift_dynamicCast())
  {
    a7(v14, v17);
    a2(v14, v17);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return *&v14[0];
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D5BFB774(v14, a8, a5);

    return a4;
  }
}

unint64_t sub_1D70DD208@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_1D725891C();
  v57 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B528(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v48 - v13;
  v15 = *a1;
  v56 = a3;
  *a3 = v15;
  sub_1D5B68374(a2, (a3 + 1));
  v55 = a2;
  sub_1D5B68374(a2, v62);
  v50 = *(v7 + 56);
  v51 = v7 + 56;
  v50(v14, 1, 1, v6);
  v54 = swift_allocObject();
  *(v54 + 16) = v15;
  sub_1D5B7B528(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v18 = MEMORY[0x1EEE9AC00](v17, v17);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v23 = type metadata accessor for HiddenContentPlacardViewStyler();
  v60 = v23;
  v61 = &off_1F519BAF0;
  v59[0] = v22;
  v16[2] = 0xC04E000000000000;
  __swift_project_boxed_opaque_existential_1(v59, v23);
  v58 = v15;
  sub_1D5EE5A94(v15);
  sub_1D5EE5A94(v15);
  sub_1D6866490();
  v24 = sub_1D6930034();

  *(v16 + *(*v16 + 120)) = v24;
  *(v16 + *(*v16 + 136)) = v24;
  v25 = v24;
  sub_1D725890C();
  v26 = *(v7 + 32);
  v27 = v16 + *(*v16 + 128);
  v52 = v10;
  v53 = v7 + 32;
  v49 = v26;
  v26(v27, v10, v57);
  v48 = objc_opt_self();
  LOBYTE(a3) = [v48 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v59);
  *(v16 + qword_1EDF347F8) = a3;
  v28 = v14;
  sub_1D5DF42F8(v14, v16 + qword_1EDF347F0);
  v29 = swift_allocObject();
  v30 = v54;
  v29[2] = sub_1D70DD914;
  v29[3] = v30;
  v29[4] = v25;
  v16[3] = sub_1D70DD91C;
  v16[4] = v29;
  __swift_destroy_boxed_opaque_existential_1(v62);
  v56[6] = v16;
  v62[0] = v15;
  v31 = sub_1D6866704();
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    sub_1D681BA6C(v15);
    sub_1D5B68374(v55, v62);
    v50(v14, 1, 1, v57);
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v38 = MEMORY[0x1EEE9AC00](v37, v37);
    v40 = (&v48 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = *v40;
    v60 = v23;
    v61 = &off_1F519BAF0;
    v59[0] = v42;
    *(v36 + 2) = 0xC04E000000000000;
    __swift_project_boxed_opaque_existential_1(v59, v23);

    v43 = sub_1D692FD9C();

    *&v36[*(*v36 + 120)] = v43;
    *&v36[*(*v36 + 136)] = v43;
    v44 = v43;
    v45 = v52;
    sub_1D725890C();
    v49(&v36[*(*v36 + 128)], v45, v57);
    LOBYTE(v45) = [v48 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(v59);
    v36[qword_1EDF347F8] = v45;
    sub_1D5DF42F8(v28, &v36[qword_1EDF347F0]);
    v46 = swift_allocObject();
    v46[2] = sub_1D70DD920;
    v46[3] = v35;
    v46[4] = v44;
    *(v36 + 3) = sub_1D70DD9D4;
    *(v36 + 4) = v46;
    __swift_destroy_boxed_opaque_existential_1(v55);
    result = __swift_destroy_boxed_opaque_existential_1(v62);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    result = sub_1D681BA6C(v15);
    v36 = 0;
  }

  v56[7] = v36;
  return result;
}

uint64_t sub_1D70DD8AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6866490();
  v3 = sub_1D6930034();

  *a2 = v3;
  return result;
}

id sub_1D70DD920@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D692FD9C();
  *a2 = result;
  return result;
}

id sub_1D70DD968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D70DD050(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), &qword_1EDF3D510, &protocol descriptor for HiddenContentPlacardViewStylerType, sub_1D5B7DDE8, &qword_1EC89A698);
  *a2 = result;
  return result;
}

uint64_t static AudioDurationFormatter.string(duration:listeningProgress:forAccessibility:)(char a1, double a2, double a3)
{
  sub_1D70DDB44(a1, a3, a2);
  sub_1D5BF4D9C();
  v3 = sub_1D7263A6C();

  return v3;
}

id sub_1D70DDABC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v5 setUnitsStyle_];
  result = [v5 setAllowedUnits_];
  *a3 = v5;
  return result;
}

uint64_t sub_1D70DDB44(char a1, double a2, double a3)
{
  if (a1)
  {
    if (qword_1EDF0DBD0 != -1)
    {
      v22 = a3;
      v20 = a2;
      swift_once();
      a2 = v20;
      a3 = v22;
    }

    v3 = qword_1EDF0DBD8;
  }

  else
  {
    if (qword_1EDF28BA8 != -1)
    {
      v23 = a3;
      v21 = a2;
      swift_once();
      a2 = v21;
      a3 = v23;
    }

    v3 = qword_1EDF28BB0;
  }

  v4 = *v3;
  v5 = a3 - a2;
  if (a2 > 0.0 && a2 < a3)
  {
    v7 = v4;
    v11 = [v7 stringFromTimeInterval_];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1D726207C();
      v15 = v14;

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D5C384A0();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D7273AE0;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1D5B7E2C0();
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 = sub_1D72620BC();

      return v10;
    }

LABEL_16:

    return 0;
  }

  v7 = v4;
  v8 = [v7 stringFromTimeInterval_];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = sub_1D726207C();

  return v10;
}

uint64_t sub_1D70DDDF0(uint64_t a1, const void *a2)
{
  v5 = sub_1D7261ABC();
  MEMORY[0x1EEE9AC00](v5, v6);
  _Block_copy(a2);
  sub_1D70DDF74();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = a1;
  *(v2 + 16) = v7;
  sub_1D70DDFDC(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D70DDFDC(&qword_1EDF1B560, sub_1D5B73908);
  sub_1D7263B6C();
  sub_1D7261B8C();
  swift_allocObject();
  *(v2 + 24) = sub_1D7261B6C();
  return v2;
}

void sub_1D70DDF74()
{
  if (!qword_1EDF042B0)
  {
    sub_1D5F23A58();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D7263E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF042B0);
    }
  }
}

uint64_t sub_1D70DDFDC(unint64_t *a1, void (*a2)(uint64_t))
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

NewsFeed::FormatVideoPlayback_optional __swiftcall FormatVideoPlayback.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D70DE088(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74696E4972657375;
  }

  else
  {
    v3 = 1869903201;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00006465746169;
  }

  if (*a2)
  {
    v5 = 0x74696E4972657375;
  }

  else
  {
    v5 = 1869903201;
  }

  if (*a2)
  {
    v6 = 0xED00006465746169;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1D70DE134()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70DE1BC()
{
  sub_1D72621EC();
}

uint64_t sub_1D70DE230()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70DE2B4@<X0>(char *a1@<X8>)
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

void sub_1D70DE314(uint64_t *a1@<X8>)
{
  v2 = 1869903201;
  if (*v1)
  {
    v2 = 0x74696E4972657375;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00006465746169;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatVideoPlayback.description.getter()
{
  if (*v0)
  {
    return 0x74696E4972657375;
  }

  else
  {
    return 1869903201;
  }
}

unint64_t sub_1D70DE414()
{
  result = qword_1EC89A6C8;
  if (!qword_1EC89A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A6C8);
  }

  return result;
}

unint64_t sub_1D70DE468(uint64_t a1)
{
  *(a1 + 8) = sub_1D70DE498();
  result = sub_1D70DE4EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D70DE498()
{
  result = qword_1EC89A6D0;
  if (!qword_1EC89A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A6D0);
  }

  return result;
}

unint64_t sub_1D70DE4EC()
{
  result = qword_1EC89A6D8;
  if (!qword_1EC89A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A6D8);
  }

  return result;
}

unint64_t sub_1D70DE540(uint64_t a1)
{
  result = sub_1D70DE568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70DE568()
{
  result = qword_1EC89A6E0;
  if (!qword_1EC89A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A6E0);
  }

  return result;
}

unint64_t sub_1D70DE5BC(void *a1)
{
  a1[1] = sub_1D666B6DC();
  a1[2] = sub_1D666BA38();
  result = sub_1D70DE414();
  a1[3] = result;
  return result;
}

uint64_t sub_1D70DE5F4()
{
  if (*v0)
  {
    return 0x74696E4972657375;
  }

  else
  {
    return 1869903201;
  }
}

uint64_t sub_1D70DE648(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D5C2ED68(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v91 = &v79 - v6;
  v92 = sub_1D7263FCC();
  v94 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v7);
  v88 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ED68(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, v3);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v80 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v89 = &v79 - v14;
  v15 = type metadata accessor for FormatVersionRequirement(0);
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ED68(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, v3);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v97 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v98 = &v79 - v24;
  v25 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  MEMORY[0x1EEE9AC00](v105, v29);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6107408();
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v1;
  v39 = v1[1];
  v90 = v38;
  swift_beginAccess();
  result = *(a1 + 40);
  v104 = *(result + 16);
  if (!v104)
  {
    return result;
  }

  v99 = v39;
  v41 = &v37[*(v33 + 48)];
  v42 = v34;
  v103 = result + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v96 += 6;
  v86 = "ache";
  v85 = (v94 + 6);
  v83 = (v94 + 4);
  v82 = (v94 + 1);

  v43 = 0;
  v44 = v92;
  v45 = v98;
  v46 = v42;
  v84 = v18;
  v81 = v15;
  v95 = v28;
  v100 = v37;
  v101 = v42;
  v102 = result;
  while (v43 < *(result + 16))
  {
    sub_1D70DF29C(v103 + *(v46 + 72) * v43, v37, sub_1D6107408);
    sub_1D6007718(*v41, *(v41 + 1), v41[16]);
    sub_1D70DF304(v37, v31, type metadata accessor for FormatDerivedDataResultOptionReference);
    sub_1D70DF29C(&v31[*(v105 + 28)], v28, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    sub_1D5EA24BC();
    if ((*(*(v47 - 8) + 48))(v28, 1, v47) == 1)
    {
      goto LABEL_5;
    }

    sub_1D5EA3AFC(v28, v45);
    v48 = v97;
    sub_1D5D2C840(v45, v97, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
    if ((*v96)(v48, 1, v15) != 1)
    {
      v49 = v89;
      v50 = sub_1D70DF304(v48, v18, type metadata accessor for FormatVersionRequirement);
      v94 = &v79;
      MEMORY[0x1EEE9AC00](v50, v51);
      v93 = &v79;
      *(&v79 - 2) = v31;
      v52 = v99;
      v107[0] = v90;
      v107[1] = v99;
      MEMORY[0x1EEE9AC00](v53, v54);
      *(&v79 - 2) = v107;
      MEMORY[0x1EEE9AC00](v55, v56);
      *(&v79 - 2) = sub_1D70DF478;
      *(&v79 - 1) = v57;
      v58 = v91;
      sub_1D7263FBC();
      result = (*v85)(v58, 1, v44);
      if (result == 1)
      {
        goto LABEL_25;
      }

      v59 = v88;
      (*v83)();
      if (*(v52 + 16) && (v60 = sub_1D5B7C598(v59), (v61 & 1) != 0))
      {
        sub_1D5B76B10(*(v99 + 56) + 32 * v60, v106);
        (*v82)(v59, v44);
        sub_1D5C2ED68(0, &qword_1EC8824D8, type metadata accessor for FormatVersionInfo, type metadata accessor for Box);
        if (swift_dynamicCast())
        {
          v62 = v108;
          v63 = *(*v108 + 88);
          swift_beginAccess();
          sub_1D70DF29C(v62 + v63, v49, type metadata accessor for FormatVersionInfo);

          v64 = 0;
LABEL_16:
          v65 = type metadata accessor for FormatVersionInfo(0);
          v66 = *(v65 - 8);
          (*(v66 + 56))(v49, v64, 1, v65);
          v67 = (*(v66 + 48))(v49, 1, v65);
          if (v67)
          {
            v69 = v80;
            sub_1D5D2C840(v49, v80, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
            Dictionary<>.formatCodingVersionInfo.setter(v69, v99);
            v18 = v84;
            sub_1D5D2D228(v84, type metadata accessor for FormatVersionRequirement);
            v70 = v98;
            sub_1D70DF494(v98, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
            v71 = v49;
            v72 = &qword_1EDF2EC70;
            v73 = type metadata accessor for FormatVersionInfo;
            v45 = v70;
          }

          else
          {
            MEMORY[0x1EEE9AC00](v67, v68);
            *(&v79 - 2) = sub_1D70DF480;
            *(&v79 - 1) = (&v79 - 4);
            MEMORY[0x1EEE9AC00](v74, v75);
            *(&v79 - 2) = sub_1D70DF48C;
            *(&v79 - 1) = (&v79 - 4);
            v18 = v84;
            v76 = v87;
            sub_1D6020CA0(v84, sub_1D70DF504, v77, sub_1D70DF48C, (&v79 - 4));
            v87 = v76;
            if (v76)
            {

              v78 = v80;
              sub_1D5D2C840(v49, v80, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
              Dictionary<>.formatCodingVersionInfo.setter(v78, v99);
              sub_1D5D2D228(v18, type metadata accessor for FormatVersionRequirement);
              sub_1D70DF494(v98, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
              sub_1D70DF494(v49, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
              return sub_1D5D2D228(v31, type metadata accessor for FormatDerivedDataResultOptionReference);
            }

            Dictionary<>.formatCodingVersionInfo.setter(v49, v99);
            sub_1D5D2D228(v18, type metadata accessor for FormatVersionRequirement);
            v73 = type metadata accessor for FormatVersionRequirement;
            v45 = v98;
            v71 = v98;
            v72 = &qword_1EDF44860;
          }

          sub_1D70DF494(v71, v72, v73);
          v44 = v92;
          v15 = v81;
          goto LABEL_4;
        }
      }

      else
      {
        (*v82)(v59, v44);
      }

      v64 = 1;
      goto LABEL_16;
    }

    sub_1D70DF494(v98, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
    v45 = v98;
    sub_1D70DF494(v48, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
LABEL_4:
    v28 = v95;
LABEL_5:
    ++v43;
    sub_1D5D2D228(v31, type metadata accessor for FormatDerivedDataResultOptionReference);
    v37 = v100;
    v46 = v101;
    result = v102;
    if (v104 == v43)
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D70DF29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70DF304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D70DF36C(uint64_t a1)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(a1 + 8), *(a1 + 16));
  MEMORY[0x1DA6F9910](0x3D79656B202CLL, 0xE600000000000000);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      v2 = 0x203A6B636F6C62;
      v3 = 0xE700000000000000;
    }

    else
    {
      v2 = 0x203A6E6F6974706FLL;
      v3 = 0xE800000000000000;
    }

    v5 = v2;
    v6 = v3;
  }

  else
  {
    v5 = 0x203A656C6966;
    v6 = 0xE600000000000000;
  }

  MEMORY[0x1DA6F9910](*(a1 + 40), *(a1 + 48));
  MEMORY[0x1DA6F9910](v5, v6);

  return 0xD000000000000011;
}

uint64_t sub_1D70DF494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C2ED68(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FeedDatabaseGroup.deinit()
{

  return v0;
}

uint64_t FeedDatabaseGroup.__deallocating_deinit()
{
  FeedDatabaseGroup.deinit();

  return swift_deallocClassInstance();
}

uint64_t static FeedDatabaseGroup.== infix(_:_:)()
{
  v0 = FeedDatabaseGroup.identifier.getter();
  v2 = v1;
  if (v0 == FeedDatabaseGroup.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

id sub_1D70DF728(uint64_t a1)
{
  v31 = a1;
  v32 = sub_1D725EF8C();
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 fractionalWidthDimension_];
  v7 = [v5 fractionalHeightDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  v10 = [objc_opt_self() itemWithLayoutSize_];
  v11 = [v5 absoluteDimension_];
  v12 = [v5 &selRef:300.0 inspectionWithCompletion:? + 1];
  v13 = [v8 &selRef_publisherTopicWeight + 6];

  v14 = objc_opt_self();
  sub_1D5E42B34();
  v15 = swift_allocObject();
  v29 = xmmword_1D72816C0;
  *(v15 + 16) = xmmword_1D72816C0;
  *(v15 + 32) = v10;
  sub_1D5B5A498(0, &qword_1EC89A6E8);
  v30 = v10;
  v16 = sub_1D726265C();

  v17 = [v14 verticalGroupWithLayoutSize:v13 subitems:v16];

  [v17 setContentInsets_];
  v18 = [objc_opt_self() sectionWithGroup_];
  [v18 setContentInsets_];
  [v18 setOrthogonalScrollingBehavior_];
  v19 = swift_allocObject();
  *(v19 + 16) = v29;
  v20 = [v5 fractionalWidthDimension_];
  v21 = 52.0;
  if (!v31)
  {
    v21 = 76.0;
  }

  v22 = [v5 absoluteDimension_];
  v23 = [v8 sizeWithWidthDimension:v20 heightDimension:v22];

  v24 = v32;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D8478], v32);
  sub_1D725EF7C();
  (*(v1 + 8))(v4, v24);
  v25 = sub_1D726203C();

  v26 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:v25 alignment:1];

  *(v19 + 32) = v26;
  sub_1D5B5A498(0, &qword_1EC89A6F0);
  v27 = sub_1D726265C();

  [v18 setBoundarySupplementaryItems_];

  return v18;
}

uint64_t sub_1D70DFBD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FormatBlueprintItemSelectionContext.pluginIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatBlueprintItemSelectionContext(0) + 20));

  return v1;
}

uint64_t FormatBlueprintItemSelectionContext.tracker.getter()
{
  type metadata accessor for FormatBlueprintItemSelectionContext(0);
}

uint64_t FormatBlueprintItemSelectionContext.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70DFBD8(v2, v7);
  sub_1D6F9A330();
  if ((*(*(v8 - 8) + 48))(v7, 2, v8))
  {
    return sub_1D725E9EC();
  }

  v10 = sub_1D725E9FC();
  return (*(*(v10 - 8) + 32))(a1, v7, v10);
}

uint64_t sub_1D70DFE20()
{
  result = type metadata accessor for FormatBlueprintItemSelectionContext.Action(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D725A60C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D70DFED4()
{
  sub_1D6F9A330();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1D70DFF94()
{
  result = qword_1EC89A728;
  if (!qword_1EC89A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A728);
  }

  return result;
}

unint64_t sub_1D70DFFE8()
{
  v1 = v0;
  v2 = sub_1D725BD1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DebugFormatUploadHiddenReason();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70E06B4(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000026;
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    if (EnumCaseMultiPayload != 4)
    {
      return 0xD000000000000031;
    }

    v20 = *v10;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1D7263D4C();
    v21 = 0x6D6F6F727377654ELL;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v3 + 32))(v6, v10, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1D7263D4C();

      v29 = 0xD000000000000026;
      v30 = 0x80000001D73FD620;
      v25 = sub_1D725BC9C();
      MEMORY[0x1DA6F9910](v25);

      v26 = v29;
      (*(v3 + 8))(v6, v2);
      return v26;
    }

    v20 = *v10;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1D7263D4C();
    v21 = 0x72656C69706D6F43;
LABEL_11:
    MEMORY[0x1DA6F9910](v21, 0xEF0A726F72724520);
    v35 = v20;
    sub_1D5BA6EF4();
    sub_1D7263F9C();

    return v29;
  }

  if (EnumCaseMultiPayload)
  {
    v23 = *v10;
    v24 = v10[1];
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1D7263D4C();

    v29 = 0xD000000000000030;
    v30 = 0x80000001D73FD5A0;
    MEMORY[0x1DA6F9910](v23, v24);

    return v29;
  }

  v12 = *v10;
  v13 = v10[1];
  v14 = v10[2];
  v15 = v10[3];
  v16 = v10[4];
  v17 = v10[5];
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1D7263D4C();
  v35 = v29;
  v36 = v30;
  MEMORY[0x1DA6F9910](0xD000000000000036, 0x80000001D73FD5E0);
  if (v13 == 1)
  {
    v18 = 0xE300000000000000;
    v19 = 2960685;
  }

  else
  {
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = v16;
    v34 = v17;
    v27 = sub_1D70E03F4();
    v18 = v28;
    sub_1D5E4B984(v12, v13);
    v19 = v27;
  }

  MEMORY[0x1DA6F9910](v19, v18);

  return v35;
}

uint64_t sub_1D70E03F4()
{
  v1 = v0[3];
  v2 = v0[5];
  if (!v0[1])
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      goto LABEL_5;
    }

LABEL_12:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_1D5B858EC((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v12 = &v3[16 * v11];
    *(v12 + 4) = 0x676E6967617453;
    *(v12 + 5) = 0xE700000000000000;
    if (v2)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  v3 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1D5B858EC((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 16721;
  *(v6 + 5) = 0xE200000000000000;
  if (v1)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v2)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1D5B858EC((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = 0x69746375646F7250;
    *(v9 + 5) = 0xEA00000000006E6FLL;
    goto LABEL_18;
  }

LABEL_17:
  if (!*(v3 + 2))
  {

    return 2960685;
  }

LABEL_18:
  v13 = MEMORY[0x1E69E6158];
  sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D70E0718(&qword_1EDF3C840, &qword_1EDF43BA0, v13);
  v14 = sub_1D7261F3C();

  return v14;
}

uint64_t type metadata accessor for DebugFormatUploadHiddenReason()
{
  result = qword_1EC89A730;
  if (!qword_1EC89A730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D70E06B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatUploadHiddenReason();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D70E0718(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58388(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D70E0770()
{
  sub_1D70E0810();
  if (v0 <= 0x3F)
  {
    sub_1D70E087C();
    if (v1 <= 0x3F)
    {
      sub_1D5BA6EF4();
      if (v2 <= 0x3F)
      {
        sub_1D70E08AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D70E0810()
{
  if (!qword_1EC89A740)
  {
    sub_1D5B58388(0, qword_1EDF44E88, &type metadata for FormatCompilerOptions.Newsroom.Environments, MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A740);
    }
  }
}

uint64_t sub_1D70E087C()
{
  result = qword_1EC89A748;
  if (!qword_1EC89A748)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC89A748);
  }

  return result;
}

void sub_1D70E08AC()
{
  if (!qword_1EC89A750)
  {
    v0 = sub_1D725BD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A750);
    }
  }
}

uint64_t sub_1D70E08F4(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1D6B7BCEC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v28);
  if (!v2)
  {
    v6 = *(v4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v5 = *(v4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
    sub_1D5F2DEAC(v28, v27);

    sub_1D725A7EC();
    v7 = *(*(v26 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v24 = *(v26 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v24;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    v25 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    v11 = qword_1EC893B38;
    v12 = off_1EC893B40;

    v13 = sub_1D5BE240C(v11, v12, v10);

    if (v13)
    {
      sub_1D5FEA1F0();
      sub_1D5F2DF58(v28);
      v14 = v25;
    }

    else
    {
      sub_1D5F2DF58(v28);
      v14 = MEMORY[0x1E69E7CD0];
    }

    type metadata accessor for FormatPuzzleEmbedData();
    v4 = swift_allocObject();
    v15 = v27[9];
    v16 = v27[11];
    v17 = v27[12];
    *(v4 + 192) = v27[10];
    *(v4 + 208) = v16;
    *(v4 + 224) = v17;
    v18 = v27[5];
    v19 = v27[7];
    v20 = v27[8];
    *(v4 + 128) = v27[6];
    *(v4 + 144) = v19;
    *(v4 + 16) = v6;
    *(v4 + 24) = v5;
    *(v4 + 160) = v20;
    *(v4 + 176) = v15;
    v21 = v27[3];
    *(v4 + 64) = v27[2];
    *(v4 + 80) = v21;
    *(v4 + 96) = v27[4];
    *(v4 + 112) = v18;
    v22 = v27[1];
    *(v4 + 32) = v27[0];
    *(v4 + 48) = v22;
    *(v4 + 240) = a2;
    *(v4 + 248) = v14;
  }

  return v4;
}

uint64_t FormatPuzzleEmbedNodeBinding.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D70E0B74()
{
  result = qword_1EC89A758;
  if (!qword_1EC89A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A758);
  }

  return result;
}

unint64_t sub_1D70E0BC8(uint64_t a1)
{
  result = sub_1D70E0BF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70E0BF0()
{
  result = qword_1EC89A760;
  if (!qword_1EC89A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A760);
  }

  return result;
}

unint64_t sub_1D70E0C44(void *a1)
{
  a1[1] = sub_1D66B0600();
  a1[2] = sub_1D66F9EB4();
  result = sub_1D70E0B74();
  a1[3] = result;
  return result;
}

uint64_t sub_1D70E0CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1D70E0D68;

  return sub_1D70E13DC(a5);
}

uint64_t sub_1D70E0D68(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D70E0E68, 0, 0);
}

uint64_t sub_1D70E0E68()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource_image);
  *(v1 + OBJC_IVAR____TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource_image) = v0[4];

  v3 = v0[1];

  return v3();
}

id SharingPuzzleTypeImageActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingPuzzleTypeImageActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SharingPuzzleTypeImageActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource_image))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource_image);
    v8 = sub_1D62B7E2C();
    *&v7 = v6;
    sub_1D5B7C390(&v7, a1);
    v3 = v6;
  }

  else
  {
    v4 = sub_1D67B380C();
    v3 = 0;
    *(a1 + 24) = v4;
    *a1 = MEMORY[0x1E69E7CA0] + 8;
  }

  return v3;
}

void SharingPuzzleTypeImageActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

    goto LABEL_9;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 != sub_1D726207C() || v9 != v10)
  {
    v12 = sub_1D72646CC();

    if (v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

LABEL_11:
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource_image))
  {
    v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource_image);
    v20 = sub_1D62B7E2C();
    *&v19 = v18;
    sub_1D5B7C390(&v19, a2);
    v13 = v18;
  }

  else
  {
    sub_1D5B5A6B4(0, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = sub_1D67B3C60();
    v13 = 0;
    *(a2 + 24) = v16;
    *a2 = v15;
  }

  v17 = v13;
}

uint64_t sub_1D70E13FC()
{
  v1 = [*(v0 + 48) coverImageAssetHandle];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 filePath];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D726207C();
      v7 = v6;

      *(v0 + 32) = v5;
      *(v0 + 40) = v7;
      sub_1D5B5A6B4(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v8 = sub_1D725BB1C();
    }

    else
    {
      *(swift_task_alloc() + 16) = v2;
      sub_1D5B5A6B4(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v8 = sub_1D725BBAC();
    }

    *(v0 + 64) = v8;
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1D6D27DBC;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D70E15E8(uint64_t a1)
{
  v3 = 0;
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + *(type metadata accessor for FeedContext() + 40));

  v6 = sub_1D5D6021C(v5, v4);
  if (*(v6 + 16) <= *(a1 + 16) >> 3)
  {
    v32 = a1;

    sub_1D6836478(v6);

    v7 = a1;
  }

  else
  {

    v7 = sub_1D6E14F70(v6, a1);
  }

  v9 = *(v7 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v10;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v28[0] = v3;
    v28[1] = v28;
    v29 = v10;
    MEMORY[0x1EEE9AC00](v8, v11);
    v13 = v28 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    v3 = 0;
    v10 = v7 + 56;
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v30 = 0;
    v31 = "ormatGroupNodeMaskGradientLayer";
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_16:
      v21 = v18 | (v3 << 6);

      if (sub_1D726230C() & 1) != 0 || (sub_1D726230C())
      {
      }

      else
      {
        v22 = sub_1D726230C();

        if ((v22 & 1) == 0)
        {
          *&v13[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          if (__OFADD__(v30++, 1))
          {
            __break(1u);
            return sub_1D6EC09F8(v13, v29, v30, v7);
          }
        }
      }
    }

    v19 = v3;
    while (1)
    {
      v3 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v3 >= v17)
      {
        return sub_1D6EC09F8(v13, v29, v30, v7);
      }

      v20 = *(v10 + 8 * v3);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    v25 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v25;
  }

  v26 = swift_slowAlloc();
  v27 = sub_1D70E22F0(v26, v10, v7, sub_1D70E2238);

  MEMORY[0x1DA6FD500](v26, -1, -1);
  return v27;
}

uint64_t sub_1D70E1950@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = 0;
  v48 = *MEMORY[0x1E69E9840];
  sub_1D6BAFA3C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B68374(a1, v46);
  sub_1D5D4C214(a2, v10, sub_1D6BAFA3C);
  v11 = type metadata accessor for FeedContext();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_1D5BF0058(v10, sub_1D6BAFA3C);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = (*(v13 + 80))(v12, v13);
  }

  else
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = (*(v16 + 80))(v15, v16);
    v18 = *&v10[*(v11 + 40)];

    v19 = sub_1D5D6021C(MEMORY[0x1E69E7CD0], v18);
    if (*(v19 + 16) <= *(v17 + 16) >> 3)
    {
      v45 = v17;

      sub_1D6836478(v19);

      v20 = v45;
    }

    else
    {

      v20 = sub_1D6E14F70(v19, v17);
    }

    v22 = *(v20 + 32);
    v23 = ((1 << v22) + 63) >> 6;
    v24 = 8 * v23;
    if ((v22 & 0x3Fu) > 0xD)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v38 = v23;
      v39 = v17;
      v40 = a2;
      v41 = a3;
      v37[0] = v6;
      v37[1] = v37;
      MEMORY[0x1EEE9AC00](v21, v24);
      v42 = v37 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v42, v25);
      v6 = 0;
      v23 = v20 + 56;
      v26 = 1 << *(v20 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      a3 = v27 & *(v20 + 56);
      v17 = (v26 + 63) >> 6;
      v43 = 0;
      v44 = "ormatGroupNodeMaskGradientLayer";
      while (a3)
      {
        v28 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
LABEL_18:
        a2 = v28 | (v6 << 6);

        if (sub_1D726230C() & 1) != 0 || (sub_1D726230C())
        {
        }

        else
        {
          v31 = sub_1D726230C();

          if ((v31 & 1) == 0)
          {
            *&v42[(a2 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a2;
            if (__OFADD__(v43++, 1))
            {
              __break(1u);
LABEL_24:
              v14 = sub_1D6EC09F8(v42, v38, v43, v20);

              a2 = v40;
              a3 = v41;
              goto LABEL_25;
            }
          }
        }
      }

      v29 = v6;
      while (1)
      {
        v6 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        v30 = *(v23 + 8 * v6);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          a3 = (v30 - 1) & v30;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_28:
      v35 = v24;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v24 = v35;
    }

    v36 = swift_slowAlloc();
    v14 = sub_1D70E22F0(v36, v23, v20, sub_1D70E2238);

    MEMORY[0x1DA6FD500](v36, -1, -1);

LABEL_25:
    sub_1D5BF0058(v10, type metadata accessor for FeedContext);
  }

  sub_1D5BF0058(a2, sub_1D6BAFA3C);
  *(&v47 + 1) = v14;
  v33 = v46[1];
  *a3 = v46[0];
  *(a3 + 16) = v33;
  *(a3 + 32) = v47;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D70E1E64()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D70E1EB8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D70E1F0C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_1D70E1F68()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1D70E1FC4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1D70E2018()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_1D70E206C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_1D70E20C8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_1D70E212C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 88))(v1, v2);
}

unint64_t sub_1D70E21BC(uint64_t a1)
{
  result = sub_1D70E21E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70E21E4()
{
  result = qword_1EC89A778;
  if (!qword_1EC89A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A778);
  }

  return result;
}

uint64_t sub_1D70E2238()
{
  if (sub_1D726230C() & 1) != 0 || (sub_1D726230C())
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1D726230C() ^ 1;
  }

  return v0 & 1;
}

void *sub_1D70E22F0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D70E263C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D70E2380(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v34 = a1;
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v6;
    v35 = v3;
    v32 = &v29;
    MEMORY[0x1EEE9AC00](a1, v7);
    v31 = &v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v8);
    v33 = 0;
    v9 = 0;
    v6 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = v4;
      v19 = (*(v4 + 48) + 16 * v17);
      v20 = v19[1];
      v36[0] = *v19;
      v36[1] = v20;

      v3 = v35;
      v21 = v34(v36);
      v35 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v22 = v21;

      v4 = v18;
      if (v22)
      {
        *&v31[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
          return sub_1D6EC09F8(v31, v30, v33, v4);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_1D6EC09F8(v31, v30, v33, v4);
      }

      v16 = *(v6 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v25 = v3;
    v26 = v7;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v7 = v26;
    v3 = v25;
  }

  v27 = swift_slowAlloc();
  v28 = sub_1D70E22F0(v27, v6, v4, v34);

  result = MEMORY[0x1DA6FD500](v27, -1, -1);
  if (!v25)
  {
    return v28;
  }

  return result;
}

uint64_t sub_1D70E263C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_1D6EC09F8(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D70E27B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for FeedLayoutCacheKey();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_1D5D4C214(*(v31 + 48) + *(v29 + 72) * v21, v9, type metadata accessor for FeedLayoutCacheKey);
    v22 = v30(v9);
    sub_1D5BF0058(v9, type metadata accessor for FeedLayoutCacheKey);
    if (v4)
    {
      return;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        sub_1D5BF4BE0(v27, v26, v28, v24);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t FeedEdition.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id FeedEdition.dateRange.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedEdition() + 20));

  return v1;
}

uint64_t sub_1D70E2A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v7 = type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v36.i8[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FormatOption();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v36.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5EB99F0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  *(v16 + 24) = v17;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0;
  *(v16 + 76) = -512;
  *(v16 + 72) = 0;
  v48 = v16;
  sub_1D6C4D418(a2);
  if (v3)
  {
  }

  v37 = a3;
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v21 = *(v12 + 72);
    do
    {
      sub_1D70E5B2C(v20, v15, type metadata accessor for FormatOption);
      *&v44 = *(v15 + 2);

      sub_1D629C93C(&v48);
      sub_1D70E5B94(v15, type metadata accessor for FormatOption);

      v20 += v21;
      --v19;
    }

    while (v19);
  }

  v22 = sub_1D69AB368();
  if (v22)
  {
    v23 = *(*v22 + *MEMORY[0x1E69E6B68] + 16);
    v24 = v22;
    swift_beginAccess();
    sub_1D70E5B2C(v24 + v23, v10, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);

    v26 = *(v10 + 6);
    v25 = *(v10 + 7);

    sub_1D70E5B94(v10, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
  }

  else
  {
    v26 = 0;
    v25 = 0xE000000000000000;
  }

  *&v44 = v26;
  *(&v44 + 1) = v25;
  LOBYTE(v45) = 2;
  *(&v45 + 1) = &unk_1F51118D0;
  *&v46 = &unk_1F5111908;
  *(&v46 + 1) = MEMORY[0x1E69E7CC8];
  v47 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CD0];
  v39.i64[0] = MEMORY[0x1E69E7CD0];
  v39.i64[1] = MEMORY[0x1E69E7CD0];
  v40 = MEMORY[0x1E69E7CD0];
  v41 = v17;
  v42 = MEMORY[0x1E69E7CD0];
  v43 = v17;
  v28 = v48;
  swift_beginAccess();
  v29 = *(v28 + 16);
  v30 = *(v29 + 16);

  if (v30)
  {
    v31 = 0;
    while (v31 < *(v29 + 16))
    {
      v32 = *(v29 + 8 * v31 + 32);

      sub_1D670953C(v32, &v44, a1, &v39, v28);

      if (v30 == ++v31)
      {
        v36 = v39;
        v34 = v40;
        v33 = v41;
        v27 = v42;
        v17 = v43;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = vdupq_n_s64(v27);
    v33 = v17;
    v34 = v27;
LABEL_15:

    v38[0] = v44;
    v38[1] = v45;
    v38[2] = v46;
    v38[3] = v47;
    sub_1D670E6B8(v38);

    v35 = v37;
    *v37 = v36;
    v35[2] = v34;
    v35[3] = v33;
    v35[4] = v27;
    v35[5] = v17;
  }

  return result;
}

uint64_t sub_1D70E2F38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int64x2_t *a3@<X8>)
{
  v5 = a2 + *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  v6 = *(v5 + 3);
  v7 = *(v5 + 4);
  v8 = *(v5 + 6);
  v26 = *(v5 + 7);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v41 = v5[40];
  if (v41 <= 0xFD)
  {
    v12 = MEMORY[0x1E69E6F90];
    v24 = v8;
    sub_1D5B66EA4(0, &qword_1EC88F078, &type metadata for FormatDerivedDataContextScope, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
    v13 = v41;
    *(v10 + 48) = v41;
    sub_1D5B66EA4(0, &qword_1EC88F080, &type metadata for FormatDerivedDataBindingScope, v12);
    v11 = swift_allocObject();
    v8 = v24;
    *(v11 + 16) = xmmword_1D7273AE0;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    *(v11 + 48) = v13;
    *(v11 + 70) = 0;
  }

  *&v37 = v8;
  *(&v37 + 1) = v26;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = v10;
  *&v39 = v11;
  *(&v39 + 1) = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v14 = MEMORY[0x1E69E7CD0];
  v32.i64[0] = MEMORY[0x1E69E7CD0];
  v32.i64[1] = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  v34 = v9;
  v35 = MEMORY[0x1E69E7CD0];
  v36 = v9;
  v15 = *(v5 + 8);
  swift_beginAccess();
  v16 = *(v15 + 16);
  v17 = *(v16 + 16);
  sub_1D70E468C(v6, v7, v41);
  sub_1D70E468C(v6, v7, v41);

  if (v17)
  {
    v19 = 0;
    while (v19 < *(v16 + 16))
    {
      v20 = *(v16 + 8 * v19 + 32);

      sub_1D670953C(v20, &v37, a1, &v32, v15);
      if (v3)
      {

        v28 = v37;
        v29 = v38;
        v30 = v39;
        v31 = v40;
        return sub_1D670E6B8(&v28);
      }

      if (v17 == ++v19)
      {
        v27 = v32;
        v22 = v33;
        v21 = v34;
        v14 = v35;
        v23 = v36;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = vdupq_n_s64(v14);
    v23 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v14;
LABEL_10:

    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    sub_1D670E6B8(&v28);

    *a3 = v27;
    a3[1].i64[0] = v22;
    a3[1].i64[1] = v21;
    a3[2].i64[0] = v14;
    a3[2].i64[1] = v23;
  }

  return result;
}

uint64_t sub_1D70E3278()
{
  v0 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v0, qword_1EC9BADE0);
  __swift_project_value_buffer(v0, qword_1EC9BADE0);
  return sub_1D725BD2C();
}

uint64_t sub_1D70E32D0(void *a1)
{
  v3 = v1;
  sub_1D70E5F64(0, &qword_1EC89A818, sub_1D70E5E68, &type metadata for FormatDerivedDataFile._$CopyOnWriteStorage.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70E5E68();
  sub_1D7264B5C();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v17 = *v3;
  v18 = v11;
  v19 = v12;
  v20 = 0;
  sub_1D5F7D230(v17, v11, v12);
  sub_1D70E5FCC();
  sub_1D726443C();
  sub_1D5F7C628(v17, v18, v19);
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v17 = *(v3 + 24);
    v18 = v13;
    v19 = v14;
    v20 = 1;
    sub_1D70E468C(v17, v13, v14);
    sub_1D70E6020();
    sub_1D72643BC();
    sub_1D670E784(v17, v18, v19);
    LOBYTE(v17) = 2;
    sub_1D72643FC();
    v17 = *(v3 + 64);
    v20 = 3;
    sub_1D60E2AA8();
    sub_1D726443C();
    type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
    LOBYTE(v17) = 4;
    sub_1D725BD1C();
    sub_1D70E6074(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D70E35CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1D725BD1C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70E5F64(0, &qword_1EC89A7F8, sub_1D70E5E68, &type metadata for FormatDerivedDataFile._$CopyOnWriteStorage.CodingKeys, MEMORY[0x1E69E6F48]);
  v32 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70E5E68();
  v31 = v10;
  v15 = v33;
  sub_1D7264B0C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v11;
  v33 = v6;
  v16 = a1;
  v17 = v28;
  v18 = v29;
  v19 = v30;
  v36 = 0;
  sub_1D70E5EBC();
  sub_1D726431C();
  v20 = v35;
  *v14 = v34;
  v14[16] = v20;
  v36 = 1;
  sub_1D70E5F10();
  sub_1D726427C();
  v21 = v35;
  *(v14 + 24) = v34;
  v14[40] = v21;
  LOBYTE(v34) = 2;
  *(v14 + 6) = sub_1D72642BC();
  *(v14 + 7) = v22;
  v36 = 3;
  sub_1D60E2808();
  sub_1D726431C();
  v25[1] = 0;
  *(v14 + 8) = v34;
  LOBYTE(v34) = 4;
  sub_1D70E6074(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v23 = v33;
  sub_1D726431C();
  (*(v17 + 8))(v31, v32);
  (*(v18 + 32))(&v14[*(v26 + 32)], v23, v19);
  sub_1D70E5B2C(v14, v27, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_1D70E5B94(v14, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
}

uint64_t sub_1D70E3AB8(void *a1, uint64_t a2)
{
  sub_1D70E5F64(0, &qword_1EC89A7B0, sub_1D70E44CC, &type metadata for FormatDerivedDataFile.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70E44CC();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D70E4520();
  sub_1D70E45C4(&qword_1EC89A7B8);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D70E3C54()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 1752457584;
  v4 = 0x4464657669726564;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65706F6373;
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

uint64_t sub_1D70E3CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70E61D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70E3D0C(uint64_t a1)
{
  v2 = sub_1D70E5E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70E3D48(uint64_t a1)
{
  v2 = sub_1D70E5E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70E3DB8(uint64_t a1)
{
  v2 = sub_1D70E44CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70E3DF4(uint64_t a1)
{
  v2 = sub_1D70E44CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D70E3E30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D70E42EC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D70E3E78(void **a1, void **a2)
{
  v4 = type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18[-v10];
  v12 = *a1;
  v13 = *a2;
  v14 = MEMORY[0x1E69E6B68];
  v15 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  sub_1D70E5B2C(v12 + v15, v11, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
  v16 = *(*v13 + *v14 + 16);
  swift_beginAccess();
  sub_1D70E5B2C(v13 + v16, v7, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
  LOBYTE(v13) = sub_1D70E4018(v11, v7);
  sub_1D70E5B94(v7, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
  sub_1D70E5B94(v11, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
  return v13 & 1;
}

uint64_t sub_1D70E4018(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *&v27 = *a1;
  *(&v27 + 1) = v4;
  LOBYTE(v28) = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  *&v24 = *a2;
  *(&v24 + 1) = v6;
  LOBYTE(v25) = v7;
  sub_1D5F7D230(v27, v4, v5);
  sub_1D5F7D230(v24, v6, v7);
  v8 = _s8NewsFeed24FormatDerivedDataFileKeyO2eeoiySbAC_ACtFZ_0(&v27, &v24);
  sub_1D5F7C628(v24, *(&v24 + 1), v25);
  sub_1D5F7C628(v27, *(&v27 + 1), v28);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  if (v11 <= 0xFD)
  {
    *&v27 = *(a1 + 24);
    *(&v27 + 1) = v9;
    LOBYTE(v28) = v11;
    if (v14 <= 0xFD)
    {
      *&v24 = v13;
      *(&v24 + 1) = v12;
      LOBYTE(v25) = v14;
      sub_1D70E468C(v10, v9, v11);
      sub_1D70E468C(v13, v12, v14);
      sub_1D70E468C(v10, v9, v11);
      v15 = sub_1D6A625BC(&v27, &v24);
      sub_1D6007850(v24, *(&v24 + 1), v25);
      sub_1D6007850(v27, *(&v27 + 1), v28);
      sub_1D670E784(v10, v9, v11);
      if (v15)
      {
        goto LABEL_9;
      }

LABEL_14:
      v21 = 0;
      return v21 & 1;
    }

    sub_1D70E468C(v10, v9, v11);
    sub_1D70E468C(v13, v12, v14);
    sub_1D70E468C(v10, v9, v11);
    sub_1D6007850(v10, v9, v11);
LABEL_7:
    sub_1D670E784(v10, v9, v11);
    sub_1D670E784(v13, v12, v14);
    goto LABEL_14;
  }

  sub_1D70E468C(*(a1 + 24), *(a1 + 32), *(a1 + 40));
  sub_1D70E468C(v13, v12, v14);
  if (v14 <= 0xFD)
  {
    goto LABEL_7;
  }

  sub_1D670E784(v10, v9, v11);
LABEL_9:
  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 64);
  v17 = *(a2 + 64);
  swift_beginAccess();
  v18 = v16[2];
  v24 = v16[1];
  v25 = v18;
  v26[0] = v16[3];
  *(v26 + 14) = *(v16 + 62);
  swift_beginAccess();
  v19 = v17[2];
  v27 = v17[1];
  v28 = v19;
  v29[0] = v17[3];
  *(v29 + 14) = *(v17 + 62);
  sub_1D5EB9AB0(&v24, v23);
  sub_1D5EB9AB0(&v27, v23);
  v20 = sub_1D6C4E8C4(&v24, &v27);
  sub_1D60E1A40(&v27);
  sub_1D60E1A40(&v24);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
  v21 = sub_1D725BCBC();
  return v21 & 1;
}

void *sub_1D70E42EC(void *a1)
{
  sub_1D70E5F64(0, &qword_1EC89A780, sub_1D70E44CC, &type metadata for FormatDerivedDataFile.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70E44CC();
  v10 = v9;
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D70E4520();
    sub_1D70E45C4(&qword_1EC89A798);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D70E44CC()
{
  result = qword_1EC89A788;
  if (!qword_1EC89A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A788);
  }

  return result;
}

void sub_1D70E4520()
{
  if (!qword_1EC89A790)
  {
    type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
    v0 = sub_1D725BD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A790);
    }
  }
}

uint64_t type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage()
{
  result = qword_1EC89A7C8;
  if (!qword_1EC89A7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D70E45C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D70E4520();
    sub_1D70E6074(&qword_1EC89A7A0, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
    sub_1D70E6074(&qword_1EC89A7A8, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70E468C(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D6007830(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D70E46A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v132 = a2;
  v6 = type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70E5B2C(a1, v13, type metadata accessor for FormatFile);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 9)
    {
      if ((EnumCaseMultiPayload - 11) < 2)
      {
        goto LABEL_16;
      }

      v44 = *(v13 + 3);
      v125 = *(v13 + 2);
      v126 = v44;
      v127 = *(v13 + 4);
      LOBYTE(v128[0]) = v13[80];
      v45 = *(v13 + 1);
      v123 = *v13;
      v124 = v45;
      sub_1D5EB99F0();
      v46 = swift_allocObject();
      v47 = MEMORY[0x1E69E7CC0];
      *(v46 + 16) = MEMORY[0x1E69E7CC0];
      *(v46 + 24) = v47;
      *(v46 + 32) = 0u;
      *(v46 + 48) = 0u;
      *(v46 + 64) = 0;
      *(v46 + 76) = -512;
      *(v46 + 72) = 0;
      v130[0] = v46;
      v48 = *(v13 + 3);
      v119 = *(v13 + 2);
      v120 = v48;
      v121 = *(v13 + 4);
      LOBYTE(v122[0]) = v13[80];
      v49 = *(v13 + 1);
      v117 = *v13;
      v118 = v49;
      sub_1D62A2750(v130);
      if (v3)
      {

        sub_1D70E5B94(a1, type metadata accessor for FormatFile);

        return sub_1D62B7D78(&v123);
      }

      v116 = a3;
      v64 = v123;
      v65 = v130[0];
      v66 = qword_1EC87DD08;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EC9BADE0);
      (*(*(v67 - 8) + 16))(&v9[*(v6 + 32)], v68, v67);
      *v9 = v64;
      v9[16] = 5;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      v9[40] = -2;
      v69 = v116;
      *(v9 + 6) = v132;
      *(v9 + 7) = v69;
      *(v9 + 8) = v65;
      sub_1D70E5BF4();
      v70 = swift_allocObject();
      sub_1D70E5B2C(v9, v70 + *(*v70 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
      sub_1D62B7D78(&v123);
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v39 = a3;
      v40 = *v13;
      sub_1D5EB99F0();
      v41 = swift_allocObject();
      v42 = MEMORY[0x1E69E7CC0];
      *(v41 + 16) = MEMORY[0x1E69E7CC0];
      *(v41 + 24) = v42;
      *(v41 + 32) = 0u;
      *(v41 + 48) = 0u;
      *(v41 + 64) = 0;
      *(v41 + 76) = -512;
      *(v41 + 72) = 0;
      v131[0] = v41;
      swift_beginAccess();

      sub_1D6C4D418(v43);
      if (v3)
      {

        goto LABEL_36;
      }

      v63 = v40[9];

      sub_1D626DA28(v131, v63);

      swift_beginAccess();
      v71 = v40[11];

      sub_1D627AD20(v131, v71);

      swift_beginAccess();
      v72 = v40[8];

      sub_1D626DB9C(v131, v72);
      v115 = a1;

      swift_beginAccess();
      v98 = v40[3];
      v116 = v40[2];
      v99 = v131[0];
      v100 = qword_1EC87DD08;

      if (v100 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EC9BADE0);
      (*(*(v101 - 8) + 16))(&v9[*(v6 + 32)], v102, v101);
      *v9 = v116;
      *(v9 + 1) = v98;
      v9[16] = 2;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      v9[40] = -2;
      *(v9 + 6) = v132;
      *(v9 + 7) = v39;
      *(v9 + 8) = v99;
      sub_1D70E5BF4();
      v103 = swift_allocObject();
      sub_1D70E5B2C(v9, v103 + *(*v103 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);

      sub_1D70E5B94(v115, type metadata accessor for FormatFile);
      sub_1D70E5B94(v9, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        v57 = *(v13 + 5);
        v127 = *(v13 + 4);
        v128[0] = v57;
        *(v128 + 9) = *(v13 + 89);
        v58 = *(v13 + 1);
        v123 = *v13;
        v124 = v58;
        v59 = *(v13 + 3);
        v125 = *(v13 + 2);
        v126 = v59;
        sub_1D5EB99F0();
        v60 = swift_allocObject();
        v61 = MEMORY[0x1E69E7CC0];
        *(v60 + 16) = MEMORY[0x1E69E7CC0];
        *(v60 + 24) = v61;
        *(v60 + 32) = 0u;
        *(v60 + 48) = 0u;
        *(v60 + 64) = 0;
        *(v60 + 76) = -512;
        *(v60 + 72) = 0;
        v130[0] = v60;

        sub_1D6C4D418(v62);
        if (v3)
        {

          sub_1D62E2300(&v123);
          goto LABEL_25;
        }

        v121 = v127;
        v122[0] = v128[0];
        *(v122 + 9) = *(v128 + 9);
        v117 = v123;
        v118 = v124;
        v119 = v125;
        v120 = v126;
        sub_1D62A07BC(v130);
        v116 = a3;
        v92 = v123;
        v93 = v130[0];
        v94 = qword_1EC87DD08;

        if (v94 != -1)
        {
          swift_once();
        }

        v95 = sub_1D725BD1C();
        v96 = __swift_project_value_buffer(v95, qword_1EC9BADE0);
        (*(*(v95 - 8) + 16))(&v9[*(v6 + 32)], v96, v95);
        *v9 = v92;
        v9[16] = 4;
        *(v9 + 24) = xmmword_1D728CF30;
        v9[40] = 0x80;
        v97 = v116;
        *(v9 + 6) = v132;
        *(v9 + 7) = v97;
        *(v9 + 8) = v93;
        sub_1D70E5BF4();
        v70 = swift_allocObject();
        sub_1D70E5B2C(v9, v70 + *(*v70 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
        sub_1D62E2300(&v123);
        goto LABEL_50;
      }

      v112 = v6;
      v113 = v9;
      v24 = *(v13 + 1);
      v111 = *v13;
      v25 = *(v13 + 5);
      v26 = *(v13 + 6);
      v114 = *(v13 + 3);
      v115 = v25;
      v27 = *(v13 + 7);
      v28 = *(v13 + 8);
      sub_1D5EB99F0();
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E7CC0];
      *(v29 + 16) = MEMORY[0x1E69E7CC0];
      *(v29 + 24) = v30;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0u;
      *(v29 + 64) = 0;
      *(v29 + 76) = -512;
      *(v29 + 72) = 0;
      *&v123 = v29;

      sub_1D6C4D418(v31);
      if (v3)
      {

        swift_bridgeObjectRelease_n();

LABEL_36:

        sub_1D70E5B94(a1, type metadata accessor for FormatFile);
      }

      v110[1] = v26;
      sub_1D626DEC0(&v123, v26);
      sub_1D627AD20(&v123, v27);

      sub_1D626DA28(&v123, v28);
      v116 = a3;

      v110[0] = v28;
      v104 = v123;
      v105 = qword_1EC87DD08;

      if (v105 != -1)
      {
        swift_once();
      }

      v106 = sub_1D725BD1C();
      v107 = __swift_project_value_buffer(v106, qword_1EC9BADE0);
      v108 = v113;
      (*(*(v106 - 8) + 16))(&v113[*(v112 + 32)], v107, v106);
      *v108 = v111;
      *(v108 + 8) = v24;
      *(v108 + 16) = 3;
      *(v108 + 24) = xmmword_1D7297410;
      *(v108 + 40) = 0x80;
      v109 = v116;
      *(v108 + 48) = v132;
      *(v108 + 56) = v109;
      *(v108 + 64) = v104;
      sub_1D70E5BF4();
      v103 = swift_allocObject();
      sub_1D70E5B2C(v108, v103 + *(*v103 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);

      sub_1D70E5B94(a1, type metadata accessor for FormatFile);
      sub_1D70E5B94(v108, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
    }

    return v103;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v32 = *(v13 + 5);
      v127 = *(v13 + 4);
      v128[0] = v32;
      *(v128 + 11) = *(v13 + 91);
      v33 = *(v13 + 1);
      v123 = *v13;
      v124 = v33;
      v34 = *(v13 + 3);
      v125 = *(v13 + 2);
      v126 = v34;
      sub_1D5EB99F0();
      v35 = swift_allocObject();
      v36 = MEMORY[0x1E69E7CC0];
      *(v35 + 16) = MEMORY[0x1E69E7CC0];
      *(v35 + 24) = v36;
      *(v35 + 32) = 0u;
      *(v35 + 48) = 0u;
      *(v35 + 64) = 0;
      *(v35 + 76) = -512;
      *(v35 + 72) = 0;
      v130[0] = v35;

      sub_1D6C4D418(v37);
      if (v3)
      {

        sub_1D6687720(&v123);
LABEL_25:
        v23 = a1;
        goto LABEL_26;
      }

      v121 = v127;
      v122[0] = v128[0];
      *(v122 + 11) = *(v128 + 11);
      v117 = v123;
      v118 = v124;
      v119 = v125;
      v120 = v126;
      sub_1D628F1A4(v130);
      v116 = a3;
      v73 = v123;
      v74 = v130[0];
      v75 = qword_1EC87DD08;

      if (v75 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EC9BADE0);
      (*(*(v76 - 8) + 16))(&v9[*(v6 + 32)], v77, v76);
      *v9 = v73;
      v9[16] = 6;
      *(v9 + 24) = xmmword_1D72BAA60;
      v9[40] = 0x80;
      v78 = v116;
      *(v9 + 6) = v132;
      *(v9 + 7) = v78;
      *(v9 + 8) = v74;
      sub_1D70E5BF4();
      v70 = swift_allocObject();
      sub_1D70E5B2C(v9, v70 + *(*v70 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
      sub_1D6687720(&v123);
    }

    else
    {
      v50 = *(v13 + 7);
      v128[1] = *(v13 + 6);
      v128[2] = v50;
      v129 = *(v13 + 8);
      v51 = *(v13 + 3);
      v125 = *(v13 + 2);
      v126 = v51;
      v52 = *(v13 + 5);
      v127 = *(v13 + 4);
      v128[0] = v52;
      v53 = *(v13 + 1);
      v123 = *v13;
      v124 = v53;
      sub_1D5EB99F0();
      v54 = swift_allocObject();
      v55 = MEMORY[0x1E69E7CC0];
      *(v54 + 16) = MEMORY[0x1E69E7CC0];
      *(v54 + 24) = v55;
      *(v54 + 32) = 0u;
      *(v54 + 48) = 0u;
      *(v54 + 64) = 0;
      *(v54 + 76) = -512;
      *(v54 + 72) = 0;
      v130[0] = v54;

      sub_1D6C4D418(v56);
      if (v3)
      {

        sub_1D5D68304(&v123);
        goto LABEL_25;
      }

      v122[1] = v128[1];
      v122[2] = v128[2];
      v122[3] = v129;
      v119 = v125;
      v120 = v126;
      v121 = v127;
      v122[0] = v128[0];
      v117 = v123;
      v118 = v124;
      sub_1D62918D4(v130);
      v116 = a3;
      v79 = v123;
      v80 = v130[0];
      v81 = qword_1EC87DD08;

      if (v81 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EC9BADE0);
      (*(*(v82 - 8) + 16))(&v9[*(v6 + 32)], v83, v82);
      *v9 = v79;
      v9[16] = 0;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      v9[40] = 0x80;
      v84 = v116;
      *(v9 + 6) = v132;
      *(v9 + 7) = v84;
      *(v9 + 8) = v80;
      sub_1D70E5BF4();
      v70 = swift_allocObject();
      sub_1D70E5B2C(v9, v70 + *(*v70 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
      sub_1D5D68304(&v123);
    }

LABEL_50:
    sub_1D70E5B94(a1, type metadata accessor for FormatFile);
    sub_1D70E5B94(v9, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);

    return v70;
  }

  if ((EnumCaseMultiPayload - 4) < 3)
  {
LABEL_16:
    sub_1D70E5B94(a1, type metadata accessor for FormatFile);

    sub_1D70E5B94(v13, type metadata accessor for FormatFile);
    return 0;
  }

  v115 = a1;
  v116 = a3;
  v15 = *(v13 + 5);
  v127 = *(v13 + 4);
  v128[0] = v15;
  v128[1] = *(v13 + 6);
  *(&v128[1] + 9) = *(v13 + 105);
  v16 = *(v13 + 1);
  v123 = *v13;
  v124 = v16;
  v17 = *(v13 + 3);
  v125 = *(v13 + 2);
  v126 = v17;
  sub_1D5EB99F0();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  *(v18 + 24) = v19;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0;
  *(v18 + 76) = -512;
  *(v18 + 72) = 0;
  v130[0] = v18;
  v20 = swift_allocObject();
  v21 = v126;
  *(v20 + 16) = v126;
  sub_1D5CBA110(v21, *(&v21 + 1));
  sub_1D6C4D24C(v20 | 0x7000000000000000);

  sub_1D6C4D418(v22);
  if (v3)
  {

    sub_1D66876CC(&v123);
    v23 = v115;
LABEL_26:
    sub_1D70E5B94(v23, type metadata accessor for FormatFile);
  }

  v121 = v127;
  v122[0] = v128[0];
  v122[1] = v128[1];
  *(&v122[1] + 9) = *(&v128[1] + 9);
  v117 = v123;
  v118 = v124;
  v119 = v125;
  v120 = v126;
  sub_1D6295048(v130);
  v85 = *(&v123 + 1);
  v114 = v123;
  v86 = v130[0];
  sub_1D5CBA110(v21, *(&v21 + 1));
  v87 = qword_1EC87DD08;

  if (v87 != -1)
  {
    swift_once();
  }

  v88 = sub_1D725BD1C();
  v89 = __swift_project_value_buffer(v88, qword_1EC9BADE0);
  (*(*(v88 - 8) + 16))(&v9[*(v6 + 32)], v89, v88);
  *v9 = v114;
  *(v9 + 1) = v85;
  v9[16] = 1;
  *(v9 + 24) = v21;
  v9[40] = 64;
  v90 = v116;
  *(v9 + 6) = v132;
  *(v9 + 7) = v90;
  *(v9 + 8) = v86;
  sub_1D70E5BF4();
  v91 = swift_allocObject();
  sub_1D70E5B2C(v9, v91 + *(*v91 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
  sub_1D66876CC(&v123);
  sub_1D70E5B94(v115, type metadata accessor for FormatFile);
  sub_1D70E5B94(v9, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);

  return v91;
}

uint64_t sub_1D70E5B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70E5B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D70E5BF4()
{
  if (!qword_1EC89A7C0)
  {
    type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
    v0 = sub_1D7263E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A7C0);
    }
  }
}

void sub_1D70E5C90()
{
  sub_1D5B66EA4(319, &qword_1EC89A7D8, &type metadata for FormatDerivedDataContextScope, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D725BD1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D70E5D64()
{
  result = qword_1EC89A7E0;
  if (!qword_1EC89A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A7E0);
  }

  return result;
}

unint64_t sub_1D70E5DBC()
{
  result = qword_1EC89A7E8;
  if (!qword_1EC89A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A7E8);
  }

  return result;
}

unint64_t sub_1D70E5E14()
{
  result = qword_1EC89A7F0;
  if (!qword_1EC89A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A7F0);
  }

  return result;
}

unint64_t sub_1D70E5E68()
{
  result = qword_1EC89A800;
  if (!qword_1EC89A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A800);
  }

  return result;
}

unint64_t sub_1D70E5EBC()
{
  result = qword_1EC89A808;
  if (!qword_1EC89A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A808);
  }

  return result;
}

unint64_t sub_1D70E5F10()
{
  result = qword_1EC89A810;
  if (!qword_1EC89A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A810);
  }

  return result;
}

void sub_1D70E5F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D70E5FCC()
{
  result = qword_1EC89A820;
  if (!qword_1EC89A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A820);
  }

  return result;
}

unint64_t sub_1D70E6020()
{
  result = qword_1EC89A828;
  if (!qword_1EC89A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A828);
  }

  return result;
}

uint64_t sub_1D70E6074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D70E60D0()
{
  result = qword_1EC89A830;
  if (!qword_1EC89A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A830);
  }

  return result;
}

unint64_t sub_1D70E6128()
{
  result = qword_1EC89A838;
  if (!qword_1EC89A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A838);
  }

  return result;
}

unint64_t sub_1D70E6180()
{
  result = qword_1EC89A840;
  if (!qword_1EC89A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A840);
  }

  return result;
}

uint64_t sub_1D70E61D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4464657669726564 && a2 == 0xEB00000000617461 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t sub_1D70E638C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for SharedItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedItem.SharedState(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedHeadline.State(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6761C6C();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v34 - v24;
  v34[1] = *v2;
  v26 = type metadata accessor for FeedHeadline(0);
  sub_1D5D20F80(a1 + *(v26 + 40), v17);
  sub_1D70E6B0C(&v17[*(v14 + 32)], v12, type metadata accessor for FeedItem.SharedState);
  v27 = *(v5 + 48);
  v28 = 1;
  if (v27(v12, 1, v4) != 1)
  {
    sub_1D70E6B0C(v12, v25, type metadata accessor for SharedItem);
    v28 = 0;
  }

  (*(v5 + 56))(v25, v28, 1, v4);
  sub_1D70E6B0C(v25, v21, sub_1D6761C6C);
  if (v27(v21, 1, v4) == 1)
  {
    sub_1D70E6B74(v21);
    v29 = type metadata accessor for FormatSharedItemData();
    return (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
  }

  else
  {
    sub_1D70E6B0C(v21, v8, type metadata accessor for SharedItem);
    v31 = v8;
    v32 = v35;
    sub_1D70E6B0C(v31, v35, type metadata accessor for SharedItem);
    v33 = type metadata accessor for FormatSharedItemData();
    swift_storeEnumTagMultiPayload();
    return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  }
}

uint64_t FormatHeadlineBinding.SharedItem.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

uint64_t FormatHeadlineBinding.SharedMenuItem.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D70E6844()
{
  result = qword_1EC89A848;
  if (!qword_1EC89A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A848);
  }

  return result;
}

unint64_t sub_1D70E6898(uint64_t a1)
{
  result = sub_1D70E68C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70E68C0()
{
  result = qword_1EC89A850;
  if (!qword_1EC89A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A850);
  }

  return result;
}

unint64_t sub_1D70E6958()
{
  result = qword_1EC89A858;
  if (!qword_1EC89A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A858);
  }

  return result;
}

unint64_t sub_1D70E69AC(uint64_t a1)
{
  result = sub_1D70E69D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70E69D4()
{
  result = qword_1EC89A860;
  if (!qword_1EC89A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A860);
  }

  return result;
}

uint64_t sub_1D70E6A68(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t sub_1D70E6B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70E6B74(uint64_t a1)
{
  sub_1D6761C6C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D70E6BD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5B858EC(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_1D5B858EC((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *v2 = v5;
  return result;
}

uint64_t FeedGroupEmitterSettings.description.getter()
{
  v1 = v0[24];
  v2 = v0[40];
  v3 = v0[41];
  if (v0[8])
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (v0[24])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  MEMORY[0x1DA6F9910](0x656D695474736166, 0xEC0000003D74756FLL);
  sub_1D7262ABC();
  v4 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1D5B858EC((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0;
  *(v7 + 5) = 0xE000000000000000;
  if ((v1 & 1) == 0)
  {
LABEL_7:
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x5464726163736964, 0xEF3D74756F656D69);
    sub_1D7262ABC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D5B858EC(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1D5B858EC((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0;
    *(v10 + 5) = 0xE000000000000000;
  }

LABEL_12:
  if ((v2 & 1) == 0)
  {
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73FD6F0);
    sub_1D7262ABC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D5B858EC(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1D5B858EC((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = 0;
    *(v13 + 5) = 0xE000000000000000;
  }

  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D5B858EC(0, *(v4 + 2) + 1, 1, v4);
    }

    v15 = *(v4 + 2);
    v14 = *(v4 + 3);
    if (v15 >= v14 >> 1)
    {
      v4 = sub_1D5B858EC((v14 > 1), v15 + 1, 1, v4);
    }

    *(v4 + 2) = v15 + 1;
    v16 = &v4[16 * v15];
    *(v16 + 4) = 0xD00000000000001CLL;
    *(v16 + 5) = 0x80000001D73FD6D0;
  }

  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v17 = sub_1D7261F3C();
  v19 = v18;

  MEMORY[0x1DA6F9910](v17, v19);

  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 123;
}

void __swiftcall FeedGroupEmitterSettings.init(fastTimeout:discardTimeout:onscreenDiscardTimeout:isDeferredUntilOnscreen:)(NewsFeed::FeedGroupEmitterSettings *__return_ptr retstr, Swift::Double_optional fastTimeout, Swift::Double_optional discardTimeout, Swift::Double_optional onscreenDiscardTimeout, Swift::Bool isDeferredUntilOnscreen)
{
  retstr->fastTimeout.value = *&fastTimeout.is_nil;
  retstr->fastTimeout.is_nil = discardTimeout.is_nil;
  *(&retstr->discardTimeout.value + 7) = *&onscreenDiscardTimeout.is_nil;
  BYTE6(retstr->onscreenDiscardTimeout.value) = isDeferredUntilOnscreen;
  *(&retstr[1].fastTimeout.value + 4) = v5;
  BYTE3(retstr[1].discardTimeout.value) = v6 & 1;
  BYTE4(retstr[1].discardTimeout.value) = v7;
}

uint64_t sub_1D70E7084(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *IssueCoverViewLayoutAttributesFactory.Options.init(sizeConstraint:shadowRadius:cornerRadius:uiRectCorner:borderWidth:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = *result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  *(a3 + 32) = a6;
  return result;
}

double IssueCoverViewLayoutAttributesFactory.makeLayoutAttributes(for:with:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v5 = *(a2 + 48);
  *v14 = *(a2 + 32);
  *&v14[16] = v5;
  v15 = *(a2 + 64);
  v6 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v6;
  v16.size.width = sub_1D70E7194(v11, v13);
  v16.size.height = v7;
  v16.origin = v13[0];
  v17 = CGRectIntegral(v16);
  v8 = *&v14[24];
  v9 = v15;
  *a3 = v17;
  result = *&v14[8];
  *(a3 + 32) = *&v14[8];
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  return result;
}

double sub_1D70E7194(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    result = 0.0;
    if (v2 <= 0.0)
    {
      return result;
    }
  }

  v5 = *(a2 + 16);
  if (!*(a2 + 32))
  {
    return *(a2 + 16);
  }

  if (*(a2 + 32) != 1)
  {
    v7 = *(a2 + 24);
    v8 = v5 / v7;
    if (v3 >= 2)
    {
      v2 = 0.75;
      if (v8 <= 0.75)
      {
        if (v8 >= 0.75)
        {
          return *(a2 + 16);
        }

        return *(a2 + 16);
      }
    }

    else if (v2 >= v8)
    {
      if (v8 >= v2)
      {
        return *(a2 + 16);
      }

      return *(a2 + 16);
    }

    return v7 * v2;
  }

  v6 = 0.75;
  if (v3 == 1)
  {
    v6 = *(a1 + 8);
  }

  if (!*(a1 + 56))
  {
    v6 = *(a1 + 8);
  }

  return v5 * v6;
}

double sub_1D70E7274@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v5 = *(a2 + 48);
  *v14 = *(a2 + 32);
  *&v14[16] = v5;
  v15 = *(a2 + 64);
  v6 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v6;
  v16.size.width = sub_1D70E7194(v11, v13);
  v16.size.height = v7;
  v16.origin = v13[0];
  v17 = CGRectIntegral(v16);
  v8 = *&v14[24];
  v9 = v15;
  *a3 = v17;
  result = *&v14[8];
  *(a3 + 32) = *&v14[8];
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  return result;
}

uint64_t IssueCoverViewLayoutAttributesFactory.createLayoutAttributes(model:options:cursor:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v22[0] = *a1;
  v22[1] = v4;
  v23[0] = a1[2];
  *(v23 + 9) = *(a1 + 41);
  sub_1D70E7448(v24);
  v28.size.width = sub_1D70E7194(v22, v24);
  v28.size.height = v5;
  *&v28.origin.x = v24[0];
  *&v28.origin.y = v24[1];
  v29 = CGRectIntegral(v28);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v10 = sub_1D725A16C();
  v10(x, y, width, height);
  if (v2)
  {
  }

  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;

  v20 = v26;
  v21 = v27;
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v25;
  *(a2 + 48) = v20;
  *(a2 + 56) = v21;
  return result;
}

uint64_t sub_1D70E7448@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1D725A17C();
  v9 = v8;
  v11 = v10;
  result = sub_1D725A14C();
  if (v3)
  {
    if (v3 == 1)
    {
      *a1 = v9;
      *(a1 + 8) = v11;
      *(a1 + 16) = v14;
      *(a1 + 24) = 0;
    }

    else
    {
      v15 = v13;
      result = sub_1D725A14C();
      *a1 = v9;
      *(a1 + 8) = v11;
      *(a1 + 16) = v15;
      *(a1 + 24) = v16;
    }
  }

  else
  {
    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  return result;
}

uint64_t IssueCoverViewLayoutAttributesFactory.SizeConstraint.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D70E7588()
{
  result = qword_1EC89A868;
  if (!qword_1EC89A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A868);
  }

  return result;
}

uint64_t sub_1D70E7634(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[40])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D70E7678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D70E76E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = a1 + *(v6 + 40);
  v8 = v7[*(type metadata accessor for FeedHeadline.State(0) + 32)];
  if (v5)
  {
    if (v8)
    {
      sub_1D725A7EC();
      v9 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1D725A7EC();
      v9 = &unk_1F50F4358;
    }

    v11 = sub_1D6E465F4();

    v12 = sub_1D5EEFCA0(v9, v11);
    v13 = a1[5];
    v14 = sub_1D61881BC(12);
    *a2 = v13;
    *(a2 + 66) = 1;
    *(a2 + 72) = v12;
    *(a2 + 80) = v13;
    *(a2 + 88) = v14 & 1;
    swift_unknownObjectRetain();
  }

  else
  {
    if (v8)
    {
      sub_1D725A7EC();
      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1D725A7EC();
      v10 = &unk_1F50F4358;
    }

    v15 = sub_1D6E465F4();

    v16 = sub_1D5EEFCA0(v10, v15);
    v17 = *(a1 + *(v6 + 56));
    v18 = a1[5];
    v20 = *a1;
    v19 = a1[1];
    swift_unknownObjectRetain();

    if (v17)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v17)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_1D61881BC(12);
    *a2 = v18;
    *(a2 + 8) = v21;
    *(a2 + 16) = v22;
    *(a2 + 24) = v20;
    *(a2 + 32) = v19;
    *(a2 + 66) = 2 * (v17 == 0);
    *(a2 + 72) = v16;
    *(a2 + 80) = v18;
    *(a2 + 88) = v23 & 1;
  }

  swift_unknownObjectRetain();
  type metadata accessor for FormatAction();
  return swift_storeEnumTagMultiPayload();
}

uint64_t FormatHeadlineBinding.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D70E7950()
{
  result = qword_1EC89A870;
  if (!qword_1EC89A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A870);
  }

  return result;
}

unint64_t sub_1D70E79A4(uint64_t a1)
{
  result = sub_1D70E79CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70E79CC()
{
  result = qword_1EC89A878;
  if (!qword_1EC89A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A878);
  }

  return result;
}

unint64_t sub_1D70E7A20(void *a1)
{
  a1[1] = sub_1D667D454();
  a1[2] = sub_1D670073C();
  result = sub_1D70E7950();
  a1[3] = result;
  return result;
}

uint64_t sub_1D70E7AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DBC8);
  result = sub_1D725AACC();
  if (!v32)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D200);
  result = sub_1D725AACC();
  if (!v30)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D820);
  result = sub_1D725AACC();
  if (v28)
  {
    v5 = objc_opt_self();
    v6 = [v5 mainScreen];
    [v6 nativeBounds];
    v8 = v7;
    v10 = v9;

    v11 = [v5 mainScreen];
    [v11 scale];
    v13 = v12;

    v33[0] = v8;
    v33[1] = v10;
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v13;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    MEMORY[0x1EEE9AC00](v14, v14);
    v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v17 + 16))(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x1EEE9AC00](v18, v18);
    v20 = &v27[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v21 + 16))(v20);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    MEMORY[0x1EEE9AC00](v22, v22);
    v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v25 + 16))(v24);
    v26 = sub_1D70E7F90(*v16, *v20, *v24, v33);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = type metadata accessor for LayeredMediaAssetHandlesProvider();
    a2[3] = result;
    a2[4] = &off_1F51CE770;
    *a2 = v26;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D70E7E9C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0);
  result = sub_1D725AACC();
  if (v2)
  {
    type metadata accessor for FormatLayoutViewFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D70E7F30@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for OfflineAlertControllerFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F5133300;
  *a1 = result;
  return result;
}

uint64_t sub_1D70E7F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LayeredMediaVariantFactory();
  v36[3] = v8;
  v36[4] = &off_1F5132ED8;
  v36[0] = a1;
  v9 = type metadata accessor for LayeredMediaImageVariantSelector();
  v34 = v9;
  v35 = &off_1F51A0330;
  v33[0] = a2;
  v10 = type metadata accessor for LayeredMediaVariantSelector();
  v31 = v10;
  v32 = &off_1F5143A50;
  v30[0] = a3;
  type metadata accessor for LayeredMediaAssetHandlesProvider();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v36, v8);
  MEMORY[0x1EEE9AC00](v12, v12);
  v14 = (&v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = (&v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x1EEE9AC00](v20, v20);
  v22 = (&v30[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *(a4 + 16);
  *(v11 + 136) = *a4;
  v25 = *v14;
  v26 = *v18;
  v27 = *v22;
  *(v11 + 40) = v8;
  *(v11 + 48) = &off_1F5132ED8;
  *(v11 + 16) = v25;
  *(v11 + 80) = v9;
  *(v11 + 88) = &off_1F51A0330;
  *(v11 + 96) = v27;
  *(v11 + 56) = v26;
  *(v11 + 120) = v10;
  *(v11 + 128) = &off_1F5143A50;
  *(v11 + 152) = v24;
  *(v11 + 168) = *(a4 + 32);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v11;
}

id SocialLayerSharedItemCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SharedItem.lastSharedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SharedItem.resourceUrlType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SharedItem();
  *a1 = *(v1 + *(result + 20));
  return result;
}

id SharedItem.highlight.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharedItem() + 24));

  return v1;
}

uint64_t _s8NewsFeed10SharedItemV3url10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharedItem() + 28);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D70E84A8@<X0>(char *a1@<X8>)
{
  sub_1D5B4D3E0();
  v36 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B765B4(0, &unk_1EDF02470, sub_1D5B4D3E0, MEMORY[0x1E69E6F90]);
  v14 = *(v4 + 72);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v35 = swift_allocObject();
  v16 = v35 + v15;
  sub_1D70EB310(v35 + v15);
  v17 = [v1 resourceURL];
  sub_1D72584EC();

  v33 = *(v10 + 56);
  v34 = v10 + 56;
  v33((v16 + v14), 0, 1, v9);
  sub_1D70EBC00(v16, v8, sub_1D5B4D3E0);
  v19 = *(v10 + 48);
  v10 += 48;
  v18 = v19;
  v20 = (v10 - 16);
  v32 = (v10 - 40);
  if (v19(v8, 1, v9) == 1)
  {
    v21 = v13;
    sub_1D5E3E404(v8);
  }

  else
  {
    v30 = *v20;
    v31 = a1;
    v30(v13, v8, v9);
    v22 = sub_1D725844C();
    v23 = [v22 fc_isNewsURL];

    if (v23)
    {
      v24 = v30;
      a1 = v31;
      goto LABEL_9;
    }

    v21 = v13;
    (*v32)(v13, v9);
    a1 = v31;
  }

  sub_1D70EBC00(v16 + v14, v8, sub_1D5B4D3E0);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1D5E3E404(v8);
LABEL_11:
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v27 = 1;
    return v33(a1, v27, 1, v9);
  }

  v24 = *v20;
  v13 = v21;
  (*v20)(v21, v8, v9);
  v25 = sub_1D725844C();
  v26 = [v25 fc_isNewsURL];

  if ((v26 & 1) == 0)
  {
    (*v32)(v13, v9);
    goto LABEL_11;
  }

LABEL_9:
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v24(a1, v13, v9);
  v27 = 0;
  return v33(a1, v27, 1, v9);
}

uint64_t SharedItem.hash(into:)()
{
  sub_1D725891C();
  sub_1D5B76508(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  v1 = type metadata accessor for SharedItem();
  MEMORY[0x1DA6FC0B0](*(v0 + *(v1 + 20)));
  sub_1D726371C();
  sub_1D72585BC();
  sub_1D5B76508(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  return sub_1D7261E8C();
}

uint64_t SharedItem.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D725891C();
  sub_1D5B76508(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  v1 = type metadata accessor for SharedItem();
  MEMORY[0x1DA6FC0B0](*(v0 + *(v1 + 20)));
  sub_1D726371C();
  sub_1D72585BC();
  sub_1D5B76508(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70E8ACC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D725891C();
  sub_1D5B76508(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  MEMORY[0x1DA6FC0B0](*(v1 + *(a1 + 20)));
  sub_1D726371C();
  sub_1D72585BC();
  sub_1D5B76508(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70E8BDC(uint64_t a1, uint64_t a2)
{
  sub_1D725891C();
  sub_1D5B76508(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  MEMORY[0x1DA6FC0B0](*(v2 + *(a2 + 20)));
  sub_1D726371C();
  sub_1D72585BC();
  sub_1D5B76508(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  return sub_1D7261E8C();
}

uint64_t sub_1D70E8CDC(uint64_t a1, uint64_t a2)
{
  sub_1D7264A0C();
  sub_1D725891C();
  sub_1D5B76508(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  MEMORY[0x1DA6FC0B0](*(v2 + *(a2 + 20)));
  sub_1D726371C();
  sub_1D72585BC();
  sub_1D5B76508(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

void sub_1D70E8E3C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  sub_1D725B77C();
  [v5 setDelegate_];
}

void SocialLayerSharedItemCenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D725B77C();
  [v6 setDelegate_];
  swift_unknownObjectRelease();
}

void (*SocialLayerSharedItemCenter.delegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D70E9010;
}

void sub_1D70E9010(uint64_t *a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = *(v3 + 40);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1D725B77C();
    v5 = *v3;
    [*v3 setDelegate_];
  }

  free(v3);
}

id SocialLayerSharedItemCenter.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  *&v0[OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x1E69E7CC0];
  sub_1D5B76508(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B765B4(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  sub_1D7263B6C();
  sub_1D5B76704(0, &qword_1EDF3BA78, &unk_1EDF1AA20, 0x1E69D3818, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_lazyHighlightCenter] = sub_1D725B7AC();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D70E9298@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69D3818]) init];
  *a1 = result;
  return result;
}

uint64_t SocialLayerSharedItemCenter.fetchItems()()
{
  v1[23] = v0;
  sub_1D5B4D3E0();
  v1[24] = swift_task_alloc();
  v2 = sub_1D72585BC();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v3 = sub_1D725891C();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  sub_1D5B765B4(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  v1[31] = swift_task_alloc();
  v4 = type metadata accessor for SharedItem();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D70E950C, 0, 0);
}

uint64_t sub_1D70E950C()
{
  *(v0 + 288) = CACurrentMediaTime();
  if (qword_1EDF1B9F0 != -1)
  {
    swift_once();
  }

  *(v0 + 296) = qword_1EDFFC810;
  sub_1D7262EDC();
  sub_1D725C30C();
  sub_1D725B77C();
  v1 = *(v0 + 168);
  *(v0 + 304) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1D70E96B0;
  v2 = swift_continuation_init();
  sub_1D70EB5CC();
  *(v0 + 136) = v3;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D70E9FE0;
  *(v0 + 104) = &block_descriptor_134;
  *(v0 + 112) = v2;
  [v1 fetchHighlights_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D70E96B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_1D70E9D84;
  }

  else
  {
    v2 = sub_1D70E97C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1D70E97C0()
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 160);

  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  v5 = (CACurrentMediaTime() - v2) * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v5 <= -1.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = MEMORY[0x1E69E6870];
  *(v4 + 56) = MEMORY[0x1E69E6810];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  v0 = v3 >> 62;
  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

LABEL_36:
  v7 = sub_1D7263BFC();
LABEL_6:
  v8 = MEMORY[0x1E69E65A8];
  *(v4 + 96) = MEMORY[0x1E69E6530];
  *(v4 + 104) = v8;
  *(v4 + 72) = v7;
  sub_1D7262EDC();
  sub_1D725C30C();

  if (v0)
  {
    v9 = sub_1D7263BFC();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_8:
      v10 = 0;
      v11 = *(v1 + 256);
      v12 = *(v1 + 232);
      v13 = *(v1 + 208);
      v50 = v3 & 0xC000000000000001;
      v49 = v3 & 0xFFFFFFFFFFFFFF8;
      v48 = (v13 + 48);
      v41 = (v13 + 32);
      v40 = (v13 + 16);
      v38 = *(v1 + 264);
      v39 = (v12 + 16);
      v37 = (v13 + 8);
      v46 = (v38 + 56);
      v47 = (v12 + 8);
      v51 = MEMORY[0x1E69E7CC0];
      v44 = v9;
      v45 = v3;
      while (1)
      {
        if (v50)
        {
          v14 = MEMORY[0x1DA6FB460](v10, v3);
        }

        else
        {
          if (v10 >= *(v49 + 16))
          {
            goto LABEL_32;
          }

          v14 = *(v3 + 8 * v10 + 32);
        }

        v4 = v14;
        v0 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v16 = *(v1 + 192);
        v15 = *(v1 + 200);
        v17 = [v14 timestamp];
        sub_1D72588BC();

        sub_1D70E84A8(v16);
        v52 = v10 + 1;
        if ((*v48)(v16, 1, v15) == 1)
        {
          v18 = *(v1 + 248);
          v0 = *(v1 + 256);
          v19 = v11;
          v20 = *(v1 + 192);
          (*v47)(*(v1 + 240), *(v1 + 224));

          v21 = v20;
          v11 = v19;
          sub_1D5E3E404(v21);
          (*v46)(v18, 1, 1, v0);
        }

        else
        {
          v22 = *(v1 + 272);
          v23 = *(v1 + 240);
          v25 = *(v1 + 216);
          v24 = *(v1 + 224);
          v26 = *(v1 + 200);
          (*v41)(v25, *(v1 + 192), v26);
          (*v40)(v22 + v11[7], v25, v26);
          *(v22 + v11[6]) = v4;
          (*v39)(v22, v23, v24);
          result = [v4 resourceURL];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v28 = result;
          v0 = *(v1 + 272);
          v29 = *(v1 + 248);
          v42 = *(v1 + 240);
          v43 = *(v1 + 256);
          v30 = *(v1 + 216);
          v31 = *(v1 + 224);
          v32 = *(v1 + 200);
          v33 = [result fc_isNewsURL];

          (*v37)(v30, v32);
          (*v47)(v42, v31);
          *(v0 + v11[5]) = v33;
          sub_1D5F2676C(v0, v29);
          (*v46)(v29, 0, 1, v43);
        }

        v4 = *(v1 + 248);
        v3 = v45;
        if ((*(v38 + 48))(v4, 1, *(v1 + 256)) == 1)
        {
          sub_1D70E6B74(v4);
        }

        else
        {
          sub_1D5F2676C(v4, *(v1 + 280));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1D6993F50(0, v51[2] + 1, 1, v51);
          }

          v0 = v51[2];
          v34 = v51[3];
          v4 = v0 + 1;
          if (v0 >= v34 >> 1)
          {
            v51 = sub_1D6993F50(v34 > 1, v0 + 1, 1, v51);
          }

          v35 = *(v1 + 280);
          v51[2] = v4;
          sub_1D5F2676C(v35, v51 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v0);
        }

        ++v10;
        if (v52 == v44)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v36 = *(v1 + 8);

  return v36(v51);
}

void sub_1D70E9D84()
{
  v1 = v0;
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  swift_willThrow();

  sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  v5 = (CACurrentMediaTime() - v3) * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = *(v0 + 312);
  v7 = MEMORY[0x1E69E6870];
  *(v4 + 56) = MEMORY[0x1E69E6810];
  *(v4 + 64) = v7;
  *(v0 + 144) = 0;
  *(v4 + 32) = v5;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 176) = v6;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v8 = *(v0 + 144);
  v9 = *(v1 + 152);
  *(v4 + 96) = MEMORY[0x1E69E6158];
  *(v4 + 104) = sub_1D5B7E2C0();
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  sub_1D725C30C();

  swift_willThrow();

  v10 = *(v1 + 8);

  v10();
}

uint64_t sub_1D70E9FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1D5B5A498(0, &qword_1EDF3C798);
    **(*(v4 + 64) + 40) = sub_1D726267C();

    return swift_continuation_throwingResume();
  }
}

void SocialLayerSharedItemCenter.report(feedback:for:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v18 = *a1;
  if (qword_1EDF1B9F0 != -1)
  {
    swift_once();
  }

  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = *(a2 + *(v4 + 24));
  v9 = [v8 identifier];
  v10 = sub_1D726207C();
  v12 = v11;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D5B7E2C0();
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  sub_1D7262EDC();
  sub_1D725C30C();

  sub_1D725B77C();
  v13 = aBlock[0];
  sub_1D70EBC00(a2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedItem);
  v14 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v15 = swift_allocObject();
  sub_1D5F2676C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_1D70EB7C0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D70EA688;
  aBlock[3] = &block_descriptor_4_1;
  v16 = _Block_copy(aBlock);

  [v13 feedbackForHighlight:v8 withType:v18 completionBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1D70EA3AC(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_1EDF1B9F0 != -1)
    {
      swift_once();
    }

    sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D7273AE0;
    v5 = [*(a3 + *(type metadata accessor for SharedItem() + 24)) identifier];
    v6 = sub_1D726207C();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1D5B7E2C0();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  else
  {
    if (qword_1EDF1B9F0 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7270C10;
    v12 = [*(a3 + *(type metadata accessor for SharedItem() + 24)) identifier];
    v13 = sub_1D726207C();
    v15 = v14;

    v16 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1D5B7E2C0();
    *(v11 + 64) = v17;
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    v18 = a2;
    sub_1D5BFB840(0, &qword_1EDF194B0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v19 = sub_1D72620FC();
    *(v11 + 96) = v16;
    *(v11 + 104) = v17;
    *(v11 + 72) = v19;
    *(v11 + 80) = v20;
    sub_1D725C30C();
  }
}

void sub_1D70EA688(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t SocialLayerSharedItemCenter.displayName.getter()
{
  sub_1D725B77C();
  v0 = [v3 displayName];

  v1 = sub_1D726207C();
  return v1;
}

id SocialLayerSharedItemCenter.highlightCenter(_:didRemove:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v68 = a1;
  ObjectType = swift_getObjectType();
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D72585BC();
  v9 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725891C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B765B4(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v55 = &v47 - v20;
  v69 = type metadata accessor for SharedItem();
  v56 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v66 = &v47 - v27;
  if (a2 >> 62)
  {
LABEL_28:
    v28 = sub_1D7263BFC();
  }

  else
  {
    v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v3;
  if (v28)
  {
    v54 = v23;
    v29 = 0;
    v64 = a2;
    v65 = a2 & 0xC000000000000001;
    v62 = (v9 + 48);
    v63 = a2 & 0xFFFFFFFFFFFFFF8;
    v53 = (v9 + 32);
    v52 = (v9 + 16);
    v51 = (v14 + 16);
    v50 = (v9 + 8);
    v60 = (v14 + 8);
    v58 = (v56 + 48);
    v59 = (v56 + 56);
    v3 = MEMORY[0x1E69E7CC0];
    v14 = v17;
    v17 = v55;
    v23 = v69;
    v61 = v28;
    while (1)
    {
      if (v65)
      {
        v30 = MEMORY[0x1DA6FB460](v29, v64, v26);
      }

      else
      {
        if (v29 >= *(v63 + 16))
        {
          goto LABEL_27;
        }

        v30 = *(v64 + 8 * v29 + 32);
      }

      v9 = v30;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v69 = v29 + 1;
      v31 = [v68 latestHighlightDate];
      sub_1D72588BC();

      sub_1D70E84A8(v8);
      a2 = v67;
      if ((*v62)(v8, 1, v67) == 1)
      {
        (*v60)(v14, v13);

        sub_1D5E3E404(v8);
        (*v59)(v17, 1, 1, v23);
      }

      else
      {
        v57 = v3;
        v32 = v8;
        (*v53)(v12, v8, a2);
        v33 = *(v23 + 7);
        v34 = v23;
        v35 = v54;
        (*v52)(&v54[v33], v12, a2);
        *(v35 + *(v34 + 6)) = v9;
        (*v51)(v35, v14, v13);
        result = [v9 resourceURL];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v37 = result;
        v38 = [result fc_isNewsURL];

        (*v50)(v12, a2);
        (*v60)(v14, v13);
        *(v35 + *(v34 + 5)) = v38;
        v9 = v55;
        sub_1D5F2676C(v35, v55);
        (*v59)(v9, 0, 1, v34);
        v8 = v32;
        v17 = v9;
        v23 = v34;
        v3 = v57;
      }

      if ((*v58)(v17, 1, v23) == 1)
      {
        sub_1D70E6B74(v17);
      }

      else
      {
        sub_1D5F2676C(v17, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D6993F50(0, v3[2] + 1, 1, v3);
        }

        a2 = v3[2];
        v39 = v3[3];
        v9 = (a2 + 1);
        if (a2 >= v39 >> 1)
        {
          v3 = sub_1D6993F50(v39 > 1, a2 + 1, 1, v3);
        }

        v3[2] = v9;
        sub_1D5F2676C(v66, v3 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * a2);
      }

      ++v29;
      if (v69 == v61)
      {
        goto LABEL_23;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v40 = v3;
  v41 = v49;
  v42 = v49 + OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v43 = *(v42 + 1);
  v44 = swift_getObjectType();
  v70[3] = ObjectType;
  v70[4] = &protocol witness table for SocialLayerSharedItemCenter;
  v70[0] = v41;
  v45 = *(v43 + 8);
  v46 = v41;
  v45(v70, v40, v44, v43);

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

id SocialLayerSharedItemCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D70EB094(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 + OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D725B77C();
  [v6 setDelegate_];
  swift_unknownObjectRelease();
}

void (*sub_1D70EB134(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = SocialLayerSharedItemCenter.delegate.modify(v2);
  return sub_1D5FE8C5C;
}

uint64_t sub_1D70EB1D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5BAF844;

  return SocialLayerSharedItemCenter.fetchItems()();
}

uint64_t sub_1D70EB28C()
{
  sub_1D725B77C();
  v0 = [v3 displayName];

  v1 = sub_1D726207C();
  return v1;
}

uint64_t sub_1D70EB310@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 supplementaryData];
  v4 = sub_1D72585BC();
  v5 = sub_1D7261D3C();

  if (*(v5 + 16) && (v6 = sub_1D5B69D90(0xD00000000000001FLL, 0x80000001D73FD9C0), (v7 & 1) != 0))
  {
    v12 = *(v4 - 8);
    (*(v12 + 16))(a1, *(v5 + 56) + *(v12 + 72) * v6, v4);

    v8 = v12;
    v9 = 0;
  }

  else
  {

    v8 = *(v4 - 8);
    v9 = 1;
  }

  v10 = *(v8 + 56);

  return v10(a1, v9, 1, v4);
}

uint64_t _s8NewsFeed10SharedItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D72588AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SharedItem();
  v5 = [*(a1 + *(v4 + 24)) identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = [*(a2 + *(v4 + 24)) identifier];
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

  return sub_1D72584CC();
}

void sub_1D70EB5CC()
{
  if (!qword_1EDF1ADA8)
  {
    sub_1D5B76704(255, &unk_1EDF1AED0, &qword_1EDF3C798, 0x1E69D3810, MEMORY[0x1E69E62F8]);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D72629BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1ADA8);
    }
  }
}

id _s8NewsFeed27SocialLayerSharedItemCenterC21createAttributionView3forAA05ShareiJ0_pAA0eF0V_tF_0(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69D37B8]) initWithHighlight_];
  v2 = SLAttributionView.hideContextMenuItem.getter();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    v6 = sub_1D726203C();

    [v3 setTitle_];
  }

  return v1;
}

uint64_t sub_1D70EB7C0(char a1, void *a2)
{
  v5 = *(type metadata accessor for SharedItem() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D70EA3AC(a1, a2, v6);
}

uint64_t block_copy_helper_2_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s8NewsFeed27SocialLayerSharedItemCenterC09highlightG16DidAddHighlightsyySo011SLHighlightG0CF_0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 1);
    v5 = swift_getObjectType();
    v8[3] = ObjectType;
    v8[4] = &protocol witness table for SocialLayerSharedItemCenter;
    v8[0] = v0;
    v6 = *(v4 + 16);
    v7 = v0;
    v6(v8, v5, v4);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

unint64_t sub_1D70EB920()
{
  result = qword_1EC89A8A0;
  if (!qword_1EC89A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A8A0);
  }

  return result;
}

unint64_t sub_1D70EB978()
{
  result = qword_1EC89A8A8;
  if (!qword_1EC89A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A8A8);
  }

  return result;
}

uint64_t dispatch thunk of SharedItemCenterType.fetchItems()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5E97EA8;

  return v7(a1, a2);
}

uint64_t sub_1D70EBC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70EBC78(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a1 & 1;
  }

  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  v5 = swift_allocError();
  v7 = v6;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  *v7 = 0xD000000000000010;
  v7[1] = 0x80000001D73FDA10;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return 2;
}

uint64_t sub_1D70EBD88(void *a1, uint64_t a2)
{
  v105 = a1;
  v106 = sub_1D726005C();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v3);
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v112 = &v83 - v7;
  v97 = sub_1D725FE9C();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v8);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v95 = &v83 - v12;
  v13 = sub_1D725FF1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v83 - v20;
  v22 = sub_1D726001C();
  v23 = *(v22 - 8);
  v113 = v22;
  v114 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v93 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v83 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v83 - v35;
  v101 = *a2;
  v37 = *(a2 + 8);
  v103 = *(a2 + 9);
  v38 = *(a2 + 16);
  v86 = *(a2 + 32);
  v83 = v38;
  v39 = *(a2 + 56);
  v85 = *(a2 + 48);
  v84 = v39;
  v100 = *(a2 + 64);
  v40 = *(a2 + 66);
  v41 = *(a2 + 80);
  v115 = *(a2 + 72);
  v102 = v41;
  v42 = *(a2 + 96);
  v99 = *(a2 + 88);
  v88 = v42;
  v87 = *(a2 + 104);
  v107 = *(a2 + 112);
  v43 = *(a2 + 128);
  v90 = *(a2 + 120);
  v89 = v43;
  v108 = *(a2 + 136);
  v44 = *(a2 + 137);
  v45 = *(a2 + 152);
  v92 = *(a2 + 144);
  v91 = v45;
  LODWORD(v45) = *(a2 + 161);
  v109 = *(a2 + 160);
  v110 = v45;
  result = sub_1D7261A3C();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v37 == 14)
  {
    v47 = 0;
  }

  else
  {
    v47 = v37;
  }

  sub_1D6AD28C8(v47);
  if (v40 <= 1)
  {
    v52 = MEMORY[0x1E69DC360];
    if (v40)
    {
      v52 = MEMORY[0x1E69DC350];
    }

    v50 = v113;
    v48 = v44;
    goto LABEL_14;
  }

  v48 = v44;
  if (v40 == 2)
  {
    v52 = MEMORY[0x1E69DC358];
    v50 = v113;
LABEL_14:
    v51 = v111;
    goto LABEL_15;
  }

  v49 = v40 == 3;
  v50 = v113;
  v51 = v111;
  if (!v49)
  {
    goto LABEL_16;
  }

  v52 = MEMORY[0x1E69DC348];
LABEL_15:
  (*(v14 + 104))(v17, *v52, v13);
  (*(v14 + 32))(v21, v17, v13);
  sub_1D725FF3C();
  (*(v14 + 8))(v21, v13);
  v53 = v114;
  (*(v114 + 8))(v36, v50);
  (*(v53 + 32))(v36, v32, v50);
LABEL_16:
  v54 = v114;
  if (v107 != 255 && sub_1D70EBC78(v88, v87, v107 & 1) != 2)
  {
    sub_1D725FE7C();
    (*(v54 + 8))(v36, v50);
    (*(v54 + 32))(v36, v51, v50);
  }

  if (v108 != 255 && sub_1D70EBC78(v90, v89, v108 & 1) != 2)
  {
    sub_1D725FEEC();
    (*(v54 + 8))(v36, v50);
    (*(v54 + 32))(v36, v51, v50);
  }

  if (v48 > 2)
  {
    if (v48 == 3)
    {
      v55 = MEMORY[0x1E69DC328];
    }

    else
    {
      if (v48 != 4)
      {
        goto LABEL_33;
      }

      v55 = MEMORY[0x1E69DC318];
    }
  }

  else
  {
    v55 = MEMORY[0x1E69DC320];
    v56 = MEMORY[0x1E69DC330];
    if (v48 != 1)
    {
      v56 = MEMORY[0x1E69DC338];
    }

    if (v48)
    {
      v55 = v56;
    }
  }

  v57 = v96;
  v58 = v94;
  v59 = v97;
  (*(v96 + 104))(v94, *v55, v97);
  v60 = v95;
  (*(v57 + 32))(v95, v58, v59);
  v61 = v93;
  sub_1D725FEBC();
  (*(v57 + 8))(v60, v59);
  (*(v54 + 8))(v36, v50);
  (*(v54 + 32))(v36, v61, v50);
LABEL_33:
  if (v109 != 255 && sub_1D70EBC78(v92, v91, v109 & 1) != 2)
  {
    sub_1D725FFBC();
    (*(v54 + 8))(v36, v50);
    (*(v54 + 32))(v36, v51, v50);
  }

  if (v110 != 2)
  {
    sub_1D725FFAC();
    (*(v54 + 8))(v36, v50);
    (*(v54 + 32))(v36, v51, v50);
  }

  v62 = v115 + 56;
  v63 = 1 << *(v115 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v115 + 56);
  v66 = (v63 + 63) >> 6;
  v67 = (v54 + 8);
  v68 = (v54 + 32);

  v69 = 0;
  while (v65)
  {
LABEL_48:
    v71 = *(*(v115 + 48) + (__clz(__rbit64(v65)) | (v69 << 6)));
    if (v71 > 3)
    {
      if (v71 > 5)
      {
        if (v71 == 6)
        {
          sub_1D725FEFC();
        }

        else
        {
          sub_1D725FF0C();
        }
      }

      else if (v71 == 4)
      {
        sub_1D725FE4C();
      }

      else
      {
        sub_1D725FEDC();
      }
    }

    else if (v71 > 1)
    {
      if (v71 == 2)
      {
        sub_1D725FE8C();
      }

      else
      {
        sub_1D725FE3C();
      }
    }

    else if (v71)
    {
      sub_1D725FECC();
    }

    else
    {
      sub_1D725FEAC();
    }

    v65 &= v65 - 1;
    (*v67)(v36, v50);
    result = (*v68)(v36, v51, v50);
  }

  while (1)
  {
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
      return result;
    }

    if (v70 >= v66)
    {
      break;
    }

    v65 = *(v62 + 8 * v70);
    ++v69;
    if (v65)
    {
      v69 = v70;
      goto LABEL_48;
    }
  }

  if (v99)
  {
    sub_1D6DFBB8C(v99);
  }

  v72 = v112;
  (*(v114 + 16))(v51, v36, v50);
  sub_1D726006C();
  if (v100 >> 11 <= 0x1E)
  {
    v116 = v83;
    v117 = v86;
    v118 = v85;
    v119 = v84;
    v120 = v100;
    sub_1D690B234();
    v74 = v105;
    v73 = v106;
    v75 = v104;

    v76 = v98;
    sub_1D726002C();
    v72 = v112;

    (*(v75 + 8))(v72, v73);
    (*(v75 + 32))(v72, v76, v73);
  }

  else
  {
    v74 = v105;
    v73 = v106;
    v75 = v104;
  }

  v77 = v101;
  if (v101)
  {
    sub_1D6DFBCA0(v101);
    v78 = v98;
    sub_1D726003C();
    (*(v75 + 8))(v72, v73);
    v77 = (*(v75 + 32))(v72, v78, v73);
  }

  if ((~v102 & 0xF000000000000007) != 0)
  {
    *&v116 = v102;
    v79 = FormatColor.color.getter(v77);
    v80 = v98;
    sub_1D726004C();

    (*(v75 + 8))(v72, v73);
    (*(v75 + 32))(v72, v80, v73);
  }

  if (v103 == 2)
  {
    [v74 setOverrideUserInterfaceStyle_];
  }

  else
  {
    if (v103)
    {
      v81 = 2;
    }

    else
    {
      v81 = 1;
    }

    [v74 setOverrideUserInterfaceStyle_];
  }

  *(&v117 + 1) = v73;
  v118 = MEMORY[0x1E69DC388];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v116);
  (*(v75 + 16))(boxed_opaque_existential_1, v72, v73);
  sub_1D72634CC();
  (*(v75 + 8))(v72, v73);
  return (*v67)(v36, v113);
}

uint64_t FormatLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725895C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v11, 0, sizeof(v11));
  v12 = 1;
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D725894C();
  v7 = sub_1D725893C();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v11[0] = v7;
  *(&v11[0] + 1) = v9;
  sub_1D5EB544C();
  swift_allocObject();
  a1[1] = sub_1D725996C();
  v11[0] = xmmword_1D7279980;
  sub_1D70ECCC4(0, &qword_1EDF3C150, &qword_1EDF43BE0, MEMORY[0x1E69E6158], sub_1D6C223A8);
  swift_allocObject();
  a1[2] = sub_1D725996C();
  v11[0] = 0uLL;
  swift_allocObject();
  a1[3] = sub_1D725996C();
  v11[0] = 0uLL;
  swift_allocObject();
  a1[4] = sub_1D725996C();
  sub_1D70ECD38();
  swift_allocObject();
  a1[5] = sub_1D7259F9C();
  sub_1D6047BF8();
  swift_allocObject();
  a1[6] = sub_1D7259F9C();
  LOBYTE(v11[0]) = 8;
  sub_1D70ECCC4(0, &qword_1EDF3C170, &qword_1EDF27760, &type metadata for FormatAccessibilityRole, sub_1D62E2D74);
  swift_allocObject();
  result = sub_1D725996C();
  a1[7] = result;
  return result;
}

void sub_1D70ECCC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1D5B49CBC(255, a3);
    a5();
    v7 = sub_1D725995C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D70ECD38()
{
  if (!qword_1EDF3BFD0)
  {
    sub_1D6FF9CE4();
    v0 = sub_1D7259FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BFD0);
    }
  }
}

uint64_t FormatLayout.fastDecode(decoder:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D725A0EC();
  if (!v1)
  {
    v8 = v7;
    v9 = v6;
    v10 = v5;
    v11 = v4;
    sub_1D725A11C();
    sub_1D725A0FC();
    sub_1D725A11C();
    sub_1D725A11C();
    v12 = sub_1D725A10C();
    v14 = sub_1D725A10C();
    sub_1D62E2C6C();
    sub_1D725A0FC();
    v13 = type metadata accessor for FormatLayoutAttributes();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = v10;
    *(result + 32) = v9;
    *(result + 40) = v8;
    *(result + 48) = v21;
    *(result + 56) = v22;
    *(result + 64) = v19;
    *(result + 72) = v20;
    *(result + 80) = v17;
    *(result + 88) = v18;
    *(result + 96) = v15;
    *(result + 104) = v16;
    *(result + 112) = v12;
    *(result + 120) = v14;
    *(result + 128) = v23;
    a1[3] = v13;
    *a1 = result;
  }

  return result;
}

void sub_1D70ED048(uint64_t a1@<X8>)
{
  sub_1D70EE804(0, &qword_1EC89A918, sub_1D70EE1DC, sub_1D5F7B9E4);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - v6;
  v8 = v1[1];
  v25 = *v1;
  v26 = v8;
  v27 = *(v1 + 4);
  v9 = sub_1D72611CC();
  v24 = 1;
  sub_1D70ED51C(&v25, &v38);
  v34 = v44;
  v35 = v45;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v28 = v38;
  v29 = v39;
  v37[5] = v43;
  v37[6] = v44;
  v37[7] = v45;
  v37[8] = v46;
  v37[1] = v39;
  v37[2] = v40;
  v37[3] = v41;
  v37[4] = v42;
  v36 = v46;
  v37[0] = v38;
  sub_1D70EE990(&v28, &v21, sub_1D70EE3B4);
  sub_1D70EEAD8(v37, sub_1D70EE3B4);
  *&v23[103] = v34;
  *&v23[87] = v33;
  *&v23[39] = v30;
  *&v23[23] = v29;
  *&v23[119] = v35;
  *&v23[135] = v36;
  *&v23[55] = v31;
  *&v23[71] = v32;
  *&v23[7] = v28;
  *&v22[97] = *&v23[96];
  *&v22[113] = *&v23[112];
  *&v22[129] = *&v23[128];
  *&v22[33] = *&v23[32];
  *&v22[49] = *&v23[48];
  *&v22[65] = *&v23[64];
  *&v22[81] = *&v23[80];
  *&v22[1] = *v23;
  v21 = v9;
  v22[0] = v24;
  *&v22[144] = *(&v36 + 1);
  *&v22[17] = *&v23[16];
  v10 = swift_allocObject();
  v11 = v26;
  *(v10 + 16) = v25;
  *(v10 + 32) = v11;
  *(v10 + 48) = v27;
  sub_1D70EE52C(&v25, &v38);
  sub_1D70EE320();
  sub_1D70EED44(&qword_1EC89A970, sub_1D70EE320);
  sub_1D726177C();

  v46 = *&v22[112];
  v47 = *&v22[128];
  v48 = *&v22[144];
  v42 = *&v22[48];
  v43 = *&v22[64];
  v44 = *&v22[80];
  v45 = *&v22[96];
  v38 = v21;
  v39 = *v22;
  v40 = *&v22[16];
  v41 = *&v22[32];
  sub_1D70EEAD8(&v38, sub_1D70EE320);
  sub_1D70EE804(0, &qword_1EC89A928, sub_1D70EE26C, sub_1D5F25A44);
  v7[*(v12 + 36)] = 0;
  LOBYTE(v9) = sub_1D72615EC();
  sub_1D70EE1DC();
  v14 = &v7[*(v13 + 36)];
  *v14 = v9;
  *(v14 + 8) = xmmword_1D72A38C0;
  *(v14 + 24) = xmmword_1D72A38C0;
  v14[40] = 0;
  v15 = &v7[*(v4 + 36)];
  *v15 = xmmword_1D7286690;
  *(v15 + 1) = xmmword_1D72866A0;
  v15[32] = 0;
  sub_1D7260EDC();
  sub_1D70EE564();
  sub_1D72617DC();
  sub_1D5DDE148(v7);
  v16 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  *&v22[16] = sub_1D6F34AFC;
  *&v22[24] = 0;
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 1107296256;
  *v22 = sub_1D6E0CD34;
  *&v22[8] = &block_descriptor_135;
  v17 = _Block_copy(&v21);
  [v16 initWithDynamicProvider_];
  _Block_release(v17);

  *&v21 = sub_1D726189C();
  v18 = sub_1D726199C();
  sub_1D70EE804(0, &qword_1EC89A990, sub_1D70EE878, sub_1D5F260A0);
  *(a1 + *(v19 + 36)) = v18;
}

uint64_t sub_1D70ED51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D68723A4(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_1D726125C();
  LOBYTE(v38[0]) = 1;
  sub_1D70ED960(a1, v45);
  *&v44[7] = v45[0];
  *&v44[23] = v45[1];
  *&v44[39] = v45[2];
  *&v44[55] = v45[3];
  v28 = LOBYTE(v38[0]);
  LOBYTE(v32) = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  sub_1D5E4A188(v38[0], v11);

  v12 = sub_1D72585BC();
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_1D70EEAD8(v11, sub_1D5B4D3E0);
  v14 = 0;
  v15 = 0;
  KeyPath = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v13 != 1)
  {
    v15 = sub_1D72618CC();
    v20 = sub_1D726163C();
    v14 = 1;
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v17 = sub_1D726167C();
    sub_1D70EEAD8(v7, sub_1D68723A4);
    KeyPath = swift_getKeyPath();
    v19 = sub_1D726188C();
    v18 = swift_getKeyPath();
  }

  v30[0] = v29;
  v30[1] = 0;
  v21 = v28;
  v31[0] = v28;
  *&v31[1] = *v44;
  *&v31[17] = *&v44[16];
  *&v31[33] = *&v44[32];
  *&v31[49] = *&v44[48];
  *&v31[64] = *&v44[63];
  v32 = v29;
  v33 = *v31;
  v37 = *&v44[63];
  v35 = *&v31[32];
  v36 = *&v31[48];
  v34 = *&v31[16];
  sub_1D70EE990(v30, v38, sub_1D5F258D0);
  sub_1D70EE9F8(0, v14, v15);
  sub_1D70EEA68(0, v14, v15);
  v22 = v35;
  v23 = v36;
  *(a2 + 32) = v34;
  *(a2 + 48) = v22;
  *(a2 + 64) = v23;
  v24 = v37;
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  *(a2 + 80) = v24;
  *(a2 + 88) = 0;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = v17;
  *(a2 + 128) = v18;
  *(a2 + 136) = v19;
  sub_1D70EEA68(0, v14, v15);
  v38[0] = v29;
  v38[1] = 0;
  v39 = v21;
  v41 = *&v44[16];
  v42 = *&v44[32];
  *v43 = *&v44[48];
  *&v43[15] = *&v44[63];
  v40 = *v44;
  return sub_1D70EEAD8(v38, sub_1D5F258D0);
}

uint64_t sub_1D70ED960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68723A4(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v74 = v7;
  v75 = a2;
  v73 = a1;
  v69 = v12;
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 0xE700000000000000;
      v14 = 0x676E6967617453;
    }

    else
    {
      v13 = 0xEA00000000006E6FLL;
      v14 = 0x69746375646F7250;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    v14 = 16721;
  }

  *&v80 = v14;
  *(&v80 + 1) = v13;
  v67 = sub_1D5BF4D9C();
  v15 = sub_1D726171C();
  v17 = v16;
  v19 = v18;
  v65 = sub_1D726163C();
  v20 = *(v65 - 8);
  v64 = *(v20 + 56);
  v66 = v20 + 56;
  v64(v11, 1, 1, v65);
  sub_1D726167C();
  v63 = sub_1D68723A4;
  sub_1D70EEAD8(v11, sub_1D68723A4);
  v21 = sub_1D72616DC();
  v23 = v22;
  v25 = v24;

  sub_1D5F26348(v15, v17, v19 & 1);

  sub_1D726187C();
  v26 = sub_1D72616BC();
  v70 = v27;
  v71 = v26;
  v68 = v28;
  v72 = v29;

  sub_1D5F26348(v21, v23, v25 & 1);

  v80 = *(v73 + 24);
  v30 = *(&v80 + 1);
  v31 = v80;
  if (!*(&v80 + 1))
  {
    v31 = 2960685;
    v30 = 0xE300000000000000;
  }

  v78 = v31;
  v79 = v30;
  sub_1D70EEB90(&v80, v77);
  v32 = sub_1D726171C();
  v34 = v33;
  v36 = v35;
  v64(v11, 1, 1, v65);
  sub_1D726167C();
  sub_1D70EEAD8(v11, v63);
  v37 = sub_1D72616DC();
  v39 = v38;
  v41 = v40;

  sub_1D5F26348(v32, v34, v36 & 1);

  v42 = sub_1D72616AC();
  v44 = v43;
  v46 = v45;
  v67 = v47;
  sub_1D5F26348(v37, v39, v41 & 1);

  v77[0] = v69;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v48 = v74;
  sub_1D5E4A188(v78, v74);

  v49 = sub_1D72585BC();
  LODWORD(v34) = (*(*(v49 - 8) + 48))(v48, 1, v49);
  sub_1D70EEAD8(v48, sub_1D5B4D3E0);
  if (v34 == 1)
  {
    sub_1D726188C();
  }

  else
  {
    sub_1D726184C();
  }

  v50 = sub_1D72616BC();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_1D5F26348(v42, v44, v46 & 1);

  v57 = v68 & 1;
  v76 = v68 & 1;
  LOBYTE(v78) = v68 & 1;
  v58 = v54 & 1;
  v77[0] = v54 & 1;
  v59 = v75;
  v61 = v70;
  v60 = v71;
  *v75 = v71;
  v59[1] = v61;
  *(v59 + 16) = v57;
  v59[3] = v72;
  v59[4] = v50;
  v59[5] = v52;
  *(v59 + 48) = v58;
  v59[7] = v56;
  sub_1D5F26358(v60, v61, v57);

  sub_1D5F26358(v50, v52, v58);

  sub_1D5F26348(v50, v52, v58);

  sub_1D5F26348(v60, v61, v76);
}

uint64_t sub_1D70EDEE0(uint64_t a1)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v17 - v8;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  sub_1D5E4A188(v17[2], v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D70EEAD8(v9, sub_1D5B4D3E0);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_getObjectType();
  v16 = qword_1EDF3AF88;
  swift_unknownObjectRetain();
  if (v16 != -1)
  {
    swift_once();
  }

  (*(v11 + 16))(v5, v14, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  sub_1D725D9CC();
  swift_unknownObjectRelease();
  sub_1D70EEAD8(v5, sub_1D5B4D3E0);
  return (*(v11 + 8))(v14, v10);
}

void sub_1D70EE1DC()
{
  if (!qword_1EC89A920)
  {
    sub_1D70EE804(255, &qword_1EC89A928, sub_1D70EE26C, sub_1D5F25A44);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A920);
    }
  }
}

void sub_1D70EE26C()
{
  if (!qword_1EC89A930)
  {
    sub_1D70EE320();
    sub_1D70EED44(&qword_1EC89A970, sub_1D70EE320);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC89A930);
    }
  }
}

void sub_1D70EE320()
{
  if (!qword_1EC89A938)
  {
    sub_1D70EE3B4(255);
    sub_1D70EED44(&qword_1EC89A968, sub_1D70EE3B4);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A938);
    }
  }
}

void sub_1D70EE3E8()
{
  if (!qword_1EC89A948)
  {
    sub_1D5F258D0();
    sub_1D70EE92C(255, &qword_1EC89A950, sub_1D70EE488, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89A948);
    }
  }
}

void sub_1D70EE4BC()
{
  if (!qword_1EC89A960)
  {
    sub_1D70888DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89A960);
    }
  }
}

unint64_t sub_1D70EE564()
{
  result = qword_1EC89A978;
  if (!qword_1EC89A978)
  {
    sub_1D70EE804(255, &qword_1EC89A918, sub_1D70EE1DC, sub_1D5F7B9E4);
    sub_1D70EE644();
    sub_1D70EED44(&qword_1EC8845E8, sub_1D5F7B9E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A978);
  }

  return result;
}

unint64_t sub_1D70EE644()
{
  result = qword_1EC89A980;
  if (!qword_1EC89A980)
  {
    sub_1D70EE1DC();
    sub_1D70EE6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A980);
  }

  return result;
}

unint64_t sub_1D70EE6C4()
{
  result = qword_1EC89A988;
  if (!qword_1EC89A988)
  {
    sub_1D70EE804(255, &qword_1EC89A928, sub_1D70EE26C, sub_1D5F25A44);
    sub_1D70EE320();
    sub_1D70EED44(&qword_1EC89A970, sub_1D70EE320);
    swift_getOpaqueTypeConformance2();
    sub_1D70EED44(&qword_1EC881138, sub_1D5F25A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A988);
  }

  return result;
}

void sub_1D70EE804(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1D70EE878()
{
  if (!qword_1EC89A998)
  {
    sub_1D70EE804(255, &qword_1EC89A918, sub_1D70EE1DC, sub_1D5F7B9E4);
    sub_1D70EE564();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC89A998);
    }
  }
}

void sub_1D70EE92C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D70EE990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70EE9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D70EEA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D70EEAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D70EEB38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D726110C();
  *a1 = result;
  return result;
}

uint64_t sub_1D70EEB90(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, &qword_1EC896638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D70EEC04()
{
  result = qword_1EC89A9A0;
  if (!qword_1EC89A9A0)
  {
    sub_1D70EE804(255, &qword_1EC89A990, sub_1D70EE878, sub_1D5F260A0);
    sub_1D70EE804(255, &qword_1EC89A918, sub_1D70EE1DC, sub_1D5F7B9E4);
    sub_1D70EE564();
    swift_getOpaqueTypeConformance2();
    sub_1D70EED44(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9A0);
  }

  return result;
}

uint64_t sub_1D70EED44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D70EED8C(uint64_t a1)
{
  v3 = type metadata accessor for FormatOption();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v31 - v9);
  sub_1D5C3C480();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v12 = v1[8];
  *(v11 + 32) = v1[7];
  *(v11 + 40) = v12;
  v13 = v1[4];
  if (v13)
  {
    if (v13 == 1)
    {

      v14 = v1[6];
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_14:
      sub_1D5D25108(v6);
      v31 = v6[2];

      v26 = sub_1D6BE7A38(a1);

      if (v26 == 2 || (v26 & 1) == 0)
      {
        sub_1D5D25B9C(v6);
        return v11;
      }

      v31 = 36;
      v32 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](*v6, v6[1]);
      MEMORY[0x1DA6F9910](0x7974706D4573692ELL, 0xE800000000000000);
      v27 = v31;
      v14 = v32;
      sub_1D5D25B9C(v6);
      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        v11 = sub_1D5B858EC((v28 > 1), v29 + 1, 1, v11);
      }

      *(v11 + 16) = v29 + 1;
      v18 = v11 + 16 * v29;
      *(v18 + 32) = v27;
      goto LABEL_19;
    }

    v25 = v1[3];

    sub_1D5D64C6C(v25, v13);
    v11 = sub_1D5B858EC(1, 2, 1, v11);
    *(v11 + 16) = 2;
    *(v11 + 48) = v25;
    *(v11 + 56) = v13;
    v14 = v1[6];
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = v1;
    sub_1D5D25108(v10);
    v31 = v10[2];

    v20 = sub_1D6BE77CC(a1);
    v22 = v21;

    if (v22)
    {
      v31 = 36;
      v32 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](*v10, v10[1]);
      MEMORY[0x1DA6F9910](61, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v20, v22);

      v23 = v31;
      v24 = v32;
      sub_1D5D25B9C(v10);
      v11 = sub_1D5B858EC(1, 2, 1, v11);
      *(v11 + 16) = 2;
      *(v11 + 48) = v23;
      *(v11 + 56) = v24;
    }

    else
    {
      sub_1D5D25B9C(v10);
    }

    v1 = v19;
    v14 = v19[6];
    if (!v14)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  if (v14 != 1)
  {
    v15 = v1[5];
    v16 = *(v11 + 16);
    v17 = *(v11 + 24);

    if (v16 >= v17 >> 1)
    {
      v11 = sub_1D5B858EC((v17 > 1), v16 + 1, 1, v11);
    }

    *(v11 + 16) = v16 + 1;
    v18 = v11 + 16 * v16;
    *(v18 + 32) = v15;
LABEL_19:
    *(v18 + 40) = v14;
  }

  return v11;
}

uint64_t sub_1D70EF0B4()
{
  v1 = 0x74704F656772656DLL;
  v2 = 0x537974706D457369;
  if (*v0 != 2)
  {
    v2 = 0x6553737473697865;
  }

  if (*v0)
  {
    v1 = 0x726F7463656C6573;
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

uint64_t sub_1D70EF150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70EFB18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70EF178(uint64_t a1)
{
  v2 = sub_1D70EF858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70EF1B4(uint64_t a1)
{
  v2 = sub_1D70EF858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70EF1F0(void *a1)
{
  v3 = v1;
  sub_1D70EF900(0, &qword_1EC89A9A8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70EF858();
  sub_1D7264B5C();
  *&v12 = *(v3 + 16);
  v13 = 0;
  sub_1D5D24660();
  sub_1D70EF964(&qword_1EC89A9B8, sub_1D5D24660);

  sub_1D726443C();
  if (v2)
  {
  }

  else
  {

    v12 = *(v3 + 24);
    v13 = 1;
    sub_1D70EF8AC();
    sub_1D72643BC();
    v12 = *(v3 + 40);
    v13 = 2;
    sub_1D72643BC();
    LOBYTE(v12) = 3;
    sub_1D72643FC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D70EF46C(void *a1)
{
  v3 = v1;
  sub_1D70EF900(0, &qword_1EC89A9C8, MEMORY[0x1E69E6F48]);
  v17 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70EF858();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v6;
    sub_1D5D24660();
    v19 = 0;
    sub_1D70EF964(&qword_1EC89A9D0, sub_1D5D24660);
    sub_1D726431C();
    *(v1 + 16) = v18;
    v19 = 1;
    sub_1D70EF9AC();
    sub_1D726427C();
    *(v1 + 24) = v18;
    v19 = 2;
    sub_1D726427C();
    *(v1 + 40) = v18;
    LOBYTE(v18) = 3;
    v11 = v17;
    v13 = sub_1D72642BC();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    *(v3 + 56) = v13;
    *(v3 + 64) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1D70EF7DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1D70EF46C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D70EF858()
{
  result = qword_1EC89A9B0;
  if (!qword_1EC89A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9B0);
  }

  return result;
}

unint64_t sub_1D70EF8AC()
{
  result = qword_1EC89A9C0;
  if (!qword_1EC89A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9C0);
  }

  return result;
}

void sub_1D70EF900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70EF858();
    v7 = a3(a1, &type metadata for FormatOptionElement.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D70EF964(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D70EF9AC()
{
  result = qword_1EC89A9D8;
  if (!qword_1EC89A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9D8);
  }

  return result;
}

unint64_t sub_1D70EFA14()
{
  result = qword_1EC89A9E0;
  if (!qword_1EC89A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9E0);
  }

  return result;
}

unint64_t sub_1D70EFA6C()
{
  result = qword_1EC89A9E8;
  if (!qword_1EC89A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9E8);
  }

  return result;
}

unint64_t sub_1D70EFAC4()
{
  result = qword_1EC89A9F0;
  if (!qword_1EC89A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9F0);
  }

  return result;
}

uint64_t sub_1D70EFB18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74704F656772656DLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x537974706D457369 && a2 == 0xEF726F7463656C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6553737473697865 && a2 == 0xEE00726F7463656CLL)
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

uint64_t sub_1D70EFCA4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = "notificationsState";
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = "notificationsState";
  }

  else
  {
    v6 = "familyStatusState";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ttachment";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v4 = "familyStatusState";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ttachment";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70EFD7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70EFE14()
{
  sub_1D72621EC();
}

uint64_t sub_1D70EFE98()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70EFF2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D70F039C();
  *a1 = result;
  return result;
}

void sub_1D70EFF5C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "notificationsState";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v3 = "familyStatusState";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000012;
    v4 = "ttachment";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t FormatUserBinding.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D70F00EC()
{
  result = qword_1EC89A9F8;
  if (!qword_1EC89A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A9F8);
  }

  return result;
}

unint64_t sub_1D70F0140(uint64_t a1)
{
  result = sub_1D70F0168();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70F0168()
{
  result = qword_1EC89AA00;
  if (!qword_1EC89AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA00);
  }

  return result;
}

unint64_t sub_1D70F01BC(void *a1)
{
  a1[1] = sub_1D668069C();
  a1[2] = sub_1D66FFD94();
  result = sub_1D70F00EC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70F0248()
{
  result = qword_1EC89AA08;
  if (!qword_1EC89AA08)
  {
    sub_1D70F02A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA08);
  }

  return result;
}

void sub_1D70F02A0()
{
  if (!qword_1EC89AA10)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89AA10);
    }
  }
}

unint64_t sub_1D70F02F4()
{
  result = qword_1EC89AA18;
  if (!qword_1EC89AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA18);
  }

  return result;
}

unint64_t sub_1D70F0348()
{
  result = qword_1EC89AA20;
  if (!qword_1EC89AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA20);
  }

  return result;
}

uint64_t sub_1D70F039C()
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

uint64_t FormatLineCap.rawValue.getter()
{
  v1 = 0x646E756F72;
  if (*v0 != 1)
  {
    v1 = 0x657261757173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953789282;
  }
}

NewsFeed::FormatLineCap_optional __swiftcall FormatLineCap.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D70F0490(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x646E756F72;
  if (v2 != 1)
  {
    v4 = 0x657261757173;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1953789282;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x646E756F72;
  if (*a2 != 1)
  {
    v8 = 0x657261757173;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953789282;
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

unint64_t sub_1D70F0580()
{
  result = qword_1EC89AA28;
  if (!qword_1EC89AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA28);
  }

  return result;
}

uint64_t sub_1D70F05D4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70F0668()
{
  sub_1D72621EC();
}

uint64_t sub_1D70F06E8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70F0784(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x646E756F72;
  if (v2 != 1)
  {
    v5 = 0x657261757173;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953789282;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D70F07D4(uint64_t a1)
{
  *(a1 + 8) = sub_1D70F0804();
  result = sub_1D70F0858();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D70F0804()
{
  result = qword_1EC89AA30;
  if (!qword_1EC89AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA30);
  }

  return result;
}

unint64_t sub_1D70F0858()
{
  result = qword_1EDF11D88;
  if (!qword_1EDF11D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11D88);
  }

  return result;
}

unint64_t sub_1D70F08AC(uint64_t a1)
{
  result = sub_1D70F08D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70F08D4()
{
  result = qword_1EC89AA38;
  if (!qword_1EC89AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA38);
  }

  return result;
}

unint64_t sub_1D70F0928(void *a1)
{
  a1[1] = sub_1D666B130();
  a1[2] = sub_1D666B294();
  result = sub_1D70F0580();
  a1[3] = result;
  return result;
}

NewsFeed::FamilyMember __swiftcall FamilyMember.init(isOrganizer:numberOfMembers:)(Swift::Bool isOrganizer, Swift::Int numberOfMembers)
{
  *v2 = isOrganizer;
  *(v2 + 8) = numberOfMembers;
  result.numberOfMembers = numberOfMembers;
  result.isOrganizer = isOrganizer;
  return result;
}

uint64_t sub_1D70F0A30()
{
  if (*v0)
  {
    return 0x664F7265626D756ELL;
  }

  else
  {
    return 0x696E6167724F7369;
  }
}

uint64_t sub_1D70F0A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696E6167724F7369 && a2 == 0xEB0000000072657ALL;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF737265626D654DLL)
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

uint64_t sub_1D70F0B68(uint64_t a1)
{
  v2 = sub_1D70F0D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70F0BA4(uint64_t a1)
{
  v2 = sub_1D70F0D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilyMember.encode(to:)(void *a1)
{
  sub_1D70F0F6C(0, &qword_1EC89AA40, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F0D5C();
  sub_1D7264B5C();
  v13 = 0;
  sub_1D726440C();
  if (!v2)
  {
    v12 = 1;
    sub_1D726442C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D70F0D5C()
{
  result = qword_1EC89AA48;
  if (!qword_1EC89AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA48);
  }

  return result;
}

uint64_t FamilyMember.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D70F0F6C(0, &qword_1EC89AA50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F0D5C();
  sub_1D7264B0C();
  if (!v2)
  {
    v16 = 0;
    v14 = sub_1D72642CC() & 1;
    v15 = 1;
    v12 = sub_1D72642FC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D70F0F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70F0D5C();
    v7 = a3(a1, &type metadata for FamilyMember.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FamilyMember(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FamilyMember(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D70F10E4()
{
  result = qword_1EC89AA58;
  if (!qword_1EC89AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA58);
  }

  return result;
}

unint64_t sub_1D70F113C()
{
  result = qword_1EC89AA60;
  if (!qword_1EC89AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA60);
  }

  return result;
}

unint64_t sub_1D70F1194()
{
  result = qword_1EC89AA68;
  if (!qword_1EC89AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA68);
  }

  return result;
}

NewsFeed::FormatVideoEndAction_optional __swiftcall FormatVideoEndAction.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D70F1244(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6573756170;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65636E61766461;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6573756170;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65636E61766461;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1D70F1330()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70F13C8()
{
  sub_1D72621EC();
}

uint64_t sub_1D70F144C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70F14EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6573756170;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636E61766461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatVideoEndAction.description.getter()
{
  v1 = 0x6573756170;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E61766461;
  }
}

unint64_t sub_1D70F160C()
{
  result = qword_1EC89AA70;
  if (!qword_1EC89AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA70);
  }

  return result;
}

unint64_t sub_1D70F1660(uint64_t a1)
{
  *(a1 + 8) = sub_1D70F1690();
  result = sub_1D70F16E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D70F1690()
{
  result = qword_1EC89AA78;
  if (!qword_1EC89AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA78);
  }

  return result;
}

unint64_t sub_1D70F16E4()
{
  result = qword_1EC89AA80;
  if (!qword_1EC89AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA80);
  }

  return result;
}

unint64_t sub_1D70F1738(uint64_t a1)
{
  result = sub_1D70F1760();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70F1760()
{
  result = qword_1EC89AA88;
  if (!qword_1EC89AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA88);
  }

  return result;
}

unint64_t sub_1D70F17B4(void *a1)
{
  a1[1] = sub_1D666B784();
  a1[2] = sub_1D666B990();
  result = sub_1D70F160C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D70F17EC()
{
  v1 = 0x6573756170;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E61766461;
  }
}

uint64_t sub_1D70F1868(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2;
  if (*(*a2 + 16))
  {
    v5 = result;
    v6 = a2[1];
    v7 = *(a2 + 2);
    sub_1D5C0C678(v3 + 32, &v16);
    v8 = v16;
    v9 = v17;

    sub_1D5C074F4(&v16);

    sub_1D5C07390(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a3 + 8);
    *(a3 + 8) = 0x8000000000000000;
    sub_1D5C0BAC4(v3, v6, v8, v9, isUniquelyReferenced_nonNull_native, v7);

    *(a3 + 8) = v14;
    if (*(v3 + 16))
    {
      sub_1D5C0C678(v3 + 32, &v16);
      v11 = v16;
      v12 = v17;

      sub_1D5C074F4(&v16);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      sub_1D5C0C734(v5, v11, v12, v13);

      *(a3 + 16) = v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D70F19BC(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  sub_1D5C384A0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v12 = type metadata accessor for FormatVideoPlayerData();
  v13 = sub_1D72583DC();
  v15 = v14;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D5B7E2C0();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_1D7262EDC();
  sub_1D725C30C();

  v16 = *(a2 + 24);
  v17 = &a3[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_identifier];
  *v17 = *(a2 + 16);
  *(v17 + 1) = v16;

  result = [a3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v19 = result;
  swift_beginAccess();
  sub_1D726344C();

  result = [a3 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = result;
  [result setUserInteractionEnabled_];

  result = [a3 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = *(a2 + 144);
  if (v22)
  {
    v23 = *(v22 + 200);
  }

  else
  {
    v23 = 0;
  }

  [result setAccessibilityIgnoresInvertColors_];

  result = [a3 view];
  if (!result)
  {
    goto LABEL_30;
  }

  v24 = result;
  v25 = *(a2 + 128);
  v26 = *(a2 + 136);
  [result setIsAccessibilityElement_];
  [v24 setAccessibilityElementsHidden_];
  if (v26 <= 0xFD)
  {
    if ((v26 & 0x80) == 0)
    {
      v27 = &selRef_setIsAccessibilityElement_;
LABEL_15:
      [v24 *v27];
      goto LABEL_16;
    }

    if (v25 | v26 & 0x7F)
    {
      v27 = &selRef_setAccessibilityElementsHidden_;
      goto LABEL_15;
    }
  }

LABEL_16:
  v47 = v22;

  v28 = a4[*(v12 + 44)];
  a3[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_isLiveIconHidden] = v28 ^ 1;
  v29 = *&a3[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame];
  v30 = *&v29[qword_1EDF1BA08];
  sub_1D726345C();

  v48 = v12;
  v49 = a4;
  v31 = &a4[*(v12 + 48)];
  v32 = *v31 == 0xC000000000000000;
  [*&v29[qword_1EDF1BA38] setHidden_];
  [*&v29[qword_1EDF1BA40] setHidden_];
  __swift_project_boxed_opaque_existential_1((v50 + 16), *(v50 + 40));
  v33 = *&v29[qword_1EDF1BA38];
  v56 = *v31;
  v34 = *(a2 + 184);

  v35 = v33;
  v36 = sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  sub_1D68B5E88(a1, v35, &v56, v34, v36, a5, a6, a7, a8);

  if (v31[32] == 1 && (v28 & 1) == 0 && *(v31 + 6))
  {
    v37 = qword_1EDF1BA30;
    [*&v29[qword_1EDF1BA30] setHidden_];
    v38 = *&v29[v37];
    v39 = *&v38[OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label];
    v40 = v38;
    v41 = sub_1D726203C();
    [v39 setText_];
  }

  else
  {
    [*&v29[qword_1EDF1BA30] setHidden_];
  }

  result = [a3 view];
  if (!result)
  {
    goto LABEL_31;
  }

  v42 = result;
  if (v47 && (~*(v47 + 192) & 0xF000000000000007) != 0)
  {
    v56 = *(v47 + 192);
    v43 = FormatColor.color.getter(result);
  }

  else
  {
    v43 = 0;
  }

  sub_1D726346C();

  v44 = sub_1D6BCDAA4(v49, a3);
  sub_1D6AF0A8C();

  __swift_project_boxed_opaque_existential_1((v50 + 16), *(v50 + 40));
  v56 = *&v49[*(v48 + 40)];
  v45 = *(a2 + 168);

  v46 = sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  sub_1D68B5E88(a1, v29, &v56, v45, v46, a5, a6, a7, a8);

  return [v29 setNeedsLayout];
}

void sub_1D70F1F40(uint64_t a1, void *a2)
{
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  sub_1D5C384A0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  type metadata accessor for FormatVideoPlayerData();
  v5 = sub_1D72583DC();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1D7262EDC();
  sub_1D725C30C();

  v8 = sub_1D6BCDAA4(a2, a1);
  sub_1D6AF0A8C();
}

uint64_t sub_1D70F2094()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D70F20D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73FDB40 == a2)
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

uint64_t sub_1D70F21B0(uint64_t a1)
{
  v2 = sub_1D70F23EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70F21EC(uint64_t a1)
{
  v2 = sub_1D70F23EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EngagementBannerViewLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D70F2650(0, &qword_1EC89AA90, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = v3[2];
  v14 = v3[3];
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F23EC();
  sub_1D7264B5C();
  v12 = v3[1];
  v17 = *v3;
  v18 = v12;
  v16 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEAAD4(&qword_1EC8801E8);
  sub_1D726443C();
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v16 = 1;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D70F23EC()
{
  result = qword_1EC89AA98;
  if (!qword_1EC89AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AA98);
  }

  return result;
}

uint64_t EngagementBannerViewLayoutAttributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D70F2650(0, &qword_1EC89AAA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F23EC();
  sub_1D7264B0C();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v18 = 0;
    sub_1D5BEAAD4(&qword_1EDF1A740);
    sub_1D726431C();
    v14 = v17;
    v15 = v16;
    v18 = 1;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v12 = v14;
    *a2 = v15;
    a2[1] = v12;
    v13 = v17;
    a2[2] = v16;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D70F2650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70F23EC();
    v7 = a3(a1, &type metadata for EngagementBannerViewLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70F26C4()
{
  result = qword_1EDF06F38;
  if (!qword_1EDF06F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F38);
  }

  return result;
}

uint64_t sub_1D70F2748()
{
  sub_1D6A55750();

  return sub_1D725A24C();
}

unint64_t sub_1D70F27E8()
{
  result = qword_1EC89AAA8;
  if (!qword_1EC89AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAA8);
  }

  return result;
}

unint64_t sub_1D70F2840()
{
  result = qword_1EC89AAB0;
  if (!qword_1EC89AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAB0);
  }

  return result;
}

unint64_t sub_1D70F2898()
{
  result = qword_1EC89AAB8;
  if (!qword_1EC89AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAB8);
  }

  return result;
}

uint64_t FormatMicaSectionDecorationItem.init(asset:mediaTiming:ordering:pinTrait:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for FormatMicaSectionDecorationItem();
  sub_1D688DA08(a2, &a5[v9[5]]);
  v10 = v9[6];
  v11 = sub_1D725F3DC();
  (*(*(v11 - 8) + 32))(&a5[v10], a3, v11);
  v12 = v9[7];
  v13 = sub_1D725F15C();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a5[v12], a4, v13);
}

uint64_t static FormatMicaSectionDecorationItem.viewClass.getter()
{
  if (qword_1EDF1F980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1EDF1F978;
}

uint64_t static FormatMicaSectionDecorationItem.viewClass.setter(uint64_t a1)
{
  if (qword_1EDF1F980 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_1EDF1F978 = a1;
  return result;
}

uint64_t (*static FormatMicaSectionDecorationItem.viewClass.modify())()
{
  if (qword_1EDF1F980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D70F2B4C@<X0>(void *a1@<X8>)
{
  if (qword_1EDF1F980 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = qword_1EDF1F978;
  return result;
}

uint64_t sub_1D70F2BC8(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDF1F980 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_1EDF1F978 = v1;
  return result;
}

uint64_t FormatMicaSectionDecorationItem.ordering.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatMicaSectionDecorationItem() + 24);
  v4 = sub_1D725F3DC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatMicaSectionDecorationItem.pinTrait.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatMicaSectionDecorationItem() + 28);
  v4 = sub_1D725F15C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D70F2D38()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if (*v0 < 0)
  {
    v11 = v7 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 24);
    v18 = *(v11 + 16);
    v19 = sub_1D70F2D38(v4);
    v20 = v13;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v18 = v12;
    v15 = sub_1D70F2D38(v14);
    MEMORY[0x1DA6F9910](v15);

    return v19;
  }

  else
  {
    v8 = *(v7 + 16);
    v9 = [v8 remoteURL];
    sub_1D72584EC();

    v10 = sub_1D72583DC();
    (*(v2 + 8))(v6, v1);
  }

  return v10;
}

uint64_t sub_1D70F2EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D70F3168();

  return MEMORY[0x1EEE47EC8](a1, a2, v6, a3);
}

uint64_t sub_1D70F2EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D725F3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D70F2F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1D725F15C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static FormatMicaSectionDecorationItem.== infix(_:_:)()
{
  v0 = sub_1D70F2D38();
  v2 = v1;
  if (v0 == sub_1D70F2D38() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D70F3084()
{
  v0 = sub_1D70F2D38();
  v2 = v1;
  if (v0 == sub_1D70F2D38() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D70F3168()
{
  result = qword_1EC89AAC0;
  if (!qword_1EC89AAC0)
  {
    type metadata accessor for FormatMicaSectionDecorationItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAC0);
  }

  return result;
}

uint64_t FormatContentSubgroupSection.Resolved.init(identifier:contents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FormatContentSubgroupSection.Resolved.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D70F3204(uint64_t a1)
{
  v2 = sub_1D70F3458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70F3240(uint64_t a1)
{
  v2 = sub_1D70F3458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupSection.Resolved.encode(to:)(void *a1)
{
  sub_1D70F3754(0, &qword_1EC89AAC8, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - v7;
  v14[0] = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D70F3458();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_1D70F34AC();
    sub_1D70F37B8(&qword_1EDF04FB8, sub_1D6B679A8);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D70F3458()
{
  result = qword_1EC89AAD0;
  if (!qword_1EC89AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAD0);
  }

  return result;
}

void sub_1D70F34AC()
{
  if (!qword_1EDF1B2A0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B2A0);
    }
  }
}

uint64_t FormatContentSubgroupSection.Resolved.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D70F3754(0, &qword_1EC89AAD8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F3458();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  sub_1D70F34AC();
  v18 = 1;
  sub_1D70F37B8(&qword_1EDF04FB0, sub_1D5CB5FA8);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D70F3754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70F3458();
    v7 = a3(a1, &_s8ResolvedV10CodingKeysON_5, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D70F37B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D70F34AC();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70F3878()
{
  result = qword_1EC89AAE0;
  if (!qword_1EC89AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAE0);
  }

  return result;
}

unint64_t sub_1D70F38D0()
{
  result = qword_1EC89AAE8;
  if (!qword_1EC89AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAE8);
  }

  return result;
}

unint64_t sub_1D70F3928()
{
  result = qword_1EC89AAF0;
  if (!qword_1EC89AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AAF0);
  }

  return result;
}

uint64_t sub_1D70F39E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatVideoPlayerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70F3A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for FormatVideoPlayerViewController()) init];
  v7 = &v6[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_reuseIdentifier];
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 1) = a2;

  *a3 = v6;
}

uint64_t _s8NewsFeed18FormatURLComponentO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v38 = a1[4];
  *v39 = v3;
  *&v39[10] = *(a1 + 90);
  v4 = a1[1];
  v34 = *a1;
  v35 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v36 = a1[2];
  v37 = v5;
  v8 = a2[1];
  v40 = *a2;
  v41 = v8;
  *&v45[10] = *(a2 + 90);
  v9 = a2[3];
  v10 = a2[5];
  v44 = a2[4];
  *v45 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v42 = a2[2];
  v43 = v11;
  v46[0] = v7;
  v46[1] = v6;
  *(v47 + 10) = *(a1 + 90);
  v14 = a1[5];
  v46[4] = v38;
  v47[0] = v14;
  v46[2] = v36;
  v46[3] = v2;
  v47[2] = v12;
  v47[3] = v13;
  *(v48 + 10) = *(a2 + 90);
  v15 = a2[5];
  v47[6] = v44;
  v48[0] = v15;
  v47[4] = v42;
  v47[5] = v9;
  v16 = (*&v39[24] >> 12) & 3;
  v17 = *&v45[24] & 0x3000;
  if (v16)
  {
    if (v16 == 1)
    {
      if (v17 != 4096)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (v17 == 0x2000)
    {
LABEL_8:
      v31[0] = v34;
      v31[1] = v35;
      v31[2] = v36;
      v31[3] = v37;
      v31[4] = v38;
      v31[5] = *v39;
      v32 = *&v39[16];
      v33 = *&v39[24] & 0xCFFF;
      v23 = v40;
      v24 = v41;
      v25 = v42;
      v26 = v43;
      v27 = v44;
      v28 = *v45;
      v29 = *&v45[16];
      v30 = *&v45[24] & 0xCFFF;
      sub_1D60B2AC8(&v40, v21);
      sub_1D60B2AC8(&v34, v21);
      sub_1D60B2AC8(&v34, v21);
      sub_1D60B2AC8(&v40, v21);
      ParameterV2eeoiySbAC_ACtFZ_0 = _s8NewsFeed32FormatURLComponentQueryParameterV2eeoiySbAC_ACtFZ_0(v31, &v23);
      goto LABEL_9;
    }

LABEL_10:
    sub_1D60B2AC8(&v34, v31);
    sub_1D60B2AC8(&v40, v31);
    sub_1D70F3F68(v46);
    v19 = 0;
    return v19 & 1;
  }

  if ((*&v45[24] & 0x3000) != 0)
  {
    goto LABEL_10;
  }

  v23 = v34;
  v24 = v35;
  v25 = v36;
  LOWORD(v26) = v37;
  v21[0] = v40;
  v21[1] = v41;
  v21[2] = v42;
  v22 = v43;
  sub_1D60B2AC8(&v40, v31);
  sub_1D60B2AC8(&v34, v31);
  sub_1D60B2AC8(&v34, v31);
  sub_1D60B2AC8(&v40, v31);
  ParameterV2eeoiySbAC_ACtFZ_0 = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v23, v21);
LABEL_9:
  v19 = ParameterV2eeoiySbAC_ACtFZ_0;
  sub_1D70F3F68(v46);
  sub_1D60B2A74(&v40);
  sub_1D60B2A74(&v34);
  return v19 & 1;
}