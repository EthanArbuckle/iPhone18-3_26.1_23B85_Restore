void sub_193670AE0()
{
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingLocation();
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v17, (v0 + v4), sizeof(v17));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v19, __src, 0x60uLL);
  sub_19365A098(v19);
  memcpy(v20, v17, 0x60uLL);
  sub_19365A098(v20);
  if (v5)
  {
    if (v1)
    {
      return;
    }
  }

  else
  {
    memcpy(v17, (v2 + v4), sizeof(v17));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v17, v15);
    OUTLINED_FUNCTION_34_28();
    if (v1)
    {
      memcpy(v15, __src, sizeof(v15));
      sub_19365A098(v15);
      return;
    }

    memcpy(v15, __src, sizeof(v15));
    sub_19365A098(v15);
  }

  v6 = (v2 + v3[8]);
  if (*v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[1] == 0xE000000000000000;
  }

  if (!v7 && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7();
  }

  v8 = (v2 + v3[9]);
  if ((*v8 || v8[1] != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7();
  }

  v9 = (v2 + v3[10]);
  if ((*v9 || v9[1] != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7();
  }

  memcpy(v20, (v2 + v3[11]), sizeof(v20));
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v20) != 1)
  {
    memcpy(v19, v20, sizeof(v19));
    OUTLINED_FUNCTION_34_28();
  }

  v10 = v2 + v3[12];
  if ((*(v10 + 16) & 1) == 0)
  {
    v20[0] = *v10;
    OUTLINED_FUNCTION_34_28();
  }

  v11 = (v2 + v3[13]);
  v12 = v11[1];
  if (v12 != 1)
  {
    *&v20[0] = *v11;
    *(&v20[0] + 1) = v12;
    OUTLINED_FUNCTION_34_28();
  }

  v13 = (v2 + v3[14]);
  if (v13[1])
  {
    v14 = *v13;
    OUTLINED_FUNCTION_4_7();
  }
}

uint64_t sub_193670E64()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABA98);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_193951270;
  v7 = v6 + v5;
  v8 = v6 + v5 + dword_1EAEABAD0;
  *(v6 + v5) = 1;
  *v8 = "combinedAddress";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_0_0(v13, "street");
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v17 = 3;
  *v16 = "city";
  *(v16 + 8) = 4;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v18 = OUTLINED_FUNCTION_3_1(v7 + 3 * v3);
  *v19 = 4;
  v20 = OUTLINED_FUNCTION_0_0(v18, "subLocality");
  (v12)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v7 + 4 * v3);
  *v22 = 5;
  v23 = OUTLINED_FUNCTION_0_0(v21, "administrativeArea");
  (v12)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v7 + 5 * v3);
  *v25 = 6;
  v26 = OUTLINED_FUNCTION_0_0(v24, "subAdministrativeArea");
  (v12)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v7 + 6 * v3);
  *v28 = 7;
  v29 = OUTLINED_FUNCTION_0_0(v27, "postalCode");
  (v12)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v7 + 7 * v3);
  *v31 = 8;
  *v30 = "country";
  *(v30 + 8) = 7;
  *(v30 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v32 = OUTLINED_FUNCTION_3_1(v7 + 8 * v3);
  *v33 = 9;
  *v32 = "countryCode";
  *(v32 + 8) = 11;
  *(v32 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

uint64_t sub_193671154()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193671210()
{
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v18 = v0[8];
  v19 = v0[9];
  v16 = v0[10];
  v17 = v0[11];
  v14 = v0[12];
  v15 = v0[13];
  v12 = v0[14];
  v13 = v0[15];
  v10 = v0[16];
  v11 = v0[17];
  if (v0[1])
  {
    v8 = *v0;
    result = OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v4)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v5)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v7)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v19)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v17)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v15)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v13)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v11)
    {
      return OUTLINED_FUNCTION_181();
    }
  }

  return result;
}

uint64_t sub_1936713E0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABAB0);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBE0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEABAE8;
  *v7 = 1;
  *v8 = "latitude";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 2;
  *v13 = "longitude";
  *(v13 + 8) = 9;
  *(v13 + 16) = 2;
  v12();
  return sub_19393C410();
}

uint64_t sub_193671588()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v20 = OUTLINED_FUNCTION_21_33();
      v0[1] = OUTLINED_FUNCTION_24_32(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    }

    else if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_21_33();
      *v0 = OUTLINED_FUNCTION_24_32(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v36, v37);
    }
  }

  return result;
}

uint64_t sub_19367161C()
{
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = sub_19393C3B0();
    if (v1)
    {
      return result;
    }
  }

  if (v2 != 0.0)
  {
    return sub_19393C3B0();
  }

  return result;
}

uint64_t sub_193671704()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABAC8);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FAC0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "airportCode";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  (*(v8 + 104))(v5, v6);
  return sub_19393C410();
}

uint64_t sub_193671860()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_19393C200();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_33()
{

  return sub_19393C1E0();
}

uint64_t TextUnderstandingLocation.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingLocation();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingLocation()
{
  result = qword_1ED50D180;
  if (!qword_1ED50D180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingLocation.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingLocation();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingLocation.documentIdentifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingLocation() + 28);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x60uLL);
  return sub_19365A03C(__dst, &v4);
}

void *TextUnderstandingLocation.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_53() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingLocation.name.getter()
{
  v0 = type metadata accessor for TextUnderstandingLocation();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for TextUnderstandingLocation();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.category.getter()
{
  v0 = type metadata accessor for TextUnderstandingLocation();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.category.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for TextUnderstandingLocation();
  result = OUTLINED_FUNCTION_201(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.algorithm.getter()
{
  v0 = type metadata accessor for TextUnderstandingLocation();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.algorithm.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for TextUnderstandingLocation();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.address.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingLocation() + 44);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x90uLL);
  return sub_19344865C(__dst, &v4, &qword_1EAE3FBB0, &qword_193977F08);
}

void *TextUnderstandingLocation.address.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_53() + 44);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_193671F04(v4);
  return memcpy((v1 + v2), v0, 0x90uLL);
}

uint64_t sub_193671F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBB0, &qword_193977F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_193671FA8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

__n128 TextUnderstandingLocation.coordinates.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for TextUnderstandingLocation() + 48));
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u8[0] = v3;
  return result;
}

uint64_t TextUnderstandingLocation.coordinates.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for TextUnderstandingLocation();
  v6 = v1 + *(result + 48);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t TextUnderstandingLocation.metadata.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for TextUnderstandingLocation() + 52));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_19350CB08(v3, v4);
}

uint64_t TextUnderstandingLocation.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TextUnderstandingLocation() + 52));
  result = sub_193456418(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TextUnderstandingLocation.timeZoneIdentifier.getter()
{
  v0 = type metadata accessor for TextUnderstandingLocation();
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for TextUnderstandingLocation();
  result = OUTLINED_FUNCTION_201(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.combinedAddress.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.combinedAddress.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.street.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.street.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.city.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.city.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.subLocality.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.administrativeArea.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.subAdministrativeArea.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.postalCode.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.country.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.country.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.countryCode.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Address.countryCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t static TextUnderstandingLocation.Address.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v14 = a1[11];
  v13 = a1[12];
  v15 = a1[13];
  v115 = a1[14];
  v119 = a1[15];
  v16 = a1[16];
  v118 = a1[17];
  v17 = a2[1];
  v121 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  v21 = a2[5];
  v20 = a2[6];
  v23 = a2[7];
  v22 = a2[8];
  v25 = a2[9];
  v24 = a2[10];
  v27 = a2[11];
  v26 = a2[12];
  v28 = a2[13];
  v116 = a2[14];
  v120 = a2[15];
  v114 = a2[16];
  v117 = a2[17];
  if (v3)
  {
    if (!v17)
    {
      return 0;
    }

    v113 = a1[2];
    if (*a1 != *a2 || v3 != v17)
    {
      v110 = a2[9];
      v111 = a2[10];
      v101 = a2[7];
      v92 = a1[16];
      v94 = a2[5];
      v30 = a1[12];
      v97 = a1[5];
      v98 = a2[6];
      v31 = a1[13];
      v32 = a2[13];
      v90 = a2[12];
      v91 = a1[8];
      v33 = a1[10];
      v95 = a1[4];
      v34 = a1[11];
      v104 = a1[6];
      v107 = a2[8];
      v35 = a2[11];
      v36 = a1[9];
      v37 = sub_19393CA30();
      v25 = v110;
      v24 = v111;
      v11 = v36;
      v26 = v90;
      v9 = v91;
      v27 = v35;
      v7 = v104;
      v22 = v107;
      v14 = v34;
      v12 = v33;
      v28 = v32;
      v20 = v98;
      v23 = v101;
      v15 = v31;
      v5 = v95;
      v8 = v97;
      v13 = v30;
      v16 = v92;
      v21 = v94;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v113 = a1[2];
    if (v17)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v113 != v121 || v6 != v18)
    {
      v105 = v7;
      v93 = v16;
      v39 = v13;
      v40 = v15;
      v102 = v10;
      v41 = v28;
      v42 = v26;
      v99 = v20;
      v43 = v12;
      v96 = v5;
      v44 = v14;
      sub_19393CA30();
      OUTLINED_FUNCTION_7_35();
      v19 = v45;
      v14 = v44;
      v5 = v96;
      v12 = v43;
      v20 = v99;
      v26 = v42;
      v7 = v105;
      v28 = v41;
      v10 = v102;
      v15 = v40;
      v13 = v39;
      v16 = v93;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v5 != v19 || v8 != v21)
    {
      v106 = v7;
      v108 = v22;
      v48 = v16;
      v49 = v13;
      v50 = v15;
      v103 = v10;
      v51 = v28;
      v52 = v26;
      v100 = v20;
      v53 = v12;
      v54 = v14;
      sub_19393CA30();
      OUTLINED_FUNCTION_7_35();
      v14 = v54;
      v12 = v53;
      v20 = v100;
      v26 = v52;
      v28 = v51;
      v10 = v103;
      v7 = v106;
      v15 = v50;
      v13 = v49;
      v16 = v48;
      v22 = v108;
      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v10)
  {
    if (!v23)
    {
      return 0;
    }

    if (v7 != v20 || v10 != v23)
    {
      v109 = v22;
      v57 = v16;
      v58 = v13;
      v59 = v15;
      v60 = v28;
      v61 = v26;
      v62 = v12;
      v63 = v14;
      sub_19393CA30();
      OUTLINED_FUNCTION_7_35();
      v14 = v63;
      v12 = v62;
      v26 = v61;
      v28 = v60;
      v15 = v59;
      v13 = v58;
      v16 = v57;
      v22 = v109;
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v11)
  {
    if (!v25)
    {
      return 0;
    }

    if (v9 != v22 || v11 != v25)
    {
      v112 = v24;
      v66 = v16;
      v67 = v13;
      v68 = v15;
      v69 = v28;
      v70 = v26;
      v71 = v12;
      v72 = v14;
      v73 = v27;
      v74 = sub_19393CA30();
      v24 = v112;
      v27 = v73;
      v14 = v72;
      v12 = v71;
      v26 = v70;
      v28 = v69;
      v15 = v68;
      v13 = v67;
      v16 = v66;
      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v14)
  {
    if (!v27)
    {
      return 0;
    }

    if (v12 != v24 || v14 != v27)
    {
      v76 = v16;
      v77 = v13;
      v78 = v15;
      v79 = v28;
      v80 = v26;
      v81 = sub_19393CA30();
      v26 = v80;
      v28 = v79;
      v15 = v78;
      v13 = v77;
      v16 = v76;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v15)
  {
    if (!v28)
    {
      return 0;
    }

    if (v13 != v26 || v15 != v28)
    {
      v83 = v16;
      v84 = sub_19393CA30();
      v16 = v83;
      if ((v84 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (v119)
  {
    if (!v120)
    {
      return 0;
    }

    if (v115 != v116 || v119 != v120)
    {
      v86 = v16;
      v87 = sub_19393CA30();
      v16 = v86;
      if ((v87 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v120)
  {
    return 0;
  }

  if (v118)
  {
    if (v117)
    {
      v88 = v16 == v114 && v118 == v117;
      if (v88 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v117)
  {
    return 1;
  }

  return 0;
}

void TextUnderstandingLocation.Address.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v11 = v0[4];
  v12 = v0[6];
  v4 = v0[9];
  v13 = v0[8];
  v14 = v0[10];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[13];
  v15 = v0[14];
  v8 = v0[15];
  v16 = v0[16];
  v17 = v0[7];
  v18 = v0[17];
  if (v0[1])
  {
    v9 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v3)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_19393CAD0();
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_19393CAD0();
  sub_19393C640();
  if (v4)
  {
LABEL_9:
    sub_19393CAD0();
    sub_19393C640();
    goto LABEL_13;
  }

LABEL_12:
  sub_19393CAD0();
LABEL_13:
  if (v6)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v7)
    {
LABEL_15:
      sub_19393CAD0();
      sub_19393C640();
      if (v8)
      {
        goto LABEL_16;
      }

LABEL_22:
      sub_19393CAD0();
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_23:
      sub_19393CAD0();
      OUTLINED_FUNCTION_196();
      return;
    }
  }

  sub_19393CAD0();
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_19393CAD0();
  sub_19393C640();
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_17:
  sub_19393CAD0();
  OUTLINED_FUNCTION_196();

  sub_19393C640();
}

uint64_t TextUnderstandingLocation.Address.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  TextUnderstandingLocation.Address.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193672DB4()
{
  sub_19393CAB0();
  TextUnderstandingLocation.Address.hash(into:)();
  return sub_19393CB00();
}

IntelligencePlatformLibrary::TextUnderstandingLocation::Coordinates __swiftcall TextUnderstandingLocation.Coordinates.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t TextUnderstandingLocation.Coordinates.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193B18060](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x193B18060](*&v3);
}

uint64_t TextUnderstandingLocation.Coordinates.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x193B18060](*&v3);
  OUTLINED_FUNCTION_13_37();
  return sub_19393CB00();
}

uint64_t sub_193672F44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_19393CAB0();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x193B18060](*&v3);
  OUTLINED_FUNCTION_13_37();
  return sub_19393CB00();
}

uint64_t TextUnderstandingLocation.Metadata.airportCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.Metadata.airportCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::TextUnderstandingLocation::Metadata __swiftcall TextUnderstandingLocation.Metadata.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.airportCode.value._object = v2;
  result.airportCode.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static TextUnderstandingLocation.Metadata.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t TextUnderstandingLocation.Metadata.hash(into:)()
{
  if (!v0[1])
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingLocation.Metadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193673198()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t TextUnderstandingLocation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  TextUnderstandingLocation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193673248()
{
  sub_19393CAB0();
  TextUnderstandingLocation.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193673294()
{
  result = qword_1EAE3FC48;
  if (!qword_1EAE3FC48)
  {
    type metadata accessor for TextUnderstandingLocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FC48);
  }

  return result;
}

void sub_193673318()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED502F58);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED502F60);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED502C80);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED508290);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193673468(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 144))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1936734B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextUnderstandingLocation.Coordinates(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextUnderstandingLocation.Coordinates(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_19367358C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingNamedEntity.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TextUnderstandingNamedEntity();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1936737C8(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FC50, &qword_193978718);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FC50, &qword_193978718);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1936737C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingNamedEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingNamedEntity.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FC50, &qword_193978718);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19367396C(v10, a1);
  }

  return result;
}

