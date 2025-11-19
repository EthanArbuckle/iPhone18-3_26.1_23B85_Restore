uint64_t sub_1DD6F33A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 7);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6F3430(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      v3 = 0x49746E657665;
      goto LABEL_4;
    case 2:
      result = 0x6576457972657571;
      break;
    case 3:
      result = 0x6552746E65696C63;
      break;
    case 4:
      v3 = 0x616F6C796170;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 5:
      result = 0x6553746E65696C63;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD6F3588()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 1;
}

uint64_t SessionReverseClient.__deallocating_deinit()
{
  SessionReverseClient.deinit();
  sub_1DD6E2848();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SessionReverseClient.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DD6F35F0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1DD875B20();
  sub_1DD875B50();
  sub_1DD875B40();
  if (v3)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

__n128 sub_1DD6F366C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD6F3680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DD6F3810@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_1DD785184(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_1DD6F3868(unint64_t *a1)
{

  return sub_1DD83C2BC(a1);
}

uint64_t sub_1DD6F388C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_10:
    sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
    return 2;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_10;
  }

  sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  [v3 BOOLForKey_];

  sub_1DD710A9C(qword_1ECD0E860, &unk_1DD87A860);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 2;
  }
}

uint64_t LocaleSettings.userLocale.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 20);
  v4 = sub_1DD874890();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t LocaleSettings.responseLocale.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 24);
  v4 = sub_1DD874890();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t LocaleSettings.deviceLocale.getter()
{
  sub_1DD6E0A5C();
  v0 = sub_1DD874890();
  sub_1DD6DE1C4(v0);
  v2 = *(v1 + 16);
  v3 = sub_1DD6DDEFC();

  return v4(v3);
}

uint64_t Collection.indexed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1DD6DDEAC(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(a2 + 8);
  v21[0] = AssociatedTypeWitness;
  v21[1] = a1;
  v21[2] = v14;
  v21[3] = v15;
  v16 = *(*(sub_1DD875700() - 8) + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v21 - v18;
  sub_1DD875490();
  sub_1DD875A60();
  (*(v8 + 8))(v13, AssociatedTypeWitness);
  return IndexedElements.init(inner:)(v19, a2, a3);
}

uint64_t sub_1DD6F3D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(a2 + 8);
  v10 = sub_1DD6E53B0();
  v11 = a3(v10);
  sub_1DD6DF448(v11);
  return (*(v12 + 32))(a4, a1);
}

uint64_t IndexedElements.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v6 = *(sub_1DD6ED6C0() + 8);
  v7 = *(v4 + 8);
  sub_1DD6E0B90();
  v8 = sub_1DD875700();
  sub_1DD6DDEAC(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-v14];
  sub_1DD6E0B90();
  v16 = *(*(sub_1DD8756F0() - 8) + 64);
  sub_1DD6DDED0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v22[-v19];
  (*(v10 + 16))(v15, v2, v8, v18);
  sub_1DD8756D0();
  return IndexedElements.Iterator.init(inner:)(v20, v4, a2);
}

uint64_t sub_1DD6F3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IndexedElements.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t IndexedElements.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_1DD6E2250();
  v5 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1DD8755C0();
  sub_1DD6DDEAC(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = sub_1DD6E2250();
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v30 = v16;
  v31 = v2;
  v32 = v17;
  v33 = v5;
  sub_1DD8756F0();
  sub_1DD8756E0();
  if (sub_1DD6E5ED0(v15, 1, TupleTypeMetadata2) == 1)
  {
    (*(v10 + 8))(v15, v8);
    v18 = swift_getTupleTypeMetadata2();
    v19 = v29;
    v20 = 1;
  }

  else
  {
    v21 = *(TupleTypeMetadata2 + 48);
    v22 = v28;
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    v25 = v29;
    (*(*(v22 - 8) + 32))(v29, v15, v22);
    (*(*(AssociatedTypeWitness - 8) + 32))(v25 + v24, &v15[v21], AssociatedTypeWitness);
    v19 = v25;
    v20 = 0;
    v18 = v23;
  }

  return sub_1DD6E5E68(v19, v20, 1, v18);
}

unint64_t sub_1DD6F436C()
{
  result = qword_1EE015820;
  if (!qword_1EE015820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015820);
  }

  return result;
}

uint64_t sub_1DD6F43C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_1DD6F4404()
{
  v2 = *(v0 + 40);

  return sub_1DD875B20();
}

uint64_t sub_1DD6F4468@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 288);
  v5 = *(v1 - 280);

  return sub_1DD6FE2E0(v3, v4);
}

void sub_1DD6F448C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1DD6F4524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1DD843248(v16 - 240, va);
}

void sub_1DD6F4550()
{
  v2 = (*(v0 + 24) + 48);

  os_unfair_lock_lock(v2);
}

void sub_1DD6F45C8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  sub_1DD6F9ED8();
  sub_1DD6E0EC8();
  v5 = sub_1DD875580();
  (a4)[2](a4, v5, 0);

  _Block_release(a4);
}

