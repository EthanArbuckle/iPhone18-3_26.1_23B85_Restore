uint64_t ProfileSetObject.resolvedConfig()(uint64_t a1)
{
  *(v2 + 832) = a1;
  v3 = *(v1 + 184);
  *(v2 + 840) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB036DB4, v3, 0);
}

uint64_t sub_1DB036DB4()
{
  v57 = v0;
  v1 = *(v0 + 840);
  *(v0 + 152) = *(v1 + 128);
  v2 = *(v1 + 176);
  v3 = *(v1 + 192);
  v4 = *(v1 + 160);
  *(v0 + 168) = *(v1 + 144);
  *(v0 + 216) = v3;
  *(v0 + 200) = v2;
  *(v0 + 184) = v4;
  v6 = *(v1 + 224);
  v5 = *(v1 + 240);
  v7 = *(v1 + 256);
  *(v0 + 232) = *(v1 + 208);
  *(v0 + 280) = v7;
  *(v0 + 264) = v5;
  *(v0 + 248) = v6;
  memmove((v0 + 16), (v1 + 128), 0x81uLL);
  if (sub_1DB042638(v0 + 16) == 1)
  {
    sub_1DB0954E0(*(*(v0 + 840) + 112), *(*(v0 + 840) + 120), &v48);
    v15 = v54;
    v16 = v55;
    v17 = v55;
    *(v0 + 656) = v54;
    *(v0 + 672) = v16;
    v18 = v50;
    v19 = v51;
    v20 = v51;
    *(v0 + 592) = v50;
    *(v0 + 608) = v19;
    v21 = v53;
    v22 = v53;
    v23 = v52;
    *(v0 + 624) = v52;
    *(v0 + 640) = v21;
    v24 = v49;
    v25 = v49;
    v26 = v48;
    *(v0 + 560) = v48;
    *(v0 + 576) = v24;
    *(v0 + 520) = v15;
    *(v0 + 536) = v17;
    *(v0 + 456) = v18;
    *(v0 + 472) = v20;
    *(v0 + 488) = v23;
    *(v0 + 504) = v22;
    v27 = *(v0 + 832);
    *(v0 + 688) = v56;
    *(v0 + 552) = v56;
    *(v0 + 424) = v26;
    *(v0 + 440) = v25;
    nullsub_3(v0 + 424);
    *(v0 + 288) = *(v1 + 128);
    v28 = *(v1 + 144);
    v29 = *(v1 + 160);
    v30 = *(v1 + 192);
    *(v0 + 336) = *(v1 + 176);
    *(v0 + 352) = v30;
    *(v0 + 304) = v28;
    *(v0 + 320) = v29;
    v31 = *(v1 + 208);
    v32 = *(v1 + 224);
    v33 = *(v1 + 240);
    *(v0 + 416) = *(v1 + 256);
    *(v0 + 384) = v32;
    *(v0 + 400) = v33;
    *(v0 + 368) = v31;
    *(v1 + 128) = *(v0 + 424);
    v34 = *(v0 + 440);
    v35 = *(v0 + 456);
    v36 = *(v0 + 488);
    *(v1 + 176) = *(v0 + 472);
    *(v1 + 192) = v36;
    *(v1 + 144) = v34;
    *(v1 + 160) = v35;
    v37 = *(v0 + 504);
    v38 = *(v0 + 520);
    v39 = *(v0 + 536);
    *(v1 + 256) = *(v0 + 552);
    *(v1 + 224) = v38;
    *(v1 + 240) = v39;
    *(v1 + 208) = v37;
    sub_1DB042650(v0 + 560, v0 + 696);
    sub_1DAF40AEC(v0 + 288, &qword_1ECC0F680, &qword_1DB0B2DC0);
    *v27 = *(v0 + 560);
    v40 = *(v0 + 624);
    v42 = *(v0 + 576);
    v41 = *(v0 + 592);
    *(v27 + 48) = *(v0 + 608);
    *(v27 + 64) = v40;
    *(v27 + 16) = v42;
    *(v27 + 32) = v41;
    v44 = *(v0 + 656);
    v43 = *(v0 + 672);
    v45 = *(v0 + 640);
    *(v27 + 128) = *(v0 + 688);
    *(v27 + 96) = v44;
    *(v27 + 112) = v43;
    *(v27 + 80) = v45;
  }

  else
  {
    v8 = *(v0 + 832);
    *v8 = *(v0 + 16);
    v9 = *(v0 + 32);
    v10 = *(v0 + 48);
    v11 = *(v0 + 80);
    *(v8 + 48) = *(v0 + 64);
    *(v8 + 64) = v11;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v12 = *(v0 + 96);
    v13 = *(v0 + 112);
    v14 = *(v0 + 128);
    *(v8 + 128) = *(v0 + 144);
    *(v8 + 96) = v13;
    *(v8 + 112) = v14;
    *(v8 + 80) = v12;
  }

  sub_1DAF40A84(v0 + 152, v0 + 288, &qword_1ECC0F680, &qword_1DB0B2DC0);
  v46 = *(v0 + 8);

  return v46();
}

uint64_t ProfileSetObject.encapsulatingConfig()(uint64_t a1)
{
  *(v2 + 480) = a1;
  v3 = v1[9];
  *(v2 + 144) = v1[8];
  *(v2 + 160) = v3;
  v4 = v1[11];
  *(v2 + 176) = v1[10];
  *(v2 + 192) = v4;
  v5 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v5;
  v6 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v6;
  v7 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v7;
  v8 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v8;
  v9 = swift_task_alloc();
  *(v2 + 488) = v9;
  *v9 = v2;
  v9[1] = sub_1DB037364;

  return ProfileSetObject.resolvedConfig()(v2 + 208);
}

uint64_t sub_1DB037364()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_1DB03753C;
  }

  else
  {
    v3 = sub_1DB037478;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB037478()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 320);
  *(v0 + 440) = *(v0 + 304);
  *(v0 + 456) = v2;
  *(v0 + 472) = *(v0 + 336);
  v3 = *(v0 + 256);
  *(v0 + 376) = *(v0 + 240);
  *(v0 + 392) = v3;
  v4 = *(v0 + 288);
  *(v0 + 408) = *(v0 + 272);
  *(v0 + 424) = v4;
  v5 = *(v0 + 224);
  *(v0 + 344) = *(v0 + 208);
  *(v0 + 360) = v5;
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);

  sub_1DAF8BA14(v0 + 344);
  v8 = *(v0 + 464);
  v9 = *(v0 + 472);
  *v1 = v6;
  *(v1 + 8) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DB037554()
{
  v1 = *(v0 + 152);
  sub_1DAF40674(v1, *(v0 + 160));
  return v1;
}

__n128 sub_1DB037588@<Q0>(__n128 *a1@<X8>)
{
  sub_1DB0954E0(*(v1 + 32), *(v1 + 40), v16);
  v13 = v16[6];
  v14 = v16[7];
  v15 = v17;
  v9 = v16[2];
  v10 = v16[3];
  v11 = v16[4];
  v12 = v16[5];
  v7 = v16[0];
  v8 = v16[1];
  nullsub_3(&v7);
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  a1[8].n128_u8[0] = v15;
  v4 = v10;
  a1[2] = v9;
  a1[3] = v4;
  v5 = v12;
  a1[4] = v11;
  a1[5] = v5;
  result = v8;
  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_1DB037644(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return ProfileSetObject.resolvedConfig()(a1);
}

uint64_t sub_1DB0376DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return ProfileSetObject.encapsulatingConfig()(a1);
}

uint64_t EncapsulatedConfig.slaMilli.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

unint64_t sub_1DB0377C0()
{
  v1 = 0x696C6C694D616C73;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DB037820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB0487A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB037848(uint64_t a1)
{
  v2 = sub_1DB042688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB037884(uint64_t a1)
{
  v2 = sub_1DB042688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncapsulatedConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F688, &qword_1DB0B2DD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v14 - v8;
  v11 = *v1;
  v10 = v1[1];
  v15 = v1[2];
  v16 = v10;
  v14[1] = *(v1 + 24);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042688();

  sub_1DB09E434();
  v18 = v11;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
  sub_1DB0427B4(&qword_1ECC0F6A0, sub_1DB0426DC);
  sub_1DB09E194();

  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_1DB09E144();
    LOBYTE(v18) = 2;
    sub_1DB09E134();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t EncapsulatedConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6C0, &qword_1DB0B2DE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042688();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
  v19 = 0;
  sub_1DB0427B4(&qword_1ECC0F6C8, sub_1DB042838);
  sub_1DB09E0C4();
  v18 = v20;
  v19 = 1;
  sub_1DB09E074();
  v12 = v20;
  LOBYTE(v20) = 2;
  v13 = sub_1DB09E064();
  v14 = v10;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  *a2 = v18;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AugmentedProfile.resolvedProfileInfo.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  v2 = sub_1DB09CFA4();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 AugmentedProfile.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 264);
    v21[6] = *(v3 + 248);
    v21[7] = v5;
    v22 = *(v3 + 280);
    v6 = *(v3 + 168);
    v7 = *(v3 + 200);
    v21[2] = *(v3 + 184);
    v21[3] = v7;
    v21[4] = *(v3 + 216);
    v21[5] = v4;
    v21[0] = *(v3 + 152);
    v21[1] = v6;
    v8 = *(v3 + 232);
    v9 = *(v3 + 264);
    v29 = *(v3 + 248);
    v30 = v9;
    v31 = *(v3 + 280);
    v10 = *(v3 + 168);
    v11 = *(v3 + 200);
    v25 = *(v3 + 184);
    v26 = v11;
    v27 = *(v3 + 216);
    v28 = v8;
    v23 = *(v3 + 152);
    v24 = v10;
    nullsub_3(&v23);
    v12 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v12;
    *(a1 + 128) = v31;
    v13 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v13;
    v14 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v14;
    v15 = v24;
    *a1 = v23;
    *(a1 + 16) = v15;
    sub_1DB042650(v21, v20);
  }

  else
  {
    sub_1DB04210C(&v23);
    v17 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v17;
    *(a1 + 128) = v31;
    v18 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v18;
    v19 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v19;
    result = v24;
    *a1 = v23;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t AugmentedProfile.profileIdentifiers(for:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  a1[3] = &type metadata for LegacyAugmentedProfileIdentifiers;
  a1[4] = sub_1DAFEA504();
  *a1 = v4;
  a1[1] = v3;
}

uint64_t AugmentedProfile.profile.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AugmentedProfile.profileInfo.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AugmentedProfile.profileID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1DB038094()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB038188()
{
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB038268()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB038358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB0488D0();
  *a2 = result;
  return result;
}

void sub_1DB038388(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656C69666F7270;
  v5 = 0xEB000000006F666ELL;
  v6 = 0x49656C69666F7270;
  v7 = 0xE900000000000064;
  v8 = 0x49656C69666F7270;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DB0C1F20;
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

unint64_t sub_1DB038438()
{
  v1 = *v0;
  v2 = 0x656C69666F7270;
  v3 = 0x49656C69666F7270;
  v4 = 0x49656C69666F7270;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1DB0384E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB0488D0();
  *a1 = result;
  return result;
}

uint64_t sub_1DB03850C(uint64_t a1)
{
  v2 = sub_1DB042910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB038548(uint64_t a1)
{
  v2 = sub_1DB042910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AugmentedProfile.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6D0, &qword_1DB0B2DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042910();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6D8, &qword_1DB0B2DF8);
  LOBYTE(v35) = 0;
  sub_1DAF4AA8C(qword_1EE3039B8, &qword_1ECC0F6D8, &qword_1DB0B2DF8);
  sub_1DB09E074();
  v13 = v39[0];
  LOBYTE(v39[0]) = 1;
  v14 = sub_1DB09E084();
  v34 = v15;
  v32 = v14;
  LOBYTE(v39[0]) = 2;
  v16 = sub_1DB09E044();
  v18 = 0x80000001DB0CA920;
  v19 = 0xD000000000000013;
  if (v17)
  {
    v19 = v16;
    v18 = v17;
  }

  v30 = v19;
  v31 = v18;
  LOBYTE(v39[0]) = 3;
  v29 = sub_1DB09E084();
  v33 = v20;
  v40 = 4;
  v21 = sub_1DB09E0B4();
  (*(v6 + 8))(v10, v5);
  v22 = v31;
  v23 = v32;
  *&v35 = v13;
  *(&v35 + 1) = v32;
  v25 = v33;
  v24 = v34;
  *&v36 = v34;
  *(&v36 + 1) = v30;
  *&v37 = v31;
  *(&v37 + 1) = v29;
  *&v38 = v33;
  *(&v38 + 1) = v21;
  v26 = v36;
  *a2 = v35;
  a2[1] = v26;
  v27 = v38;
  a2[2] = v37;
  a2[3] = v27;
  sub_1DB042964(&v35, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39[0] = v13;
  v39[1] = v23;
  v39[2] = v24;
  v39[3] = v30;
  v39[4] = v22;
  v39[5] = v29;
  v39[6] = v25;
  v39[7] = v21;
  return sub_1DB04299C(v39);
}

uint64_t AugmentedProfile.profile(for:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  result = sub_1DB09CFA4();
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t AugmentedProfile.resolvedConfig()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 288) = a1;
  *(v2 + 296) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB0389D8, 0, 0);
}

uint64_t sub_1DB0389D8()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 288);
    *(v0 + 16) = *(v1 + 152);
    v3 = *(v1 + 184);
    v4 = *(v1 + 216);
    v5 = *(v1 + 168);
    *(v0 + 64) = *(v1 + 200);
    *(v0 + 80) = v4;
    *(v0 + 32) = v5;
    *(v0 + 48) = v3;
    v6 = *(v1 + 248);
    v7 = *(v1 + 264);
    v8 = *(v1 + 232);
    *(v0 + 144) = *(v1 + 280);
    *(v0 + 112) = v6;
    *(v0 + 128) = v7;
    *(v0 + 96) = v8;
    v9 = *(v1 + 168);
    v10 = *(v1 + 184);
    v11 = *(v1 + 216);
    *(v2 + 48) = *(v1 + 200);
    *(v2 + 64) = v11;
    *(v2 + 16) = v9;
    *(v2 + 32) = v10;
    *v2 = *(v1 + 152);
    v12 = *(v1 + 232);
    v13 = *(v1 + 248);
    v14 = *(v1 + 264);
    *(v2 + 128) = *(v1 + 280);
    *(v2 + 96) = v13;
    *(v2 + 112) = v14;
    *(v2 + 80) = v12;
    sub_1DB042650(v0 + 16, v0 + 152);
    v15 = *(v0 + 8);
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v16 = MEMORY[0x1E69E7CC0];
    v17 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v17 + 16))
    {
      v18 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v19)
      {
        sub_1DAF409DC(*(v17 + 56) + 32 * v18, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v16 = *(v0 + 152);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DAF72EC0(0, *(v16 + 2) + 1, 1, v16);
    }

    v21 = *(v16 + 2);
    v20 = *(v16 + 3);
    if (v21 >= v20 >> 1)
    {
      v16 = sub_1DAF72EC0((v20 > 1), v21 + 1, 1, v16);
    }

    *(v16 + 2) = v21 + 1;
    v22 = &v16[56 * v21];
    *(v22 + 4) = 0;
    *(v22 + 5) = 0xE000000000000000;
    *(v22 + 6) = 0xD000000000000023;
    *(v22 + 7) = 0x80000001DB0CA830;
    *(v22 + 8) = 0xD000000000000010;
    *(v22 + 9) = 0x80000001DB0CA940;
    *(v22 + 10) = 801;
    *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 16) = v16;
    sub_1DAF40D20((v0 + 16), (v0 + 152));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 152), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v25 = sub_1DB09D6B4();
    v26 = sub_1DB09D604();
    [v24 initWithDomain:v25 code:-2128 userInfo:v26];

    swift_willThrow();
    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t AugmentedProfile.encapsulatingConfig()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 288) = a1;
  *(v2 + 296) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB038D5C, 0, 0);
}