uint64_t sub_19367396C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingNamedEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingNamedEntity.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_193674CB4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_19367396C(v14, v40);
      v33 = type metadata accessor for TextUnderstandingNamedEntity();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingNamedEntity.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingNamedEntity();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936737C8(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FC50, &qword_193978718);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FC50, &qword_193978718);
  return v15;
}

id static TextUnderstandingNamedEntity.columns.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(1701667182, 0xE400000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_54(result);
  v4 = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_22_15(v4, xmmword_193950B10);
  *(v5 + 16) = xmmword_193950B10;
  *(v5 + 32) = sub_19393C850();
  v6 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v7 = OUTLINED_FUNCTION_31_2();
  result = OUTLINED_FUNCTION_3_5(v7, 0xE800000000000000);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_54(result);
  v8 = swift_initStackObject();
  v9 = OUTLINED_FUNCTION_22_15(v8, xmmword_193950B10);
  *(v9 + 16) = xmmword_193950B10;
  *(v9 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v11 = OUTLINED_FUNCTION_30_2();
  result = sub_19343D150(v11, 0xE90000000000006DLL, 2, 0, v9, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_5_54(result);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19367401C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingNamedEntity() + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v21, (v3 + v8), sizeof(v21));
    sub_19365A03C(__dst, v23);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v23, v21, sizeof(v23));
    return sub_19365A098(v23);
  }

  v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v11 = *(type metadata accessor for TextUnderstandingNamedEntity() + 32);
LABEL_13:
    v12 = (v3 + v11);
    v14 = *v12;
    v13 = v12[1];
    v23[0] = v14;
    v23[1] = v13;
    return sub_1934948FC();
  }

  v15 = a1 == OUTLINED_FUNCTION_31_2() && a2 == 0xE800000000000000;
  if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v11 = *(type metadata accessor for TextUnderstandingNamedEntity() + 36);
    goto LABEL_13;
  }

  v17 = a1 == OUTLINED_FUNCTION_30_2() && a2 == v16;
  if (v17 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v11 = *(type metadata accessor for TextUnderstandingNamedEntity() + 40);
    goto LABEL_13;
  }

  sub_19349AB64();
  swift_allocError();
  v19 = v18;
  *v18 = a1;
  v18[1] = a2;
  v18[5] = type metadata accessor for TextUnderstandingNamedEntity();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19 + 2);
  sub_1936737C8(v3, boxed_opaque_existential_1Tm);
  *(v19 + 48) = 1;
  swift_willThrow();
}

void *TextUnderstandingNamedEntity.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingNamedEntity();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_193674CB4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  TextUnderstandingDocumentIdentifiers.init()(v10);
  result = memcpy(a1 + v2[7], v10, 0x60uLL);
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return result;
}

BOOL static TextUnderstandingNamedEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingNamedEntity();
  v5 = v4[7];
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = v4[7];
  memcpy(v20, (a2 + v6), sizeof(v20));
  memcpy(v17, (a2 + v6), sizeof(v17));
  sub_19365A03C(__dst, v22);
  sub_19365A03C(v20, v22);
  sub_19365AB48();
  LOBYTE(v6) = sub_19393C550();
  memcpy(v21, v17, sizeof(v21));
  sub_19365A098(v21);
  memcpy(v22, __src, sizeof(v22));
  sub_19365A098(v22);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_0_71(v4[8]);
    v9 = v9 && v7 == v8;
    if (v9 || (sub_19393CA30() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_71(v4[9]);
      v12 = v9 && v10 == v11;
      if (v12 || (sub_19393CA30() & 1) != 0)
      {
        OUTLINED_FUNCTION_0_71(v4[10]);
        v15 = v9 && v13 == v14;
        if (v15 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t TextUnderstandingNamedEntity.hash(into:)()
{
  v1 = type metadata accessor for TextUnderstandingNamedEntity();
  memcpy(v3, (v0 + v1[7]), sizeof(v3));
  sub_19365B174();
  sub_19393C540();
  OUTLINED_FUNCTION_1_57(v1[8]);
  OUTLINED_FUNCTION_1_57(v1[9]);
  return OUTLINED_FUNCTION_1_57(v1[10]);
}

uint64_t sub_19367452C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABAE0);
  __swift_project_value_buffer(v0, &qword_1EAEABAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentIdentifiers";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = *(*(sub_19393C400() - 8) + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v10 = (v5 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "category";
  *(v11 + 1) = 8;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v12 = (v5 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "algorithm";
  *(v13 + 1) = 9;
  v13[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  return sub_19393C410();
}

uint64_t sub_19367475C()
{
  v3 = v1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        __src = 0u;
        memset(v20, 0, sizeof(v20));
        sub_193498018();
        if (*(&__src + 1))
        {
          memcpy(&v17[1], v20, 0x50uLL);
          v17[0] = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v17);
        }

        v2 = *(type metadata accessor for TextUnderstandingNamedEntity() + 28);
        memcpy(__dst, (v0 + v2), sizeof(__dst));
        sub_19365A098(__dst);
        memcpy((v0 + v2), v17, 0x60uLL);
        break;
      case 2:
        OUTLINED_FUNCTION_11_6();
        v3 = 0;
        OUTLINED_FUNCTION_3_53();
        if (v7)
        {
          v14 = 0xE000000000000000;
        }

        else
        {
          v14 = v13;
        }

        v15 = (v0 + *(type metadata accessor for TextUnderstandingNamedEntity() + 32));
        v16 = v15[1];

        *v15 = v2;
        v15[1] = v14;
        break;
      case 3:
        OUTLINED_FUNCTION_11_6();
        v3 = 0;
        OUTLINED_FUNCTION_3_53();
        if (v7)
        {
          v8 = 0xE000000000000000;
        }

        else
        {
          v8 = v6;
        }

        v9 = *(type metadata accessor for TextUnderstandingNamedEntity() + 36);
        goto LABEL_15;
      case 4:
        OUTLINED_FUNCTION_11_6();
        v3 = 0;
        OUTLINED_FUNCTION_3_53();
        if (v7)
        {
          v8 = 0xE000000000000000;
        }

        else
        {
          v8 = v10;
        }

        v9 = *(type metadata accessor for TextUnderstandingNamedEntity() + 40);
LABEL_15:
        v11 = (v0 + v9);
        v12 = *(v0 + v9 + 8);

        *v11 = v2;
        v11[1] = v8;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193674964()
{
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingNamedEntity();
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v13, (v0 + v4), sizeof(v13));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v15, __src, sizeof(v15));
  sub_19365A098(v15);
  memcpy(v16, v13, sizeof(v16));
  result = sub_19365A098(v16);
  if (v5)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    memcpy(v13, (v2 + v4), sizeof(v13));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v13, v11);
    sub_193447600();
    if (v1)
    {
      memcpy(v11, __src, sizeof(v11));
      return sub_19365A098(v11);
    }

    memcpy(v11, __src, sizeof(v11));
    result = sub_19365A098(v11);
  }

  v7 = (v2 + v3[8]);
  if (*v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[1] == 0xE000000000000000;
  }

  if (!v8)
  {
    result = OUTLINED_FUNCTION_29_3();
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_4_7();
    }
  }

  v9 = (v2 + v3[9]);
  if (*v9 || v9[1] != 0xE000000000000000)
  {
    result = OUTLINED_FUNCTION_29_3();
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_4_7();
    }
  }

  v10 = (v2 + v3[10]);
  if (*v10 || v10[1] != 0xE000000000000000)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      return OUTLINED_FUNCTION_4_7();
    }
  }

  return result;
}

uint64_t sub_193674BB0()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FC60;

  return v0;
}

uint64_t sub_193674BF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE779D0 != -1)
  {
    OUTLINED_FUNCTION_0_72();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEABAE0);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingNamedEntity.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingNamedEntity();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingNamedEntity()
{
  result = qword_1ED50D170;
  if (!qword_1ED50D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingNamedEntity.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingNamedEntity();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingNamedEntity.documentIdentifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingNamedEntity() + 28);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x60uLL);
  return sub_19365A03C(__dst, &v4);
}

void *TextUnderstandingNamedEntity.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_1_58() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingNamedEntity.name.getter()
{
  v0 = type metadata accessor for TextUnderstandingNamedEntity();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingNamedEntity.name.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_54() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingNamedEntity.category.getter()
{
  v0 = type metadata accessor for TextUnderstandingNamedEntity();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingNamedEntity.category.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_54() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingNamedEntity.algorithm.getter()
{
  v0 = type metadata accessor for TextUnderstandingNamedEntity();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingNamedEntity.algorithm.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_54() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingNamedEntity.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingNamedEntity.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936751C8()
{
  sub_19393CAB0();
  TextUnderstandingNamedEntity.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193675208()
{
  result = qword_1EAE3FC70;
  if (!qword_1EAE3FC70)
  {
    type metadata accessor for TextUnderstandingNamedEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FC70);
  }

  return result;
}

void sub_19367528C()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingTopic.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TextUnderstandingTopic();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_193675518(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FC78, &qword_193978860);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FC78, &qword_193978860);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_193675518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingTopic();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingTopic.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FC78, &qword_193978860);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1936756BC(v10, a1);
  }

  return result;
}

