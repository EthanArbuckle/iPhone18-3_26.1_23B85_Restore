double static LACUIAuthCountdownConfiguration.gracePeriod(customCancelTitle:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v41 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x80000002560BF0F0, 0x74656863746152, 0xE700000000000000);
  v40 = v8;
  v39 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BF110, 0x74656863746152, 0xE700000000000000);
  v38 = v9;
  v10 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2560BAC90;
  v13 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x435F4E4F54545542, 0xEF45554E49544E4FLL, 0x75676F6C61746143, 0xE900000000000065);
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 255;
  *(v12 + 32) = 0xD000000000000015;
  *(v12 + 40) = 0x80000002560BDBA0;
  *(v12 + 48) = v13;
  *(v12 + 56) = v14;
  v15 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 511;
  *(v12 + 104) = 0x726F4D6E7261656CLL;
  *(v12 + 112) = 0xE900000000000065;
  *(v12 + 120) = v15;
  v16 = v37;
  *(v12 + 128) = v17;
  if (v16)
  {
    v36 = 0xEC0000006C65636ELL;
    v34 = 0x61436D6F74737563;
    v35 = v16;
  }

  else
  {
    v42 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x435F4E4F54545542, 0xED00004C45434E41, 0x75676F6C61746143, 0xE900000000000065);
    v35 = v18;
    v36 = 0xE600000000000000;
    v34 = 0x6C65636E6163;
  }

  v19 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v20 = v19[7];
  v11((a3 + v20), 1, 1, v10);
  v21 = v19[8];
  v22 = a3 + v19[10];
  *(v22 + 64) = 0;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = a3 + v19[11];
  *(v23 + 64) = 0;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(a3 + v19[12]) = 1;
  *(a3 + v19[13]) = 0;
  *a3 = xmmword_2560BACB0;
  *(a3 + 16) = 1;
  v24 = v40;
  *(a3 + 24) = v41;
  *(a3 + 32) = v24;
  v25 = v38;
  *(a3 + 40) = v39;
  *(a3 + 48) = v25;

  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v7, a3 + v20);
  *(a3 + v21) = MEMORY[0x277D84F90];
  *(a3 + v19[9]) = v12;
  v44 = *(v22 + 64);
  v26 = *(v22 + 48);
  v43[2] = *(v22 + 32);
  v43[3] = v26;
  v27 = *(v22 + 16);
  v43[0] = *v22;
  v43[1] = v27;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v43, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v28 = v36;
  *v22 = v34;
  *(v22 + 8) = v28;
  v29 = v35;
  *(v22 + 16) = v42;
  *(v22 + 24) = v29;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 767;
  v30 = *(v23 + 48);
  v45[2] = *(v23 + 32);
  v45[3] = v30;
  v46 = *(v23 + 64);
  v31 = *(v23 + 16);
  v45[0] = *v23;
  v45[1] = v31;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v45, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  result = 0.0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0;
  return result;
}

double static LACUIAuthCountdownConfiguration.countdown(message:delayExpiration:strictModeEnabled:customCancelTitle:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v54 - v15);

  v67 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x80000002560BE820, 0x74656863746152, 0xE700000000000000);
  v66 = v17;
  if (a2)
  {
    v69 = a1;
    v65 = a2;
  }

  else
  {
    v69 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x80000002560BE840, 0x74656863746152, 0xE700000000000000);
    v65 = v18;
  }

  v19 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BE870, 0x74656863746152, 0xE700000000000000);
  v21 = v20;
  v22 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v23 = *(v22 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 16))(v16 + v23, a3, v24);
  v25 = *(v22 + 24);
  *v16 = v19;
  v16[1] = v21;
  *(v16 + v25) = 0u;
  v26 = *(*(v22 - 8) + 56);
  v26(v16, 0, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2560BAC90;
  v28 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x445F4E4F54545542, 0xEB00000000454E4FLL, 0x75676F6C61746143, 0xE900000000000065);
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 96) = 255;
  *(v27 + 32) = 1701736292;
  *(v27 + 40) = 0xE400000000000000;
  *(v27 + 48) = v28;
  *(v27 + 56) = v29;
  v30 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  v31 = 0uLL;
  *(v27 + 136) = 0u;
  *(v27 + 152) = 0u;
  *(v27 + 168) = 511;
  *(v27 + 104) = 0x726F4D6E7261656CLL;
  *(v27 + 112) = 0xE900000000000065;
  *(v27 + 120) = v30;
  *(v27 + 128) = v32;
  if (a4)
  {
    v63 = 0;
    v64 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
  }

  else
  {
    v33 = *MEMORY[0x277D23F20];
    if (os_variant_allows_internal_security_policies())
    {
      v64 = 0x80000002560BE890;
      outlined consume of LACUIAuthImageConfiguration?(0, 0, 255);
      v58 = xmmword_2560BBD90;
      v59 = xmmword_2560BBDA0;
      v63 = 0xD000000000000032;
      v62 = 769;
      v61 = 0xE300000000000000;
      v60 = 7630433;
      goto LABEL_10;
    }

    v63 = 0;
    v64 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v31 = 0uLL;
  }

  v59 = v31;
  v58 = v31;
LABEL_10:
  if (a6)
  {
    v34 = 767;
  }

  else
  {
    v34 = 0;
  }

  v57 = v34;
  v35 = v68;
  if (!a6)
  {
    v35 = 0;
  }

  v68 = v35;
  v36 = 0xEC0000006C65636ELL;
  if (!a6)
  {
    v36 = 0;
  }

  v56 = v36;
  v37 = 0x61436D6F74737563;
  if (!a6)
  {
    v37 = 0;
  }

  v55 = v37;
  v38 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v39 = v38[7];
  v26((a7 + v39), 1, 1, v22);
  v40 = v38[8];
  v41 = a7 + v38[10];
  *(v41 + 64) = 0;
  *(v41 + 32) = 0u;
  *(v41 + 48) = 0u;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  v42 = a7 + v38[11];
  *(v42 + 64) = 0;
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0u;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(a7 + v38[12]) = 1;
  *(a7 + v38[13]) = 0;
  *a7 = 0xD000000000000015;
  *(a7 + 8) = 0x80000002560BE6D0;
  *(a7 + 16) = 1;
  v43 = v66;
  *(a7 + 24) = v67;
  *(a7 + 32) = v43;
  v44 = v65;
  *(a7 + 40) = v69;
  *(a7 + 48) = v44;
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v16, a7 + v39);
  *(a7 + v40) = 0;
  *(a7 + v38[9]) = v27;
  v71 = *(v41 + 64);
  v45 = *(v41 + 48);
  v70[2] = *(v41 + 32);
  v70[3] = v45;
  v46 = *(v41 + 16);
  v70[0] = *v41;
  v70[1] = v46;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v70, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v47 = v56;
  *v41 = v55;
  *(v41 + 8) = v47;
  *(v41 + 16) = v68;
  *(v41 + 24) = a6;
  *(v41 + 32) = 0u;
  *(v41 + 48) = 0u;
  *(v41 + 64) = v57;
  v48 = *(v42 + 48);
  v72[2] = *(v42 + 32);
  v72[3] = v48;
  v73 = *(v42 + 64);
  v49 = *(v42 + 16);
  v72[0] = *v42;
  v72[1] = v49;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v72, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v50 = v58;
  result = *&v59;
  *v42 = v59;
  *(v42 + 16) = v50;
  v52 = v64;
  *(v42 + 32) = v63;
  *(v42 + 40) = v52;
  v53 = v61;
  *(v42 + 48) = v60;
  *(v42 + 56) = v53;
  *(v42 + 64) = v62;
  return result;
}

double static LACUIAuthCountdownConfiguration.ready(message:customCancelTitle:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = 0x61436D6F74737563;
  if (!a4)
  {
    v13 = 0;
  }

  v44 = v13;
  v14 = 0xEC0000006C65636ELL;
  if (!a4)
  {
    v14 = 0;
  }

  v42 = v14;
  if (a4)
  {
    v15 = a3;
  }

  else
  {
    v15 = 0;
  }

  v41 = v15;
  if (a4)
  {
    v16 = 767;
  }

  else
  {
    v16 = 0;
  }

  v43 = v16;

  v39 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BF130, 0x74656863746152, 0xE700000000000000);
  v38 = v17;
  v18 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2560BAC90;
  v21 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x435F4E4F54545542, 0xEF45554E49544E4FLL, 0x75676F6C61746143, 0xE900000000000065);
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 255;
  *(v20 + 32) = 0x65756E69746E6F63;
  *(v20 + 40) = 0xE800000000000000;
  *(v20 + 48) = v21;
  *(v20 + 56) = v22;
  v23 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  *(v20 + 136) = 0u;
  *(v20 + 152) = 0u;
  *(v20 + 168) = 511;
  *(v20 + 104) = 0x726F4D6E7261656CLL;
  *(v20 + 112) = 0xE900000000000065;
  *(v20 + 120) = v23;
  *(v20 + 128) = v24;
  v25 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v26 = v25[7];
  v19((a5 + v26), 1, 1, v18);
  v27 = v25[8];
  v28 = a5 + v25[10];
  *(v28 + 64) = 0;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  v29 = a5 + v25[11];
  *(v29 + 64) = 0;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(a5 + v25[12]) = 1;
  *(a5 + v25[13]) = 0;
  *a5 = xmmword_2560BBDB0;
  *(a5 + 16) = 1;
  v30 = v38;
  *(a5 + 24) = v39;
  *(a5 + 32) = v30;
  *(a5 + 40) = v40;
  *(a5 + 48) = a2;

  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v12, a5 + v26);
  *(a5 + v27) = 0;
  *(a5 + v25[9]) = v20;
  v46 = *(v28 + 64);
  v31 = *(v28 + 48);
  v45[2] = *(v28 + 32);
  v45[3] = v31;
  v32 = *(v28 + 16);
  v45[0] = *v28;
  v45[1] = v32;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v45, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v33 = v42;
  *v28 = v44;
  *(v28 + 8) = v33;
  *(v28 + 16) = v41;
  *(v28 + 24) = a4;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = v43;
  v34 = *(v29 + 48);
  v47[2] = *(v29 + 32);
  v47[3] = v34;
  v48 = *(v29 + 64);
  v35 = *(v29 + 16);
  v47[0] = *v29;
  v47[1] = v35;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v47, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  result = 0.0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0;
  return result;
}