uint64_t sub_1DB038D5C()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 288);
    *(v0 + 16) = *(v1 + 152);
    v3 = *(v1 + 184);
    v4 = *(v1 + 216);
    v5 = *(v1 + 168);
    *(v0 + 64) = *(v1 + 200);
    *(v0 + 80) = v4;
    *(v0 + 32) = v5;
    *(v0 + 48) = v3;
    v6 = *(v1 + 248);
    v7 = *(v1 + 264);
    v8 = *(v1 + 232);
    *(v0 + 144) = *(v1 + 280);
    *(v0 + 112) = v6;
    *(v0 + 128) = v7;
    *(v0 + 96) = v8;
    sub_1DB042650(v0 + 16, v0 + 152);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);

    sub_1DAF8BA14(v0 + 16);
    v11 = *(v0 + 136);
    v12 = *(v0 + 144);
    *v2 = v10;
    *(v2 + 8) = v9;
    *(v2 + 16) = v11;
    *(v2 + 24) = v12;
    v13 = *(v0 + 8);
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v15 + 16))
    {
      v16 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v17)
      {
        sub_1DAF409DC(*(v15 + 56) + 32 * v16, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v14 = *(v0 + 152);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DAF72EC0(0, *(v14 + 2) + 1, 1, v14);
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_1DAF72EC0((v18 > 1), v19 + 1, 1, v14);
    }

    *(v14 + 2) = v19 + 1;
    v20 = &v14[56 * v19];
    *(v20 + 4) = 0;
    *(v20 + 5) = 0xE000000000000000;
    *(v20 + 6) = 0xD000000000000023;
    *(v20 + 7) = 0x80000001DB0CA830;
    *(v20 + 8) = 0xD000000000000010;
    *(v20 + 9) = 0x80000001DB0CA940;
    *(v20 + 10) = 801;
    *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 16) = v14;
    sub_1DAF40D20((v0 + 16), (v0 + 152));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 152), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_1DB09D6B4();
    v24 = sub_1DB09D604();
    [v22 initWithDomain:v23 code:-2128 userInfo:v24];

    swift_willThrow();
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t AugmentedProfile.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6E0, &qword_1DB0B2E10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v17 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v17[5] = v1[2];
  v17[6] = v10;
  v13 = v1[5];
  v17[3] = v1[4];
  v17[4] = v12;
  v14 = v1[7];
  v17[1] = v1[6];
  v17[2] = v13;
  v17[0] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042910();

  sub_1DB09E434();
  v23 = v11;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6D8, &qword_1DB0B2DF8);
  sub_1DAF4AA8C(&qword_1ECC0F6E8, &qword_1ECC0F6D8, &qword_1DB0B2DF8);
  sub_1DB09E144();

  if (!v2)
  {
    v21 = 1;
    sub_1DB09E154();
    v20 = 2;
    sub_1DB09E104();
    v19 = 3;
    sub_1DB09E154();
    v18 = 4;
    sub_1DB09E184();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1DB039328()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  v2 = sub_1DB09CFA4();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 sub_1DB0393A0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 264);
    v21[6] = *(v3 + 248);
    v21[7] = v5;
    v22 = *(v3 + 280);
    v6 = *(v3 + 168);
    v7 = *(v3 + 200);
    v21[2] = *(v3 + 184);
    v21[3] = v7;
    v21[4] = *(v3 + 216);
    v21[5] = v4;
    v21[0] = *(v3 + 152);
    v21[1] = v6;
    v8 = *(v3 + 232);
    v9 = *(v3 + 264);
    v29 = *(v3 + 248);
    v30 = v9;
    v31 = *(v3 + 280);
    v10 = *(v3 + 168);
    v11 = *(v3 + 200);
    v25 = *(v3 + 184);
    v26 = v11;
    v27 = *(v3 + 216);
    v28 = v8;
    v23 = *(v3 + 152);
    v24 = v10;
    nullsub_3(&v23);
    v12 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v12;
    *(a1 + 128) = v31;
    v13 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v13;
    v14 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v14;
    v15 = v24;
    *a1 = v23;
    *(a1 + 16) = v15;
    sub_1DB042650(v21, v20);
  }

  else
  {
    sub_1DB04210C(&v23);
    v17 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v17;
    *(a1 + 128) = v31;
    v18 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v18;
    v19 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v19;
    result = v24;
    *a1 = v23;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1DB0394C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  result = sub_1DB09CFA4();
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_1DB039504@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  a1[3] = &type metadata for LegacyAugmentedProfileIdentifiers;
  a1[4] = sub_1DAFEA504();
  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_1DB03955C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF62CC4;

  return AugmentedProfile.resolvedConfig()(a1);
}

uint64_t sub_1DB0395F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return AugmentedProfile.encapsulatingConfig()(a1);
}

CoreODIEssentials::DsidType_optional __swiftcall DsidType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB039724()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB0397D0()
{
  *v0;
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB039868()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB03991C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64756F6C4369;
  v4 = 1684628325;
  if (*v1 != 2)
  {
    v4 = 1869903201;
  }

  if (*v1)
  {
    v3 = 0x73656E755469;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

CoreODIEssentials::ArmandDataSource_optional __swiftcall ArmandDataSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ArmandDataSource.rawValue.getter()
{
  result = 0x73746E756F636341;
  switch(*v0)
  {
    case 1:
      result = 0x6547656C69626F4DLL;
      break;
    case 2:
      result = 0x6974726543616162;
      break;
    case 3:
      result = 0x6C6569467261654ELL;
      break;
    case 4:
      result = 5456969;
      break;
    case 5:
      result = 0x656C655465726F43;
      break;
    case 6:
      result = 0x61636F4C65726F43;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x656E6F5A656D6954;
      break;
    case 9:
      result = 0x6C4372656C6C6143;
      break;
    case 0xA:
      result = 0x614E646573726150;
      break;
    case 0xB:
      result = 0x7265646F636F6547;
      break;
    case 0xC:
      result = 0x657474616D726F46;
      break;
    case 0xD:
      result = 0x6553656369766544;
      break;
    case 0xE:
      result = 0x72756769666E6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DB039CA8@<X0>(unint64_t *a1@<X8>)
{
  result = ArmandDataSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssessmentConfigFieldName.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    sub_1DB09DE44();

    strcpy(v5, "BindingsField(");
    HIBYTE(v5[1]) = -18;
    MEMORY[0x1E127FE90](v1, v2);
  }

  else
  {
    sub_1DB09DE44();

    v5[0] = 0xD000000000000010;
    v5[1] = 0x80000001DB0CA960;
    v3 = ArmandDeviceDataFieldName.rawValue.getter();
    MEMORY[0x1E127FE90](v3);
  }

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  return v5[0];
}

unint64_t ArmandDeviceDataFieldName.rawValue.getter()
{
  result = 0x726556646C697542;
  switch(*v0)
  {
    case 1:
      result = 1684628851;
      break;
    case 2:
      result = 0x754E6C6169726553;
      break;
    case 3:
      result = 0x6544657571696E55;
      break;
    case 4:
      result = 0x6843657571696E55;
      break;
    case 5:
      result = 0x6F6973726556736FLL;
      break;
    case 6:
      result = 0x7265626D756ELL;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x746E6564494D4953;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0x6E6F697461636F6CLL;
      break;
    case 0xB:
      result = 0xD000000000000017;
      break;
    case 0xC:
      result = 0x6E69726168537369;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x696669746E656469;
      break;
    case 0xF:
      result = 0x736572705F6D6973;
      break;
    case 0x10:
      result = 0x6F737265705F6161;
      break;
    case 0x11:
      result = 0x7A696C616D726F6ELL;
      break;
    case 0x12:
      result = 0x6469656C707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB03A0D4(uint64_t a1)
{
  v2 = sub_1DB042A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03A110(uint64_t a1)
{
  v2 = sub_1DB042A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB03A14C()
{
  if (*v0)
  {
    result = 0x73676E69646E6962;
  }

  else
  {
    result = 0x6144656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_1DB03A1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144656369766564 && a2 == 0xEF646C6569466174;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73676E69646E6962 && a2 == 0xED0000646C656946)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB03A28C(uint64_t a1)
{
  v2 = sub_1DB0429CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03A2C8(uint64_t a1)
{
  v2 = sub_1DB0429CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB03A304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB03A384(uint64_t a1)
{
  v2 = sub_1DB042A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03A3C0(uint64_t a1)
{
  v2 = sub_1DB042A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssessmentConfigFieldName.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x1E1280A80](1);

    return sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }
}

uint64_t AssessmentConfigFieldName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DB09E3A4();
  if (v3)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  return sub_1DB09E3E4();
}

uint64_t AssessmentConfigFieldName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6F0, &qword_1DB0B2E18);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6F8, &qword_1DB0B2E20);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F700, &qword_1DB0B2E28);
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v39, v15);
  v17 = &v36 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1DB0429CC();
  v20 = v40;
  sub_1DB09E414();
  if (!v20)
  {
    v40 = v13;
    v21 = v38;
    v22 = sub_1DB09E0D4();
    if (*(v22 + 16) == 1)
    {
      v23 = v39;
      v42 = *(v22 + 32);
      if (v42)
      {
        v45 = 1;
        sub_1DB042A20();
        v24 = v23;
        sub_1DB09E024();
        v31 = sub_1DB09E084();
        v36 = v32;
        v33 = v7;
        v34 = v40;
        (*(v37 + 8))(v33, v3);
        (*(v34 + 8))(v17, v24);
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1DB042A74();
        sub_1DB09E024();
        sub_1DB042AC8();
        sub_1DB09E0C4();
        (*(v36 + 8))(v12, v8);
        (*(v40 + 8))(v17, v23);
        swift_unknownObjectRelease();
        v36 = 0;
        v31 = v43;
      }

      v35 = v36;
      *v21 = v31;
      *(v21 + 8) = v35;
      *(v21 + 16) = v42;
    }

    else
    {
      v25 = sub_1DB09DEA4();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380) + 48);
      *v27 = &type metadata for AssessmentConfigFieldName;
      v29 = v39;
      sub_1DB09E034();
      sub_1DB09DE84();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v40 + 8))(v17, v29);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

uint64_t sub_1DB03AA74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DB09E3A4();
  if (v3)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03AB18()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x1E1280A80](1);

    return sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }
}