uint64_t sub_1936756BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingTopic();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingTopic.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_193676910() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1936756BC(v14, v40);
      v33 = type metadata accessor for TextUnderstandingTopic();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingTopic.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingTopic();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193675518(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FC78, &qword_193978860);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FC78, &qword_193978860);
  return v15;
}

id static TextUnderstandingTopic.columns.getter()
{
  v9 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v3 = OUTLINED_FUNCTION_105();
  result = sub_19343D150(v3, 0xEA00000000007265, 2, 0, v1, 13, 0);
  if (result)
  {
    inited[2].n128_u64[0] = result;
    sub_19343D230(inited);
    v5 = swift_initStackObject();
    v6 = OUTLINED_FUNCTION_22_15(v5, xmmword_193950B10);
    *(v6 + 16) = xmmword_193950B10;
    *(v6 + 32) = sub_19393C850();
    v7 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    v8 = OUTLINED_FUNCTION_30_2();
    result = sub_19343D150(v8, 0xE90000000000006DLL, 2, 0, v6, 13, 0);
    if (result)
    {
      v5[2].n128_u64[0] = result;
      sub_19343D230(v5);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_193675D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingTopic() + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v21, (v3 + v8), sizeof(v21));
    sub_19365A03C(__dst, v23);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v23, v21, sizeof(v23));
    return sub_19365A098(v23);
  }

  v11 = a1 == OUTLINED_FUNCTION_105() && a2 == v10;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingTopic() + 32);
LABEL_13:
    v13 = (v3 + v12);
    v15 = *v13;
    v14 = v13[1];
    v23[0] = v15;
    v23[1] = v14;
    return sub_1934948FC();
  }

  v17 = a1 == OUTLINED_FUNCTION_30_2() && a2 == v16;
  if (v17 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingTopic() + 36);
    goto LABEL_13;
  }

  sub_19349AB64();
  swift_allocError();
  v19 = v18;
  *v18 = a1;
  v18[1] = a2;
  v18[5] = type metadata accessor for TextUnderstandingTopic();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19 + 2);
  sub_193675518(v3, boxed_opaque_existential_1Tm);
  *(v19 + 48) = 1;
  swift_willThrow();
}

void *TextUnderstandingTopic.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingTopic();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_193676910();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  TextUnderstandingDocumentIdentifiers.init()(v9);
  result = memcpy(a1 + v2[7], v9, 0x60uLL);
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return result;
}

BOOL static TextUnderstandingTopic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingTopic();
  v5 = v4[7];
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = v4[7];
  memcpy(v17, (a2 + v6), sizeof(v17));
  memcpy(v14, (a2 + v6), sizeof(v14));
  sub_19365A03C(__dst, v19);
  sub_19365A03C(v17, v19);
  sub_19365AB48();
  LOBYTE(v6) = sub_19393C550();
  memcpy(v18, v14, sizeof(v18));
  sub_19365A098(v18);
  memcpy(v19, __src, sizeof(v19));
  sub_19365A098(v19);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_0_71(v4[8]);
    v9 = v9 && v7 == v8;
    if (v9 || (sub_19393CA30() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_71(v4[9]);
      v12 = v9 && v10 == v11;
      if (v12 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t TextUnderstandingTopic.hash(into:)()
{
  v1 = type metadata accessor for TextUnderstandingTopic();
  memcpy(v9, (v0 + v1[7]), sizeof(v9));
  sub_19365B174();
  sub_19393C540();
  v2 = (v0 + v1[8]);
  v3 = *v2;
  v4 = v2[1];
  sub_19393C640();
  v5 = (v0 + v1[9]);
  v6 = *v5;
  v7 = v5[1];
  return sub_19393C640();
}

uint64_t sub_193676204()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABAF8);
  __swift_project_value_buffer(v0, qword_1EAEABAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "documentIdentifiers";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "algorithm";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_19393C410();
}

uint64_t sub_19367640C()
{
  v2 = v1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_11_6();
        v2 = 0;
        if (*(&__src + 1))
        {
          v9 = __src;
        }

        else
        {
          v9 = 0;
        }

        if (*(&__src + 1))
        {
          v10 = *(&__src + 1);
        }

        else
        {
          v10 = 0xE000000000000000;
        }

        v11 = (v0 + *(type metadata accessor for TextUnderstandingTopic() + 36));
        v12 = v11[1];

        *v11 = v9;
        v11[1] = v10;
        break;
      case 2:
        OUTLINED_FUNCTION_11_6();
        v2 = 0;
        if (*(&__src + 1))
        {
          v5 = __src;
        }

        else
        {
          v5 = 0;
        }

        if (*(&__src + 1))
        {
          v6 = *(&__src + 1);
        }

        else
        {
          v6 = 0xE000000000000000;
        }

        v7 = (v0 + *(type metadata accessor for TextUnderstandingTopic() + 32));
        v8 = v7[1];

        *v7 = v5;
        v7[1] = v6;
        break;
      case 1:
        __src = 0u;
        memset(v17, 0, sizeof(v17));
        sub_193498018();
        if (*(&__src + 1))
        {
          memcpy(&v14[1], v17, 0x50uLL);
          v14[0] = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v14);
        }

        v13 = *(type metadata accessor for TextUnderstandingTopic() + 28);
        memcpy(__dst, (v0 + v13), sizeof(__dst));
        sub_19365A098(__dst);
        memcpy((v0 + v13), v14, 0x60uLL);
        break;
    }
  }

  return result;
}

uint64_t sub_1936765E8()
{
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingTopic();
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v12, (v0 + v4), sizeof(v12));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v14, __src, sizeof(v14));
  sub_19365A098(v14);
  memcpy(v15, v12, sizeof(v15));
  result = sub_19365A098(v15);
  if (v5)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    memcpy(v12, (v2 + v4), sizeof(v12));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v12, v10);
    sub_193447600();
    if (v1)
    {
      memcpy(v10, __src, sizeof(v10));
      return sub_19365A098(v10);
    }

    memcpy(v10, __src, sizeof(v10));
    result = sub_19365A098(v10);
  }

  v7 = (v2 + v3[8]);
  if (*v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[1] == 0xE000000000000000;
  }

  if (!v8)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_4_7();
    }
  }

  v9 = (v2 + v3[9]);
  if (*v9 || v9[1] != 0xE000000000000000)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      return OUTLINED_FUNCTION_4_7();
    }
  }

  return result;
}

uint64_t sub_19367680C()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FC88;

  return v0;
}

uint64_t sub_193676850@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77AE0 != -1)
  {
    OUTLINED_FUNCTION_0_73();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABAF8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingTopic.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingTopic();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingTopic()
{
  result = qword_1ED50D1B0;
  if (!qword_1ED50D1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingTopic.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingTopic();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingTopic.documentIdentifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingTopic() + 28);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x60uLL);
  return sub_19365A03C(__dst, &v4);
}

void *TextUnderstandingTopic.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_74() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingTopic.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TextUnderstandingTopic() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingTopic.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextUnderstandingTopic() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextUnderstandingTopic.algorithm.getter()
{
  v1 = (v0 + *(type metadata accessor for TextUnderstandingTopic() + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingTopic.algorithm.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextUnderstandingTopic() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextUnderstandingTopic.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingTopic.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193676DAC()
{
  sub_19393CAB0();
  TextUnderstandingTopic.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193676DEC()
{
  result = qword_1EAE3FC98;
  if (!qword_1EAE3FC98)
  {
    type metadata accessor for TextUnderstandingTopic();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FC98);
  }

  return result;
}

void sub_193676E70()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_193676F34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511538);
  v5 = __swift_project_value_buffer(v4, qword_1ED511538);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.PromptTags.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_43 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511538);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA0, &qword_193978988);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.PromptTags.attribute(_:)(void (*a1)(void))
{
  result = sub_193677344(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367738C(void (*a1)(void))
{
  result = sub_193677344(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936773BC(uint64_t a1)
{
  result = sub_1936773E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936773E4()
{
  result = qword_1ED5048E0;
  if (!qword_1ED5048E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048E0);
  }

  return result;
}

_BYTE *_s10PromptTagsOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesPromptTags.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for GenerativeExperiencesPromptTags();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1936776EC(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FCA8, &qword_193978A00);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FCA8, &qword_193978A00);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1936776EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptTags();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptTags.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FCA8, &qword_193978A00);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_193677890(v10, a1);
  }

  return result;
}

uint64_t sub_193677890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptTags();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptTags.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_193679924() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_193677890(v14, v40);
      v33 = type metadata accessor for GenerativeExperiencesPromptTags();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t GenerativeExperiencesPromptTags.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesPromptTags();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936776EC(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FCA8, &qword_193978A00);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FCA8, &qword_193978A00);
  return v15;
}