unint64_t LACUIAuthCountdownConfiguration.ActionButtonIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726F4D6E7261656CLL;
  v3 = 0x61436D6F74737563;
  if (v1 != 6)
  {
    v3 = 0x6461526F54706174;
  }

  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x6C65636E6163;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701736292;
  if (v1 != 2)
  {
    v5 = 0x65756E69746E6F63;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

void protocol witness for RawRepresentable.rawValue.getter in conformance LACUIAuthCountdownConfiguration.ActionButtonIdentifier(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x726F4D6E7261656CLL;
  v5 = 0xEC0000006C65636ELL;
  v6 = 0x61436D6F74737563;
  if (v2 != 6)
  {
    v6 = 0x6461526F54706174;
    v5 = 0xEA00000000007261;
  }

  v7 = 0x80000002560BDBA0;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701736292;
  if (v2 != 2)
  {
    v10 = 0x65756E69746E6F63;
    v9 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000002560BDB70;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t LACUIAuthCountdownConfiguration.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of LACUIAuthImageConfiguration();
}

uint64_t LACUIAuthCountdownConfiguration.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  result = outlined consume of LACUIAuthImageConfiguration();
  *v1 = v2;
  v1[1] = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t LACUIAuthCountdownConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.message.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t LACUIAuthCountdownConfiguration.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.delayConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LACUIAuthCountdownConfiguration() + 28);

  return outlined assign with take of LACUIAuthCountdownDelayConfiguration?(a1, v3);
}

uint64_t LACUIAuthCountdownConfiguration.actionItems.getter()
{
  v1 = *(v0 + *(type metadata accessor for LACUIAuthCountdownConfiguration() + 32));
}

uint64_t LACUIAuthCountdownConfiguration.actionItems.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownConfiguration() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.actionButtons.getter()
{
  v1 = *(v0 + *(type metadata accessor for LACUIAuthCountdownConfiguration() + 36));
}

uint64_t LACUIAuthCountdownConfiguration.actionButtons.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownConfiguration() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.rightBarButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LACUIAuthCountdownConfiguration() + 40);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v10, v9, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
}

__n128 LACUIAuthCountdownConfiguration.rightBarButton.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LACUIAuthCountdownConfiguration() + 40);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v8, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.accessoryButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LACUIAuthCountdownConfiguration() + 44);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v10, v9, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
}

__n128 LACUIAuthCountdownConfiguration.accessoryButton.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LACUIAuthCountdownConfiguration() + 44);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v8, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.isNavigationBarOwner.setter(char a1)
{
  result = type metadata accessor for LACUIAuthCountdownConfiguration();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t LACUIAuthCountdownConfiguration.showNavigationBar.setter(char a1)
{
  result = type metadata accessor for LACUIAuthCountdownConfiguration();
  *(v1 + *(result + 52)) = a1;
  return result;
}

__n128 LACUIAuthCountdownConfiguration.init(image:title:message:delayConfiguration:actionItems:actionButtons:rightBarButton:accessoryButton:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = *a1;
  v28 = a1[1];
  v13 = *(a1 + 16);
  v14 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v15 = v14[7];
  v16 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = v14[8];
  v18 = a9 + v14[10];
  *(v18 + 64) = 0;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v19 = a9 + v14[11];
  *(v19 + 64) = 0;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(a9 + v14[12]) = 1;
  *(a9 + v14[13]) = 0;
  *a9 = v12;
  *(a9 + 8) = v28;
  *(a9 + 16) = v13;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(a6, a9 + v15);
  *(a9 + v17) = a7;
  *(a9 + v14[9]) = a8;
  v37 = *(v18 + 64);
  v20 = *(v18 + 48);
  v36[2] = *(v18 + 32);
  v36[3] = v20;
  v21 = *(v18 + 16);
  v36[0] = *v18;
  v36[1] = v21;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v36, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v22 = *(a10 + 48);
  *(v18 + 32) = *(a10 + 32);
  *(v18 + 48) = v22;
  *(v18 + 64) = *(a10 + 64);
  v23 = *(a10 + 16);
  *v18 = *a10;
  *(v18 + 16) = v23;
  v24 = *(v19 + 48);
  v38[2] = *(v19 + 32);
  v38[3] = v24;
  v39 = *(v19 + 64);
  v25 = *(v19 + 16);
  v38[0] = *v19;
  v38[1] = v25;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v38, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v26 = *(a11 + 48);
  *(v19 + 32) = *(a11 + 32);
  *(v19 + 48) = v26;
  *(v19 + 64) = *(a11 + 64);
  result = *(a11 + 16);
  *v19 = *a11;
  *(v19 + 16) = result;
  return result;
}

double static LACUIAuthCountdownConfiguration.learnMoreButton.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 511;
  *a1 = 0x726F4D6E7261656CLL;
  *(a1 + 8) = 0xE900000000000065;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  return result;
}

uint64_t static LACUIAuthCountdownConfiguration.shouldShowTapToRadarButton(strictModeEnabled:)(char a1)
{
  if (a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x277D23F20];
  return os_variant_allows_internal_security_policies();
}

double static LACUIAuthCountdownConfiguration.tapToRadarButton.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x6461526F54706174;
  *(a1 + 8) = 0xEA00000000007261;
  *(a1 + 16) = 0x616E7265746E4928;
  *(a1 + 24) = 0xEF29796C6E4F206CLL;
  *(a1 + 32) = 0xD000000000000032;
  *(a1 + 40) = 0x80000002560BE890;
  outlined consume of LACUIAuthImageConfiguration?(0, 0, 255);
  *&result = 7630433;
  *(a1 + 48) = xmmword_2560BBDC0;
  *(a1 + 64) = 769;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v6 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v7 = *(a1 + v3 + 64);
      v8 = *(a1 + v3 + 72);
      v23 = *(a1 + v3 + 80);
      v10 = *(a2 + v3 + 48);
      v9 = *(a2 + v3 + 56);
      v11 = *(a2 + v3 + 64);
      v12 = *(a2 + v3 + 72);
      v21 = v9;
      v22 = *(a2 + v3 + 80);
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || *(a1 + v3 + 40) != *(a2 + v3 + 40))
      {
        v13 = *(a2 + v3 + 72);
        v14 = *(a2 + v3 + 64);
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v11 = v14;
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      if (v7)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_25;
        }

        if (v6 == v10 && v5 == v21)
        {
          goto LABEL_19;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of LACUIAuthImageConfiguration();

        outlined copy of LACUIAuthImageConfiguration();

        outlined copy of LACUIAuthImageConfiguration();
        outlined copy of LACUIAuthImageConfiguration();
        outlined consume of LACUIAuthImageConfiguration();
        outlined consume of LACUIAuthImageConfiguration();
        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v11)
        {
LABEL_25:
          outlined copy of LACUIAuthImageConfiguration();
          outlined copy of LACUIAuthImageConfiguration();
          outlined consume of LACUIAuthImageConfiguration();
          outlined consume of LACUIAuthImageConfiguration();
          return 0;
        }

        if (v6 == v10 && v5 == v21)
        {
LABEL_19:

          outlined copy of LACUIAuthImageConfiguration();

          outlined copy of LACUIAuthImageConfiguration();

          outlined copy of LACUIAuthImageConfiguration();
          outlined copy of LACUIAuthImageConfiguration();
          outlined consume of LACUIAuthImageConfiguration();
          outlined consume of LACUIAuthImageConfiguration();
          goto LABEL_21;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of LACUIAuthImageConfiguration();

        outlined copy of LACUIAuthImageConfiguration();

        outlined copy of LACUIAuthImageConfiguration();
        outlined copy of LACUIAuthImageConfiguration();
        outlined consume of LACUIAuthImageConfiguration();
        outlined consume of LACUIAuthImageConfiguration();
        if ((v18 & 1) == 0)
        {
LABEL_27:

          outlined consume of LACUIAuthImageConfiguration();

          outlined consume of LACUIAuthImageConfiguration();

          return 0;
        }
      }

LABEL_21:
      if (v8 == v12 && v23 == v22)
      {

        outlined consume of LACUIAuthImageConfiguration();

        outlined consume of LACUIAuthImageConfiguration();
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined consume of LACUIAuthImageConfiguration();

        outlined consume of LACUIAuthImageConfiguration();

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v32 = *(v6 + 32);
    v31[2] = v12;
    v31[3] = v13;
    v31[0] = v10;
    v31[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v32;
    v17 = v10;
    v18 = v11;
    outlined init with copy of LACUIAuthButtonConfiguration(v27, v16);
    outlined init with copy of LACUIAuthButtonConfiguration(v31, v16);
    v14 = specialized static LACUIAuthButtonConfiguration.== infix(_:_:)(&v22, &v17);
    v33[2] = v19;
    v33[3] = v20;
    v34 = v21;
    v33[0] = v17;
    v33[1] = v18;
    outlined destroy of LACUIAuthButtonConfiguration(v33);
    v35[2] = v24;
    v35[3] = v25;
    v36 = v26;
    v35[0] = v22;
    v35[1] = v23;
    outlined destroy of LACUIAuthButtonConfiguration(v35);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 += 72;
  }

  return 1;
}