uint64_t sub_1DB03ABD8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DB09E3A4();
  if (v3)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  return sub_1DB09E3E4();
}

CoreODIEssentials::ArmandDeviceDataFieldName_optional __swiftcall ArmandDeviceDataFieldName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E2B4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DB03AD50@<X0>(unint64_t *a1@<X8>)
{
  result = ArmandDeviceDataFieldName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreODIEssentials::ODIComputableBindingsName_optional __swiftcall ODIComputableBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIComputableBindingsName.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0xD000000000000012;
    if (v1 == 10)
    {
      v6 = 0xD000000000000014;
    }

    if (v1 == 9)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD000000000000013;
    if (v1 != 7)
    {
      v8 = 0xD000000000000014;
    }

    if (v1 == 6)
    {
      v8 = 0xD000000000000014;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6947646573726170;
    v3 = 0xD000000000000010;
    v4 = 0xD000000000000010;
    if (v1 != 4)
    {
      v4 = 0x694E646573726170;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000010;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_1DB03B03C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DB03B0FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_1DB09E3A4();
  a3(v6);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03B184(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_1DB09D794();
}

uint64_t sub_1DB03B204(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_1DB09E3A4();
  a4(v7);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DB03B27C@<X0>(unint64_t *a1@<X8>)
{
  result = ODIComputableBindingsName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreODIEssentials::ODIFormattedPhoneNumberBindings_optional __swiftcall ODIFormattedPhoneNumberBindings.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIFormattedPhoneNumberBindings.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1DB03B3B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "formattedPhoneNumber";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "formattedPhoneNumber";
  }

  else
  {
    v6 = "formattedPeerPhoneNumber";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "e";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "formattedPeerPhoneNumber";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "e";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DB03B490()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03B52C()
{
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB03B5B4()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB03B658(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "formattedPhoneNumber";
  v4 = 0xD000000000000018;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "formattedPeerPhoneNumber";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "e";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

CoreODIEssentials::ODIGeocoderBindingsName_optional __swiftcall ODIGeocoderBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIGeocoderBindingsName.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000016;
    v6 = 0xD000000000000017;
    if (v1 != 6)
    {
      v5 = 0xD000000000000017;
    }

    if (v1 != 4)
    {
      v6 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x4C73736572646461;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

void sub_1DB03B8B8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001DB0C1110;
    v9 = 0xD000000000000016;
    v10 = 0xD000000000000017;
    if (v2 != 6)
    {
      v9 = 0xD000000000000017;
      v8 = 0x80000001DB0C1130;
    }

    v11 = 0x80000001DB0C10D0;
    if (v2 != 4)
    {
      v10 = 0xD000000000000018;
      v11 = 0x80000001DB0C10F0;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEF65647574697461;
    v4 = 0x4C73736572646461;
    v5 = 0x80000001DB0C1090;
    v6 = 0xD000000000000012;
    if (v2 != 2)
    {
      v6 = 0xD000000000000013;
      v5 = 0x80000001DB0C10B0;
    }

    if (*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000001DB0C1070;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

CoreODIEssentials::ODIDeviceSettingsBindingsName_optional __swiftcall ODIDeviceSettingsBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIDeviceSettingsBindingsName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6563697665447369;
  v3 = 0x614C656E6F687069;
  if (v1 != 4)
  {
    v3 = 0x7365727574616566;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1DB03BB78()
{
  *v0;
  *v0;
  sub_1DB09D794();
}

void sub_1DB03BC94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064656B636F4CLL;
  v4 = 0x6563697665447369;
  v5 = 0x80000001DB0C1320;
  v6 = 0xEE0065676175676ELL;
  v7 = 0x614C656E6F687069;
  if (v2 != 4)
  {
    v7 = 0x7365727574616566;
    v6 = 0xE800000000000000;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x80000001DB0C1300;
  if (v2 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (v2 != 1)
  {
    v8 = 0x80000001DB0C0FC0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

CoreODIEssentials::ODILocationBindingsName_optional __swiftcall ODILocationBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODILocationBindingsName.rawValue.getter()
{
  v1 = 0x656475746974616CLL;
  v2 = *v0;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v2 != 3)
  {
    v4 = 0x6564757469746C61;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB03BED4()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03BFBC()
{
  *v0;
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB03C090()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB03C180(uint64_t *a1@<X8>)
{
  v2 = 0x656475746974616CLL;
  v3 = *v1;
  v4 = 0xE800000000000000;
  v5 = 0x80000001DB0C1160;
  v6 = 0xD000000000000012;
  v7 = 0xD000000000000010;
  v8 = 0x80000001DB0C1180;
  if (v3 != 3)
  {
    v7 = 0x6564757469746C61;
    v8 = 0xE800000000000000;
  }

  if (v3 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v2 = 0x64757469676E6F6CLL;
    v4 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9;
}

uint64_t DeviceDataField.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceDataField.fieldName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1DB042B1C(v2, v3, v4);
}

uint64_t DeviceDataField.timeout.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_1DB03C2F0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x797469726F697270;
  v4 = 0x4D74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x67656C6976697270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E646C656966;
  if (v1 != 1)
  {
    v5 = 0x656372756F73;
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

uint64_t sub_1DB03C3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB04891C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB03C3E0(uint64_t a1)
{
  v2 = sub_1DB042B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03C41C(uint64_t a1)
{
  v2 = sub_1DB042B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceDataField.init(identifier:bindingName:source:priority:timeout:requiresEntitlements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a5;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = 1;
  *(a9 + 33) = v10;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

uint64_t DeviceDataField.init(identifier:fieldName:source:priority:timeout:requiresEntitlements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  v10 = *a4;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 33) = v10;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7 & 1;
  *(a9 + 57) = a8;
  return result;
}

uint64_t DeviceDataField.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F720, &qword_1DB0B2E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042B2C();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v40[0]) = 0;
  v36 = sub_1DB09E084();
  v53 = v13;
  LOBYTE(v38[0]) = 1;
  sub_1DB042AC8();
  sub_1DB09E0C4();
  v37 = LOBYTE(v40[0]);
  v52 = 0;
  LOBYTE(v38[0]) = 2;
  sub_1DB042B80();
  sub_1DB09E0C4();
  v14 = LOBYTE(v40[0]);
  LOBYTE(v40[0]) = 3;
  v15 = sub_1DB09E064();
  v35 = v14;
  if (v16)
  {
    v17 = 3;
  }

  else
  {
    v17 = v15;
  }

  LOBYTE(v40[0]) = 4;
  v33 = sub_1DB09E064();
  v34 = v17;
  v49 = v18 & 1;
  LOBYTE(v40[0]) = 5;
  v19 = sub_1DB09E054();
  v32 = 0;
  (*(v6 + 8))(v10, v5);
  v20 = v19 & 1;
  v30 = v19 & 1;
  v21 = v36;
  v22 = v53;
  *&v38[0] = v36;
  *(&v38[0] + 1) = v53;
  v38[1] = v37;
  v31 = v52;
  v39[0] = v52;
  v23 = v35;
  v39[1] = v35;
  *&v39[2] = v50;
  *&v39[6] = v51;
  v24 = v34;
  v25 = v33;
  *&v39[8] = v34;
  *&v39[16] = v33;
  v26 = v49;
  v39[24] = v49;
  v39[25] = v20;
  v27 = v38[0];
  v28 = v37;
  v29 = *v39;
  *(a2 + 42) = *&v39[10];
  a2[1] = v28;
  a2[2] = v29;
  *a2 = v27;
  sub_1DB042BD4(v38, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v40[0] = v21;
  v40[1] = v22;
  v40[2] = v37;
  v40[3] = v32;
  v41 = v31;
  v42 = v23;
  v43 = v50;
  v44 = v51;
  v45 = v24;
  v46 = v25;
  v47 = v26;
  v48 = v30;
  return sub_1DB042C0C(v40);
}

uint64_t DeviceDataField.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F728, &qword_1DB0B2E38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v24 = v1[3];
  v25 = v11;
  v29 = *(v1 + 32);
  v23 = *(v1 + 33);
  v12 = v1[6];
  v20 = v1[5];
  v22 = v12;
  HIDWORD(v19) = *(v1 + 56);
  v21 = *(v1 + 57);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042B2C();
  sub_1DB09E434();
  LOBYTE(v27) = 0;
  v14 = v26;
  sub_1DB09E154();
  if (!v14)
  {
    v15 = v23;
    v16 = v22;
    if (v29)
    {
      LOBYTE(v27) = 1;
      sub_1DB09E154();
    }

    else
    {
      LOBYTE(v27) = v25;
      v30 = 1;
      sub_1DB042D0C();
      sub_1DB09E194();
    }

    LOBYTE(v27) = v15;
    v30 = 2;
    sub_1DB042C3C();
    sub_1DB09E194();
    v17 = BYTE4(v19);
    LOBYTE(v27) = 3;
    sub_1DB09E184();
    v27 = v16;
    v28 = v17;
    v30 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
    sub_1DB042C90();
    sub_1DB09E194();
    LOBYTE(v27) = 5;
    sub_1DB09E164();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t DeviceDataField.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = v0[5];
  v18 = v0[6];
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0x203A64692020, 0xE600000000000000);
  MEMORY[0x1E127FE90](v1, v2);
  MEMORY[0x1E127FE90](0x614E646C65696620, 0xEC000000203A656DLL);
  v10 = AssessmentConfigFieldName.description.getter();
  MEMORY[0x1E127FE90](v10);

  MEMORY[0x1E127FE90](0x3A656372756F7320, 0xE900000000000020);
  sub_1DB09DF94();
  MEMORY[0x1E127FE90](0x7469726F69727020, 0xEB00000000203A79);
  v11 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v11);

  MEMORY[0x1E127FE90](0x74756F656D697420, 0xEA0000000000203ALL);
  if (v8)
  {
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    sub_1DAF988A8();
    v13 = sub_1DB09DCD4();
    v12 = v14;
  }

  MEMORY[0x1E127FE90](v13, v12);

  MEMORY[0x1E127FE90](0x203A7669727020, 0xE700000000000000);
  if (v9)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v9)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v15, v16);

  return 0;
}

uint64_t DeviceDataField.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v8 = v0[5];
  v7 = v0[6];
  v9 = *(v0 + 56);
  v10 = *(v0 + 57);
  sub_1DB09D794();
  if (v5)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  ArmandDataSource.rawValue.getter();
  sub_1DB09D794();

  MEMORY[0x1E1280A80](v8);
  sub_1DB09E3C4();
  if (!v9)
  {
    MEMORY[0x1E1280A80](v7);
  }

  return sub_1DB09E3C4();
}

uint64_t DeviceDataField.hashValue.getter()
{
  sub_1DB09E3A4();
  DeviceDataField.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D044()
{
  sub_1DB09E3A4();
  DeviceDataField.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D088()
{
  sub_1DB09E3A4();
  DeviceDataField.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D0C8()
{
  v1 = 0x6D614E646C656966;
  if (*v0 != 1)
  {
    v1 = 0x656372756F73;
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

uint64_t sub_1DB03D128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB048B30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB03D150(uint64_t a1)
{
  v2 = sub_1DB04AD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03D18C(uint64_t a1)
{
  v2 = sub_1DB04AD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DB03D1C8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DB048C54(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

char *sub_1DB03D20C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_1DB048E9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::String __swiftcall ODIFieldsCategory.combinedWorkflow(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  if (*v1)
  {
    v4 = 0x4661746144776172;
  }

  else
  {
    v4 = 0x73676E69646E6962;
  }

  if (*v1)
  {
    v5 = 0xED000073646C6569;
  }

  else
  {
    v5 = 0xEE0073646C656946;
  }

  MEMORY[0x1E127FE90](v4, v5);

  MEMORY[0x1E127FE90](95, 0xE100000000000000);
  MEMORY[0x1E127FE90](countAndFlagsBits, object);
  v6 = 0;
  v7 = 0xE000000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t ODIFieldsCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D394()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D47C()
{
  *v0;
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB03D550()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB046540();
  *a2 = result;
  return result;
}

void sub_1DB03D664(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64756F6C4369;
  v5 = 0xE600000000000000;
  v6 = 0x64726143656DLL;
  v7 = 0xEB00000000726562;
  v8 = 0x6D754E656E6F6870;
  if (v2 != 3)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73656E755469;
    v3 = 0xE600000000000000;
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

uint64_t sub_1DB03D708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1DAF3523C(a1, v7);
  v5 = sub_1DAFC2B3C(v7, 4u);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t AssessmentConfig.Sources.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_1DAF3523C(a1, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DB09E404();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1DB09E274();
    AssessmentConfig.Sources.init(rawValue:)(v8);
    if (v7 == 7)
    {
      v6 = 6;
    }

    else
    {
      v6 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v6;
  }

  return result;
}

CoreODIEssentials::AssessmentConfig::Sources_optional __swiftcall AssessmentConfig.Sources.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssessmentConfig.Sources.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64726143654DLL;
  if (v1 != 5)
  {
    v2 = 0x726F707075736E75;
  }

  v3 = 0x656C655465726F43;
  if (v1 != 3)
  {
    v3 = 0x797469746E656449;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 2u)
  {
    return 0x73746E756F636341;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB03DA10(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x74616E6974736564;
    v6 = 0xD000000000000011;
    v7 = 0x5468736572666572;
    if (a1 == 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    if (a1 != 9)
    {
      v1 = 0x696C6C694D616C73;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0x4F646E6553657375;
    v3 = 0x4F646E6553657375;
    if (a1 != 6)
    {
      v3 = 0x447972616D697270;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DB03DBAC()
{
  *v0;
  *v0;
  *v0;
  sub_1DB09D794();
}

void sub_1DB03DCD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64726143654DLL;
  if (v2 != 5)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  v6 = 0xED0000796E6F6870;
  v7 = 0x656C655465726F43;
  if (v2 != 3)
  {
    v7 = 0x797469746E656449;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEF64756F6C43692ELL;
  if (v2 != 1)
  {
    v8 = 0xEF73656E7554692ELL;
  }

  if (*v1)
  {
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = 0x73746E756F636341;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v4;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DB03DE08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void (*a3)(uint64_t *__return_ptr, _BYTE *, uint64_t)@<X4>, _BYTE *a4@<X8>)
{
  sub_1DAF3523C(a1, v10);
  a3(&v11, v10, a2);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v4)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t sub_1DB03DEDC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DB03DA10(*a1);
  v5 = v4;
  if (v3 == sub_1DB03DA10(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DB03DF64()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB03DA10(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03DFC8()
{
  sub_1DB03DA10(*v0);
  sub_1DB09D794();
}

uint64_t sub_1DB03E01C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB03DA10(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03E07C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB04929C();
  *a2 = result;
  return result;
}

uint64_t sub_1DB03E0AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB03DA10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DB03E0F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB04929C();
  *a1 = result;
  return result;
}

uint64_t sub_1DB03E128(uint64_t a1)
{
  v2 = sub_1DB042D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03E164(uint64_t a1)
{
  v2 = sub_1DB042D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssessmentConfig.destinations.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1DAF40A84(v7, &v6, &qword_1ECC0E7C0, &qword_1DB0A51B0);
}

uint64_t AssessmentConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F748, &qword_1DB0B2E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v101 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042D60();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v114 = a1;
  v115 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F750, &qword_1DB0B2E48);
  LOBYTE(v116) = 1;
  sub_1DB042DB4();
  sub_1DB09E0C4();
  v12 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F758, &qword_1DB0B2E50);
  LOBYTE(v116) = 2;
  sub_1DB042E8C();
  sub_1DB09E0C4();
  v13 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  LOBYTE(v116) = 3;
  sub_1DAF673C8(&qword_1EE301928);
  sub_1DB09E074();
  v112 = v13;
  v113 = v125;
  if (v125)
  {
LABEL_18:
    v143 = 0;
    sub_1DB043074();
    sub_1DB09E074();
    v107 = v12;
    v151 = v144;
    v152 = v145;
    v153 = v146;
    v154 = v147;
    LOBYTE(v125) = 4;
    v111 = sub_1DB09E0B4();
    LOBYTE(v125) = 5;
    v30 = sub_1DB09E054();
    v31 = v30 == 2;
    LOBYTE(v125) = 6;
    LODWORD(v13) = v30;
    v32 = sub_1DB09E054();
    LODWORD(v109) = v31;
    LODWORD(v110) = v13;
    LOBYTE(v13) = v32;
    LOBYTE(a1) = v32 == 2;
    LOBYTE(v116) = 7;
    sub_1DB0430C8();
    sub_1DB09E074();
    v33 = v125;
    if (v125 == 4)
    {
      v33 = 0;
    }

    v103 = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F770, &unk_1DB0B2E70);
    LOBYTE(v116) = 8;
    v35 = sub_1DB04311C();
    v108 = v34;
    v106 = v35;
    sub_1DB09E074();
  }

  else
  {
    v107 = v12;
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v109 = (v15 + 63) >> 6;

    v18 = 0;
    v113 = MEMORY[0x1E69E7CC0];
    v108 = v13 + 64;
    v19 = v109;
    if (v17)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v19)
      {

        v12 = v107;
        goto LABEL_18;
      }

      v17 = *(v14 + 8 * v20);
      ++v18;
      if (v17)
      {
        v18 = v20;
        do
        {
LABEL_11:
          v21 = __clz(__rbit64(v17)) | (v18 << 6);
          v22 = *(v13 + 56);
          v23 = (*(v13 + 48) + 16 * v21);
          v24 = *v23;
          v110 = v23[1];
          v111 = v24;
          v25 = *(v22 + 8 * v21);
          swift_bridgeObjectRetain_n();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_1DAF72DB4(0, *(v113 + 2) + 1, 1, v113);
          }

          v27 = *(v113 + 2);
          v26 = *(v113 + 3);
          if (v27 >= v26 >> 1)
          {
            v113 = sub_1DAF72DB4((v26 > 1), v27 + 1, 1, v113);
          }

          v17 &= v17 - 1;

          a1 = v110;

          v28 = v113;
          *(v113 + 2) = v27 + 1;
          v29 = &v28[16 * v27];
          v13 = v112;
          *(v29 + 4) = v111;
          *(v29 + 5) = a1;
          v14 = v108;
          v19 = v109;
        }

        while (v17);
      }
    }

    __break(1u);
  }

  v104 = v9;
  v105 = v4;
  LODWORD(v109) = (v109 | v110) & 1;
  v102 = (a1 | v13) & 1;
  v36 = v125;
  if (!v125)
  {
    v36 = sub_1DAF3FB3C(MEMORY[0x1E69E7CC0]);
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2B8, &qword_1DB0A0240);
  result = sub_1DB09DFD4();
  v37 = 0;
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v36 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = result;
  v110 = (result + 64);
  if (v40)
  {
    while (1)
    {
      v43 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
LABEL_33:
      v46 = v43 | (v37 << 6);
      v47 = (*(v36 + 48) + 16 * v46);
      v48 = *(*(v36 + 56) + 8 * v46);
      v49 = *v47;
      result = v47[1];
      *(v110 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v50 = (v42[6] + 16 * v46);
      *v50 = v49;
      v50[1] = result;
      *(v42[7] + 8 * v46) = v48;
      v51 = v42[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        break;
      }

      v42[2] = v53;

      if (!v40)
      {
        goto LABEL_28;
      }
    }

LABEL_66:
    __break(1u);
  }

  else
  {
LABEL_28:
    v44 = v37;
    while (1)
    {
      v37 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_66;
      }

      if (v37 >= v41)
      {
        break;
      }

      v45 = *(v36 + 64 + 8 * v37);
      ++v44;
      if (v45)
      {
        v43 = __clz(__rbit64(v45));
        v40 = (v45 - 1) & v45;
        goto LABEL_33;
      }
    }

    LOBYTE(v116) = 9;
    result = sub_1DB09E074();
    if (!v125)
    {
      v110 = 0;
LABEL_64:
      v142 = 10;
      v88 = sub_1DB09E064();
      v90 = v89;
      (*(v115 + 8))(v104, v105);
      v148 = v90 & 1;
      v116 = v151;
      v117 = v152;
      v118 = v153;
      v119 = v154;
      v91 = v112;
      v92 = v113;
      *&v120 = v107;
      *(&v120 + 1) = v112;
      v93 = v110;
      *&v121 = v113;
      *(&v121 + 1) = v111;
      LOBYTE(v122) = v109;
      BYTE1(v122) = v102;
      BYTE2(v122) = v103;
      BYTE7(v122) = v150;
      *(&v122 + 3) = v149;
      *(&v122 + 1) = v42;
      *&v123 = v110;
      *(&v123 + 1) = v88;
      v90 &= 1u;
      v124 = v90;
      v94 = v122;
      v95 = v123;
      v96 = v155;
      *(v155 + 128) = v90;
      v96[6] = v94;
      v96[7] = v95;
      v97 = v116;
      v98 = v117;
      v99 = v121;
      v96[4] = v120;
      v96[5] = v99;
      v100 = v119;
      v96[2] = v118;
      v96[3] = v100;
      *v96 = v97;
      v96[1] = v98;
      sub_1DB042650(&v116, &v125);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      v125 = v151;
      v126 = v152;
      v127 = v153;
      v128 = v154;
      v129 = v107;
      v130 = v91;
      v131 = v92;
      v132 = v111;
      v133 = v109;
      v134 = v102;
      v135 = v103;
      v136 = v149;
      v137 = v150;
      v138 = v42;
      v139 = v93;
      v140 = v88;
      v141 = v90;
      return sub_1DAF8BA14(&v125);
    }

    v54 = v125;
    v55 = 0;
    v56 = v125 + 64;
    v57 = 1 << *(v125 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v125 + 64);
    v60 = (v57 + 63) >> 6;
    if (v59)
    {
LABEL_40:
      v61 = v55;
LABEL_44:
      v62 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v63 = *(*(v125 + 56) + ((v61 << 9) | (8 * v62)));
      v64 = (v63 + 88);
      v65 = *(v63 + 16) + 1;
      do
      {
        if (!--v65)
        {
          v55 = v61;
          if (!v59)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v66 = *v64;
        v64 += 64;
      }

      while (v66 != 1);

      v67 = sub_1DB09DEA4();
      swift_allocError();
      v69 = v68;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380) + 48);
      *v69 = MEMORY[0x1E69E6158];
      sub_1DB09DE84();
      (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69E6AF8], v67);
      swift_willThrow();
      (*(v115 + 8))(v104, v105);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      v125 = v151;
      v126 = v152;
      v127 = v153;
      v128 = v154;
      sub_1DAF40AEC(&v125, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    }

LABEL_41:
    while (1)
    {
      v61 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v61 >= v60)
      {
        result = sub_1DB09DFD4();
        v71 = 0;
        v72 = 1 << *(v54 + 32);
        v73 = *(v54 + 64);
        v74 = -1;
        if (v72 < 64)
        {
          v74 = ~(-1 << v72);
        }

        v75 = v74 & v73;
        v76 = (v72 + 63) >> 6;
        v110 = result;
        v108 = result + 64;
        if ((v74 & v73) == 0)
        {
LABEL_55:
          v78 = v71;
          while (1)
          {
            v71 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              goto LABEL_68;
            }

            if (v71 >= v76)
            {

              goto LABEL_64;
            }

            v79 = *(v56 + 8 * v71);
            ++v78;
            if (v79)
            {
              v77 = __clz(__rbit64(v79));
              v75 = (v79 - 1) & v79;
              goto LABEL_60;
            }
          }
        }

        while (1)
        {
          v77 = __clz(__rbit64(v75));
          v75 &= v75 - 1;
LABEL_60:
          v80 = v77 | (v71 << 6);
          v81 = (*(v54 + 48) + 16 * v80);
          v82 = *(*(v54 + 56) + 8 * v80);
          v83 = *v81;
          result = v81[1];
          *(v108 + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v80;
          v84 = v110;
          v85 = (v110[6] + 16 * v80);
          *v85 = v83;
          v85[1] = result;
          *(v84[7] + 8 * v80) = v82;
          v86 = v84[2];
          v52 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v52)
          {
            goto LABEL_69;
          }

          v110[2] = v87;

          if (!v75)
          {
            goto LABEL_55;
          }
        }
      }

      v59 = *(v56 + 8 * v61);
      ++v55;
      if (v59)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t AssessmentConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F778, &qword_1DB0B2E80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = v1[1];
  v40 = *v1;
  v41 = v10;
  v11 = v1[3];
  v42 = v1[2];
  v43 = v11;
  v12 = *(v1 + 9);
  v29 = *(v1 + 8);
  v28 = v12;
  v13 = *(v1 + 11);
  v27 = *(v1 + 10);
  v26 = v13;
  v44 = *(v1 + 96);
  v25 = *(v1 + 97);
  v24 = *(v1 + 98);
  v14 = *(v1 + 14);
  v23 = *(v1 + 13);
  v22 = v14;
  v20 = *(v1 + 15);
  v21 = *(v1 + 128);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF40A84(&v40, &v36, &qword_1ECC0E7C0, &qword_1DB0A51B0);
  sub_1DB042D60();
  sub_1DB09E434();
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7C0, &qword_1DB0A51B0);
  sub_1DB0431FC();
  sub_1DB09E194();
  if (v2)
  {
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    sub_1DAF40AEC(&v32, &qword_1ECC0E7C0, &qword_1DB0A51B0);
  }

  else
  {
    v16 = v28;
    v17 = v27;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    sub_1DAF40AEC(&v32, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    v30 = v29;
    v45 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F750, &qword_1DB0B2E48);
    sub_1DB0432D4();
    sub_1DB09E194();
    v30 = v16;
    v45 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F758, &qword_1DB0B2E50);
    sub_1DB0433AC();
    sub_1DB09E194();
    v30 = v17;
    v45 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF673C8(&qword_1EE301938);
    sub_1DB09E194();
    LOBYTE(v30) = 4;
    sub_1DB09E184();
    LOBYTE(v30) = 5;
    sub_1DB09E164();
    LOBYTE(v30) = 6;
    sub_1DB09E164();
    LOBYTE(v30) = v24;
    v45 = 7;
    sub_1DB043594();
    sub_1DB09E194();
    v30 = v23;
    v45 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
    sub_1DB0427B4(&qword_1ECC0F6A0, sub_1DB0426DC);
    sub_1DB09E194();
    v30 = v22;
    v45 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F7C8, &qword_1DB0B2E88);
    sub_1DB0435E8();
    sub_1DB09E194();
    v30 = v20;
    v31 = v21;
    v45 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
    sub_1DB042C90();
    sub_1DB09E194();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t AssessmentConfig.deviceFields()()
{
  v1 = v0[5];
  v12 = v0[4];
  v13 = v1;
  v2 = v0[1];
  v8 = *v0;
  v9 = v2;
  v3 = v0[3];
  v10 = v0[2];
  v11 = v3;
  v17 = *(v0 + 128);
  v5 = *(v0 + 12);
  v4 = *(v0 + 13);
  v16 = v0[7];
  v14 = v5;
  v15 = v4;
  v7 = 1;
  return sub_1DB03F4F0(&v7, v4);
}

uint64_t sub_1DB03F4F0(unsigned __int8 *a1, uint64_t a2)
{
  v62 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2C0, &qword_1DB0A0248);
  v3 = sub_1DB09DFD4();
  v4 = v3;
  v5 = 0;
  v64 = a2;
  v8 = *(a2 + 64);
  v7 = a2 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v13 = v3 + 64;
  v69 = v3 + 64;
  v70 = v3;
  v63 = v12;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v5 << 6);
      v18 = (*(v64 + 48) + 16 * v17);
      v71 = *v18;
      v19 = *(*(v64 + 56) + 8 * v17);
      v20 = *(v19 + 16);
      if (v20)
      {
        v67 = v11;
        v76 = MEMORY[0x1E69E7CC0];
        v65 = v18[1];

        sub_1DAF5F55C(0, v20, 0);
        v21 = v76;
        v22 = 32;
        do
        {
          v73 = *(v19 + v22);
          v74 = *(v19 + v22 + 16);
          *v75 = *(v19 + v22 + 32);
          *&v75[10] = *(v19 + v22 + 42);
          v23 = sub_1DB0273D4();
          v77 = v21;
          v25 = *(v21 + 16);
          v24 = *(v21 + 24);
          if (v25 >= v24 >> 1)
          {
            v26 = v23;
            sub_1DAF5F55C((v24 > 1), v25 + 1, 1);
            v23 = v26;
            v21 = v77;
          }

          *(v21 + 16) = v25 + 1;
          *(v21 + 8 * v25 + 32) = v23;
          v22 += 64;
          --v20;
        }

        while (v20);

        v13 = v69;
        v4 = v70;
        v12 = v63;
        v27 = v65;
        v11 = v67;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v28 = (*(v4 + 48) + 16 * v17);
      *v28 = v71;
      v28[1] = v27;
      *(*(v4 + 56) + 8 * v17) = v21;
      v29 = *(v4 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v4 + 16) = v31;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v5 >= v12)
      {
        break;
      }

      v16 = *(v7 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v32 = sub_1DAF3FC68(MEMORY[0x1E69E7CC0]);
    v33 = 1 << *(v4 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v4 + 64);
    v36 = (v33 + 63) >> 6;
    v37 = 0x73676E69646E6962;
    if (v62)
    {
      v37 = 0x4661746144776172;
    }

    v72 = v37;
    v38 = 0xEE0073646C656946;
    if (v62)
    {
      v38 = 0xED000073646C6569;
    }

    v68 = v38;

    v39 = 0;
    v66 = v36;
    while (v35)
    {
      v43 = v39;
LABEL_34:
      v44 = __clz(__rbit64(v35)) | (v43 << 6);
      v45 = (*(v4 + 48) + 16 * v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = *(*(v4 + 56) + 8 * v44);

      MEMORY[0x1E127FE90](v72, v68);

      MEMORY[0x1E127FE90](95, 0xE100000000000000);
      MEMORY[0x1E127FE90](v46, v47);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = sub_1DAF35210(0, 0xE000000000000000);
      v52 = v32[2];
      v53 = (v51 & 1) == 0;
      v30 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v30)
      {
        goto LABEL_47;
      }

      v55 = v51;
      if (v32[3] >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = v50;
          sub_1DAF3DAA4();
          v50 = v60;
        }
      }

      else
      {
        sub_1DAF3A818(v54, isUniquelyReferenced_nonNull_native);
        v50 = sub_1DAF35210(0, 0xE000000000000000);
        if ((v55 & 1) != (v56 & 1))
        {
          goto LABEL_49;
        }
      }

      v35 &= v35 - 1;
      if (v55)
      {
        v40 = v50;

        v41 = v32[7];
        v42 = *(v41 + 8 * v40);
        *(v41 + 8 * v40) = v48;
      }

      else
      {
        v32[(v50 >> 6) + 8] |= 1 << v50;
        v57 = (v32[6] + 16 * v50);
        *v57 = 0;
        v57[1] = 0xE000000000000000;
        *(v32[7] + 8 * v50) = v48;

        v58 = v32[2];
        v30 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v30)
        {
          goto LABEL_48;
        }

        v32[2] = v59;
      }

      v39 = v43;
      v13 = v69;
      v4 = v70;
      v36 = v66;
    }

    while (1)
    {
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v43 >= v36)
      {

        return v32;
      }

      v35 = *(v13 + 8 * v43);
      ++v39;
      if (v35)
      {
        goto LABEL_34;
      }
    }

LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

uint64_t AssessmentConfig.bindingsFields()()
{
  v1 = v0[5];
  v14 = v0[4];
  v15 = v1;
  v16 = v0[6];
  v2 = v0[1];
  v10 = *v0;
  v11 = v2;
  v3 = v0[3];
  v12 = v0[2];
  v13 = v3;
  v19 = *(v0 + 128);
  v4 = *(v0 + 14);
  v5 = *(v0 + 15);
  v17 = v4;
  v18 = v5;
  v9 = 0;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = sub_1DAF3FC7C(MEMORY[0x1E69E7CC0]);
  }

  v7 = sub_1DB03F4F0(&v9, v6);

  return v7;
}

uint64_t AssessmentServerDestinations.otd.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssessmentServerDestinations.tsidEncryptionCert.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t sub_1DB03FB1C()
{
  v1 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v1 = 6581359;
  }

  v2 = 6583407;
  if (!*v0)
  {
    v2 = 6582895;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DB03FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB049390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB03FBA4(uint64_t a1)
{
  v2 = sub_1DB0436A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03FBE0(uint64_t a1)
{
  v2 = sub_1DB0436A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssessmentServerDestinations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F7D8, &qword_1DB0B2E90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v17[5] = v1[3];
  v17[6] = v11;
  v12 = v1[4];
  v17[3] = v1[5];
  v17[4] = v12;
  v13 = v1[6];
  v17[1] = v1[7];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0436A4();
  sub_1DB09E434();
  v21 = 0;
  v15 = v17[7];
  sub_1DB09E154();
  if (v15)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v20 = 1;
  sub_1DB09E154();
  v19 = 2;
  sub_1DB09E154();
  v18 = 3;
  sub_1DB09E154();
  return (*(v4 + 8))(v8, v3);
}

uint64_t AssessmentServerDestinations.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F7E0, &qword_1DB0B2E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0436A4();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v35[0]) = 0;
  v12 = sub_1DB09E084();
  v30 = v13;
  LOBYTE(v35[0]) = 1;
  v14 = sub_1DB09E084();
  v29 = v15;
  v27 = v14;
  LOBYTE(v35[0]) = 2;
  v26 = sub_1DB09E084();
  v28 = v16;
  v36 = 3;
  v17 = sub_1DB09E084();
  v19 = v18;
  (*(v6 + 8))(v10, v5);
  v20 = v30;
  *&v31 = v12;
  *(&v31 + 1) = v30;
  v22 = v27;
  v21 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *&v34 = v17;
  *(&v34 + 1) = v19;
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  v24 = v34;
  a2[2] = v33;
  a2[3] = v24;
  sub_1DB0436F8(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v35[0] = v12;
  v35[1] = v20;
  v35[2] = v22;
  v35[3] = v29;
  v35[4] = v26;
  v35[5] = v21;
  v35[6] = v17;
  v35[7] = v19;
  return sub_1DB043730(v35);
}

uint64_t sub_1DB040134(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0] + 32;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = __clz(__rbit64(v5)) | (v12 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      result = sub_1DAF3523C(*(a1 + 56) + 40 * v13, v34);
      *&v33 = v15;
      *(&v33 + 1) = v16;
      v39 = v35;
      v37 = v34[0];
      v38 = v34[1];
      v36 = v33;
      if (v8)
      {

        v17 = v10;
        v18 = __OFSUB__(v8--, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = v10[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FAF8, &unk_1DB0B68D0);
        v17 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v17) - 32) / 56;
        v17[2] = v21;
        v17[3] = 2 * v22;
        v23 = v17 + 4;
        v24 = v10[3] >> 1;
        v11 = &v17[7 * v24 + 4];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (v10[2])
        {
          if (v17 != v10 || v23 >= &v10[7 * v24 + 4])
          {
            memmove(v23, v10 + 4, 56 * v24);
          }

          v10[2] = 0;
        }

        else
        {
        }

        v18 = __OFSUB__(v25, 1);
        v8 = v25 - 1;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      v5 &= v5 - 1;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      *(v11 + 48) = v39;
      *(v11 + 16) = v28;
      *(v11 + 32) = v29;
      *v11 = v27;
      v11 += 56;
      v10 = v17;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v30 = v10[3];
  if (v30 < 2)
  {
    return v10;
  }

  v31 = v30 >> 1;
  v18 = __OFSUB__(v31, v8);
  v32 = v31 - v8;
  if (!v18)
  {
    v10[2] = v32;
    return v10;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DB0403A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E768, &qword_1DB0A4690);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

_BYTE *sub_1DB040508@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DAFB75C0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DB0415A8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DB041624(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unsigned __int8 *sub_1DB04059C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DB09D864();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB040B28();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB09DEC4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DB040B28()
{
  v0 = sub_1DB09D874();
  v4 = sub_1DB040BA8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1DB040BA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DB09D784();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DB09DC84();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DB07F6C8(v9, 0);
  v12 = sub_1DB040D00(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DB09D784();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DB09DEC4();
LABEL_4:

  return sub_1DB09D784();
}

unint64_t sub_1DB040D00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1DAFED704(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DB09D814();
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
          result = sub_1DB09DEC4();
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

    result = sub_1DAFED704(v12, a6, a7);
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

    result = sub_1DB09D7F4();
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

uint64_t sub_1DB040F20(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1DB09D5F4();
      sub_1DB049B94(&qword_1ECC0FAB8, 255, MEMORY[0x1E6966620]);
      result = sub_1DB09D534();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1DB041108(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB041108(uint64_t a1, uint64_t a2)
{
  result = sub_1DB09CD44();
  if (!result || (result = sub_1DB09CD74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DB09CD64();
      sub_1DB09D5F4();
      sub_1DB049B94(&qword_1ECC0FAB8, 255, MEMORY[0x1E6966620]);
      return sub_1DB09D534();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17CoreODIEssentials25AssessmentConfigFieldNameO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      if (v3 == v6 && v2 == v5)
      {
        v10 = 1;
        sub_1DB042B1C(*a1, v2, 1);
        sub_1DB042B1C(v3, v2, 1);
        sub_1DB041AD8(v3, v2, 1);
        v11 = v3;
        v12 = v2;
      }

      else
      {
        v9 = *a1;
        v10 = sub_1DB09E254();
        sub_1DB042B1C(v6, v5, 1);
        sub_1DB042B1C(v3, v2, 1);
        sub_1DB041AD8(v3, v2, 1);
        v11 = v6;
        v12 = v5;
      }

      sub_1DB041AD8(v11, v12, 1);
      return v10 & 1;
    }

    v17 = *(a1 + 8);

LABEL_13:
    sub_1DB042B1C(v6, v5, v7);
    sub_1DB041AD8(v3, v2, v4);
    sub_1DB041AD8(v6, v5, v7);
    v10 = 0;
    return v10 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v13 = ArmandDeviceDataFieldName.rawValue.getter();
  v15 = v14;
  if (v13 == ArmandDeviceDataFieldName.rawValue.getter() && v15 == v16)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DB09E254();
  }

  sub_1DB041AD8(v3, v2, 0);
  sub_1DB041AD8(v6, v5, 0);

  return v10 & 1;
}

uint64_t _s17CoreODIEssentials15DeviceDataFieldV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = a1[5];
  v23 = a1[6];
  v25 = *(a1 + 33);
  v26 = *(a1 + 56);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  v24 = *(a2 + 33);
  v12 = a2[5];
  v22 = a2[6];
  v27 = *(a2 + 56);
  v28 = *(a1 + 57);
  v13 = *(a2 + 57);
  v32 = a1[2];
  v33 = v4;
  v34 = v5;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  sub_1DB042B1C(v32, v4, v5);
  sub_1DB042B1C(v9, v10, v11);
  LOBYTE(v9) = _s17CoreODIEssentials25AssessmentConfigFieldNameO2eeoiySbAC_ACtFZ_0(&v32, &v29);
  sub_1DB041AD8(v29, v30, v31);
  sub_1DB041AD8(v32, v33, v34);
  if (v9)
  {
    if (v2 == v7 && v3 == v8)
    {
      v14 = 0;
    }

    else
    {
      v16 = sub_1DB09E254();
      v14 = 0;
      if ((v16 & 1) == 0)
      {
        return v14 & 1;
      }
    }

    if (v6 == v12 && ((v28 ^ v13) & 1) == 0)
    {
      LOBYTE(v32) = v25;
      LOBYTE(v29) = v24;
      v17 = ArmandDataSource.rawValue.getter();
      v19 = v18;
      if (v17 == ArmandDataSource.rawValue.getter() && v19 == v20)
      {

        v14 = v27;
        if ((v26 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = sub_1DB09E254();

        if (!(v26 & 1 | ((v21 & 1) == 0)))
        {
LABEL_16:
          v14 = (v23 == v22) & ~v27;
          return v14 & 1;
        }

        v14 = v21 & v27;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DB0415A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DB09CD84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DB09CD34();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DB09CFB4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DB041624(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DB09CD84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DB09CD34();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DB0416A8(unsigned __int8 a1, uint64_t a2)
{
  v3 = 0xEA00000000006465;
  v4 = 0xEA00000000007265;
  v5 = a1;
  v6 = 0x696669746E656469;
  v7 = 0x797469726F697270;
  v8 = 0x4D74756F656D6974;
  if (a1 == 4)
  {
    v3 = 0xEC000000696C6C69;
  }

  else
  {
    v8 = 0x67656C6976697270;
  }

  if (a1 == 3)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v7 = v8;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6D614E646C656966;
  if (a1 != 1)
  {
    v10 = 0x656372756F73;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v6 = v10;
    v4 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v3;
  }

  if (*(a2 + 16))
  {
    v14 = sub_1DAF35210(v11, v12);
    v16 = v15;

    if (v16)
    {
      v17 = (*(a2 + 56) + 16 * v14);
      result = *v17;
      v19 = v17[1];
      return result;
    }
  }

  else
  {
  }

  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000003CLL, 0x80000001DB0CAD20);
  LOBYTE(v33[0]) = a1;
  sub_1DB045B78();
  v20 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v20);

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v21 = MEMORY[0x1E69E7CC0];
  v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v23 = *(v22 + 16);

  if (v23)
  {
    v24 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v25)
    {
      sub_1DAF409DC(*(v22 + 56) + 32 * v24, &v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v21 = *&v33[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1DAF72EC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v27 = *(v21 + 2);
  v26 = *(v21 + 3);
  if (v27 >= v26 >> 1)
  {
    v21 = sub_1DAF72EC0((v26 > 1), v27 + 1, 1, v21);
  }

  *(v21 + 2) = v27 + 1;
  v28 = &v21[56 * v27];
  *(v28 + 4) = 0;
  *(v28 + 5) = 0xE000000000000000;
  *(v28 + 6) = 0xD000000000000023;
  *(v28 + 7) = 0x80000001DB0CA830;
  *(v28 + 8) = 0xD000000000000017;
  *(v28 + 9) = 0x80000001DB0CAD60;
  *(v28 + 10) = 1005;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v34 = v21;
  sub_1DAF40D20(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v22;
  sub_1DAF3B11C(v33, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v31 = sub_1DB09D6B4();
  v32 = sub_1DB09D604();
  [v30 initWithDomain:v31 code:-3183 userInfo:v32];

  return swift_willThrow();
}

uint64_t sub_1DB041AD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DB041AE8()
{
  result = qword_1EE302D78;
  if (!qword_1EE302D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D78);
  }

  return result;
}

unint64_t sub_1DB041B3C()
{
  result = qword_1EE302190;
  if (!qword_1EE302190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302190);
  }

  return result;
}

unint64_t sub_1DB041B90()
{
  result = qword_1ECC0F578;
  if (!qword_1ECC0F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F578);
  }

  return result;
}

unint64_t sub_1DB041C4C()
{
  result = qword_1ECC0F590;
  if (!qword_1ECC0F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F590);
  }

  return result;
}

unint64_t sub_1DB041CA0()
{
  result = qword_1ECC0F5A0;
  if (!qword_1ECC0F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5A0);
  }

  return result;
}

unint64_t sub_1DB041CF4()
{
  result = qword_1ECC0F5B8;
  if (!qword_1ECC0F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5B8);
  }

  return result;
}

unint64_t sub_1DB041DB0()
{
  result = qword_1EE301E00;
  if (!qword_1EE301E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301E00);
  }

  return result;
}

uint64_t sub_1DB041E04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1DAF753BC();
  result = sub_1DAF72C08(&v15);
  v8 = v15;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (!*(v6 + 16) || (v9 = sub_1DAF352E8(13), (v10 & 1) == 0))
  {

LABEL_8:
    v11 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  sub_1DAF409DC(*(v6 + 56) + 32 * v9, v14);

  result = swift_dynamicCast();
  v11 = v13;
  if (!result)
  {
    v11 = 0;
  }

  v12 = result ^ 1;
LABEL_9:
  *a3 = qword_1DB0B7FA0[v8 ^ 0x80];
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_1DB041EF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, a2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v18 - v11;
  if (v10 >> 60 == 15)
  {
    v13 = sub_1DB09D1D4();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  else
  {
    Data.uuid.getter(a1, v10, &v18 - v11);
  }

  sub_1DAF40A84(v12, v8, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v14 = sub_1DB09D1D4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1DAF40AEC(v8, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v16 = 0x676E697373696D2DLL;
  }

  else
  {
    sub_1DB09D174();
    (*(v15 + 8))(v8, v14);
    v16 = sub_1DB09D754();
  }

  sub_1DAF40AEC(v12, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  return v16;
}

double sub_1DB04210C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1DB042128()
{
  result = qword_1ECC0F5E8;
  if (!qword_1ECC0F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5E8);
  }

  return result;
}

unint64_t sub_1DB04217C()
{
  result = qword_1ECC0F5F8;
  if (!qword_1ECC0F5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
    sub_1DAFEA408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F5F8);
  }

  return result;
}

unint64_t sub_1DB042200()
{
  result = qword_1ECC0F608;
  if (!qword_1ECC0F608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
    sub_1DAFEA608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F608);
  }

  return result;
}

uint64_t sub_1DB042284(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1DAF40674(result, a2);
  }

  return result;
}

unint64_t sub_1DB0422C4()
{
  result = qword_1ECC0F618;
  if (!qword_1ECC0F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F618);
  }

  return result;
}

unint64_t sub_1DB042318()
{
  result = qword_1ECC0F620;
  if (!qword_1ECC0F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F620);
  }

  return result;
}

uint64_t sub_1DB04236C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1DAF40780(result, a2);
  }

  return result;
}

unint64_t sub_1DB042414()
{
  result = qword_1ECC0F648;
  if (!qword_1ECC0F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F648);
  }

  return result;
}

uint64_t sub_1DB042468(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F628, &qword_1DB0B2D98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB0424E0()
{
  result = qword_1ECC0F660;
  if (!qword_1ECC0F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F660);
  }

  return result;
}

unint64_t sub_1DB042534()
{
  result = qword_1ECC0F668;
  if (!qword_1ECC0F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F668);
  }

  return result;
}

unint64_t sub_1DB0425E4()
{
  result = qword_1ECC0F678;
  if (!qword_1ECC0F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F678);
  }

  return result;
}

uint64_t sub_1DB042638(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DB042688()
{
  result = qword_1ECC0F690;
  if (!qword_1ECC0F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F690);
  }

  return result;
}

unint64_t sub_1DB0426DC()
{
  result = qword_1ECC0F6A8;
  if (!qword_1ECC0F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F6B0, &qword_1DB0B2DE0);
    sub_1DB042760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F6A8);
  }

  return result;
}

unint64_t sub_1DB042760()
{
  result = qword_1ECC0F6B8;
  if (!qword_1ECC0F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F6B8);
  }

  return result;
}

uint64_t sub_1DB0427B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB042838()
{
  result = qword_1EE300A28;
  if (!qword_1EE300A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F6B0, &qword_1DB0B2DE0);
    sub_1DB0428BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300A28);
  }

  return result;
}

unint64_t sub_1DB0428BC()
{
  result = qword_1EE303240;
  if (!qword_1EE303240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303240);
  }

  return result;
}

unint64_t sub_1DB042910()
{
  result = qword_1EE302DC0;
  if (!qword_1EE302DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DC0);
  }

  return result;
}

unint64_t sub_1DB0429CC()
{
  result = qword_1ECC0F708;
  if (!qword_1ECC0F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F708);
  }

  return result;
}

unint64_t sub_1DB042A20()
{
  result = qword_1ECC0F710;
  if (!qword_1ECC0F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F710);
  }

  return result;
}

unint64_t sub_1DB042A74()
{
  result = qword_1ECC0F718;
  if (!qword_1ECC0F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F718);
  }

  return result;
}

unint64_t sub_1DB042AC8()
{
  result = qword_1EE301ED0;
  if (!qword_1EE301ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301ED0);
  }

  return result;
}

uint64_t sub_1DB042B1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DB042B2C()
{
  result = qword_1EE303258[0];
  if (!qword_1EE303258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE303258);
  }

  return result;
}

unint64_t sub_1DB042B80()
{
  result = qword_1EE302DF0;
  if (!qword_1EE302DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DF0);
  }

  return result;
}

unint64_t sub_1DB042C3C()
{
  result = qword_1ECC0F730;
  if (!qword_1ECC0F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F730);
  }

  return result;
}

unint64_t sub_1DB042C90()
{
  result = qword_1ECC0F738;
  if (!qword_1ECC0F738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E430, &unk_1DB0A0550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F738);
  }

  return result;
}

unint64_t sub_1DB042D0C()
{
  result = qword_1ECC0F740;
  if (!qword_1ECC0F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F740);
  }

  return result;
}

unint64_t sub_1DB042D60()
{
  result = qword_1EE302DE8;
  if (!qword_1EE302DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DE8);
  }

  return result;
}

unint64_t sub_1DB042DB4()
{
  result = qword_1EE301948;
  if (!qword_1EE301948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F750, &qword_1DB0B2E48);
    sub_1DB042E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301948);
  }

  return result;
}

unint64_t sub_1DB042E38()
{
  result = qword_1EE302DC8;
  if (!qword_1EE302DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DC8);
  }

  return result;
}