id static GenerativeExperiencesPromptTags.columns.getter()
{
  v187 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x64496D657469, 0xE600000000000000, 6, 0, v0, 14, 3);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  v30 = OUTLINED_FUNCTION_19_42();
  result = OUTLINED_FUNCTION_3_5(v30, 0xE900000000000064);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v31 = swift_initStackObject();
  v39 = OUTLINED_FUNCTION_2_4(v31, v32, v33, v34, v35, v36, v37, v38, v181);
  OUTLINED_FUNCTION_5_10(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v48 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v48);
  v49 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v49 | 0x6D614E6C00000000, 0xE900000000000065);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v50 = swift_initStackObject();
  v58 = OUTLINED_FUNCTION_2_4(v50, v51, v52, v53, v54, v55, v56, v57, v182);
  OUTLINED_FUNCTION_5_10(v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v67 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v67);
  v68 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v68 | 0x7265566C00000000, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v69 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v78 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v87 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v87);
  v88 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_3_5(v88, v89);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v90 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v99 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v99, v100, v101, v102, v103, v104, v105, v106, v107);
  v108 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v108);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A2B250);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v109 = swift_initStackObject();
  v117 = OUTLINED_FUNCTION_2_4(v109, v110, v111, v112, v113, v114, v115, v116, v183);
  OUTLINED_FUNCTION_5_10(v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v126 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v126);
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_14_39();
  result = OUTLINED_FUNCTION_13_38(v127, v128);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v129 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v129, v130, v131, v132, v133, v134, v135, v136, v137);
  v138 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v138, v139, v140, v141, v142, v143, v144, v145, v146);
  v147 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v147);
  v148 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_3_5(v148, v149);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v150 = swift_initStackObject();
  v158 = OUTLINED_FUNCTION_2_4(v150, v151, v152, v153, v154, v155, v156, v157, v184);
  OUTLINED_FUNCTION_5_10(v158, v159, v160, v161, v162, v163, v164, v165, v166);
  v167 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v167);
  v168 = OUTLINED_FUNCTION_21_34();
  result = OUTLINED_FUNCTION_13_38(v168, 0xE700000000000000);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v169 = swift_initStackObject();
  v177 = OUTLINED_FUNCTION_2_4(v169, v170, v171, v172, v173, v174, v175, v176, v185);
  *(v177 + 16) = v186;
  *(v177 + 32) = sub_19393C850();
  v178 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_20_39();
  OUTLINED_FUNCTION_18_35();
  result = sub_19343D150(v179, v180, 2, 0, v177, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v187;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_19367815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = sub_19393BE60();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (!v20 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v23 = a1 == OUTLINED_FUNCTION_19_42() && a2 == 0xE900000000000064;
    if (v23 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for GenerativeExperiencesPromptTags();
      v24 = result[8];
LABEL_16:
      v25 = (v3 + v24);
      v26 = *(v3 + v24 + 8);
      if (!v26)
      {
        goto LABEL_8;
      }

      v45 = *v25;
      v46 = v26;
      return sub_1934948FC();
    }

    v27 = a1 == 1936154996 && a2 == 0xE400000000000000;
    if (v27 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v45 = *(v3 + *(type metadata accessor for GenerativeExperiencesPromptTags() + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    }

    else
    {
      v28 = a1 == (OUTLINED_FUNCTION_12_3() | 0x6D614E6C00000000) && a2 == 0xE900000000000065;
      if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags();
        v24 = result[10];
        goto LABEL_16;
      }

      v30 = a1 == (OUTLINED_FUNCTION_12_3() | 0x7265566C00000000) && a2 == v29;
      if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags();
        v24 = result[11];
        goto LABEL_16;
      }

      v31 = a1 == 0xD000000000000015 && 0x8000000193A2B230 == a2;
      if (v31 || (OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags();
        v24 = result[12];
        goto LABEL_16;
      }

      v32 = a1 == 0xD000000000000013 && 0x8000000193A2B250 == a2;
      if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags();
        v24 = result[13];
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_14_39();
      v34 = a1 == OUTLINED_FUNCTION_15_40() && a2 == v33;
      if (v34 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags();
        v35 = result[14];
      }

      else
      {
        v37 = a1 == 0xD000000000000015 && 0x8000000193A2BDD0 == a2;
        if (v37 || (OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
        {
          result = type metadata accessor for GenerativeExperiencesPromptTags();
          v24 = result[15];
          goto LABEL_16;
        }

        v38 = a1 == OUTLINED_FUNCTION_21_34() && a2 == 0xE700000000000000;
        if (!v38 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          OUTLINED_FUNCTION_18_35();
          v40 = a1 == OUTLINED_FUNCTION_20_39() && a2 == v39;
          if (!v40 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            sub_19349AB64();
            swift_allocError();
            v42 = v41;
            *v41 = a1;
            v41[1] = a2;
            v41[5] = type metadata accessor for GenerativeExperiencesPromptTags();
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v42 + 2);
            sub_1936776EC(v3, boxed_opaque_existential_1Tm);
            *(v42 + 48) = 1;
            swift_willThrow();
          }

          result = type metadata accessor for GenerativeExperiencesPromptTags();
          v24 = result[17];
          goto LABEL_16;
        }

        result = type metadata accessor for GenerativeExperiencesPromptTags();
        v35 = result[16];
      }

      v36 = v3 + v35;
      if (*(v36 + 4))
      {
        goto LABEL_8;
      }

      LODWORD(v45) = *v36;
    }

    return sub_1934948FC();
  }

  v21 = type metadata accessor for GenerativeExperiencesPromptTags();
  sub_193458F7C(v3 + *(v21 + 28), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_19344E6DC(v10, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_8:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  (*(v14 + 32))(v19, v10, v11);
  sub_1934948FC();
  return (*(v14 + 8))(v19, v11);
}

uint64_t GenerativeExperiencesPromptTags.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesPromptTags();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B7DC();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = a1 + v2[14];
  sub_1934E3F94();
  v8 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = a1 + v2[16];
  sub_193656664();
  v10 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193679924();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  v12 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v12);

  *v6 = 0;
  v6[1] = 0;

  *(a1 + v2[9]) = MEMORY[0x1E69E7CC0];
  *v17 = 0;
  v17[1] = 0;

  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v7 = 0;
  v7[4] = 1;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[4] = 1;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static GenerativeExperiencesPromptTags.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v83 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v83 - v19;
  v21 = type metadata accessor for GenerativeExperiencesPromptTags();
  v22 = v21[7];
  v23 = *(v17 + 56);
  sub_193458F7C(a1 + v22, v20);
  sub_193458F7C(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_31(v20);
  if (!v24)
  {
    sub_193458F7C(v20, v15);
    OUTLINED_FUNCTION_31(&v20[v23]);
    if (!v24)
    {
      (*(v7 + 32))(v11, &v20[v23], v4);
      sub_193678F88(&qword_1ED5029B8);
      v26 = sub_19393C550();
      v27 = *(v7 + 8);
      v27(v11, v4);
      v27(v15, v4);
      sub_193442B60(v20, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v7 + 8))(v15, v4);
LABEL_9:
    sub_193442B60(v20, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v20[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_193442B60(v20, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_13:
  v28 = v21[8];
  OUTLINED_FUNCTION_3();
  if (v31)
  {
    if (!v29)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v30);
    v34 = v24 && v32 == v33;
    if (!v34 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  if (sub_19344FC94(*(a1 + v21[9]), *(a2 + v21[9])))
  {
    v35 = v21[10];
    OUTLINED_FUNCTION_3();
    if (v38)
    {
      if (!v36)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v37);
      v41 = v24 && v39 == v40;
      if (!v41 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v36)
    {
      return 0;
    }

    v42 = v21[11];
    OUTLINED_FUNCTION_3();
    if (v45)
    {
      if (!v43)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v44);
      v48 = v24 && v46 == v47;
      if (!v48 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v43)
    {
      return 0;
    }

    v49 = v21[12];
    OUTLINED_FUNCTION_3();
    if (v52)
    {
      if (!v50)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v51);
      v55 = v24 && v53 == v54;
      if (!v55 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v50)
    {
      return 0;
    }

    v56 = v21[13];
    OUTLINED_FUNCTION_3();
    if (v59)
    {
      if (!v57)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v58);
      v62 = v24 && v60 == v61;
      if (!v62 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v57)
    {
      return 0;
    }

    OUTLINED_FUNCTION_49_2(v21[14]);
    if (v64)
    {
      if (!v63)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v65)
      {
        return 0;
      }
    }

    v66 = v21[15];
    OUTLINED_FUNCTION_3();
    if (v69)
    {
      if (!v67)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v68);
      v72 = v24 && v70 == v71;
      if (!v72 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v67)
    {
      return 0;
    }

    OUTLINED_FUNCTION_49_2(v21[16]);
    if (v74)
    {
      if (!v73)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v75)
      {
        return 0;
      }
    }

    v76 = v21[17];
    OUTLINED_FUNCTION_3();
    if (v79)
    {
      if (v77)
      {
        OUTLINED_FUNCTION_5(v78);
        v82 = v24 && v80 == v81;
        if (v82 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v77)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t GenerativeExperiencesPromptTags.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for GenerativeExperiencesPromptTags();
  sub_193458F7C(v2 + v16[7], v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v7 + 32))(v11, v15, v4);
    OUTLINED_FUNCTION_103_0();
    sub_193678F88(&qword_1EAE3AD68);
    sub_19393C540();
    (*(v7 + 8))(v11, v4);
  }

  OUTLINED_FUNCTION_5_0(v16[8]);
  if (v4)
  {
    OUTLINED_FUNCTION_7_1(v17);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(a1, *(v2 + v16[9]));
  OUTLINED_FUNCTION_5_0(v16[10]);
  if (v4)
  {
    OUTLINED_FUNCTION_7_1(v18);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v16[11]);
  if (v4)
  {
    OUTLINED_FUNCTION_7_1(v19);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v16[12]);
  if (v4)
  {
    OUTLINED_FUNCTION_7_1(v20);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v16[13]);
  if (v4)
  {
    OUTLINED_FUNCTION_7_1(v21);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v22 = (v2 + v16[14]);
  if (*(v22 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v4 = *v22;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0(v16[15]);
  if (v4)
  {
    OUTLINED_FUNCTION_7_1(v23);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v24 = (v2 + v16[16]);
  if (*(v24 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v25 = *v24;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v26 = (v2 + v16[17]);
  if (!v26[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v27 = *v26;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_193678F88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19393BE60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_193678FCC()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB10);
  __swift_project_value_buffer(v0, qword_1EAEABB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1939526F0;
  v4 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v4 = "itemId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_3_1(v38 + v3 + v2);
  *v9 = 2;
  *v8 = "usecaseId";
  v8[1] = 9;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v38 + v3 + 2 * v2);
  *v12 = 3;
  *v11 = "tags";
  v11[1] = 4;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v38 + v3 + 3 * v2);
  *v15 = 4;
  *v14 = "modelName";
  v14[1] = 9;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v38 + v3 + 4 * v2);
  *v18 = 5;
  *v17 = "modelVersion";
  v17[1] = 12;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v38 + v3 + 5 * v2);
  *v21 = 6;
  *v20 = "userInterfaceLanguage";
  v20[1] = 21;
  v22 = OUTLINED_FUNCTION_41(v20);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v38 + v3 + 6 * v2);
  *v24 = 7;
  *v23 = "userSetRegionFormat";
  v23[1] = 19;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v38 + v3 + 7 * v2);
  *v27 = 8;
  *v26 = "alignmentGrade";
  v26[1] = 14;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v38 + v3 + 8 * v2);
  *v30 = 9;
  *v29 = "alignmentModelVersion";
  v29[1] = 21;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v38 + v3 + 9 * v2);
  *v33 = 10;
  *v32 = "siGrade";
  v32[1] = 7;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v38 + v3 + 10 * v2);
  *v36 = 11;
  *v35 = "siModelVersion";
  *(v35 + 8) = 14;
  *(v35 + 16) = 2;
  (v7)();
  return sub_19393C410();
}

uint64_t sub_193679348()
{
  v2 = v1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v5 = type metadata accessor for GenerativeExperiencesPromptTags();
        sub_193497890(v0 + *(v5 + 28));
        goto LABEL_18;
      case 2:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 32);
        goto LABEL_17;
      case 3:
        v8 = type metadata accessor for GenerativeExperiencesPromptTags();
        OUTLINED_FUNCTION_4_55(*(v8 + 36));
        sub_19393C1B0();
        goto LABEL_18;
      case 4:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 40);
        goto LABEL_17;
      case 5:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 44);
        goto LABEL_17;
      case 6:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 48);
        goto LABEL_17;
      case 7:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 52);
        goto LABEL_17;
      case 8:
        v7 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 56);
        goto LABEL_11;
      case 9:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 60);
        goto LABEL_17;
      case 10:
        v7 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 64);
LABEL_11:
        OUTLINED_FUNCTION_4_55(v7);
        sub_19393C170();
        goto LABEL_18;
      case 11:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptTags() + 68);
LABEL_17:
        OUTLINED_FUNCTION_4_55(v6);
        sub_19393C200();