void SessionServerMessage.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v51 = sub_1DD874790();
  v3 = sub_1DD6DDEAC(v51);
  v49 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  v50 = v7;
  v8 = sub_1DD6E9A9C();
  v52 = type metadata accessor for MessagePayload(v8);
  v9 = sub_1DD6DE1C4(v52);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDEE8();
  v12 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD700BA4();
  v16 = sub_1DD874820();
  v17 = sub_1DD6DDEAC(v16);
  v56 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE21C();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v53 = sub_1DD710A9C(&qword_1ECD10BE0, &qword_1DD889100);
  sub_1DD6DDEAC(v53);
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DE340();
  v54 = type metadata accessor for SessionServerMessage(0);
  v28 = sub_1DD6DE1C4(v54);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DDEE8();
  v55 = v31;
  sub_1DD6DEAD0();
  sub_1DD6F3014();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v32);
    sub_1DD8267F0();
    sub_1DD8758D0();
    v33 = *(v56 + 32);
    v34 = sub_1DD6DEA04();
    v48 = v35;
    (v35)(v34);
    sub_1DD6DEC54();
    sub_1DD8267F0();
    sub_1DD8758D0();
    v48(v55 + v54[5], v23, v16);
    sub_1DD6E0FF8();
    sub_1DD8267F0();
    sub_1DD875860();
    v36 = v54[6];
    sub_1DD6E3A64();
    sub_1DD6E6174();
    v37 = sub_1DD875870();
    v38 = (v55 + v54[7]);
    *v38 = v37;
    v38[1] = v39;
    sub_1DD82636C();
    sub_1DD6E3758();
    sub_1DD6E1E84(v40);
    sub_1DD6E9938();
    sub_1DD8758D0();
    v41 = v54[8];
    sub_1DD6E27BC();
    sub_1DD6E59B8();
    sub_1DD8267FC();
    v42 = sub_1DD875870();
    v43 = (v55 + v54[9]);
    *v43 = v42;
    v43[1] = v44;
    sub_1DD827548();
    sub_1DD826214();
    sub_1DD6E1E84(v45);
    sub_1DD8758D0();
    v46 = sub_1DD826CB0();
    v47(v46);
    (*(v49 + 32))(v55 + v54[10], v50, v51);
    sub_1DD8275A4();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v2);
    sub_1DD6E5ABC();
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v764 = v20;
  v25 = v24;
  sub_1DD8264F0(v26);
  v27 = sub_1DD710A9C(&qword_1ECD11F10, &qword_1DD889A90);
  sub_1DD6DF3FC(v27, &v741);
  v708 = v28;
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD8247DC(v32, v612);
  v33 = sub_1DD710A9C(&qword_1ECD11F18, &qword_1DD889A98);
  sub_1DD6DF3FC(v33, &v739);
  v706 = v34;
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD824FB0(v38);
  v39 = sub_1DD710A9C(&qword_1ECD11F20, &qword_1DD889AA0);
  sub_1DD6DF3FC(v39, &v737);
  v704 = v40;
  v42 = *(v41 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD825498(v44, v613);
  v45 = sub_1DD710A9C(&qword_1ECD11F28, &qword_1DD889AA8);
  sub_1DD6DF3FC(v45, &v735);
  v761 = v46;
  v48 = *(v47 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v50);
  v51 = sub_1DD710A9C(&qword_1ECD11F30, &qword_1DD889AB0);
  sub_1DD6DF3FC(v51, &v734);
  v701 = v52;
  v54 = *(v53 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD705DF0(v56, v614);
  v57 = sub_1DD710A9C(&qword_1ECD11F38, &qword_1DD889AB8);
  sub_1DD6DF3FC(v57, &v732);
  v699 = v58;
  v60 = *(v59 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v62);
  v63 = sub_1DD710A9C(&qword_1ECD11F40, &qword_1DD889AC0);
  sub_1DD6DF3FC(v63, &v730);
  v697 = v64;
  v66 = *(v65 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD824AFC(v68, v615);
  v69 = sub_1DD710A9C(&qword_1ECD11F48, &qword_1DD889AC8);
  sub_1DD6DF3FC(v69, &v728);
  v695 = v70;
  v72 = *(v71 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD825454(v74, v616);
  v75 = sub_1DD710A9C(&qword_1ECD11F50, &qword_1DD889AD0);
  sub_1DD6DF3FC(v75, &v726);
  v693 = v76;
  v78 = *(v77 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v80);
  v81 = sub_1DD710A9C(&qword_1ECD11F58, &qword_1DD889AD8);
  sub_1DD6DF3FC(v81, &v724);
  v691 = v82;
  v84 = *(v83 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v86);
  v87 = sub_1DD710A9C(&qword_1ECD11F60, &qword_1DD889AE0);
  sub_1DD6DF3FC(v87, &v722);
  v689 = v88;
  v90 = *(v89 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1DD82543C(v92, v617);
  v93 = sub_1DD710A9C(&qword_1ECD11F68, &qword_1DD889AE8);
  sub_1DD6DF3FC(v93, &v720);
  v687 = v94;
  v96 = *(v95 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v97);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v98);
  v99 = sub_1DD710A9C(&qword_1ECD11F70, &qword_1DD889AF0);
  sub_1DD6DF3FC(v99, &v718);
  v685 = v100;
  v102 = *(v101 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v104);
  v105 = sub_1DD710A9C(&qword_1ECD11F78, &qword_1DD889AF8);
  sub_1DD6DF3FC(v105, &v716);
  v683 = v106;
  v108 = *(v107 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v109);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v110);
  v111 = sub_1DD710A9C(&qword_1ECD11F80, &qword_1DD889B00);
  sub_1DD6DF3FC(v111, &v714);
  v681 = v112;
  v114 = *(v113 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v115);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v116);
  v117 = sub_1DD710A9C(&qword_1ECD11F88, &qword_1DD889B08);
  sub_1DD6DF3FC(v117, &v712);
  v679 = v118;
  v120 = *(v119 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v121);
  sub_1DD8253F8(v122, v618);
  v123 = sub_1DD710A9C(&qword_1ECD11F90, &qword_1DD889B10);
  sub_1DD6DF3FC(v123, &v710);
  v677 = v124;
  v126 = *(v125 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v127);
  sub_1DD82538C(v128);
  v129 = sub_1DD710A9C(&qword_1ECD11F98, &qword_1DD889B18);
  sub_1DD6DF3FC(v129, &v708);
  v675 = v130;
  v132 = *(v131 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v133);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v134);
  v135 = sub_1DD710A9C(&qword_1ECD11FA0, &qword_1DD889B20);
  sub_1DD6DF3FC(v135, &v706);
  v673 = v136;
  v138 = *(v137 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v139);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v140);
  v141 = sub_1DD710A9C(&qword_1ECD11FA8, &qword_1DD889B28);
  sub_1DD6DF3FC(v141, &v704);
  v671 = v142;
  v144 = *(v143 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v145);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v146);
  v147 = sub_1DD710A9C(&qword_1ECD11FB0, &qword_1DD889B30);
  sub_1DD6DF3FC(v147, &v702);
  v669 = v148;
  v150 = *(v149 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v151);
  sub_1DD8253E0(v152, v619);
  v153 = sub_1DD710A9C(&qword_1ECD11FB8, &qword_1DD889B38);
  sub_1DD6DF3FC(v153, &v700);
  v667 = v154;
  v156 = *(v155 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v157);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v158);
  v159 = sub_1DD710A9C(&qword_1ECD11FC0, &qword_1DD889B40);
  sub_1DD6DF3FC(v159, &v698);
  v665 = v160;
  v162 = *(v161 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v163);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v164);
  v165 = sub_1DD710A9C(&qword_1ECD11FC8, &qword_1DD889B48);
  sub_1DD6DF3FC(v165, &v696);
  v663 = v166;
  v168 = *(v167 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v169);
  sub_1DD8253A0(v170);
  v171 = sub_1DD710A9C(&qword_1ECD11FD0, &qword_1DD889B50);
  sub_1DD6DF3FC(v171, &v694);
  v661 = v172;
  v174 = *(v173 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v175);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v176);
  v177 = sub_1DD710A9C(&qword_1ECD11FD8, &qword_1DD889B58);
  sub_1DD6DF3FC(v177, &v692);
  v659 = v178;
  v180 = *(v179 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v181);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v182);
  v183 = sub_1DD710A9C(&qword_1ECD11FE0, &qword_1DD889B60);
  sub_1DD6DF3FC(v183, &v690);
  v657 = v184;
  v186 = *(v185 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v187);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v188);
  v189 = sub_1DD710A9C(&qword_1ECD11FE8, &qword_1DD889B68);
  sub_1DD6DF3FC(v189, &v688);
  v655 = v190;
  v192 = *(v191 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v193);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v194);
  v195 = sub_1DD710A9C(&qword_1ECD11FF0, &qword_1DD889B70);
  sub_1DD6DF3FC(v195, &v686);
  v651 = v196;
  v198 = *(v197 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v199);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v200);
  v201 = sub_1DD710A9C(&qword_1ECD11FF8, &qword_1DD889B78);
  sub_1DD6DF3FC(v201, &v685);
  v652 = v202;
  v204 = *(v203 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v205);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v206);
  v207 = sub_1DD710A9C(&qword_1ECD12000, &qword_1DD889B80);
  sub_1DD6DF3FC(v207, &v682);
  v649 = v208;
  v210 = *(v209 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v211);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v212);
  v213 = sub_1DD710A9C(&qword_1ECD12008, &qword_1DD889B88);
  sub_1DD6DF3FC(v213, &v680);
  v647 = v214;
  v216 = *(v215 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v217);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v218);
  v219 = sub_1DD710A9C(&qword_1ECD12010, &qword_1DD889B90);
  sub_1DD6DF3FC(v219, &v678);
  v645 = v220;
  v222 = *(v221 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v223);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v224);
  v225 = sub_1DD710A9C(&qword_1ECD12018, &qword_1DD889B98);
  sub_1DD6DF3FC(v225, &v676);
  v643 = v226;
  v228 = *(v227 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v229);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v230);
  v231 = sub_1DD710A9C(&qword_1ECD12020, &qword_1DD889BA0);
  sub_1DD6DF3FC(v231, &v674);
  v641 = v232;
  v234 = *(v233 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v235);
  sub_1DD8253C8(v236, v620);
  v237 = sub_1DD710A9C(&qword_1ECD12028, &qword_1DD889BA8);
  sub_1DD6DF3FC(v237, &v672);
  v639 = v238;
  v240 = *(v239 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v241);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v242);
  v243 = sub_1DD710A9C(&qword_1ECD12030, &qword_1DD889BB0);
  sub_1DD6DF3FC(v243, &v670);
  v637 = v244;
  v246 = *(v245 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v247);
  sub_1DD8254B0(v248, v621);
  v249 = sub_1DD710A9C(&qword_1ECD12038, &qword_1DD889BB8);
  sub_1DD6DF3FC(v249, &v668);
  v635 = v250;
  v252 = *(v251 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v253);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v254);
  v255 = sub_1DD710A9C(&qword_1ECD12040, &qword_1DD889BC0);
  sub_1DD6DF3FC(v255, &v666);
  v756 = v256;
  v258 = *(v257 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v259);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v260);
  v261 = sub_1DD710A9C(&qword_1ECD12048, &qword_1DD889BC8);
  sub_1DD6DF3FC(v261, &v665);
  v633[8] = v262;
  v264 = *(v263 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v265);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v266);
  v267 = sub_1DD710A9C(&qword_1ECD12050, &qword_1DD889BD0);
  sub_1DD6DF3FC(v267, &v663);
  v633[6] = v268;
  v270 = *(v269 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v271);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v272);
  v273 = sub_1DD710A9C(&qword_1ECD12058, &qword_1DD889BD8);
  sub_1DD6DF3FC(v273, &v661);
  v633[4] = v274;
  v276 = *(v275 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v277);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v278);
  v279 = sub_1DD710A9C(&qword_1ECD12060, &qword_1DD889BE0);
  sub_1DD6DF3FC(v279, &v659);
  v633[2] = v280;
  v282 = *(v281 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v283);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v284);
  v285 = sub_1DD710A9C(&qword_1ECD12068, &qword_1DD889BE8);
  sub_1DD6DF3FC(v285, &v657);
  v633[0] = v286;
  v288 = *(v287 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v289);
  sub_1DD82546C(v290, v622);
  v291 = sub_1DD710A9C(&qword_1ECD12070, &qword_1DD889BF0);
  sub_1DD6DF3FC(v291, &v655);
  v632[7] = v292;
  v294 = *(v293 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v295);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v296);
  v762 = sub_1DD710A9C(&qword_1ECD12078, &qword_1DD889BF8);
  sub_1DD6DDEAC(v762);
  v758 = v297;
  v299 = *(v298 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v300);
  sub_1DD6E0C6C();
  a10 = v301;
  v302 = sub_1DD6E9A9C();
  v757 = type metadata accessor for MessagePayload(v302);
  v303 = sub_1DD6DE1C4(v757);
  v305 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v303);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v306);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v307);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v308);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v309);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v310);
  sub_1DD6F1780();
  v759 = v311;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v312);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v313);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v314);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v315);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v316);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v317);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v318);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v319);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v320);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v321);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v322);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v323);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v324);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v325);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v326);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v327);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v328);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v329);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v330);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v331);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v332);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v333);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v334);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v335);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v336);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v337);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v338);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v339);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v340);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v341);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v342);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v343);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v344);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v345);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v346);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v347);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v348);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v349);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v350);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v351);
  sub_1DD6DFF40();
  v352 = v25[3];
  v353 = v25[4];
  v763 = v25;
  sub_1DD824CF8(v25);
  sub_1DD6FAA1C();
  v354 = v764;
  sub_1DD875B90();
  if (v354)
  {
    goto LABEL_9;
  }

  v355 = v761;
  v764 = v21;
  v356 = sub_1DD875900();
  sub_1DD6ED750(v356, 0);
  sub_1DD826B7C();
  if (v357)
  {
    goto LABEL_8;
  }

  sub_1DD6E6120();
  sub_1DD6E42A8();
  if (v364 == v365)
  {
    __break(1u);
    JUMPOUT(0x1DD6F8B40);
  }

  v623 = *(v363 + v362);
  v366 = sub_1DD6F43D8(v358, v359, v360, v361, v362);
  sub_1DD6ED830(v366);
  v368 = v367;
  v370 = v369;
  swift_unknownObjectRelease();
  v371 = v756;
  if (v368 != v370 >> 1)
  {
LABEL_8:
    v374 = v757;
    sub_1DD875740();
    sub_1DD6E41BC();
    v376 = v375;
    v377 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v376 = v374;
    v378 = v762;
    sub_1DD875810();
    sub_1DD6DF12C();
    v379 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v381 = *(v380 + 104);
    v382 = sub_1DD6FEB10();
    v383(v382);
    swift_willThrow();
    swift_unknownObjectRelease();
    v384 = sub_1DD824A04();
    v385(v384, v378);
LABEL_9:
    v386 = v763;
    goto LABEL_10;
  }

  v372 = v755;
  switch(v623)
  {
    case 1:
      v765.n128_u8[0] = 1;
      sub_1DD8028FC();
      sub_1DD824848();
      sub_1DD875800();
      type metadata accessor for MessagePayload.Request(0);
      sub_1DD825F98();
      sub_1DD6E1E84(v397);
      sub_1DD6F4500(v632);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v505 = sub_1DD6DF174(&v656);
      v506(v505);
      v507 = sub_1DD6F4510();
      v508(v507);
      sub_1DD6F0564();
      goto LABEL_57;
    case 2:
      v765.n128_u8[0] = 2;
      sub_1DD6F9C40();
      sub_1DD8269BC(&v743);
      sub_1DD824848();
      sub_1DD875800();
      sub_1DD6F9AC4();
      sub_1DD6FF7A8();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v486 = sub_1DD6FFA00(&v658);
      v487(v486, v633[3]);
      v488 = sub_1DD824B24();
      v489(v488);
      sub_1DD6E67F8();
      goto LABEL_56;
    case 3:
      v765.n128_u8[0] = 3;
      sub_1DD802854();
      sub_1DD6EFF94(&v744);
      sub_1DD824848();
      sub_1DD875800();
      sub_1DD802FE0();
      sub_1DD824DF8();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v494 = sub_1DD6E5DE8(&v660);
      v495(v494, v633[5]);
      v496 = sub_1DD6F4510();
      v497(v496);
      sub_1DD6E67F8();
      goto LABEL_56;
    case 4:
      v765.n128_u8[0] = 4;
      sub_1DD8027AC();
      sub_1DD6ED1D4(&v745);
      sub_1DD802F8C();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v461 = sub_1DD6DF174(&v662);
      v462(v461);
      v463 = sub_1DD824B24();
      v464(v463);
      sub_1DD6E67F8();
      goto LABEL_56;
    case 5:
      v765.n128_u8[0] = 5;
      sub_1DD802758();
      sub_1DD6ED1D4(&v746);
      type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(0);
      sub_1DD825EF0();
      sub_1DD6E1E84(v400);
      sub_1DD6F4500(&v635);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v532 = sub_1DD6DF174(&v664);
      v533(v532);
      v534 = sub_1DD6F4510();
      v535(v534);
      sub_1DD6F0564();
      goto LABEL_57;
    case 6:
      v765.n128_u8[0] = 6;
      sub_1DD8026B0();
      sub_1DD6F9BEC(&v747);
      sub_1DD8250E8();
      sub_1DD875800();
      sub_1DD802F38();
      sub_1DD6E710C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v544 = *(v371 + 8);
      v545 = sub_1DD6E0F98();
      v546(v545);
      v547 = sub_1DD825864();
      v548(v547, v762);
      v549 = v765.n128_u8[8];
      v550 = v766.n128_u64[0];
      *v624 = v765.n128_u64[0];
      *(v624 + 8) = v549;
      *(v624 + 16) = v550;
      sub_1DD6E67F8();
      goto LABEL_56;
    case 7:
      v765.n128_u8[0] = 7;
      sub_1DD802608();
      sub_1DD6ED1D4(&v748);
      sub_1DD802EE4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v498 = sub_1DD6DF174(&v667);
      v499(v498);
      v500 = sub_1DD824B24();
      v501(v500);
      v502 = v765.n128_u64[1];
      v503 = v766.n128_u8[0];
      v504 = v766.n128_u64[1];
      *v625 = v765.n128_u64[0];
      *(v625 + 8) = v502;
      *(v625 + 16) = v503;
      *(v625 + 24) = v504;
      sub_1DD6E67F8();
      goto LABEL_56;
    case 8:
      v765.n128_u8[0] = 8;
      sub_1DD802560();
      sub_1DD6ED1D4(&v749);
      sub_1DD802E90();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v559 = sub_1DD6DF174(&v669);
      v560(v559);
      v561 = sub_1DD824B24();
      v562(v561);
      v563 = v766.n128_u64[0];
      v564 = v766.n128_u8[8];
      *v626 = v765;
      *(v626 + 16) = v563;
      *(v626 + 24) = v564;
      *(v626 + 32) = v767;
      sub_1DD6E67F8();
      goto LABEL_56;
    case 9:
      v765.n128_u8[0] = 9;
      sub_1DD8024B8();
      sub_1DD6ED1D4(&v750);
      sub_1DD802E3C();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v473 = sub_1DD6DF174(&v671);
      v474(v473);
      v475 = sub_1DD824B24();
      v476(v475);
      v477 = v765.n128_u8[8];
      v627->n128_u64[0] = v765.n128_u64[0];
      v627->n128_u8[8] = v477;
      v627[1] = v766;
      sub_1DD6E67F8();
      goto LABEL_56;
    case 10:
      v765.n128_u8[0] = 10;
      sub_1DD802410();
      sub_1DD6ED1D4(&v751);
      sub_1DD802DE8();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v555 = sub_1DD6DF174(&v673);
      v556(v555);
      v557 = sub_1DD824B24();
      v558(v557);
      sub_1DD6FF5C0(v765.n128_i64[0]);
      goto LABEL_56;
    case 11:
      v765.n128_u8[0] = 11;
      sub_1DD802368();
      sub_1DD6ED1D4(&v752);
      sub_1DD802D94();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v457 = sub_1DD6DF174(&v675);
      v458(v457);
      v459 = sub_1DD824B24();
      v460(v459);
      sub_1DD6E5CE4(v765.n128_i64[0]);
      goto LABEL_56;
    case 12:
      v765.n128_u8[0] = 12;
      sub_1DD8022C0();
      sub_1DD6ED1D4(&v753);
      sub_1DD802D40();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v469 = sub_1DD6DF174(&v677);
      v470(v469);
      v471 = sub_1DD824B24();
      v472(v471);
      sub_1DD6E5CE4(v765.n128_i64[0]);
      goto LABEL_56;
    case 13:
      v765.n128_u8[0] = 13;
      sub_1DD802218();
      sub_1DD6ED1D4(&v754);
      sub_1DD802CEC();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v540 = sub_1DD6DF174(&v679);
      v541(v540);
      v542 = sub_1DD824B24();
      v543(v542);
      *v628 = v765.n128_u64[0];
      sub_1DD6E67F8();
      goto LABEL_56;
    case 14:
      v765.n128_u8[0] = 14;
      sub_1DD8021C4();
      sub_1DD6ED1D4(&v755);
      type metadata accessor for MessagePayload.ClientEffectInvocation(0);
      sub_1DD826028();
      sub_1DD6E1E84(v391);
      sub_1DD6F4500(&v636);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v449 = sub_1DD6DF174(&v681);
      v450(v449);
      v451 = sub_1DD6F4510();
      v452(v451);
      sub_1DD6F0564();
      goto LABEL_57;
    case 15:
      v765.n128_u8[0] = 15;
      sub_1DD802170();
      sub_1DD6ED1D4(&v756);
      type metadata accessor for MessagePayload.ClientEffectResolved(0);
      sub_1DD825FB0();
      sub_1DD6E1E84(v396);
      sub_1DD6F4500(&v637);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v490 = sub_1DD6DF174(&v684);
      v491(v490);
      v492 = sub_1DD6F4510();
      v493(v492);
      sub_1DD6F0564();
      goto LABEL_57;
    case 16:
      v765.n128_u8[0] = 16;
      sub_1DD8020C8();
      sub_1DD6ED1D4(&v757);
      sub_1DD802C98();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD826330(&v683);
      v389 = (v758 + 8);
      swift_unknownObjectRelease();
      v437 = *v370;
      v438 = sub_1DD6E5DB0();
      v439(v438);
      v440 = *v389;
      v441 = sub_1DD825570();
      v442(v441);
      v443 = sub_1DD82633C(v633);
      memcpy(v443, v444, 0x68uLL);
      sub_1DD6E67F8();
      goto LABEL_56;
    case 17:
      v765.n128_u8[0] = 17;
      sub_1DD802074();
      sub_1DD6ED1D4(&v758);
      type metadata accessor for MessagePayload.ClientAction(0);
      sub_1DD825F50();
      sub_1DD6E1E84(v399);
      sub_1DD6F4500(&v638);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v517 = sub_1DD6DF174(&v687);
      v518(v517);
      v519 = sub_1DD6F4510();
      v520(v519);
      sub_1DD6F0564();
      goto LABEL_57;
    case 18:
      v765.n128_u8[0] = 18;
      sub_1DD802020();
      sub_1DD6ED1D4(&v759);
      type metadata accessor for MessagePayload.ClientActionResult(0);
      sub_1DD825EC0();
      sub_1DD6E1E84(v402);
      sub_1DD6F4500(&v639);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v551 = sub_1DD6DF174(&v689);
      v552(v551);
      v553 = sub_1DD6F4510();
      v554(v553);
      sub_1DD6F0564();
      goto LABEL_57;
    case 19:
      v765.n128_u8[0] = 19;
      sub_1DD801F78();
      sub_1DD6ED1D4(&v760);
      sub_1DD802C44();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v581 = sub_1DD6DF174(&v691);
      v582(v581);
      v583 = sub_1DD824B24();
      v584(v583);
      v585 = v767;
      v586 = v766;
      *v629 = v765;
      *(v629 + 16) = v586;
      *(v629 + 32) = v585;
      sub_1DD6E67F8();
      goto LABEL_56;
    case 20:
      v765.n128_u8[0] = 20;
      sub_1DD801ED0();
      sub_1DD6ED1D4(&v761);
      sub_1DD802BF0();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v528 = sub_1DD6DF174(&v693);
      v529(v528);
      v530 = sub_1DD824B24();
      v531(v530);
      sub_1DD6E5CE4(v765.n128_i64[0]);
      goto LABEL_56;
    case 21:
      v765.n128_u8[0] = 21;
      sub_1DD801E7C();
      sub_1DD6ED1D4(&v762);
      type metadata accessor for SystemPrompt(0);
      sub_1DD825ED8();
      sub_1DD6E1E84(v401);
      sub_1DD6F4500(&v640);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v536 = sub_1DD6DF174(&v695);
      v537(v536);
      v538 = sub_1DD6F4510();
      v539(v538);
      sub_1DD6F0564();
      goto LABEL_57;
    case 22:
      v765.n128_u8[0] = 22;
      sub_1DD801E28();
      sub_1DD6ED1D4(&v763);
      type metadata accessor for SystemPromptResolution(0);
      sub_1DD6FAD50();
      sub_1DD6E1E84(v404);
      sub_1DD6F4500(&v641);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v573 = sub_1DD6DF174(&v697);
      v574(v573);
      v575 = sub_1DD6F4510();
      v576(v575);
      sub_1DD6F0564();
      goto LABEL_57;
    case 23:
      v765.n128_u8[0] = 23;
      sub_1DD801DD4();
      sub_1DD6ED1D4(&v764);
      type metadata accessor for ActionResponse(0);
      sub_1DD825E90();
      sub_1DD6E1E84(v406);
      sub_1DD6F4500(&v642);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v591 = sub_1DD6DF174(&v699);
      v592(v591);
      v593 = sub_1DD6F4510();
      v594(v593);
      sub_1DD6F0564();
      goto LABEL_57;
    case 24:
      v765.n128_u8[0] = 24;
      sub_1DD801D80();
      sub_1DD6ED1D4(&v765);
      type metadata accessor for SystemResponse(0);
      sub_1DD825FC8();
      sub_1DD6E1E84(v395);
      sub_1DD6F4500(&v643);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v482 = sub_1DD6DF174(&v701);
      v483(v482);
      v484 = sub_1DD6F4510();
      v485(v484);
      sub_1DD6F0564();
      goto LABEL_57;
    case 25:
      v765.n128_u8[0] = 25;
      sub_1DD801D2C();
      sub_1DD6ED1D4(&v765.n128_i64[1]);
      type metadata accessor for IntermediateSystemResponse(0);
      sub_1DD825FE0();
      sub_1DD6E1E84(v394);
      sub_1DD6F4500(&v644);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v478 = sub_1DD6DF174(&v703);
      v479(v478);
      v480 = sub_1DD6F4510();
      v481(v480);
      sub_1DD6F0564();
      goto LABEL_57;
    case 26:
      v765.n128_u8[0] = 26;
      sub_1DD801CD8();
      sub_1DD6ED1D4(&v766);
      type metadata accessor for IntermediateSystemResponseRendered(0);
      sub_1DD825E60();
      sub_1DD6E1E84(v412);
      sub_1DD6F4500(&v645);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v607 = sub_1DD6DF174(&v705);
      v608(v607);
      v609 = sub_1DD6F4510();
      v610(v609);
      sub_1DD6F0564();
      goto LABEL_57;
    case 27:
      v765.n128_u8[0] = 27;
      sub_1DD801C30();
      sub_1DD6ED1D4(&v766.n128_i64[1]);
      sub_1DD802B9C();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v429 = sub_1DD6DF174(&v707);
      v430(v429);
      v431 = sub_1DD824B24();
      v432(v431);
      sub_1DD6E5CE4(v765.n128_i64[0]);
      goto LABEL_56;
    case 28:
      v765.n128_u8[0] = 28;
      sub_1DD801B88();
      sub_1DD6ED1D4(&v767);
      sub_1DD802B48();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v595 = sub_1DD6DF174(&v709);
      v596(v595);
      v597 = sub_1DD824B24();
      v598(v597);
      sub_1DD6E5CE4(v765.n128_i64[0]);
      goto LABEL_56;
    case 29:
      v765.n128_u8[0] = 29;
      sub_1DD801AE0();
      sub_1DD6ED1D4(&v767 + 8);
      sub_1DD802AF4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v599 = sub_1DD6DF174(&v711);
      v600(v599);
      v601 = sub_1DD824B24();
      v602(v601);
      sub_1DD6E67F8();
      goto LABEL_56;
    case 30:
      v765.n128_u8[0] = 30;
      sub_1DD801A38();
      sub_1DD6ED1D4(&v768);
      sub_1DD802AA0();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v565 = sub_1DD6DF174(&v713);
      v566(v565);
      v567 = sub_1DD824B24();
      v568(v567);
      *v630 = v765;
      sub_1DD6E67F8();
      goto LABEL_56;
    case 31:
      v765.n128_u8[0] = 31;
      sub_1DD8019E4();
      sub_1DD6ED1D4(&v768 + 8);
      type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
      sub_1DD825F80();
      sub_1DD6E1E84(v398);
      sub_1DD6F4500(&v646);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v513 = sub_1DD6DF174(&v715);
      v514(v513);
      v515 = sub_1DD6F4510();
      v516(v515);
      sub_1DD6F0564();
      goto LABEL_57;
    case 32:
      v765.n128_u8[0] = 32;
      sub_1DD801990();
      sub_1DD6ED1D4(&v769);
      type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0);
      sub_1DD6FF5DC();
      sub_1DD6E1E84(v403);
      sub_1DD6F4500(&v647);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v569 = sub_1DD6DF174(&v717);
      v570(v569);
      v571 = sub_1DD6F4510();
      v572(v571);
      sub_1DD6F0564();
      goto LABEL_57;
    case 33:
      v765.n128_u8[0] = 33;
      sub_1DD6FDB5C();
      sub_1DD6ED1D4(&v770);
      type metadata accessor for MessagePayload.ExternalAgentRequest(0);
      sub_1DD826010();
      sub_1DD6E1E84(v392);
      sub_1DD6F4500(&v648);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v453 = sub_1DD6DF174(&v719);
      v454(v453);
      v455 = sub_1DD6F4510();
      v456(v455);
      sub_1DD6F0564();
      goto LABEL_57;
    case 34:
      v765.n128_u8[0] = 34;
      sub_1DD703164();
      sub_1DD6ED1D4(&v771);
      type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
      sub_1DD826058();
      sub_1DD6E1E84(v388);
      sub_1DD6F4500(&v649);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v433 = sub_1DD6DF174(&v721);
      v434(v433);
      v435 = sub_1DD6F4510();
      v436(v435);
      sub_1DD6F0564();
      goto LABEL_57;
    case 35:
      v765.n128_u8[0] = 35;
      sub_1DD80193C();
      sub_1DD6ED1D4(&v772);
      sub_1DD8007B4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v421 = sub_1DD6DF174(&v723);
      v422(v421);
      v423 = sub_1DD824B24();
      v424(v423);
      sub_1DD6FF5C0(v765.n128_i64[0]);
      goto LABEL_56;
    case 36:
      v765.n128_u8[0] = 36;
      sub_1DD8018E8();
      sub_1DD6ED1D4(&v773);
      sub_1DD700CAC();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v425 = sub_1DD6DF174(&v725);
      v426(v425);
      v427 = sub_1DD824B24();
      v428(v427);
      sub_1DD6FF5C0(v765.n128_i64[0]);
      goto LABEL_56;
    case 37:
      v765.n128_u8[0] = 37;
      sub_1DD801894();
      sub_1DD6ED1D4(&v774);
      type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
      sub_1DD826070();
      sub_1DD6E1E84(v387);
      sub_1DD6F4500(&v650);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v417 = sub_1DD6DF174(&v727);
      v418(v417);
      v419 = sub_1DD6F4510();
      v420(v419);
      sub_1DD6F0564();
      goto LABEL_57;
    case 38:
      v765.n128_u8[0] = 38;
      sub_1DD801840();
      sub_1DD6ED1D4(&a9);
      type metadata accessor for MessagePayload.ActionSummaryUpdate(0);
      sub_1DD825E78();
      sub_1DD6E1E84(v407);
      sub_1DD6F4500(&v651);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v603 = sub_1DD6DF174(&v729);
      v604(v603);
      v605 = sub_1DD6F4510();
      v606(v605);
      sub_1DD6F0564();
      goto LABEL_57;
    case 39:
      v765.n128_u8[0] = 39;
      sub_1DD8017EC();
      sub_1DD6ED1D4(&a10);
      type metadata accessor for SessionClientDebuggerEvent(0);
      sub_1DD825EA8();
      sub_1DD6E1E84(v405);
      sub_1DD6EDFA8();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v577 = sub_1DD6DF174(&v731);
      v578(v577);
      v579 = sub_1DD6F4510();
      v580(v579);
      sub_1DD6F0564();
      goto LABEL_57;
    case 40:
      v765.n128_u8[0] = 40;
      sub_1DD801798();
      sub_1DD826EA0();
      sub_1DD824848();
      sub_1DD875800();
      type metadata accessor for SessionServerDebuggerEvent(0);
      sub_1DD7014A0();
      sub_1DD6E1E84(v393);
      sub_1DD8256D4(&v652);
      sub_1DD824AC4();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v465 = sub_1DD6FFA00(&v733);
      v466(v465, v371);
      v467 = sub_1DD6F4510();
      v468(v467);
      goto LABEL_55;
    case 41:
      v765.n128_u8[0] = 41;
      sub_1DD8016F0();
      sub_1DD6F9BEC(&a11);
      sub_1DD6F09C4();
      sub_1DD875800();
      sub_1DD802A4C();
      sub_1DD82499C();
      sub_1DD8758D0();
      v410 = (v355 + 8);
      v411 = (v758 + 8);
      swift_unknownObjectRelease();
      v521 = *v410;
      v522 = sub_1DD6E5DB0();
      v523(v522);
      v524 = *v411;
      v525 = sub_1DD825B84();
      v526(v525);
      sub_1DD826888(&v634, v765, v766);
      v527 = v768;
      *(v411 + 2) = v767;
      *(v411 + 3) = v527;
      sub_1DD6E67F8();
      goto LABEL_56;
    case 42:
      v765.n128_u8[0] = 42;
      sub_1DD801648();
      sub_1DD6ED1D4(&a12);
      sub_1DD8029F8();
      sub_1DD82499C();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v587 = sub_1DD6DF174(&v736);
      v588(v587);
      v589 = sub_1DD824B24();
      v590(v589);
      *v372 = v765;
      goto LABEL_55;
    case 43:
      v765.n128_u8[0] = 43;
      sub_1DD8015A0();
      sub_1DD6ED1D4(&a13);
      sub_1DD8029A4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v413 = sub_1DD6DF174(&v738);
      v414(v413);
      v415 = sub_1DD824B24();
      v416(v415);
      sub_1DD6FF5C0(v765.n128_i64[0]);
LABEL_56:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E27BC();
      break;
    case 44:
      v765.n128_u8[0] = 44;
      sub_1DD80154C();
      sub_1DD6ED1D4(&a14);
      type metadata accessor for ActionExecutionOutcome(0);
      sub_1DD826040();
      sub_1DD6E1E84(v390);
      sub_1DD8256D4(&v653);
      sub_1DD6EDFA8();
      swift_unknownObjectRelease();
      v445 = sub_1DD6DF174(&v740);
      v446(v445);
      v447 = sub_1DD6F4510();
      v448(v447);
LABEL_55:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E27BC();
      break;
    default:
      v765.n128_u8[0] = 0;
      sub_1DD802950();
      sub_1DD6F9BEC(&v742);
      v373 = v762;
      sub_1DD6F09C4();
      sub_1DD875800();
      type metadata accessor for MessagePayload.UserTurnStarted(0);
      sub_1DD826088();
      sub_1DD6E1E84(v408);
      sub_1DD6F4500(&v631);
      v409 = v632[8];
      sub_1DD8257EC();
      sub_1DD8758D0();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v509 = sub_1DD824880(&v654);
      v510(v509, v409);
      v511 = sub_1DD824A04();
      v512(v511, v373);
      sub_1DD6F0564();
LABEL_57:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E27BC();
      break;
  }

  sub_1DD6E59B8();
  v611 = v763;
  sub_1DD6E27BC();
  sub_1DD82731C();
  sub_1DD6E59B8();
  v386 = v611;