unint64_t sub_1DB042E8C()
{
  result = qword_1EE301960;
  if (!qword_1EE301960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F758, &qword_1DB0B2E50);
    sub_1DB042F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301960);
  }

  return result;
}

unint64_t sub_1DB042F18()
{
  result = qword_1EE301920;
  if (!qword_1EE301920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F760, &qword_1DB0B2E58);
    sub_1DB042F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301920);
  }

  return result;
}

unint64_t sub_1DB042F9C()
{
  result = qword_1EE301950;
  if (!qword_1EE301950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F768, &unk_1DB0B2E60);
    sub_1DB043020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301950);
  }

  return result;
}

unint64_t sub_1DB043020()
{
  result = qword_1EE302DD0;
  if (!qword_1EE302DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DD0);
  }

  return result;
}

unint64_t sub_1DB043074()
{
  result = qword_1EE301EB0;
  if (!qword_1EE301EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EB0);
  }

  return result;
}

unint64_t sub_1DB0430C8()
{
  result = qword_1EE301D18[0];
  if (!qword_1EE301D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE301D18);
  }

  return result;
}

unint64_t sub_1DB04311C()
{
  result = qword_1EE301968;
  if (!qword_1EE301968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F770, &unk_1DB0B2E70);
    sub_1DB0431A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301968);
  }

  return result;
}