LABEL_18:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1936794B4()
{
  sub_193679670(v0);
  if (!v1)
  {
    v2 = type metadata accessor for GenerativeExperiencesPromptTags();
    OUTLINED_FUNCTION_16_4(v2[8]);
    if (v4)
    {
      v5 = *v3;
      OUTLINED_FUNCTION_2_7();
    }

    if (*(*(v0 + v2[9]) + 16))
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C380();
    }

    OUTLINED_FUNCTION_16_4(v2[10]);
    if (v7)
    {
      v8 = *v6;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v2[11]);
    if (v10)
    {
      v11 = *v9;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v2[12]);
    if (v13)
    {
      v14 = *v12;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v2[13]);
    if (v16)
    {
      v17 = *v15;
      OUTLINED_FUNCTION_2_7();
    }

    v18 = (v0 + v2[14]);
    if ((v18[1] & 1) == 0)
    {
      v19 = *v18;
      OUTLINED_FUNCTION_15_11();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_16_4(v2[15]);
    if (v21)
    {
      v22 = *v20;
      OUTLINED_FUNCTION_2_7();
    }

    v23 = (v0 + v2[16]);
    if ((v23[1] & 1) == 0)
    {
      v24 = *v23;
      OUTLINED_FUNCTION_15_11();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_16_4(v2[17]);
    if (v26)
    {
      v27 = *v25;
      OUTLINED_FUNCTION_2_7();
    }
  }
}

uint64_t sub_193679670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeExperiencesPromptTags();
  sub_193458F7C(a1 + *(v11 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_193458FEC(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_19344652C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_193679820()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FCB8;

  return v0;
}

uint64_t sub_193679864@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77BF0 != -1)
  {
    OUTLINED_FUNCTION_1_59();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB10);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t GenerativeExperiencesPromptTags.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesPromptTags();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for GenerativeExperiencesPromptTags()
{
  result = qword_1ED50D880;
  if (!qword_1ED50D880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesPromptTags.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesPromptTags();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t GenerativeExperiencesPromptTags.itemId.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesPromptTags();
  return sub_19344865C(v1 + *(v2 + 28), v0, &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t GenerativeExperiencesPromptTags.usecaseId.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptTags();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.usecaseId.setter()
{
  v3 = OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.tags.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativeExperiencesPromptTags() + 36));
}

uint64_t GenerativeExperiencesPromptTags.tags.setter()
{
  v2 = *(OUTLINED_FUNCTION_7_36() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.modelName.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptTags();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.modelName.setter()
{
  v3 = OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.modelVersion.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptTags();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.modelVersion.setter()
{
  v3 = OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.userInterfaceLanguage.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptTags();
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.userInterfaceLanguage.setter()
{
  v3 = OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.userSetRegionFormat.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptTags();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.userSetRegionFormat.setter()
{
  v3 = OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.alignmentModelVersion.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptTags();
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.alignmentModelVersion.setter()
{
  v3 = OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.siModelVersion.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptTags();
  OUTLINED_FUNCTION_4_4(*(v0 + 68));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.siModelVersion.setter()
{
  v3 = OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesPromptTags.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19367A22C()
{
  sub_19393CAB0();
  GenerativeExperiencesPromptTags.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_19367A26C()
{
  result = qword_1EAE3FCC8;
  if (!qword_1EAE3FCC8)
  {
    type metadata accessor for GenerativeExperiencesPromptTags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FCC8);
  }

  return result;
}

uint64_t sub_19367A2F0()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198();
    OUTLINED_FUNCTION_4_0();
    if (!(!v2 & v1))
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        OUTLINED_FUNCTION_5_55(v3, &qword_1ED508290, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19367A478(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v5 > 0x3F)
          {
            return v4;
          }

          OUTLINED_FUNCTION_5_55(v4, &qword_1ED508058, MEMORY[0x1E69E72F0]);
          if (v6 > 0x3F)
          {
            return v4;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_19367A478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s8WirelessOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_19367A590()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511598);
  v5 = __swift_project_value_buffer(v4, qword_1ED511598);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Device.Wireless.WiFi.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_44 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511598);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD0, &qword_193978B90);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Device.Wireless.WiFi.attribute(_:)(void (*a1)(void))
{
  result = sub_19367A994(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367A9DC(void (*a1)(void))
{
  result = sub_19367A994(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367AA0C(uint64_t a1)
{
  result = sub_19367AA34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19367AA34()
{
  result = qword_1ED5048B8;
  if (!qword_1ED5048B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048B8);
  }

  return result;
}

_BYTE *_s4WiFiOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceWiFi.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for DeviceWiFi();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19367AD3C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FCD8, &qword_193978C00);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FCD8, &qword_193978C00);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19367AD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWiFi();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceWiFi.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FCD8, &qword_193978C00);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19367AEE0(v10, a1);
  }

  return result;
}

uint64_t sub_19367AEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWiFi();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceWiFi.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_19367BD48() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_19367AEE0(v14, v40);
      v33 = type metadata accessor for DeviceWiFi();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t DeviceWiFi.serialize()()
{
  v1 = type metadata accessor for DeviceWiFi();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19367AD3C(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FCD8, &qword_193978C00);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FCD8, &qword_193978C00);
  return v15;
}

id static DeviceWiFi.columns.getter()
{
  v8 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(1145656147, 0xE400000000000000, 2, 0, v1, 13, 0);
  if (result)
  {
    inited[2].n128_u64[0] = result;
    sub_19343D230(inited);
    v4 = swift_initStackObject();
    v5 = OUTLINED_FUNCTION_22_15(v4, xmmword_193950B10);
    *(v5 + 16) = xmmword_193950B10;
    *(v5 + 32) = sub_19393C850();
    v6 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    v7 = OUTLINED_FUNCTION_69_4();
    result = sub_19343D150(v7, 0xE800000000000000, 0, 0, v5, 12, 0);
    if (result)
    {
      v4[2].n128_u64[0] = result;
      sub_19343D230(v4);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19367B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1 == 1145656147 && a2 == 0xE400000000000000;
  if (v5 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for DeviceWiFi();
    v9 = (v3 + *(result + 28));
    if (v9[1])
    {
      v14 = *v9;
      v15 = v9[1];
      return sub_1934948FC();
    }

    goto LABEL_15;
  }

  v10 = a1 == OUTLINED_FUNCTION_69_4() && a2 == 0xE800000000000000;
  if (v10 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for DeviceWiFi();
    if (*(v3 + *(result + 32)) != 2)
    {
      return sub_1934948FC();
    }

LABEL_15:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v12 = v11;
  *v11 = a1;
  v11[1] = a2;
  v11[5] = type metadata accessor for DeviceWiFi();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12 + 2);
  sub_19367AD3C(v3, boxed_opaque_existential_1Tm);
  *(v12 + 48) = 1;
  swift_willThrow();
}

uint64_t DeviceWiFi.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for DeviceWiFi();
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  OUTLINED_FUNCTION_10_1();
  v6 = v2[8];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19367BD48();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *(a1 + v6) = 2;
  return result;
}

BOOL static DeviceWiFi.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWiFi();
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 32);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 != 2)
  {
    return v13 != 2 && ((v12 ^ v13) & 1) == 0;
  }

  return v13 == 2;
}

uint64_t DeviceWiFi.hash(into:)()
{
  v1 = type metadata accessor for DeviceWiFi();
  v2 = (v0 + *(v1 + 28));
  if (v2[1])
  {
    v3 = *v2;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v0 + *(v1 + 32)) != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t sub_19367B92C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB28);
  __swift_project_value_buffer(v0, qword_1EAEABB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "SSID";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "starting";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_19393C410();
}

uint64_t sub_19367BAF4()
{
  v1 = v0;
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v5 = type metadata accessor for DeviceWiFi();
      OUTLINED_FUNCTION_8_2(*(v5 + 32));
      sub_19393C0F0();
LABEL_8:
      v1 = 0;
    }

    else if (result == 1)
    {
      v4 = type metadata accessor for DeviceWiFi();
      OUTLINED_FUNCTION_8_2(*(v4 + 28));
      sub_19393C200();
      goto LABEL_8;
    }
  }
}

uint64_t sub_19367BB98()
{
  result = type metadata accessor for DeviceWiFi();
  v3 = result;
  v4 = (v0 + *(result + 28));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_19393C3C0();
  }

  if (!v1 && *(v0 + *(v3 + 32)) != 2)
  {
    return sub_19393C2E0();
  }

  return result;
}

uint64_t sub_19367BC44()
{
  OUTLINED_FUNCTION_12();
  v0 = *aDevicewifi_0;

  return v0;
}

uint64_t sub_19367BC88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77D00 != -1)
  {
    OUTLINED_FUNCTION_0_75();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB28);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t type metadata accessor for DeviceWiFi()
{
  result = qword_1ED50D890;
  if (!qword_1ED50D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceWiFi.SSID.getter()
{
  v1 = (v0 + *(type metadata accessor for DeviceWiFi() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DeviceWiFi.SSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeviceWiFi() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DeviceWiFi.starting.setter(char a1)
{
  result = type metadata accessor for DeviceWiFi();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DeviceWiFi.hashValue.getter()
{
  sub_19393CAB0();
  DeviceWiFi.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19367C0C4()
{
  sub_19393CAB0();
  DeviceWiFi.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19367C104()
{
  result = qword_1EAE3FCF8;
  if (!qword_1EAE3FCF8)
  {
    type metadata accessor for DeviceWiFi();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FCF8);
  }

  return result;
}

void sub_19367C188()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506698);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *_s12ModelCatalogOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s13SubscriptionsOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_19367C3E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5115F8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5115F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.ModelCatalog.Subscriptions.ExplicitRequests.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_45 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5115F8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD00, &qword_193978D50);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.ModelCatalog.Subscriptions.ExplicitRequests.attribute(_:)(void (*a1)(void))
{
  result = sub_19367C7F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367C838(void (*a1)(void))
{
  result = sub_19367C7F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367C868(uint64_t a1)
{
  result = sub_19367C890();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19367C890()
{
  result = qword_1ED504618[0];
  if (!qword_1ED504618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED504618);
  }

  return result;
}

_BYTE *_s16ExplicitRequestsOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelCatalogExplicitRequests.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for ModelCatalogExplicitRequests();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19367CB98(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FD08, &qword_193978DD8);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FD08, &qword_193978DD8);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19367CB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogExplicitRequests();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ModelCatalogExplicitRequests.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FD08, &qword_193978DD8);
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_54();
    return sub_19367D71C(v10, a1, v13);
  }

  return result;
}

uint64_t static ModelCatalogExplicitRequests.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_1();
  v14 = sub_19393C0C0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v38 - v23;
  if (*sub_19367E5B8() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v17 + 16))(v22, v24, v14);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v25, v26, v27);
    v28 = v45;
    sub_19393C280();
    if (v28)
    {
      return (*(v17 + 8))(v24, v14);
    }

    else
    {
      (*(v17 + 8))(v24, v14);
      OUTLINED_FUNCTION_3_54();
      v31 = v40;
      sub_19367D71C(v6, v40, v32);
      v33 = type metadata accessor for ModelCatalogExplicitRequests();
      v34 = *(v33 + 20);
      sub_19344E6DC(v31 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v31 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v31 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v31 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v31 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v30 = a3;
    *(v30 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t ModelCatalogExplicitRequests.serialize()()
{
  v2 = type metadata accessor for ModelCatalogExplicitRequests();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_19367CB98(v0, v1);
  sub_1934470C8(v1, v2, v11);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v12, &qword_1EAE3FD08, &qword_193978DD8);
  v13 = sub_19393C290();
  sub_19344E6DC(v11, &qword_1EAE3FD08, &qword_193978DD8);
  return v13;
}

id static ModelCatalogExplicitRequests.columns.getter()
{
  v50 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A17C10);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v20[2].n128_u64[0] = sub_19393C850();
  v29 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A2BEF0);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  v30 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v39 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v39[2].n128_u64[0] = sub_19393C850();
  v48 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v49 = OUTLINED_FUNCTION_5_56();
  result = sub_19343D150(v49 & 0xFFFFFFFFFFFFLL | 0x6269000000000000, 0xE900000000000065, 0, 0, v39, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v50;
  }

LABEL_7:
  __break(1u);
  return result;
}

int *sub_19367D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_1();
  v10 = type metadata accessor for ModelCatalogSubscription();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = a1 == 0xD000000000000010 && 0x8000000193A17C10 == a2;
  if (v17 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for ModelCatalogExplicitRequests();
    v19 = result[7];
    goto LABEL_7;
  }

  v20 = a1 == 0xD000000000000011 && 0x8000000193A2BEF0 == a2;
  if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for ModelCatalogExplicitRequests();
    v19 = result[8];
LABEL_7:
    if (*(v3 + v19 + 8))
    {
      v29 = *(v3 + v19);
      return sub_1934948FC();
    }

    goto LABEL_23;
  }

  v22 = a1 == (OUTLINED_FUNCTION_5_56() & 0xFFFFFFFFFFFFLL | 0x7069000000000000) && a2 == v21;
  if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v23 = type metadata accessor for ModelCatalogExplicitRequests();
    sub_19367D6AC(v3 + *(v23 + 36), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
    {
      result = sub_19344E6DC(v4, &qword_1EAE3FD18, &qword_193978DE0);
LABEL_23:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_19367D71C(v4, v16, type metadata accessor for ModelCatalogSubscription);
    sub_193494798(v10, &off_1F07DC6B0, a3);
    return sub_19367D77C(v16);
  }

  else
  {
    v25 = a1 == (OUTLINED_FUNCTION_5_56() & 0xFFFFFFFFFFFFLL | 0x6269000000000000) && a2 == v24;
    if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for ModelCatalogExplicitRequests();
      if (*(v3 + result[10]) != 2)
      {
        return sub_1934948FC();
      }

      goto LABEL_23;
    }

    sub_19349AB64();
    swift_allocError();
    v27 = v26;
    *v26 = a1;
    v26[1] = a2;
    v26[5] = type metadata accessor for ModelCatalogExplicitRequests();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v27 + 2);
    sub_19367CB98(v3, boxed_opaque_existential_1Tm);
    *(v27 + 48) = 1;
    swift_willThrow();
  }
}

uint64_t sub_19367D6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19367D71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19367D77C(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogSubscription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModelCatalogExplicitRequests.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ModelCatalogExplicitRequests();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[9];
  sub_19367E910();
  v8 = v2[10];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19367E5B8();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  sub_19344E6DC(a1 + v7, &qword_1EAE3FD18, &qword_193978DE0);
  v10 = type metadata accessor for ModelCatalogSubscription();
  result = __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v10);
  *(a1 + v8) = 2;
  return result;
}

