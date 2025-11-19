uint64_t sub_24F363930@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240348);
  MEMORY[0x28223BE20](v3);
  v7 = *v1 == 3 || *v1 == 0;
  v47 = v6;
  v48 = v4;
  v46 = &v46 - v5;
  if (v7)
  {
    if (qword_27F211160 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F240288;
  }

  else
  {
    if (qword_27F211158 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F240280;
  }

  v9 = *v8;

  MEMORY[0x28223BE20](v10);
  *(&v46 - 2) = v1;
  *(&v46 - 1) = v9;
  MEMORY[0x28223BE20](v11);
  *(&v46 - 2) = v9;
  *(&v46 - 1) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240358);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240360);
  v13 = sub_24F365B78();
  v49[0] = v12;
  v49[1] = v13;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F2403B0, &qword_27F240358);
  v14 = v46;
  sub_24F925AB8();

  v49[3] = sub_24F9271D8();
  v49[4] = sub_24F366088(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
  sub_24E60169C(v49, a1, &qword_27F2403B8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240328);
  v20 = v47;
  v19 = v48;
  (*(v47 + 16))(a1 + v18[9], v14, v48);
  v21 = a1 + v18[10];
  *v21 = sub_24F923398() & 1;
  *(v21 + 8) = v22;
  *(v21 + 16) = v23 & 1;
  v24 = a1 + v18[11];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v25 = qword_27F24E488;
  v26 = sub_24F923398();
  v28 = v27;
  v30 = v29;
  v31 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240318) + 36);
  *v31 = v25;
  *(v31 + 8) = v26 & 1;
  *(v31 + 16) = v28;
  *(v31 + 24) = v30 & 1;
  LOBYTE(v25) = sub_24F923398();
  v33 = v32;
  LOBYTE(v28) = v34;
  sub_24E601704(v49, &qword_27F2403B8);
  (*(v20 + 8))(v14, v19);
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240308) + 36);
  *v35 = v25 & 1;
  *(v35 + 8) = v33;
  *(v35 + 16) = v28 & 1;
  LOBYTE(v25) = sub_24F925868();
  sub_24F923318();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402E0);
  v45 = a1 + *(result + 36);
  *v45 = v25;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_24F363E54(uint64_t a1)
{
  v2 = sub_24F921B58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SetProfilePrivacyAction();
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v16[0] = *(a1 + 80);
  v16[1] = v9;
  v17 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8);
  MEMORY[0x25304CAF0](v15, v11);
  v12 = v15[0];
  sub_24F928A98();
  *v8 = v12;
  sub_24F7695C8(v16);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(v16, v18);
    v15[3] = v6;
    v15[4] = sub_24F366088(&qword_27F216398, type metadata accessor for SetProfilePrivacyAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    sub_24F365B00(v8, boxed_opaque_existential_1, type metadata accessor for SetProfilePrivacyAction);
    type metadata accessor for ActivitySharingSection();
    sub_24F76973C(v5);
    sub_24F9218A8();
    (*(v3 + 8))(v5, v2);
    sub_24F365AA4(v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24F365AA4(v8);
    return sub_24E601704(v16, &unk_27F212740);
  }
}

void sub_24F3640B4(uint64_t a1)
{
  v2 = sub_24F921B58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SetProfilePrivacyAction();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E8E0);
    v19 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    if (os_log_type_enabled(v19, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v10, "Privacy editing is restricted. Skipping changing the default privacy.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v19;
  }

  else
  {
    v13 = *(a1 + 88);
    v14 = *(a1 + 96);
    v21[0] = *(a1 + 80);
    v21[1] = v13;
    v22 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8);
    MEMORY[0x25304CAF0](v20, v15);
    v16 = v20[0];
    sub_24F928A98();
    *v8 = v16;
    sub_24F7695C8(v21);
    if (v23)
    {
      __swift_project_boxed_opaque_existential_1(v21, v23);
      v20[3] = v6;
      v20[4] = sub_24F366088(&qword_27F216398, type metadata accessor for SetProfilePrivacyAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      sub_24F365B00(v8, boxed_opaque_existential_1, type metadata accessor for SetProfilePrivacyAction);
      type metadata accessor for ActivitySharingSection();
      sub_24F76973C(v5);
      sub_24F9218A8();
      (*(v3 + 8))(v5, v2);
      sub_24F365AA4(v8);
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_24F365AA4(v8);
      sub_24E601704(v21, &unk_27F212740);
    }
  }
}

uint64_t sub_24F364400(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24F364470()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8);
  sub_24F927198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403D0);
  sub_24F365EB4();
  sub_24F365F08();
  return sub_24F927088();
}

uint64_t sub_24F364550()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403F0);
  sub_24E602068(&qword_27F240400, &qword_27F2403F8);
  sub_24F365F8C();
  sub_24F3660D0();
  return sub_24F927238();
}

uint64_t sub_24F364640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  v13 = *(a1 + 16);
  v14 = v6;
  sub_24E600AEC();

  *v5 = sub_24F925E18();
  *(v5 + 1) = v8;
  v5[16] = v9 & 1;
  *(v5 + 3) = v10;
  v5[32] = v7;
  v5[33] = 1;
  v11 = sub_24F365EB4();
  v13 = MEMORY[0x277CE0BD8];
  v14 = &type metadata for Player.ProfilePrivacyVisibilityLevel;
  v15 = MEMORY[0x277CE0BC8];
  v16 = v11;
  swift_getOpaqueTypeConformance2();
  sub_24F9262F8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F3647D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = sub_24F9248C8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240360);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v22 = sub_24F9249A8();
  v32 = 1;
  sub_24F364B44(a1, a2, &v27);
  v35 = v29;
  v36[0] = v30[0];
  *(v36 + 12) = *(v30 + 12);
  v33 = v27;
  v34 = v28;
  v37[2] = v29;
  v38[0] = v30[0];
  *(v38 + 12) = *(v30 + 12);
  v37[0] = v27;
  v37[1] = v28;
  sub_24E60169C(&v33, v26, &qword_27F2403C8);
  sub_24E601704(v37, &qword_27F2403C8);
  *&v31[23] = v34;
  *&v31[39] = v35;
  *&v31[55] = v36[0];
  *&v31[67] = *(v36 + 12);
  *&v31[7] = v33;
  v21 = v32;
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  v20 = sub_24F926BF8();
  LOBYTE(a1) = sub_24F925808();
  LOBYTE(v27) = 0;
  v12 = [v10 secondarySystemBackgroundColor];
  v13 = sub_24F926BF8();
  LOBYTE(v10) = sub_24F925808();
  v14 = &v9[*(v7 + 36)];
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0) + 36)] = 256;
  v17 = *&v31[48];
  *(v9 + 49) = *&v31[32];
  *(v9 + 65) = v17;
  *(v9 + 81) = *&v31[64];
  v18 = *&v31[16];
  *(v9 + 17) = *v31;
  *v9 = v22;
  *(v9 + 1) = 0;
  v9[16] = v21;
  *(v9 + 24) = *&v31[79];
  *(v9 + 33) = v18;
  *(v9 + 13) = v20;
  v9[112] = a1;
  *(v9 + 113) = v27;
  *(v9 + 29) = *(&v27 + 3);
  *(v9 + 120) = xmmword_24F956A30;
  *(v9 + 136) = xmmword_24F956A30;
  v9[152] = 0;
  *(v9 + 153) = v26[0];
  *(v9 + 39) = *(v26 + 3);
  *(v9 + 20) = v13;
  v9[168] = v10;
  sub_24F9248B8();
  sub_24F365B78();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v23 + 8))(v6, v25);
  return sub_24E601704(v9, &qword_27F240360);
}

uint64_t sub_24F364B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v28 = a2;
  sub_24E7AB11C(sub_24F365E84, a1, &v29);
  v9 = v30;
  if (v30)
  {
    v26 = v33;
    v27 = v34;
    v10 = v29;
    v25[3] = v35;
    v29 = v31;
    v30 = v32;
    sub_24E600AEC();

    v11 = sub_24F925E18();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_24E687F7C(v10, v9);
    v9 = v15 & 1;
    sub_24E5FD138(v11, v13, v15 & 1);
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v17 = 0;
  }

  v18 = sub_24F926DF8();
  v19 = sub_24F925908();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = sub_24F925968();
  sub_24E601704(v8, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  v22 = sub_24F9251C8();
  LOBYTE(v29) = 1;
  sub_24E65D2B4(v11, v13, v9, v17);

  sub_24E65D2F8(v11, v13, v9, v17);
  v23 = v29;
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v9;
  *(a3 + 24) = v17;
  *(a3 + 32) = 0;
  *(a3 + 40) = v23;
  *(a3 + 48) = v18;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v20;
  *(a3 + 72) = v22;

  return sub_24E65D2F8(v11, v13, v9, v17);
}

uint64_t sub_24F364DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 88);
  v4 = *(a2 + 96);
  v17 = *(a2 + 80);
  v18 = v3;
  v19 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8);
  MEMORY[0x25304CAF0](&v16, v5);
  v6 = 0x4F73646E65697266;
  v7 = 0xEB00000000796C6ELL;
  if (v2 != 1)
  {
    v6 = 0x796C6E4F656DLL;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x656E6F7972657665;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  v10 = 0x4F73646E65697266;
  v11 = 0xEB00000000796C6ELL;
  if (v16 != 1)
  {
    v10 = 0x796C6E4F656DLL;
    v11 = 0xE600000000000000;
  }

  if (v16)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x656E6F7972657665;
  }

  if (v16)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (v8 == v12 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_24F92CE08();
  }

  return v14 & 1;
}

uint64_t sub_24F364F24()
{
  if (qword_27F2116C8 != -1)
  {
    swift_once();
  }

  qword_27F2401D8 = 0x656E6F7972657645;
  unk_27F2401E0 = 0xE800000000000000;
  qword_27F2401E8 = qword_27F39EE58;
  unk_27F2401F0 = unk_27F39EE60;
  qword_27F2401F8 = 0x6C6C69662E657965;
  unk_27F240200 = 0xE800000000000000;
  byte_27F240208 = 0;
}

uint64_t sub_24F364FC0()
{
  if (qword_27F2116D0 != -1)
  {
    swift_once();
  }

  qword_27F240210 = 0x4F73646E65697246;
  *algn_27F240218 = 0xEB00000000796C6ELL;
  qword_27F240220 = qword_27F39EE68;
  unk_27F240228 = unk_27F39EE70;
  strcpy(&qword_27F240230, "person.2.fill");
  unk_27F24023E = -4864;
  byte_27F240240 = 1;
}

uint64_t sub_24F365078()
{
  if (qword_27F2116D8 != -1)
  {
    swift_once();
  }

  qword_27F240248 = 0x756F59796C6E4FLL;
  unk_27F240250 = 0xE700000000000000;
  qword_27F240258 = qword_27F39EE78;
  unk_27F240260 = unk_27F39EE80;
  strcpy(&qword_27F240268, "eye.slash.fill");
  unk_27F240277 = -18;
  byte_27F240278 = 2;
}

uint64_t sub_24F365128()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  if (qword_27F211140 != -1)
  {
    swift_once();
  }

  v1 = unk_27F2401E0;
  v2 = qword_27F2401E8;
  v3 = unk_27F2401F0;
  v4 = qword_27F2401F8;
  v5 = unk_27F240200;
  v6 = byte_27F240208;
  *(v0 + 32) = qword_27F2401D8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = qword_27F211148;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *algn_27F240218;
  v9 = qword_27F240220;
  v10 = unk_27F240228;
  v11 = qword_27F240230;
  v12 = unk_27F240238;
  v13 = byte_27F240240;
  *(v0 + 88) = qword_27F240210;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  v14 = qword_27F211150;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_27F240250;
  v16 = qword_27F240258;
  v17 = unk_27F240260;
  v18 = qword_27F240268;
  v19 = unk_27F240270;
  v20 = byte_27F240278;
  *(v0 + 144) = qword_27F240248;
  *(v0 + 152) = v15;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  *(v0 + 192) = v20;
  qword_27F240280 = v0;
}

uint64_t sub_24F3652D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  if (qword_27F211148 != -1)
  {
    swift_once();
  }

  v1 = *algn_27F240218;
  v2 = qword_27F240220;
  v3 = unk_27F240228;
  v4 = qword_27F240230;
  v5 = unk_27F240238;
  v6 = byte_27F240240;
  *(v0 + 32) = qword_27F240210;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = qword_27F211150;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = unk_27F240250;
  v9 = qword_27F240258;
  v10 = unk_27F240260;
  v11 = qword_27F240268;
  v12 = unk_27F240270;
  v13 = byte_27F240278;
  *(v0 + 88) = qword_27F240248;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  qword_27F240288 = v0;
}

uint64_t sub_24F36542C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F36549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F365500()
{
  v1 = *(type metadata accessor for ActivitySharingSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F364400(v2);
}

unint64_t sub_24F365578()
{
  result = qword_27F2402C0;
  if (!qword_27F2402C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402A8);
    sub_24F365604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2402C0);
  }

  return result;
}

unint64_t sub_24F365604()
{
  result = qword_27F2402C8;
  if (!qword_27F2402C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402A0);
    sub_24E602068(&qword_27F2402D0, &qword_27F2402D8);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2402C8);
  }

  return result;
}

unint64_t sub_24F365704()
{
  result = qword_27F240300;
  if (!qword_27F240300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240308);
    sub_24F365790();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240300);
  }

  return result;
}

unint64_t sub_24F365790()
{
  result = qword_27F240310;
  if (!qword_27F240310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240318);
    sub_24E602068(&qword_27F240320, &qword_27F240328);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240310);
  }

  return result;
}

unint64_t sub_24F365848()
{
  result = qword_27F240330;
  if (!qword_27F240330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240330);
  }

  return result;
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for ActivitySharingSection();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 160))
  {
    if (*(v2 + 144))
    {
      __swift_destroy_boxed_opaque_existential_1(v2 + 120);
    }
  }

  else
  {
  }

  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F921B58();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F365A28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActivitySharingSection() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24F365AA4(uint64_t a1)
{
  v2 = type metadata accessor for SetProfilePrivacyAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F365B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F365B78()
{
  result = qword_27F240368;
  if (!qword_27F240368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240360);
    sub_24F365C30();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240368);
  }

  return result;
}

unint64_t sub_24F365C30()
{
  result = qword_27F240370;
  if (!qword_27F240370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240378);
    sub_24F365D14(&qword_27F240380, &qword_27F240388, &unk_24F9EA510, sub_24F365D98);
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240370);
  }

  return result;
}

uint64_t sub_24F365D14(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F365D98()
{
  result = qword_27F240390;
  if (!qword_27F240390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240398);
    sub_24E602068(&qword_27F2403A0, &qword_27F2403A8);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240390);
  }

  return result;
}

unint64_t sub_24F365EB4()
{
  result = qword_27F2403D8;
  if (!qword_27F2403D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2403D8);
  }

  return result;
}

unint64_t sub_24F365F08()
{
  result = qword_27F2403E0;
  if (!qword_27F2403E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2403D0);
    sub_24F365F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2403E0);
  }

  return result;
}

unint64_t sub_24F365F8C()
{
  result = qword_27F2403E8;
  if (!qword_27F2403E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2403F0);
    sub_24F365EB4();
    swift_getOpaqueTypeConformance2();
    sub_24F366088(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2403E8);
  }

  return result;
}

uint64_t sub_24F366088(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F3660D0()
{
  result = qword_27F240408;
  if (!qword_27F240408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240408);
  }

  return result;
}

uint64_t sub_24F366134()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402A8);
  sub_24F924E98();
  sub_24F365578();
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  return swift_getOpaqueTypeConformance2();
}

void static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  if (a2)
  {
    v12 = *a4;
    v13 = sub_24F92B858();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v4;
    *(v14 + 40) = a1;
    *(v14 + 48) = a2;
    *(v14 + 56) = a3 & 1;
    *(v14 + 57) = v12;

    sub_24EA998B8(0, 0, v11, &unk_24F9EA650, v14);
  }

  else
  {
    if (qword_27F2113F8 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    __swift_project_value_buffer(v15, qword_27F39E838);
    v20 = sub_24F9220B8();
    v16 = sub_24F92BDB8();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v20, v16, "GameOverlayDashboardVisibilityNotifier: Unable to use nil id for notification", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_24F366448()
{
  v0 = sub_24F92B138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0xD00000000000003ALL;
  v6[1] = 0x800000024FA74490;
  sub_24F92B128();
  sub_24E600AEC();
  v4 = sub_24F92C5D8();
  result = (*(v1 + 8))(v3, v0);
  qword_27F240418 = v4;
  return result;
}

uint64_t GameOverlayDashboardVisibilityNotifier.Scene.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F3665F8()
{
  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  swift_allocObject();
  result = sub_24F366634();
  qword_27F240420 = result;
  return result;
}

unint64_t sub_24F366634()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = -1;
  *(v0 + 120) = sub_24E611754(MEMORY[0x277D84F90]);
  v2 = (v0 + 120);
  v3 = byte_2861C21F8;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v2;
  v28 = *v2;
  *v2 = 0x8000000000000000;
  result = sub_24E76EBE8(v3);
  v8 = v5[2];
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_18;
  }

  v12 = v7;
  if (v5[3] >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = result;
      sub_24E8B7044();
      result = v15;
      v14 = v28;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_24E8A9D6C(v11, isUniquelyReferenced_nonNull_native);
    result = sub_24E76EBE8(v3);
    if ((v12 & 1) != (v13 & 1))
    {
      goto LABEL_14;
    }
  }

  v14 = v28;
  if (v12)
  {
LABEL_7:
    *(v14[7] + 8 * result) = MEMORY[0x277D84FA0];

    goto LABEL_11;
  }

LABEL_9:
  v14[(result >> 6) + 8] |= 1 << result;
  *(v14[6] + result) = v3;
  *(v14[7] + 8 * result) = MEMORY[0x277D84FA0];
  v16 = v14[2];
  v10 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v10)
  {
    goto LABEL_23;
  }

  v14[2] = v17;
LABEL_11:
  *v2 = v14;
  swift_endAccess();
  v3 = byte_2861C21F9;
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  v28 = *v2;
  *v2 = 0x8000000000000000;
  result = sub_24E76EBE8(v3);
  v20 = v18[2];
  v21 = (v19 & 1) == 0;
  v10 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v2) = v19;
  if (v18[3] >= v22)
  {
    goto LABEL_15;
  }

  sub_24E8A9D6C(v22, v12);
  result = sub_24E76EBE8(v3);
  if ((v2 & 1) == (v23 & 1))
  {
    goto LABEL_16;
  }