unint64_t sub_1DB0431A8()
{
  result = qword_1EE302DA0;
  if (!qword_1EE302DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DA0);
  }

  return result;
}

unint64_t sub_1DB0431FC()
{
  result = qword_1ECC0F780;
  if (!qword_1ECC0F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E7C0, &qword_1DB0A51B0);
    sub_1DB043280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F780);
  }

  return result;
}

unint64_t sub_1DB043280()
{
  result = qword_1ECC0F788;
  if (!qword_1ECC0F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F788);
  }

  return result;
}

unint64_t sub_1DB0432D4()
{
  result = qword_1ECC0F790;
  if (!qword_1ECC0F790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F750, &qword_1DB0B2E48);
    sub_1DB043358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F790);
  }

  return result;
}

unint64_t sub_1DB043358()
{
  result = qword_1ECC0F798;
  if (!qword_1ECC0F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F798);
  }

  return result;
}

unint64_t sub_1DB0433AC()
{
  result = qword_1ECC0F7A0;
  if (!qword_1ECC0F7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F758, &qword_1DB0B2E50);
    sub_1DB043438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7A0);
  }

  return result;
}

unint64_t sub_1DB043438()
{
  result = qword_1ECC0F7A8;
  if (!qword_1ECC0F7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F760, &qword_1DB0B2E58);
    sub_1DB0434BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7A8);
  }

  return result;
}