BOOL static ModelCatalogExplicitRequests.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscription();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD20, &qword_193978E30);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = type metadata accessor for ModelCatalogExplicitRequests();
  v21 = v20[7];
  OUTLINED_FUNCTION_3();
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v26 = *v24 == *v25 && v22 == v23;
    if (!v26 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v27 = v20[8];
  OUTLINED_FUNCTION_3();
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    v32 = *v30 == *v31 && v28 == v29;
    if (!v32 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v33 = v20[9];
  v34 = *(v14 + 48);
  sub_19367D6AC(a1 + v33, v19);
  sub_19367D6AC(a2 + v33, &v19[v34]);
  OUTLINED_FUNCTION_31(v19);
  if (v26)
  {
    OUTLINED_FUNCTION_31(&v19[v34]);
    if (v26)
    {
      sub_19344E6DC(v19, &qword_1EAE3FD18, &qword_193978DE0);
      goto LABEL_30;
    }

LABEL_27:
    sub_19344E6DC(v19, &qword_1EAE3FD20, &qword_193978E30);
    return 0;
  }

  sub_19367D6AC(v19, v13);
  OUTLINED_FUNCTION_31(&v19[v34]);
  if (v35)
  {
    sub_19367D77C(v13);
    goto LABEL_27;
  }

  sub_19367DC04(&v19[v34], v9);
  sub_19367DE68(&qword_1EAE3FD28);
  v37 = sub_19393C550();
  sub_19367D77C(v9);
  sub_19367D77C(v13);
  sub_19344E6DC(v19, &qword_1EAE3FD18, &qword_193978DE0);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v38 = v20[10];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 != 2)
  {
    return v40 != 2 && ((v39 ^ v40) & 1) == 0;
  }

  return v40 == 2;
}

uint64_t sub_19367DC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelCatalogExplicitRequests.hash(into:)()
{
  v1 = type metadata accessor for ModelCatalogSubscription();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ModelCatalogExplicitRequests();
  v12 = (v0 + v11[7]);
  if (v12[1])
  {
    v13 = *v12;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  v14 = (v0 + v11[8]);
  if (v14[1])
  {
    v15 = *v14;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19367D6AC(v0 + v11[9], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19367DC04(v10, v6);
    OUTLINED_FUNCTION_103_0();
    sub_19367DE68(&qword_1EAE3FD30);
    sub_19393C540();
    sub_19367D77C(v6);
  }

  if (*(v0 + v11[10]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t sub_19367DE68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModelCatalogSubscription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19367DEAC()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB40);
  __swift_project_value_buffer(v0, qword_1EAEABB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "clientIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  v11 = OUTLINED_FUNCTION_0_0(v10, "legacyRequestName");
  (v9)(v11);
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  v14 = OUTLINED_FUNCTION_0_0(v13, "subscription");
  (v9)(v14);
  v15 = (v5 + 3 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "subscribe";
  *(v16 + 1) = 9;
  v16[16] = 2;
  (v9)();
  return sub_19393C410();
}

void sub_19367E0D8()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = *(type metadata accessor for ModelCatalogExplicitRequests() + 28);
        goto LABEL_9;
      case 2:
        v4 = *(type metadata accessor for ModelCatalogExplicitRequests() + 32);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v4);
        sub_19393C200();
        goto LABEL_10;
      case 3:
        v5 = *(type metadata accessor for ModelCatalogExplicitRequests() + 36);
        type metadata accessor for ModelCatalogSubscription();
        sub_193498018();
        goto LABEL_10;
      case 4:
        v6 = type metadata accessor for ModelCatalogExplicitRequests();
        OUTLINED_FUNCTION_8_2(*(v6 + 40));
        sub_19393C0F0();
LABEL_10:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_19367E1EC()
{
  result = type metadata accessor for ModelCatalogExplicitRequests();
  v3 = result;
  v4 = (v0 + *(result + 28));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_19393C3C0();
  }

  if (!v1)
  {
    v6 = (v0 + *(v3 + 32));
    if (v6[1])
    {
      v7 = *v6;
      sub_19393C3C0();
    }

    result = sub_19367E2EC(v0);
    if (*(v0 + *(v3 + 40)) != 2)
    {
      return sub_19393C2E0();
    }
  }

  return result;
}

uint64_t sub_19367E2EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ModelCatalogSubscription();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModelCatalogExplicitRequests();
  sub_19367D6AC(a1 + *(v10 + 36), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_19367E550(v5);
  }

  sub_19367DC04(v5, v9);
  sub_193447600();
  return sub_19367D77C(v9);
}

uint64_t sub_19367E44C()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FD38;

  return v0;
}

uint64_t sub_19367E490@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77E10 != -1)
  {
    OUTLINED_FUNCTION_0_77();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB40);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_19367E550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModelCatalogExplicitRequests.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ModelCatalogExplicitRequests();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for ModelCatalogExplicitRequests()
{
  result = qword_1ED50D5E0;
  if (!qword_1ED50D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelCatalogExplicitRequests.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ModelCatalogExplicitRequests();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t ModelCatalogExplicitRequests.clientIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelCatalogExplicitRequests() + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ModelCatalogExplicitRequests.clientIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ModelCatalogExplicitRequests() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ModelCatalogExplicitRequests.legacyRequestName.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelCatalogExplicitRequests() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ModelCatalogExplicitRequests.legacyRequestName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ModelCatalogExplicitRequests() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_19367E910()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for ModelCatalogSubscription();
  v0 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t ModelCatalogExplicitRequests.subscription.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ModelCatalogExplicitRequests();
  return sub_19344865C(v1 + *(v2 + 36), v0, &qword_1EAE3FD18, &qword_193978DE0);
}

uint64_t ModelCatalogExplicitRequests.subscribe.setter(char a1)
{
  result = type metadata accessor for ModelCatalogExplicitRequests();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ModelCatalogExplicitRequests.hashValue.getter()
{
  sub_19393CAB0();
  ModelCatalogExplicitRequests.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19367EAE0()
{
  sub_19393CAB0();
  ModelCatalogExplicitRequests.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19367EB20()
{
  result = qword_1EAE3FD48;
  if (!qword_1EAE3FD48)
  {
    type metadata accessor for ModelCatalogExplicitRequests();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FD48);
  }

  return result;
}

void sub_19367EBA4()
{
  sub_19367ECD8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        sub_19367ECD8(319, qword_1ED5047D0, type metadata accessor for ModelCatalogSubscription);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506698);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19367ECD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19367ED48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511658);
  v5 = __swift_project_value_buffer(v4, qword_1ED511658);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.ModelCatalog.Subscriptions.Decisions.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_46 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511658);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD50, &qword_193978F30);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.ModelCatalog.Subscriptions.Decisions.attribute(_:)(void (*a1)(void))
{
  result = sub_19367F158(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367F1A0(void (*a1)(void))
{
  result = sub_19367F158(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367F1D0(uint64_t a1)
{
  result = sub_19367F1F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19367F1F8()
{
  result = qword_1ED506E68[0];
  if (!qword_1ED506E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED506E68);
  }

  return result;
}

_BYTE *_s9DecisionsOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelCatalogSubscriptionDecisions.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for ModelCatalogSubscriptionDecisions();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19367F500(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FD58, &qword_193978FA8);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FD58, &qword_193978FA8);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19367F500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ModelCatalogSubscriptionDecisions.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FD58, &qword_193978FA8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19367F6A4(v10, a1);
  }

  return result;
}

uint64_t sub_19367F6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ModelCatalogSubscriptionDecisions.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1936807D8() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_19367F6A4(v14, v40);
      v33 = type metadata accessor for ModelCatalogSubscriptionDecisions();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t ModelCatalogSubscriptionDecisions.serialize()()
{
  v1 = type metadata accessor for ModelCatalogSubscriptionDecisions();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19367F500(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FD58, &qword_193978FA8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FD58, &qword_193978FA8);
  return v15;
}

id static ModelCatalogSubscriptionDecisions.columns.getter()
{
  v5 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v3 = OUTLINED_FUNCTION_3_56();
  result = sub_19343D150(v3, 0xEB00000000656D61, 2, 0, v1, 13, 0);
  if (result)
  {
    *(inited + 32) = result;
    sub_19343D230(inited);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19367FCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = a1 == OUTLINED_FUNCTION_3_56() && a2 == v7;
  if (v8 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for ModelCatalogSubscriptionDecisions();
    v10 = (v3 + *(result + 28));
    if (!v10[1])
    {
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    v15 = *v10;
    v17 = v10[1];
    return sub_1934948FC();
  }

  v11 = a1 == 0x6E6F697369636564 && a2 == 0xE900000000000073;
  if (v11 || (sub_19393CA30() & 1) != 0)
  {
    v16 = *(v3 + *(type metadata accessor for ModelCatalogSubscriptionDecisions() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD60, &qword_193978FB0);
    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  v13 = v12;
  *v12 = a1;
  v12[1] = a2;
  v12[5] = type metadata accessor for ModelCatalogSubscriptionDecisions();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v13 + 2);
  sub_19367F500(v3, boxed_opaque_existential_1Tm);
  *(v13 + 48) = 1;
  swift_willThrow();
}

uint64_t ModelCatalogSubscriptionDecisions.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ModelCatalogSubscriptionDecisions();
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1936807D8();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v6 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v6);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[8]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static ModelCatalogSubscriptionDecisions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions();
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_8:
  v11 = *(v4 + 32);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_193680074(v12, v13);
}

uint64_t ModelCatalogSubscriptionDecisions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions();
  v5 = (v2 + *(v4 + 28));
  if (v5[1])
  {
    v6 = *v5;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  v7 = *(v2 + *(v4 + 32));

  return sub_193680224(a1, v7);
}

uint64_t sub_193680074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscription();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_19368030C(v14, v11);
        sub_19368030C(v15, v8);
        sub_19367DE68(&qword_1EAE3FD28);
        v17 = sub_19393C550();
        sub_19367D77C(v8);
        sub_19367D77C(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_193680224(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for ModelCatalogSubscription() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_19367DE68(&qword_1EAE3FD30);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_19368030C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_193680370()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB58);
  __swift_project_value_buffer(v0, qword_1EAEABB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "triggerName";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decisions";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_19393C410();
}

uint64_t sub_193680538()
{
  v2 = v1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v6 = *(type metadata accessor for ModelCatalogSubscriptionDecisions() + 32);
      type metadata accessor for ModelCatalogSubscription();
      sub_193498238(v0 + v6);
LABEL_8:
      v2 = 0;
    }

    else if (result == 1)
    {
      v5 = *(type metadata accessor for ModelCatalogSubscriptionDecisions() + 28);
      sub_19393C200();
      goto LABEL_8;
    }
  }
}

uint64_t sub_193680614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for ModelCatalogSubscriptionDecisions();
  v8 = result;
  v9 = (v3 + *(result + 28));
  if (v9[1])
  {
    v10 = *v9;
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    v11 = *(v3 + *(v8 + 32));
    if (*(v11 + 16))
    {
      v12 = type metadata accessor for ModelCatalogSubscription();
      return sub_193451CFC(v11, 2, a2, v12, a3, &off_1F07DC6E0);
    }
  }

  return result;
}

uint64_t sub_1936806D4()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FD68;

  return v0;
}

uint64_t sub_193680718@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77F20 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB58);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t type metadata accessor for ModelCatalogSubscriptionDecisions()
{
  result = qword_1ED50E470;
  if (!qword_1ED50E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelCatalogSubscriptionDecisions.triggerName.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelCatalogSubscriptionDecisions() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ModelCatalogSubscriptionDecisions.triggerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ModelCatalogSubscriptionDecisions() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ModelCatalogSubscriptionDecisions.decisions.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelCatalogSubscriptionDecisions() + 32));
}