LABEL_14:
  result = sub_24F92CF88();
  __break(1u);
LABEL_15:
  if (v12)
  {
LABEL_16:
    v24 = v28;
    if (v2)
    {
LABEL_17:
      *(v24[7] + 8 * result) = MEMORY[0x277D84FA0];

LABEL_22:
      *(v1 + 120) = v24;
      swift_endAccess();
      return v1;
    }

    goto LABEL_20;
  }

LABEL_19:
  v25 = result;
  sub_24E8B7044();
  result = v25;
  v24 = v28;
  if (v2)
  {
    goto LABEL_17;
  }

LABEL_20:
  v24[(result >> 6) + 8] |= 1 << result;
  *(v24[6] + result) = v3;
  *(v24[7] + 8 * result) = MEMORY[0x277D84FA0];
  v26 = v24[2];
  v10 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v10)
  {
    v24[2] = v27;
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t GameOverlayDashboardVisibilityNotifier.deinit()
{
  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 112)))
  {
    notify_cancel(*(v0 + 112));
  }

  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 116)))
  {
    notify_cancel(*(v0 + 116));
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameOverlayDashboardVisibilityNotifier.__deallocating_deinit()
{
  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 112)))
  {
    notify_cancel(*(v0 + 112));
  }

  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 116)))
  {
    notify_cancel(*(v0 + 116));
  }

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_24F3669FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 42) = a8;
  *(v8 + 41) = a7;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  return MEMORY[0x2822009F8](sub_24F366A24, 0, 0);
}

uint64_t sub_24F366A24()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = qword_27F240420;
  *(v0 + 32) = qword_27F240420;
  *(v0 + 40) = v1 & 1;

  return MEMORY[0x2822009F8](sub_24F366AC8, v2, 0);
}

uint64_t sub_24F366AC8()
{
  sub_24F3673AC(*(v0 + 16), *(v0 + 24), *(v0 + 41), (v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static GameOverlayDashboardVisibilityNotifier.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  sub_24EA998B8(0, 0, v3, &unk_24F9EA660, v5);
}

uint64_t sub_24F366C44()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = qword_27F240420;
  *(v0 + 16) = qword_27F240420;

  return MEMORY[0x2822009F8](sub_24F366CDC, v1, 0);
}

uint64_t sub_24F366CDC()
{
  sub_24F366F6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F366D58()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = qword_27F240420;
  *(v0 + 16) = qword_27F240420;

  return MEMORY[0x2822009F8](sub_24F366DF0, v1, 0);
}

uint64_t sub_24F366DF0()
{
  v1 = sub_24F367808();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_24F366E70()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = qword_27F240420;
  *(v0 + 16) = qword_27F240420;

  return MEMORY[0x2822009F8](sub_24F366F08, v1, 0);
}

uint64_t sub_24F366F08()
{
  v1 = sub_24F367B68();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_24F366F6C()
{
  v1 = v0;
  if (qword_27F2113F8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E838);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "GameOverlayDashboardVisibilityNotifier: Resetting visibility status", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 120);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_14:
    v13 = *(*(v6 + 48) + (__clz(__rbit64(v9)) | (v11 << 6)));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v1 + 120);
    *(v1 + 120) = 0x8000000000000000;
    v16 = sub_24E76EBE8(v13);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_24E8A9D6C(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_24E76EBE8(v13);
      if ((v22 & 1) != (v23 & 1))
      {
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

LABEL_19:
      if (v22)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v26 = v16;
    sub_24E8B7044();
    v16 = v26;
    if (v22)
    {
LABEL_7:
      *(v15[7] + 8 * v16) = MEMORY[0x277D84FA0];

      goto LABEL_8;
    }

LABEL_20:
    v15[(v16 >> 6) + 8] |= 1 << v16;
    *(v15[6] + v16) = v13;
    *(v15[7] + 8 * v16) = MEMORY[0x277D84FA0];
    v24 = v15[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_37;
    }

    v15[2] = v25;
LABEL_8:
    v9 &= v9 - 1;
    *(v1 + 120) = v15;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  if (byte_2861C2220 == 1)
  {
    if (qword_27F211168 != -1)
    {
      swift_once();
    }

    v27 = qword_27F240418;
    swift_beginAccess();

    v28 = (v1 + 116);
  }

  else
  {
    sub_24F921F38();
    v27 = sub_24F921F08();
    swift_beginAccess();
    v28 = (v1 + 112);
  }

  sub_24F3681EC(0, v28, v27);
  swift_endAccess();

  if (byte_2861C2221)
  {
    if (qword_27F211168 != -1)
    {
      swift_once();
    }

    v29 = qword_27F240418;
    swift_beginAccess();

    v30 = (v1 + 116);
  }

  else
  {
    sub_24F921F38();
    v29 = sub_24F921F08();
    swift_beginAccess();
    v30 = (v1 + 112);
  }

  sub_24F3681EC(0, v30, v29);
  swift_endAccess();
}

void sub_24F3673AC(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = *a4;
  if (qword_27F2113F8 != -1)
  {
    swift_once();
  }

  v10 = sub_24F9220D8();
  __swift_project_value_buffer(v10, qword_27F39E838);
  v11 = sub_24F9220B8();
  v12 = sub_24F92BD98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v13 = 136315394;
    LOBYTE(v40) = v9;
    v14 = sub_24F92B188();
    v16 = v5;
    v17 = a1;
    v18 = v9;
    v19 = a2;
    v20 = sub_24E7620D4(v14, v15, v41);

    *(v13 + 4) = v20;
    a2 = v19;
    v9 = v18;
    a1 = v17;
    v5 = v16;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a3 & 1;
    _os_log_impl(&dword_24E5DD000, v11, v12, "GameOverlayDashboardVisibilityNotifier: Notifying dashboard visibility status for %s, visible = %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v38, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  if ((v9 & 1) == 0 && (a3 & 1) == 0)
  {
    LOBYTE(v41[0]) = 1;
    sub_24F3673AC(a1, a2, 0, v41);
  }

  swift_beginAccess();
  v21 = *(v5 + 120);
  if (*(v21 + 16) && (v22 = sub_24E76EBE8(v9), (v23 & 1) != 0))
  {
    v42 = *(*(v21 + 56) + 8 * v22);
    v24 = *(v42 + 16);

    if (a3)
    {

      sub_24ED7C5F0(&v40, a1, a2);
    }

    else
    {
      sub_24F7A57A0(a1, a2);
    }

    v32 = v42;
    v33 = *(v42 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v5 + 120);
    *(v5 + 120) = 0x8000000000000000;
    sub_24E822A08(v32, v9, isUniquelyReferenced_nonNull_native);
    *(v5 + 120) = v39;
    swift_endAccess();
    if ((v24 == 0) == (v33 != 0))
    {
      if (v9)
      {
        if (qword_27F211168 != -1)
        {
          swift_once();
        }

        LOBYTE(v35) = v33 != 0;
        v36 = qword_27F240418;
        swift_beginAccess();

        v37 = (v5 + 116);
      }

      else
      {
        v35 = v33 != 0;
        sub_24F921F38();
        v36 = sub_24F921F08();
        swift_beginAccess();
        v37 = (v5 + 112);
      }

      sub_24F3681EC(v35, v37, v36);
      swift_endAccess();
    }
  }

  else
  {
    v25 = sub_24F9220B8();
    v26 = sub_24F92BDB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      LOBYTE(v42) = v9;
      v29 = sub_24F92B188();
      v31 = sub_24E7620D4(v29, v30, &v40);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_24E5DD000, v25, v26, "GameOverlayDashboardVisibilityNotifier: Unable to locate ids set for scene %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x2530542D0](v28, -1, -1);
      MEMORY[0x2530542D0](v27, -1, -1);
    }
  }
}

BOOL sub_24F367808()
{
  v1 = v0;
  state64[7] = *MEMORY[0x277D85DE8];
  v2 = sub_24F921F28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = state64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2113F8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E838);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "GameOverlayDashboardVisibilityNotifier: Querying presentation state", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  state64[0] = 0;
  swift_beginAccess();
  if (*(v1 + 112) == -1)
  {
    sub_24F921F38();
    v10 = sub_24F921F08();
    v11 = v10 ? (v10 + 32) : 0;
    swift_beginAccess();
    v12 = notify_register_check(v11, (v1 + 112));
    swift_endAccess();

    if (v12)
    {
      v13 = sub_24F9220B8();
      v14 = sub_24F92BDB8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24E5DD000, v13, v14, "GameOverlayDashboardVisibilityNotifier: Could not register dashboard visibility token", v15, 2u);
        MEMORY[0x2530542D0](v15, -1, -1);
      }
    }
  }

  if (notify_get_state(*(v1 + 112), state64))
  {
    v16 = sub_24F9220B8();
    v17 = sub_24F92BDB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "GameOverlayDashboardVisibilityNotifier: Could not get dashboard visibility dashboard visibility status", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }
  }

  v19 = state64[0];
  (*(v3 + 104))(v5, *MEMORY[0x277D0C2D8], v2);
  v20 = sub_24F921F18();
  (*(v3 + 8))(v5, v2);
  return v19 == v20;
}

BOOL sub_24F367B68()
{
  v1 = v0;
  state64[7] = *MEMORY[0x277D85DE8];
  v2 = sub_24F921F28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = state64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2113F8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E838);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "GameOverlayDashboardVisibilityNotifier: Querying presentation state", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  state64[0] = 0;
  swift_beginAccess();
  if (*(v1 + 116) == -1)
  {
    sub_24F921F38();
    v10 = sub_24F921F08();
    v11 = v10 ? (v10 + 32) : 0;
    swift_beginAccess();
    v12 = notify_register_check(v11, (v1 + 116));
    swift_endAccess();

    if (v12)
    {
      v13 = sub_24F9220B8();
      v14 = sub_24F92BDB8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24E5DD000, v13, v14, "GameOverlayDashboardVisibilityNotifier: Could not register check token", v15, 2u);
        MEMORY[0x2530542D0](v15, -1, -1);
      }
    }
  }

  if (notify_get_state(*(v1 + 116), state64))
  {
    v16 = sub_24F9220B8();
    v17 = sub_24F92BDB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "GameOverlayDashboardVisibilityNotifier: Could not get controls tab visibility status", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }
  }

  v19 = state64[0];
  (*(v3 + 104))(v5, *MEMORY[0x277D0C2D8], v2);
  v20 = sub_24F921F18();
  (*(v3 + 8))(v5, v2);
  return v19 == v20;
}

uint64_t sub_24F367ED4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F367F14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24F3669FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24F367FF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F36802C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F366C28();
}

unint64_t sub_24F3680E4()
{
  result = qword_27F240428;
  if (!qword_27F240428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240428);
  }

  return result;
}

unint64_t sub_24F36813C()
{
  result = qword_27F240430;
  if (!qword_27F240430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240430);
  }

  return result;
}

uint64_t sub_24F3681EC(char a1, int *a2, uint64_t a3)
{
  v6 = sub_24F921F28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == -1)
  {
    v10 = a3 ? (a3 + 32) : 0;
    if (notify_register_check(v10, a2))
    {
      if (qword_27F2113F8 != -1)
      {
        swift_once();
      }

      v11 = sub_24F9220D8();
      __swift_project_value_buffer(v11, qword_27F39E838);
      v12 = sub_24F9220B8();
      v13 = sub_24F92BDB8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_24E5DD000, v12, v13, "GameOverlayDashboardVisibilityNotifier: Could not register visibility token", v14, 2u);
        MEMORY[0x2530542D0](v14, -1, -1);
      }
    }
  }

  v15 = MEMORY[0x277D0C2D8];
  if ((a1 & 1) == 0)
  {
    v15 = MEMORY[0x277D0C2D0];
  }

  (*(v7 + 104))(v9, *v15, v6);
  v16 = *a2;
  v17 = sub_24F921F18();
  if (notify_set_state(v16, v17))
  {
    if (qword_27F2113F8 != -1)
    {
      swift_once();
    }

    v18 = sub_24F9220D8();
    __swift_project_value_buffer(v18, qword_27F39E838);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BDB8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "GameOverlayDashboardVisibilityNotifier: Could not set visibility status", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }
  }

  if (a3)
  {
    v22 = (a3 + 32);
  }

  else
  {
    v22 = 0;
  }

  if (notify_post(v22))
  {
    if (qword_27F2113F8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F9220D8();
    __swift_project_value_buffer(v23, qword_27F39E838);
    v24 = sub_24F9220B8();
    v25 = sub_24F92BDB8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24E5DD000, v24, v25, "GameOverlayDashboardVisibilityNotifier: Could not post visibility darwin notification", v26, 2u);
      MEMORY[0x2530542D0](v26, -1, -1);
    }
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F36857C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F36864C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengesInvitesShelfIntent()
{
  result = qword_27F240440;
  if (!qword_27F240440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F368748()
{
  sub_24E7C92C0(319, &qword_27F21D768, type metadata accessor for ChallengeInvite, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24E7C92C0(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F36884C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240450);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ChallengesInvitesShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F368E90();
  v14 = v9;
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v26 = v6;
  v15 = v28;
  v16 = v29;
  LOBYTE(v32) = 0;
  *v12 = sub_24F92CC28();
  *(v12 + 1) = v18;
  LOBYTE(v32) = 1;
  *(v12 + 2) = sub_24F92CC28();
  *(v12 + 3) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D770);
  v31 = 2;
  sub_24F368EE4();
  sub_24F92CC68();
  *(v12 + 4) = v32;
  v31 = 3;
  sub_24F368F98();
  sub_24F92CC68();
  v25 = 0;
  v12[40] = v32;
  type metadata accessor for Game();
  LOBYTE(v32) = 4;
  sub_24E7C9714(&qword_27F214968, type metadata accessor for Game);
  v21 = v25;
  v20 = v26;
  sub_24F92CC18();
  v25 = v21;
  if (v21)
  {
    (*(v15 + 8))(v14, v16);
    v22 = 0;
  }

  else
  {
    sub_24E7374E4(v20, &v12[*(v10 + 32)]);
    v31 = 5;
    sub_24F368FEC();
    v23 = v25;
    sub_24F92CC68();
    v25 = v23;
    if (!v23)
    {
      (*(v15 + 8))(v14, v16);
      v12[*(v10 + 36)] = v32;
      sub_24F369040(v12, v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      return sub_24F3690A4(v12);
    }

    (*(v15 + 8))(v14, v16);
    v22 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);

  if (v22)
  {
    return sub_24E7D0014(&v12[*(v10 + 32)]);
  }

  return result;
}

uint64_t sub_24F368CE8()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x5479616C70736964;
  v4 = 1701667175;
  if (v1 != 4)
  {
    v4 = 0x4379616C70736964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616C506C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x73657469766E69;
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

uint64_t sub_24F368DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F369218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F368DE0(uint64_t a1)
{
  v2 = sub_24F368E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F368E1C(uint64_t a1)
{
  v2 = sub_24F368E90();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F368E90()
{
  result = qword_27F240458;
  if (!qword_27F240458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240458);
  }

  return result;
}

unint64_t sub_24F368EE4()
{
  result = qword_27F240460;
  if (!qword_27F240460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D770);
    sub_24E7C9714(&qword_27F240468, type metadata accessor for ChallengeInvite);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240460);
  }

  return result;
}

unint64_t sub_24F368F98()
{
  result = qword_27F240470;
  if (!qword_27F240470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240470);
  }

  return result;
}

unint64_t sub_24F368FEC()
{
  result = qword_27F240478;
  if (!qword_27F240478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240478);
  }

  return result;
}

uint64_t sub_24F369040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesInvitesShelfIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3690A4(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesInvitesShelfIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F369114()
{
  result = qword_27F240480;
  if (!qword_27F240480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240480);
  }

  return result;
}

unint64_t sub_24F36916C()
{
  result = qword_27F240488;
  if (!qword_27F240488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240488);
  }

  return result;
}

unint64_t sub_24F3691C4()
{
  result = qword_27F240490;
  if (!qword_27F240490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240490);
  }

  return result;
}

uint64_t sub_24F369218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xED00004449726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73657469766E69 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00747865746E6FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F369478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v33 = sub_24F9285B8();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F928388();
  v9 = *(v37 - 8);
  v10 = MEMORY[0x28223BE20](v37);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = a1;
  sub_24F928398();
  v32 = v6;
  v16 = v34;
  sub_24F369810(v14, a2, &v35);
  if (v16)
  {
    (*(v7 + 8))(a2, v33);
    v17 = *(v9 + 8);
    v18 = v37;
    (v17)(v15, v37);
    (v17)(v14, v18);
    swift_deallocPartialClassInstance();
    return v17;
  }

  v19 = v7;
  v34 = a2;
  v20 = *(v9 + 8);
  v21 = v37;
  v32 = v9 + 8;
  v30 = v20;
  result = (v20)(v14, v37);
  if (v36)
  {
    sub_24E612C80(&v35, v3 + OBJC_IVAR____TtC12GameStoreKit16GSKWrappedAction_wrappedAction);
    v23 = v12;
    v24 = v15;
    (*(v9 + 16))(v12, v15, v21);
    v25 = v19;
    v26 = *(v19 + 16);
    v27 = v31;
    v29 = v33;
    v28 = v34;
    v26(v31, v34, v33);
    v17 = Action.init(deserializing:using:)(v23, v27);
    (*(v25 + 8))(v28, v29);
    v30(v24, v21);
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_24F369810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928348();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (!v12)
  {
    goto LABEL_10;
  }

  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }

  v13 = off_27F2161E8;
  if (!*(off_27F2161E8 + 2))
  {

    goto LABEL_10;
  }

  v14 = sub_24E76D644(v10, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_10:
    sub_24F369CDC();
    swift_allocError();
    return swift_willThrow();
  }

  v17 = dynamic_cast_existential_2_conditional(*(v13[7] + 16 * v14));
  if (v17)
  {
    *&v30 = v17;
    *(&v30 + 1) = v18;
    v31 = v19;
    __swift_allocate_boxed_opaque_existential_1(v29);
    sub_24F9282F8();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_2(v29);
    }

    else
    {
      v28 = v30;
      v24 = v30;
      v25 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v26 = v32;
      *(v32 + 24) = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v25, v24);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    v21 = type metadata accessor for Action();
    result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
    if (!v3)
    {
      v22 = result;
      v23 = v32;
      *(v32 + 24) = v21;
      result = sub_24F00D9C8();
      v23[4] = result;
      *v23 = v22;
    }
  }

  return result;
}