unint64_t sub_1DB0434BC()
{
  result = qword_1ECC0F7B0;
  if (!qword_1ECC0F7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F768, &unk_1DB0B2E60);
    sub_1DB043540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7B0);
  }

  return result;
}

unint64_t sub_1DB043540()
{
  result = qword_1ECC0F7B8;
  if (!qword_1ECC0F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7B8);
  }

  return result;
}

unint64_t sub_1DB043594()
{
  result = qword_1ECC0F7C0;
  if (!qword_1ECC0F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7C0);
  }

  return result;
}

unint64_t sub_1DB0435E8()
{
  result = qword_1ECC0F7D0;
  if (!qword_1ECC0F7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F7C8, &qword_1DB0B2E88);
    sub_1DB0427B4(&qword_1ECC0F6A0, sub_1DB0426DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7D0);
  }

  return result;
}

unint64_t sub_1DB0436A4()
{
  result = qword_1EE301EC8;
  if (!qword_1EE301EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EC8);
  }

  return result;
}

unint64_t sub_1DB04378C()
{
  result = qword_1ECC0F7E8;
  if (!qword_1ECC0F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7E8);
  }

  return result;
}

unint64_t sub_1DB0437E0()
{
  result = qword_1ECC0F7F0;
  if (!qword_1ECC0F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7F0);
  }

  return result;
}