uint64_t static LACUIAuthCountdownConfiguration.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v42 - v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v50 = *(v7 + 8);
  v50(v11, v6);
  v14 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x80000002560BE820, 0x74656863746152, 0xE700000000000000);
  v53 = v15;
  v54 = v14;
  v16 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BE870, 0x74656863746152, 0xE700000000000000);
  v18 = v17;
  v19 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  (*(v7 + 16))(v5 + *(v19 + 20), v13, v6);
  v20 = (v5 + *(v19 + 24));
  *v5 = v16;
  v5[1] = v18;
  *v20 = 0;
  v20[1] = 0;
  v52 = *(*(v19 - 8) + 56);
  v52(v5, 0, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2560BAC90;
  v22 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x445F4E4F54545542, 0xEB00000000454E4FLL, 0x75676F6C61746143, 0xE900000000000065);
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 96) = 255;
  *(v21 + 32) = 1701736292;
  *(v21 + 40) = 0xE400000000000000;
  *(v21 + 48) = v22;
  *(v21 + 56) = v23;
  v24 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  *(v21 + 136) = 0u;
  *(v21 + 152) = 0u;
  *(v21 + 168) = 511;
  *(v21 + 104) = 0x726F4D6E7261656CLL;
  *(v21 + 112) = 0xE900000000000065;
  *(v21 + 120) = v24;
  *(v21 + 128) = v25;
  v26 = *MEMORY[0x277D23F20];
  if (os_variant_allows_internal_security_policies())
  {
    v51 = 0x80000002560BE890;
    v50(v13, v6);
    outlined consume of LACUIAuthImageConfiguration?(0, 0, 255);
    v50 = 0xD000000000000032;
    v49 = 3;
    v48 = 1;
    v47 = 0xE300000000000000;
    v46 = 0xEF29796C6E4F206CLL;
    v45 = 0x616E7265746E4928;
    v44 = 0xEA00000000007261;
    v43 = 0x6461526F54706174;
    v42 = 7630433;
  }

  else
  {
    v50(v13, v6);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v50 = 0;
    v51 = 0;
    v42 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  v27 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v28 = v27[7];
  v52((a1 + v28), 1, 1, v19);
  v29 = v27[8];
  v30 = a1 + v27[10];
  *(v30 + 64) = 0;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v31 = a1 + v27[11];
  *(v31 + 64) = 0;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(a1 + v27[12]) = 1;
  *(a1 + v27[13]) = 0;
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000002560BE6D0;
  *(a1 + 16) = 1;
  v32 = v53;
  *(a1 + 24) = v54;
  *(a1 + 32) = v32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v5, a1 + v28);
  *(a1 + v29) = 0;
  *(a1 + v27[9]) = v21;
  v56 = *(v30 + 64);
  v33 = *(v30 + 48);
  v55[2] = *(v30 + 32);
  v55[3] = v33;
  v34 = *(v30 + 16);
  v55[0] = *v30;
  v55[1] = v34;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v55, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *(v30 + 64) = 0;
  v35 = *(v31 + 48);
  v57[2] = *(v31 + 32);
  v57[3] = v35;
  v58 = *(v31 + 64);
  v36 = *(v31 + 16);
  v57[0] = *v31;
  v57[1] = v36;
  result = outlined destroy of LACUIAuthCountdownDelayConfiguration?(v57, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v38 = v44;
  *v31 = v43;
  *(v31 + 8) = v38;
  v39 = v46;
  *(v31 + 16) = v45;
  *(v31 + 24) = v39;
  v40 = v51;
  *(v31 + 32) = v50;
  *(v31 + 40) = v40;
  v41 = v47;
  *(v31 + 48) = v42;
  *(v31 + 56) = v41;
  *(v31 + 64) = v48;
  *(v31 + 65) = v49;
  return result;
}

uint64_t specialized static LACUIAuthCountdownConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v4);
  v70 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v68 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSg_ADtMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  *&v110 = *a1;
  *(&v110 + 1) = v15;
  LOBYTE(v111) = v16;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  *&v124 = *a2;
  *(&v124 + 1) = v17;
  LOBYTE(v125) = v18;
  outlined copy of LACUIAuthImageConfiguration();
  outlined copy of LACUIAuthImageConfiguration();
  v19 = specialized static LACUIAuthImageConfiguration.== infix(_:_:)(&v110, &v124);
  outlined consume of LACUIAuthImageConfiguration();
  outlined consume of LACUIAuthImageConfiguration();
  if ((v19 & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v69 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v20 = *(v69 + 28);
  v21 = *(v11 + 48);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(a1 + v20, v14, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(a2 + v20, &v14[v21], &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v22 = *(v71 + 48);
  if (v22(v14, 1, v4) == 1)
  {
    if (v22(&v14[v21], 1, v4) == 1)
    {
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v14, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
      goto LABEL_18;
    }

LABEL_13:
    v23 = &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSg_ADtMd;
    v24 = &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSg_ADtMR;
    v25 = v14;
LABEL_14:
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v25, v23, v24);
    goto LABEL_15;
  }

  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v14, v10, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  if (v22(&v14[v21], 1, v4) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration(v10);
    goto LABEL_13;
  }

  v28 = v70;
  outlined init with take of LACUIAuthCountdownDelayConfiguration(&v14[v21], v70);
  v29 = specialized static LACUIAuthCountdownDelayConfiguration.== infix(_:_:)(v10, v28);
  outlined destroy of LACUIAuthCountdownDelayConfiguration(v28);
  outlined destroy of LACUIAuthCountdownDelayConfiguration(v10);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v14, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v30 = v69;
  v31 = *(v69 + 32);
  v32 = a1;
  v33 = *(a1 + v31);
  v34 = *(a2 + v31);
  if (v33)
  {
    if (!v34)
    {
      goto LABEL_15;
    }

    v35 = *(a2 + v31);

    v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationV_Tt1g5(v33, v34);

    if ((v36 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v34)
  {
    goto LABEL_15;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationV_Tt1g5(*(v32 + v30[9]), *(a2 + v30[9])) & 1) == 0)
  {
    goto LABEL_15;
  }

  v37 = v32 + v30[10];
  v38 = *(v37 + 16);
  v39 = *(v37 + 48);
  v121 = *(v37 + 32);
  v122 = v39;
  v123 = *(v37 + 64);
  v40 = *(v37 + 16);
  v120[0] = *v37;
  v120[1] = v40;
  v41 = (a2 + v30[10]);
  v42 = v41[3];
  v43 = v41[1];
  v126 = v41[2];
  v127 = v42;
  v44 = v41[1];
  v124 = *v41;
  v125 = v44;
  v77 = v38;
  v78 = v121;
  v79 = *(v37 + 48);
  v45 = v41[3];
  v73 = v126;
  v74 = v45;
  v128 = *(v41 + 32);
  v46 = v120[0];
  LOWORD(v80) = *(v37 + 64);
  v47 = v124;
  LOWORD(v75) = *(v41 + 32);
  v72 = v43;
  if (!*(&v120[0] + 1))
  {
    if (!*(&v124 + 1))
    {
      v110 = *&v120[0];
      v52 = *(v37 + 32);
      v111 = *(v37 + 16);
      v112 = v52;
      v113 = *(v37 + 48);
      v114 = *(v37 + 64);
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v120, &v105, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v124, &v105, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v110, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      goto LABEL_33;
    }

    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v120, &v110, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v124, &v110, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
LABEL_31:
    v111 = v77;
    v112 = v78;
    v113 = v79;
    v116 = v72;
    v110 = v46;
    v114 = v80;
    v115 = v47;
    v117 = v73;
    v118 = v74;
    v51 = v75;
LABEL_41:
    v119 = v51;
    v23 = &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSg_ADtMd;
    v24 = &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSg_ADtMR;
    v25 = &v110;
    goto LABEL_14;
  }

  v110 = v120[0];
  v48 = *(v37 + 32);
  v111 = *(v37 + 16);
  v112 = v48;
  v113 = *(v37 + 48);
  v114 = *(v37 + 64);
  v107 = v48;
  v108 = v113;
  v109 = v114;
  v105 = v120[0];
  v106 = v111;
  if (!*(&v124 + 1))
  {
    v102 = v112;
    v103 = v113;
    v104 = v114;
    v100 = v110;
    v101 = v111;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v120, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v124, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v110, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined destroy of LACUIAuthButtonConfiguration(&v100);
    goto LABEL_31;
  }

  v49 = v41[2];
  v101 = v41[1];
  v102 = v49;
  v103 = v41[3];
  v104 = *(v41 + 32);
  v100 = v124;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v120, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v124, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v110, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v50 = specialized static LACUIAuthButtonConfiguration.== infix(_:_:)(&v105, &v100);
  v84 = v102;
  v85 = v103;
  v86 = v104;
  v82 = v100;
  v83 = v101;
  outlined destroy of LACUIAuthButtonConfiguration(&v82);
  v89 = v107;
  v90 = v108;
  v91 = v109;
  v87 = v105;
  v88 = v106;
  outlined destroy of LACUIAuthButtonConfiguration(&v87);
  v100 = v46;
  v101 = v77;
  v102 = v78;
  v103 = v79;
  v104 = v80;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v100, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  if (!v50)
  {
    goto LABEL_15;
  }

LABEL_33:
  v53 = (v32 + v30[11]);
  v54 = v53[1];
  v55 = v53[3];
  v102 = v53[2];
  v103 = v55;
  v104 = *(v53 + 32);
  v56 = v53[1];
  v100 = *v53;
  v101 = v56;
  v57 = (a2 + v30[11]);
  v58 = v57[3];
  v59 = v57[1];
  v107 = v57[2];
  v108 = v58;
  v60 = v57[1];
  v105 = *v57;
  v106 = v60;
  v96 = v54;
  v97 = v102;
  v98 = v53[3];
  v61 = v57[3];
  v93 = v107;
  v94 = v61;
  v109 = *(v57 + 32);
  v62 = v100;
  v99 = *(v53 + 32);
  v63 = v105;
  v95 = *(v57 + 32);
  v92 = v59;
  if (*(&v100 + 1))
  {
    v110 = v100;
    v64 = v53[2];
    v111 = v53[1];
    v112 = v64;
    v113 = v53[3];
    v114 = *(v53 + 32);
    v89 = v64;
    v90 = v113;
    v91 = v114;
    v87 = v100;
    v88 = v111;
    if (*(&v105 + 1))
    {
      v65 = v57[2];
      v83 = v57[1];
      v84 = v65;
      v85 = v57[3];
      v86 = *(v57 + 32);
      v82 = v105;
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v100, &v77, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v105, &v77, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v110, &v77, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      v66 = specialized static LACUIAuthButtonConfiguration.== infix(_:_:)(&v87, &v82);
      v74 = v84;
      v75 = v85;
      v76 = v86;
      v72 = v82;
      v73 = v83;
      outlined destroy of LACUIAuthButtonConfiguration(&v72);
      v79 = v89;
      v80 = v90;
      v81 = v91;
      v77 = v87;
      v78 = v88;
      outlined destroy of LACUIAuthButtonConfiguration(&v77);
      v82 = v62;
      v83 = v96;
      v84 = v97;
      v85 = v98;
      v86 = v99;
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v82, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      if (!v66)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }

    v84 = v112;
    v85 = v113;
    v86 = v114;
    v82 = v110;
    v83 = v111;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v100, &v77, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v105, &v77, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v110, &v77, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined destroy of LACUIAuthButtonConfiguration(&v82);
    goto LABEL_40;
  }

  if (*(&v105 + 1))
  {
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v100, &v110, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v105, &v110, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
LABEL_40:
    v111 = v96;
    v112 = v97;
    v113 = v98;
    v116 = v92;
    v110 = v62;
    v114 = v99;
    v115 = v63;
    v117 = v93;
    v118 = v94;
    v51 = v95;
    goto LABEL_41;
  }

  v110 = v100;
  v67 = v53[2];
  v111 = v53[1];
  v112 = v67;
  v113 = v53[3];
  v114 = *(v53 + 32);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v100, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v105, &v87, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v110, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
LABEL_43:
  if (*(v32 + v30[12]) == *(a2 + v30[12]))
  {
    v26 = *(v32 + v30[13]) ^ *(a2 + v30[13]) ^ 1;
    return v26 & 1;
  }

LABEL_15:
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static LACUIAuthCountdownConfiguration.message(strictModeEnabled:familiarLocationsUnavailable:)(char a1, char a2)
{
  v2 = "RATCHET_COOL_OFF_TITLE_BEGIN";
  if (a2)
  {
    v2 = "RATCHET_COOL_OFF_TITLE_READY";
  }

  v3 = 0xD000000000000034;
  if ((a2 & 1) == 0)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (a1)
  {
    v2 = "RATCHET_COOL_OFF_LEARN_MORE";
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    v4 = v3;
  }

  return specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v4, (v2 | 0x8000000000000000), 0x74656863746152, 0xE700000000000000);
}

uint64_t type metadata accessor for LACUIAuthCountdownConfiguration()
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownConfiguration;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of LACUIAuthCountdownDelayConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LACUIAuthCountdownConfiguration.ActionButtonIdentifier and conformance LACUIAuthCountdownConfiguration.ActionButtonIdentifier()
{
  result = lazy protocol witness table cache variable for type LACUIAuthCountdownConfiguration.ActionButtonIdentifier and conformance LACUIAuthCountdownConfiguration.ActionButtonIdentifier;
  if (!lazy protocol witness table cache variable for type LACUIAuthCountdownConfiguration.ActionButtonIdentifier and conformance LACUIAuthCountdownConfiguration.ActionButtonIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIAuthCountdownConfiguration.ActionButtonIdentifier and conformance LACUIAuthCountdownConfiguration.ActionButtonIdentifier);
  }

  return result;
}

uint64_t sub_2560A9C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2560A9D3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LACUIAuthCountdownConfiguration()
{
  type metadata accessor for LACUIAuthCountdownDelayConfiguration?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [LACUIAuthCountdownItemConfiguration]?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [LACUIAuthButtonConfiguration](319, &lazy cache variable for type metadata for [LACUIAuthButtonConfiguration], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [LACUIAuthButtonConfiguration](319, &lazy cache variable for type metadata for LACUIAuthButtonConfiguration?, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for LACUIAuthCountdownDelayConfiguration?()
{
  if (!lazy cache variable for type metadata for LACUIAuthCountdownDelayConfiguration?)
  {
    type metadata accessor for LACUIAuthCountdownDelayConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LACUIAuthCountdownDelayConfiguration?);
    }
  }
}

void type metadata accessor for [LACUIAuthCountdownItemConfiguration]?()
{
  if (!lazy cache variable for type metadata for [LACUIAuthCountdownItemConfiguration]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [LACUIAuthCountdownItemConfiguration]?);
    }
  }
}

void type metadata accessor for [LACUIAuthButtonConfiguration](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LACUIAuthButtonConfiguration);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LACUIAuthCountdownConfiguration.ActionButtonIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUIAuthCountdownConfiguration.ActionButtonIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with take of LACUIAuthCountdownDelayConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static LocalizedStrings.operationNotSupportedOnCompanionFaceId(applicationName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7[3] = MEMORY[0x277D837D0];
    v7[4] = lazy protocol witness table accessor for type String and conformance String();
    v7[0] = a1;
    v7[1] = a2;

    specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000026, 0x80000002560BEB60, 0x75676F6C61746143, 0xE900000000000065);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2560BACC0;
    outlined init with copy of CVarArg(v7, v4 + 32);
    v5 = String.init(format:_:)();

    __swift_destroy_boxed_opaque_existential_0(v7);
    return v5;
  }

  else
  {

    return specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000030, 0x80000002560BEB20, 0x75676F6C61746143, 0xE900000000000065);
  }
}