uint64_t sub_24F369B28()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKit16GSKWrappedAction_wrappedAction);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GSKWrappedAction()
{
  result = qword_27F240498;
  if (!qword_27F240498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F369CDC()
{
  result = qword_27F2404A8;
  if (!qword_27F2404A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404A8);
  }

  return result;
}

unint64_t sub_24F369D44()
{
  result = qword_27F2404B0;
  if (!qword_27F2404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404B0);
  }

  return result;
}

uint64_t sub_24F369DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F927D88();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v12 = sub_24F92BEF8();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_24F36A438;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_6_8;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F36A444(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_24F36A0C8(uint64_t a1, void *a2)
{
  v4 = sub_24F928AE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion))(a2, v6);
  if (a2)
  {
    v9 = a2;
    sub_24F92A9A8();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D21CA8], v4);
    sub_24F92A9C8();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24F36A234(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v2 = sub_24F92A9E8();
  v3 = objc_opt_self();

  v4 = sub_24F92B098();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_24F36A3D0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24E9FABA0;
  v8[3] = &block_descriptor_145;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_24F36A390()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F36A3F0()
{

  return swift_deallocObject();
}

uint64_t sub_24F36A444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LeaderboardEntry.formattedScore.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for LeaderboardEntry()
{
  result = qword_27F2404D8;
  if (!qword_27F2404D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t LeaderboardEntry.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  strcpy((inited + 32), "formattedScore");
  *(inited + 47) = -18;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for LeaderboardEntry();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F36AEB8(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1802396018;
  *(inited + 152) = 0xE400000000000000;
  v10 = *(v1 + v7[6]);
  v11 = MEMORY[0x277D83B88];
  *(inited + 184) = MEMORY[0x277D83B88];
  v12 = sub_24E65901C();
  *(inited + 160) = v10;
  *(inited + 192) = v12;
  *(inited + 200) = 0x65726F6373;
  *(inited + 208) = 0xE500000000000000;
  v13 = *(v1 + v7[7]);
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 216) = v13;

  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F36A79C()
{
  v1 = 0x657474616D726F66;
  v2 = 1802396018;
  if (*v0 != 2)
  {
    v2 = 0x65726F6373;
  }

  if (*v0)
  {
    v1 = 0x726579616C70;
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

uint64_t sub_24F36A814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F36B29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F36A83C(uint64_t a1)
{
  v2 = sub_24F36AE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F36A878(uint64_t a1)
{
  v2 = sub_24F36AE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2404C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F36AE64();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for LeaderboardEntry();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD38();
    v8[12] = 3;
    sub_24F92CD38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LeaderboardEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2404D0);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F36AE64();
  v19 = v7;
  v11 = v21;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v25 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = v13;
  v24 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v10 + v8[5]);
  v23 = 2;
  *(v10 + v8[6]) = sub_24F92CC58();
  v22 = 3;
  v15 = sub_24F92CC58();
  (*(v12 + 8))(v19, v20);
  *(v10 + v8[7]) = v15;
  sub_24F36AEB8(v10, v17, type metadata accessor for LeaderboardEntry);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F36AF20(v10, type metadata accessor for LeaderboardEntry);
}

unint64_t sub_24F36AE64()
{
  result = qword_27F2404C8;
  if (!qword_27F2404C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404C8);
  }

  return result;
}

uint64_t sub_24F36AEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F36AF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F36AF94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F36B054(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F36B0F8()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F36B198()
{
  result = qword_27F2404E8;
  if (!qword_27F2404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404E8);
  }

  return result;
}

unint64_t sub_24F36B1F0()
{
  result = qword_27F2404F0;
  if (!qword_27F2404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404F0);
  }

  return result;
}

unint64_t sub_24F36B248()
{
  result = qword_27F2404F8;
  if (!qword_27F2404F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404F8);
  }

  return result;
}

uint64_t sub_24F36B29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657474616D726F66 && a2 == 0xEE0065726F635364;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t ChallengesHubHeaderShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  updated = type metadata accessor for ChallengesUpdateNotifier();
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_24F36B594;

  return MEMORY[0x28217F228](v3 + 2, updated, updated);
}

uint64_t sub_24F36B594()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E7CC784;
  }

  else
  {
    v2 = sub_24F36B6A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36B6A8()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v13 = v0[6];
  v14 = v0[11];
  v7 = v0[4];
  v15 = v0[3];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  type metadata accessor for GSKShelf();
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v13);
  sub_24F92B928();

  (*(v2 + 16))(v14, v1, v3);
  sub_24E613678();
  sub_24F9280F8();

  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F36B888(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v41 = *(v38 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = v34 - v8;
  v9 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_24F92C888();
  v14 = *a2;
  v13 = a2[1];

  v45 = v14;
  v46 = v13;
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA74530);
  v16 = v45;
  v15 = v46;
  v37 = v45;
  sub_24F36EBE4(a2, v12, type metadata accessor for ChallengesHubHeaderShelfIntent);
  v17 = *(v10 + 80);
  v34[1] = v17 | 7;
  v18 = swift_allocObject();
  v35 = v15;
  v36 = a3;
  v18[2] = a3;
  v18[3] = v16;
  v18[4] = v15;
  sub_24F36E01C(v12, v18 + ((v17 + 40) & ~v17));

  v20 = v38;
  v19 = v39;
  sub_24F92B898();
  v21 = sub_24F92B858();
  (*(*(v21 - 8) + 56))(v44, 1, 1, v21);
  sub_24F36EBE4(a2, v12, type metadata accessor for ChallengesHubHeaderShelfIntent);
  v22 = v40;
  v23 = v41;
  v24 = v20;
  (*(v41 + 16))(v40, v19, v20);
  v25 = (v17 + 32) & ~v17;
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + *(v23 + 80) + 8) & ~*(v23 + 80);
  v28 = (v42 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_24F36E01C(v12, v29 + v25);
  *(v29 + v26) = v43;
  (*(v23 + 32))(v29 + v27, v22, v24);
  v30 = v37;
  *(v29 + v28) = v36;
  v31 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v35;
  *v31 = v30;
  v31[1] = v32;

  sub_24F1D3DA4(0, 0, v44, &unk_24F9EAD58, v29);
}

uint64_t sub_24F36BCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_24F36EBE4(a5, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesHubHeaderShelfIntent);
  v16 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  sub_24F36E01C(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

  sub_24EA998B8(0, 0, v14, &unk_24F9EAD70, v17);
}

uint64_t sub_24F36BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F36BF34, 0, 0);
}

uint64_t sub_24F36BF34()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  sub_24E736938(v1 + *(v3 + 36), v2);
  v4 = type metadata accessor for Game();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v6 = v0[6];
  if (v5 == 1)
  {
    sub_24E7D0014(v0[6]);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *v6;
    v8 = v6[1];

    sub_24F36EC4C(v6, type metadata accessor for Game);
  }

  v0[7] = v7;
  v0[8] = v8;
  v9 = v0[2];

  return MEMORY[0x2822009F8](sub_24F36C040, v9, 0);
}

uint64_t sub_24F36C040()
{
  sub_24F5EA3E0(v0[3], v0[4], v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F36C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v14;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  v8[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780);
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788);
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v8[30] = v11;
  v8[31] = *(v11 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for ChallengesHubHeaderShelfConstructionIntent();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F36C32C, 0, 0);
}

uint64_t sub_24F36C32C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 136);
  v4 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  v5 = v4[5];
  v6 = *(v3 + v4[6]);
  v7 = *(v3 + v4[7]);
  v8 = *(v3 + v4[8]);
  *(v0 + 496) = v5;
  v9 = *v3;
  *(v0 + 312) = *v3;
  v10 = v3[1];
  *(v0 + 320) = v10;
  v11 = v4[9];
  *(v0 + 500) = v11;
  sub_24F36EBE4(v3 + v5, v1 + v2[6], type metadata accessor for Player);
  sub_24E736938(v3 + v11, v1 + v2[8]);
  *v1 = v6;
  v1[1] = v7;
  v1[2] = v8;
  v12 = (v1 + v2[7]);
  *v12 = v9;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  *(v0 + 328) = v13;

  v14 = swift_task_alloc();
  *(v0 + 336) = v14;
  *v14 = v0;
  v14[1] = sub_24F36C4A4;

  return MEMORY[0x28217F228](v0 + 16, v13, v13);
}

uint64_t sub_24F36C4A4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24F36C7D0;
  }

  else
  {
    v2 = sub_24F36C5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36C5B8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[44] = v3;
  v4 = sub_24F36EB9C(&qword_27F21D550, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  v0[45] = v4;
  *v3 = v0;
  v3[1] = sub_24F36C6BC;
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v0[18];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F36C6BC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24F36CA94;
  }

  else
  {
    v2 = sub_24F36C8C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36C7D0()
{
  sub_24F36EC4C(*(v0 + 280), type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F36C8C8()
{
  v17 = *(v0 + 500);
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 184);
  v8 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24F36EC4C(v3, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24F36EBE4(v2, v1, type metadata accessor for GSKShelf);
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  v9 = *(v5 + 8);
  *(v0 + 384) = v9;
  *(v0 + 392) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  sub_24E736938(v8 + v17, v7);
  v10 = type metadata accessor for Game();
  v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
  v12 = *(v0 + 184);
  if (v11 == 1)
  {
    sub_24E7D0014(*(v0 + 184));
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = *v12;
    v14 = v12[1];

    sub_24F36EC4C(v12, type metadata accessor for Game);
  }

  *(v0 + 400) = v13;
  *(v0 + 408) = v14;
  v15 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_24F36CB94, v15, 0);
}

uint64_t sub_24F36CA94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24F36EC4C(*(v0 + 280), type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F36CB94()
{
  sub_24F5E9B3C(v0[21], v0[22], v0[50], v0[51], v0[26]);

  return MEMORY[0x2822009F8](sub_24F36CC14, 0, 0);
}

uint64_t sub_24F36CC14()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_24F36CCF0;
  v5 = v0[27];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_24F36CCF0()
{

  return MEMORY[0x2822009F8](sub_24F36CDEC, 0, 0);
}

uint64_t sub_24F36CDEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 424) = v1;
  *(v0 + 432) = v2;
  v3 = *(v0 + 72);
  *(v0 + 440) = v3;
  *(v0 + 456) = *(v0 + 88);
  if (v3)
  {
    v4 = *(v0 + 500);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 136);
    v10 = *(v3 + 16);
    sub_24F36EBE4(v9 + *(v0 + 496), v7 + v8[6], type metadata accessor for Player);
    sub_24E736938(v9 + v4, v7 + v8[8]);
    *v7 = v1;
    v7[1] = v2;
    v7[2] = v10;
    v11 = (v7 + v8[7]);
    *v11 = v6;
    v11[1] = v5;

    v12 = swift_task_alloc();
    *(v0 + 464) = v12;
    *v12 = v0;
    v12[1] = sub_24F36D018;
    v13 = *(v0 + 328);

    return MEMORY[0x28217F228](v0 + 96, v13, v13);
  }

  else
  {
    v14 = *(v0 + 304);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    sub_24F36EC4C(v14, type metadata accessor for GSKShelf);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24F36D018()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_24F36D308;
  }

  else
  {
    v2 = sub_24F36D12C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36D12C()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_24F36D1F4;
  v4 = v0[45];
  v5 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[18];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F36D1F4()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_24F36D600;
  }

  else
  {
    v2 = sub_24F36D46C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36D308()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[38];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  sub_24F36EC4C(v0[34], type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24E614F20(v3, v2, v1);
  (*(v5 + 8))(v6, v7);
  sub_24F36EC4C(v4, type metadata accessor for GSKShelf);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F36D46C()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v12 = v0[48];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v7 = v0[32];
  v11 = v0[30];
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  sub_24E614F20(v3, v2, v1);
  sub_24F36EC4C(v6, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24F36EBE4(v5, v4, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v12(v7, v11);
  sub_24F36EC4C(v5, type metadata accessor for GSKShelf);
  v8 = swift_task_alloc();
  v0[52] = v8;
  *v8 = v0;
  v8[1] = sub_24F36CCF0;
  v9 = v0[27];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v9);
}

uint64_t sub_24F36D600()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[38];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  sub_24F36EC4C(v0[34], type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24E614F20(v3, v2, v1);
  (*(v5 + 8))(v6, v7);
  sub_24F36EC4C(v4, type metadata accessor for GSKShelf);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F36D76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesHubHeaderShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F36D82C()
{
  v1 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  v2 = *(*(v1 - 8) + 80);

  v35 = v0 + ((v2 + 40) & ~v2);
  v36 = v1;
  v3 = v35 + *(v1 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v37 = *(v6 - 8);
  v38 = *(v37 + 8);
  v38(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v7 + v11, 1, v6))
      {
        v38(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v12 + v13, 1, v6))
      {
        v38(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v38(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v37 + 48))(v14 + v17, 1, v6))
    {
      v38(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    v38(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v37 + 48))(v21 + v24, 1, v6))
    {
      v38(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v35 + *(v36 + 36);
  v29 = type metadata accessor for Game();
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {

    v38(v28 + v29[18], v6);
    v30 = v29[19];
    if (!(*(v37 + 48))(v28 + v30, 1, v6))
    {
      v38(v28 + v30, v6);
    }

    v31 = v29[21];
    v32 = sub_24F920818();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v28 + v31, 1, v32))
    {
      (*(v33 + 8))(v28 + v31, v32);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F36E01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F36E080(uint64_t a1)
{
  v3 = *(type metadata accessor for ChallengesHubHeaderShelfIntent() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_24F36BCB8(a1, v4, v5, v6, v7);
}

uint64_t sub_24F36E0F8()
{
  v1 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  v2 = *(*(v1 - 8) + 80);
  v43 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v4 = *(v3 - 8);
  v42 = *(v4 + 80);
  swift_unknownObjectRelease();

  v41 = v1;
  v5 = v0 + ((v2 + 32) & ~v2) + *(v1 + 20);

  v6 = type metadata accessor for Player(0);
  v7 = v6[6];
  v8 = sub_24F9289E8();
  v45 = *(v8 - 8);
  v44 = *(v45 + 8);
  v44(v5 + v7, v8);

  if (*(v5 + v6[9] + 8) != 1)
  {
  }

  v9 = v5 + v6[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v37 = v4;
    v39 = v3;
    v11 = type metadata accessor for CallProviderConversationHandle();
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v45 + 48))(v9 + v13, 1, v8))
      {
        v44(v9 + v13, v8);
      }
    }

    v14 = v9 + *(v10 + 20);
    if (!v12(v14, 1, v11))
    {

      v15 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v45 + 48))(v14 + v15, 1, v8))
      {
        v44(v14 + v15, v8);
      }
    }

    v4 = v37;
    v3 = v39;
  }

  if (*(v5 + v6[15] + 8))
  {
  }

  v16 = v5 + v6[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v38 = v4;
    v40 = v3;

    v18 = type metadata accessor for Game();
    v44(v16 + v18[18], v8);
    v19 = v18[19];
    if (!(*(v45 + 48))(v16 + v19, 1, v8))
    {
      v44(v16 + v19, v8);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v4 = v38;
    v3 = v40;
  }

  v23 = v5 + v6[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game();
    v44(v23 + v25[18], v8);
    v26 = v25[19];
    if (!(*(v45 + 48))(v23 + v26, 1, v8))
    {
      v44(v23 + v26, v8);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  v30 = v0 + ((v2 + 32) & ~v2) + *(v41 + 36);
  v31 = type metadata accessor for Game();
  if (!(*(*(v31 - 1) + 48))(v30, 1, v31))
  {

    v44(v30 + v31[18], v8);
    v32 = v31[19];
    if (!(*(v45 + 48))(v30 + v32, 1, v8))
    {
      v44(v30 + v32, v8);
    }

    v33 = v31[21];
    v34 = sub_24F920818();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v30 + v33, 1, v34))
    {
      (*(v35 + 8))(v30 + v33, v34);
    }
  }

  (*(v4 + 8))(v0 + ((((v43 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v42 + 8) & ~v42), v3);

  return swift_deallocObject();
}

uint64_t sub_24F36E9D0(uint64_t a1)
{
  v3 = *(type metadata accessor for ChallengesHubHeaderShelfIntent() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_24E614970;

  return sub_24F36C0C8(a1, v11, v12, v1 + v4, v9, v1 + v7, v10, v13);
}

uint64_t sub_24F36EB9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F36EBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F36EC4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F36ECAC()
{
  v1 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  v2 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v35 = v0 + ((v2 + 56) & ~v2);
  v36 = v1;
  v3 = v35 + *(v1 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v37 = *(v6 - 8);
  v38 = *(v37 + 8);
  v38(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v7 + v11, 1, v6))
      {
        v38(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v12 + v13, 1, v6))
      {
        v38(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v38(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v37 + 48))(v14 + v17, 1, v6))
    {
      v38(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    v38(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v37 + 48))(v21 + v24, 1, v6))
    {
      v38(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v35 + *(v36 + 36);
  v29 = type metadata accessor for Game();
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {

    v38(v28 + v29[18], v6);
    v30 = v29[19];
    if (!(*(v37 + 48))(v28 + v30, 1, v6))
    {
      v38(v28 + v30, v6);
    }

    v31 = v29[21];
    v32 = sub_24F920818();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v28 + v31, 1, v32))
    {
      (*(v33 + 8))(v28 + v31, v32);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F36F4A4(uint64_t a1)
{
  v4 = *(type metadata accessor for ChallengesHubHeaderShelfIntent() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F36BE94(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24F36F5B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v32 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - v17;
  *(a9 + 24) = xmmword_24F9CA410;
  *(a9 + 40) = 0x403E000000000000;
  v19 = type metadata accessor for Marquee();
  v20 = a9 + v19[15];
  *v20 = sub_24F36F810();
  *(v20 + 8) = v21 & 1;
  *(v20 + 16) = v22;
  v23 = (a9 + v19[16]);
  sub_24E6102E8(MEMORY[0x277D84F90]);
  *v23 = sub_24F36F868();
  v23[1] = v24;
  v25 = sub_24F91F648();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  sub_24F36F8B0(v18);
  v26 = v19[18];
  *(a9 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v27 = v19[19];
  *(a9 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  v28 = swift_storeEnumTagMultiPayload();
  if (a2)
  {
    v28 = sub_24F924C88();
    a1 = v28;
  }

  *a9 = a1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4 & 1;
  v29 = a5;
  if (a6)
  {
    v29 = 8.0;
  }

  *(a9 + 48) = v29;
  return v32(v28);
}

uint64_t sub_24F36F810()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8);
  sub_24F926F28();
  return v1;
}

uint64_t sub_24F36F868()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239808);
  sub_24F926F28();
  return v1;
}

uint64_t sub_24F36F8B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2);
  sub_24E60169C(a1, &v5 - v3, &unk_27F22EC30);
  sub_24F926F28();
  return sub_24E601704(a1, &unk_27F22EC30);
}

uint64_t sub_24F36F978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050);
  sub_24F926F38();
  return v1;
}

uint64_t sub_24F36F9E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050);
  sub_24F926F58();
  return v1;
}

uint64_t sub_24F36FA54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240638);
  sub_24F926F38();
  return v1;
}

uint64_t sub_24F36FAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24E60169C(a1, &v5 - v3, &unk_27F22EC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
  sub_24F926F48();
  return sub_24E601704(a1, &unk_27F22EC30);
}

uint64_t sub_24F36FB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24E60169C(v2 + *(a1 + 72), &v15 - v10, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t Marquee.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F925468();
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[2] = v10;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  sub_24F370140(a1);
  (*(v4 + 16))(v6, v2, a1);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a1 + 16);
  (*(v4 + 32))(v15 + v14, v6, a1);
  (*(v8 + 16))(v10, v13, v7);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24F3706E8;
  *(v16 + 24) = v15;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240500);
  v34[0] = sub_24F372D58();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240508);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240510);
  v19 = sub_24E602068(&qword_27F240518, &qword_27F240508);
  v20 = sub_24E602068(&qword_27F240520, &qword_27F240510);
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v37;
  v22 = v35;
  sub_24F923828();
  (*(v36 + 8))(v13, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240528);
  v24 = v21;
  sub_24F371E10(v21 + *(v23 + 36));
  v25 = sub_24F36F9E4();
  v27 = v26;
  v29 = v28;
  LOBYTE(v13) = v30;
  v31 = *v2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F240530);
  v33 = v24 + *(result + 36);
  *v33 = v25;
  *(v33 + 8) = v27;
  *(v33 + 16) = v29;
  *(v33 + 24) = v13 & 1;
  *(v33 + 32) = v31;
  return result;
}