unint64_t sub_1DB043860()
{
  result = qword_1EE300BB8[0];
  if (!qword_1EE300BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE300BB8);
  }

  return result;
}

unint64_t sub_1DB0438E0()
{
  result = qword_1ECC0F7F8;
  if (!qword_1ECC0F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F7F8);
  }

  return result;
}

unint64_t sub_1DB043938()
{
  result = qword_1ECC0F800;
  if (!qword_1ECC0F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F800);
  }

  return result;
}

unint64_t sub_1DB043990()
{
  result = qword_1ECC0F808;
  if (!qword_1ECC0F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F808);
  }

  return result;
}

unint64_t sub_1DB0439E8()
{
  result = qword_1ECC0F810;
  if (!qword_1ECC0F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F810);
  }

  return result;
}

unint64_t sub_1DB043A40()
{
  result = qword_1ECC0F818;
  if (!qword_1ECC0F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F818);
  }

  return result;
}

unint64_t sub_1DB043A98()
{
  result = qword_1ECC0F820;
  if (!qword_1ECC0F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F820);
  }

  return result;
}

unint64_t sub_1DB043AF0()
{
  result = qword_1ECC0F828;
  if (!qword_1ECC0F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F828);
  }

  return result;
}

unint64_t sub_1DB043B48()
{
  result = qword_1ECC0F830;
  if (!qword_1ECC0F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F830);
  }

  return result;
}

unint64_t sub_1DB043BC8()
{
  result = qword_1ECC0F838;
  if (!qword_1ECC0F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F838);
  }

  return result;
}

uint64_t sub_1DB043C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB043C84()
{
  result = qword_1EE3014C0;
  if (!qword_1EE3014C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3014C0);
  }

  return result;
}

unint64_t sub_1DB043CDC()
{
  result = qword_1ECC0F840;
  if (!qword_1ECC0F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F840);
  }

  return result;
}

unint64_t sub_1DB043D34()
{
  result = qword_1ECC0F848;
  if (!qword_1ECC0F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F848);
  }

  return result;
}

unint64_t sub_1DB043D8C()
{
  result = qword_1ECC0F850;
  if (!qword_1ECC0F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F850);
  }

  return result;
}

unint64_t sub_1DB043DE4()
{
  result = qword_1ECC0F858;
  if (!qword_1ECC0F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F858);
  }

  return result;
}

unint64_t sub_1DB043E3C()
{
  result = qword_1ECC0F860;
  if (!qword_1ECC0F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F860);
  }

  return result;
}

unint64_t sub_1DB043E94()
{
  result = qword_1ECC0F868;
  if (!qword_1ECC0F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F868);
  }

  return result;
}

unint64_t sub_1DB043EEC()
{
  result = qword_1ECC0F870;
  if (!qword_1ECC0F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F870);
  }

  return result;
}

unint64_t sub_1DB043F44()
{
  result = qword_1ECC0F878;
  if (!qword_1ECC0F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F878);
  }

  return result;
}

unint64_t sub_1DB043F9C()
{
  result = qword_1ECC0F880;
  if (!qword_1ECC0F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F880);
  }

  return result;
}

unint64_t sub_1DB043FF4()
{
  result = qword_1EE3014F0;
  if (!qword_1EE3014F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3014F0);
  }

  return result;
}

unint64_t sub_1DB04404C()
{
  result = qword_1ECC0F888;
  if (!qword_1ECC0F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F888);
  }

  return result;
}

unint64_t sub_1DB0440A4()
{
  result = qword_1ECC0F890;
  if (!qword_1ECC0F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F890);
  }

  return result;
}

uint64_t sub_1DB044274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DB0442BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB044320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB044368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials16ProfileSetObjectV0c3BagD0V0cF0VSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB0443EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1DB044434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DB0444E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB044528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DB0445A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB0445EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t dispatch thunk of EncapsulatingProfile.resolvedConfig()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DAF62CC4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of EncapsulatingProfile.encapsulatingConfig()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DAF63DEC;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DB044918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DB044960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB0449B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB0449FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArmandDeviceDataFieldName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArmandDeviceDataFieldName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DB044C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1DB044C9C(uint64_t result, int a2, int a3)
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
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DB044D40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB044D88(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB044E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB044E64(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AssessmentConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssessmentConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB045134(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 329))
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

uint64_t sub_1DB045190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 329) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 329) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1DB045290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_1DB0452D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB045374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1DB0453D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1DB045440()
{
  result = qword_1ECC0F898;
  if (!qword_1ECC0F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F898);
  }

  return result;
}