uint64_t static LocalizedStrings.operationNotSupportedOnCompanionTouchId(applicationName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7[3] = MEMORY[0x277D837D0];
    v7[4] = lazy protocol witness table accessor for type String and conformance String();
    v7[0] = a1;
    v7[1] = a2;

    specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000027, 0x80000002560BEAF0, 0x75676F6C61746143, 0xE900000000000065);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2560BACC0;
    outlined init with copy of CVarArg(v7, v4 + 32);
    v5 = String.init(format:_:)();

    __swift_destroy_boxed_opaque_existential_0(v7);
    return v5;
  }

  else
  {

    return specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000031, 0x80000002560BEA90, 0x75676F6C61746143, 0xE900000000000065);
  }
}

id @objc static LACUILocalization.cancel.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(a3, a4, 0x75676F6C61746143, 0xE900000000000065);
  v5 = MEMORY[0x259C58D00](v4);

  return v5;
}

LACUILocalization __swiftcall LACUILocalization.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x259C58D70](a3, a4);
    v7 = 45;
    v8 = 0xE100000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  MEMORY[0x259C58D70](v7, v8);

  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.current;
  v15._object = 0xE000000000000000;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v15)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t specialized static LocalizedStrings.ratchetCoolOffSecurityDelayDuration.getter()
{
  v0 = objc_opt_self();
  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v2 = [v0 localizedStringFromNumber:isa numberStyle:1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v9[3] = MEMORY[0x277D837D0];
  v9[4] = lazy protocol witness table accessor for type String and conformance String();
  v9[0] = v3;
  v9[1] = v5;

  specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000028, 0x80000002560BF6D0, 0x74656863746152, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2560BACC0;
  outlined init with copy of CVarArg(v9, v6 + 32);
  v7 = String.init(format:_:)();

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v7;
}

uint64_t LACUIAuthCountdownItemConfiguration.init(image:title:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t LACUIAuthCountdownItemConfiguration.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LACUIAuthCountdownItemConfiguration.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of LACUIAuthImageConfiguration();
}

uint64_t LACUIAuthCountdownItemConfiguration.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  result = outlined consume of LACUIAuthImageConfiguration();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t LACUIAuthCountdownItemConfiguration.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t LACUIAuthCountdownItemConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LACUIAuthCountdownItemConfiguration@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t specialized static LACUIAuthCountdownItemConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16[0] = v2;
  v16[1] = v3;
  v17 = v4;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  outlined copy of LACUIAuthImageConfiguration();
  outlined copy of LACUIAuthImageConfiguration();
  v12 = specialized static LACUIAuthImageConfiguration.== infix(_:_:)(v16, v14);
  outlined consume of LACUIAuthImageConfiguration();
  outlined consume of LACUIAuthImageConfiguration();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAuthCountdownItemConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for LACUIAuthCountdownItemConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id LACUIDTOSensorNotTrustedStrictModeScenePresentationHandler.init()()
{
  v1 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000027, 0x80000002560BF3C0, 0x74656863746152, 0xE700000000000000);
  v3 = v2;
  v4 = [objc_opt_self() deviceHasFaceID];
  v5 = "ENSOR_STRICT_MODE_TEXT_FACE_ID";
  if (v4)
  {
    v5 = "ENSOR_STRICT_MODE_TITLE";
    v6 = 0xD00000000000002ELL;
  }

  else
  {
    v6 = 0xD00000000000002FLL;
  }

  v7 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v6, (v5 | 0x8000000000000000), 0x74656863746152, 0xE700000000000000);
  v9 = v8;
  v10 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x4F5F4E4F54545542, 0xE90000000000004BLL, 0x75676F6C61746143, 0xE900000000000065);
  v11 = &v0[OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration];
  *v11 = 2;
  *(v11 + 1) = v1;
  *(v11 + 2) = v3;
  *(v11 + 3) = v7;
  *(v11 + 4) = v9;
  *(v11 + 5) = v10;
  *(v11 + 6) = v12;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for LACUIAlertScenePresentationHandler();
  return objc_msgSendSuper2(&v14, sel_init);
}