uint64_t sub_24F370140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_24F923418();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  if (sub_24F3723EC())
  {
    sub_24F372460(a1, v11);
    (*(v6 + 104))(v8, *MEMORY[0x277CDD6B0], v5);
    v12 = sub_24F923408();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    if ((v12 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
      sub_24F926F38();
      v14 = sub_24F91F648();
      (*(*(v14 - 8) + 48))(v4, 1, v14);
      sub_24E601704(v4, &unk_27F22EC30);
    }
  }

  return sub_24F925458();
}

uint64_t sub_24F370388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = type metadata accessor for Marquee();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240510);
  v14 = *(v13 - 8);
  v25 = v13;
  v26 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240508);
  MEMORY[0x28223BE20](v24);
  v18 = &v24 - v17;
  LOBYTE(v17) = *(a2 + 16);
  *v18 = *a2;
  v18[16] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240648);
  sub_24F370784(a2, a1, a3, a4, &v18[*(v19 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  sub_24F923818();
  (*(v10 + 16))(v12, a2, v9);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  (*(v10 + 32))(v21 + v20, v12, v9);
  sub_24E602068(&qword_27F240518, &qword_27F240508);
  sub_24E602068(&qword_27F240520, &qword_27F240510);
  v22 = v25;
  sub_24F926AB8();

  (*(v26 + 8))(v16, v22);
  return sub_24E601704(v18, &qword_27F240508);
}

uint64_t sub_24F3706E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Marquee() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24F370388(a1, v8, v5, v6, a2);
}

uint64_t sub_24F370784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a2;
  v32 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v28 - v8;
  v29 = &v28 - v8;
  v10 = type metadata accessor for Marquee();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v18, a1 + *(v19 + 56), a3, v16);
  (*(v11 + 16))(v14, a1, v10);
  (*(v7 + 16))(v9, v31, v33);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = a3;
  *(v23 + 24) = v24;
  (*(v11 + 32))(v23 + v21, v14, v10);
  (*(v7 + 32))(v23 + v22, v29, v33);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240650);
  v26 = sub_24F374514();
  return MEMORY[0x25304CBA0](v18, sub_24F374408, v23, v25, a3, v26, v24);
}

uint64_t sub_24F370A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a6;
  v63 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E10);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v52 - v11;
  v56 = sub_24F923E08();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24F923F78();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_24F9272E8();
  v14 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240678);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240668);
  MEMORY[0x28223BE20](v53);
  v64 = &v52 - v24;
  v25 = *(a2 + 24);
  *v23 = sub_24F9249A8();
  *(v23 + 1) = v25;
  v23[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240690);
  sub_24F371160(a1, a2, a4, a5, &v23[*(v26 + 44)]);
  sub_24F9272F8();
  v27 = type metadata accessor for Marquee();
  sub_24F371B08(v63, v19);
  v29 = v28;
  v30 = *(v14 + 8);
  v31 = v19;
  v32 = v52;
  v30(v31, v52);
  v33 = &v23[*(v21 + 44)];
  *v33 = v29;
  *(v33 + 1) = 0;
  v57 = a1;
  sub_24F9272F8();
  v63 = v27;
  if (*(sub_24F36FA54() + 16) && (sub_24E76E99C(v16), (v34 & 1) != 0))
  {
    v30(v16, v32);
  }

  else
  {

    v30(v16, v32);
  }

  sub_24F36F978();
  sub_24F927628();
  v35 = v61;
  v36 = v59;
  v37 = v58;
  sub_24F9242E8();
  v38 = v64;
  sub_24E6009C8(v23, v64, &qword_27F240678);
  v39 = (v38 + *(v53 + 36));
  v40 = v70;
  v39[4] = v69;
  v39[5] = v40;
  v39[6] = v71;
  v41 = v66;
  *v39 = v65;
  v39[1] = v41;
  v42 = v68;
  v39[2] = v67;
  v39[3] = v42;
  KeyPath = swift_getKeyPath();
  v44 = v54;
  sub_24F9272D8();
  sub_24F374718();
  v45 = v60;
  sub_24F923E18();
  (*(v55 + 8))(v44, v56);
  v46 = *(v36 + 48);
  if (v46(v45, 1, v35) == 1)
  {
    sub_24F36FB84(v63, v37);
    if (v46(v45, 1, v35) != 1)
    {
      sub_24E601704(v45, &qword_27F238E10);
    }
  }

  else
  {
    (*(v36 + 32))(v37, v45, v35);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240650);
  v48 = v62;
  v49 = (v62 + *(v47 + 36));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0);
  (*(v36 + 32))(v49 + *(v50 + 28), v37, v35);
  *v49 = KeyPath;
  return sub_24E6009C8(v64, v48, &qword_27F240668);
}

uint64_t sub_24F371160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v80 = a2;
  v78 = a5;
  v6 = sub_24F9272E8();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v70 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406A0);
  MEMORY[0x28223BE20](v79);
  v69 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406A8);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v58 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406B0);
  MEMORY[0x28223BE20](v73);
  v77 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v76 = &v58 - v15;
  v16 = sub_24F927308();
  v17 = *(v16 - 8);
  v67 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v64 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Marquee();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v59 = &v58 - v22;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406B8) - 8;
  MEMORY[0x28223BE20](v63);
  v71 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v58 - v27;
  v29 = *(v17 + 16);
  v61 = a1;
  v60 = v16;
  v29(&v58 - v27, a1, v16, v26);
  v62 = v29;
  v30 = v80;
  *&v28[*(v79 + 36)] = 257;
  (*(v20 + 16))(v23, v30, v19);
  v31 = v64;
  (v29)(v64, a1, v16);
  v32 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v33 = (v21 + *(v17 + 80) + v32) & ~*(v17 + 80);
  v34 = swift_allocObject();
  v35 = v66;
  *(v34 + 16) = v65;
  *(v34 + 24) = v35;
  (*(v20 + 32))(v34 + v32, v59, v19);
  v36 = v60;
  (*(v17 + 32))(v34 + v33, v31, v60);
  v37 = v28;
  v38 = &v28[*(v63 + 44)];
  *v38 = sub_24E72DE30;
  *(v38 + 1) = 0;
  *(v38 + 2) = sub_24F374A98;
  *(v38 + 3) = v34;
  v39 = v68;
  v40 = v69;
  v62(v69, v61, v36);
  v41 = v70;
  *(v40 + *(v79 + 36)) = 257;
  sub_24F374B88();
  sub_24F9265E8();
  sub_24E601704(v40, &qword_27F2406A0);
  sub_24F9272F8();
  v42 = sub_24F36FA54();
  if (*(v42 + 16) && (v43 = sub_24E76E99C(v41), (v44 & 1) != 0))
  {
    v45 = *(*(v42 + 56) + 8 * v43);
    (*(v74 + 8))(v41, v75);

    v46 = COERCE_DOUBLE(sub_24F36F978());
    if (v47)
    {
      v48 = 1.0;
      if (v45 > 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {

    (*(v74 + 8))(v41, v75);
    v46 = COERCE_DOUBLE(sub_24F36F978());
    if (v49)
    {
LABEL_9:
      v48 = 0.0;
      goto LABEL_10;
    }

    v45 = 0.0;
  }

  v48 = 1.0;
  if (v45 <= v46)
  {
    goto LABEL_9;
  }

LABEL_10:
  v50 = v39;
  v51 = v72;
  sub_24E6009C8(v50, v72, &qword_27F2406A8);
  *(v51 + *(v73 + 36)) = v48;
  v52 = v76;
  sub_24E6009C8(v51, v76, &qword_27F2406B0);
  v53 = v71;
  sub_24E60169C(v37, v71, &qword_27F2406B8);
  v54 = v77;
  sub_24E60169C(v52, v77, &qword_27F2406B0);
  v55 = v78;
  sub_24E60169C(v53, v78, &qword_27F2406B8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406C8);
  sub_24E60169C(v54, v55 + *(v56 + 48), &qword_27F2406B0);
  sub_24E601704(v52, &qword_27F2406B0);
  sub_24E601704(v37, &qword_27F2406B8);
  sub_24E601704(v54, &qword_27F2406B0);
  return sub_24E601704(v53, &qword_27F2406B8);
}

uint64_t sub_24F371890(double *a1, uint64_t a2)
{
  v4 = sub_24F9272E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_24F9272F8();
  v9 = (a2 + *(type metadata accessor for Marquee() + 64));
  v11 = v9[1];
  v18 = *v9;
  v10 = v18;
  v19 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240638);
  sub_24F926F38();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v20;
  sub_24E822B2C(v7, isUniquelyReferenced_nonNull_native, v8);
  (*(v5 + 8))(v7, v4);
  v13 = v16;
  v16 = v10;
  v17 = v11;
  v15 = v13;
  sub_24F926F48();

  return sub_24F371A3C();
}

uint64_t sub_24F371A3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_24F91F618();
  v3 = sub_24F91F648();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_24F36FAAC(v2);
}

void sub_24F371B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);
  sub_24F926F38();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &unk_27F22EC30);
    return;
  }

  (*(v9 + 32))(v14, v7, v8);
  v15 = sub_24F36FA54();
  if (*(v15 + 16) && (v16 = sub_24E76E99C(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);

    v19 = COERCE_DOUBLE(sub_24F36F978());
    if ((v20 & 1) == 0 && v18 > v19)
    {
      v21 = sub_24F36FA54();
      v22 = COERCE_DOUBLE(sub_24ED6ECC8(v21));
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
        sub_24F923808();
        sub_24F91F558();
        v26 = v25;
        v27 = *(v9 + 8);
        v27(v11, v8);
        v27(v14, v8);
        fmod(-((v26 - v3[4]) * v3[5]), v22 - v18 + v3[3] + v18 + v3[4] * v3[5]);
        return;
      }
    }
  }

  else
  {
  }

  (*(v9 + 8))(v14, v8);
}

uint64_t sub_24F371E10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9249A8();
  v43 = 0;
  sub_24F3720D0(&v30);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v56[8] = v38;
  v56[9] = v39;
  v56[10] = v40;
  v56[4] = v34;
  v56[5] = v35;
  v56[6] = v36;
  v56[7] = v37;
  v56[0] = v30;
  v56[1] = v31;
  v55 = v41;
  v57 = v41;
  v56[2] = v32;
  v56[3] = v33;
  sub_24E60169C(&v44, v29, &qword_27F240618);
  sub_24E601704(v56, &qword_27F240618);
  *(&v42[8] + 7) = v52;
  *(&v42[9] + 7) = v53;
  *(&v42[10] + 7) = v54;
  *(&v42[4] + 7) = v48;
  *(&v42[5] + 7) = v49;
  *(&v42[6] + 7) = v50;
  *(&v42[7] + 7) = v51;
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  *(&v42[2] + 7) = v46;
  *(&v42[11] + 7) = v55;
  *(&v42[3] + 7) = v47;
  v3 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240620);
  sub_24F9252C8();
  v4 = v42[9];
  *(a1 + 145) = v42[8];
  *(a1 + 161) = v4;
  *(a1 + 177) = v42[10];
  *(a1 + 192) = *(&v42[10] + 15);
  v5 = v42[5];
  *(a1 + 81) = v42[4];
  *(a1 + 97) = v5;
  v6 = v42[7];
  *(a1 + 113) = v42[6];
  *(a1 + 129) = v6;
  v7 = v42[1];
  *(a1 + 17) = v42[0];
  *(a1 + 33) = v7;
  v8 = v42[3];
  *(a1 + 49) = v42[2];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 65) = v8;
  LOBYTE(v2) = sub_24F9257F8();
  sub_24F923318();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240628) + 36);
  *v17 = v2;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_24F925868();
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240630);
  v28 = a1 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_24F3720D0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  *(v2 + 32) = sub_24F926C98();
  *(v2 + 40) = sub_24F926C88();
  sub_24F9278B8();
  sub_24F9278C8();
  MEMORY[0x25304CD70](v2);
  sub_24F923BD8();
  type metadata accessor for Marquee();
  sub_24F3723EC();
  sub_24F927618();
  sub_24F9238C8();
  v34 = v40;
  v35 = v41;
  *&v36 = v42;
  v3 = sub_24F926C88();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93A400;
  *(v4 + 32) = sub_24F926C88();
  *(v4 + 40) = sub_24F926C98();
  sub_24F9278B8();
  sub_24F9278C8();
  MEMORY[0x25304CD70](v4);
  sub_24F923BD8();
  sub_24F3723EC();
  sub_24F927618();
  sub_24F9238C8();
  v28 = v43;
  v29 = v44;
  *&v30 = v45;
  v5 = v36;
  v6 = v37;
  v20[2] = v36;
  v20[3] = v37;
  v7 = v38;
  v20[4] = v38;
  v8 = v35;
  v20[0] = v34;
  v20[1] = v35;
  v22[0] = v43;
  v22[1] = v44;
  v9 = v32;
  v22[3] = v31;
  v22[4] = v32;
  v22[2] = v30;
  *a1 = v34;
  *(a1 + 16) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  v10 = v28;
  v12 = v29;
  v11 = v30;
  v13 = v29;
  v14 = v30;
  *(a1 + 96) = v28;
  *(a1 + 112) = v12;
  *(a1 + 160) = v9;
  v16 = v31;
  v15 = v32;
  v17 = v31;
  *(a1 + 128) = v11;
  *(a1 + 144) = v16;
  v21 = v39;
  v18 = v33;
  v23 = v33;
  *(a1 + 80) = v39;
  *(a1 + 88) = v3;
  *(a1 + 176) = v18;
  v24[0] = v10;
  v24[1] = v13;
  v25 = v33;
  v24[3] = v17;
  v24[4] = v15;
  v24[2] = v14;
  sub_24E60169C(v20, v26, &qword_27F2248A0);

  sub_24E60169C(v22, v26, &qword_27F2248A0);
  sub_24E601704(v24, &qword_27F2248A0);

  v26[2] = v36;
  v26[3] = v37;
  v26[4] = v38;
  v27 = v39;
  v26[0] = v34;
  v26[1] = v35;
  return sub_24E601704(v26, &qword_27F2248A0);
}

BOOL sub_24F3723EC()
{
  v0 = sub_24F36F978();
  if (v1)
  {
    return 0;
  }

  v3 = *&v0;
  v4 = sub_24F36FA54();
  v5 = COERCE_DOUBLE(sub_24ED6ECC8(v4));
  v7 = v6;

  return (v7 & 1) == 0 && v3 < v5;
}

uint64_t sub_24F372460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24E60169C(v2 + *(a1 + 76), &v15 - v10, &qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923418();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24F372668@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F923F78();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24F3726D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240600);
  v24 = *(v5 - 8);
  v6 = v24;
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v33 = *a1;
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = a1[4];
  sub_24F373C50(&v33, &v27);

  sub_24F927618();
  sub_24F9238C8();
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v22 = v32;
  v23 = v31;
  v35 = v28;
  v34 = v30;
  v15 = *(v6 + 16);
  v16 = v25;
  v15(v8, v26, v25);
  *a3 = sub_24F373C48;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  v17 = v22;
  *(a3 + 48) = v23;
  *(a3 + 56) = v17;
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240608) + 48));
  v19 = v16;
  v15(v18, v8, v16);
  v20 = *(v24 + 8);

  v20(v8, v19);
}

uint64_t sub_24F3728D4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F9239C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v14 = sub_24F926C98();
  sub_24F923998();
  v13 = v7;
  v15 = *a2;
  (*(v5 + 16))(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v8 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(a2 + 1);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2[4];
  (*(v5 + 32))(v9 + v8, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  sub_24F373C50(&v15, v12);
  sub_24E7DDA4C();

  sub_24F926AC8();
}

uint64_t sub_24F372A9C()
{
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240610);
  return sub_24F927178();
}

uint64_t sub_24F372B08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v10 = *(v2 + 32);
  v6 = sub_24F9249A8();
  *a2 = v10;
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2405F8);
  return sub_24F3726D4(v9, a1, a2 + *(v7 + 44));
}

uint64_t sub_24F372BA4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v14 = *(v12 - 8);
  result = v12 - 8;
  if (*(v14 + 64) == v9)
  {
    (*(v8 + 16))(v11, a1, v7);
    a2(v11);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F372CF4()
{

  return swift_deallocObject();
}

unint64_t sub_24F372D58()
{
  result = qword_27F21BAC8;
  if (!qword_27F21BAC8)
  {
    sub_24F925468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAC8);
  }

  return result;
}