unint64_t sub_1DB045498()
{
  result = qword_1ECC0F8A0;
  if (!qword_1ECC0F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8A0);
  }

  return result;
}

unint64_t sub_1DB0454F0()
{
  result = qword_1ECC0F8A8;
  if (!qword_1ECC0F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8A8);
  }

  return result;
}

unint64_t sub_1DB045548()
{
  result = qword_1ECC0F8B0;
  if (!qword_1ECC0F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8B0);
  }

  return result;
}

unint64_t sub_1DB0455A0()
{
  result = qword_1ECC0F8B8;
  if (!qword_1ECC0F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8B8);
  }

  return result;
}

unint64_t sub_1DB0455F8()
{
  result = qword_1ECC0F8C0;
  if (!qword_1ECC0F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8C0);
  }

  return result;
}

unint64_t sub_1DB045650()
{
  result = qword_1ECC0F8C8;
  if (!qword_1ECC0F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8C8);
  }

  return result;
}

unint64_t sub_1DB0456A8()
{
  result = qword_1ECC0F8D0;
  if (!qword_1ECC0F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8D0);
  }

  return result;
}

unint64_t sub_1DB045700()
{
  result = qword_1ECC0F8D8;
  if (!qword_1ECC0F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8D8);
  }

  return result;
}

unint64_t sub_1DB045758()
{
  result = qword_1ECC0F8E0;
  if (!qword_1ECC0F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8E0);
  }

  return result;
}

unint64_t sub_1DB0457B0()
{
  result = qword_1ECC0F8E8;
  if (!qword_1ECC0F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8E8);
  }

  return result;
}

unint64_t sub_1DB045808()
{
  result = qword_1ECC0F8F0;
  if (!qword_1ECC0F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8F0);
  }

  return result;
}

unint64_t sub_1DB045860()
{
  result = qword_1ECC0F8F8;
  if (!qword_1ECC0F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F8F8);
  }

  return result;
}

unint64_t sub_1DB0458B8()
{
  result = qword_1ECC0F900;
  if (!qword_1ECC0F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F900);
  }

  return result;
}

unint64_t sub_1DB045910()
{
  result = qword_1ECC0F908;
  if (!qword_1ECC0F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F908);
  }

  return result;
}

unint64_t sub_1DB045968()
{
  result = qword_1ECC0F910;
  if (!qword_1ECC0F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F910);
  }

  return result;
}

unint64_t sub_1DB0459C0()
{
  result = qword_1EE301EB8;
  if (!qword_1EE301EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EB8);
  }

  return result;
}

unint64_t sub_1DB045A18()
{
  result = qword_1EE301EC0;
  if (!qword_1EE301EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EC0);
  }

  return result;
}

unint64_t sub_1DB045A70()
{
  result = qword_1EE302DD8;
  if (!qword_1EE302DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DD8);
  }

  return result;
}

unint64_t sub_1DB045AC8()
{
  result = qword_1EE302DE0;
  if (!qword_1EE302DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DE0);
  }

  return result;
}

unint64_t sub_1DB045B20()
{
  result = qword_1EE303248;
  if (!qword_1EE303248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303248);
  }

  return result;
}

unint64_t sub_1DB045B78()
{
  result = qword_1EE303250;
  if (!qword_1EE303250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303250);
  }

  return result;
}

unint64_t sub_1DB045BD0()
{
  result = qword_1ECC0F918;
  if (!qword_1ECC0F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F918);
  }

  return result;
}

unint64_t sub_1DB045C28()
{
  result = qword_1ECC0F920;
  if (!qword_1ECC0F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F920);
  }

  return result;
}

unint64_t sub_1DB045C80()
{
  result = qword_1ECC0F928;
  if (!qword_1ECC0F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F928);
  }

  return result;
}

unint64_t sub_1DB045CD8()
{
  result = qword_1ECC0F930;
  if (!qword_1ECC0F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F930);
  }

  return result;
}

unint64_t sub_1DB045D30()
{
  result = qword_1ECC0F938;
  if (!qword_1ECC0F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F938);
  }

  return result;
}

unint64_t sub_1DB045D88()
{
  result = qword_1ECC0F940;
  if (!qword_1ECC0F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F940);
  }

  return result;
}

unint64_t sub_1DB045DE0()
{
  result = qword_1EE302DB0;
  if (!qword_1EE302DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DB0);
  }

  return result;
}

unint64_t sub_1DB045E38()
{
  result = qword_1EE302DB8;
  if (!qword_1EE302DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DB8);
  }

  return result;
}

unint64_t sub_1DB045E90()
{
  result = qword_1ECC0F948;
  if (!qword_1ECC0F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F948);
  }

  return result;
}

unint64_t sub_1DB045EE8()
{
  result = qword_1ECC0F950;
  if (!qword_1ECC0F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F950);
  }

  return result;
}

unint64_t sub_1DB045F40()
{
  result = qword_1ECC0F958;
  if (!qword_1ECC0F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F958);
  }

  return result;
}

unint64_t sub_1DB045F98()
{
  result = qword_1ECC0F960;
  if (!qword_1ECC0F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F960);
  }

  return result;
}

unint64_t sub_1DB045FF0()
{
  result = qword_1EE301DF0;
  if (!qword_1EE301DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301DF0);
  }

  return result;
}

unint64_t sub_1DB046048()
{
  result = qword_1EE301DF8;
  if (!qword_1EE301DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301DF8);
  }

  return result;
}

unint64_t sub_1DB0460A0()
{
  result = qword_1ECC0F968;
  if (!qword_1ECC0F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F968);
  }

  return result;
}

unint64_t sub_1DB0460F8()
{
  result = qword_1ECC0F970;
  if (!qword_1ECC0F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F970);
  }

  return result;
}

unint64_t sub_1DB046150()
{
  result = qword_1ECC0F978;
  if (!qword_1ECC0F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F978);
  }

  return result;
}

unint64_t sub_1DB0461A8()
{
  result = qword_1ECC0F980;
  if (!qword_1ECC0F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F980);
  }

  return result;
}

unint64_t sub_1DB046200()
{
  result = qword_1ECC0F988;
  if (!qword_1ECC0F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F988);
  }

  return result;
}

unint64_t sub_1DB046258()
{
  result = qword_1ECC0F990;
  if (!qword_1ECC0F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F990);
  }

  return result;
}

unint64_t sub_1DB0462B0()
{
  result = qword_1ECC0F998;
  if (!qword_1ECC0F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F998);
  }

  return result;
}

unint64_t sub_1DB046308()
{
  result = qword_1ECC0F9A0;
  if (!qword_1ECC0F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9A0);
  }

  return result;
}

unint64_t sub_1DB046360()
{
  result = qword_1EE302180;
  if (!qword_1EE302180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302180);
  }

  return result;
}

unint64_t sub_1DB0463B8()
{
  result = qword_1EE302188;
  if (!qword_1EE302188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302188);
  }

  return result;
}

unint64_t sub_1DB046410()
{
  result = qword_1EE302D68;
  if (!qword_1EE302D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D68);
  }

  return result;
}

unint64_t sub_1DB046468()
{
  result = qword_1EE302D70;
  if (!qword_1EE302D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D70);
  }

  return result;
}

uint64_t sub_1DB0464BC(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      sub_1DAF40674(v5, *v3);
      sub_1DB081398(v7, v5, v4);
      sub_1DAF40780(v7[0], v7[1]);
      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1DB046540()
{
  v0 = sub_1DB09E004();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB04658C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEA00000000006449 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7574617453627573 && a2 == 0xED000065646F4373 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D737574617473 && a2 == 0xED00006567617373)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB0467B4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9F0, &qword_1DB0B6848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04966C();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v46[0]) = 0;
  v12 = sub_1DB09E044();
  v14 = v13;
  LOBYTE(v46[0]) = 1;
  v37 = sub_1DB09E084();
  v39 = v15;
  LOBYTE(v46[0]) = 2;
  v16 = sub_1DB09E084();
  v38 = v17;
  v34 = v16;
  LOBYTE(v46[0]) = 3;
  v33 = sub_1DB09E084();
  v36 = v18;
  LOBYTE(v46[0]) = 4;
  v32 = sub_1DB09E044();
  v35 = v19;
  v47 = 5;
  v20 = sub_1DB09E044();
  v21 = *(v6 + 8);
  v22 = v20;
  v31 = v23;
  v21(v10, v5);
  *&v40 = v12;
  *(&v40 + 1) = v14;
  *&v41 = v37;
  *(&v41 + 1) = v39;
  *&v42 = v34;
  *(&v42 + 1) = v38;
  *&v43 = v33;
  v24 = v36;
  *(&v43 + 1) = v36;
  *&v44 = v32;
  v25 = v35;
  *(&v44 + 1) = v35;
  *&v45 = v22;
  v26 = v31;
  *(&v45 + 1) = v31;
  sub_1DB0496C0(&v40, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v46[0] = v12;
  v46[1] = v14;
  v46[2] = v37;
  v46[3] = v39;
  v46[4] = v34;
  v46[5] = v38;
  v46[6] = v33;
  v46[7] = v24;
  v46[8] = v32;
  v46[9] = v25;
  v46[10] = v22;
  v46[11] = v26;
  result = sub_1DB0495E8(v46);
  v28 = v43;
  a2[2] = v42;
  a2[3] = v28;
  v29 = v45;
  a2[4] = v44;
  a2[5] = v29;
  v30 = v41;
  *a2 = v40;
  a2[1] = v30;
  return result;
}

uint64_t sub_1DB046C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69726F68747561 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB046D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DB0CABD0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42656C69666F7270 && a2 == 0xEF64497465536761 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0CABF0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C1F00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB0CAC10 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DB046F3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0CAD80 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65674172657375 && a2 == 0xE900000000000074 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C14B0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DB0CADA0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000002DLL && 0x80000001DB0CADD0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x42676E697373696DLL && a2 == 0xEF73676E69646E69 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0CAE00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0CAE20 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6567416568636163 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1DB04731C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C79615069646FLL && a2 == 0xEA00000000006461;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656C69666F7270 && a2 == 0xEC00000064497465;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42656C69666F7270 && a2 == 0xEF64497465536761 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0CABF0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C1F00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E676162 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047660(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DB0CAF30 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461645F617564 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5F656C69666F7270 && a2 == 0xEA00000000006469 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CAF50 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DB0CAF70 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5F656C69666F7270 && a2 == 0xEE0064695F746573 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0CAF90 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C13C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DB0C1420 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000033 && 0x80000001DB0C13E0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5F64616F6C796170 && a2 == 0xEE006572756E6574)
  {

    return 13;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1DB047AC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7272655F766469 && a2 == 0xE900000000000072;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7272655F6E646FLL && a2 == 0xE900000000000072 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA40, &qword_1DB0B6888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049990();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v12 = sub_1DB09E0B4();
  v24 = 1;
  v13 = sub_1DB09E064();
  v22 = v14;
  v21 = v13;
  v23 = 2;
  v15 = sub_1DB09E044();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = v21;
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_1DB047DE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632436 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5F6E6F6973736573 && a2 == 0xEA00000000006469 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6F6E5F7374 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB047F04(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC68, &qword_1DB0B7E68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04B968();
  sub_1DB09E414();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_1DB09E084();
    v11[14] = 1;
    sub_1DB09E0B4();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1DB0480DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461645F617564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079745F6B736174 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C13C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB048250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F635F64697374 && a2 == 0xEE0072656E696174;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364656573 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C1480 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEB0000000064695FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461645F617564 && a2 == 0xEC0000006775615FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C13C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DB0CAE40 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001DB0CAE70 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEF676E696D69745FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xED0000657079745FLL || (sub_1DB09E254() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0CAEB0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CAED0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB0CAEF0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CAF10 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1DB04875C()
{
  v0 = sub_1DB09E004();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB0487A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DB0CAC30 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0CAC50 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C6C694D616C73 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DB0488D0()
{
  v0 = sub_1DB09E004();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}