id LACUIDTOSensorNotTrustedStrictModeScenePresentationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIDTOSensorNotTrustedStrictModeScenePresentationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_25LocalAuthenticationCoreUI27LACUIAuthImageConfigurationOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_25LocalAuthenticationCoreUI24LACUIAuthActionCountdownO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_25LocalAuthenticationCoreUI15LACUIAuthActionO(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAuthAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 66))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LACUIAuthAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for LACUIAuthAction(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAuthActionCountdown(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LACUIAuthActionCountdown(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for LACUIAuthActionCountdown(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

double LACUITapToRadarURLBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 10;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 6;
  return result;
}

uint64_t one-time initialization function for tapToRadarURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v4, tapToRadarURL);
  v5 = __swift_project_value_buffer(v4, tapToRadarURL);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t LACUITapToRadarURLBuilder.title.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LACUITapToRadarURLBuilder.title.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t LACUITapToRadarURLBuilder.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LACUITapToRadarURLBuilder.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t LACUITapToRadarURLBuilder.classification.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t LACUITapToRadarURLBuilder.component.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v8 = v1[11];
  v7 = v1[12];
  result = outlined copy of (name: String, version: String, id: String)?(v3, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t LACUITapToRadarURLBuilder.component.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = a1[1];
  *(v1 + 7) = *a1;
  *(v1 + 9) = v9;
  *(v1 + 11) = a1[2];
  return outlined consume of (name: String, version: String, id: String)?(v3, v4);
}

uint64_t LACUITapToRadarURLBuilder.reproducibility.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t LACUITapToRadarURLBuilder.with<A>(_:setTo:)(void *a1)
{
  v2 = *(*(*(*a1 + *MEMORY[0x277D84568] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  v7 = v1;

  swift_setAtReferenceWritableKeyPath();
}

void *LACUITapToRadarURLBuilder.build()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (one-time initialization token for tapToRadarURL != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for URL();
  v5 = __swift_project_value_buffer(v4, tapToRadarURL);
  v6 = (*(*(v4 - 8) + 16))(a1, v5, v4);
  v7 = (*(*v2 + 120))(v6);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v9 = *(type metadata accessor for URLQueryItem() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2560BACC0;
    URLQueryItem.init(name:value:)();

    URL.append(queryItems:)(v12);
  }

  v13 = (*(*v2 + 144))(v7);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v15 = *(type metadata accessor for URLQueryItem() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2560BACC0;
    URLQueryItem.init(name:value:)();

    URL.append(queryItems:)(v18);
  }

  v19 = (*(*v2 + 168))(v13);
  if (v19 != 10)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v21 = *(type metadata accessor for URLQueryItem() - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2560BACC0;
    LACUITapToRadarURLBuilder.Classification.rawValue.getter(v20);
    URLQueryItem.init(name:value:)();

    URL.append(queryItems:)(v24);
  }

  v25 = (*(*v2 + 216))(v19);
  if (v25 != 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v26 = *(type metadata accessor for URLQueryItem() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2560BACC0;
    v30._rawValue = v29;
    URLQueryItem.init(name:value:)();

    URL.append(queryItems:)(v30);
  }

  result = (*(*v2 + 192))(v38, v25);
  if (v38[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v32 = *(type metadata accessor for URLQueryItem() - 8);
    v33 = *(v32 + 72);
    v34 = *(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2560BACC0;

    URLQueryItem.init(name:value:)();

    URL.append(queryItems:)(v35);

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2560BACC0;

    URLQueryItem.init(name:value:)();

    URL.append(queryItems:)(v36);

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2560BACC0;

    URLQueryItem.init(name:value:)();

    URL.append(queryItems:)(v37);
  }

  return result;
}

unint64_t LACUITapToRadarURLBuilder.Classification.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t LACUITapToRadarURLBuilder.Reproducibility.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x737961776C41;
  v2 = 0x656C62616E55;
  v3 = 0x74276E6469442049;
  if (a1 != 4)
  {
    v3 = 0x6C70704120746F4ELL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x656D6974656D6F53;
  if (a1 != 1)
  {
    v4 = 0x796C65726152;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *LACUITapToRadarURLBuilder.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  outlined consume of (name: String, version: String, id: String)?(v0[7], v0[8]);
  return v0;
}

uint64_t LACUITapToRadarURLBuilder.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  outlined consume of (name: String, version: String, id: String)?(v0[7], v0[8]);

  return MEMORY[0x2821FE8D8](v0, 105, 7);
}

double LACUITapToRadarURLBuilder.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 10;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 6;
  return result;
}

uint64_t outlined copy of (name: String, version: String, id: String)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LACUITapToRadarURLBuilder.Classification(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = LACUITapToRadarURLBuilder.Classification.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == LACUITapToRadarURLBuilder.Classification.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACUITapToRadarURLBuilder.Classification()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LACUITapToRadarURLBuilder.Classification.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LACUITapToRadarURLBuilder.Classification()
{
  LACUITapToRadarURLBuilder.Classification.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACUITapToRadarURLBuilder.Classification()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LACUITapToRadarURLBuilder.Classification.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LACUITapToRadarURLBuilder.Classification@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LACUITapToRadarURLBuilder.Classification.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LACUITapToRadarURLBuilder.Classification@<X0>(unint64_t *a1@<X8>)
{
  result = LACUITapToRadarURLBuilder.Classification.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LACUITapToRadarURLBuilder.Reproducibility(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = *a2;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0x74276E6469442049;
  v8 = 0xEC00000079725420;
  if (v2 != 4)
  {
    v7 = 0x6C70704120746F4ELL;
    v8 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x656D6974656D6F53;
  v10 = 0xE900000000000073;
  if (v2 != 1)
  {
    v9 = 0x796C65726152;
    v10 = 0xE600000000000000;
  }

  if (*a1)
  {
    v3 = v10;
  }

  else
  {
    v9 = 0x737961776C41;
  }

  if (*a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (v4 == 4)
    {
      v13 = 0xEC00000079725420;
      if (v11 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xEE00656C62616369;
      if (v11 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (*a2)
  {
    if (v4 == 1)
    {
      v13 = 0xE900000000000073;
      if (v11 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACUITapToRadarURLBuilder.Reproducibility()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LACUITapToRadarURLBuilder.Reproducibility()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACUITapToRadarURLBuilder.Reproducibility()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LACUITapToRadarURLBuilder.Reproducibility@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LACUITapToRadarURLBuilder.Reproducibility.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LACUITapToRadarURLBuilder.Reproducibility(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t specialized LACUITapToRadarURLBuilder.Classification.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LACUITapToRadarURLBuilder.Classification.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LACUITapToRadarURLBuilder.Reproducibility.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LACUITapToRadarURLBuilder.Reproducibility.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type LACUITapToRadarURLBuilder.Classification and conformance LACUITapToRadarURLBuilder.Classification()
{
  result = lazy protocol witness table cache variable for type LACUITapToRadarURLBuilder.Classification and conformance LACUITapToRadarURLBuilder.Classification;
  if (!lazy protocol witness table cache variable for type LACUITapToRadarURLBuilder.Classification and conformance LACUITapToRadarURLBuilder.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUITapToRadarURLBuilder.Classification and conformance LACUITapToRadarURLBuilder.Classification);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LACUITapToRadarURLBuilder.Reproducibility and conformance LACUITapToRadarURLBuilder.Reproducibility()
{
  result = lazy protocol witness table cache variable for type LACUITapToRadarURLBuilder.Reproducibility and conformance LACUITapToRadarURLBuilder.Reproducibility;
  if (!lazy protocol witness table cache variable for type LACUITapToRadarURLBuilder.Reproducibility and conformance LACUITapToRadarURLBuilder.Reproducibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUITapToRadarURLBuilder.Reproducibility and conformance LACUITapToRadarURLBuilder.Reproducibility);
  }

  return result;
}

uint64_t sub_2560AE294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2560AE2E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2560AE334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

double sub_2560AE384@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 192))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_2560AE3EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of LACUITapToRadarURLBuilder.component.setter(_OWORD *a1)
{
  v2 = *(*v1 + 200);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t getEnumTagSinglePayload for LACUITapToRadarURLBuilder.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUITapToRadarURLBuilder.Classification(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LACUITapToRadarURLBuilder.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUITapToRadarURLBuilder.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t LACUIAlertScenePresentationHandler.Configuration.init(requestIdentifier:title:message:dismissActionTitle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v12 = result;
  if (!a7)
  {
    result = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x4F5F4E4F54545542, 0xE90000000000004BLL, 0x75676F6C61746143, 0xE900000000000065);
    a6 = result;
    a7 = v14;
  }

  *a8 = v12;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

id LACUIAlertScenePresentationHandler.init(configuration:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = &v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration];
  *v5 = *a1;
  *(v5 + 1) = v3;
  *(v5 + 2) = v2;
  *(v5 + 6) = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LACUIAlertScenePresentationHandler();
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Bool __swiftcall LACUIAlertScenePresentationHandler.canHandle(request:)(LACUIScenePresentationRequest request)
{
  v2 = [(objc_class *)request.super.isa userInterfaceRequest];
  v3 = [v2 identifier];

  return *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration) == v3;
}

Swift::Void __swiftcall LACUIAlertScenePresentationHandler.handle(request:inContext:)(LACUIScenePresentationRequest request, LACUIScenePresentationContext inContext)
{
  v3 = v2;
  userInterfaceRequest = request._userInterfaceRequest;
  isa = request.super.isa;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x60))(isa))
  {
    v11 = *(v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 8);
    v12 = *(v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 16);
    v13 = *(v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 24);
    v14 = *(v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 32);
    v15 = MEMORY[0x259C58D00](v11, v12);
    v16 = MEMORY[0x259C58D00](v13, v14);
    v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

    v18 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x4F5F4E4F54545542, 0xE90000000000004BLL, 0x75676F6C61746143, 0xE900000000000065);
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = userInterfaceRequest;
    v22 = userInterfaceRequest;
    v23 = MEMORY[0x259C58D00](v18, v20);

    aBlock[4] = partial apply for closure #1 in LACUIAlertScenePresentationHandler.handle(request:inContext:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_2;
    v24 = _Block_copy(aBlock);

    v25 = [objc_opt_self() actionWithTitle:v23 style:0 handler:v24];
    _Block_release(v24);

    [v17 addAction_];
    [-[LACUserInterfaceRequest presenter](v22 presenter)];
  }

  else
  {
    static LACLog.ui.getter();
    v26 = v2;
    v27 = isa;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = userInterfaceRequest;
      v31 = v30;
      v32 = swift_slowAlloc();
      *v31 = 138543618;
      *(v31 + 4) = v26;
      *(v31 + 12) = 2114;
      *(v31 + 14) = v27;
      *v32 = v3;
      v32[1] = v27;
      v33 = v26;
      v34 = v27;
      _os_log_impl(&dword_256063000, v28, v29, "%{public}@ cannot process request %{public}@", v31, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x259C59AD0](v32, -1, -1);
      v35 = v31;
      userInterfaceRequest = v37;
      MEMORY[0x259C59AD0](v35, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    [-[LACUserInterfaceRequest presenter](userInterfaceRequest presenter)];
  }

  swift_unknownObjectRelease();
}

uint64_t LACUIAlertScenePresentationHandler.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration);
  v3 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 16);
  v4 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 24);
  v6 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 32);
  v5 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 40);
  v7 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration + 48);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
}

id LACUIAlertScenePresentationHandler.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v5 = *(a1 + 16);
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = &v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration];
  *v7 = *a1;
  *(v7 + 1) = v5;
  *(v7 + 2) = v4;
  *(v7 + 6) = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id LACUIAlertScenePresentationHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACUIAlertScenePresentationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIAlertScenePresentationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACUIAlertScenePresentationHandler.Configuration.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t LACUIAlertScenePresentationHandler.Configuration.message.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t LACUIAlertScenePresentationHandler.Configuration.dismissActionTitle.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2560AF350()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in LACUIAlertScenePresentationHandler.handle(request:inContext:)()
{
  [objc_msgSend(*(v0 + 16) presenter)];

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for LACUIAlertScenePresentationHandler.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for LACUIAlertScenePresentationHandler.Configuration(uint64_t result, int a2, int a3)
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

double LACUIAuthButtonConfiguration.init(id:title:style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  result = 0.0;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = -1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 65) = v6;
  return result;
}

uint64_t LACUIAuthButtonConfiguration.init(id:title:text:image:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *a7;
  v11 = a7[1];
  v12 = *(a7 + 16);
  v13 = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  result = outlined consume of LACUIAuthImageConfiguration?(0, 0, 255);
  *(a9 + 48) = v10;
  *(a9 + 56) = v11;
  *(a9 + 64) = v12;
  *(a9 + 65) = v13;
  return result;
}

Swift::Int LACUIAuthButtonStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C590D0](v1);
  return Hasher._finalize()();
}

uint64_t LACUIAuthButtonConfiguration.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LACUIAuthButtonConfiguration.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LACUIAuthButtonConfiguration.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LACUIAuthButtonConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LACUIAuthButtonConfiguration.text.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LACUIAuthButtonConfiguration.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t LACUIAuthButtonConfiguration.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return outlined copy of LACUIAuthImageConfiguration?(v2, v3, v4);
}

uint64_t LACUIAuthButtonConfiguration.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of LACUIAuthImageConfiguration?(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t LACUIAuthButtonConfiguration.init(title:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = -1;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  result = (*(v9 + 8))(v12, v8);
  *a4 = v14;
  *(a4 + 8) = v16;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 65) = v13;
  return result;
}

BOOL specialized static LACUIAuthButtonConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v21 = *(a1 + 65);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v22 = *(a1 + 48);
  v23 = *(a2 + 48);
  v24 = *(a2 + 56);
  v25 = *(a1 + 56);
  v11 = *(a2 + 64);
  v20 = *(a2 + 65);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v3 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    v12 = v6;
    if (v6 == 255)
    {
      v13 = v22;
      v14 = v25;
      outlined copy of LACUIAuthImageConfiguration?(v22, v25, 255);
      if (v11 == 255)
      {
        outlined copy of LACUIAuthImageConfiguration?(v23, v24, 255);
        outlined consume of LACUIAuthImageConfiguration?(v22, v25, 255);
        return v21 == v20;
      }

      v15 = v11;
      v19 = v23;
      v18 = v24;
      outlined copy of LACUIAuthImageConfiguration?(v23, v24, v15);
    }

    else
    {
      v13 = v22;
      v14 = v25;
      v28[0] = v22;
      v28[1] = v25;
      v29 = v6;
      v15 = v11;
      if (v11 != 255)
      {
        v26[0] = v23;
        v26[1] = v24;
        v27 = v11 & 1;
        outlined copy of LACUIAuthImageConfiguration?(v22, v25, v12);
        outlined copy of LACUIAuthImageConfiguration?(v23, v24, v11);
        outlined copy of LACUIAuthImageConfiguration?(v22, v25, v12);
        v16 = specialized static LACUIAuthImageConfiguration.== infix(_:_:)(v28, v26);
        outlined consume of LACUIAuthImageConfiguration();
        outlined consume of LACUIAuthImageConfiguration();
        outlined consume of LACUIAuthImageConfiguration?(v22, v25, v12);
        if ((v16 & 1) == 0)
        {
          return 0;
        }

        return v21 == v20;
      }

      outlined copy of LACUIAuthImageConfiguration?(v22, v25, v12);
      v19 = v23;
      v18 = v24;
      outlined copy of LACUIAuthImageConfiguration?(v23, v24, 255);
      outlined copy of LACUIAuthImageConfiguration?(v22, v25, v12);
      outlined consume of LACUIAuthImageConfiguration();
    }

    outlined consume of LACUIAuthImageConfiguration?(v13, v14, v12);
    outlined consume of LACUIAuthImageConfiguration?(v19, v18, v15);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type LACUIAuthButtonStyle and conformance LACUIAuthButtonStyle()
{
  result = lazy protocol witness table cache variable for type LACUIAuthButtonStyle and conformance LACUIAuthButtonStyle;
  if (!lazy protocol witness table cache variable for type LACUIAuthButtonStyle and conformance LACUIAuthButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIAuthButtonStyle and conformance LACUIAuthButtonStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAuthButtonStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LACUIAuthButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LACUIAuthButtonConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t storeEnumTagSinglePayload for LACUIAuthButtonConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GlassGroup.body.getter@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v35 = a2;
  v37 = a5;
  v33 = *(a3 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for _GlassEffectContainer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = type metadata accessor for _ConditionalContent();
  v36 = *(v21 - 8);
  v22 = *(v36 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v32 - v23;
  v25 = static Solarium.isEnabled.getter();
  if (v25)
  {
    MEMORY[0x28223BE20](v25);
    *(&v32 - 4) = a3;
    *(&v32 - 3) = a4;
    v26 = v35;
    *(&v32 - 2) = v34;
    *(&v32 - 1) = v26;
    _GlassEffectContainer.init(smoothness:content:)();
    WitnessTable = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v18, v13, WitnessTable);
    v28 = *(v14 + 8);
    v28(v18, v13);
    static ViewBuilder.buildExpression<A>(_:)(v20, v13, WitnessTable);
    static ViewBuilder.buildEither<A, B>(first:)(v18, v13);
    v28(v18, v13);
    v28(v20, v13);
  }

  else
  {
    v34();
    static ViewBuilder.buildExpression<A>(_:)(v10, a3, a4);
    v29 = *(v33 + 8);
    v29(v10, a3);
    static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(v10, v13, a3);
    v29(v10, a3);
    v29(v12, a3);
  }

  v38 = swift_getWitnessTable();
  v39 = a4;
  v30 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v24, v21, v30);
  return (*(v36 + 8))(v24, v21);
}

uint64_t closure #1 in GlassGroup.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  v11();
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a4);
  v14 = *(v6 + 8);
  v14(v10, a3);
  static ViewBuilder.buildExpression<A>(_:)(v13, a3, a4);
  return (v14)(v13, a3);
}

uint64_t type metadata instantiation function for GlassGroup()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2560B04F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _GlassEffectContainer();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t LACUILockView_SwiftUI.viewModel.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void LACUILockView_SwiftUI.$viewModel.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for LACUILockViewModel();
  lazy protocol witness table accessor for type LACUILockViewModel and conformance LACUILockViewModel();

  JUMPOUT(0x259C58460);
}

unint64_t lazy protocol witness table accessor for type LACUILockViewModel and conformance LACUILockViewModel()
{
  result = lazy protocol witness table cache variable for type LACUILockViewModel and conformance LACUILockViewModel;
  if (!lazy protocol witness table cache variable for type LACUILockViewModel and conformance LACUILockViewModel)
  {
    type metadata accessor for LACUILockViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUILockViewModel and conformance LACUILockViewModel);
  }

  return result;
}

uint64_t LACUILockView_SwiftUI.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LACUILockViewModel();
  lazy protocol witness table accessor for type LACUILockViewModel and conformance LACUILockViewModel();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void LACUILockView_SwiftUI.updateUIView<A>(_:context:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  LACUILockView_SwiftUI.updateView<A>(_:context:)(a1);
}

void LACUILockView_SwiftUI.updateView<A>(_:context:)(void *a1)
{
  v3 = *(v1 + 8);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(*v3 + 96);
    v12 = a1;

    v8 = v6(v7);

    [v5 setState_];
    v9 = *(*v3 + 144);

    v11 = v9(v10);

    [v5 setColor_];
  }
}

id LACUILockView_SwiftUI.makeUIView(context:)()
{
  v0 = objc_allocWithZone(LACUILockView);

  return [v0 init];
}

unint64_t instantiation function for generic protocol witness table for LACUILockView_SwiftUI(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI()
{
  result = lazy protocol witness table cache variable for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI;
  if (!lazy protocol witness table cache variable for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI;
  if (!lazy protocol witness table cache variable for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance LACUILockView_SwiftUI()
{
  v0 = objc_allocWithZone(LACUILockView);

  return [v0 init];
}

void protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance LACUILockView_SwiftUI(void *a1)
{
  v3 = *(v1 + 8);
  v4 = [a1 setState_];
  v5 = (*(*v3 + 144))(v4);
  [a1 setColor_];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LACUILockView_SwiftUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LACUILockView_SwiftUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance LACUILockView_SwiftUI()
{
  lazy protocol witness table accessor for type LACUILockView_SwiftUI and conformance LACUILockView_SwiftUI();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_2560B0B68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

uint64_t specialized static LACUIAuthState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LACUIAuthState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI14LACUIAuthStateO_ACtMd, &_s25LocalAuthenticationCoreUI14LACUIAuthStateO_ACtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of LACUIAuthState(a1, &v22 - v16);
  outlined init with copy of LACUIAuthState(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    outlined init with copy of LACUIAuthState(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      outlined init with take of LACUIAuthCountdownConfiguration(&v17[v18], v8);
      v20 = specialized static LACUIAuthCountdownConfiguration.== infix(_:_:)(v12, v8);
      outlined destroy of LACUIAuthCountdownConfiguration(v8, type metadata accessor for LACUIAuthCountdownConfiguration);
      outlined destroy of LACUIAuthCountdownConfiguration(v12, type metadata accessor for LACUIAuthCountdownConfiguration);
      outlined destroy of LACUIAuthCountdownConfiguration(v17, type metadata accessor for LACUIAuthState);
      return v20 & 1;
    }

    outlined destroy of LACUIAuthCountdownConfiguration(v12, type metadata accessor for LACUIAuthCountdownConfiguration);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of (LACUIAuthState, LACUIAuthState)(v17);
    v20 = 0;
    return v20 & 1;
  }

  outlined destroy of LACUIAuthCountdownConfiguration(v17, type metadata accessor for LACUIAuthState);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_2560B0E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2560B0EE4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for LACUIAuthState()
{
  result = type metadata singleton initialization cache for LACUIAuthState;
  if (!type metadata singleton initialization cache for LACUIAuthState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACUIAuthState()
{
  v0 = type metadata accessor for LACUIAuthCountdownConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t outlined destroy of (LACUIAuthState, LACUIAuthState)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI14LACUIAuthStateO_ACtMd, &_s25LocalAuthenticationCoreUI14LACUIAuthStateO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of LACUIAuthCountdownConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicStack.init(spacing:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v6 = *(type metadata accessor for DynamicStack() + 40);
  *(a5 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DynamicStack.spacing.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t DynamicStack.spacing.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DynamicStack.content.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DynamicStack.content.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DynamicStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  v5 = type metadata accessor for Group();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v19[4] = v3;
  v19[5] = v4;
  v20 = v2;
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v22 = WitnessTable;
  v23 = v14;
  v15 = swift_getWitnessTable();
  Group<A>.init(content:)();
  v21 = v15;
  v16 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v5, v16);
  v17 = *(v6 + 8);
  v17(v10, v5);
  static ViewBuilder.buildExpression<A>(_:)(v12, v5, v16);
  return (v17)(v12, v5);
}

uint64_t closure #1 in DynamicStack.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = type metadata accessor for HStack();
  v65 = *(v5 - 8);
  v6 = *(v65 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v57 - v10;
  MEMORY[0x28223BE20](v9);
  v63 = &v57 - v11;
  v12 = type metadata accessor for VStack();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v59 = &v57 - v18;
  v19 = type metadata accessor for DynamicTypeSize();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v57 - v25;
  v27 = type metadata accessor for _ConditionalContent();
  v68 = *(v27 - 8);
  v69 = v27;
  v28 = *(v68 + 64);
  MEMORY[0x28223BE20](v27);
  v66 = a2;
  v67 = &v57 - v29;
  v30 = a1 + *(type metadata accessor for DynamicStack() + 40);
  specialized Environment.wrappedValue.getter(v26);
  (*(v20 + 104))(v24, *MEMORY[0x277CDFA10], v19);
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize();
  LOBYTE(v30) = dispatch thunk of static Comparable.< infix(_:_:)();
  v31 = *(v20 + 8);
  v31(v24, v19);
  v31(v26, v19);
  v32 = static Solarium.isEnabled.getter();
  if (v30)
  {
    if (v32)
    {
      static HorizontalAlignment.leading.getter();
    }

    else
    {
      static HorizontalAlignment.center.getter();
    }

    v33 = v67;
    v34 = *a1;
    v35 = *(a1 + 8);
    v36 = a1[2];
    v37 = a1[3];
    v38 = v58;
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable();
    v40 = v59;
    static ViewBuilder.buildExpression<A>(_:)(v38, v12, WitnessTable);
    v41 = *(v62 + 8);
    v41(v38, v12);
    v42 = v60;
    static ViewBuilder.buildExpression<A>(_:)(v40, v12, WitnessTable);
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(v42, v12);
    v41(v42, v12);
    v41(v40, v12);
  }

  else
  {
    if (v32)
    {
      static VerticalAlignment.top.getter();
    }

    else
    {
      static VerticalAlignment.center.getter();
    }

    v33 = v67;
    v43 = *a1;
    v44 = *(a1 + 8);
    v45 = a1[2];
    v46 = a1[3];
    v47 = v61;
    HStack.init(alignment:spacing:content:)();
    v48 = swift_getWitnessTable();
    v49 = v63;
    static ViewBuilder.buildExpression<A>(_:)(v47, v5, v48);
    v50 = *(v65 + 8);
    v50(v47, v5);
    v51 = v64;
    static ViewBuilder.buildExpression<A>(_:)(v49, v5, v48);
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(v51, v12, v5);
    v50(v51, v5);
    v50(v49, v5);
  }

  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v71 = v52;
  v72 = v53;
  v54 = v69;
  v55 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v33, v54, v55);
  return (*(v68 + 8))(v33, v54);
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

void type metadata completion function for DynamicStack()
{
  type metadata accessor for CGFloat?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<DynamicTypeSize>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2560B1CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2560B1D78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata accessor for CGFloat?()
{
  if (!lazy cache variable for type metadata for CGFloat?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CGFloat?);
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for Environment<DynamicTypeSize>()
{
  if (!lazy cache variable for type metadata for Environment<DynamicTypeSize>)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<DynamicTypeSize>);
    }
  }
}

uint64_t sub_2560B1F20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize()
{
  result = lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize;
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }

  return result;
}

__n128 LACUIAuthCountdownItemView.init(configuration:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u8[0];
  v4 = a1[2].n128_u64[1];
  v5 = a1[3].n128_u64[0];
  a2->n128_u64[0] = a1->n128_u64[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u8[0] = v3;
  a2[2].n128_u64[1] = v4;
  a2[3].n128_u64[0] = v5;
  return result;
}

uint64_t LACUIAuthCountdownItemView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[5];
  v8 = v1[6];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  outlined copy of LACUIAuthImageConfiguration();
}

uint64_t LACUIAuthCountdownItemView.body.getter()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8 - 8];
  v10 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v10;
  v17[2] = *(v0 + 32);
  v18 = *(v0 + 48);
  v11 = swift_allocObject();
  v12 = *(v0 + 16);
  *(v11 + 16) = *v0;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v0 + 32);
  *(v11 + 64) = *(v0 + 48);
  *v9 = 0;
  v9[8] = 1;
  *(v9 + 2) = partial apply for closure #1 in LACUIAuthCountdownItemView.body.getter;
  *(v9 + 3) = v11;
  v13 = *(v6 + 40);
  *&v9[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of LACUIAuthCountdownItemView(v17, v16);
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>)>> and conformance DynamicStack<A>, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v5, v1);
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v9, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
}

uint64_t closure #1 in LACUIAuthCountdownItemView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v64 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
  v7 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v9 = &v64 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMR);
  v10 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v71 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v67 = &v64 - v21;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v68 = *(a1 + 48);
  v69 = v25;
  if (v24)
  {

    v26 = Image.init(_internalSystemName:)();
  }

  else
  {
    v27 = one-time initialization token for current;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = static NSBundle.current;
    v26 = Image.init(_:bundle:)();
  }

  v29 = v26;
  v30 = &v6[*(v3 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v32 = type metadata accessor for SymbolRenderingMode();
  (*(*(v32 - 8) + 56))(v30 + v31, 0, 1, v32);
  *v30 = swift_getKeyPath();
  *v6 = v29;
  *(v6 + 1) = 0;
  *(v6 + 8) = 1;
  v33 = static Color.accentColor.getter();
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v6, v9, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMR);
  *&v9[*(v66 + 36)] = v33;
  v34 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v9, v12, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
  v36 = &v12[*(v65 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v12, v16, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMR);
  v37 = &v16[*(v13 + 36)];
  v38 = v101;
  v39 = v103;
  *(v37 + 4) = v102;
  *(v37 + 5) = v39;
  *(v37 + 6) = v104;
  v40 = v99;
  *v37 = v98;
  *(v37 + 1) = v40;
  *(v37 + 2) = v100;
  *(v37 + 3) = v38;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v41 = v67;
  View.accessibilityHidden(_:)();
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v16, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMR);
  v42 = swift_getKeyPath();
  v66 = v42;
  v43 = v68;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v95[55] = v108;
  *&v95[71] = v109;
  *&v95[87] = v110;
  *&v95[103] = v111;
  *&v95[7] = v105;
  *&v95[23] = v106;
  v96 = 0;
  *&v95[39] = v107;
  v44 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v97 = 0;
  v53 = v71;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v41, v71, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMR);
  v54 = v70;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v53, v70, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMR);
  v55 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VG_ACyACyACyAA4TextVAJyAA0X9AlignmentOGGA0_GAA08_PaddingH0VGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VG_ACyACyACyAA4TextVAJyAA0X9AlignmentOGGA0_GAA08_PaddingH0VGtMR) + 48));
  v56 = v69;
  *&v72 = v69;
  *(&v72 + 1) = v43;
  LOBYTE(v73) = 0;
  *(&v73 + 1) = MEMORY[0x277D84F90];
  *&v74[0] = v42;
  BYTE8(v74[0]) = 0;
  *(&v74[4] + 9) = *&v95[64];
  *(&v74[5] + 9) = *&v95[80];
  *(&v74[6] + 9) = *&v95[96];
  *(&v74[7] + 1) = *&v95[111];
  *(v74 + 9) = *v95;
  *(&v74[1] + 9) = *&v95[16];
  *(&v74[2] + 9) = *&v95[32];
  *(&v74[3] + 9) = *&v95[48];
  LOBYTE(v75) = v44;
  *(&v75 + 1) = v46;
  *&v76[0] = v48;
  *(&v76[0] + 1) = v50;
  *&v76[1] = v52;
  BYTE8(v76[1]) = 0;
  v57 = v74[1];
  v55[2] = v74[0];
  v55[3] = v57;
  v58 = v74[5];
  v55[6] = v74[4];
  v55[7] = v58;
  v59 = v74[3];
  v55[4] = v74[2];
  v55[5] = v59;
  v60 = v74[7];
  v55[8] = v74[6];
  v55[9] = v60;
  v61 = v73;
  *v55 = v72;
  v55[1] = v61;
  *(v55 + 185) = *(v76 + 9);
  v62 = v76[0];
  v55[10] = v75;
  v55[11] = v62;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v72, v77, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v41, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMR);
  v86 = *&v95[64];
  v87 = *&v95[80];
  *v88 = *&v95[96];
  v82 = *v95;
  v83 = *&v95[16];
  v84 = *&v95[32];
  v77[0] = v56;
  v77[1] = v43;
  v78 = 0;
  v79 = MEMORY[0x277D84F90];
  v80 = v66;
  v81 = 0;
  *&v88[15] = *&v95[111];
  v85 = *&v95[48];
  v89 = v44;
  v90 = v46;
  v91 = v48;
  v92 = v50;
  v93 = v52;
  v94 = 0;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v77, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMR);
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v53, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGAA023AccessibilityAttachmentL0VGMR);
}