void sub_24F372DFC()
{
  sub_24EB5FE28();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_24EB8E864(319, &qword_27F21CFF8, &qword_27F21CFA8);
      if (v2 <= 0x3F)
      {
        sub_24EB8E864(319, &qword_27F2405B8, &qword_27F239808);
        if (v3 <= 0x3F)
        {
          sub_24EB8E864(319, &qword_27F22A040, &unk_27F22EC30);
          if (v4 <= 0x3F)
          {
            sub_24F373898(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
            if (v5 <= 0x3F)
            {
              sub_24F373898(319, &qword_27F235C80, MEMORY[0x277CDD6C8]);
              if (v6 <= 0x3F)
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

uint64_t sub_24F372FA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v36 = *(a3 + 16);
  v4 = *(v36 - 8);
  v5 = *(v4 + 84);
  v34 = sub_24F91F648();
  v6 = *(v34 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v35 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v37 = *(sub_24F923F78() - 8);
  v11 = *(v37 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v38 = v11;
  v12 = *(sub_24F923418() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  if (v7)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v4 + 64) + 7;
  v17 = *(v6 + 80) & 0xF8;
  v18 = ~v17 & 0xFFFFFFFFFFFFFFF8;
  v19 = v17 + 23;
  if (a2 <= v10)
  {
    goto LABEL_39;
  }

  v20 = (v15 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v37 + 80) & 0xF8 | 7;
  v22 = *(v12 + 80) & 0xF8 | 7;
  v23 = v13 + ((v38 + v22 + ((v20 + v21 + ((v19 + ((((v16 + ((v14 + 56) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v18) + 8) & ~v21) + 1) & ~v22) + 1;
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v10 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 < 2)
    {
LABEL_39:
      v29 = (((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
      if (v5 == v10)
      {
        v30 = *(v4 + 48);

        return v30(v29, v5, v36);
      }

      else
      {
        v31 = ((((v16 + v29) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
        if ((v35 & 0x80000000) != 0)
        {
          v33 = (*(v6 + 48))((v31 + v19) & v18, v7, v34);
          if (v33 >= 2)
          {
            return v33 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v32 = *v31;
          if (v32 >= 0xFFFFFFFF)
          {
            LODWORD(v32) = -1;
          }

          return (v32 + 1);
        }
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_39;
  }

LABEL_28:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return v10 + (v23 | v28) + 1;
}

void sub_24F3733AC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_24F91F648() - 8);
  v42 = v6;
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  v41 = v5;
  v39 = v8;
  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_24F923F78() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = sub_24F923418();
  v14 = v7;
  v15 = 0;
  v16 = *(v13 - 8);
  if (*(v16 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v4 + 80);
  v19 = *(v4 + 64) + 7;
  v20 = *(v6 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 23;
  v23 = *(v6 + 64);
  if (!v14)
  {
    ++v23;
  }

  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = *(v16 + 80) & 0xF8 | 7;
  v26 = v17 + ((v12 + v25 + ((((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + v24 + ((v22 + ((((v19 + ((v18 + 56) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v21) + 8) & ~v24) + 1) & ~v25) + 1;
  if (a3 > v10)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v10 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v15 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v15 = v28;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v10 < a2)
  {
    v29 = ~v10 + a2;
    if (v26 < 4)
    {
      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v31 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v31;
            if (v15 > 1)
            {
LABEL_63:
              if (v15 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v15 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v15 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v15 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v15)
    {
      a1[v26] = v30;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v26] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v15)
  {
    goto LABEL_45;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  v32 = (((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 8) & ~v18;
  if (v41 == v10)
  {
    v33 = *(v4 + 56);

    v33(v32, a2, v41, v40);
  }

  else
  {
    v34 = ((((v19 + v32) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) != 0)
    {
      v35 = ((v34 + v22) & v21);
      if (v39 >= a2)
      {
        v38 = *(v42 + 56);

        v38(v35, a2 + 1);
      }

      else
      {
        v36 = (v23 + 7) & 0xFFFFFFF8;
        if (v36 != -8)
        {
          v37 = ((v34 + v22) & v21);
          bzero(v35, (v36 + 8));
          *v37 = ~v39 + a2;
        }
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v34 = a2 & 0x7FFFFFFF;
      v34[1] = 0;
    }

    else
    {
      *v34 = a2 - 1;
    }
  }
}

void sub_24F373898(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F3738F0()
{
  result = qword_27F2405C0;
  if (!qword_27F2405C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F240530);
    sub_24F37397C();
    sub_24F373B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405C0);
  }

  return result;
}

unint64_t sub_24F37397C()
{
  result = qword_27F2405C8;
  if (!qword_27F2405C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240528);
    sub_24F373A34();
    sub_24E602068(&qword_27F2405E0, &qword_27F2405E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405C8);
  }

  return result;
}

unint64_t sub_24F373A34()
{
  result = qword_27F2405D0;
  if (!qword_27F2405D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2405D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240510);
    sub_24E602068(&qword_27F240518, &qword_27F240508);
    sub_24E602068(&qword_27F240520, &qword_27F240510);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405D0);
  }

  return result;
}

unint64_t sub_24F373B88()
{
  result = qword_27F2405F0;
  if (!qword_27F2405F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405F0);
  }

  return result;
}

uint64_t sub_24F373C08()
{

  return swift_deallocObject();
}

uint64_t sub_24F373CAC()
{
  v1 = sub_24F9239C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F373D78()
{
  sub_24F9239C8();

  return sub_24F372A9C();
}

uint64_t objectdestroyTm_66()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Marquee();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3 + v2[14], v1);

  v4 = v3 + v2[17];
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);

  v7 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923F78();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F923418();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F3740D0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Marquee();
  v3 = *(*(v2 - 1) + 80);
  v16 = *(*(v2 - 1) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + ((v3 + 32) & ~v3);
  (*(*(v1 - 8) + 8))(v7 + v2[14], v1);

  v8 = v7 + v2[17];
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);

  v11 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  v13 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_24F923418();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((((v3 + 32) & ~v3) + v16 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_24F374408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Marquee() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0) - 8);
  v11 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_24F370A78(a1, v2 + v8, v11, v5, v6, a2);
}

unint64_t sub_24F374514()
{
  result = qword_27F240658;
  if (!qword_27F240658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240650);
    sub_24F3745CC();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240658);
  }

  return result;
}

unint64_t sub_24F3745CC()
{
  result = qword_27F240660;
  if (!qword_27F240660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240668);
    sub_24F374658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240660);
  }

  return result;
}

unint64_t sub_24F374658()
{
  result = qword_27F240670;
  if (!qword_27F240670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240678);
    sub_24E602068(&qword_27F240680, &qword_27F240688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240670);
  }

  return result;
}

unint64_t sub_24F374718()
{
  result = qword_27F240698;
  if (!qword_27F240698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240698);
  }

  return result;
}

uint64_t sub_24F37476C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Marquee();
  v3 = *(*(v2 - 1) + 80);
  v16 = *(*(v2 - 1) + 64);
  v4 = sub_24F927308();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + ((v3 + 32) & ~v3);
  (*(*(v1 - 8) + 8))(v7 + v2[14], v1);

  v8 = v7 + v2[17];
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0);

  v11 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  v13 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_24F923418();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((((v3 + 32) & ~v3) + v16 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_24F374A98(double *a1)
{
  v3 = *(type metadata accessor for Marquee() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_24F927308();

  return sub_24F371890(a1, v1 + v4);
}

unint64_t sub_24F374B88()
{
  result = qword_27F2406C0;
  if (!qword_27F2406C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2406A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2406C0);
  }

  return result;
}

uint64_t sub_24F374C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a2;
  *(v3 + 56) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_24F374CB0, 0, 0);
}

uint64_t sub_24F374CB0()
{
  if (*(*(v0 + 32) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_24EA32408;
    v2 = *(v0 + 56);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);

    return sub_24F374D9C(v4, v2, v3);
  }

  else
  {
    **(v0 + 16) = sub_24E611A50(MEMORY[0x277D84F90]);
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24F374D9C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 488) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B0);
  *(v3 + 152) = swift_task_alloc();
  type metadata accessor for Game();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C8) - 8);
  *(v3 + 184) = swift_task_alloc();
  v4 = sub_24F920358();
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  v6 = sub_24F9207B8();
  *(v3 + 264) = v6;
  *(v3 + 272) = *(v6 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  *(v3 + 296) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6D0);
  *(v3 + 304) = v7;
  *(v3 + 312) = *(v7 - 8);
  *(v3 + 320) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  *(v3 + 328) = v8;
  v9 = *(v8 - 8);
  *(v3 + 336) = v9;
  *(v3 + 344) = *(v9 + 64);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  v10 = type metadata accessor for LocalPlayerProvider();
  v11 = swift_task_alloc();
  *(v3 + 368) = v11;
  *v11 = v3;
  v11[1] = sub_24F375194;

  return MEMORY[0x28217F210](v3 + 120, v10, v10);
}

uint64_t sub_24F375194()
{

  if (v0)
  {

    v1 = sub_24F376BEC;
  }

  else
  {
    v1 = sub_24F3752AC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F3752AC()
{
  v1 = v0[15];
  v0[47] = v1;
  if (v1)
  {
    sub_24F92B7F8();
    v0[48] = sub_24F92B7E8();
    v3 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F37553C, v3, v2);
  }

  else
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E7F0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "GamesDataIntentImplementation Failed to fetch LocalPlayerProvider from the ObjectGraph", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    sub_24F3770A4();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24F37553C()
{
  v1 = v0[47];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24E80BDF0(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[49] = *v2;
  v0[50] = v2[1];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_24F3756AC;

  return MEMORY[0x28217F228](v0 + 7, v3, v3);
}

uint64_t sub_24F3756AC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {

    v2 = sub_24F375BB0;
  }

  else
  {
    v2 = sub_24F3757C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3757C8()
{
  v1 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_24F920FC8();
  if (v1 == 1)
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 336);
    v5 = *(v0 + 328);
    v6 = *(v0 + 296);
    v7 = *(v0 + 144);
    v8 = sub_24F921038();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    (*(v4 + 16))(v3, v2, v5);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    (*(v4 + 32))(v10 + v9, v3, v5);
    v11 = MEMORY[0x277D0CE08];
    sub_24E80BDF0(&qword_27F21E6D8, MEMORY[0x277D0CE08]);
    sub_24E80BDF0(&qword_27F21E6E0, v11);

    sub_24F920A28();
    v12 = swift_task_alloc();
    *(v0 + 424) = v12;
    *v12 = v0;
    v12[1] = sub_24F375CE0;
    v13 = *(v0 + 304);

    return MEMORY[0x282164EA8](v13);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    *(v0 + 448) = sub_24E611864(MEMORY[0x277D84F90]);
    v15 = *(v0 + 136);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v0 + 232);
      sub_24F457F58(0, v16, 0);
      v18 = v15 + 40;
      do
      {

        sub_24F920EF8();
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24F457F58(v19 > 1, v20 + 1, 1);
        }

        v21 = *(v0 + 248);
        v22 = *(v0 + 224);
        *(v14 + 16) = v20 + 1;
        (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v20, v21, v22);
        v18 += 16;
        --v16;
      }

      while (v16);
    }

    *(v0 + 456) = v14;
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v25 = swift_task_alloc();
    *(v0 + 464) = v25;
    *v25 = v0;
    v25[1] = sub_24F37644C;

    return MEMORY[0x282164950](v14, v23, v24);
  }
}

uint64_t sub_24F375BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F375CE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  (*(v3[39] + 8))(v3[40], v3[38]);
  if (v1)
  {
    v5 = sub_24F376DF4;
  }

  else
  {
    v5 = sub_24F375E50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F375E50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[54];
  v56 = *(v4 + 16);
  if (v56)
  {
    v5 = 0;
    v6 = v3[34];
    v57 = v6;
    v58 = (v3[29] + 8);
    v55 = (v6 + 8);
    v52 = (v6 + 40);
    v53 = (v6 + 32);
    v7 = v3[55];
    v8 = MEMORY[0x277D84F98];
    v54 = v3[54];
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return MEMORY[0x282164950](a1, a2, a3);
      }

      v59 = *(v57 + 72);
      v10 = *(v57 + 16);
      v10(v3[36], v3[54] + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + v59 * v5, v3[33]);
      sub_24F9207A8();
      v11 = sub_24F920F08();
      if (v7)
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      v16 = v3[35];
      v15 = v3[36];
      v17 = v3[33];
      (*v58)(v3[32], v3[28]);
      v10(v16, v15, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v8;
      a1 = sub_24E76D644(v13, v14);
      v19 = v8[2];
      v20 = (a2 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_32;
      }

      v23 = a2;
      if (v8[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = a1;
          sub_24E8B7698();
          a1 = v31;
        }
      }

      else
      {
        sub_24E8AA738(v22, isUniquelyReferenced_nonNull_native);
        a1 = sub_24E76D644(v13, v14);
        if ((v23 & 1) != (v24 & 1))
        {

          return sub_24F92CF88();
        }
      }

      v26 = v3[35];
      v25 = v3[36];
      v27 = v3[33];
      if (v23)
      {
        v9 = a1;

        v8 = v61;
        (*v52)(v61[7] + v9 * v59, v26, v27);
        a1 = (*v55)(v25, v27);
      }

      else
      {
        v8 = v61;
        v61[(a1 >> 6) + 8] |= 1 << a1;
        v28 = (v61[6] + 16 * a1);
        *v28 = v13;
        v28[1] = v14;
        (*v53)(v61[7] + a1 * v59, v26, v27);
        a1 = (*v55)(v25, v27);
        v29 = v61[2];
        v21 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v21)
        {
          goto LABEL_33;
        }

        v61[2] = v30;
      }

      v7 = 0;
      ++v5;
      v4 = v54;
      if (v56 == v5)
      {
        goto LABEL_20;
      }
    }

    v32 = v3[45];
    v33 = v3[42];
    v60 = v3[41];
    v34 = v3[36];
    v36 = v3[32];
    v35 = v3[33];
    v37 = v3[28];

    (*v58)(v36, v37);
    (*v55)(v34, v35);
    (*(v33 + 8))(v32, v60);

    __swift_destroy_boxed_opaque_existential_1((v3 + 2));

    v38 = v3[1];

    return v38();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
LABEL_20:

    v3[56] = v8;
    v40 = v3[17];
    v41 = *(v40 + 16);
    v42 = MEMORY[0x277D84F90];
    if (v41)
    {
      v43 = v3[29];
      v62 = MEMORY[0x277D84F90];
      sub_24F457F58(0, v41, 0);
      v42 = v62;
      v44 = v40 + 40;
      do
      {

        sub_24F920EF8();
        v46 = *(v62 + 16);
        v45 = *(v62 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_24F457F58(v45 > 1, v46 + 1, 1);
        }

        v47 = v3[31];
        v48 = v3[28];
        *(v62 + 16) = v46 + 1;
        (*(v43 + 32))(v62 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v46, v47, v48);
        v44 += 16;
        --v41;
      }

      while (v41);
    }

    v3[57] = v42;
    v49 = v3[5];
    v50 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v49);
    v51 = swift_task_alloc();
    v3[58] = v51;
    *v51 = v3;
    v51[1] = sub_24F37644C;
    a1 = v42;
    a2 = v49;
    a3 = v50;

    return MEMORY[0x282164950](a1, a2, a3);
  }
}

uint64_t sub_24F37644C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {

    v4 = sub_24F376F4C;
  }

  else
  {
    v4 = sub_24F376598;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F376598()
{
  v1 = v0[59];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v58 = v0[56];
    v4 = v0[25];
    v5 = v0[22];
    v52 = v0[21];
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = (v4 + 48);
    v56 = (v4 + 16);
    v57 = (v4 + 32);
    v53 = (v0[34] + 56);
    v54 = (v0[29] + 8);
    v49 = v0[34];
    v55 = (v4 + 8);
    v8 = v0[60];
    v63 = MEMORY[0x277D84F98];
    v50 = (v4 + 48);
    v51 = v6;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v10 = v0[23];
      v9 = v0[24];
      sub_24F377100(v6 + *(v5 + 72) * v3, v10);
      if ((*v7)(v10, 1, v9) != 1)
      {
        break;
      }

      sub_24E601704(v0[23], &qword_27F21E6C8);
LABEL_4:
      if (v2 == ++v3)
      {
        v36 = v63;
        goto LABEL_16;
      }
    }

    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[24];
    (*v57)(v11, v0[23], v13);
    (*v56)(v12, v11, v13);
    sub_24F920318();
    v14 = sub_24F920F08();
    if (v8)
    {
      v41 = v0[42];
      v60 = v0[41];
      v62 = v0[45];
      v42 = v0[30];
      v44 = v0[27];
      v43 = v0[28];
      v45 = v0[26];
      v46 = v0[24];

      (*v54)(v42, v43);
      v47 = *v55;
      (*v55)(v45, v46);
      v47(v44, v46);
      (*(v41 + 8))(v62, v60);

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));

      v48 = v0[1];

      v48();
      return;
    }

    v16 = v14;
    v17 = v15;
    (*v54)(v0[30], v0[28]);
    if (*(v58 + 16))
    {
      v18 = sub_24E76D644(v16, v17);
      v20 = v19;

      if (v20)
      {
        (*(v49 + 16))(v0[19], *(v58 + 56) + *(v49 + 72) * v18, v0[33]);
        v21 = 0;
LABEL_13:
        v22 = v0[26];
        v23 = v0[21];
        v25 = v0[18];
        v24 = v0[19];
        (*v53)(v24, v21, 1, v0[33]);

        sub_24E7EEEDC(v22, v24, v25, v23);
        v59 = v0[24];
        v61 = v0[27];
        v27 = v0[20];
        v26 = v0[21];
        v28 = v2;
        v29 = v1;
        v30 = *v26;
        v31 = v5;
        v32 = *(v52 + 8);
        sub_24E69BF7C(v26, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v30;
        v1 = v29;
        v2 = v28;
        v35 = v32;
        v5 = v31;
        sub_24E822CD0(v27, v34, v35, isUniquelyReferenced_nonNull_native);
        (*v55)(v61, v59);
        sub_24E69BFE0(v26);
        v8 = 0;
        v7 = v50;
        v6 = v51;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v21 = 1;
    goto LABEL_13;
  }

  v36 = MEMORY[0x277D84F98];
LABEL_16:
  v37 = v0[45];
  v39 = v0[41];
  v38 = v0[42];

  (*(v38 + 8))(v37, v39);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v40 = v0[1];

  v40(v36);
}

uint64_t sub_24F376BEC()
{
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E7F0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "GamesDataIntentImplementation Failed to fetch LocalPlayerProvider from the ObjectGraph", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  sub_24F3770A4();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24F376DF4()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F376F4C()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

unint64_t sub_24F3770A4()
{
  result = qword_27F2406F0;
  if (!qword_27F2406F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2406F0);
  }

  return result;
}

uint64_t sub_24F377100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F377170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F377240(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24E80A2C0(a1, a2, v8, v2 + v7);
}

unint64_t sub_24F377354()
{
  result = qword_27F2406F8;
  if (!qword_27F2406F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2406F8);
  }

  return result;
}

uint64_t RemoveFriendAction.friendID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RemoveFriendAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFriendAction() + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RemoveFriendAction()
{
  result = qword_27F240718;
  if (!qword_27F240718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveFriendAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFriendAction() + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_24F377564()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x4449646E65697266;
  }
}

uint64_t sub_24F3775AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449646E65697266 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F377690(uint64_t a1)
{
  v2 = sub_24F3778AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3776CC(uint64_t a1)
{
  v2 = sub_24F3778AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoveFriendAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240700);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3778AC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for RemoveFriendAction();
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F3778AC()
{
  result = qword_27F240708;
  if (!qword_27F240708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240708);
  }

  return result;
}

uint64_t RemoveFriendAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240710);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for RemoveFriendAction();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3778AC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E674184(&qword_27F254CB0);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24E693FCC(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F377C10(v10);
}

uint64_t sub_24F377C10(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFriendAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F377CB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F377D70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F377E28()
{
  result = qword_27F240728;
  if (!qword_27F240728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240728);
  }

  return result;
}

unint64_t sub_24F377E80()
{
  result = qword_27F240730;
  if (!qword_27F240730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240730);
  }

  return result;
}

unint64_t sub_24F377ED8()
{
  result = qword_27F240738;
  if (!qword_27F240738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240738);
  }

  return result;
}

uint64_t sub_24F377F2C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = a4;
  v7 = sub_24F924038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  KeyPath = swift_getKeyPath();
  v20[0] = a1;
  v21 = KeyPath;
  v22 = 0;
  MEMORY[0x25304C420](v20, a2, &type metadata for HeroGradientFadeOutModifier, a3);

  v15 = sub_24F3147F4();
  v19[1] = a3;
  v19[2] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v10, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_24E7896B8(v13, v7, WitnessTable);
  return (v17)(v13, v7);
}

uint64_t sub_24F3780E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_24F924848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a3, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a3) = v19[15];
  }

  v15 = qword_24F9EB788[a3];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240740);
  (*(*(v16 - 8) + 16))(a5, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240748);
  v18 = a5 + *(result + 36);
  *v18 = a2 & 1;
  *(v18 + 8) = v15;
  return result;
}

uint64_t sub_24F3782DC(uint64_t a1, char a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407E8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  if (a2)
  {
    v12 = sub_24F927618();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    *(v15 + 24) = a3;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407F0);
    (*(*(v16 - 8) + 16))(v11, a1, v16);
    v17 = &v11[*(v9 + 36)];
    *v17 = v12;
    v17[1] = v14;
    v17[2] = sub_24F379BBC;
    v17[3] = v15;
    sub_24E60169C(v11, v8, &qword_27F2407E8);
    swift_storeEnumTagMultiPayload();
    sub_24F379AC8();
    sub_24E602068(&qword_27F240800, &qword_27F2407F0);
    sub_24F924E28();
    return sub_24E601704(v11, &qword_27F2407E8);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407F0);
    (*(*(v19 - 8) + 16))(v8, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_24F379AC8();
    sub_24E602068(&qword_27F240800, &qword_27F2407F0);
    return sub_24F924E28();
  }
}

double sub_24F3785C8@<D0>(uint64_t a1@<X8>)
{
  sub_24F927898();
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  *(v2 + 32) = sub_24F926C98();
  *(v2 + 40) = sub_24F926C88();
  MEMORY[0x25304CD70](v2);
  sub_24F923BD8();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24F3786A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240778);
  MEMORY[0x28223BE20](v30);
  v4 = (&v28 - v3);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240780);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - v5;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a1 + 8);
  v11 = *a1;
  v68 = *a1;
  if (v69 == 1)
  {
    v12 = v11;
  }

  else
  {

    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v68, &qword_27F218208);
    (*(v8 + 8))(v10, v7);
    v12 = *v66;
  }

  if (v12 <= 1580.0)
  {
    *v4 = sub_24F926C88();
    swift_storeEnumTagMultiPayload();
    sub_24F37966C();
    return sub_24F924E28();
  }

  else
  {
    v29 = sub_24F9249A8();
    v50 = 0;
    sub_24F378C00(a1, &v34);
    v63 = v46;
    v64 = v47;
    v59 = v42;
    v60 = v43;
    v61 = v44;
    v62 = v45;
    v55 = v38;
    v56 = v39;
    v57 = v40;
    v58 = v41;
    v51 = v34;
    v52 = v35;
    v53 = v36;
    v54 = v37;
    v66[12] = v46;
    v66[13] = v47;
    v66[8] = v42;
    v66[9] = v43;
    v66[10] = v44;
    v66[11] = v45;
    v66[4] = v38;
    v66[5] = v39;
    v66[6] = v40;
    v66[7] = v41;
    v66[0] = v34;
    v66[1] = v35;
    v65 = v48;
    v67 = v48;
    v66[2] = v36;
    v66[3] = v37;
    sub_24E60169C(&v51, &v33, &qword_27F2407A0);
    sub_24E601704(v66, &qword_27F2407A0);
    *(&v49[11] + 7) = v62;
    *(&v49[12] + 7) = v63;
    *(&v49[13] + 7) = v64;
    *(&v49[7] + 7) = v58;
    *(&v49[8] + 7) = v59;
    *(&v49[9] + 7) = v60;
    *(&v49[10] + 7) = v61;
    *(&v49[3] + 7) = v54;
    *(&v49[4] + 7) = v55;
    *(&v49[5] + 7) = v56;
    *(&v49[6] + 7) = v57;
    *(v49 + 7) = v51;
    *(&v49[1] + 7) = v52;
    *(&v49[14] + 7) = v65;
    *(&v49[2] + 7) = v53;
    v14 = v50;
    KeyPath = swift_getKeyPath();
    v16 = &v6[*(v31 + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0) + 28);
    v18 = *MEMORY[0x277CDFA88];
    v19 = sub_24F923F78();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = KeyPath;
    v20 = v49[10];
    *(v6 + 193) = v49[11];
    v21 = v49[13];
    *(v6 + 209) = v49[12];
    *(v6 + 225) = v21;
    *(v6 + 15) = *(&v49[13] + 15);
    v22 = v49[6];
    *(v6 + 129) = v49[7];
    v23 = v49[9];
    *(v6 + 145) = v49[8];
    *(v6 + 161) = v23;
    *(v6 + 177) = v20;
    v24 = v49[2];
    *(v6 + 65) = v49[3];
    v25 = v49[5];
    *(v6 + 81) = v49[4];
    *(v6 + 97) = v25;
    *(v6 + 113) = v22;
    v26 = v49[1];
    *(v6 + 17) = v49[0];
    *(v6 + 33) = v26;
    *v6 = v29;
    *(v6 + 1) = 0;
    v6[16] = v14;
    *(v6 + 49) = v24;
    sub_24E60169C(v6, v4, &qword_27F240780);
    swift_storeEnumTagMultiPayload();
    sub_24F37966C();
    sub_24F924E28();
    return sub_24E601704(v6, &qword_27F240780);
  }
}