uint64_t ModelCatalogSubscriptionDecisions.decisions.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_79() + 32);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ModelCatalogSubscriptionDecisions.hashValue.getter()
{
  sub_19393CAB0();
  ModelCatalogSubscriptionDecisions.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193680B6C()
{
  sub_19393CAB0();
  ModelCatalogSubscriptionDecisions.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_193680BAC()
{
  result = qword_1EAE3FD78;
  if (!qword_1EAE3FD78)
  {
    type metadata accessor for ModelCatalogSubscriptionDecisions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FD78);
  }

  return result;
}

void sub_193680C30()
{
  sub_193680D54(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_193658134();
      if (v2 <= 0x3F)
      {
        sub_193680D54(319, &qword_1ED506D38, type metadata accessor for ModelCatalogSubscription, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193680D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_193680DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v25 - v9;
  v11 = sub_19393BE00();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v16 || (result = OUTLINED_FUNCTION_59_0(), (result & 1) != 0))
  {
    v17 = v3[1];
    if (v17 == 1)
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v25[0] = *v3;
    v25[1] = v17;
    return sub_193494798(&type metadata for ModelCatalogSubscription.UseCase, &off_1F07DC6C0, a3);
  }

  else
  {
    v18 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
    if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v25[0] = v3[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD80, &qword_1939790E8);
      return sub_1934948FC();
    }

    else
    {
      v19 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
      if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v20 = type metadata accessor for ModelCatalogSubscription();
        sub_1934DE90C(v3 + *(v20 + 24), v10);
        if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
        {
          result = sub_1934DFCD4(v10);
          goto LABEL_7;
        }

        v21 = v26;
        (*(v26 + 32))(v15, v10, v11);
        sub_1934948FC();
        return (*(v21 + 8))(v15, v11);
      }

      else
      {
        sub_19349AB64();
        swift_allocError();
        v23 = v22;
        *v22 = a1;
        v22[1] = a2;
        v22[5] = type metadata accessor for ModelCatalogSubscription();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
        sub_19368030C(v3, boxed_opaque_existential_1Tm);
        *(v23 + 48) = 1;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1936810E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x696669746E656469;
  v8 = *v3;
  v7 = v3[1];
  v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v9 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7)
    {
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for ModelCatalogSubscription.UseCase;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_193681210@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = result == 1701667182 && a2 == 0xE400000000000000;
  if (v7 || (v9 = result, v11 = v3[2], v10 = v3[3], result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v5)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  result = 0x65756C6176;
  v12 = v9 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v12 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v14 = v13;
  *v13 = v9;
  v13[1] = a2;
  v13[5] = &type metadata for ModelCatalogSubscription.Parameter;
  v15 = swift_allocObject();
  v14[2] = v15;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v11;
  v15[5] = v10;
  *(v14 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1936813AC()
{
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABB70);
  __swift_project_value_buffer(v1, qword_1EAEABB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_4_2(v7, xmmword_19394FBB0);
  *v6 = "useCase";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_10_0();
  v11();
  v12 = OUTLINED_FUNCTION_29_1();
  *v12 = "parameters";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  v13 = (v0 + 2 * v4);
  v14 = v13 + dword_1EAEABBA8;
  *v13 = 3;
  *v14 = "expirationDate";
  *(v14 + 1) = 14;
  v14[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  return sub_19393C410();
}

void sub_193681574()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 3:
        v5 = *(type metadata accessor for ModelCatalogSubscription() + 24);
        sub_1934976E4();
LABEL_10:
        v2 = 0;
        break;
      case 2:
        sub_193498238(v0 + 16);
        goto LABEL_10;
      case 1:
        sub_193498018();
        goto LABEL_10;
    }
  }
}

void sub_193681690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[1] != 1)
  {
    v8 = *v3;
    sub_193447600();
  }

  if (!v4)
  {
    v7 = v3[2];
    if (*(v7 + 16))
    {
      sub_193451CFC(v7, 2, a2, &type metadata for ModelCatalogSubscription.Parameter, a3, &off_1F07DC740);
    }

    sub_19368174C(v3);
  }
}

uint64_t sub_19368174C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModelCatalogSubscription();
  sub_1934DE90C(a1 + *(v11 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_193451F04(v10, 3, 2020175477, 0xE400000000000000);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_19368196C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB88);
  __swift_project_value_buffer(v0, qword_1EAEABB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FAC0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  (*(v8 + 104))(v5, v6);
  return sub_19393C410();
}

uint64_t sub_193681B04()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABBA0);
  __swift_project_value_buffer(v0, &qword_1EAEABBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBE0);
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  return sub_19393C410();
}

uint64_t sub_193681C90()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_19393C200();
    }
  }

  return result;
}

uint64_t ModelCatalogSubscription.useCase.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_19350CB08(v2, v3);
}

uint64_t ModelCatalogSubscription.useCase.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ModelCatalogSubscription.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ModelCatalogSubscription.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModelCatalogSubscription() + 24);

  return sub_1934DE90C(v3, a1);
}

uint64_t type metadata accessor for ModelCatalogSubscription()
{
  result = qword_1ED50E480;
  if (!qword_1ED50E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelCatalogSubscription.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ModelCatalogSubscription() + 24);

  return sub_193681EC4(a1, v3);
}

uint64_t sub_193681EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ModelCatalogSubscription.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = xmmword_1939526A0;
  v2 = *(type metadata accessor for ModelCatalogSubscription() + 24);
  sub_19393BE00();
  v3 = OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_193456418(*a1, a1[1]);
  *a1 = xmmword_1939526A0;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_193442B60(a1 + v2, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_8_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t ModelCatalogSubscription.UseCase.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ModelCatalogSubscription.UseCase.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

IntelligencePlatformLibrary::ModelCatalogSubscription::UseCase __swiftcall ModelCatalogSubscription.UseCase.init()()
{
  v1 = v0;

  *v1 = 0;
  v1[1] = 0;
  result.identifier.value._object = v3;
  result.identifier.value._countAndFlagsBits = v2;
  return result;
}

uint64_t static ModelCatalogSubscription.UseCase.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t ModelCatalogSubscription.UseCase.hash(into:)()
{
  if (!v0[1])
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t ModelCatalogSubscription.UseCase.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_116_3();
  }

  return sub_19393CB00();
}

uint64_t ModelCatalogSubscription.Parameter.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ModelCatalogSubscription.Parameter.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ModelCatalogSubscription.Parameter.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ModelCatalogSubscription.Parameter.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

IntelligencePlatformLibrary::ModelCatalogSubscription::Parameter __swiftcall ModelCatalogSubscription.Parameter.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t static ModelCatalogSubscription.Parameter.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t ModelCatalogSubscription.Parameter.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t ModelCatalogSubscription.Parameter.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_116_3();
  }

  return sub_19393CB00();
}

uint64_t sub_193682524()
{
  v2 = *v0;
  v3 = v0[1];
  sub_19393CAB0();
  ModelCatalogSubscription.Parameter.hash(into:)();
  return sub_19393CB00();
}

BOOL static ModelCatalogSubscription.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v70 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v67[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67[-v16];
  v18 = *a1;
  v19 = a1[1];
  v21 = *a2;
  v20 = a2[1];
  if (v19 == 1)
  {
    sub_19350CB08(*a1, 1);
    if (v20 == 1)
    {
      sub_19350CB08(v21, 1);
      goto LABEL_25;
    }

    v26 = OUTLINED_FUNCTION_3_57();
    sub_19350CB08(v26, v27);
    goto LABEL_7;
  }

  if (v20 == 1)
  {
    v22 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v22, v23);
    sub_19350CB08(v21, 1);
    v24 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v24, v25);

LABEL_7:
    v28 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v28, v29);
    v30 = OUTLINED_FUNCTION_3_57();
LABEL_21:
    sub_193456418(v30, v31);
    return 0;
  }

  if (!v19)
  {
    sub_19350CB08(*a1, 0);
    v43 = 0;
    if (!v20)
    {
      sub_19350CB08(v21, 0);
      sub_19350CB08(v18, 0);
      v44 = v21;
      v45 = 0;
      goto LABEL_23;
    }

LABEL_19:
    v48 = v43;
    sub_19350CB08(v21, v20);
    sub_19350CB08(v18, v48);
    v49 = OUTLINED_FUNCTION_3_57();
    sub_193456418(v49, v50);
    goto LABEL_20;
  }

  if (!v20)
  {
    v46 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v46, v47);
    v43 = v19;
    goto LABEL_19;
  }

  v32 = v18 == v21 && v19 == v20;
  if (!v32)
  {
    v33 = *a2;
    v34 = a2[1];
    v68 = sub_19393CA30();
    v35 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v35, v36);
    v37 = OUTLINED_FUNCTION_3_57();
    sub_19350CB08(v37, v38);
    v39 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v39, v40);
    v41 = OUTLINED_FUNCTION_3_57();
    sub_193456418(v41, v42);
    if (v68)
    {
      goto LABEL_24;
    }

LABEL_20:

    v30 = OUTLINED_FUNCTION_165_1();
    goto LABEL_21;
  }

  sub_19350CB08(*a1, a1[1]);
  v51 = OUTLINED_FUNCTION_165_1();
  sub_19350CB08(v51, v52);
  v53 = OUTLINED_FUNCTION_165_1();
  sub_19350CB08(v53, v54);
  v44 = OUTLINED_FUNCTION_165_1();
LABEL_23:
  sub_193456418(v44, v45);
LABEL_24:

LABEL_25:
  v55 = OUTLINED_FUNCTION_165_1();
  sub_193456418(v55, v56);
  if ((sub_1934ECC9C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v57 = *(type metadata accessor for ModelCatalogSubscription() + 24);
  v58 = *(v14 + 48);
  sub_1934DE90C(a1 + v57, v17);
  sub_1934DE90C(a2 + v57, &v17[v58]);
  OUTLINED_FUNCTION_31(v17);
  if (v32)
  {
    OUTLINED_FUNCTION_31(&v17[v58]);
    if (v32)
    {
      sub_193442B60(v17, &qword_1EAE3A9E8, &qword_19394F800);
      return 1;
    }

    goto LABEL_34;
  }

  sub_1934DE90C(v17, v13);
  OUTLINED_FUNCTION_31(&v17[v58]);
  if (v59)
  {
    (*(v70 + 8))(v13, v4);
LABEL_34:
    sub_193442B60(v17, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  v62 = v69;
  v61 = v70;
  (*(v70 + 32))(v69, &v17[v58], v4);
  OUTLINED_FUNCTION_0_80();
  sub_193682D34(v63, v64);
  v65 = sub_19393C550();
  v66 = *(v61 + 8);
  v66(v62, v4);
  v66(v13, v4);
  sub_193442B60(v17, &qword_1EAE3A9E8, &qword_19394F800);
  return (v65 & 1) != 0;
}

uint64_t ModelCatalogSubscription.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  v16 = v2[1];
  if (v16 == 1 || (v17 = *v2, sub_19393CAD0(), !v16))
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  sub_1934ED064(a1, v2[2]);
  v18 = type metadata accessor for ModelCatalogSubscription();
  sub_1934DE90C(v2 + *(v18 + 24), v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v7 + 32))(v11, v15, v4);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_80();
  sub_193682D34(v20, v21);
  sub_19393C540();
  return (*(v7 + 8))(v11, v4);
}

uint64_t ModelCatalogSubscription.hashValue.getter()
{
  sub_19393CAB0();
  ModelCatalogSubscription.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193682BFC()
{
  sub_19393CAB0();
  ModelCatalogSubscription.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_193682C40()
{
  result = qword_1EAE3FDB8;
  if (!qword_1EAE3FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDB8);
  }

  return result;
}

unint64_t sub_193682C98()
{
  result = qword_1EAE3FDC0;
  if (!qword_1EAE3FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDC0);
  }

  return result;
}

uint64_t sub_193682D34(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_193682DA4()
{
  sub_1935AB250(319, qword_1ED506DA0, &type metadata for ModelCatalogSubscription.UseCase, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1935AB250(319, &qword_1ED506D40, &type metadata for ModelCatalogSubscription.Parameter, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_19349D140();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_193682E88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *_s17AppleIntelligenceOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_193682FC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5116B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5116B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Availability.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_47 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5116B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDC8, &qword_193979378);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Availability.attribute(_:)(void (*a1)(void))
{
  result = sub_1936833D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19368341C(void (*a1)(void))
{
  result = sub_1936833D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19368344C(uint64_t a1)
{
  result = sub_193683474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193683474()
{
  result = qword_1ED508060;
  if (!qword_1ED508060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED508060);
  }

  return result;
}

_BYTE *_s12AvailabilityOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceAvailability.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppleIntelligenceAvailability();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19368377C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FDD0, &qword_1939793F0);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FDD0, &qword_1939793F0);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19368377C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceAvailability();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceAvailability.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FDD0, &qword_1939793F0);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_193683920(v10, a1);
  }

  return result;
}

uint64_t sub_193683920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceAvailability();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceAvailability.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_193686720() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_193683920(v14, v40);
      v33 = type metadata accessor for AppleIntelligenceAvailability();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceAvailability.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceAvailability();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19368377C(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FDD0, &qword_1939793F0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FDD0, &qword_1939793F0);
  return v15;
}