uint64_t protocol witness for View.body.getter in conformance LACUIAuthCountdownItemView()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8 - 8];
  v10 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v10;
  v17[2] = *(v0 + 32);
  v18 = *(v0 + 48);
  v11 = swift_allocObject();
  v12 = *(v0 + 16);
  *(v11 + 16) = *v0;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v0 + 32);
  *(v11 + 64) = *(v0 + 48);
  *v9 = 0;
  v9[8] = 1;
  *(v9 + 2) = closure #1 in LACUIAuthCountdownItemView.body.getterpartial apply;
  *(v9 + 3) = v11;
  v13 = *(v6 + 40);
  *&v9[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of LACUIAuthCountdownItemView(v17, v16);
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>)>> and conformance DynamicStack<A>, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v5, v1);
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v9, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
}

uint64_t sub_2560B2CE0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>)>> and conformance DynamicStack<A>, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGAD023AccessibilityAttachmentS0VG_AHyAHyAHyAD4TextVAOyAD13TextAlignmentOGGA5_GAD08_PaddingO0VGtGGMR);
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  outlined consume of LACUIAuthImageConfiguration();
  v5 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.symbolRenderingMode : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(a1, &v6 - v4, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_2560B31C8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t LACUIDTOViewController.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v8 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LACUIAuthCountdownView();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v27 - v18);
  v20 = objc_allocWithZone(v4);
  *&v20[direct field offset for LACUIDTOViewController.handler + 8] = 0;
  swift_unknownObjectWeakInit();
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOcTm_0(a1, v11, type metadata accessor for LACUIAuthCountdownConfiguration);
  v21 = type metadata accessor for LACUIAuthCountdownViewModel();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  LACUIAuthCountdownViewModel.init(configuration:handler:)(v11, a2, a3);
  *(v19 + *(v13 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel();
  *v19 = ObservedObject.init(wrappedValue:)();
  v19[1] = v24;
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOcTm_0(v19, v17, type metadata accessor for LACUIAuthCountdownView);
  v25 = UIHostingController.init(rootView:)();
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOhTm_0(v28, type metadata accessor for LACUIAuthCountdownConfiguration);
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOhTm_0(v19, type metadata accessor for LACUIAuthCountdownView);
  *(v25 + direct field offset for LACUIDTOViewController.handler + 8) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v25;
}

uint64_t LACUIDTOViewController.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LACUIAuthCountdownView();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v25 - v17);
  *(v3 + direct field offset for LACUIDTOViewController.handler + 8) = 0;
  swift_unknownObjectWeakInit();
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOcTm_0(a1, v10, type metadata accessor for LACUIAuthCountdownConfiguration);
  v19 = type metadata accessor for LACUIAuthCountdownViewModel();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  LACUIAuthCountdownViewModel.init(configuration:handler:)(v10, a2, a3);
  *(v18 + *(v12 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel();
  *v18 = ObservedObject.init(wrappedValue:)();
  v18[1] = v22;
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOcTm_0(v18, v16, type metadata accessor for LACUIAuthCountdownView);
  v23 = UIHostingController.init(rootView:)();
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOhTm_0(a1, type metadata accessor for LACUIAuthCountdownConfiguration);
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOhTm_0(v18, type metadata accessor for LACUIAuthCountdownView);
  *(v23 + direct field offset for LACUIDTOViewController.handler + 8) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v23;
}

id LACUIDTOViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LACUIDTOViewController.init(coder:)()
{
  *(v0 + direct field offset for LACUIDTOViewController.handler + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc LACUIDTOViewController.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for LACUIDTOViewController.handler + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t LACUIDTOViewController.refresh(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOcTm_0(a1, v7, type metadata accessor for LACUIAuthCountdownConfiguration);
  v8 = v2 + direct field offset for LACUIDTOViewController.handler;
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 8);
  v11 = type metadata accessor for LACUIAuthCountdownViewModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = LACUIAuthCountdownViewModel.init(configuration:handler:)(v7, Strong, v10);
  v15 = dispatch thunk of UIHostingController.rootView.modify();
  v17 = *(v16 + 8);
  *(v16 + 8) = v14;

  return v15(v19, 0);
}

id LACUIDTOViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIDTOViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel()
{
  result = lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel;
  if (!lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel)
  {
    type metadata accessor for LACUIAuthCountdownViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel);
  }

  return result;
}

uint64_t _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LACUIDTOViewController()
{
  result = type metadata singleton initialization cache for LACUIDTOViewController;
  if (!type metadata singleton initialization cache for LACUIDTOViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t View.embedInGlassGroup()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v6 + 32))(v11 + v10, v8, a1);
  result = GlassGroup.init(content:)(partial apply for closure #1 in View.embedInGlassGroup(), v11, a1, a2);
  *a3 = result;
  a3[1] = v13;
  return result;
}

uint64_t View.embedInNavigationStack(if:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v34) = a1;
  v37 = a4;
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  type metadata accessor for NavigationPath();
  v38 = a3;
  v13 = type metadata accessor for NavigationStack();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = type metadata accessor for _ConditionalContent();
  v36 = *(v21 - 8);
  v22 = *(v36 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v33 - v24;
  if (v34)
  {
    MEMORY[0x28223BE20](v23);
    v34 = v21;
    v26 = v38;
    *(&v33 - 4) = a2;
    *(&v33 - 3) = v26;
    *(&v33 - 2) = WitnessTable;
    NavigationStack.init<>(root:)();
    WitnessTable = swift_getWitnessTable();
    v27 = v14[2];
    v27(v20, v18, v13);
    v28 = v14[1];
    v28(v18, v13);
    v27(v18, v20, v13);
    v21 = v34;
    static ViewBuilder.buildEither<A, B>(first:)(v18, v13);
    v28(v18, v13);
    v28(v20, v13);
  }

  else
  {
    v29 = v6[2];
    v29(v12, WitnessTable, a2);
    v29(v10, v12, a2);
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(v10, v13, a2);
    v30 = v6[1];
    v30(v10, a2);
    v30(v12, a2);
  }

  v39 = swift_getWitnessTable();
  v40 = v38;
  swift_getWitnessTable();
  v31 = v36;
  (*(v36 + 16))(v37, v25, v21);
  return (*(v31 + 8))(v25, v21);
}

uint64_t EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  result = (*(v7 + 32))(v12 + v11, v10, v6);
  *a3 = partial apply for closure #1 in EmbedInScrollViewIfNeededModifier.body(content:);
  a3[1] = v12;
  return result;
}