uint64_t sub_24F378C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_bridgeObjectRetain_n();
  sub_24F9273D8();
  sub_24F9278B8();
  sub_24F9278C8();
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9238C8();
  v8 = sub_24F926C88();
  v66 = *(a1 + 24);
  v9 = *(a1 + 16);
  v65 = v9;
  if (v66 == 1)
  {
    v52 = v9;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    v35 = v8;
    v11 = v4;
    v12 = v10;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v65, &qword_27F218208);
    v13 = v11;
    v8 = v35;
    (*(v5 + 8))(v7, v13);
  }

  sub_24F927618();
  sub_24F9238C8();
  v14 = v60;
  v34 = v61;
  v35 = v59;
  v15 = v62;
  v16 = v63;
  v17 = v64;
  sub_24F9273D8();
  sub_24F9278C8();
  sub_24F9278B8();
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9238C8();
  v18 = v55;
  v19 = v56;
  v44[2] = v55;
  v44[3] = v56;
  v20 = v57;
  v44[4] = v57;
  v21 = v54;
  v44[0] = v53;
  v44[1] = v54;
  v22 = v38;
  v23 = v38;
  v46[0] = v38;
  v46[1] = v39;
  v24 = v42;
  v46[4] = v42;
  v25 = v40;
  v26 = v40;
  v46[2] = v40;
  v46[3] = v41;
  *a2 = v53;
  *(a2 + 16) = v21;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 32) = v18;
  v27 = v39;
  v28 = v39;
  *(a2 + 144) = v22;
  *(a2 + 160) = v27;
  v29 = v41;
  *(a2 + 192) = v41;
  *(a2 + 208) = v24;
  *(a2 + 176) = v25;
  v45 = v58;
  v37 = v14;
  v36 = v15;
  v30 = v43;
  v47 = v43;
  *(a2 + 80) = v58;
  *(a2 + 88) = v8;
  v31 = v34;
  *(a2 + 96) = v35;
  *(a2 + 104) = v14;
  *(a2 + 112) = v31;
  *(a2 + 120) = v15;
  *(a2 + 128) = v16;
  *(a2 + 136) = v17;
  *(a2 + 224) = v30;
  v48[0] = v23;
  v48[1] = v28;
  v49 = v43;
  v48[3] = v29;
  v48[4] = v42;
  v48[2] = v26;
  sub_24E60169C(v44, v50, &qword_27F2248A0);

  sub_24E60169C(v46, v50, &qword_27F2248A0);
  sub_24E601704(v48, &qword_27F2248A0);

  v50[2] = v55;
  v50[3] = v56;
  v50[4] = v57;
  v51 = v58;
  v50[0] = v53;
  v50[1] = v54;
  return sub_24E601704(v50, &qword_27F2248A0);
}

uint64_t sub_24F379084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v5;
  v26 = *(v2 + 32);
  v6 = sub_24F927618();
  v8 = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240750) + 36));
  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240758) + 36);
  sub_24F3786A0(v25, v10);
  v11 = sub_24F925818();
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240760) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *v9 = v6;
  v9[1] = v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240768);
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  v22 = sub_24F927728();
  LOBYTE(v6) = sub_24F379510(*&v25[0], BYTE8(v25[0]) & 1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240770);
  v24 = a2 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v6 & 1;
  return result;
}

uint64_t sub_24F37921C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9AF330;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 32) = sub_24F9273C8();
  *(v4 + 40) = v5;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 48) = sub_24F9273C8();
  *(v4 + 56) = v6;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 64) = sub_24F9273C8();
  *(v4 + 72) = v7;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 80) = sub_24F9273C8();
  *(v4 + 88) = v8;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 96) = sub_24F9273C8();
  *(v4 + 104) = v9;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 112) = sub_24F9273C8();
  *(v4 + 120) = v10;
  sub_24F926C88();
  result = sub_24F9273C8();
  *(v4 + 128) = result;
  *(v4 + 136) = v12;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_24F379420(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t sub_24F379474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_24F379510(uint64_t a1, char a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *&a1;
  }

  else
  {

    sub_24F92BDC8();
    v9 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v5 + 8))(v7, v4);
    v8 = *&v11[1];
  }

  return v8 > 1580.0;
}

unint64_t sub_24F37966C()
{
  result = qword_27F240788;
  if (!qword_27F240788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240780);
    sub_24E602068(&qword_27F240790, &qword_27F240798);
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeroFadeOutModifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeroFadeOutModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24F379800()
{
  result = qword_27F2407A8;
  if (!qword_27F2407A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240748);
    sub_24E602068(&qword_27F2407B0, &qword_27F240740);
    sub_24F3798B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407A8);
  }

  return result;
}

unint64_t sub_24F3798B8()
{
  result = qword_27F2407B8;
  if (!qword_27F2407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407B8);
  }

  return result;
}

unint64_t sub_24F379910()
{
  result = qword_27F2407C0;
  if (!qword_27F2407C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240770);
    sub_24F3799C8();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407C0);
  }

  return result;
}

unint64_t sub_24F3799C8()
{
  result = qword_27F2407C8;
  if (!qword_27F2407C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240750);
    sub_24E602068(&qword_27F2407D0, &qword_27F240768);
    sub_24E602068(&qword_27F2407D8, &qword_27F240758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407C8);
  }

  return result;
}

unint64_t sub_24F379AC8()
{
  result = qword_27F2407F8;
  if (!qword_27F2407F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2407E8);
    sub_24E602068(&qword_27F240800, &qword_27F2407F0);
    sub_24E602068(&qword_27F240808, &qword_27F240810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407F8);
  }

  return result;
}

unint64_t sub_24F379BCC()
{
  result = qword_27F240818;
  if (!qword_27F240818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240820);
    sub_24F379AC8();
    sub_24E602068(&qword_27F240800, &qword_27F2407F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240818);
  }

  return result;
}

uint64_t sub_24F379CA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F379DEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ActiveChallengesShelfIntent()
{
  result = qword_27F240828;
  if (!qword_27F240828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F379F68()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24F37A0E4(319, &qword_27F240838, type metadata accessor for Challenge, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F240840, &qword_27F231BE8);
      if (v2 <= 0x3F)
      {
        sub_24E8EF898(319, &qword_27F240848, &qword_27F231BF8);
        if (v3 <= 0x3F)
        {
          sub_24F37A0E4(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F37A0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F37A148@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240860);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v20 - v9;
  active = type metadata accessor for ActiveChallengesShelfIntent();
  MEMORY[0x28223BE20](active);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24F37ADD0();
  v23 = v10;
  v15 = v25;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v25 = v5;
  v16 = v22;
  LOBYTE(v28) = 0;
  *v13 = sub_24F92CC28();
  v13[1] = v17;
  LOBYTE(v28) = 1;
  sub_24F37B040(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v8, v13 + active[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0);
  v27 = 2;
  sub_24F37AE24();
  sub_24F92CC68();
  *(v13 + active[6]) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BE8);
  v27 = 3;
  sub_24F37AED8();
  sub_24F92CC18();
  *(v13 + active[7]) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BF8);
  v27 = 4;
  sub_24F37AF8C();
  sub_24F92CC18();
  *(v13 + active[8]) = v28;
  v27 = 5;
  sub_24F368F98();
  sub_24F92CC68();
  *(v13 + active[9]) = v28;
  type metadata accessor for Game();
  LOBYTE(v28) = 6;
  sub_24F37B040(&qword_27F214968, type metadata accessor for Game);
  v18 = v25;
  sub_24F92CC18();
  sub_24E7374E4(v18, active[10]);
  v27 = 7;
  sub_24F368FEC();
  sub_24F92CC68();
  (*(v16 + 8))(v23, v24);
  *active[11] = v28;
  sub_24F37B088(0, v21);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24F37B0EC(0, type metadata accessor for ActiveChallengesShelfIntent);
}

uint64_t sub_24F37A7D0()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 1701667175;
  if (v1 != 6)
  {
    v3 = 0x4379616C70736964;
  }

  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x5479616C70736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0x726579616C70;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F37A8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F37B264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F37A908(uint64_t a1)
{
  v2 = sub_24F37ADD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F37A944(uint64_t a1)
{
  v2 = sub_24F37ADD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F37A9B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65676F5479616C70;
  }

  else
  {
    v3 = 0x676E656C6C616863;
  }

  if (v2)
  {
    v4 = 0xEC00000062754865;
  }

  else
  {
    v4 = 0xEC00000072656874;
  }

  if (*a2)
  {
    v5 = 0x65676F5479616C70;
  }

  else
  {
    v5 = 0x676E656C6C616863;
  }

  if (*a2)
  {
    v6 = 0xEC00000072656874;
  }

  else
  {
    v6 = 0xEC00000062754865;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F37AA70()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37AB04()
{
  sub_24F92B218();
}

uint64_t sub_24F37AB84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37AC14@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24F37AC74(uint64_t *a1@<X8>)
{
  v2 = 0x676E656C6C616863;
  if (*v1)
  {
    v2 = 0x65676F5479616C70;
  }

  v3 = 0xEC00000062754865;
  if (*v1)
  {
    v3 = 0xEC00000072656874;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24F37AD28()
{
  result = qword_27F240850;
  if (!qword_27F240850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240850);
  }

  return result;
}

unint64_t sub_24F37AD7C()
{
  result = qword_27F240858;
  if (!qword_27F240858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240858);
  }

  return result;
}

unint64_t sub_24F37ADD0()
{
  result = qword_27F240868;
  if (!qword_27F240868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240868);
  }

  return result;
}

unint64_t sub_24F37AE24()
{
  result = qword_27F21AF08;
  if (!qword_27F21AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEE0);
    sub_24F37B040(&qword_27F21AF10, type metadata accessor for Challenge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF08);
  }

  return result;
}

unint64_t sub_24F37AED8()
{
  result = qword_27F240870;
  if (!qword_27F240870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BE8);
    sub_24F37B040(&qword_27F21DD48, type metadata accessor for ChallengeDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240870);
  }

  return result;
}

unint64_t sub_24F37AF8C()
{
  result = qword_27F240878;
  if (!qword_27F240878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BF8);
    sub_24F37B040(&qword_27F240880, type metadata accessor for CompletedChallengeSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240878);
  }

  return result;
}

uint64_t sub_24F37B040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F37B088(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveChallengesShelfIntent();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_24F37B0EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F37B160()
{
  result = qword_27F240888;
  if (!qword_27F240888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240888);
  }

  return result;
}

unint64_t sub_24F37B1B8()
{
  result = qword_27F240890;
  if (!qword_27F240890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240890);
  }

  return result;
}

unint64_t sub_24F37B210()
{
  result = qword_27F240898;
  if (!qword_27F240898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240898);
  }

  return result;
}