LABEL_10:
  sub_1DD6E1EC8(v386);
  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t sub_1DD6F8C48()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 248);

  return sub_1DD875910();
}

uint64_t sub_1DD6F8CE0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1DD6F8CEC(uint64_t a1)
{
  sub_1DD6E5E68(v1, 1, 1, a1);
  result = type metadata accessor for SystemPromptResolution(0);
  v3 = *(result + 32);
  return result;
}

uint64_t sub_1DD6F8D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD6F8D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD6F8D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E72755472657375 && a2 == 0xEF64657472617453;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74616E696D726574 && a2 == 0xE900000000000065;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DD8B67D0 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616C50664F646E65 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001DLL && 0x80000001DD8B67F0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x80000001DD8B6810 == a2;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1DD875A30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7551686365657073 && a2 == 0xEB00000000797265;
                    if (v14 || (sub_1DD875A30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001BLL && 0x80000001DD8B6830 == a2;
                      if (v15 || (sub_1DD875A30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6269726373657270 && a2 == 0xEE006E616C506465;
                        if (v16 || (sub_1DD875A30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E6172546B636F6DLL && a2 == 0xEE00747069726373;
                          if (v17 || (sub_1DD875A30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000014 && 0x80000001DD8B6850 == a2;
                            if (v18 || (sub_1DD875A30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000016 && 0x80000001DD8B6870 == a2;
                              if (v19 || (sub_1DD875A30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000014 && 0x80000001DD8B6890 == a2;
                                if (v20 || (sub_1DD875A30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000011 && 0x80000001DD8B68B0 == a2;
                                  if (v21 || (sub_1DD875A30() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974;
                                    if (v22 || (sub_1DD875A30() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x80000001DD8B68D0 == a2;
                                      if (v23 || (sub_1DD875A30() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7543746E65696C63 && a2 == 0xEC0000006D6F7473;
                                        if (v24 || (sub_1DD875A30() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000010 && 0x80000001DD8B68F0 == a2;
                                          if (v25 || (sub_1DD875A30() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000015 && 0x80000001DD8B6910 == a2;
                                            if (v26 || (sub_1DD875A30() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000014 && 0x80000001DD8B6930 == a2;
                                              if (v27 || (sub_1DD875A30() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x65526E6F69746361 && a2 == 0xEE0065736E6F7073;
                                                if (v28 || (sub_1DD875A30() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x65526D6574737973 && a2 == 0xEE0065736E6F7073;
                                                  if (v29 || (sub_1DD875A30() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001ALL && 0x80000001DD8B6950 == a2;
                                                    if (v30 || (sub_1DD875A30() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000022 && 0x80000001DD8B6970 == a2;
                                                      if (v31 || (sub_1DD875A30() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000015 && 0x80000001DD8B69A0 == a2;
                                                        if (v32 || (sub_1DD875A30() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000017 && 0x80000001DD8B69C0 == a2;
                                                          if (v33 || (sub_1DD875A30() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000011 && 0x80000001DD8B69E0 == a2;
                                                            if (v34 || (sub_1DD875A30() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000013 && 0x80000001DD8B6A00 == a2;
                                                              if (v35 || (sub_1DD875A30() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000016 && 0x80000001DD8B6A20 == a2;
                                                                if (v36 || (sub_1DD875A30() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000018 && 0x80000001DD8B6A40 == a2;
                                                                  if (v37 || (sub_1DD875A30() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000014 && 0x80000001DD8B6A60 == a2;
                                                                    if (v38 || (sub_1DD875A30() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000014 && 0x80000001DD8B6A80 == a2;
                                                                      if (v39 || (sub_1DD875A30() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000021 && 0x80000001DD8B6AA0 == a2;
                                                                        if (v40 || (sub_1DD875A30() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000023 && 0x80000001DD8B6AD0 == a2;
                                                                          if (v41 || (sub_1DD875A30() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000015 && 0x80000001DD8B6B00 == a2;
                                                                            if (v42 || (sub_1DD875A30() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000013 && 0x80000001DD8B6B20 == a2;
                                                                              if (v43 || (sub_1DD875A30() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000013 && 0x80000001DD8B6B40 == a2;
                                                                                if (v44 || (sub_1DD875A30() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000013 && 0x80000001DD8B6B60 == a2;
                                                                                  if (v45 || (sub_1DD875A30() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x7055737574617473 && a2 == 0xEC00000065746164;
                                                                                    if (v46 || (sub_1DD875A30() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000011 && 0x80000001DD8B6B80 == a2;
                                                                                      if (v47 || (sub_1DD875A30() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000016 && 0x80000001DD8B6BA0 == a2;
                                                                                        if (v48 || (sub_1DD875A30() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else if (a1 == 0x78456E6F69746361 && a2 == 0xEE00646574756365)
                                                                                        {

                                                                                          return 44;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v50 = sub_1DD875A30();

                                                                                          if (v50)
                                                                                          {
                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            return 45;
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
            }
          }
        }
      }
    }
  }
}

void *sub_1DD6F9A58(void *a1)
{

  return memcpy(a1, (v1 + 1856), 0x58uLL);
}

unint64_t sub_1DD6F9AC4()
{
  result = qword_1EE015800;
  if (!qword_1EE015800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015800);
  }

  return result;
}

void *sub_1DD6F9B7C(void *a1)
{

  return memcpy(a1, (v1 + 152), 0x50uLL);
}

uint64_t sub_1DD6F9BB8(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 - 96);
  v5 = *(v1 - 88);

  return sub_1DD785398(v4, v5);
}

uint64_t sub_1DD6F9C04()
{
  v3 = *(v0 - 176);
  v2 = *(v0 - 168);

  return sub_1DD875860();
}

unint64_t sub_1DD6F9C40()
{
  result = qword_1EE018230;
  if (!qword_1EE018230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018230);
  }

  return result;
}

unint64_t sub_1DD6F9C94()
{
  result = qword_1EE015808;
  if (!qword_1EE015808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015808);
  }

  return result;
}

void sub_1DD6F9D44()
{
  sub_1DD6DED2C();
  v1 = v0;
  v3 = v2;
  v5 = sub_1DD825C68(v2, v4);
  v7 = sub_1DD710A9C(v5, v6);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  v11 = v3[4];
  sub_1DD6DF224(v3, v3[3]);
  v1();
  sub_1DD827014();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  v12 = sub_1DD6DFF30();
  v13(v12);
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void sub_1DD6F9ED8()
{
  sub_1DD6DEB38();
  v55 = v1;
  v2 = sub_1DD874ED0();
  v3 = sub_1DD6DDEAC(v2);
  v53 = v4;
  v54 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v56 = sub_1DD710A9C(&qword_1ECD16760, &unk_1DD8B1698);
  sub_1DD6DDEAC(v56);
  v52 = v7;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6FF92C(v11, v49);
  v57 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  v12 = sub_1DD6DDEAC(v57);
  v50 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE21C();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = type metadata accessor for SessionServerMessage(0);
  v23 = sub_1DD6DE1C4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DE21C();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v49 - v30;
  v32 = *(v0 + 24);
  os_unfair_lock_lock((v32 + 48));
  v33 = *(v32 + 16);

  os_unfair_lock_unlock((v32 + 48));
  v34 = *(v0 + 16);
  sub_1DD6F3284();
  sub_1DD6DEC94(v35, 255, v36);
  sub_1DD8745C0();
  v37 = *(v33 + 16);
  if (v37)
  {
    v54 = *(v57 + 48);
    v55 = v31;
    v38 = *(v50 + 80);
    v49 = v33;
    v39 = v33 + ((v38 + 32) & ~v38);
    v40 = (v52 + 8);
    v53 = *(v50 + 72);
    v41 = v51;
    do
    {
      v42 = sub_1DD6ED118();
      sub_1DD6E7A88(v42, v43, &qword_1ECD10300, &qword_1DD884D20);
      v44 = *(v57 + 48);
      v45 = sub_1DD874820();
      sub_1DD6DE1C4(v45);
      (*(v46 + 32))(v18, v21);
      v47 = sub_1DD710A9C(&qword_1ECD166F0, &unk_1DD8B1090);
      sub_1DD6DE1C4(v47);
      (*(v48 + 32))(v18 + v44, &v21[v54], v47);
      sub_1DD8648B4(v55, v28);
      sub_1DD8753B0();
      (*v40)(v41, v56);
      sub_1DD6FC560(v18, &qword_1ECD10300, &qword_1DD884D20);
      v39 += v53;
      --v37;
    }

    while (v37);

    v31 = v55;
  }

  else
  {
  }

  sub_1DD6EEEFC(v31, type metadata accessor for SessionServerMessage);
  sub_1DD6DFED0();
}

uint64_t sub_1DD6FA3DC()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  return result;
}

uint64_t sub_1DD6FA430()
{

  return sub_1DD875A30();
}

uint64_t sub_1DD6FA448()
{
  sub_1DD6E1F54();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1DD6E04EC();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = sub_1DD863600;
  }

  else
  {
    v11 = *(v3 + 56);
    v10 = *(v3 + 64);

    v9 = sub_1DD6FA568;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD6FA568()
{
  sub_1DD6DDF4C();
  sub_1DD6E6658(*(v0 + 40), *(v0 + 48));
  sub_1DD6DDF40();

  return v1();
}

uint64_t sub_1DD6FA5C4()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1DD6E04EC();
  *v4 = v3;

  sub_1DD6DDF40();

  return v5();
}

uint64_t sub_1DD6FA6B0()
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD6FA6D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + a2) = v4;
  v5 = (v2 + a1[11]);
  *v5 = 0;
  v5[1] = 0;
  *(v2 + a1[8]) = 0;
  v6 = a1[7];
  v7 = type metadata accessor for ResponseOutput.VisualOutput(0);
  result = sub_1DD6E5E68(v2 + v6, 1, 1, v7);
  *(v2 + *(v3 + 48)) = v4;
  return result;
}

void sub_1DD6FA720()
{

  sub_1DD78216C();
}

void sub_1DD6FA750()
{

  JUMPOUT(0x1E12B5570);
}

uint64_t SessionConfiguration.originatingDevice.getter()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for SessionConfiguration(v1);
  sub_1DD6E87C4((v0 + *(v2 + 48)));
}

uint64_t SessionConfiguration.initialLocaleSettings.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = v1 + *(type metadata accessor for SessionConfiguration(v2) + 32);

  return sub_1DD6FA7F8(v3, v0);
}

uint64_t sub_1DD6FA7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionConfiguration.crossAPIAssociationKey.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = (v1 + *(type metadata accessor for SessionConfiguration(v2) + 60));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t sub_1DD6FAA04()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t sub_1DD6FAA1C()
{
  result = qword_1EE018588;
  if (!qword_1EE018588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018588);
  }

  return result;
}

uint64_t sub_1DD6FAAB8()
{
  sub_1DD76D0F4(v3, v2);
  sub_1DD76D0F4(v1, v0);
  return v3;
}

uint64_t sub_1DD6FAAE8()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 72);

  return sub_1DD875800();
}

uint64_t sub_1DD6FAB64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1DD875800();
}

uint64_t sub_1DD6FABB0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6BC68](a1, a2, a3, 6, 0);
}

uint64_t sub_1DD6FABF0()
{
  v1 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 88);
  *(v0 - 96) = 1;
  return v0 - 96;
}

void *sub_1DD6FAC08@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 256);
  *v4 = a1;
  v4[1] = v1;
  result = v4;
  v6 = *(v3 - 168);
  return result;
}

uint64_t getEnumTagSinglePayload for MessagePayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD4)
  {
    if (a2 + 44 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 44) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 45;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v5 = v6 - 45;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1DD6FAD2C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[12] = a4;
  v4[13] = a3;
}

uint64_t sub_1DD6FAD68()
{
  v2 = *(v0 + 192);

  return swift_getEnumCaseMultiPayload();
}

void *sub_1DD6FAD94(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x50uLL);
}

uint64_t sub_1DD6FADD0()
{

  return sub_1DD875910();
}

_BYTE *storeEnumTagSinglePayload for MessagePayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD3)
  {
    v6 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
        JUMPOUT(0x1DD6FAEF0);
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
          *result = a2 + 44;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6FAF28(char a1)
{
  result = 0x6E72755472657375;
  switch(a1)
  {
    case 1:
      result = 0x74736575716572;
      break;
    case 2:
      result = 0x74616E696D726574;
      break;
    case 3:
    case 20:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x616C50664F646E65;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x726F727265;
      break;
    case 7:
    case 14:
    case 31:
    case 43:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x7972657571;
      break;
    case 9:
      result = 0x7551686365657073;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x6269726373657270;
      break;
    case 12:
      result = 0x6E6172546B636F6DLL;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
    case 29:
    case 42:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x6341746E65696C63;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x7543746E65696C63;
      break;
    case 21:
    case 27:
    case 37:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      v3 = 0x6E6F69746361;
      goto LABEL_32;
    case 24:
      v3 = 0x6D6574737973;
LABEL_32:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 26:
      result = 0xD000000000000022;
      break;
    case 28:
      result = 0xD000000000000017;
      break;
    case 30:
    case 38:
    case 39:
    case 40:
      result = 0xD000000000000013;
      break;
    case 32:
      result = 0xD000000000000018;
      break;
    case 33:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000014;
      break;
    case 35:
      result = 0xD000000000000021;
      break;
    case 36:
      result = 0xD000000000000023;
      break;
    case 41:
      result = 0x7055737574617473;
      break;
    case 44:
      result = 0x78456E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t static AssetUtils.assetName(for:with:)(unsigned __int8 *a1, uint64_t a2)
{
  result = 0xD00000000000001ELL;
  v4 = *a1;
  v5 = 0xD000000000000030;
  switch(v4)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      goto LABEL_7;
    case 5:
      v5 = 0xD000000000000032;
LABEL_7:
      v11 = v5;

      MEMORY[0x1E12B4C10](46, 0xE100000000000000);

      v7 = sub_1DD6FB630(0x75676E616C2E6772, 0xEB00000000656761, a2);
      if (v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      MEMORY[0x1E12B4C10](v9, v10);

      result = v11;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD00000000000002FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD6FB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD6FB688(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

unint64_t sub_1DD6FB688(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1DD875B60();

  return sub_1DD6FB700(a1, a2, v6);
}

unint64_t sub_1DD6FB700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DD875A30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DD6FB7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AssetInfo.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetInfo() + 20);

  return sub_1DD6FB8B4(v3, a1);
}

uint64_t type metadata accessor for AssetInfo()
{
  result = qword_1EE013BF0;
  if (!qword_1EE013BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD6FB8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void AssetsManager.uafAsset(for:set:usages:)()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v62 = v6;
  v7 = sub_1DD874ED0();
  v8 = sub_1DD6DDEAC(v7);
  v59 = v9;
  v60 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  v61 = v12;
  v13 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v57 - v15;
  v17 = *v5;
  v18 = *v3;
  v19 = [objc_opt_self() sharedManager];
  v58 = "anguage";
  v20 = sub_1DD875110();

  v21 = sub_1DD6FDADC(v20, v1, v19);

  v64 = v17;
  v22 = static AssetUtils.assetName(for:with:)(&v64, v1);
  v24 = v23;
  if (!v21)
  {
    goto LABEL_5;
  }

  v25 = v21;
  v26 = v16;
  v27 = v21;
  v28 = sub_1DD875110();
  v29 = [v25 assetNamed_];

  v21 = v27;
  if (v29)
  {
    v30 = v26;

    v31 = [v29 name];
    v32 = sub_1DD875140();
    v34 = v33;

    v35 = [v29 location];
    if (v35)
    {
      v36 = v35;
      sub_1DD874700();

      v37 = sub_1DD874740();
      v38 = 0;
    }

    else
    {
      v37 = sub_1DD874740();
      v38 = 1;
    }

    sub_1DD6E5E68(v30, v38, 1, v37);
    v53 = [v29 metadata];
    v54 = sub_1DD875070();

    v55 = v62;
    *v62 = v32;
    v55[1] = v34;
    v56 = type metadata accessor for AssetInfo();
    sub_1DD6FB7B4(v30, v55 + v56[5]);
    *(v55 + v56[6]) = v54;
    *(v55 + v56[7]) = v21;
    sub_1DD6E09D4();
    v52 = v56;
  }

  else
  {
LABEL_5:
    v39 = v61;
    sub_1DD874BF0();

    v40 = sub_1DD874EC0();
    v41 = sub_1DD875500();

    if (os_log_type_enabled(v40, v41))
    {
      v57 = v21;
      v42 = sub_1DD6DDF08();
      v63 = sub_1DD6DE22C();
      *v42 = 136315394;
      v43 = sub_1DD6FD650(v22, v24, &v63);

      *(v42 + 4) = v43;
      *(v42 + 12) = 2080;
      v44 = 0xD00000000000001ELL;
      if (v18 == 1)
      {
        v45 = "com.apple.if.planner";
      }

      else
      {
        v44 = 0xD00000000000001CLL;
        v45 = "com.apple.if.planner.overrides";
      }

      if (v18)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xD000000000000014;
      }

      if (v18)
      {
        v47 = v45;
      }

      else
      {
        v47 = v58;
      }

      v48 = sub_1DD6FD650(v46, v47 | 0x8000000000000000, &v63);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1DD6DC000, v40, v41, "Asset %s not found in asset set %s", v42, 0x16u);
      swift_arrayDestroy();
      sub_1DD6DE474();
      sub_1DD6DE474();

      (*(v59 + 8))(v61, v60);
    }

    else
    {

      (*(v59 + 8))(v39, v60);
    }

    type metadata accessor for AssetInfo();
    sub_1DD6E0C90();
  }

  sub_1DD6E5E68(v49, v50, v51, v52);
  sub_1DD6DFED0();
}

uint64_t sub_1DD6FBDBC()
{

  return sub_1DD8748F0();
}

uint64_t sub_1DD6FBDF8@<X0>(char a1@<W8>)
{
  *(v1 + 64) = a1;
  result = v1 + 64;
  v3 = *(v1 + 56);
  return result;
}

uint64_t sub_1DD6FBE10()
{

  return sub_1DD875800();
}

void sub_1DD6FBE30()
{

  sub_1DD76C4C4();
}

uint64_t sub_1DD6FBE50()
{
  v1 = *(*(v0 - 152) + 32);
  result = *(v0 - 112);
  v3 = *(v0 - 136);
  return result;
}

uint64_t sub_1DD6FBE70()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

void sub_1DD6FBE98()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
}

uint64_t sub_1DD6FBEB4()
{
}

uint64_t sub_1DD6FBEE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
    v8 = v5 + *(a4 + 20);

    return sub_1DD6E5E68(v8, a2, a2, v7);
  }

  return result;
}

void AssetsManager.info(for:locale:in:)()
{
  sub_1DD6DEB38();
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1DD710A9C(&qword_1ECD0E318, &qword_1DD8786C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1DD6DE21C();
  v36 = v11 - v12;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for AssetInfo();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE21C();
  v33 = v18 - v19;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v23 = *v8;
  v24 = *v0;
  v25 = v0[1];
  v41 = *v0;
  v42 = v25;
  v40 = v23;
  v34 = v6;
  v35 = v4;
  AssetsManager.sideloadedAsset(for:locale:in:)();
  if (sub_1DD6E5ED0(v15, 1, v16) != 1)
  {
    sub_1DD719D84(v15, v22);
    sub_1DD719D84(v22, v38);
LABEL_6:
    sub_1DD6E09D4();
    sub_1DD6E5E68(v29, v30, v31, v16);
    goto LABEL_7;
  }

  v26 = v38;
  sub_1DD6FD870(v15, &qword_1ECD0E318, &qword_1DD8786C0);
  v41 = v24;
  v42 = v25;
  v40 = v23;
  v27 = v36;
  AssetsManager.sideloadedAsset(for:locale:in:)();
  if (sub_1DD6E5ED0(v27, 1, v16) != 1)
  {
    v28 = v33;
    sub_1DD719D84(v27, v33);
    sub_1DD719D84(v28, v26);
    goto LABEL_6;
  }

  sub_1DD6FD870(v27, &qword_1ECD0E318, &qword_1DD8786C0);
  LOBYTE(v41) = v23;
  v40 = 0x2010100010101uLL >> (8 * v23);
  v39 = v23;
  static AssetUtils.getUsages(for:locale:)(&v39, v34, v35);
  AssetsManager.uafAsset(for:set:usages:)();

LABEL_7:
  sub_1DD6DFED0();
}

uint64_t sub_1DD6FC1FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
    v9 = a1 + *(a3 + 20);

    return sub_1DD6E5ED0(v9, a2, v8);
  }
}

uint64_t sub_1DD6FC2C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(*(sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10) - 8) + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1DD8747E0();
    v12 = sub_1DD874820();
    v13 = 0;
  }

  else
  {
    v12 = sub_1DD874820();
    v13 = 1;
  }

  sub_1DD6E5E68(v9, v13, 1, v12);

  v14 = a3;
  v11(v9, a3);

  return sub_1DD6FC560(v9, &qword_1ECD0E540, &qword_1DD878B10);
}

void sub_1DD6FC3DC()
{
  v4 = *(v1 + v3);
  *(v4 + 16) = v0 + 1;
  v5 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v0;
}

void sub_1DD6FC404(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_1DD6FC414()
{

  return sub_1DD874910();
}

uint64_t sub_1DD6FC440(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t sub_1DD6FC48C()
{

  return sub_1DD875B90();
}

uint64_t sub_1DD6FC518()
{
  v2 = *(v0 - 216);

  return sub_1DD875800();
}

uint64_t sub_1DD6FC560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1DD710A9C(a2, a3);
  sub_1DD6DE1C4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t static PreferencesDomain.otaResourceLock.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE015238 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD874CD0();
  sub_1DD6E1224(v2, qword_1EE015240);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CachedResourceModel();
  swift_getWitnessTable();
  result = sub_1DD874CB0();
  *a1 = result;
  return result;
}

void AssetsManager.sideloadedAsset(for:locale:in:)()
{
  sub_1DD6DEB38();
  v2 = v1;
  v90 = v3;
  v4 = sub_1DD874ED0();
  v5 = sub_1DD6DDEAC(v4);
  v88 = v6;
  v89 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE21C();
  v85 = v9 - v10;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v84 - v12;
  v13 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v84 - v15;
  v17 = sub_1DD874740();
  v18 = sub_1DD6DDEAC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE21C();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v84 - v27;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v31 = *v2;
  v92 = *v0;
  v91 = v31;
  v33 = v32;
  sub_1DD6FD05C();
  if (sub_1DD6E5ED0(v16, 1, v33) == 1)
  {
    sub_1DD6FD870(v16, &qword_1ECD16C10, &qword_1DD878230);
LABEL_3:
    type metadata accessor for AssetInfo();
    sub_1DD6E0C90();
    goto LABEL_34;
  }

  (*(v20 + 32))(v30, v16, v33);
  v38 = [objc_opt_self() defaultManager];
  sub_1DD874720();
  v39 = sub_1DD875110();

  v40 = [v38 fileExistsAtPath_];

  v41 = (v20 + 16);
  if (!v40)
  {
    v50 = v85;
    sub_1DD874BF0();
    (*v41)(v25, v30, v33);
    v51 = v30;
    v52 = sub_1DD874EC0();
    v53 = sub_1DD875500();
    if (os_log_type_enabled(v52, v53))
    {
      LODWORD(v87) = v53;
      v54 = v31;
      v86 = v51;
      v55 = 0xD00000000000001ELL;
      v56 = sub_1DD6DDF08();
      *&v92 = sub_1DD6DE22C();
      *v56 = 136315394;
      v57 = "ceFlow-3505.5.1\n";
      switch(v54)
      {
        case 1:
          v57 = "com.apple.if.planner_overrides";
          v55 = 0xD00000000000002CLL;
          break;
        case 2:
          v57 = "nner.tool_retrieval.denylist";
          v55 = 0xD000000000000027;
          break;
        case 3:
          v57 = "nner.nlrouter.overrides";
          v55 = 0xD000000000000028;
          break;
        case 4:
          v57 = "nner.tool_retrieval.base";
          v55 = 0xD000000000000030;
          break;
        case 5:
          v57 = "neration.catalog";
          v55 = 0xD000000000000032;
          break;
        case 6:
          v57 = "neration.overrides";
          v55 = 0xD000000000000020;
          break;
        case 7:
          v57 = "l.data_detectors";
          v55 = 0xD00000000000002FLL;
          break;
        default:
          break;
      }

      v78 = sub_1DD6FD650(v55, v57 | 0x8000000000000000, &v92);

      *(v56 + 4) = v78;
      *(v56 + 12) = 2080;
      v79 = sub_1DD874720();
      v81 = v80;
      v82 = *(v20 + 8);
      v82(v25, v33);
      v83 = sub_1DD6FD650(v79, v81, &v92);

      *(v56 + 14) = v83;
      _os_log_impl(&dword_1DD6DC000, v52, v87, "Asset %s does not exist at sideloading path %s", v56, 0x16u);
      swift_arrayDestroy();
      sub_1DD6DE474();
      sub_1DD6DE474();

      (*(v88 + 8))(v50, v89);
      v82(v86, v33);
    }

    else
    {

      v59 = *(v20 + 8);
      v59(v25, v33);
      (*(v88 + 8))(v50, v89);
      v59(v51, v33);
    }

    goto LABEL_3;
  }

  v42 = 0xD00000000000001ELL;
  v43 = v87;
  sub_1DD874BF0();
  v44 = v86;
  (*v41)(v86, v30, v33);
  v45 = sub_1DD874EC0();
  v46 = sub_1DD875500();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = sub_1DD6DDF08();
    v84 = sub_1DD6DE22C();
    *&v92 = v84;
    *v47 = 136315394;
    v48 = "ceFlow-3505.5.1\n";
    LODWORD(v85) = v46;
    v49 = 0xD00000000000001ELL;
    switch(v31)
    {
      case 1:
        v48 = "com.apple.if.planner_overrides";
        v49 = 0xD00000000000002CLL;
        break;
      case 2:
        v48 = "nner.tool_retrieval.denylist";
        v49 = 0xD000000000000027;
        break;
      case 3:
        v48 = "nner.nlrouter.overrides";
        v49 = 0xD000000000000028;
        break;
      case 4:
        v48 = "nner.tool_retrieval.base";
        v49 = 0xD000000000000030;
        break;
      case 5:
        v48 = "neration.catalog";
        v49 = 0xD000000000000032;
        break;
      case 6:
        v48 = "neration.overrides";
        v49 = 0xD000000000000020;
        break;
      case 7:
        v48 = "l.data_detectors";
        v49 = 0xD00000000000002FLL;
        break;
      default:
        break;
    }

    v60 = sub_1DD6FD650(v49, v48 | 0x8000000000000000, &v92);

    *(v47 + 4) = v60;
    *(v47 + 12) = 2080;
    sub_1DD71992C();
    v61 = v86;
    v62 = sub_1DD875A10();
    v64 = v63;
    v58 = *(v20 + 8);
    v58(v61, v33);
    v65 = sub_1DD6FD650(v62, v64, &v92);
    v42 = 0xD00000000000001ELL;

    *(v47 + 14) = v65;
    _os_log_impl(&dword_1DD6DC000, v45, v85, "Sideloaded asset found for %s at %s", v47, 0x16u);
    swift_arrayDestroy();
    sub_1DD6DE474();
    sub_1DD6DE474();

    (*(v88 + 8))(v87, v89);
  }

  else
  {

    v58 = *(v20 + 8);
    v58(v44, v33);
    (*(v88 + 8))(v43, v89);
  }

  v66 = "ceFlow-3505.5.1\n";
  v67 = v31;
  v68 = v30;
  v69 = v33;
  switch(v67)
  {
    case 0:
      break;
    case 1:
      v66 = "com.apple.if.planner_overrides";
      v42 = 0xD00000000000002CLL;
      break;
    case 2:
      v66 = "nner.tool_retrieval.denylist";
      v42 = 0xD000000000000027;
      break;
    case 3:
      v66 = "nner.nlrouter.overrides";
      v42 = 0xD000000000000028;
      break;
    case 4:
      v66 = "nner.tool_retrieval.base";
      v42 = 0xD000000000000030;
      break;
    case 5:
      v66 = "neration.catalog";
      v42 = 0xD000000000000032;
      break;
    case 6:
      v66 = "neration.overrides";
      v42 = 0xD000000000000020;
      break;
    case 7:
      v66 = "l.data_detectors";
      v42 = 0xD00000000000002FLL;
      break;
    default:
      JUMPOUT(0);
  }

  v70 = v66 | 0x8000000000000000;
  v71 = type metadata accessor for AssetInfo();
  v72 = v71[5];
  sub_1DD874710();
  v73 = v90;
  sub_1DD8746D0();

  sub_1DD6E09D4();
  sub_1DD6E5E68(v74, v75, v76, v69);
  v77 = sub_1DD875080();
  v58(v68, v69);
  *v73 = v42;
  v73[1] = v70;
  *(v73 + v71[6]) = v77;
  *(v73 + v71[7]) = 0;
  sub_1DD6E09D4();
  v37 = v71;
LABEL_34:
  sub_1DD6E5E68(v34, v35, v36, v37);
  sub_1DD6DFED0();
}

void sub_1DD6FD05C()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v63 = v6;
  v64 = v7;
  v9 = v8;
  v10 = sub_1DD874ED0();
  v11 = sub_1DD6DDEAC(v10);
  v61 = v12;
  v62 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDEE8();
  v60 = v15;
  v65 = sub_1DD874740();
  v16 = sub_1DD6DDEAC(v65);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE21C();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v60 - v28;
  v30 = *v9;
  if (v3)
  {
    if (v5)
    {
LABEL_3:
      v66 = v63;
      v67 = v5;

      MEMORY[0x1E12B4C10](1668246574, 0xE400000000000000);
LABEL_7:
      sub_1DD8746D0();

      sub_1DD8746E0();

      v33 = v65;
      (*(v18 + 40))(v29, v26, v65);
      switch(v30)
      {
        case 0:
        case 3:
        case 4:
          v34 = sub_1DD6E1290();
          v35(v34);
          goto LABEL_16;
        case 1:
        case 5:
        case 7:
          v47 = sub_1DD6E1290();
          v48(v47);
          sub_1DD6E0480();
LABEL_16:
          sub_1DD8746E0();

          v49 = *(v18 + 8);
          v49(v23, v33);
          sub_1DD6E09D4();
          sub_1DD6E5E68(v50, v51, v52, v33);
          v49(v29, v33);
          break;
        default:
          v41 = v60;
          sub_1DD874BF0();
          v42 = sub_1DD874EC0();
          v43 = sub_1DD875500();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = sub_1DD6DDF08();
            v63 = sub_1DD6DE22C();
            v68 = v63;
            *v44 = 136315394;
            v45 = 0xD00000000000001ELL;
            v46 = "ceFlow-3505.5.1\n";
            switch(v30)
            {
              case 0:
                break;
              case 1:
                v46 = "com.apple.if.planner_overrides";
                v45 = 0xD00000000000002CLL;
                break;
              case 2:
                v46 = "nner.tool_retrieval.denylist";
                v45 = 0xD000000000000027;
                break;
              case 3:
              case 4:
              case 5:
                __break(1u);
                JUMPOUT(0x1DD6FD610);
              case 6:
                v46 = "neration.overrides";
                v45 = 0xD000000000000020;
                break;
              case 7:
                v46 = "l.data_detectors";
                v45 = 0xD00000000000002FLL;
                break;
              default:
                JUMPOUT(0);
            }

            v53 = sub_1DD6FD650(v45, v46 | 0x8000000000000000, &v68);

            *(v44 + 4) = v53;
            *(v44 + 12) = 2080;
            swift_beginAccess();
            sub_1DD71992C();
            v54 = sub_1DD875A10();
            v56 = sub_1DD6FD650(v54, v55, &v68);

            *(v44 + 14) = v56;
            _os_log_impl(&dword_1DD6DC000, v42, v43, "No folder name found for asset %s, using base URL %s", v44, 0x16u);
            swift_arrayDestroy();
            sub_1DD6DE474();
            sub_1DD6DE474();
          }

          (*(v61 + 8))(v41, v62);
          sub_1DD6E0C90();
          sub_1DD6E5E68(v57, v58, v59, v33);
          (*(v18 + 8))(v29, v33);
          break;
      }

      sub_1DD6DFED0();
      return;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (v1[1])
  {
    v31 = *v1;
    v32 = v1[1];

    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1DD6E0C90();
  sub_1DD6DFED0();

  sub_1DD6E5E68(v36, v37, v38, v39);
}

uint64_t sub_1DD6FD650(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DD6FD714(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DD6FD814(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1DD6E1EC8(v11);
  return v7;
}

unint64_t sub_1DD6FD714(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DD719984(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1DD875750();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DD6FD814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DD6FD870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1DD710A9C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static AssetUtils.getUsages(for:locale:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  switch(*a1)
  {
    case 1:
    case 3:
    case 7:
      sub_1DD710A9C(&qword_1ECD0E328, &qword_1DD878300);
      inited = swift_initStackObject();
      v6 = sub_1DD6E12A8(inited, xmmword_1DD8782E0);
      sub_1DD6E0494(v6, v7);
      sub_1DD719D30();
      v8 = sub_1DD8755D0();
      if (!v8[2])
      {
        __break(1u);
        JUMPOUT(0x1DD6FDABCLL);
      }

      v10 = v8[4];
      v9 = v8[5];

      inited[3].n128_u64[0] = v10;
      inited[3].n128_u64[1] = v9;
      break;
    case 4:
    case 5:
      sub_1DD710A9C(&qword_1ECD0E328, &qword_1DD878300);
      v11 = swift_initStackObject();
      v12 = sub_1DD6E12A8(v11, xmmword_1DD8782E0);
      v14 = v13 + 529;
      goto LABEL_6;
    case 6:
      sub_1DD710A9C(&qword_1ECD0E328, &qword_1DD878300);
      v19 = swift_initStackObject();
      v20 = sub_1DD6E12A8(v19, xmmword_1DD8782F0);
      v22 = sub_1DD6E0494(v20, v21 + 1805);
      *(v22 + 48) = a2;
      *(v22 + 56) = a3;
      strcpy((v22 + 64), "nl.assistant");
      *(v22 + 77) = 0;
      *(v22 + 78) = -5120;
      *(v22 + 80) = a2;
      *(v22 + 88) = a3;
      swift_bridgeObjectRetain_n();
      break;
    default:
      sub_1DD710A9C(&qword_1ECD0E328, &qword_1DD878300);
      v15 = swift_initStackObject();
      v12 = sub_1DD6E12A8(v15, xmmword_1DD8782E0);
      v14 = v16 + 264;
LABEL_6:
      v17 = sub_1DD6E0494(v12, v14);
      *(v17 + 48) = a2;
      *(v17 + 56) = a3;

      break;
  }

  return sub_1DD875080();
}

id sub_1DD6FDADC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD875060();
  v6 = [a3 retrieveAssetSet:a1 usages:v5];

  return v6;
}

unint64_t sub_1DD6FDB5C()
{
  result = qword_1EE017AE8;
  if (!qword_1EE017AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017AE8);
  }

  return result;
}

uint64_t sub_1DD6FDBB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return sub_1DD6DEAA4(v2);
}

uint64_t sub_1DD6FDBEC(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E838, &unk_1DD87AA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD6FDC54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return sub_1DD6FAA7C(result);
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

      return sub_1DD82565C(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_1DD82565C(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1DD6FDC84(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6FDD40);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD6FDD68()
{
  result = qword_1EE018548;
  if (!qword_1EE018548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018548);
  }

  return result;
}

unint64_t sub_1DD6FDDDC(char a1)
{
  result = 1886352499;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x686365657073;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1DD6FDE5C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6FDF18);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6FDF40()
{

  return sub_1DD6E5ABC();
}

unint64_t sub_1DD6FDF68()
{
  result = qword_1EE018520;
  if (!qword_1EE018520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018520);
  }

  return result;
}

unint64_t sub_1DD6FDFC8()
{
  result = qword_1EE018558;
  if (!qword_1EE018558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018558);
  }

  return result;
}

void MessagePayload.RequestContent.TextContent.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD10EA8, &qword_1DD889270);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD6FE130();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6FE130()
{
  result = qword_1EE018570;
  if (!qword_1EE018570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018570);
  }

  return result;
}

void sub_1DD6FE184()
{
  v2 = (v1 + *(v0 + 32));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

void *sub_1DD6FE198(void *a1)
{

  return memcpy(a1, (v1 + 456), 0x48uLL);
}

uint64_t sub_1DD6FE1CC()
{
  v2 = (v0 + *(v1 + 24));
  result = *v2;
  v4 = v2[1];
  return result;
}

__n128 MessagePayload.ExternalAgentRequest.init(content:rewriteMetadataEventID:rewriteMetadataInlined:)()
{
  sub_1DD8250F8();
  v4 = sub_1DD8272C8(v1, v2, v3);
  v5 = type metadata accessor for MessagePayload.ExternalAgentRequest(v4);
  v6 = *(v5 + 20);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v7, v8, v9, v10);
  sub_1DD82736C();
  sub_1DD6E0E18();
  sub_1DD6E58E0();
  sub_1DD6E59B8();
  sub_1DD807414();
  v11 = sub_1DD700D00();
  sub_1DD6FE2E0(v11, v12);
  result = v14;
  *v5 = v14;
  *(v5 + 16) = v0;
  return result;
}

uint64_t sub_1DD6FE2B4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v5 = *(v3 + 8);
  result = *(v3 + 16);
  *(v2 - 88) = *v3;
  *(v2 - 80) = v5;
  *(v2 - 72) = result;
  return result;
}

__n128 *sub_1DD6FE2CC@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = *(v2 - 256);
  *v3 = a2;
  v3[1].n128_u64[0] = a1;
  return v3;
}

uint64_t sub_1DD6FE2E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t dispatch thunk of SessionClient.send(message:)()
{
  sub_1DD6DE6BC();
  return (*(v0 + 264))();
}

{
  sub_1DD6DE6BC();
  return (*(v0 + 256))();
}

void sub_1DD6FE380()
{
  v2 = v0;
  v3 = *(v0 + 64);
  type metadata accessor for SessionClientMessage(0);
  sub_1DD6DEC94(qword_1EE015468, 255, type metadata accessor for SessionClientMessage);
  sub_1DD8745F0();
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v2 + 40))
  {
    sub_1DD6E0F0C(v2 + 16, &v11);
  }

  else
  {
    v4 = *(v2 + 32);
    v11 = *(v2 + 16);
    v12 = v4;
    v13 = *(v2 + 48);
  }

  if (*(&v12 + 1))
  {
    v5 = sub_1DD6DEA7C(&v11, *(&v12 + 1));
    MEMORY[0x1EEE9AC00](v5);
    sub_1DD874D80();
    sub_1DD6E1EC8(&v11);
    v6 = *(v2 + 72);
    sub_1DD710A9C(&qword_1ECD16710, &qword_1DD8B10B0);
    sub_1DD701060();
    sub_1DD8745C0();
    v7 = sub_1DD6DDEDC();
    sub_1DD6E6658(v7, v8);
    sub_1DD6E6658(v9, v10);
LABEL_7:
    sub_1DD6E1868();
    return;
  }

  __break(1u);
}

void SessionClientMessage.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  v3 = sub_1DD710A9C(&qword_1ECD10BC8, &qword_1DD8890E0);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD6FE71C();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v7);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v0)
  {
    v8 = type metadata accessor for SessionClientMessage(0);
    sub_1DD825AA8(v8);
    sub_1DD824D48((v1 + v9));
    sub_1DD7055A8();
    sub_1DD875970();
    v10 = *(v2 + 24);
    sub_1DD6E0FF8();
    type metadata accessor for MessagePayload(0);
    sub_1DD6E3758();
    sub_1DD6E1E84(v11);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v12 = sub_1DD825168();
  v13(v12);
  sub_1DD825790();
  sub_1DD826CF4();
}

uint64_t sub_1DD6FE710()
{
  result = *(v0 - 88);
  v2 = *(v0 - 80);
  v3 = *(v0 - 72);
  return result;
}

unint64_t sub_1DD6FE71C()
{
  result = qword_1EE017458;
  if (!qword_1EE017458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017458);
  }

  return result;
}

uint64_t sub_1DD6FE78C()
{

  return sub_1DD8003E4(v5, v4, v3, v2, v1, v0);
}

uint64_t sub_1DD6FE7C4(char a1)
{
  if (!a1)
  {
    return 0x496E6F6973736573;
  }

  if (a1 == 1)
  {
    return 0x6552746E65696C63;
  }

  return 0x64616F6C796170;
}

uint64_t sub_1DD6FE83C()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_1DD6FE84C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);

  return sub_1DD8759D0();
}

uint64_t sub_1DD6FE8CC()
{

  return sub_1DD8758D0();
}

void MessagePayload.ExternalAgentRequest.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD11870, &qword_1DD8897A8);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD6FEA9C();
  sub_1DD6E1808();
  v7 = sub_1DD8269A4();
  type metadata accessor for MessagePayload.RequestContent(v7);
  sub_1DD6F4434();
  sub_1DD6E1E84(v8);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v9 = type metadata accessor for MessagePayload.ExternalAgentRequest(0);
    sub_1DD82553C(v9);
    sub_1DD6FF738(v10);
    sub_1DD874820();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v11);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD875960();
    v12 = sub_1DD8253B4((v1 + *(v2 + 24)));
    sub_1DD6FF5F4(v12, v13);
    sub_1DD6FF638();
    sub_1DD824DE8();
    sub_1DD875960();
    v14 = sub_1DD6FE710();
    sub_1DD6FE2E0(v14, v15);
  }

  v16 = sub_1DD6EFFB4();
  v17(v16);
  sub_1DD825790();
  sub_1DD826CF4();
}

unint64_t sub_1DD6FEA9C()
{
  result = qword_1EE018028[0];
  if (!qword_1EE018028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE018028);
  }

  return result;
}

uint64_t sub_1DD6FEB1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 232);

  return sub_1DD8759D0();
}

__n128 sub_1DD6FEB38()
{
  result = *v0;
  v3 = *(v0 + 16);
  *v1 = *v0;
  v1[1] = v3;
  return result;
}

void sub_1DD6FEB44()
{
  v3 = *(v0 + 24);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

void MessagePayload.RequestContent.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD10EF8, &qword_1DD8892A0);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD82495C(v7, v56);
  v58 = type metadata accessor for SystemPromptResolution(0);
  v8 = sub_1DD6DE1C4(v58);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  sub_1DD8268FC(v11);
  v12 = sub_1DD710A9C(&qword_1ECD10F00, &qword_1DD8892A8);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD824934(v16, v57);
  v17 = sub_1DD710A9C(&qword_1ECD10F08, &qword_1DD8892B0);
  sub_1DD6DDEAC(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6F0A58();
  v21 = sub_1DD710A9C(&qword_1ECD10F10, &qword_1DD8892B8);
  sub_1DD6DDEAC(v21);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E7258();
  v25 = type metadata accessor for MessagePayload.RequestContent(0);
  v26 = sub_1DD8247B4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD8247F4();
  v29 = sub_1DD710A9C(&qword_1ECD10F18, &qword_1DD8892C0);
  sub_1DD6DDEAC(v29);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DE340();
  v33 = *(v2 + 24);
  v34 = *(v2 + 32);
  sub_1DD70066C();
  sub_1DD6FDD68();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD824764();
  sub_1DD6E5870();
  sub_1DD825998();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = *v0;
      v50 = v0[1];
      sub_1DD6FDF68();
      sub_1DD8251A8();
      sub_1DD875910();
      sub_1DD6FDFC8();
      sub_1DD826DD4();
      v52 = sub_1DD824D98();
      v53(v52);
      v54 = sub_1DD825148();
      v55(v54);
      goto LABEL_7;
    case 2u:
      v37 = *v0;
      v38 = v0[1];
      v40 = v0[2];
      v39 = v0[3];
      sub_1DD7FD730();
      sub_1DD8272DC();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD7FD784();
      sub_1DD826DD4();
      v41 = sub_1DD824C0C();
      v42(v41);
      v43 = sub_1DD8252CC();
      v44(v43);

LABEL_7:

      goto LABEL_8;
    case 3u:
      sub_1DD6E59B8();
      sub_1DD7FD6DC();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD6FAD50();
      sub_1DD6E1E84(v45);
      sub_1DD6FAD44();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v46 = sub_1DD6E6AD4();
      v47(v46);
      sub_1DD824EB8();
      sub_1DD6E5ABC();
      goto LABEL_5;
    default:
      sub_1DD7FD7D8();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD7FD82C();
      sub_1DD826A40();
      v35 = sub_1DD705E24();
      v36(v35, v21);
LABEL_5:
      v48 = sub_1DD824A94();
      v49(v48);
LABEL_8:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

void sub_1DD6FF100(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1DD6FF124(a1, a2, a3);
}

__n128 sub_1DD6FF108()
{
  v2 = *(v0 + 16);
  *(v1 - 160) = *v0;
  *(v1 - 144) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 128) = result;
  *(v1 - 112) = v4;
  *(v1 - 240) = 6;
  return result;
}

void sub_1DD6FF124(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1DD874750();
  v9[4] = sub_1DD701008;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD700F5C;
  v9[3] = &unk_1F58E6528;
  v8 = _Block_copy(v9);

  [a1 sendWithMessageData:v7 with:v8];
  _Block_release(v8);
}

uint64_t sub_1DD6FF230()
{
  v1 = *(v0 + 24);

  sub_1DD6E2848();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void SessionClientMessage.init(from:)()
{
  sub_1DD6DED2C();
  v3 = sub_1DD82662C(v2);
  v31 = type metadata accessor for MessagePayload(v3);
  v4 = sub_1DD6DE1C4(v31);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD824734();
  v33 = sub_1DD874820();
  v7 = sub_1DD6DDEAC(v33);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  sub_1DD826244(v10);
  v32 = sub_1DD710A9C(&qword_1ECD10BD0, &unk_1DD8890E8);
  sub_1DD6DDEAC(v32);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEA6C();
  v14 = type metadata accessor for SessionClientMessage(0);
  v15 = sub_1DD6DE1C4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6ED3C0();
  v19 = v1[3];
  v18 = v1[4];
  sub_1DD6FE8B0(v1);
  sub_1DD6FE71C();
  sub_1DD6E17D8();
  sub_1DD82686C();
  if (v0)
  {
    sub_1DD6E1EC8(v1);
  }

  else
  {
    sub_1DD8265B4();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v20);
    sub_1DD6F9A4C();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v21 = sub_1DD825764();
    v22(v21);
    sub_1DD824CE8();
    sub_1DD6E72A8();
    sub_1DD875870();
    sub_1DD8275F4(v30);
    *v25 = v23;
    v25[1] = v24;
    sub_1DD6E0FF8();
    sub_1DD6E3758();
    sub_1DD6E1E84(v26);
    sub_1DD827008();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v27 = sub_1DD825780();
    v28(v27);
    v29 = *(v30 + 24);
    sub_1DD6E27BC();
    sub_1DD6E59B8();
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v1);
    sub_1DD826B48();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD6FF5C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *v3 = a1;
  *(v3 + 8) = *(v2 - 184);
  result = v3;
  v5 = *(v2 - 256);
  return result;
}

uint64_t sub_1DD6FF5F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DD6FF638()
{
  result = qword_1EE017A28;
  if (!qword_1EE017A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017A28);
  }

  return result;
}

__n128 sub_1DD6FF6B0()
{
  v2 = *(v0 + 16);
  *(v1 - 160) = *v0;
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 32);
  return *(v0 + 42);
}

unint64_t sub_1DD6FF744(uint64_t a1)
{

  return sub_1DD703A30(a1);
}

uint64_t sub_1DD6FF778()
{

  return sub_1DD875A30();
}

uint64_t sub_1DD6FF7C8()
{

  return sub_1DD6FD650(v1, v2, (v0 + 744));
}

uint64_t sub_1DD6FF848(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

__n128 sub_1DD6FF8C4()
{
  result = *(v0 + 288);
  v2 = *(v0 + 304);
  v4 = *(v0 + 256);
  v3 = *(v0 + 272);
  return result;
}

uint64_t sub_1DD6FF90C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1DD6FF9DC(unint64_t *a1)
{

  return sub_1DD83C2BC(a1);
}

void MessagePayload.ExternalAgentRequest.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E7258();
  v39 = type metadata accessor for MessagePayload.RequestContent(0);
  v9 = sub_1DD6DE1C4(v39);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDEE8();
  v40 = sub_1DD710A9C(&qword_1ECD11878, &qword_1DD8897B0);
  sub_1DD6DDEAC(v40);
  v38 = v12;
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1DD700BA4();
  v17 = type metadata accessor for MessagePayload.ExternalAgentRequest(v16);
  v18 = sub_1DD6E6EB0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD824734();
  v21 = *(v0 + 28);
  v22 = sub_1DD874820();
  *&v41 = v21;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v23, v24, v25, v22);
  v26 = v2 + *(v0 + 32);
  sub_1DD827360();
  v28 = v4[3];
  v27 = v4[4];
  sub_1DD6E49C0(v4);
  sub_1DD6FEA9C();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v4);
    sub_1DD824154(v2 + v41, &qword_1ECD0E540);
    v30 = sub_1DD82676C();
    sub_1DD6FE2E0(v30, v31);
  }

  else
  {
    sub_1DD6F4434();
    sub_1DD6E1E84(v29);
    sub_1DD825A9C();
    sub_1DD8250A8();
    sub_1DD8758D0();
    sub_1DD6E0E18();
    sub_1DD6E59B8();
    sub_1DD702E94();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v32);
    sub_1DD825A9C();
    sub_1DD8250A8();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6EFF88();
    sub_1DD700CAC();
    sub_1DD6E40F8();
    sub_1DD8250A8();
    sub_1DD875860();
    v33 = *(v38 + 8);
    v34 = sub_1DD6FAA70();
    v35(v34);
    sub_1DD703E0C();
    v36 = sub_1DD82676C();
    sub_1DD6FE2E0(v36, v37);
    *v26 = v41;
    *(v26 + 16) = v0;
    sub_1DD701480();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v4);
    sub_1DD825C80();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD6FFDC4()
{
  v2 = *v0;
  v3 = v0[1];
}

void MessagePayload.RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD7038A0();
  v25 = sub_1DD710A9C(&qword_1ECD10F50, &qword_1DD8892C8);
  sub_1DD6DDEAC(v25);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6FF92C(v29, v99);
  v30 = sub_1DD710A9C(&qword_1ECD10F58, &qword_1DD8892D0);
  sub_1DD6DDEAC(v30);
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD824948(v34, v100);
  v35 = sub_1DD710A9C(&qword_1ECD10F60, &qword_1DD8892D8);
  sub_1DD6DDEAC(v35);
  v37 = *(v36 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD824FD8(v39, v101);
  v104 = sub_1DD710A9C(&qword_1ECD10F68, &qword_1DD8892E0);
  sub_1DD6DDEAC(v104);
  v41 = *(v40 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD824934(v43, v102);
  v44 = sub_1DD710A9C(&qword_1ECD10F70, &qword_1DD8892E8);
  v103 = sub_1DD6DDEAC(v44);
  v46 = *(v45 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6DEA6C();
  v105 = type metadata accessor for MessagePayload.RequestContent(0);
  v48 = sub_1DD6DE1C4(v105);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD6DFF40();
  v56 = v20[3];
  v55 = v20[4];
  v106 = v20;
  sub_1DD824D14(v20);
  sub_1DD6FDD68();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (a10)
  {
    goto LABEL_12;
  }

  v57 = sub_1DD875900();
  sub_1DD6ED750(v57, 0);
  sub_1DD826908();
  if (v58)
  {
    v59 = v105;
LABEL_11:
    sub_1DD875740();
    sub_1DD6E41BC();
    v73 = v72;
    v74 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v73 = v59;
    sub_1DD875810();
    sub_1DD6DF12C();
    v75 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v77 = *(v76 + 104);
    v78 = sub_1DD6FEB10();
    v79(v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    v80 = sub_1DD6DEBBC();
    v81(v80, v103);
LABEL_12:
    sub_1DD6E1EC8(v106);
    goto LABEL_13;
  }

  sub_1DD6E6120();
  sub_1DD6E42A8();
  if (v60 == v61)
  {
    __break(1u);
    JUMPOUT(0x1DD700620);
  }

  v68 = *(v67 + v66);
  v69 = sub_1DD6E988C(v62, v63, v64, v65, v66);
  sub_1DD6ED830(v69);
  sub_1DD8276EC();
  v71 = v70;
  swift_unknownObjectRelease();
  if (v105 != v71 >> 1)
  {
    v59 = v105;
    goto LABEL_11;
  }

  switch(v68)
  {
    case 1:
      LOBYTE(v107) = 1;
      sub_1DD6FDF68();
      sub_1DD8258DC();
      sub_1DD8278D8();
      sub_1DD700960();
      sub_1DD825368();
      sub_1DD8758D0();
      sub_1DD826B88();
      swift_unknownObjectRelease();
      v95 = sub_1DD825078();
      v96(v95);
      v97 = sub_1DD825B08();
      v98(v97, v103);
      *v22 = v107;
      v22[1] = v108;
      goto LABEL_17;
    case 2:
      sub_1DD826FE4();
      sub_1DD7FD730();
      sub_1DD8258DC();
      sub_1DD8278D8();
      sub_1DD7FD880();
      sub_1DD825368();
      sub_1DD8758D0();
      sub_1DD826B88();
      swift_unknownObjectRelease();
      v83 = sub_1DD825078();
      v84(v83);
      v85 = sub_1DD825B08();
      v86(v85, v103);
      *v21 = v107;
      *(v21 + 8) = v108;
      *(v21 + 16) = v109;
      goto LABEL_17;
    case 3:
      sub_1DD7FD6DC();
      sub_1DD8258DC();
      sub_1DD8278D8();
      type metadata accessor for SystemPromptResolution(0);
      sub_1DD6FAD50();
      sub_1DD6E1E84(v82);
      sub_1DD6F4500(&a18);
      sub_1DD8758D0();
      sub_1DD826B88();
      swift_unknownObjectRelease();
      v87 = sub_1DD825078();
      v88(v87);
      v89 = sub_1DD825B08();
      v90(v89, v103);
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0E18();
      goto LABEL_18;
    default:
      sub_1DD7FD7D8();
      sub_1DD8258DC();
      sub_1DD8278D8();
      sub_1DD7FD8D4();
      sub_1DD824DA8();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v91 = sub_1DD825088();
      v92(v91);
      v93 = sub_1DD6DED98();
      v94(v93, v103);
      sub_1DD82633C(&a15);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0E18();
LABEL_18:
      sub_1DD827250();
      sub_1DD6E0E18();
      sub_1DD8256C8();
      sub_1DD6E59B8();
      sub_1DD6E1EC8(v106);
      break;
  }

LABEL_13:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD700698()
{

  return sub_1DD6E5ABC();
}

uint64_t sub_1DD7006CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7006F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7006F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1886352499 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001DD8B6580 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

uint64_t static PreferencesDomain.otaResource.getter@<X0>(uint64_t a1@<X8>)
{
  static PreferencesDomain.otaResourceLock.getter(&v7);
  v2 = v7;
  v3 = *(*v7 + 96);
  swift_getAssociatedTypeWitness();
  v4 = sub_1DD8755C0();
  sub_1DD6E0540(v4);
  (*(v5 + 16))(a1, v2 + v3);
}

unint64_t sub_1DD700960()
{
  result = qword_1EE018550;
  if (!qword_1EE018550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018550);
  }

  return result;
}

void sub_1DD7009CC()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD825A04();
  v24 = v4;
  v7 = sub_1DD825C68(v5, v6);
  v9 = sub_1DD710A9C(v7, v8);
  sub_1DD6E125C(v9);
  v23 = v10;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = v0[3];
  v15 = v0[4];
  v16 = sub_1DD6E7320(v0);
  v3(v16);
  sub_1DD825680();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD6FAC28();
    v17 = sub_1DD875870();
    v19 = v18;
    v20 = *(v23 + 8);
    v21 = sub_1DD6DDEDC();
    v22(v21);
    *v24 = v17;
    v24[1] = v19;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD700B40()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

void *sub_1DD700B58(void *a1)
{

  return memcpy(a1, (v1 + 896), 0x50uLL);
}

uint64_t sub_1DD700B70()
{
  v2 = *(v0 + 24);

  return sub_1DD874910();
}

void sub_1DD700BB8(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
}

unint64_t sub_1DD700CAC()
{
  result = qword_1EE017A20;
  if (!qword_1EE017A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017A20);
  }

  return result;
}

uint64_t sub_1DD700D00()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return result;
}

uint64_t sub_1DD700D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return sub_1DD730620(&a20, &a9, a3, a4);
}

uint64_t sub_1DD700D88()
{

  return sub_1DD8755E0();
}

uint64_t sub_1DD700DA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 232);

  return sub_1DD8759D0();
}

uint64_t MessagePayload.ExternalAgentRequest.content.getter()
{
  sub_1DD6FAAAC();
  sub_1DD824764();
  return sub_1DD6E5870();
}

__n128 sub_1DD700E1C@<Q0>(int a1@<W8>)
{
  *v1 = a1;
  result = *(v2 - 96);
  *(v1 + 8) = result;
  return result;
}

uint64_t sub_1DD700E60()
{
  sub_1DD6E1F34();
  v5 = sub_1DD8278A8(v1, v2, v3, v4);
  sub_1DD6DF448(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return v0;
}

uint64_t sub_1DD700EAC()
{
  v0 = sub_1DD825338();
  v2 = *(v1(v0) + 20);
  return sub_1DD8263B0();
}

uint64_t sub_1DD700F0C()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  v3 = sub_1DD825320(*(v2 + 24));
  return sub_1DD6FF5F4(v3, v4);
}

uint64_t sub_1DD700F5C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1DD874770();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1DD70104C(v4, v9);
}

uint64_t sub_1DD701010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  return v4(v7, a3);
}

uint64_t sub_1DD70104C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD6E6658(a1, a2);
  }

  return a1;
}

unint64_t sub_1DD701060()
{
  result = qword_1EE013A48;
  if (!qword_1EE013A48)
  {
    sub_1DD717E88(&qword_1ECD16710, &qword_1DD8B10B0);
    sub_1DD6DEC94(&qword_1EE018CB0, 255, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013A48);
  }

  return result;
}

void _s16IntelligenceFlow13ActionSuccessV11returnValue11appLaunched11undoContextAC7ToolKit05TypedF0O_SbAC04UndoJ0VSgtcfC_0()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDFE4();
  v8 = type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6E0C90();
  v12 = sub_1DD70386C(v9, v10, v11, v8);
  v13 = type metadata accessor for ActionSuccess(v12);
  v14 = v13[5];
  sub_1DD827950();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v15, v16, v17, v18);
  v19 = v13[7];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v20, v21, v22, v8);
  v23 = (v3 + v13[9]);
  v24 = v3 + v13[10];
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_1DD8273A0(xmmword_1DD8890D0);
  v25 = v3 + v13[11];
  sub_1DD6F3588();
  v26 = sub_1DD874FA0();
  sub_1DD6DF448(v26);
  v28 = *(v27 + 32);
  v29 = sub_1DD825C04();
  v30(v29);
  *(v3 + v13[6]) = v1;
  sub_1DD807414();
  sub_1DD807414();
  *(v3 + v13[8]) = 0;
  *v23 = 0;
  v23[1] = 0;
  v31 = sub_1DD700D00();
  sub_1DD70148C(v31, v32, v33);
  sub_1DD6F3588();
  v34 = *(v24 + 24);
  v35 = *(v24 + 32);
  sub_1DD70148C(*v24, *(v24 + 8), *(v24 + 16));
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_1DD8273A0(xmmword_1DD8890D0);
  sub_1DD6DFED0();
}

uint64_t sub_1DD70135C()
{
  v0 = sub_1DD6E0CA8();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0);
  v1 = sub_1DD6DF188();

  return sub_1DD6E5E68(v1, v2, v3, v4);
}

void *sub_1DD701394(void *a1)
{

  return memcpy(a1, (v1 + 1136), 0x58uLL);
}

uint64_t sub_1DD7013AC()
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  return result;
}

uint64_t sub_1DD7013BC()
{

  return sub_1DD875A30();
}

void sub_1DD7013E8()
{
  v3 = &v0[*(v1 + 60)];
  *v3 = 0;
  v3[1] = 0;
  *v0 = v2;
}

void sub_1DD701444()
{
  *(v1 - 136) = v0;
  v2 = *(v1 - 120);
  *(v1 - 65) = 0;
}

uint64_t sub_1DD70148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t StatementID.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ExternalAgentOutcome.init(outcome:responseText:)()
{
  sub_1DD8250F8();
  ActionOutcome.asStatementOutcome.getter(v2);
  sub_1DD6DE600();
  sub_1DD6E5ABC();
  result = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t sub_1DD701560@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, _OWORD *a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  v10 = sub_1DD6DE1C4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  sub_1DD701870(v7, &v25 - v13, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1DD6E0628(EnumCaseMultiPayload, v16, type metadata accessor for SnippetStream);
      a3(0);
      sub_1DD6E150C();
      break;
    case 2:
      v20 = *(v14 + 1);
      *a4 = *v14;
      a4[1] = v20;
      a4[2] = *(v14 + 2);
      *(a4 + 42) = *(v14 + 42);
      a3(0);
      sub_1DD6E150C();
      break;
    case 3:
      v21 = *(v14 + 2);
      *a4 = *v14;
      *(a4 + 2) = v21;
      a3(0);
      sub_1DD6E150C();
      break;
    case 4:
      sub_1DD6E0628(EnumCaseMultiPayload, v16, type metadata accessor for ParameterNeedsValue);
      a3(0);
      sub_1DD6E150C();
      break;
    case 5:
      sub_1DD6E0628(EnumCaseMultiPayload, v16, type metadata accessor for ParameterConfirmation);
      a3(0);
      sub_1DD6E150C();
      break;
    case 6:
      v22 = *(v14 + 1);
      *a4 = *v14;
      a4[1] = v22;
      v23 = *(v14 + 3);
      a4[2] = *(v14 + 2);
      a4[3] = v23;
      a3(0);
      sub_1DD6E150C();
      break;
    case 7:
      sub_1DD6E0628(EnumCaseMultiPayload, v16, type metadata accessor for ParameterNotAllowed);
      a3(0);
      sub_1DD6E150C();
      break;
    case 8:
      sub_1DD6E0628(EnumCaseMultiPayload, v16, type metadata accessor for ParameterCandidatesNotFound);
      a3(0);
      sub_1DD6E150C();
      break;
    case 9:
      v17 = *(v14 + 4);
      v18 = v14[40];
      v19 = *(v14 + 1);
      *a4 = *v14;
      a4[1] = v19;
      *(a4 + 4) = v17;
      *(a4 + 40) = v18;
      a3(0);
      sub_1DD6E150C();
      break;
    case 10:
      *a4 = *v14;
      a3(0);
      sub_1DD6E150C();
      break;
    case 11:
      memcpy(a4, v14, 0x48uLL);
      a3(0);
      sub_1DD6E150C();
      break;
    default:
      sub_1DD6E0628(EnumCaseMultiPayload, v16, type metadata accessor for ActionSuccess);
      a3(0);
      sub_1DD6E150C();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DD701870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1DD6DE1C4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD7018D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1DD6DE1C4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void StatementOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD8272E8();
  v25 = sub_1DD710A9C(&qword_1ECD12778, &qword_1DD889FA0);
  sub_1DD6DF3FC(v25, &a16);
  v205[1] = v26;
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD8247DC(v30, v189);
  v31 = sub_1DD710A9C(&qword_1ECD12780, &qword_1DD889FA8);
  sub_1DD6DF3FC(v31, &a13);
  v203 = v32;
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD824AFC(v36, v190);
  v37 = sub_1DD710A9C(&qword_1ECD12788, &qword_1DD889FB0);
  sub_1DD6DF3FC(v37, &a11);
  v201 = v38;
  v40 = *(v39 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD825454(v42, v191);
  v43 = sub_1DD710A9C(&qword_1ECD12790, &qword_1DD889FB8);
  sub_1DD6DF3FC(v43, &v213[8]);
  v197 = v44;
  v46 = *(v45 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6E0C6C();
  v49 = sub_1DD6ED230(v48);
  v50 = type metadata accessor for ParameterCandidatesNotFound(v49);
  v51 = sub_1DD6DEDE0(v50, &v213[4]);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v54);
  v55 = sub_1DD710A9C(&qword_1ECD12798, &qword_1DD889FC0);
  sub_1DD6DF3FC(v55, &v213[3]);
  v57 = *(v56 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6E0C6C();
  v60 = sub_1DD6ED230(v59);
  v61 = type metadata accessor for ParameterNotAllowed(v60);
  v62 = sub_1DD6DEDE0(v61, &v211[64]);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v65);
  v66 = sub_1DD710A9C(&qword_1ECD127A0, &qword_1DD889FC8);
  sub_1DD6DF3FC(v66, &v212);
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD8253E0(v70, v192);
  v71 = sub_1DD710A9C(&qword_1ECD127A8, &qword_1DD889FD0);
  sub_1DD6DF3FC(v71, &v211[40]);
  v73 = *(v72 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD6E0C6C();
  v76 = sub_1DD6ED230(v75);
  v77 = type metadata accessor for ParameterConfirmation(v76);
  v78 = sub_1DD6DEDE0(v77, &v211[8]);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v81);
  v82 = sub_1DD710A9C(&qword_1ECD127B0, &qword_1DD889FD8);
  sub_1DD6DF3FC(v82, v211);
  v84 = *(v83 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1DD6E0C6C();
  v87 = sub_1DD6ED230(v86);
  v88 = type metadata accessor for ParameterNeedsValue(v87);
  v89 = sub_1DD6DEDE0(v88, &v207);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v92);
  v93 = sub_1DD710A9C(&qword_1ECD127B8, &qword_1DD889FE0);
  sub_1DD6DF3FC(v93, &v206);
  v95 = *(v94 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1DD8253C8(v97, v193);
  v98 = sub_1DD710A9C(&qword_1ECD127C0, &qword_1DD889FE8);
  sub_1DD6DF3FC(v98, v205);
  v100 = *(v99 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v101);
  sub_1DD8254B0(v102, v194);
  v103 = sub_1DD710A9C(&qword_1ECD127C8, &qword_1DD889FF0);
  sub_1DD6DF3FC(v103, &v201);
  v105 = *(v104 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v106);
  sub_1DD6E0C6C();
  v108 = sub_1DD6ED230(v107);
  v109 = type metadata accessor for SnippetStream(v108);
  v110 = sub_1DD6DEDE0(v109, &v197);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v113);
  v114 = sub_1DD710A9C(&qword_1ECD127D0, &qword_1DD889FF8);
  sub_1DD6DF3FC(v114, &v196);
  v116 = *(v115 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v117);
  sub_1DD6E17C8();
  v118 = type metadata accessor for ActionSuccess(0);
  v119 = sub_1DD6DE1C4(v118);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  sub_1DD6E6200();
  v122 = type metadata accessor for StatementOutcome(0);
  v123 = sub_1DD8247B4(v122);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  sub_1DD8247F4();
  v126 = sub_1DD710A9C(&qword_1ECD127D8, &qword_1DD88A000);
  v209 = sub_1DD6DDEAC(v126);
  v210 = v127;
  v129 = *(v128 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v130);
  sub_1DD6DDFE4();
  v131 = v20[3];
  v132 = v20[4];
  sub_1DD824D14(v20);
  sub_1DD702954();
  v208 = v21;
  sub_1DD77E6F4();
  sub_1DD8268F0();
  sub_1DD875BB0();
  sub_1DD6ED690();
  sub_1DD827328();
  sub_1DD6E5870();
  sub_1DD825998();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E5B50(&v198);
      sub_1DD826920();
      sub_1DD804B30();
      sub_1DD6E1828(&v199);
      sub_1DD6E70E4();
      sub_1DD6E1E84(v170);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v201);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v171 = sub_1DD6FC4B0(&v200);
      v172(v171);
      goto LABEL_15;
    case 2u:
      sub_1DD826790();
      sub_1DD804ADC();
      sub_1DD6E1828(&v202);
      sub_1DD826D08();
      sub_1DD6E374C(v205);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v156 = sub_1DD6FC4B0(&v203);
      v157(v156);
      v158 = sub_1DD6DE58C();
      v159(v158);
      sub_1DD80043C(v213);
      goto LABEL_17;
    case 3u:
      v161 = *v22;
      v160 = v22[1];
      v162 = v22[2];
      sub_1DD826AA0();
      sub_1DD804A88();
      sub_1DD825CA4(&v204);
      sub_1DD6FF7A8();
      sub_1DD82708C();
      v213[0] = v161;
      v213[1] = v160;
      v213[2] = v162;
      sub_1DD804548();
      sub_1DD6E374C(&v206);
      sub_1DD826A40();
      v163 = sub_1DD8249F4();
      v164(v163);
      v165 = sub_1DD824838();
      v166(v165);

      goto LABEL_13;
    case 4u:
      sub_1DD6E5B50(&v208);
      sub_1DD827560();
      sub_1DD804A34();
      sub_1DD6E1828(&v209);
      sub_1DD6DEC60();
      sub_1DD6E1E84(v142);
      sub_1DD6FAD44();
      sub_1DD6E374C(v211);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v143 = sub_1DD6FC4B0(&v210);
      v144(v143);
      goto LABEL_15;
    case 5u:
      sub_1DD6E5B50(&v211[16]);
      sub_1DD827554();
      sub_1DD8049E0();
      sub_1DD6E1828(&v211[24]);
      sub_1DD6E0FE0();
      sub_1DD6E1E84(v173);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v211[40]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v174 = sub_1DD6FC4B0(&v211[32]);
      v175(v174);
      goto LABEL_15;
    case 6u:
      sub_1DD6FF108();
      sub_1DD80498C();
      sub_1DD6E1828(&v211[48]);
      sub_1DD827798();
      sub_1DD6E374C(&v212);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v176 = sub_1DD6FC4B0(&v211[56]);
      v177(v176);
      v178 = sub_1DD6DE58C();
      v179(v178);
      sub_1DD80040C(v213);
      goto LABEL_17;
    case 7u:
      sub_1DD6E5B50(v213);
      sub_1DD700930();
      sub_1DD804938();
      sub_1DD6E1828(&v213[1]);
      sub_1DD824904();
      sub_1DD6E1E84(v167);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v213[3]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v168 = sub_1DD6FC4B0(&v213[2]);
      v169(v168);
      goto LABEL_15;
    case 8u:
      sub_1DD6E5B50(&v213[5]);
      sub_1DD827348();
      sub_1DD8048E4();
      sub_1DD6E1828(&v213[6]);
      sub_1DD8248EC();
      sub_1DD6E1E84(v186);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v213[8]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v187 = sub_1DD6FC4B0(&v213[7]);
      v188(v187);
LABEL_15:
      sub_1DD6E5ABC();
      v136 = sub_1DD6DE58C();
      goto LABEL_16;
    case 9u:
      sub_1DD8267B4();
      sub_1DD804890();
      sub_1DD8256D4(&v214);
      sub_1DD6E9938();
      sub_1DD827830();
      sub_1DD8266A8();
      v145 = v202;
      sub_1DD8256BC();
      sub_1DD8759D0();
      v146 = sub_1DD702E84(&a10);
      v147(v146, v145);
      v148 = *(v210 + 8);
      v149 = sub_1DD6E6378();
      v150(v149);
      sub_1DD827328();
      sub_1DD82731C();
      sub_1DD8267F0();
      sub_1DD8003E4(v151, v152, v153, v154, v155, v118);
      goto LABEL_17;
    case 0xAu:
      v180 = *v22;
      sub_1DD827354();
      sub_1DD80483C();
      sub_1DD8272FC();
      sub_1DD6F9BEC(v181);
      sub_1DD6F3128();
      sub_1DD826AAC();
      v213[0] = v180;
      sub_1DD804254();
      sub_1DD8255D0(&a13);
      sub_1DD8759D0();
      v182 = sub_1DD6DF174(&a12);
      v183(v182);
      v184 = sub_1DD824A60();
      v185(v184);
LABEL_13:

      goto LABEL_17;
    case 0xBu:
      memcpy(v213, v22, sizeof(v213));
      v211[0] = 11;
      sub_1DD8047E8();
      sub_1DD6E1828(&a14);
      memcpy(v211, v213, sizeof(v211));
      sub_1DD8041AC();
      sub_1DD6E374C(&a16);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v138 = sub_1DD6FC4B0(&a15);
      v139(v138);
      v140 = sub_1DD6DE58C();
      v141(v140);
      sub_1DD8003B4(v213);
      goto LABEL_17;
    default:
      sub_1DD6E6378();
      sub_1DD6E59B8();
      LOBYTE(v213[0]) = 0;
      sub_1DD702AC0();
      sub_1DD6F3128();
      sub_1DD826AAC();
      sub_1DD6E41D4();
      sub_1DD6E1E84(v133);
      sub_1DD6FAC4C(&v196);
      sub_1DD827280();
      sub_1DD6DEDD4(&v195);
      v134 = sub_1DD825C04();
      v135(v134);
      sub_1DD6FADF0();
      sub_1DD6E5ABC();
      v136 = sub_1DD824A60();
LABEL_16:
      v137(v136);
LABEL_17:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

unint64_t sub_1DD702954()
{
  result = qword_1EE017568[0];
  if (!qword_1EE017568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE017568);
  }

  return result;
}

void *sub_1DD7029B4(void *a1)
{

  return memcpy(a1, v1, 0x58uLL);
}

uint64_t sub_1DD7029E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 20);

  return sub_1DD874910();
}

int *sub_1DD702A10(int *result)
{
  *(v2 + result[9]) = 2;
  *(v2 + result[10]) = v1;
  v3 = (v2 + result[11]);
  *v3 = 0;
  v3[1] = 0;
  v4 = result[8];
  return result;
}

uint64_t sub_1DD702A7C()
{
  v2 = *(v0 - 256);

  return sub_1DD8758D0();
}

unint64_t sub_1DD702AC0()
{
  result = qword_1EE017540;
  if (!qword_1EE017540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017540);
  }

  return result;
}

uint64_t sub_1DD702B14()
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = *(v0 + 136);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1DD702B64(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = sub_1DD8270A4();
      break;
    case 2:
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD702CF4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 12);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1DD6DEAA4(v8);
}

_BYTE *sub_1DD702D80(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD702E3CLL);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

__n128 sub_1DD702E64()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = v0[3];
  return result;
}

void ActionSuccess.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  v3 = sub_1DD710A9C(&qword_1ECD12980, &qword_1DD88A0F8);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7031E0();
  sub_1DD6E1808();
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v7);
  sub_1DD825A9C();
  sub_1DD6E9630();
  sub_1DD8759D0();
  if (!v0)
  {
    v8 = type metadata accessor for ActionSuccess(0);
    sub_1DD82553C(v8);
    type metadata accessor for ActionSuccess.UndoContext(0);
    sub_1DD825F20();
    sub_1DD6E1E84(v9);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    v10 = *(v1 + v2[6]);
    sub_1DD6E5334();
    sub_1DD875980();
    v11 = v2[7];
    type metadata accessor for ActionSuccess.FollowUpAction(0);
    sub_1DD825F08();
    sub_1DD6E1E84(v12);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    v13 = *(v1 + v2[8]);
    LOBYTE(v24) = 4;
    sub_1DD6E5334();
    sub_1DD875980();
    sub_1DD6F8CE0(v2[9]);
    sub_1DD82673C(5);
    sub_1DD705DBC();
    sub_1DD875920();
    v14 = sub_1DD6F8CE0(v2[10]);
    v17 = sub_1DD826E70(v14, v15, v16);
    sub_1DD703958(v17, v18, v19);
    sub_1DD703904();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD70148C(v24, v26, v28);
    v25 = sub_1DD6F8CE0(v2[11]);
    v27 = v21;
    v29 = *(v20 + 16);
    sub_1DD703958(v25, v21, v29);
    sub_1DD70396C();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD70148C(v25, v27, v29);
  }

  v22 = sub_1DD6EFFB4();
  v23(v22);
  sub_1DD826F90();
  sub_1DD826CF4();
}

unint64_t sub_1DD703164()
{
  result = qword_1EE017B00;
  if (!qword_1EE017B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017B00);
  }

  return result;
}

unint64_t sub_1DD7031E0()
{
  result = qword_1EE018900;
  if (!qword_1EE018900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018900);
  }

  return result;
}

uint64_t sub_1DD70328C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t sub_1DD7032A4()
{

  return sub_1DD875800();
}

uint64_t sub_1DD7032C4()
{

  return sub_1DD874D80();
}

_BYTE *sub_1DD7032EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD7033A8);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD7033D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 8);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1DD6DEAA4(v8);
}