uint64_t closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for ScrollBounceBehavior();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy023LocalAuthenticationCoreB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMd, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy023LocalAuthenticationCoreB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18[-v14];
  v18[16] = a2;
  v19 = a3;
  v20 = a1;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>();
  v16 = ScrollView.init(_:showsIndicators:content:)();
  MEMORY[0x259C58800](v16);
  LOBYTE(a1) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != a1)
  {
    Axis.Set.init(rawValue:)();
  }

  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<_ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy023LocalAuthenticationCoreB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMd, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy023LocalAuthenticationCoreB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMR);
  View.scrollBounceBehavior(_:axes:)();
  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #1 in closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrollg8IfNeededH0VGAA16_FlexFrameLayoutVGAM_GMd, _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrollg8IfNeededH0VGAA16_FlexFrameLayoutVGAM_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  if (a1)
  {
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
    (*(*(v15 - 8) + 16))(v12, a2, v15);
    v16 = &v12[*(v8 + 36)];
    v17 = v22[6];
    *(v16 + 4) = v22[5];
    *(v16 + 5) = v17;
    *(v16 + 6) = v22[7];
    v18 = v22[2];
    *v16 = v22[1];
    *(v16 + 1) = v18;
    v19 = v22[4];
    *(v16 + 2) = v22[3];
    *(v16 + 3) = v19;
    outlined init with take of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(v12, v14);
    outlined init with copy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(v14, v7);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(v14);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
    (*(*(v21 - 8) + 16))(v7, a2, v21);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance EmbedInScrollViewIfNeededModifier@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = *v2;
  (*(v6 + 16))(&v14 - v8, a1, v5);
  v11 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  result = (*(v6 + 32))(v12 + v11, v9, v5);
  *a2 = closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)partial apply;
  a2[1] = v12;
  return result;
}

uint64_t sub_2560B4C8C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t closure #1 in View.embedInGlassGroup()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t getEnumTagSinglePayload for EmbedInScrollViewIfNeededModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2560B4F84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier();
  return swift_getWitnessTable();
}

uint64_t sub_2560B4FE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for GlassGroup();

  return swift_getWitnessTable();
}

uint64_t sub_2560B5030(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NavigationPath();
  type metadata accessor for NavigationStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t objectdestroy_2Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)(a1, v4, v5);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy023LocalAuthenticationCoreB0013EmbedInScrollc8IfNeededD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy023LocalAuthenticationCoreB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}