uint64_t sub_24F37B264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA74550 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA465A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA5FBA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00747865746E6FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t Player.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F37B534()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - v2;
  v4 = sub_24F91F1A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_24F92B098();
  v10 = [v8 BOOLForKey_];

  v11 = type metadata accessor for Player(0);
  if (v10)
  {
    v12 = (v0 + v11[9]);
    if (v12[1] == 1)
    {
      v13 = (v0 + v11[8]);
      v14 = *v13;
      if (!v13[1])
      {
        v14 = *(v0 + v11[7]);
      }
    }

    else
    {
      v15 = v12[10];
      v16 = v12[9];
      v26 = v12[8];
      v27 = v15;
      v17 = v12[6];
      v28 = v12[4];
      v29 = v17;
      v25 = v12[2];
      v18 = *v12;
      v23[1] = v16;
      v23[2] = v18;
      v30 = v11;
      v24 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
      [v24 setStyle_];
      (*(v5 + 56))(v3, 1, 1, v4);

      sub_24F91F178();
      v19 = sub_24F91F188();
      (*(v5 + 8))(v7, v4);
      v20 = v24;
      v21 = [v24 stringFromPersonNameComponents_];

      v14 = sub_24F92B0D8();
    }
  }

  else
  {
    v14 = *(v0 + v11[7]);
  }

  return v14;
}

uint64_t Player.debugDescription.getter()
{
  v1 = v0;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  MEMORY[0x28223BE20](v115);
  v113 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v114 = &v107 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  MEMORY[0x28223BE20](v112);
  v110 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v107 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v109);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v108 = &v107 - v13;
  *&v129[0] = 0x3C726579616C50;
  *(&v129[0] + 1) = 0xE700000000000000;
  MEMORY[0x253050C20](*v0, v0[1], v12);
  MEMORY[0x253050C20](2622, 0xE200000000000000);
  v14 = v129[0];
  *&v129[0] = 0x203A656D616E2020;
  *(&v129[0] + 1) = 0xE800000000000000;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x253050C20](*(v1 + *(v15 + 28)), *(v1 + *(v15 + 28) + 8));
  MEMORY[0x253050C20](10, 0xE100000000000000);
  v16 = v129[0];
  v129[0] = v14;

  MEMORY[0x253050C20](v16, *(&v16 + 1));

  v17 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v129[0] = 0x6361746E6F632020;
  *(&v129[0] + 1) = 0xEF203A656D614E74;
  v116 = v15;
  v111 = v8;

  MEMORY[0x253050C20](*(&v14 + 1), *(&v16 + 1));

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v18 = v129[0];
  v129[0] = v17;

  MEMORY[0x253050C20](v18, *(&v18 + 1));

  v19 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v129[0] = 0xD000000000000016;
  *(&v129[0] + 1) = 0x800000024FA74570;
  v20 = v116;
  *&v123 = *(v0 + v116[11]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240);
  v21 = sub_24F92B188();
  MEMORY[0x253050C20](v21);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v22 = v129[0];
  v129[0] = v19;

  MEMORY[0x253050C20](v22, *(&v22 + 1));

  v23 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v129[0] = 0xD000000000000017;
  *(&v129[0] + 1) = 0x800000024FA74590;
  *&v123 = *(v0 + v20[12]);

  v24 = sub_24F92B188();
  MEMORY[0x253050C20](v24);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v25 = v129[0];
  v129[0] = v23;

  MEMORY[0x253050C20](v25, *(&v25 + 1));

  v26 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  strcpy(v134, "  handleSet: ");
  HIWORD(v134[1]) = -4864;
  sub_24E60169C(v0 + v20[13], v10, &unk_27F23E170);
  v27 = type metadata accessor for CallProviderConversationHandleSet();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v10, 1, v27) == 1)
  {
    (*(v28 + 56))(v108, 1, 1, v27);
    if (v29(v10, 1, v27) != 1)
    {
      sub_24E601704(v10, &unk_27F23E170);
    }
  }

  else
  {
    v30 = v108;
    sub_24F37CA40(v10, v108, type metadata accessor for CallProviderConversationHandleSet);
    (*(v28 + 56))(v30, 0, 1, v27);
  }

  v31 = sub_24F92B188();
  MEMORY[0x253050C20](v31);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v32 = v134[0];
  v33 = v134[1];
  v129[0] = v26;

  MEMORY[0x253050C20](v32, v33);

  v34 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  v35 = v116;
  v36 = (v1 + v116[9]);
  v37 = v36[3];
  v38 = v36[1];
  v130 = v36[2];
  v131 = v37;
  v39 = v36[3];
  v40 = v36[5];
  v132 = v36[4];
  v133 = v40;
  v41 = v36[1];
  v129[0] = *v36;
  v129[1] = v41;
  v125 = v130;
  v126 = v39;
  v42 = v36[5];
  v127 = v132;
  v128 = v42;
  v117 = 0xD000000000000019;
  v118 = 0x800000024FA745B0;
  v123 = v129[0];
  v124 = v38;
  sub_24E60169C(v129, v122, &qword_27F212F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F50);
  v43 = sub_24F92B188();
  MEMORY[0x253050C20](v43);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v44 = v117;
  v45 = v118;
  v123 = v34;

  MEMORY[0x253050C20](v44, v45);

  v46 = v123;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v123 = 0xD000000000000011;
  *(&v123 + 1) = 0x800000024FA745D0;
  v47 = (v1 + v35[10]);
  if (v47[1])
  {
    v48 = *v47;
    v49 = v47[1];
  }

  else
  {
    v48 = 7104878;
    v49 = 0xE300000000000000;
  }

  MEMORY[0x253050C20](v48, v49);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v50 = v123;
  v123 = v46;

  MEMORY[0x253050C20](v50, *(&v50 + 1));

  v51 = v123;
  *&v123 = 0x7261746176612020;
  *(&v123 + 1) = 0xEA0000000000203ALL;
  MEMORY[0x253050C20](v1[2], v1[3]);
  MEMORY[0x253050C20](10, 0xE100000000000000);
  v52 = v123;
  v123 = v51;

  MEMORY[0x253050C20](v52, *(&v52 + 1));

  v53 = v123;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_24F92C888();

  v54 = v116;
  v55 = *(v1 + v116[14]);
  v120 = 0xD000000000000016;
  v121 = 0x800000024FA745F0;
  if (v55)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v55)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v56, v57);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v58 = v120;
  v59 = v121;
  v123 = v53;

  MEMORY[0x253050C20](v58, v59);

  v60 = v123;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_24F92C888();

  v61 = (v1 + v54[15]);
  v62 = v61[1];
  v123 = *v61;
  v124 = v62;
  v63 = v61[3];
  v65 = *v61;
  v64 = v61[1];
  v125 = v61[2];
  v126 = v63;
  strcpy(v119, "  inboxEntry: ");
  HIBYTE(v119[1]) = -18;
  v122[0] = v65;
  v122[1] = v64;
  v66 = v61[3];
  v122[2] = v61[2];
  v122[3] = v66;
  sub_24E60169C(&v123, &v117, &qword_27F2408A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2408A0);
  v67 = sub_24F92B188();
  MEMORY[0x253050C20](v67);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v68 = v119[0];
  v69 = v119[1];
  v122[0] = v60;

  MEMORY[0x253050C20](v68, v69);

  v70 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD00000000000001ALL;
  *(&v122[0] + 1) = 0x800000024FA74610;
  v71 = v1 + v54[16];
  v72 = v110;
  sub_24E60169C(v71, v110, &unk_27F23E220);
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v74 = *(PlayedTogetherInfo - 8);
  v75 = *(v74 + 48);
  if (v75(v72, 1, PlayedTogetherInfo) == 1)
  {
    (*(v74 + 56))(v111, 1, 1, PlayedTogetherInfo);
    v76 = v75(v72, 1, PlayedTogetherInfo) == 1;
    v77 = v72;
    v78 = v114;
    if (!v76)
    {
      sub_24E601704(v77, &unk_27F23E220);
    }
  }

  else
  {
    v79 = v111;
    sub_24F37CA40(v72, v111, type metadata accessor for Player.LastPlayedTogetherInfo);
    (*(v74 + 56))(v79, 0, 1, PlayedTogetherInfo);
    v78 = v114;
  }

  v80 = sub_24F92B188();
  MEMORY[0x253050C20](v80);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v81 = v122[0];
  v122[0] = v70;

  MEMORY[0x253050C20](v81, *(&v81 + 1));

  v82 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD000000000000015;
  *(&v122[0] + 1) = 0x800000024FA74630;
  v83 = v113;
  sub_24E60169C(v1 + v116[17], v113, &unk_27F247220);
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v85 = *(ChallengeInfo - 8);
  v86 = *(v85 + 48);
  if (v86(v83, 1, ChallengeInfo) == 1)
  {
    (*(v85 + 56))(v78, 1, 1, ChallengeInfo);
    if (v86(v83, 1, ChallengeInfo) != 1)
    {
      sub_24E601704(v83, &unk_27F247220);
    }
  }

  else
  {
    sub_24F37CA40(v83, v78, type metadata accessor for Player.LastChallengeInfo);
    (*(v85 + 56))(v78, 0, 1, ChallengeInfo);
  }

  v87 = sub_24F92B188();
  MEMORY[0x253050C20](v87);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v88 = v122[0];
  v122[0] = v82;

  MEMORY[0x253050C20](v88, *(&v88 + 1));

  v89 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  v90 = v116;
  v91 = *(v1 + v116[18]);
  *&v122[0] = 0xD00000000000001ELL;
  *(&v122[0] + 1) = 0x800000024FA74650;
  if (v91)
  {
    v92 = 1702195828;
  }

  else
  {
    v92 = 0x65736C6166;
  }

  if (v91)
  {
    v93 = 0xE400000000000000;
  }

  else
  {
    v93 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v92, v93);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v94 = v122[0];
  v122[0] = v89;

  MEMORY[0x253050C20](v94, *(&v94 + 1));

  v95 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA74670);
  LOBYTE(v117) = *(v1 + v90[19]);
  sub_24F92CA38();
  MEMORY[0x253050C20](10, 0xE100000000000000);
  v96 = v122[0];
  v122[0] = v95;

  MEMORY[0x253050C20](v96, *(&v96 + 1));

  v97 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD000000000000014;
  *(&v122[0] + 1) = 0x800000024FA74690;
  LOBYTE(v117) = *(v1 + v90[20]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8);
  v98 = sub_24F92B188();
  MEMORY[0x253050C20](v98);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v99 = v122[0];
  v122[0] = v97;

  MEMORY[0x253050C20](v99, *(&v99 + 1));

  v100 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD00000000000001FLL;
  *(&v122[0] + 1) = 0x800000024FA746B0;
  LOBYTE(v117) = *(v1 + v90[21]);
  v101 = sub_24F92B188();
  MEMORY[0x253050C20](v101);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v102 = v122[0];
  v122[0] = v100;

  MEMORY[0x253050C20](v102, *(&v102 + 1));

  v103 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD000000000000013;
  *(&v122[0] + 1) = 0x800000024FA746D0;
  LOBYTE(v117) = *(v1 + v90[22]);
  v104 = sub_24F92B188();
  MEMORY[0x253050C20](v104);

  v105 = v122[0];
  v122[0] = v103;

  MEMORY[0x253050C20](v105, *(&v105 + 1));

  return *&v122[0];
}

uint64_t sub_24F37CA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F37CAA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384CB8();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game();
  sub_24F380998(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for Player.LastChallengeInfo(0);
    v8[14] = 1;
    sub_24F92CD28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F37CC60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409F0);
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v19 - v6;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  MEMORY[0x28223BE20](ChallengeInfo);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384CB8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v20;
  v13 = v21;
  v25 = 0;
  sub_24F380998(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  v14 = v11;
  sub_24F37CA40(v22, v11, type metadata accessor for Game);
  v24 = 1;
  v15 = v23;
  sub_24F92CC48();
  v17 = v16;
  (*(v12 + 8))(v7, v15);
  *(v14 + *(ChallengeInfo + 20)) = v17;
  sub_24F38456C(v14, v13, type metadata accessor for Player.LastChallengeInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F384D60(v14, type metadata accessor for Player.LastChallengeInfo);
}

uint64_t sub_24F37CFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA74790 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA747B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24F37D090(uint64_t a1)
{
  v2 = sub_24F384CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F37D0CC(uint64_t a1)
{
  v2 = sub_24F384CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F37D138@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000024FA74790;
  *(inited + 72) = type metadata accessor for Game();
  *(inited + 80) = sub_24F380998(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F38456C(v4, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA747B0;
  v8 = *(v4 + *(a1 + 20));
  v9 = MEMORY[0x277D225A0];
  *(inited + 128) = MEMORY[0x277D839F8];
  *(inited + 136) = v9;
  *(inited + 104) = v8;
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t sub_24F37D334(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 24))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  v4 = *(v2 + *(a2(0) + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x253052A30](*&v4);
}

uint64_t sub_24F37D3C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384C64();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game();
  sub_24F380998(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for Player.LastPlayedTogetherInfo(0);
    v8[14] = 1;
    sub_24F92CD28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F37D57C(uint64_t (*a1)(void))
{
  sub_24F92D068();
  if (*(v1 + 24))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  v3 = *(v1 + *(a1(0) + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x253052A30](*&v3);
  return sub_24F92D0B8();
}

uint64_t sub_24F37D630@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409E8);
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v19 - v6;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384C64();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v20;
  v13 = v21;
  v25 = 0;
  sub_24F380998(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  v14 = v11;
  sub_24F37CA40(v22, v11, type metadata accessor for Game);
  v24 = 1;
  v15 = v23;
  sub_24F92CC48();
  v17 = v16;
  (*(v12 + 8))(v7, v15);
  *(v14 + *(PlayedTogetherInfo + 20)) = v17;
  sub_24F38456C(v14, v13, type metadata accessor for Player.LastPlayedTogetherInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F384D60(v14, type metadata accessor for Player.LastPlayedTogetherInfo);
}

uint64_t sub_24F37D948()
{
  if (*v0)
  {
    return 0x79616C507473616CLL;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24F37D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F37DA6C(uint64_t a1)
{
  v2 = sub_24F384C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F37DAA8(uint64_t a1)
{
  v2 = sub_24F384C64();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F37DB14@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game();
  *(inited + 80) = sub_24F380998(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F38456C(v4, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "lastPlayedDate");
  *(inited + 103) = -18;
  v8 = *(v4 + *(a1 + 20));
  v9 = MEMORY[0x277D225A0];
  *(inited + 128) = MEMORY[0x277D839F8];
  *(inited + 136) = v9;
  *(inited + 104) = v8;
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t sub_24F37DD58(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  if (*(v2 + 24))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x253052A30](*&v4);
  return sub_24F92D0B8();
}

unint64_t sub_24F37DDFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x7972616D697270;
    v11 = MEMORY[0x277D837D0];
    v12 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v12;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 88) = 0x7261646E6F636573;
    *(inited + 96) = 0xE900000000000079;
    *(inited + 128) = v11;
    *(inited + 136) = v12;
    *(inited + 104) = a3;
    *(inited + 112) = a4;

    v13 = sub_24E607D0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_24F93DE60;
    *(v14 + 32) = 0x7972616D697270;
    v15 = MEMORY[0x277D22580];
    *(v14 + 72) = MEMORY[0x277D837D0];
    *(v14 + 80) = v15;
    *(v14 + 40) = 0xE700000000000000;
    *(v14 + 48) = a1;
    *(v14 + 56) = a2;

    v13 = sub_24E607D0C(v14);
    swift_setDeallocating();
    sub_24E601704(v14 + 32, &qword_27F212F18);
  }

  v16 = sub_24E80FFAC(v13);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a5[3] = v17;
  a5[4] = result;
  *a5 = v16;
  return result;
}

uint64_t sub_24F37E014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F3845D4();
  *a1 = result;
  return result;
}

void sub_24F37E044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000796C6ELL;
  v5 = 0x4F73646E65697266;
  if (v2 != 1)
  {
    v5 = 0x796C6E4F656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6F7972657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_24F37E158(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000796C6ELL;
  v5 = 0x4F73646E65697266;
  if (v2 != 1)
  {
    v5 = 0x796C6E4F656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6F7972657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  v8 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v8;
  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24F37E1D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4F73646E65697266;
  v4 = 0xEB00000000796C6ELL;
  if (v2 != 1)
  {
    v3 = 0x796C6E4F656DLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E6F7972657665;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x4F73646E65697266;
  v8 = 0xEB00000000796C6ELL;
  if (*a2 != 1)
  {
    v7 = 0x796C6E4F656DLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E6F7972657665;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F37E2DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37E384()
{
  sub_24F92B218();
}

uint64_t sub_24F37E418()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37E4BC(char *a1, char *a2)
{
  v2 = *a2;
  result = sub_24EB9B4E0(*a1, &unk_2861B2128);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2128);
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F37E518(char *a1, char *a2)
{
  v2 = *a1;
  result = sub_24EB9B4E0(*a2, &unk_2861B2128);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2128);
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F37E574(char *a1, char *a2)
{
  v2 = *a2;
  result = sub_24EB9B4E0(*a1, &unk_2861B2178);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2178);
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F37E5D0(char *a1, char *a2)
{
  v2 = *a1;
  result = sub_24EB9B4E0(*a2, &unk_2861B2150);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2150);
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Player.avatar.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Player.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Player(0) + 28));

  return v1;
}

uint64_t sub_24F37E69C@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A00);
  MEMORY[0x28223BE20](v106);
  v107 = &v103 - v2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A08);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v104 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v109 = &v103 - v5;
  MEMORY[0x28223BE20](v6);
  v114 = &v103 - v7;
  MEMORY[0x28223BE20](v8);
  v115 = &v103 - v9;
  MEMORY[0x28223BE20](v10);
  v105 = &v103 - v11;
  MEMORY[0x28223BE20](v12);
  v112 = &v103 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v103 - v15;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v116 = *(PlayedTogetherInfo - 8);
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v110 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v103 - v18;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v21 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A10);
  MEMORY[0x28223BE20](v24 - 8);
  v108 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v113 = &v103 - v27;
  MEMORY[0x28223BE20](v28);
  v111 = &v103 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v103 - v34;
  MEMORY[0x28223BE20](v36);
  v120 = &v103 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v103 - v39;
  MEMORY[0x28223BE20](v41);
  v119 = (&v103 - v42);
  v43 = type metadata accessor for Player(0);
  v44 = v1;
  sub_24E60169C(v1 + *(v43 + 68), v19, &unk_27F247220);
  if ((*(v21 + 48))(v19, 1, ChallengeInfo) == 1)
  {
    sub_24E601704(v19, &unk_27F247220);
    v45 = 1;
  }

  else
  {
    sub_24F37CA40(v19, v23, type metadata accessor for Player.LastChallengeInfo);
    v46 = *(v123 + 48);
    sub_24F91F5D8();
    sub_24F37CA40(v23, &v40[v46], type metadata accessor for Game);
    v45 = 0;
  }

  v47 = v121;
  v48 = *(v121 + 56);
  v49 = v123;
  v48(v40, v45, 1, v123);
  v50 = v40;
  v51 = v119;
  sub_24E6009C8(v50, v119, &qword_27F240A10);
  v52 = v44 + *(v43 + 64);
  v53 = v117;
  sub_24E60169C(v52, v117, &unk_27F23E220);
  if ((*(v116 + 48))(v53, 1, PlayedTogetherInfo) == 1)
  {
    sub_24E601704(v53, &unk_27F23E220);
    v54 = 1;
  }

  else
  {
    v55 = v110;
    sub_24F37CA40(v53, v110, type metadata accessor for Player.LastPlayedTogetherInfo);
    v56 = *(v49 + 48);
    sub_24F91F5D8();
    sub_24F37CA40(v55, &v35[v56], type metadata accessor for Game);
    v54 = 0;
  }

  v57 = v120;
  v48(v35, v54, 1, v49);
  sub_24E6009C8(v35, v57, &qword_27F240A10);
  sub_24E60169C(v51, v32, &qword_27F240A10);
  v58 = *(v47 + 48);
  if (v58(v32, 1, v49) != 1)
  {
    v59 = v112;
    sub_24E6009C8(v32, v112, &qword_27F240A08);
    v32 = v111;
    sub_24E60169C(v57, v111, &qword_27F240A10);
    if (v58(v32, 1, v49) != 1)
    {
      v76 = v105;
      sub_24E6009C8(v32, v105, &qword_27F240A08);
      v77 = sub_24F91F588();
      sub_24E601704(v57, &qword_27F240A10);
      sub_24E601704(v51, &qword_27F240A10);
      LODWORD(v121) = v77 & 1;
      if (v77)
      {
        v78 = v76;
      }

      else
      {
        v78 = v59;
      }

      if (v77)
      {
        v79 = v59;
      }

      else
      {
        v79 = v76;
      }

      sub_24E601704(v78, &qword_27F240A08);
      v80 = v106;
      v81 = *(v106 + 64);
      v82 = v115;
      sub_24E60169C(v79, v115, &qword_27F240A08);
      v120 = *(v49 + 48);
      v83 = sub_24F91F648();
      v84 = *(v83 - 8);
      v119 = *(v84 + 32);
      v85 = v107;
      (v119)(v107, v82, v83);
      v86 = v79;
      v87 = v114;
      sub_24E6009C8(v86, v114, &qword_27F240A08);
      sub_24F37CA40(v87 + *(v49 + 48), &v85[v81], type metadata accessor for Game);
      (*(v84 + 8))(v87, v83);
      sub_24F384D60(v82 + v120, type metadata accessor for Game);
      v88 = *(v80 + 64);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210);
      v90 = *(v89 + 48);
      v91 = *(v89 + 64);
      v92 = v122;
      (v119)(v122, v85, v83);
      *(v92 + v90) = v121;
      sub_24F37CA40(&v85[v88], v92 + v91, type metadata accessor for Game);
      return (*(*(v89 - 8) + 56))(v92, 0, 1, v89);
    }

    sub_24E601704(v59, &qword_27F240A08);
  }

  sub_24E601704(v32, &qword_27F240A10);
  v60 = v51;
  v61 = v113;
  sub_24E6009C8(v60, v113, &qword_27F240A10);
  if (v58(v61, 1, v49) == 1)
  {
    sub_24E601704(v61, &qword_27F240A10);
    v62 = v108;
    sub_24E6009C8(v57, v108, &qword_27F240A10);
    if (v58(v62, 1, v49) == 1)
    {
      sub_24E601704(v62, &qword_27F240A10);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210);
      return (*(*(v63 - 8) + 56))(v122, 1, 1, v63);
    }

    v93 = v104;
    sub_24E6009C8(v62, v104, &qword_27F240A08);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210);
    v95 = *(v94 + 48);
    v96 = *(v94 + 64);
    v97 = v115;
    sub_24E60169C(v93, v115, &qword_27F240A08);
    v121 = *(v49 + 48);
    v98 = sub_24F91F648();
    v99 = *(v98 - 8);
    v100 = v49;
    v101 = v122;
    (*(v99 + 32))(v122, v97, v98);
    *(v101 + v95) = 0;
    v102 = v114;
    sub_24E6009C8(v93, v114, &qword_27F240A08);
    sub_24F37CA40(v102 + *(v100 + 48), v101 + v96, type metadata accessor for Game);
    (*(*(v94 - 8) + 56))(v101, 0, 1, v94);
    (*(v99 + 8))(v102, v98);
    v75 = v97 + v121;
  }

  else
  {
    sub_24E601704(v57, &qword_27F240A10);
    v65 = v109;
    sub_24E6009C8(v61, v109, &qword_27F240A08);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210);
    v67 = *(v66 + 48);
    v68 = *(v66 + 64);
    v69 = v115;
    sub_24E60169C(v65, v115, &qword_27F240A08);
    v121 = *(v49 + 48);
    v70 = sub_24F91F648();
    v71 = v49;
    v72 = *(v70 - 8);
    v73 = v122;
    (*(v72 + 32))(v122, v69, v70);
    *(v73 + v67) = 1;
    v74 = v114;
    sub_24E6009C8(v65, v114, &qword_27F240A08);
    sub_24F37CA40(v74 + *(v71 + 48), v73 + v68, type metadata accessor for Game);
    (*(*(v66 - 8) + 56))(v73, 0, 1, v66);
    (*(v72 + 8))(v74, v70);
    v75 = v69 + v121;
  }

  return sub_24F384D60(v75, type metadata accessor for Game);
}