void MessagePayload.ExternalAgentOutcome.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD11900, &qword_1DD8897F0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7035D8();
  sub_1DD6E1808();
  v6 = sub_1DD825C8C();
  type metadata accessor for StatementOutcome(v6);
  sub_1DD6DE08C();
  sub_1DD6E1E84(v7);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v10 = *(v1 + *(type metadata accessor for MessagePayload.ExternalAgentOutcome(0) + 20));
    sub_1DD82682C();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD824C1C(&unk_1EE015DC0);
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v8 = sub_1DD6EFFB4();
  v9(v8);
  sub_1DD825790();
  sub_1DD826CF4();
}

unint64_t sub_1DD7035D8()
{
  result = qword_1EE0180E0[0];
  if (!qword_1EE0180E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0180E0);
  }

  return result;
}

_BYTE *sub_1DD703634(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD7036F0);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD703720(char a1)
{
  result = 0x61566E7275746572;
  switch(a1)
  {
    case 1:
      result = 0x746E6F436F646E75;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7055776F6C6C6F66;
      break;
    case 4:
      result = 0x704F646C756F6873;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x726F747365636E61;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD703884()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

uint64_t _s16IntelligenceFlow21ParameterConfirmationV14parameterIndexSiSgvg_0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1DD7038AC()
{

  return sub_1DD874820();
}

uint64_t sub_1DD7038D8()
{
  v3 = *(v2 - 160);
  v4 = *(*(v2 - 152) + 8);
  return v0 + *(v1 + 20);
}

unint64_t sub_1DD703904()
{
  result = qword_1EE018CA0;
  if (!qword_1EE018CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018CA0);
  }

  return result;
}

uint64_t sub_1DD703958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1DD70396C()
{
  result = qword_1EE018C78;
  if (!qword_1EE018C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C78);
  }

  return result;
}