id static AppleIntelligenceAvailability.columns.getter()
{
  v80 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v10, v11, v12, v13, v0, 12, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v24[2].n128_u64[0] = sub_19393C850();
  v33 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v34, v35, v36, v37, v24, 12, 0);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_7_2(result);
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v38, v39, v40, v41, v42, v43, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v47[2].n128_u64[0] = sub_19393C850();
  v56 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD00000000000001ELL, 0x8000000193A2C0F0, 3, 0, v47, 0, 2);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  v57 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v66[2].n128_u64[0] = sub_19393C850();
  v75 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v76, v77, v78, v79, v66, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v80;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_193684088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v45 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_38();
  v20 = a1 == 0xD000000000000018 && v19 == a2;
  if (!v20 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v28 = a1 == 0xD000000000000021 && v27 == a2;
    if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceAvailability();
      v22 = result[8];
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_38();
    v30 = a1 == 0xD000000000000020 && v29 == a2;
    if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceAvailability();
      v31 = result[9];
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v34 = a1 == 0xD000000000000022 && v33 == a2;
      if (!v34 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        v36 = a1 == 0xD00000000000001ELL && v35 == a2;
        if (v36 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v37 = type metadata accessor for AppleIntelligenceAvailability();
          sub_1934DE90C(v3 + *(v37 + 44), v10);
          if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
          {
            result = sub_19344E6DC(v10, &qword_1EAE3A9E8, &qword_19394F800);
            goto LABEL_8;
          }

          v38 = v45;
          (*(v45 + 32))(v18, v10, v11);
          sub_1934948FC();
          return (*(v38 + 8))(v18, v11);
        }

        v39 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
        if (v39 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v46 = *(v3 + *(type metadata accessor for AppleIntelligenceAvailability() + 48));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
        }

        else
        {
          v40 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
          if (!v40 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_11();
            swift_allocError();
            v43 = v42;
            *v42 = a1;
            v42[1] = a2;
            v42[5] = type metadata accessor for AppleIntelligenceAvailability();
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v43 + 2);
            sub_19368377C(v3, boxed_opaque_existential_1Tm);
            *(v43 + 48) = 1;
            swift_willThrow();
          }

          result = type metadata accessor for AppleIntelligenceAvailability();
          v41 = v3 + result[13];
          if (*(v41 + 8))
          {
            goto LABEL_8;
          }

          v46 = *v41;
        }

        return sub_1934948FC();
      }

      result = type metadata accessor for AppleIntelligenceAvailability();
      v31 = result[10];
    }

    v32 = *(v3 + v31);
    if (v32 == 2)
    {
      goto LABEL_8;
    }

    LOBYTE(v46) = v32 & 1;
    return sub_1934948FC();
  }

  result = type metadata accessor for AppleIntelligenceAvailability();
  v22 = result[7];
LABEL_7:
  v23 = v3 + v22;
  v24 = *(v3 + v22);
  if (v24 == 3)
  {
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v25 = *(v23 + 16);
  v26 = *(v23 + 8);
  LOWORD(v46) = v24;
  v47 = v26;
  v48 = v25 & 0x1FF;
  return sub_193494798(&type metadata for AppleIntelligenceAvailability.UseCaseInfo, &off_1F07DCA60, a3);
}

void sub_1936844D4(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  OUTLINED_FUNCTION_38();
  v8 = v6 == 0xD000000000000010 && v7 == a1;
  if (v8 || (v9 = v6, v10 = v2[1], v11 = *(v2 + 1), v17 = v2[16], v12 = v2[17], (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    if (v5 == 2)
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v14 = v9 == 0xD000000000000022 && v13 == a1;
  if (v14 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (v10 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v15 = v9 == 0x7473696C74696177 && a1 == 0xEE00737574617453;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = a1;
  *(v16 + 40) = &type metadata for AppleIntelligenceAvailability.UseCaseInfo;
  *(v16 + 16) = v5;
  *(v16 + 17) = v10;
  *(v16 + 24) = v11;
  *(v16 + 32) = v17;
  *(v16 + 33) = v12;
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceAvailability.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceAvailability();
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  sub_1936878B0(v5);
  v6 = a1 + v2[8];
  sub_1936869A4(v6);
  v12 = v2[9];
  j__OUTLINED_FUNCTION_7_9();
  v7 = v2[10];
  j__OUTLINED_FUNCTION_7_9();
  v8 = v2[11];
  sub_19349C79C();
  v9 = a1 + v2[13];
  sub_193686CEC(v9);
  *a1 = *sub_193686720();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *v5 = xmmword_19396F4D0;
  *(v5 + 16) = 0;
  *v6 = xmmword_19396F4D0;
  *(v6 + 16) = 0;
  *(a1 + v12) = 2;
  *(a1 + v7) = 2;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v10);
  *(a1 + v2[12]) = MEMORY[0x1E69E7CC0];
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t static AppleIntelligenceAvailability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = sub_19393BE00();
  v7 = OUTLINED_FUNCTION_9_17(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_6_48(v20[7]);
  if (v22)
  {
    if (v21 != 3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    if (v22)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_57(v23);
    if ((OUTLINED_FUNCTION_10_47() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_6_48(v20[8]);
  if (v22)
  {
    if (v24 != 3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    if (v25)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_57(v26);
    if ((OUTLINED_FUNCTION_10_47() & 1) == 0)
    {
      return 0;
    }
  }

  v27 = v20[9];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    return 0;
  }

  v30 = v20[10];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    return 0;
  }

  v33 = v20[11];
  v34 = *(v18 + 48);
  sub_1934DE90C(a1 + v33, v3);
  sub_1934DE90C(a2 + v33, v3 + v34);
  OUTLINED_FUNCTION_5_3(v3);
  if (v22)
  {
    OUTLINED_FUNCTION_5_3(v3 + v34);
    if (v22)
    {
      sub_193442B60(v3, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_33;
    }

LABEL_31:
    sub_193442B60(v3, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v3, v17);
  OUTLINED_FUNCTION_5_3(v3 + v34);
  if (v35)
  {
    (*(v9 + 8))(v17, v2);
    goto LABEL_31;
  }

  (*(v9 + 32))(v13, v3 + v34, v2);
  sub_1934DF3E8(&qword_1EAE3A848);
  v36 = sub_19393C550();
  v37 = *(v9 + 8);
  v37(v13, v2);
  v37(v17, v2);
  sub_193442B60(v3, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  if (sub_19344FC94(*(a1 + v20[12]), *(a2 + v20[12])))
  {
    v38 = v20[13];
    v39 = (a1 + v38);
    v40 = *(a1 + v38 + 8);
    v41 = (a2 + v38);
    v42 = *(a2 + v38 + 8);
    if (v40)
    {
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v43 = *v41;
      v45[3] = *v39;
      v46 = 0;
      if (v42)
      {
        return 0;
      }

      v45[0] = v43;
      sub_1936853C8();
      if ((OUTLINED_FUNCTION_10_47() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t AppleIntelligenceAvailability.hash(into:)(uint64_t a1)
{
  v5 = sub_19393BE00();
  v6 = OUTLINED_FUNCTION_9_17(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = OUTLINED_FUNCTION_13_39();
  v16 = *(v1 + v15[7]);
  if (v16 == 3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_60(v16);
    sub_193685470();
    sub_19393C540();
  }

  v17 = *(v1 + v15[8]);
  if (v17 == 3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_60(v17);
    sub_193685470();
    sub_19393C540();
  }

  if (*(v1 + v15[9]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (*(v1 + v15[10]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  sub_1934DE90C(v1 + v15[11], v3);
  OUTLINED_FUNCTION_5_3(v3);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v8 + 32))(v12, v3, v2);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978);
    sub_19393C540();
    (*(v8 + 8))(v12, v2);
  }

  sub_1934D11C8(a1, *(v1 + v15[12]));
  v19 = v1 + v15[13];
  if (*(v19 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v21[1] = *v19;
  OUTLINED_FUNCTION_103_0();
  sub_1936856C0();
  return sub_19393C540();
}

uint64_t AppleIntelligenceAvailability.Region.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

char *static AppleIntelligenceAvailability.Region.allCases.getter()
{
  v0 = sub_1936854C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v4 = OUTLINED_FUNCTION_1_60(v1);
    v0 = sub_1936854C4(v4, v5, v6, v7);
  }

  *(v0 + 2) = v2 + 1;
  *&v0[8 * v2 + 32] = 0;
  return v0;
}

uint64_t AppleIntelligenceAvailability.Region.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_2_9();
  if (v4 != v2 || v3 != 0xE700000000000000)
  {
    sub_19393CA30();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.allCases.getter()
{
  v0 = sub_1936855C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_1_60(v1);
    v0 = sub_1936855C4(v16, v17, v18, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = OUTLINED_FUNCTION_12_33(v0, v1);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v0 = sub_1936855C4((v1 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v20 = OUTLINED_FUNCTION_1_60(v10);
    v0 = sub_1936855C4(v20, v21, v22, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_12_33(v0, v13);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  result = 0x6F4A746559746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x64656E696F4ALL;
      break;
    case 3:
      result = 0x6465756575716544;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == OUTLINED_FUNCTION_2_9() && v6 == 0xE700000000000000;
  if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v11 = a1 == 0x6F4A746559746F4ELL && a2 == 0xEC00000064656E69;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 0;
LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  v12 = a1 == 0xD000000000000010 && 0x8000000193A2C1B0 == a2;
  if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 1;
    goto LABEL_13;
  }

  v13 = a1 == 0x64656E696F4ALL && a2 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v10 = 1;
    v9 = 2;
  }

  else if (a1 == 0x6465756575716544 && a2 == 0xE800000000000000)
  {

    v10 = 1;
    v9 = 3;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_9();

    v9 = 3;
    if ((v10 & 1) == 0)
    {
      v9 = 0;
    }
  }

LABEL_14:
  *a3 = v9;
  *(a3 + 8) = v10 & 1;
  *(a3 + 9) = 0;
  return result;
}

unint64_t sub_1936853C8()
{
  result = qword_1EAE3FDD8;
  if (!qword_1EAE3FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDD8);
  }

  return result;
}

unint64_t sub_19368541C()
{
  result = qword_1EAE3FDE0;
  if (!qword_1EAE3FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDE0);
  }

  return result;
}

unint64_t sub_193685470()
{
  result = qword_1EAE3FDE8;
  if (!qword_1EAE3FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDE8);
  }

  return result;
}

char *sub_1936854C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE10, &qword_193979510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1936855C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE08, &qword_193979508);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936856C0()
{
  result = qword_1EAE3FDF0;
  if (!qword_1EAE3FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDF0);
  }

  return result;
}

unint64_t sub_193685718()
{
  result = qword_1EAE3FDF8;
  if (!qword_1EAE3FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDF8);
  }

  return result;
}

unint64_t sub_193685770()
{
  result = qword_1EAE3FE00;
  if (!qword_1EAE3FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE00);
  }

  return result;
}

void sub_1936857C4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA86A0);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_193952700;
  v7 = v6 + v5 + dword_1EAEA86D8;
  *(v6 + v5) = 1;
  *v7 = "appleIntelligenceUseCase";
  *(v7 + 8) = 24;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5 + v3);
  *v13 = 2;
  v14 = OUTLINED_FUNCTION_0_0(v12, "appleIntelligenceDiffusionUseCase");
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v3);
  *v16 = 3;
  v17 = OUTLINED_FUNCTION_0_0(v15, "isAppleIntelligenceToggleEnabled");
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v3);
  *v19 = 4;
  v20 = OUTLINED_FUNCTION_0_0(v18, "hasEngagedWithAppleIntelligenceCFU");
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v6 + v5 + 4 * v3);
  *v22 = 5;
  v23 = OUTLINED_FUNCTION_0_0(v21, "datePostedAppleIntelligenceCFU");
  (v11)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v6 + v5 + 5 * v3);
  *v25 = 6;
  v26 = OUTLINED_FUNCTION_0_0(v24, "languages");
  (v11)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v6 + v5 + 6 * v3);
  *v28 = 7;
  *v27 = "region";
  *(v27 + 8) = 6;
  *(v27 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}