uint64_t sub_24F37F45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v94 = a1;
  v95 = a2;
  v93 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409F8);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v80 - v4;
  v5 = sub_24F91F648();
  v92 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v81 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v80 - v14;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v89 = *(PlayedTogetherInfo - 8);
  v90 = PlayedTogetherInfo;
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v85 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v80 - v19;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v22 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v24 = (&v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v25 - 8);
  v83 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v80 - v28;
  MEMORY[0x28223BE20](v29);
  v86 = &v80 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v80 - v35;
  MEMORY[0x28223BE20](v37);
  v96 = &v80 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v80 - v40;
  MEMORY[0x28223BE20](v42);
  v91 = &v80 - v43;
  v44 = type metadata accessor for Player(0);
  sub_24E60169C(v97 + *(v44 + 68), v20, &unk_27F247220);
  if ((*(v22 + 48))(v20, 1, ChallengeInfo) == 1)
  {
    sub_24E601704(v20, &unk_27F247220);
LABEL_3:
    v45 = 1;
    goto LABEL_8;
  }

  sub_24F37CA40(v20, v24, type metadata accessor for Player.LastChallengeInfo);
  if ((*v24 != v94 || v24[1] != v95) && (sub_24F92CE08() & 1) == 0)
  {
    sub_24F384D60(v24, type metadata accessor for Player.LastChallengeInfo);
    goto LABEL_3;
  }

  sub_24F91F5D8();
  sub_24F384D60(v24, type metadata accessor for Player.LastChallengeInfo);
  v45 = 0;
LABEL_8:
  v46 = v92;
  v47 = *(v92 + 56);
  v47(v41, v45, 1, v5);
  v48 = v91;
  sub_24E6009C8(v41, v91, &unk_27F22EC30);
  sub_24E60169C(v97 + *(v44 + 64), v15, &unk_27F23E220);
  if ((*(v89 + 48))(v15, 1, v90) == 1)
  {
    sub_24E601704(v15, &unk_27F23E220);
LABEL_10:
    v49 = 1;
    goto LABEL_15;
  }

  v50 = v85;
  sub_24F37CA40(v15, v85, type metadata accessor for Player.LastPlayedTogetherInfo);
  if ((*v50 != v94 || v50[1] != v95) && (sub_24F92CE08() & 1) == 0)
  {
    sub_24F384D60(v50, type metadata accessor for Player.LastPlayedTogetherInfo);
    goto LABEL_10;
  }

  sub_24F91F5D8();
  sub_24F384D60(v50, type metadata accessor for Player.LastPlayedTogetherInfo);
  v49 = 0;
LABEL_15:
  v47(v36, v49, 1, v5);
  v51 = v36;
  v52 = v96;
  sub_24E6009C8(v51, v96, &unk_27F22EC30);
  sub_24E60169C(v52, v33, &unk_27F22EC30);
  v53 = *(v46 + 48);
  if (v53(v33, 1, v5) != 1)
  {
    v54 = *(v46 + 32);
    v55 = v87;
    v54(v87, v33, v5);
    v33 = v86;
    sub_24E60169C(v48, v86, &unk_27F22EC30);
    if (v53(v33, 1, v5) != 1)
    {
      v65 = v33;
      v66 = v81;
      v54(v81, v65, v5);
      v67 = v55;
      v68 = sub_24F91F598();
      sub_24E601704(v96, &unk_27F22EC30);
      sub_24E601704(v48, &unk_27F22EC30);
      v69 = v68 & 1;
      if (v68)
      {
        v70 = v67;
      }

      else
      {
        v70 = v66;
      }

      if (v68)
      {
        v71 = v66;
      }

      else
      {
        v71 = v67;
      }

      (*(v46 + 8))(v70, v5);
      v72 = v82;
      v54(v82, v71, v5);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0);
      v73 = *(v62 + 48);
      v64 = v93;
      v54(v93, v72, v5);
      v64[v73] = v69;
      goto LABEL_29;
    }

    (*(v46 + 8))(v55, v5);
  }

  sub_24E601704(v33, &unk_27F22EC30);
  v56 = v88;
  sub_24E6009C8(v96, v88, &unk_27F22EC30);
  if (v53(v56, 1, v5) != 1)
  {
    sub_24E601704(v48, &unk_27F22EC30);
    v60 = *(v46 + 32);
    v61 = v84;
    v60(v84, v56, v5);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0);
    v63 = *(v62 + 48);
    v64 = v93;
    v60(v93, v61, v5);
    v64[v63] = 0;
LABEL_29:
    v74 = *(*(v62 - 8) + 56);
    v75 = v64;
    return v74(v75, 0, 1, v62);
  }

  sub_24E601704(v56, &unk_27F22EC30);
  v57 = v83;
  sub_24E6009C8(v48, v83, &unk_27F22EC30);
  if (v53(v57, 1, v5) == 1)
  {
    sub_24E601704(v57, &unk_27F22EC30);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0);
    return (*(*(v58 - 8) + 56))(v93, 1, 1, v58);
  }

  v76 = *(v46 + 32);
  v77 = v80;
  v76(v80, v57, v5);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0);
  v78 = *(v62 + 48);
  v79 = v93;
  v76(v93, v77, v5);
  v79[v78] = 1;
  v74 = *(*(v62 - 8) + 56);
  v75 = v79;
  return v74(v75, 0, 1, v62);
}

unint64_t Player.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F95BE60;
  *(v2 + 32) = 0x4449726579616C70;
  v3 = MEMORY[0x277D837D0];
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(v2 + 72) = MEMORY[0x277D837D0];
  *(v2 + 80) = v6;
  v7 = v3;
  v8 = v6;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 88) = 1701667182;
  *(v2 + 96) = 0xE400000000000000;
  v9 = type metadata accessor for Player(0);
  v10 = (v1 + v9[7]);
  v11 = *v10;
  v58 = v10[1];
  *(v2 + 128) = v7;
  *(v2 + 136) = v8;
  *(v2 + 104) = v11;
  *(v2 + 112) = v58;
  *(v2 + 144) = 0x4E746361746E6F63;
  *(v2 + 152) = 0xEB00000000656D61;
  v12 = (v1 + v9[8]);
  v13 = *v12;
  v14 = v12[1];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(v2 + 184) = v15;
  v16 = sub_24E605DB4();
  *(v2 + 160) = v13;
  *(v2 + 168) = v14;
  *(v2 + 192) = v16;
  *(v2 + 200) = 0xD000000000000012;
  *(v2 + 208) = 0x800000024FA73FB0;
  v17 = *(v1 + v9[11]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240);
  *(v2 + 240) = v18;
  v19 = sub_24F3807C0(&qword_27F225248, &qword_27F225240, &unk_24F974E70, sub_24F340CD8);
  *(v2 + 216) = v17;
  *(v2 + 248) = v19;
  *(v2 + 256) = 0xD000000000000013;
  *(v2 + 264) = 0x800000024FA73FD0;
  v20 = *(v1 + v9[12]);
  *(v2 + 296) = v18;
  *(v2 + 304) = v19;
  *(v2 + 272) = v20;
  *(v2 + 312) = 0x6553656C646E6168;
  *(v2 + 320) = 0xE900000000000074;
  v21 = v9[13];
  *(v2 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  *(v2 + 360) = sub_24F141A10();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 328));
  sub_24E60169C(v1 + v21, boxed_opaque_existential_1, &unk_27F23E170);
  *(v2 + 368) = 0xD000000000000015;
  *(v2 + 376) = 0x800000024FA746F0;
  v23 = (v1 + v9[9]);
  v24 = v23[3];
  v61[2] = v23[2];
  v61[3] = v24;
  v25 = v23[5];
  v61[4] = v23[4];
  v61[5] = v25;
  v26 = v23[1];
  v61[0] = *v23;
  v61[1] = v26;
  *(v2 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F50);
  *(v2 + 416) = sub_24F3807C0(&qword_27F2408A8, &qword_27F212F50, &unk_24F9EBA70, sub_24EDD6DBC);
  v27 = swift_allocObject();
  *(v2 + 384) = v27;
  v28 = v23[3];
  v27[3] = v23[2];
  v27[4] = v28;
  v29 = v23[5];
  v27[5] = v23[4];
  v27[6] = v29;
  v30 = v23[1];
  v27[1] = *v23;
  v27[2] = v30;
  strcpy((v2 + 424), "contactHandle");
  *(v2 + 438) = -4864;
  v31 = (v1 + v9[10]);
  v32 = *v31;
  v33 = v31[1];
  *(v2 + 464) = v15;
  *(v2 + 472) = v16;
  *(v2 + 440) = v32;
  *(v2 + 448) = v33;
  *(v2 + 480) = 0x726174617661;
  *(v2 + 488) = 0xE600000000000000;
  v34 = v1[2];
  v35 = v1[3];
  *(v2 + 520) = MEMORY[0x277D837D0];
  *(v2 + 528) = MEMORY[0x277D22580];
  *(v2 + 496) = v34;
  *(v2 + 504) = v35;
  *(v2 + 536) = 0xD000000000000012;
  *(v2 + 544) = 0x800000024FA74710;
  LOBYTE(v34) = *(v1 + v9[14]);
  *(v2 + 576) = MEMORY[0x277D839B0];
  *(v2 + 584) = MEMORY[0x277D22598];
  *(v2 + 552) = v34;
  *(v2 + 592) = 0x746E45786F626E69;
  *(v2 + 600) = 0xEA00000000007972;
  v36 = (v1 + v9[15]);
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[3];
  v62[2] = v36[2];
  v62[3] = v39;
  v62[0] = v37;
  v62[1] = v38;
  *(v2 + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2408A0);
  *(v2 + 640) = sub_24F3807C0(&qword_27F2408B0, &qword_27F2408A0, &unk_24F9EBA78, sub_24F38083C);
  v40 = swift_allocObject();
  *(v2 + 608) = v40;
  v41 = v36[1];
  v40[1] = *v36;
  v40[2] = v41;
  v42 = v36[3];
  v40[3] = v36[2];
  v40[4] = v42;
  *(v2 + 648) = 0xD000000000000016;
  *(v2 + 656) = 0x800000024FA74730;
  v43 = v9[16];
  *(v2 + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  *(v2 + 696) = sub_24F3808E4();
  v44 = __swift_allocate_boxed_opaque_existential_1((v2 + 664));
  sub_24E60169C(v1 + v43, v44, &unk_27F23E220);
  *(v2 + 704) = 0xD000000000000011;
  *(v2 + 712) = 0x800000024FA74750;
  v45 = v9[17];
  *(v2 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  *(v2 + 752) = sub_24F3809E0();
  v46 = __swift_allocate_boxed_opaque_existential_1((v2 + 720));
  sub_24E60169C(v1 + v45, v46, &unk_27F247220);
  *(v2 + 760) = 0xD00000000000001ALL;
  *(v2 + 768) = 0x800000024FA74770;
  v47 = *(v1 + v9[18]);
  *(v2 + 800) = MEMORY[0x277D839B0];
  *(v2 + 808) = MEMORY[0x277D22598];
  *(v2 + 776) = v47;
  strcpy((v2 + 816), "profilePrivacy");
  *(v2 + 831) = -18;
  LOBYTE(v36) = *(v1 + v9[19]);
  *(v2 + 856) = &type metadata for Player.ProfilePrivacyVisibilityLevel;
  *(v2 + 864) = sub_24F380A94();
  *(v2 + 832) = v36;
  strcpy((v2 + 872), "avatarArtwork");
  *(v2 + 886) = -4864;
  v48 = v9[6];
  v49 = sub_24F9289E8();
  *(v2 + 912) = v49;
  *(v2 + 920) = sub_24F380998(&qword_27F21E338, MEMORY[0x277D21C48]);
  v50 = __swift_allocate_boxed_opaque_existential_1((v2 + 888));
  (*(*(v49 - 8) + 16))(v50, v1 + v48, v49);
  *(v2 + 928) = 0xD000000000000011;
  *(v2 + 936) = 0x800000024FA73FF0;
  LOBYTE(v48) = *(v1 + v9[20]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8);
  *(v2 + 968) = v51;
  v52 = sub_24F352BD8();
  *(v2 + 976) = v52;
  *(v2 + 944) = v48;
  *(v2 + 984) = 0xD00000000000001CLL;
  *(v2 + 992) = 0x800000024FA74010;
  v53 = *(v1 + v9[21]);
  *(v2 + 1024) = v51;
  *(v2 + 1032) = v52;
  *(v2 + 1000) = v53;
  *(v2 + 1040) = 0x547265646E557369;
  *(v2 + 1048) = 0xEF6E656574726968;
  v54 = *(v1 + v9[22]);
  *(v2 + 1080) = v51;
  *(v2 + 1088) = v52;
  *(v2 + 1056) = v54;

  sub_24E60169C(v61, v60, &qword_27F212F50);

  sub_24E60169C(v62, v60, &qword_27F2408A0);
  v55 = sub_24E607D0C(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v56 = sub_24E80FFAC(v55);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v56;
  return result;
}