uint64_t sub_1DD7039E0(char a1)
{
  if (a1)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_1DD703A30(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    sub_1DD717E88(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DD703A98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD6ED408();
    sub_1DD717E88(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD703B00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MessagePayload.ExternalAgentOutcome.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = type metadata accessor for StatementOutcome(0);
  v4 = sub_1DD8247B4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  sub_1DD8268E4(v7);
  v8 = sub_1DD710A9C(&qword_1ECD11908, &qword_1DD8897F8);
  sub_1DD6DDEAC(v8);
  v23 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E7258();
  v13 = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  v14 = sub_1DD6DE1C4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD824734();
  v18 = v0[3];
  v17 = v0[4];
  sub_1DD6E7320(v0);
  sub_1DD7035D8();
  sub_1DD7039CC();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6DE08C();
    sub_1DD6E1E84(v19);
    sub_1DD6F9A4C();
    sub_1DD6EE298();
    sub_1DD8758D0();
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD82552C();
    sub_1DD6FF744(&qword_1EE015DB8);
    sub_1DD824B6C();
    sub_1DD8258B8();
    sub_1DD6EE298();
    sub_1DD8758D0();
    v20 = *(v23 + 8);
    v21 = sub_1DD825570();
    v22(v21);
    *(v1 + *(v13 + 20)) = v24;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

__n128 sub_1DD703E0C()
{
  result = *(v0 - 104);
  *(v0 - 128) = result;
  v2 = *(v0 - 88);
  return result;
}

uint64_t _s16IntelligenceFlow14MessagePayloadO21RequestPrescribedPlanO11DisplayToolV5query10isExplicit7partnerAGSS_SbSSSgtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void StatementOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v26;
  a20 = v27;
  sub_1DD7038A0();
  v225 = v28;
  v29 = sub_1DD710A9C(&qword_1ECD12838, &qword_1DD88A008);
  sub_1DD6DF3FC(v29, &a11);
  v215 = v30;
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD825428(v34, v204);
  v35 = sub_1DD710A9C(&qword_1ECD12840, &qword_1DD88A010);
  sub_1DD6DF3FC(v35, &a10);
  v224 = v36;
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824B94(v40, v205);
  v41 = sub_1DD710A9C(&qword_1ECD12848, &qword_1DD88A018);
  sub_1DD6DF3FC(v41, &v237);
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6E0C6C();
  sub_1DD826F24(v45);
  v46 = sub_1DD710A9C(&qword_1ECD12850, &qword_1DD88A020);
  sub_1DD6DF3FC(v46, &v236);
  v48 = *(v47 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD825410(v50, v206);
  v51 = sub_1DD710A9C(&qword_1ECD12858, &qword_1DD88A028);
  sub_1DD6DF3FC(v51, &v235[24]);
  v53 = *(v52 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD8249DC(v55, v207);
  v56 = sub_1DD710A9C(&qword_1ECD12860, &qword_1DD88A030);
  sub_1DD6DF3FC(v56, &v235[16]);
  v58 = *(v57 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD825480(v60, v208);
  v61 = sub_1DD710A9C(&qword_1ECD12868, &qword_1DD88A038);
  sub_1DD6DF3FC(v61, &v235[8]);
  v63 = *(v62 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD705DF0(v65, v209);
  v66 = sub_1DD710A9C(&qword_1ECD12870, &qword_1DD88A040);
  sub_1DD6DF3FC(v66, &v234.n128_i64[1]);
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD824934(v70, v210);
  v71 = sub_1DD710A9C(&qword_1ECD12878, &qword_1DD88A048);
  sub_1DD6DF3FC(v71, &v234);
  v73 = *(v72 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD824CB0(v75, v211);
  v76 = sub_1DD710A9C(&qword_1ECD12880, &qword_1DD88A050);
  sub_1DD6DF3FC(v76, &v233.n128_i64[1]);
  v78 = *(v77 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD8247DC(v80, v212);
  v81 = sub_1DD710A9C(&qword_1ECD12888, &qword_1DD88A058);
  sub_1DD6DF3FC(v81, &v233);
  v83 = *(v82 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1DD824FB0(v85);
  v86 = sub_1DD710A9C(&qword_1ECD12890, &qword_1DD88A060);
  sub_1DD6DF3FC(v86, &v231);
  v88 = *(v87 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v89);
  sub_1DD825498(v90, v213);
  v231 = sub_1DD710A9C(&qword_1ECD12898, &qword_1DD88A068);
  sub_1DD6DDEAC(v231);
  v226 = v91;
  v93 = *(v92 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v94);
  v95 = sub_1DD700BA4();
  v230 = type metadata accessor for StatementOutcome(v95);
  v96 = sub_1DD6DE1C4(v230);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v99);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v100);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v101);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v102);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v104);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v105);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v106);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v107);
  sub_1DD825884();
  MEMORY[0x1EEE9AC00](v108);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v109);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v110);
  sub_1DD6DEBEC();
  v111 = v20[3];
  v112 = v20[4];
  v232 = v20;
  sub_1DD70066C();
  sub_1DD702954();
  v229 = v24;
  sub_1DD6EF0F4();
  sub_1DD8270F4();
  if (v21)
  {
LABEL_12:
    sub_1DD6E1EC8(v232);
    goto LABEL_13;
  }

  v113 = sub_1DD8262EC();
  sub_1DD6ED750(v113, 0);
  sub_1DD826908();
  if (v114)
  {
    goto LABEL_9;
  }

  sub_1DD6E6120();
  sub_1DD6E42A8();
  if (v121 == v122)
  {
    __break(1u);
    JUMPOUT(0x1DD705174);
  }

  v123 = *(v120 + v119);
  v124 = sub_1DD6E988C(v115, v116, v117, v118, v119);
  sub_1DD6ED830(v124);
  sub_1DD8276EC();
  v126 = v125;
  swift_unknownObjectRelease();
  if (v112 != v126 >> 1)
  {
LABEL_9:
    sub_1DD875740();
    sub_1DD6E41BC();
    v132 = sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    sub_1DD827778(v132);
    sub_1DD6DF12C();
    v133 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v135 = *(v134 + 104);
    v136 = sub_1DD6FEB10();
    v137(v136);
    swift_willThrow();
    swift_unknownObjectRelease();
    v138 = sub_1DD6DEBBC();
LABEL_10:
    v140 = v23;
LABEL_11:
    v139(v138, v140);
    goto LABEL_12;
  }

  v127 = v224;
  switch(v123)
  {
    case 1:
      sub_1DD826920();
      sub_1DD804B30();
      sub_1DD825CBC(&a13);
      sub_1DD82499C();
      sub_1DD875800();
      type metadata accessor for SnippetStream(0);
      sub_1DD825D04();
      sub_1DD6E70E4();
      sub_1DD6E1E84(v150);
      sub_1DD6F4500(&v217);
      sub_1DD826D30();
      sub_1DD825820();
      v181 = sub_1DD6FFA00(&v220);
      v182(v181, v25);
      v183 = sub_1DD824838();
      v184(v183);
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0B14();
      goto LABEL_39;
    case 2:
      sub_1DD826FF0();
      sub_1DD804ADC();
      sub_1DD825CBC(&a14);
      sub_1DD8247C8();
      sub_1DD875800();
      sub_1DD803354();
      sub_1DD6E9938();
      sub_1DD827860();
      sub_1DD8248A0(&v232);
      swift_unknownObjectRelease();
      v164 = *v126;
      v165 = sub_1DD6E6378();
      v166(v165);
      v167 = sub_1DD825290();
      v168(v167);
      sub_1DD826888(&v215, v233, v234);
      MEMORY[0x20] = *v235;
      MEMORY[0x2A] = *&v235[10];
      sub_1DD825C04();
      goto LABEL_35;
    case 3:
      sub_1DD826AA0();
      sub_1DD804A88();
      sub_1DD8247C8();
      sub_1DD875800();
      sub_1DD804794();
      sub_1DD824A28();
      sub_1DD825CB0();
      sub_1DD8758D0();
      sub_1DD6FF0D8();
      sub_1DD825820();
      v169 = sub_1DD6FAC78(&v221);
      v170(v169);
      v171 = sub_1DD8252F0();
      v172(v171);
      sub_1DD6FE2CC(v234.n128_u64[0], v233);
      goto LABEL_35;
    case 4:
      sub_1DD827560();
      sub_1DD804A34();
      v23 = v231;
      sub_1DD8257E0();
      sub_1DD875800();
      type metadata accessor for ParameterNeedsValue(0);
      sub_1DD825D04();
      sub_1DD6DEC60();
      sub_1DD6E1E84(v152);
      sub_1DD6EFF94(&v227);
      sub_1DD825734();
      sub_1DD8758D0();
      if (v123)
      {
        swift_unknownObjectRelease();
        v129 = sub_1DD824890(&v222);
        v131 = v127;
        goto LABEL_28;
      }

      sub_1DD825820();
      v156 = sub_1DD824890(&v222);
      v157(v156, v127);
      v158 = sub_1DD825704();
      v159(v158, v23);
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0B14();
LABEL_36:
      sub_1DD827250();
      v199 = v232;
      goto LABEL_40;
    case 5:
      sub_1DD827554();
      sub_1DD8049E0();
      sub_1DD825698(&a15);
      sub_1DD8247C8();
      sub_1DD875800();
      type metadata accessor for ParameterConfirmation(0);
      sub_1DD825D04();
      sub_1DD6E0FE0();
      sub_1DD6E1E84(v151);
      sub_1DD702944(&v228);
      sub_1DD824AC4();
      sub_1DD6DEB0C();
      sub_1DD8758D0();
      sub_1DD6FF0D8();
      sub_1DD825820();
      v185 = sub_1DD6FAC78(&v223);
      v186(v185);
      v187 = sub_1DD825A90();
      v188(v187, v231);
      sub_1DD826AD4();
      goto LABEL_38;
    case 6:
      v233.n128_u8[0] = 6;
      sub_1DD80498C();
      sub_1DD825698(&a16);
      sub_1DD8247C8();
      sub_1DD875800();
      sub_1DD803300();
      sub_1DD824A28();
      sub_1DD825CB0();
      sub_1DD8758D0();
      sub_1DD8248A0(v235);
      swift_unknownObjectRelease();
      v189 = *v126;
      v190 = sub_1DD825674();
      v191(v190);
      v192 = sub_1DD825290();
      v193(v192);
      sub_1DD82641C();
      goto LABEL_35;
    case 7:
      sub_1DD700930();
      sub_1DD804938();
      sub_1DD825698(&a17);
      sub_1DD82499C();
      sub_1DD875800();
      type metadata accessor for ParameterNotAllowed(0);
      sub_1DD825D04();
      sub_1DD824904();
      sub_1DD6E1E84(v148);
      sub_1DD702944(&v229);
      sub_1DD825734();
      sub_1DD8758D0();
      if (v123)
      {
        swift_unknownObjectRelease();
        v149 = &v224;
        goto LABEL_31;
      }

      sub_1DD825820();
      v173 = sub_1DD6FFA00(&v224);
      v174(v173, v127);
      v175 = sub_1DD824838();
      v176(v175);
      sub_1DD826AD4();
      goto LABEL_38;
    case 8:
      sub_1DD827348();
      sub_1DD8048E4();
      sub_1DD825698(&a18);
      sub_1DD82499C();
      sub_1DD875800();
      type metadata accessor for ParameterCandidatesNotFound(0);
      sub_1DD825D04();
      sub_1DD8248EC();
      sub_1DD6E1E84(v153);
      sub_1DD702944(&v230);
      sub_1DD825734();
      sub_1DD8758D0();
      if (v123)
      {
        swift_unknownObjectRelease();
        v149 = &v225;
LABEL_31:
        v154 = sub_1DD6FFA00(v149);
        v155(v154, v127);
        v138 = sub_1DD824838();
        goto LABEL_11;
      }

      sub_1DD825820();
      v200 = sub_1DD6FFA00(&v225);
      v201(v200, v224);
      v202 = sub_1DD824838();
      v203(v202);
      sub_1DD826AD4();
LABEL_38:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0B14();
      goto LABEL_39;
    case 9:
      v233.n128_u8[0] = 9;
      sub_1DD804890();
      sub_1DD8247C8();
      sub_1DD875800();
      sub_1DD804740();
      sub_1DD824A28();
      sub_1DD825CB0();
      sub_1DD8758D0();
      sub_1DD6FF0D8();
      sub_1DD825820();
      v160 = sub_1DD6FAC78(&v226);
      v161(v160);
      v162 = sub_1DD8252F0();
      v163(v162);
      sub_1DD8260E8();
      goto LABEL_35;
    case 10:
      sub_1DD827354();
      sub_1DD80483C();
      sub_1DD6E3A54();
      sub_1DD8247C8();
      sub_1DD875800();
      sub_1DD8046EC();
      sub_1DD824A28();
      sub_1DD8265E4();
      sub_1DD8758D0();
      sub_1DD6FF0D8();
      sub_1DD825820();
      v194 = *(v224 + 8);
      v195 = sub_1DD6EFF74();
      v196(v195);
      v197 = sub_1DD8252F0();
      v198(v197);
      *v214 = v233.n128_u64[0];
      sub_1DD826850();
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0B14();
      goto LABEL_36;
    case 11:
      v233.n128_u8[0] = 11;
      sub_1DD8047E8();
      sub_1DD8247C8();
      sub_1DD875800();
      sub_1DD804698();
      sub_1DD824A28();
      sub_1DD825CB0();
      sub_1DD8758D0();
      sub_1DD8248A0(&a9);
      swift_unknownObjectRelease();
      v141 = *v126;
      v142 = sub_1DD825674();
      v143(v142);
      v144 = sub_1DD825290();
      v145(v144);
      v146 = sub_1DD82633C(&v218);
      memcpy(v146, v147, 0x48uLL);
      sub_1DD826850();
LABEL_35:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0B14();
      goto LABEL_39;
    default:
      v233.n128_u8[0] = 0;
      sub_1DD702AC0();
      sub_1DD825CBC(&a12);
      v23 = v231;
      sub_1DD8257E0();
      sub_1DD875800();
      type metadata accessor for ActionSuccess(0);
      sub_1DD825D04();
      sub_1DD6E41D4();
      sub_1DD6E1E84(v128);
      sub_1DD825CA4(&v216);
      sub_1DD824AC4();
      sub_1DD8758D0();
      if (v123)
      {
        swift_unknownObjectRelease();
        v129 = sub_1DD6FA9F4(&v219);
        v131 = v22;
LABEL_28:
        v130(v129, v131);
        v138 = sub_1DD825704();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
      v177 = sub_1DD6FA9F4(&v219);
      v178(v177, v22);
      v179 = sub_1DD825704();
      v180(v179, v23);
      swift_storeEnumTagMultiPayload();
      sub_1DD6E0B14();
LABEL_39:
      sub_1DD827250();
      v199 = v232;
LABEL_40:
      sub_1DD6E0B14();
      sub_1DD8256C8();
      sub_1DD6E59B8();
      sub_1DD6E1EC8(v199);
      sub_1DD8273AC();
      break;
  }

LABEL_13:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t _s16IntelligenceFlow21ParameterConfirmationV14parameterIndexSiSgvs_0(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1DD7051D8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_1DD705200@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 160);
  v4 = *(v1 - 152);

  return sub_1DD875910();
}

uint64_t sub_1DD70523C()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x73736563637573 && v2 == 0xE700000000000000;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v1 == sub_1DD8270A4() && v0 == v5;
    if (v6 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0xD000000000000012 && 0x80000001DD8B6BC0 == v0;
      if (v7 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0xD000000000000012 && 0x80000001DD8B6DA0 == v0;
        if (v8 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
        {

          return 3;
        }

        else
        {
          sub_1DD826BC0();
          v10 = v3 && v9 == v0;
          if (v10 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
          {

            return 4;
          }

          else
          {
            v11 = v1 == 0xD000000000000015 && 0x80000001DD8B6C00 == v0;
            if (v11 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
            {

              return 5;
            }

            else
            {
              v12 = v1 == 0xD000000000000017 && 0x80000001DD8B6C20 == v0;
              if (v12 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
              {

                return 6;
              }

              else
              {
                sub_1DD826BC0();
                v14 = v3 && v13 == v0;
                if (v14 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
                {

                  return 7;
                }

                else
                {
                  v15 = v1 == 0xD00000000000001BLL && 0x80000001DD8B6DE0 == v0;
                  if (v15 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = v1 == 0xD000000000000011 && 0x80000001DD8B6E00 == v0;
                    if (v16 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
                    {

                      return 9;
                    }

                    else
                    {
                      sub_1DD826BC0();
                      v18 = v3 && v17 == v0;
                      if (v18 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
                      {

                        return 10;
                      }

                      else if (v1 == 0x6572756C696166 && v0 == 0xE700000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        sub_1DD824AA4();
                        sub_1DD875A30();
                        sub_1DD82698C();
                        if (v1)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_1DD70553C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD70523C();
  *a1 = result;
  return result;
}

void sub_1DD705584()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD784984();
}

void ActionSuccess.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  sub_1DD8264F0(v27);
  v28 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
  sub_1DD6DEA10(v28);
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD8249DC(v32, v80);
  v33 = sub_1DD710A9C(&qword_1ECD125C0, &qword_1DD889EC0);
  sub_1DD6DEA10(v33);
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0C6C();
  sub_1DD6ED230(v37);
  v88 = sub_1DD874FA0();
  v38 = sub_1DD6DDEAC(v88);
  v82 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6DDEE8();
  sub_1DD826F24(v42);
  v83 = sub_1DD710A9C(&qword_1ECD12988, &qword_1DD88A100);
  sub_1DD6DDEAC(v83);
  v81 = v43;
  v45 = *(v44 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6DEA6C();
  v47 = type metadata accessor for ActionSuccess(0);
  v48 = sub_1DD6DE1C4(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6E6200();
  v52 = *(v51 + 20);
  v53 = type metadata accessor for ActionSuccess.UndoContext(0);
  v86 = v52;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v54, v55, v56, v53);
  v57 = v47[7];
  v58 = type metadata accessor for ActionSuccess.FollowUpAction(0);
  v84 = v57;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v59, v60, v61, v58);
  v62 = v22 + v47[10];
  *v62 = 0;
  *(v62 + 8) = 0;
  *(v62 + 16) = xmmword_1DD8890D0;
  *(v62 + 32) = 0;
  v85 = v22;
  v63 = (v22 + v47[11]);
  *v63 = 0;
  v63[1] = 0;
  v87 = v63;
  v63[2] = 1;
  v65 = v26[3];
  v64 = v26[4];
  sub_1DD6FE8B0(v26);
  sub_1DD7031E0();
  sub_1DD6E17D8();
  sub_1DD826FB4();
  sub_1DD875B90();
  if (v20)
  {
    sub_1DD6E1EC8(v26);
    sub_1DD824154(v85 + v86, &qword_1ECD125C0);
    sub_1DD824154(v85 + v84, &qword_1ECD125B0);

    v74 = *(v62 + 24);
    v75 = *(v62 + 32);
    sub_1DD70148C(*v62, *(v62 + 8), *(v62 + 16));
    sub_1DD70148C(*v87, v87[1], v87[2]);
  }

  else
  {
    sub_1DD6E05D4();
    sub_1DD6E1E84(v66);
    sub_1DD8276BC();
    sub_1DD8758D0();
    v67 = *(v82 + 32);
    v68 = sub_1DD6DEA04();
    v69(v68);
    sub_1DD825F20();
    sub_1DD6E1E84(v70);
    sub_1DD8276BC();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD826554(2);
    v71 = sub_1DD875880();
    sub_1DD827578(v71);
    LOBYTE(v89) = v72;
    sub_1DD825F08();
    sub_1DD6E1E84(v73);
    sub_1DD8276BC();
    sub_1DD8269BC(&a17);
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD826554(4);
    *(v85 + v47[8]) = sub_1DD875880() & 1;
    sub_1DD826554(5);
    v76 = sub_1DD875820();
    sub_1DD82692C(v76, v77, v47[9]);
    sub_1DD6FFDDC();
    sub_1DD705C9C();
    sub_1DD827110();
    v78 = *(v62 + 24);
    v79 = *(v62 + 32);
    sub_1DD70148C(*v62, *(v62 + 8), *(v62 + 16));
    *v62 = v89;
    *(v62 + 16) = v90;
    *(v62 + 32) = v91;
    sub_1DD826E94();
    sub_1DD705D68();
    sub_1DD827110();
    (*(v81 + 8))(v21, v83);
    sub_1DD70148C(*v87, v87[1], v87[2]);
    *v87 = v89;
    v87[2] = v90;
    sub_1DD70131C();
    sub_1DD82731C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v26);
    sub_1DD6FADF0();
    sub_1DD6E5ABC();
  }

  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t sub_1DD705C38()
{
  v2 = *(v0 - 104);

  return sub_1DD8759D0();
}

unint64_t sub_1DD705C9C()
{
  result = qword_1EE018C98;
  if (!qword_1EE018C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C98);
  }

  return result;
}

uint64_t sub_1DD705D04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1DD705D68()
{
  result = qword_1EE018C70;
  if (!qword_1EE018C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C70);
  }

  return result;
}

uint64_t sub_1DD705E08()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t MessagePayload.ExternalAgentOutcome.statementOutcome.getter()
{
  sub_1DD6FAAAC();
  sub_1DD6ED690();
  return sub_1DD6E5870();
}

uint64_t sub_1DD705E50()
{
  v1 = sub_1DD826B18();
  v3 = *(v0 + *(v2(v1) + 20));
}

uint64_t sub_1DD705F08()
{
  v0 = sub_1DD825338();
  v2 = *(v1(v0) + 28);
  return sub_1DD8263B0();
}

uint64_t sub_1DD705FA4()
{
  v0 = sub_1DD826B18();
  v2 = v1(v0);
  sub_1DD6E9B14(*(v2 + 36));
  return sub_1DD6DDEFC();
}

uint64_t ActionSuccess.concludesStreamingStatementID.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for ActionSuccess(v0);
  v2 = sub_1DD825320(*(v1 + 44));

  return sub_1DD703958(v2, v3, v4);
}

void StatementID.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD128A0, &qword_1DD88A070);
  sub_1DD6E49A8(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v13 = *(v0 + 2);
  v14 = *(v0 + 1);
  v10 = v3[3];
  v9 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD70614C();
  sub_1DD6E17D8();
  sub_1DD826FA8();
  sub_1DD875BB0();
  sub_1DD6E5334();
  sub_1DD8759E0();
  if (!v1)
  {
    sub_1DD8250C8();
    sub_1DD705DBC();
    sub_1DD875920();
  }

  v11 = sub_1DD6FF768();
  v12(v11);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

unint64_t sub_1DD70614C()
{
  result = qword_1EE015B10;
  if (!qword_1EE015B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015B10);
  }

  return result;
}

uint64_t sub_1DD7061A8(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1DD706204()
{
  *(v0 - 65) = 0;

  return sub_1DD874820();
}

uint64_t sub_1DD70621C()
{
  v2 = sub_1DD6DE3CC();
  sub_1DD6E53D8();
  sub_1DD6E4A38(v3, 255, v4);
  *(v0 + 48) = sub_1DD6E0BB4();
  *(v0 + 56) = v5;
  if (v2)
  {
    sub_1DD6DF508();
    sub_1DD6DE6A4();

    __asm { BRAA            X1, X16 }
  }

  sub_1DD6E6B0C();
  v1[14] = sub_1DD8745F0();
  v1[15] = v6;
  v9 = *(v1[9] + 16);
  v1[16] = v9;
  if (v9)
  {
    v10 = sub_1DD6E2828();
    sub_1DD6F3270(v10);
    v11 = *(MEMORY[0x1E69C5B08] + 4);

    v12 = swift_task_alloc();
    v1[18] = v12;
    *v12 = v1;
    v12[1] = sub_1DD85EF28;
    sub_1DD6FC4EC();
    sub_1DD6DE6A4();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30]();
}

uint64_t sub_1DD706394(uint64_t a1, void *a2)
{
  v3[8] = a1;
  v3[9] = v2;
  v4 = a2[1];
  v3[10] = *a2;
  v3[11] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD7063B0()
{
  sub_1DD6DDF4C();
  sub_1DD6E5278();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = sub_1DD6ED5BC(v1);

  return sub_1DD706394(v2, v3);
}

uint64_t QueryDecoration.queryDecorationCollection(qdInput:crossAPIAssociationKey:)(uint64_t a1, void *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v4 = a2[1];
  v3[6] = *a2;
  v3[7] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD7064B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  sub_1DD706574(a4, a5, a6, a7, a9, v17, a1, a10, a11);
}

void sub_1DD706574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, SEL *a9)
{
  v13 = sub_1DD874750();
  sub_1DD6DDEDC();
  v14 = sub_1DD874750();
  v16[4] = a5;
  v16[5] = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DD700F5C;
  v16[3] = a8;
  v15 = _Block_copy(v16);

  [a7 *a9];
  _Block_release(v15);
}

uint64_t sub_1DD706704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD71144C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7069B0()
{
  MEMORY[0x1E12B5EB0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD7069E8()
{
  v1 = sub_1DD874890();
  sub_1DD6DDEAC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD706AB4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD706AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD71CA60();
  *a2 = result & 1;
  return result;
}

__n128 sub_1DD706B50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DD706B5C(uint64_t a1, uint64_t a2)
{
  sub_1DD6E0D28();
  v4 = sub_1DD874820();
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = v2;
  }

  else
  {
    type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
    v6 = sub_1DD6ED224();
  }

  return sub_1DD6E5ED0(v6, a2, v5);
}

uint64_t sub_1DD706BF0(uint64_t a1, uint64_t a2, int a3)
{
  sub_1DD6E0D28();
  v6 = sub_1DD874820();
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
    v8 = sub_1DD6ED224();
  }

  return sub_1DD6E5E68(v8, a2, a2, v7);
}

uint64_t sub_1DD706C8C(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    type metadata accessor for EventsSubscription.Iterator(0);
    v5 = sub_1DD6ED224();

    return sub_1DD6E5ED0(v5, a2, v6);
  }
}

void *sub_1DD706D10(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for EventsSubscription.Iterator(0);
    v4 = sub_1DD6ED224();

    return sub_1DD6E5E68(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1DD706E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5ED0(a1, a2, v4);
}

uint64_t sub_1DD706EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5E68(a1, a2, a2, v4);
}

uint64_t sub_1DD706F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5ED0(a1, a2, v4);
}

uint64_t sub_1DD706F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5E68(a1, a2, a2, v4);
}

uint64_t sub_1DD707020@<X0>(uint64_t *a1@<X8>)
{
  result = SessionIdentityPack.clientSessionId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD707050@<X0>(uint64_t *a1@<X8>)
{
  result = SessionIdentityPack.clientApplicationId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD707080@<X0>(uint64_t *a1@<X8>)
{
  result = SessionIdentityPack.clientGroupId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD7070B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6DE290();
  v6 = type metadata accessor for SessionID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1DD6E5ED0(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD70715C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SessionID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1DD6E5E68(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD707230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5ED0(a1, a2, v4);
}

uint64_t sub_1DD707278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5E68(a1, a2, a2, v4);
}

void *sub_1DD707330()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$plannerType.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

double sub_1DD70738C()
{
  sub_1DD6E5F64();
  v1 = IntelligenceFlowPreferences.$shouldWriteToShortcutsDatabase.getter(v0);
  *&result = sub_1DD6ED5A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v9, v13).n128_u64[0];
  return result;
}

void *sub_1DD7073E8()
{
  sub_1DD6E5F64();
  v0 = IntelligenceFlowPreferences.$entityResolutionThreshold.getter();
  return sub_1DD6E0F7C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

double sub_1DD70741C()
{
  sub_1DD6E5F64();
  v1 = IntelligenceFlowPreferences.$shouldShuffleTools.getter(v0);
  *&result = sub_1DD6ED5A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v9, v13).n128_u64[0];
  return result;
}

void *sub_1DD707478()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$appleConnectDawToken.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void *sub_1DD7074D4()
{
  sub_1DD6E2114();
  v1 = IntelligenceFlowPreferences.$toolBoxAllowedGlobalTools.getter(v0);
  return sub_1DD730D7C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

void *sub_1DD707530()
{
  sub_1DD6E2114();
  v1 = IntelligenceFlowPreferences.$toolBoxAllowedLocalTools.getter(v0);
  return sub_1DD730D7C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

void *sub_1DD70758C()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$selectedToolBoxAllowList.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

double sub_1DD7075E8()
{
  sub_1DD6E5F64();
  v1 = IntelligenceFlowPreferences.$disableToolBoxAllowList.getter(v0);
  *&result = sub_1DD6ED5A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v9, v13).n128_u64[0];
  return result;
}

void *sub_1DD707644()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$selectedToolUtterancesOverride.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

double sub_1DD7076A0()
{
  sub_1DD6E5F64();
  v1 = IntelligenceFlowPreferences.$inputValidation.getter(v0);
  *&result = sub_1DD6ED5A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v9, v13).n128_u64[0];
  return result;
}

double sub_1DD7076FC()
{
  sub_1DD6E5F64();
  v1 = IntelligenceFlowPreferences.$bypassTranscriptWriteRedaction.getter(v0);
  *&result = sub_1DD6ED5A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v9, v13).n128_u64[0];
  return result;
}

void *sub_1DD707758()
{
  sub_1DD6E5F64();
  v0 = IntelligenceFlowPreferences.$sbertDimensionSize.getter();
  return sub_1DD6E0F7C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

void *sub_1DD7077B4()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$sbertTokenizerLocale.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void *sub_1DD707810()
{
  sub_1DD6E2114();
  v1 = IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.getter(v0);
  return sub_1DD730D7C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

void *sub_1DD707844()
{
  sub_1DD6E2114();
  matched = IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.getter();
  return sub_1DD730C80(matched, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

double sub_1DD707878()
{
  sub_1DD6E5F64();
  v1 = IntelligenceFlowPreferences.$uiControlCommandEmbeddingInFocus.getter(v0);
  *&result = sub_1DD6ED5A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v9, v13).n128_u64[0];
  return result;
}

void *sub_1DD7078D4()
{
  sub_1DD6E5F64();
  v0 = IntelligenceFlowPreferences.$uiControlCommandEmbeddingChoice.getter();
  return sub_1DD6E0F7C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

void *sub_1DD707930()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$uiControlCommandHierarchyEmbedSeparator.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

double sub_1DD70798C()
{
  sub_1DD6E5F64();
  v1 = IntelligenceFlowPreferences.$shouldDisableSearchPlusActConfirmation.getter(v0);
  *&result = sub_1DD6ED5A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v9, v13).n128_u64[0];
  return result;
}

void *sub_1DD7079E8()
{
  sub_1DD6E5F64();
  v0 = IntelligenceFlowPreferences.$planOverridesDelayDurationInMs.getter();
  return sub_1DD6E0F7C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

void *sub_1DD707A44()
{
  sub_1DD6E5F64();
  v0 = IntelligenceFlowPreferences.$planOverridesDelayDurationVariationInMs.getter();
  return sub_1DD6E0F7C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

void *sub_1DD707AA0()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$agenticPlannerRoutingScheme.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void *sub_1DD707AFC()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$agenticPlannerZincUrl.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

void *sub_1DD707B58()
{
  sub_1DD6E2114();
  v0 = IntelligenceFlowPreferences.$requestDateTime.getter();
  return sub_1DD730C80(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_1DD707C40()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1DD707CAC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DD707D88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD707EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6E1F34();
  v6 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6E0A68(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1DD6E492C();
LABEL_8:

    return sub_1DD6E5ED0(v8, v3, v9);
  }

  if (v3 != 2147483646)
  {
    v9 = sub_1DD874910();
    v8 = v4 + *(a3 + 28);
    goto LABEL_8;
  }

  v10 = *(v4 + *(a3 + 20) + 8);
  sub_1DD6E2148();
  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1DD707FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD6E1F34();
  v8 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  result = sub_1DD6E0A68(v8);
  if (*(v10 + 84) != a3)
  {
    if (a3 == 2147483646)
    {
      *(v5 + *(a4 + 20) + 8) = v4;
      return result;
    }

    sub_1DD874910();
    v11 = v5 + *(a4 + 28);
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v12, v13, v14, v15);
}

uint64_t sub_1DD7080A4()
{
  sub_1DD6DDFA8();
  if (v3)
  {
    v4 = *(v1 + 16);
    sub_1DD6E2148();
    return (v5 + 1);
  }

  else
  {
    v7 = sub_1DD6FC414();
    v8 = v1 + *(v2 + 24);

    return sub_1DD6E5ED0(v8, v0, v7);
  }
}

void sub_1DD708110()
{
  sub_1DD6E1F34();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1DD874910();
    v5 = *(v4 + 24);
    sub_1DD6DE310();

    sub_1DD6E5E68(v6, v7, v8, v9);
  }
}

uint64_t sub_1DD7081B0()
{
  sub_1DD6E1F34();
  v1 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD6E0A68(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_1DD6E492C();
  }

  else
  {
    sub_1DD874910();
    v3 = sub_1DD6ED46C();
  }

  return sub_1DD6E5ED0(v3, v0, v4);
}

uint64_t sub_1DD708248(uint64_t a1, uint64_t a2, int a3)
{
  sub_1DD6E1F34();
  v4 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  sub_1DD6E0A68(v4);
  if (*(v5 + 84) != a3)
  {
    sub_1DD874910();
    sub_1DD6ED46C();
  }

  sub_1DD6DE310();

  return sub_1DD6E5E68(v6, v7, v8, v9);
}

uint64_t sub_1DD7082E8()
{
  sub_1DD6E1F34();
  sub_1DD874910();
  v1 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v1, v0, v2);
}

uint64_t sub_1DD708328()
{
  sub_1DD6E1F34();
  sub_1DD874910();
  sub_1DD6DE310();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

uint64_t sub_1DD70836C()
{
  sub_1DD6DDFA8();
  if (v3)
  {
    v4 = *(v1 + 8);
    sub_1DD6E2148();
    return (v5 + 1);
  }

  else
  {
    v7 = sub_1DD6FC414();
    v8 = v1 + *(v2 + 32);

    return sub_1DD6E5ED0(v8, v0, v7);
  }
}

void sub_1DD7083D8()
{
  sub_1DD6E1F34();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1DD874910();
    v5 = *(v4 + 32);
    sub_1DD6DE310();

    sub_1DD6E5E68(v6, v7, v8, v9);
  }
}

uint64_t sub_1DD708450()
{
  sub_1DD6DDFA8();
  if (v2)
  {
    v3 = *(v1 + 8);
    sub_1DD6E2148();
    return (v4 + 1);
  }

  else
  {
    sub_1DD6FC414();
    v6 = sub_1DD6ED46C();

    return sub_1DD6E5ED0(v6, v0, v7);
  }
}

void sub_1DD7084B8()
{
  sub_1DD6E1F34();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1DD874910();
    sub_1DD6ED46C();
    sub_1DD6DE310();

    sub_1DD6E5E68(v3, v4, v5, v6);
  }
}

void sub_1DD708580()
{
  sub_1DD6DED2C();
  sub_1DD6FF8D0(v1, v2, v3, v4);
  v5 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD6E0CB8();
  v10 = type metadata accessor for OverridesCommon_StringPredicate(v9);
  v11 = sub_1DD6DE1C4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  sub_1DD6E6340();
  sub_1DD6E10F4();
  if (v14)
  {
    sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  else
  {
    sub_1DD753308();
    sub_1DD6FADAC();
    sub_1DD753414(v15, v16);
    sub_1DD6F09F8();
    sub_1DD7536B0();
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void sub_1DD7086B8()
{
  sub_1DD6DED2C();
  sub_1DD6FF8D0(v1, v2, v3, v4);
  v5 = sub_1DD710A9C(&qword_1ECD0EEA8, &qword_1DD87DF60);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD6E0CB8();
  v10 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v9);
  v11 = sub_1DD6DE1C4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  sub_1DD6E6340();
  sub_1DD6E10F4();
  if (v14)
  {
    sub_1DD6FC560(v0, &qword_1ECD0EEA8, &qword_1DD87DF60);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753414(&qword_1ECD0EF78, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate);
    sub_1DD6F09F8();
    sub_1DD7536B0();
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void sub_1DD7087E8()
{
  sub_1DD6DED2C();
  sub_1DD6FF8D0(v1, v2, v3, v4);
  v5 = sub_1DD710A9C(&qword_1ECD0EED0, &qword_1DD87B810);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD6E0CB8();
  v10 = type metadata accessor for ResponseGenerationOverrides_ListPredicate(v9);
  v11 = sub_1DD6DE1C4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  sub_1DD6E6340();
  sub_1DD6E10F4();
  if (v14)
  {
    sub_1DD6FC560(v0, &qword_1ECD0EED0, &qword_1DD87B810);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753414(&qword_1ECD0EF60, type metadata accessor for ResponseGenerationOverrides_ListPredicate);
    sub_1DD6F09F8();
    sub_1DD7536B0();
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t *sub_1DD708930(uint64_t *result)
{
  if (result[1])
  {
    v1 = *result;
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD708A3C()
{
  sub_1DD6DDFA8();
  if (v1)
  {
    return sub_1DD6DDFD0(*v0);
  }

  sub_1DD7598B0();
  sub_1DD874910();
  v3 = sub_1DD6E0890();

  return sub_1DD6E5ED0(v3, v4, v5);
}

void sub_1DD708AA4()
{
  sub_1DD6E6A60();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1DD6ED7B4();
    sub_1DD6FF8E8();
    v4 = sub_1DD6DE524(v3);

    sub_1DD6E5E68(v4, v5, v6, v7);
  }
}

uint64_t sub_1DD708B04()
{
  sub_1DD6DDFA8();
  if (v3)
  {
    return sub_1DD6DDFD0(*(v1 + 8));
  }

  sub_1DD7598B0();
  v5 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  sub_1DD6E0A68(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[8];
  }

  else
  {
    v8 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
    sub_1DD6E0A68(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[9];
    }

    else
    {
      sub_1DD874910();
      v7 = v2[12];
    }
  }

  v10 = sub_1DD6E6C88(v7);

  return sub_1DD6E5ED0(v10, v11, v12);
}

void sub_1DD708C08()
{
  sub_1DD6E6A60();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1DD6E1C08();
    v5 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
    sub_1DD6E0A68(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[8];
    }

    else
    {
      v8 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
      sub_1DD6E0A68(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = v2[9];
      }

      else
      {
        sub_1DD874910();
        v7 = v2[12];
      }
    }

    v10 = sub_1DD6DE524(v7);

    sub_1DD6E5E68(v10, v11, v12, v13);
  }
}

uint64_t sub_1DD708D0C(unsigned __int8 *a1, int a2)
{
  if (a2 == 252)
  {
    v2 = *a1;
    if (v2 >= 4)
    {
      return v2 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DD7598B0();
    sub_1DD874910();
    sub_1DD6EE76C();
    v5 = sub_1DD6E6C88(v4);

    return sub_1DD6E5ED0(v5, v6, v7);
  }
}

void sub_1DD708D80()
{
  sub_1DD6E1F34();
  if (v2 == 252)
  {
    *v1 = v0 + 3;
  }

  else
  {
    sub_1DD6ED7B4();
    sub_1DD700BF0();
    v4 = sub_1DD6DE524(v3);

    sub_1DD6E5E68(v4, v5, v6, v7);
  }
}

uint64_t sub_1DD708E40()
{
  sub_1DD6DDFA8();
  if (v1)
  {
    return sub_1DD6DDFD0(*(v0 + 8));
  }

  sub_1DD7598B0();
  sub_1DD874910();
  v3 = sub_1DD6E0890();

  return sub_1DD6E5ED0(v3, v4, v5);
}

void sub_1DD708EA8()
{
  sub_1DD6E6A60();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1DD6ED7B4();
    sub_1DD6FF8E8();
    v4 = sub_1DD6DE524(v3);

    sub_1DD6E5E68(v4, v5, v6, v7);
  }
}

uint64_t sub_1DD709044()
{
  sub_1DD6E1F34();
  sub_1DD874910();
  v1 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v1, v0, v2);
}

uint64_t sub_1DD709084()
{
  sub_1DD6E1F34();
  sub_1DD874910();
  v1 = sub_1DD6FF79C();

  return sub_1DD6E5E68(v1, v0, v0, v2);
}

uint64_t sub_1DD7091A0()
{
  sub_1DD6DDFA8();
  if (v2)
  {
    return sub_1DD6DDFD0(*v0);
  }

  sub_1DD7598B0();
  sub_1DD874910();
  v4 = sub_1DD6E6C88(*(v1 + 32));

  return sub_1DD6E5ED0(v4, v5, v6);
}

void sub_1DD70920C()
{
  sub_1DD6E6A60();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1DD6ED7B4();
    v4 = sub_1DD6DE524(*(v2 + 32));

    sub_1DD6E5E68(v4, v5, v6, v7);
  }
}

uint64_t sub_1DD709314(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1DD6DDFD0(*a1);
  }

  sub_1DD874910();
  v3 = sub_1DD6E0890();

  return sub_1DD6E5ED0(v3, v4, v5);
}

void sub_1DD709388()
{
  sub_1DD6E1F34();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1DD874910();
    v3 = sub_1DD6E0890();

    sub_1DD6E5E68(v3, v4, v0, v5);
  }
}

uint64_t sub_1DD7093FC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1DD6DDFD0(*(a1 + 8));
  }

  v7 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  v8 = sub_1DD6E0A68(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[7];
  }

  else
  {
    v12 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
    v13 = sub_1DD6E0A68(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[8];
    }

    else
    {
      v15 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
      v16 = sub_1DD6E0A68(v15);
      if (*(v17 + 84) == a2)
      {
        v10 = v16;
        v11 = a3[11];
      }

      else
      {
        v18 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
        v19 = sub_1DD6E0A68(v18);
        if (*(v20 + 84) == a2)
        {
          v10 = v19;
          v11 = a3[12];
        }

        else
        {
          v21 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
          v22 = sub_1DD6E0A68(v21);
          if (*(v23 + 84) == a2)
          {
            v10 = v22;
            v11 = a3[13];
          }

          else
          {
            v10 = sub_1DD874910();
            v11 = a3[16];
          }
        }
      }
    }
  }

  return sub_1DD6E5ED0(a1 + v11, a2, v10);
}

void sub_1DD7095F4()
{
  sub_1DD6E1F34();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
    v7 = sub_1DD6E0A68(v6);
    if (*(v8 + 84) == v5)
    {
      v9 = v7;
      v10 = v4[7];
    }

    else
    {
      v11 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
      v12 = sub_1DD6E0A68(v11);
      if (*(v13 + 84) == v5)
      {
        v9 = v12;
        v10 = v4[8];
      }

      else
      {
        v14 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
        v15 = sub_1DD6E0A68(v14);
        if (*(v16 + 84) == v5)
        {
          v9 = v15;
          v10 = v4[11];
        }

        else
        {
          v17 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
          v18 = sub_1DD6E0A68(v17);
          if (*(v19 + 84) == v5)
          {
            v9 = v18;
            v10 = v4[12];
          }

          else
          {
            v20 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
            v21 = sub_1DD6E0A68(v20);
            if (*(v22 + 84) == v5)
            {
              v9 = v21;
              v10 = v4[13];
            }

            else
            {
              v9 = sub_1DD874910();
              v10 = v4[16];
            }
          }
        }
      }
    }

    sub_1DD6E5E68(v1 + v10, v0, v0, v9);
  }
}

uint64_t sub_1DD7097F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6E1F34();
  v6 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v7 = sub_1DD6E0A68(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = sub_1DD874910();
    v10 = v4 + *(a3 + 20);
  }

  return sub_1DD6E5ED0(v10, v3, v9);
}

uint64_t sub_1DD709890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD6E1F34();
  v8 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v9 = sub_1DD6E0A68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = sub_1DD874910();
    v12 = v5 + *(a4 + 20);
  }

  return sub_1DD6E5E68(v12, v4, v4, v11);
}

uint64_t sub_1DD709938(unsigned __int8 *a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 >= 3)
    {
      return v2 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DD874910();
    v4 = sub_1DD6E0890();

    return sub_1DD6E5ED0(v4, v5, v6);
  }
}

void sub_1DD7099B0()
{
  sub_1DD6E1F34();
  if (v2 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    sub_1DD874910();
    v3 = sub_1DD6E0890();

    sub_1DD6E5E68(v3, v4, v0, v5);
  }
}

uint64_t sub_1DD709B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD766150(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD709C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD709C08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DD709D18(uint64_t a1, uint64_t a2)
{
  sub_1DD6E0D28();
  v4 = sub_1DD875020();

  return sub_1DD6E5ED0(v2, a2, v4);
}

uint64_t sub_1DD709D5C(uint64_t a1, uint64_t a2)
{
  sub_1DD6E0D28();
  v4 = sub_1DD875020();

  return sub_1DD6E5E68(v2, a2, a2, v4);
}

uint64_t sub_1DD709DD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1DD710A9C(&qword_1ECD0F758, &qword_1DD87F2F0);
    v10 = a1 + *(a3 + 32);

    return sub_1DD6E5ED0(v10, a2, v9);
  }
}

void *sub_1DD709E74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1DD710A9C(&qword_1ECD0F758, &qword_1DD87F2F0);
    v8 = v5 + *(a4 + 32);

    return sub_1DD6E5E68(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD70A1B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
    v9 = a1 + *(a3 + 28);

    return sub_1DD6E5ED0(v9, a2, v8);
  }
}