uint64_t sub_1C56D5E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C56DAFDC(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  return sub_1C584EFB0();
}

uint64_t sub_1C56D5F8C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  return result;
}

uint64_t sub_1C56D6028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9A0, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D60C8()
{
  sub_1C56EF190(&qword_1EC16D1F8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);

  return sub_1C584F160();
}

uint64_t sub_1C56D6134()
{
  sub_1C56EF190(&qword_1EC16D1F8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);

  return sub_1C584F170();
}

uint64_t sub_1C56D61C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  result = sub_1C584F050();
  if (!v6)
  {
    v12 = a5;
    v13 = a6;
    v14 = a4;
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          a4(0);
          sub_1C56EF190(a5, a6);
          sub_1C584F0F0();
          a5 = v12;
          a6 = v13;
LABEL_5:
          a4 = v14;
        }
      }

      else
      {
        if (result == 1)
        {
          a4(0);
          sub_1C56EF190(a5, a6);
          sub_1C584F0F0();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_4;
        }
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56D639C()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
    result = sub_1C584F210();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
    result = sub_1C584F210();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
    v4 = v2;
    result = sub_1C584F210();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[3] + 16) || (type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0), sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue), result = sub_1C584F210(), !v4))
  {
    v5 = v0 + *(type metadata accessor for WebPlacecardBridgeReply.MUContact(0) + 32);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56D65F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  v3 = a2 + *(a1 + 32);
  return sub_1C584EFC0();
}

uint64_t sub_1C56D6644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56D66BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C56D67A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F998, type metadata accessor for WebPlacecardBridgeReply.MUContact);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D6844()
{
  sub_1C56EF190(&qword_1EC16D1A0, type metadata accessor for WebPlacecardBridgeReply.MUContact);

  return sub_1C584F160();
}

uint64_t sub_1C56D68B0()
{
  sub_1C56EF190(&qword_1EC16D1A0, type metadata accessor for WebPlacecardBridgeReply.MUContact);

  return sub_1C584F170();
}

uint64_t sub_1C56D6984()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190258);
  __swift_project_value_buffer(v0, qword_1EC190258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "identifier";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D6C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F990, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D6CAC()
{
  sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);

  return sub_1C584F160();
}

uint64_t sub_1C56D6D18()
{
  sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);

  return sub_1C584F170();
}

uint64_t sub_1C56D6DC4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F968);
  __swift_project_value_buffer(v0, qword_1EC18F968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C586AEE0;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v4 = "favorites";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 2;
  *v8 = "guides";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "rapsInReview";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "arpSuggestions";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "arpRatings";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "arpPhotos";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "savedStateOfPlace";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "placeNote";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  return sub_1C584F240();
}

uint64_t sub_1C56D7110()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  v6 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings) = v4;
  v9 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v10 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  v11 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  result = (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  qword_1EC177DB0 = v3;
  return result;
}

uint64_t sub_1C56D726C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC8, &qword_1C586B150);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v48 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v45 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB8, &qword_1C586B140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v44 - v14;
  *(v1 + 16) = 2;
  v16 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  v18 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v44 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings) = v16;
  v22 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos);
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v24 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  v46 = v23;
  v47 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  v25 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v24;
  swift_beginAccess();
  v26 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v26;
  v27 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  sub_1C56466CC(a1 + v27, v15, &qword_1EC16ECB8, &qword_1C586B140);
  swift_beginAccess();

  sub_1C56ECE38(v15, v1 + v17, &qword_1EC16ECB8, &qword_1C586B140);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  v29 = v45;
  sub_1C56466CC(a1 + v28, v45, &qword_1EC16ECC0, &qword_1C586B148);
  v30 = v44;
  swift_beginAccess();
  sub_1C56ECE38(v29, v1 + v30, &qword_1EC16ECC0, &qword_1C586B148);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  v32 = *(a1 + v31);
  swift_beginAccess();
  v33 = *(v1 + v21);
  *(v1 + v21) = v32;

  v34 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  v37 = v22[1];
  *v22 = v36;
  v22[1] = v35;

  v38 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  swift_beginAccess();
  LOBYTE(v38) = *(a1 + v38);
  v39 = v46;
  swift_beginAccess();
  *(v1 + v39) = v38;
  v40 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  v41 = v48;
  sub_1C56466CC(a1 + v40, v48, &qword_1EC16ECC8, &qword_1C586B150);

  v42 = v47;
  swift_beginAccess();
  sub_1C56ECE38(v41, v1 + v42, &qword_1EC16ECC8, &qword_1C586B150);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56D7778()
{
  v1 = v0[3];

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview, &qword_1EC16ECB8, &qword_1C586B140);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions, &qword_1EC16ECC0, &qword_1C586B148);
  v2 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings);

  v3 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos + 8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote, &qword_1EC16ECC8, &qword_1C586B150);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56D7858()
{
  v2 = v0;
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1C56D726C(v6);
    *(v2 + v3) = v10;
  }

  result = sub_1C584F050();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            swift_beginAccess();
            sub_1C57041CC();
            sub_1C584F090();
            goto LABEL_25;
          }

          if (result != 8)
          {
            goto LABEL_26;
          }

          v14 = v1;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
          v15 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote;
          v16 = &unk_1EC16D400;
          goto LABEL_23;
        }

        if (result == 5)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
          sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
LABEL_21:
          v1 = v13;
          sub_1C584F0F0();
          goto LABEL_25;
        }

        swift_beginAccess();
        sub_1C584F0D0();
      }

      else
      {
        if (result > 2)
        {
          v14 = v1;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
            v15 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview;
            v16 = &unk_1EC16D360;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
            v15 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions;
            v16 = &unk_1EC16D320;
          }

LABEL_23:
          sub_1C56EF190(v16, v15);
          v1 = v14;
          sub_1C584F100();
          goto LABEL_25;
        }

        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_26;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
          sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
          goto LABEL_21;
        }

        swift_beginAccess();
        sub_1C584F080();
      }

LABEL_25:
      swift_endAccess();
LABEL_26:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56D7C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(v9 + 24) + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
    sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);

    sub_1C584F210();
  }

  sub_1C56D7F44(v9, a1, a2, a3);
  sub_1C56D816C(v9, a1, a2, a3);
  v11 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  if (*(*(v9 + v11) + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
    sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);

    sub_1C584F210();
  }

  sub_1C56D8394(v9, a1, a2, a3, OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos);
  sub_1C56D8444(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace, sub_1C57041CC);
  sub_1C56D8504(v9, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56D7F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB8, &qword_1C586B140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECB8, &qword_1C586B140);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECB8, &qword_1C586B140);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C56EF190(&qword_1EC16D360, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
}

uint64_t sub_1C56D816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECC0, &qword_1C586B148);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECC0, &qword_1C586B148);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56EF190(&qword_1EC16D320, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
}

uint64_t sub_1C56D8394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56D8444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 3)
  {
    v10 = *(a1 + v8);
    a6(result);
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56D8504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC8, &qword_1C586B150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECC8, &qword_1C586B150);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECC8, &qword_1C586B150);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C56EF190(&qword_1EC16D400, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
}

BOOL sub_1C56D872C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v112 = *(v4 - 8);
  v113 = v4;
  v5 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC48, &qword_1C5875E58);
  v9 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111, v10);
  v12 = &v107 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC8, &qword_1C586B150);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v122 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v121 = &v107 - v19;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v118 = *(v20 - 8);
  v119 = v20;
  v21 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v114 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC50, &qword_1C5875E60);
  v24 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117, v25);
  v120 = &v107 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v115 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v124 = &v107 - v33;
  v34 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v125 = *(v34 - 8);
  v35 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v34, v36);
  v116 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC58, &qword_1C5875E68);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v107 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB8, &qword_1C586B140);
  v44 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v123 = &v107 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v107 - v49;
  swift_beginAccess();
  v51 = *(a1 + 16);
  swift_beginAccess();
  v52 = *(a2 + 16);
  if (v51 == 2)
  {
    if (v52 != 2)
    {
      return 0;
    }
  }

  else if (v52 == 2 || ((v51 ^ v52) & 1) != 0)
  {
    return 0;
  }

  v108 = v8;
  v109 = v12;
  swift_beginAccess();
  v53 = *(a1 + 24);
  swift_beginAccess();
  v54 = a2;
  v55 = *(a2 + 24);

  v56 = sub_1C56EB888(v53, v55);

  if ((v56 & 1) == 0)
  {
    goto LABEL_30;
  }

  v57 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  v110 = a1;
  sub_1C56466CC(a1 + v57, v50, &qword_1EC16ECB8, &qword_1C586B140);
  v58 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  v59 = *(v38 + 48);
  sub_1C56466CC(v50, v42, &qword_1EC16ECB8, &qword_1C586B140);
  sub_1C56466CC(v54 + v58, &v42[v59], &qword_1EC16ECB8, &qword_1C586B140);
  v60 = *(v125 + 48);
  v61 = v54;
  if (v60(v42, 1, v34) == 1)
  {
    sub_1C5625230(v50, &qword_1EC16ECB8, &qword_1C586B140);
    if (v60(&v42[v59], 1, v34) == 1)
    {
      sub_1C5625230(v42, &qword_1EC16ECB8, &qword_1C586B140);
      goto LABEL_16;
    }

LABEL_13:
    sub_1C5625230(v42, &qword_1EC16FC58, &qword_1C5875E68);
    goto LABEL_30;
  }

  v62 = v123;
  sub_1C56466CC(v42, v123, &qword_1EC16ECB8, &qword_1C586B140);
  if (v60(&v42[v59], 1, v34) == 1)
  {
    sub_1C5625230(v50, &qword_1EC16ECB8, &qword_1C586B140);
    sub_1C56EC248(v62, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
    goto LABEL_13;
  }

  v63 = v116;
  sub_1C56EC178(&v42[v59], v116, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  v64 = sub_1C56EEB28(v62, v63, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C56EC248(v63, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5625230(v50, &qword_1EC16ECB8, &qword_1C586B140);
  sub_1C56EC248(v62, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5625230(v42, &qword_1EC16ECB8, &qword_1C586B140);
  if ((v64 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v65 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v66 = v110;
  swift_beginAccess();
  v67 = v124;
  sub_1C56466CC(v66 + v65, v124, &qword_1EC16ECC0, &qword_1C586B148);
  v68 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  v69 = *(v117 + 48);
  v70 = v120;
  sub_1C56466CC(v67, v120, &qword_1EC16ECC0, &qword_1C586B148);
  sub_1C56466CC(v61 + v68, v70 + v69, &qword_1EC16ECC0, &qword_1C586B148);
  v71 = v119;
  v72 = *(v118 + 48);
  if (v72(v70, 1, v119) == 1)
  {
    sub_1C5625230(v67, &qword_1EC16ECC0, &qword_1C586B148);
    v73 = v72(v70 + v69, 1, v71);
    v74 = v110;
    v76 = v121;
    v75 = v122;
    if (v73 == 1)
    {
      sub_1C5625230(v70, &qword_1EC16ECC0, &qword_1C586B148);
      goto LABEL_23;
    }

LABEL_21:
    sub_1C5625230(v70, &qword_1EC16FC50, &qword_1C5875E60);
    goto LABEL_30;
  }

  v77 = v115;
  sub_1C56466CC(v70, v115, &qword_1EC16ECC0, &qword_1C586B148);
  v78 = v72(v70 + v69, 1, v71);
  v76 = v121;
  v75 = v122;
  if (v78 == 1)
  {
    sub_1C5625230(v124, &qword_1EC16ECC0, &qword_1C586B148);
    sub_1C56EC248(v77, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
    goto LABEL_21;
  }

  v79 = v70 + v69;
  v80 = v114;
  sub_1C56EC178(v79, v114, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  v81 = sub_1C56EDA70(v77, v80);
  sub_1C56EC248(v80, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C5625230(v124, &qword_1EC16ECC0, &qword_1C586B148);
  sub_1C56EC248(v77, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C5625230(v70, &qword_1EC16ECC0, &qword_1C586B148);
  v74 = v110;
  if ((v81 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v82 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  v83 = *(v74 + v82);
  v84 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  v85 = *(v61 + v84);

  v86 = sub_1C56EBBC8(v83, v85);

  if ((v86 & 1) == 0)
  {
    goto LABEL_30;
  }

  v87 = (v74 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos);
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  v90 = (v61 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos);
  swift_beginAccess();
  v91 = v90[1];
  if (!v89)
  {
    if (!v91)
    {
      goto LABEL_33;
    }

LABEL_30:

    return 0;
  }

  if (!v91 || (v88 != *v90 || v89 != v91) && (sub_1C584FDC0() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v93 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  v94 = v110;
  swift_beginAccess();
  v95 = *(v94 + v93);
  v96 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  swift_beginAccess();
  v97 = *(v61 + v96);
  if (v95 == 3)
  {
    if (v97 != 3)
    {
      goto LABEL_30;
    }
  }

  else if (v97 == 3 || v95 != v97)
  {
    goto LABEL_30;
  }

  v98 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  sub_1C56466CC(v94 + v98, v76, &qword_1EC16ECC8, &qword_1C586B150);
  v99 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  v100 = *(v111 + 48);
  v101 = v109;
  sub_1C56466CC(v76, v109, &qword_1EC16ECC8, &qword_1C586B150);
  sub_1C56466CC(v61 + v99, v101 + v100, &qword_1EC16ECC8, &qword_1C586B150);
  v102 = v113;
  v103 = *(v112 + 48);
  if (v103(v101, 1, v113) == 1)
  {

    sub_1C5625230(v76, &qword_1EC16ECC8, &qword_1C586B150);
    if (v103(v101 + v100, 1, v102) == 1)
    {
      sub_1C5625230(v101, &qword_1EC16ECC8, &qword_1C586B150);
      return 1;
    }

LABEL_44:
    sub_1C5625230(v101, &qword_1EC16FC48, &qword_1C5875E58);
    return 0;
  }

  sub_1C56466CC(v101, v75, &qword_1EC16ECC8, &qword_1C586B150);
  if (v103(v101 + v100, 1, v102) == 1)
  {

    sub_1C5625230(v76, &qword_1EC16ECC8, &qword_1C586B150);
    sub_1C56EC248(v75, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
    goto LABEL_44;
  }

  v104 = v101 + v100;
  v105 = v108;
  sub_1C56EC178(v104, v108, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  v106 = sub_1C56F0C00(v75, v105, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);

  sub_1C56EC248(v105, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C5625230(v76, &qword_1EC16ECC8, &qword_1C586B150);
  sub_1C56EC248(v75, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C5625230(v101, &qword_1EC16ECC8, &qword_1C586B150);
  return (v106 & 1) != 0;
}

uint64_t sub_1C56D9508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F988, type metadata accessor for WebPlacecardBridgeReply.MUUserData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D95A8()
{
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData);

  return sub_1C584F160();
}

uint64_t sub_1C56D9614()
{
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData);

  return sub_1C584F170();
}

uint64_t sub_1C56D96D4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190270);
  __swift_project_value_buffer(v0, qword_1EC190270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appleRatingCategory";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v13 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v11 = *(a4(0) + 20);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      v14 = a4(0);
      a5(v5 + *(v14 + 24), a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C56D9A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F980, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D9AB0()
{
  sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);

  return sub_1C584F160();
}

uint64_t sub_1C56D9B1C()
{
  sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);

  return sub_1C584F170();
}

uint64_t sub_1C56D9BC8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190288);
  __swift_project_value_buffer(v0, qword_1EC190288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "guideID";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "numberOfPlaces";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D9E10()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0) + 32);
        sub_1C584F0E0();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0) + 20);
LABEL_3:
      v0 = 0;
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_1C56D9F10()
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1C584F1F0();
  }

  v8 = (v0 + v3[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1C584F1F0();
  }

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    sub_1C584F200();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DA020@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1C56DA0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F978, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DA164()
{
  sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);

  return sub_1C584F160();
}

uint64_t sub_1C56DA1D0()
{
  sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);

  return sub_1C584F170();
}

uint64_t sub_1C56DA250()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F938);
  __swift_project_value_buffer(v0, qword_1EC18F938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userImage";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "count";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DA418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  result = a4(0);
  v11 = result;
  v12 = (v5 + *(result + 20));
  if (v12[1])
  {
    v13 = *v12;
    result = sub_1C584F1F0();
    if (v6)
    {
      return result;
    }
  }

  else if (v6)
  {
    return result;
  }

  v14 = (v5 + *(v11 + 24));
  if ((v14[1] & 1) == 0)
  {
    a5(*v14, 2, a2, a3);
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DA4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1C56DA5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F970, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DA66C()
{
  sub_1C56EF190(&qword_1EC16D360, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);

  return sub_1C584F160();
}

uint64_t sub_1C56DA6D8()
{
  sub_1C56EF190(&qword_1EC16D360, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);

  return sub_1C584F170();
}

uint64_t sub_1C56DA784()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902A0);
  __swift_project_value_buffer(v0, qword_1EC1902A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C586AE90;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subtitle";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "isRatingSuggestion";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "isPhotoSuggestion";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "userImage";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "canAddPhotos";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hasNearbyPhotos";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "canRate";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isPinned";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "hasVisited";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "isNearbyLocation";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56DAB98()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 20);
          goto LABEL_23;
        }

        if (result == 2)
        {
          v7 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 24);
          goto LABEL_23;
        }
      }

      else
      {
        if (result == 3)
        {
          v11 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 28);
          goto LABEL_3;
        }

        if (result == 4)
        {
          v1 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 32);
          goto LABEL_3;
        }

        v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 36);
LABEL_23:
        v0 = 0;
        sub_1C584F0D0();
      }
    }

    else if (result > 8)
    {
      switch(result)
      {
        case 9:
          v13 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 52);
          goto LABEL_3;
        case 10:
          v10 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 56);
          goto LABEL_3;
        case 11:
          v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 60);
          goto LABEL_3;
      }
    }

    else
    {
      if (result == 6)
      {
        v12 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 40);
      }

      else if (result == 7)
      {
        v9 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 44);
      }

      else
      {
        v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0) + 48);
      }

LABEL_3:
      v0 = 0;
      sub_1C584F080();
    }
  }
}

uint64_t sub_1C56DAD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    v12 = *v11;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v13 = (v5 + v10[6]);
  if (v13[1])
  {
    v14 = *v13;
    sub_1C584F1F0();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56DAF60(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56DAFDC(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56DB058(v5);
  sub_1C56DB0D0(v5);
  sub_1C56DB148(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56DB1C4(v5);
  sub_1C56DB23C(v5);
  return sub_1C584EFB0();
}

uint64_t sub_1C56DAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56DAFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB058(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB0D0(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB1C4(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB23C(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB2B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v9) = 2;
  v11 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v11) = 2;
  v12 = a1[14];
  *(a2 + a1[13]) = 2;
  *(a2 + v12) = 2;
  *(a2 + a1[15]) = 2;
  return result;
}

uint64_t sub_1C56DB37C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F968, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DB41C()
{
  sub_1C56EF190(&qword_1EC16D320, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);

  return sub_1C584F160();
}

uint64_t sub_1C56DB488()
{
  sub_1C56EF190(&qword_1EC16D320, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);

  return sub_1C584F170();
}

uint64_t sub_1C56DB508()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902B8);
  __swift_project_value_buffer(v0, qword_1EC1902B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "note";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userImage";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DB6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = *(a4(0) + 24);
LABEL_3:
      v4 = 0;
      sub_1C584F0D0();
    }
  }
}

uint64_t sub_1C56DB784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  v8 = (v4 + *(result + 20));
  if (v8[1])
  {
    v9 = *v8;
    result = sub_1C584F1F0();
    if (v5)
    {
      return result;
    }
  }

  else if (v5)
  {
    return result;
  }

  v10 = (v4 + *(v7 + 24));
  if (v10[1])
  {
    v11 = *v10;
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DB848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C56DB8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F960, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DB998()
{
  sub_1C56EF190(&qword_1EC16D400, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);

  return sub_1C584F160();
}

uint64_t sub_1C56DBA04()
{
  sub_1C56EF190(&qword_1EC16D400, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);

  return sub_1C584F170();
}

uint64_t sub_1C56DBAB0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F950);
  __swift_project_value_buffer(v0, qword_1EC18F950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "etaTransportType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "etaTravelTime";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "distanceString";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DBCF8()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0) + 32);
LABEL_13:
        v0 = 0;
        sub_1C584F0A0();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0) + 20);
LABEL_3:
      v0 = 0;
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0) + 24);
      goto LABEL_13;
    }
  }
}

uint64_t sub_1C56DBDF8()
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_1C584F1B0();
  }

  v8 = (v0 + v3[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1C584F1F0();
  }

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DBF08@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1C56DBFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F958, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DC050()
{
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);

  return sub_1C584F160();
}

uint64_t sub_1C56DC0BC()
{
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);

  return sub_1C584F170();
}

uint64_t sub_1C56DC13C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902D0);
  __swift_project_value_buffer(v0, qword_1EC1902D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "artworkURL";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "subtitle";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "isAppInstalled";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DC404()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0) + 36);
LABEL_3:
          v0 = 0;
          sub_1C584F0D0();
          break;
        case 6:
          v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0) + 40);
          sub_1C584F080();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0) + 24);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1C56DC53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    v12 = *v11;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v13 = (v5 + v10[6]);
  if (v13[1])
  {
    v14 = *v13;
    sub_1C584F1F0();
  }

  v15 = (v5 + v10[7]);
  if (v15[1])
  {
    v16 = *v15;
    sub_1C584F1F0();
  }

  v17 = (v5 + v10[8]);
  if (v17[1])
  {
    v18 = *v17;
    sub_1C584F1F0();
  }

  sub_1C56DAF60(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C56DAFDC(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  return sub_1C584EFB0();
}

uint64_t sub_1C56DC6A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v11) = 2;
  return result;
}

uint64_t sub_1C56DC754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F950, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DC7F4()
{
  sub_1C56EF190(&qword_1EC16F708, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);

  return sub_1C584F160();
}

uint64_t sub_1C56DC860()
{
  sub_1C56EF190(&qword_1EC16F708, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);

  return sub_1C584F170();
}

uint64_t sub_1C56DC8E0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902E8);
  __swift_project_value_buffer(v0, qword_1EC1902E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "place";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "batch_places";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DCAB0()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0) + 24);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      sub_1C584F0C0();
    }
  }

  return result;
}

uint64_t sub_1C56DCB58()
{
  result = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  if (*(*v0 + 16))
  {
    sub_1C584F1D0();
  }

  v6 = v0 + *(v3 + 20);
  return sub_1C584EFB0();
}

uint64_t sub_1C56DCC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = a2 + *(a1 + 20);
  result = sub_1C584EFC0();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C56DCCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F948, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DCD58()
{
  sub_1C56EF190(&qword_1EC16D268, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);

  return sub_1C584F160();
}

uint64_t sub_1C56DCDC4()
{
  sub_1C56EF190(&qword_1EC16D268, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);

  return sub_1C584F170();
}

uint64_t sub_1C56DCE44()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190300);
  __swift_project_value_buffer(v0, qword_1EC190300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "providerID";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "baseActionUrl";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayName";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "logoImage";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "snippetLogoImage";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DD0D8()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0) + 24);
LABEL_3:
        v0 = 0;
        sub_1C584F0D0();
      }

      else if (result == 2)
      {
        sub_1C584F0C0();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0) + 28);
          goto LABEL_3;
        case 4:
          v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0) + 32);
          goto LABEL_3;
        case 5:
          v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1C56DD1E0()
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  if (*(*v0 + 16))
  {
    sub_1C584F1D0();
  }

  v6 = (v0 + v3[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1C584F1F0();
  }

  v8 = (v0 + v3[8]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1C584F1F0();
  }

  v10 = (v0 + v3[9]);
  if (v10[1])
  {
    v11 = *v10;
    sub_1C584F1F0();
  }

  v12 = v0 + v3[5];
  return sub_1C584EFB0();
}

uint64_t sub_1C56DD330@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[5];
  result = sub_1C584EFC0();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1C56DD3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F940, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DD480()
{
  sub_1C56EF190(&qword_1EC16D300, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);

  return sub_1C584F160();
}

uint64_t sub_1C56DD4EC()
{
  sub_1C56EF190(&qword_1EC16D300, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);

  return sub_1C584F170();
}

uint64_t sub_1C56DD56C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F980);
  __swift_project_value_buffer(v0, qword_1EC18F980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arguments";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DD734()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0) + 20);
        sub_1C5703A94();
        sub_1C584F090();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0) + 24);
        type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
        sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56DD86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  if (*(v5 + *(result + 20)) == 13)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = *(v5 + *(result + 20));
    sub_1C5703A94();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  sub_1C56DD92C(v5, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56DD92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  sub_1C56466CC(a1 + *(v16 + 24), v9, &qword_1EC16ECD0, &qword_1C586B158);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECD0, &qword_1C586B158);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
}

uint64_t sub_1C56DDB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  *(a2 + v4) = 13;
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C56DDC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F938, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DDCB4()
{
  sub_1C56EF190(&unk_1EC16D438, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);

  return sub_1C584F160();
}

uint64_t sub_1C56DDD20()
{
  sub_1C56EF190(&unk_1EC16D438, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);

  return sub_1C584F170();
}

uint64_t sub_1C56DDDA0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F878);
  __swift_project_value_buffer(v0, qword_1EC18F878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C586AE90;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "cardExpansion";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "etaProvider";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "userData";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "directionsMetadata";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "menuItemTap";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "vgVehicles";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "placecardOfflineMapProvider";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "nativeUITap";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "visibility";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "userPreferences";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 1000;
  *v26 = "perfMarkers";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56DE194()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v11 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  v19 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  v21 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v23 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  v25 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  result = (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  qword_1EC176048 = v3;
  return result;
}

uint64_t sub_1C56DE4E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED08, &qword_1C586B190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v115 = &v99 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED00, &qword_1C586B188);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v114 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF8, &qword_1C586B180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v113 = &v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v112 = &v99 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v111 = &v99 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE8, &qword_1C586B170);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v110 = &v99 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v109 = &v99 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v108 = &v99 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v104 = &v99 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v99 = &v99 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD8, &qword_1C586B160);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v47 = &v99 - v46;
  v48 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  v49 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  (*(*(v49 - 8) + 56))(v1 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v51 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v51 - 8) + 56))(v1 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v53 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v53 - 8) + 56))(v1 + v52, 1, 1, v53);
  v54 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v55 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v55 - 8) + 56))(v1 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  v100 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  v57 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  (*(*(v57 - 8) + 56))(v1 + v56, 1, 1, v57);
  v58 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  v101 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  v59 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  (*(*(v59 - 8) + 56))(v1 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v102 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v61 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v61 - 8) + 56))(v1 + v60, 1, 1, v61);
  v62 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  v103 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  v63 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  (*(*(v63 - 8) + 56))(v1 + v62, 1, 1, v63);
  v64 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  v105 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  v65 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  (*(*(v65 - 8) + 56))(v1 + v64, 1, 1, v65);
  v66 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v106 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v67 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  (*(*(v67 - 8) + 56))(v1 + v66, 1, 1, v67);
  v68 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  v107 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  v69 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  (*(*(v69 - 8) + 56))(v1 + v68, 1, 1, v69);
  v70 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  sub_1C56466CC(a1 + v70, v47, &qword_1EC16ECD8, &qword_1C586B160);
  swift_beginAccess();
  sub_1C56ECE38(v47, v1 + v48, &qword_1EC16ECD8, &qword_1C586B160);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v72 = v99;
  sub_1C56466CC(a1 + v71, v99, &qword_1EC16EC78, &qword_1C586B100);
  swift_beginAccess();
  sub_1C56ECE38(v72, v1 + v50, &qword_1EC16EC78, &qword_1C586B100);
  swift_endAccess();
  v73 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  v74 = v104;
  sub_1C56466CC(a1 + v73, v104, &qword_1EC16EC70, &qword_1C586B0F8);
  swift_beginAccess();
  sub_1C56ECE38(v74, v1 + v52, &qword_1EC16EC70, &qword_1C586B0F8);
  swift_endAccess();
  v75 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v76 = v108;
  sub_1C56466CC(a1 + v75, v108, &qword_1EC16EC80, &qword_1C586B108);
  swift_beginAccess();
  sub_1C56ECE38(v76, v1 + v54, &qword_1EC16EC80, &qword_1C586B108);
  swift_endAccess();
  v77 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  v78 = v109;
  sub_1C56466CC(a1 + v77, v109, &qword_1EC16ECE0, &qword_1C586B168);
  v79 = v100;
  swift_beginAccess();
  sub_1C56ECE38(v78, v1 + v79, &qword_1EC16ECE0, &qword_1C586B168);
  swift_endAccess();
  v80 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  v81 = v110;
  sub_1C56466CC(a1 + v80, v110, &qword_1EC16ECE8, &qword_1C586B170);
  v82 = v101;
  swift_beginAccess();
  sub_1C56ECE38(v81, v1 + v82, &qword_1EC16ECE8, &qword_1C586B170);
  swift_endAccess();
  v83 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v84 = v111;
  sub_1C56466CC(a1 + v83, v111, &qword_1EC16EC98, &qword_1C586B120);
  v85 = v102;
  swift_beginAccess();
  sub_1C56ECE38(v84, v1 + v85, &qword_1EC16EC98, &qword_1C586B120);
  swift_endAccess();
  v86 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  v87 = v112;
  sub_1C56466CC(a1 + v86, v112, &qword_1EC16ECF0, &qword_1C586B178);
  v88 = v103;
  swift_beginAccess();
  sub_1C56ECE38(v87, v1 + v88, &qword_1EC16ECF0, &qword_1C586B178);
  swift_endAccess();
  v89 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  v90 = v113;
  sub_1C56466CC(a1 + v89, v113, &qword_1EC16ECF8, &qword_1C586B180);
  v91 = v105;
  swift_beginAccess();
  sub_1C56ECE38(v90, v1 + v91, &qword_1EC16ECF8, &qword_1C586B180);
  swift_endAccess();
  v92 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v93 = v114;
  sub_1C56466CC(a1 + v92, v114, &qword_1EC16ED00, &qword_1C586B188);
  v94 = v106;
  swift_beginAccess();
  sub_1C56ECE38(v93, v1 + v94, &qword_1EC16ED00, &qword_1C586B188);
  swift_endAccess();
  v95 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  v96 = v115;
  sub_1C56466CC(a1 + v95, v115, &qword_1EC16ED08, &qword_1C586B190);

  v97 = v107;
  swift_beginAccess();
  sub_1C56ECE38(v96, v1 + v97, &qword_1EC16ED08, &qword_1C586B190);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56DF0F0()
{
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion, &qword_1EC16ECD8, &qword_1C586B160);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData, &qword_1EC16EC70, &qword_1C586B0F8);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata, &qword_1EC16EC80, &qword_1C586B108);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap, &qword_1EC16ECE0, &qword_1C586B168);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles, &qword_1EC16ECE8, &qword_1C586B170);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider, &qword_1EC16EC98, &qword_1C586B120);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap, &qword_1EC16ECF0, &qword_1C586B178);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility, &qword_1EC16ECF8, &qword_1C586B180);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences, &qword_1EC16ED00, &qword_1C586B188);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers, &qword_1EC16ED08, &qword_1C586B190);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56DF2A4()
{
  v2 = v0;
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1C56DE4E8(v6);
    *(v2 + v3) = v10;
  }

  result = sub_1C584F050();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs;
            v15 = &unk_1EC16D250;
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_30;
            }

            v13 = v1;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider;
            v15 = &qword_1EC16D3A8;
          }
        }

        else if (result == 3)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
          v14 = type metadata accessor for WebPlacecardBridgeReply.MUUserData;
          v15 = &qword_1EC16D418;
        }

        else
        {
          v13 = v1;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata;
            v15 = &qword_1EC16D238;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs;
            v15 = &unk_1EC16D2C0;
          }
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs;
            v15 = &unk_1EC16F7C8;
            break;
          case 10:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs;
            v15 = &unk_1EC16F7E0;
            break;
          case 1000:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers;
            v15 = &unk_1EC16F7F8;
            break;
          default:
            goto LABEL_30;
        }
      }

      else if (result == 6)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs;
        v15 = &unk_1EC16F798;
      }

      else
      {
        v13 = v1;
        if (result == 7)
        {
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
          v14 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider;
          v15 = &qword_1EC16D1E0;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
          v14 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs;
          v15 = &unk_1EC16D280;
        }
      }

      sub_1C56EF190(v15, v14);
      v1 = v13;
      sub_1C584F100();
      swift_endAccess();
LABEL_30:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56DF840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20));
  result = sub_1C56DF9A8(v8, a1, a2, a3);
  if (!v4)
  {
    sub_1C56DFBD0(v8, a1, a2, a3);
    sub_1C56DFDF8(v8, a1, a2, a3);
    sub_1C56E0020(v8, a1, a2, a3);
    sub_1C56E0248(v8, a1, a2, a3);
    sub_1C56E0470(v8, a1, a2, a3);
    sub_1C56E0698(v8, a1, a2, a3);
    sub_1C56E08C0(v8, a1, a2, a3);
    sub_1C56E0AE8(v8, a1, a2, a3);
    sub_1C56E0D10(v8, a1, a2, a3);
    sub_1C56E0F38(v8, a1, a2, a3);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56DF9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD8, &qword_1C586B160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECD8, &qword_1C586B160);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECD8, &qword_1C586B160);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C56EF190(&qword_1EC16D250, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
}

uint64_t sub_1C56DFBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC78, &qword_1C586B100);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC78, &qword_1C586B100);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
}

uint64_t sub_1C56DFDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC70, &qword_1C586B0F8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC70, &qword_1C586B0F8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
}

uint64_t sub_1C56E0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC80, &qword_1C586B108);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC80, &qword_1C586B108);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
}

uint64_t sub_1C56E0248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECE0, &qword_1C586B168);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECE0, &qword_1C586B168);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C56EF190(&qword_1EC16D2C0, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
}

uint64_t sub_1C56E0470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE8, &qword_1C586B170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECE8, &qword_1C586B170);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECE8, &qword_1C586B170);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  sub_1C56EF190(&qword_1EC16F798, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
}

uint64_t sub_1C56E0698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC98, &qword_1C586B120);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC98, &qword_1C586B120);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
}

uint64_t sub_1C56E08C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECF0, &qword_1C586B178);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECF0, &qword_1C586B178);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  sub_1C56EF190(&qword_1EC16D280, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
}

uint64_t sub_1C56E0AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF8, &qword_1C586B180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECF8, &qword_1C586B180);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECF8, &qword_1C586B180);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C56EF190(&qword_1EC16F7C8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
}

uint64_t sub_1C56E0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED00, &qword_1C586B188);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ED00, &qword_1C586B188);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ED00, &qword_1C586B188);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C56EF190(&qword_1EC16F7E0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
}

uint64_t sub_1C56E0F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED08, &qword_1C586B190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ED08, &qword_1C586B190);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ED08, &qword_1C586B190);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
  sub_1C56EF190(&qword_1EC16F7F8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
}

BOOL sub_1C56E1160(uint64_t a1, uint64_t a2)
{
  v391 = a2;
  v324 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  v321 = *(v324 - 8);
  v3 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v324, v4);
  v318 = &v317 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBF0, &qword_1C5875E00);
  v6 = *(*(v320 - 8) + 64);
  MEMORY[0x1EEE9AC00](v320, v7);
  v329 = &v317 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED08, &qword_1C586B190);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v322 = &v317 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v323 = &v317 - v15;
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  v327 = *(v16 - 8);
  v328 = v16;
  v17 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v319 = &v317 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBF8, &qword_1C5875E08);
  v20 = *(*(v326 - 8) + 64);
  MEMORY[0x1EEE9AC00](v326, v21);
  v332 = &v317 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED00, &qword_1C586B188);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v325 = &v317 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v331 = &v317 - v29;
  v30 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  v336 = *(v30 - 8);
  v337 = v30;
  v31 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v330 = &v317 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC00, &qword_1C5875E10);
  v34 = *(*(v335 - 8) + 64);
  MEMORY[0x1EEE9AC00](v335, v35);
  v338 = &v317 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF8, &qword_1C586B180);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v37 - 8, v39);
  v333 = &v317 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v340 = &v317 - v43;
  v44 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  v343 = *(v44 - 8);
  v344 = v44;
  v45 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v44, v46);
  v334 = &v317 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC08, &qword_1C5875E18);
  v48 = *(*(v342 - 8) + 64);
  MEMORY[0x1EEE9AC00](v342, v49);
  v345 = &v317 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  v52 = *(*(v51 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v51 - 8, v53);
  v339 = &v317 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v56);
  v358 = &v317 - v57;
  v58 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v349 = *(v58 - 8);
  v350 = v58;
  v59 = *(v349 + 64);
  MEMORY[0x1EEE9AC00](v58, v60);
  v341 = &v317 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC10, &qword_1C5875E20);
  v62 = *(*(v348 - 8) + 64);
  MEMORY[0x1EEE9AC00](v348, v63);
  v351 = &v317 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v66 = *(*(v65 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v65 - 8, v67);
  v346 = &v317 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v70);
  v352 = &v317 - v71;
  v359 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  v356 = *(v359 - 8);
  v72 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v359, v73);
  v347 = (&v317 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC18, &qword_1C5875E28);
  v75 = *(*(v355 - 8) + 64);
  MEMORY[0x1EEE9AC00](v355, v76);
  v357 = &v317 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE8, &qword_1C586B170);
  v79 = *(*(v78 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v78 - 8, v80);
  v353 = (&v317 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v81, v83);
  v361 = &v317 - v84;
  v85 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  v364 = *(v85 - 8);
  v365 = v85;
  v86 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v85, v87);
  v354 = &v317 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC20, &qword_1C5875E30);
  v89 = *(*(v363 - 8) + 64);
  MEMORY[0x1EEE9AC00](v363, v90);
  v366 = &v317 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  v93 = *(*(v92 - 8) + 64);
  v95 = MEMORY[0x1EEE9AC00](v92 - 8, v94);
  v360 = &v317 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95, v97);
  v368 = &v317 - v98;
  v99 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v371 = *(v99 - 8);
  v372 = v99;
  v100 = *(v371 + 64);
  MEMORY[0x1EEE9AC00](v99, v101);
  v362 = &v317 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC28, &qword_1C5875E38);
  v103 = *(*(v370 - 8) + 64);
  MEMORY[0x1EEE9AC00](v370, v104);
  v373 = &v317 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v107 = *(*(v106 - 8) + 64);
  v109 = MEMORY[0x1EEE9AC00](v106 - 8, v108);
  v367 = &v317 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109, v111);
  v374 = &v317 - v112;
  v113 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v378 = *(v113 - 8);
  v379 = v113;
  v114 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v113, v115);
  v369 = &v317 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC30, &qword_1C5875E40);
  v117 = *(*(v377 - 8) + 64);
  MEMORY[0x1EEE9AC00](v377, v118);
  v380 = &v317 - v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v121 = *(*(v120 - 8) + 64);
  v123 = MEMORY[0x1EEE9AC00](v120 - 8, v122);
  v376 = &v317 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v123, v125);
  v387 = &v317 - v126;
  v385 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v384 = *(v385 - 8);
  v127 = *(v384 + 64);
  MEMORY[0x1EEE9AC00](v385, v128);
  v375 = &v317 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC38, &qword_1C5875E48);
  v130 = *(*(v383 - 8) + 64);
  MEMORY[0x1EEE9AC00](v383, v131);
  v386 = &v317 - v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v134 = *(*(v133 - 8) + 64);
  v136 = MEMORY[0x1EEE9AC00](v133 - 8, v135);
  v381 = &v317 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v136, v138);
  v389 = &v317 - v139;
  v390 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v140 = *(v390 - 8);
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v390, v142);
  v382 = &v317 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC40, &qword_1C5875E50);
  v145 = v144 - 8;
  v146 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144, v147);
  v149 = &v317 - v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD8, &qword_1C586B160);
  v151 = *(*(v150 - 8) + 64);
  v153 = MEMORY[0x1EEE9AC00](v150 - 8, v152);
  v388 = &v317 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v153, v155);
  v157 = &v317 - v156;
  v158 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  v159 = a1 + v158;
  v160 = v391;
  sub_1C56466CC(v159, v157, &qword_1EC16ECD8, &qword_1C586B160);
  v161 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  v162 = *(v145 + 56);
  sub_1C56466CC(v157, v149, &qword_1EC16ECD8, &qword_1C586B160);
  v163 = v160 + v161;
  v164 = v390;
  sub_1C56466CC(v163, &v149[v162], &qword_1EC16ECD8, &qword_1C586B160);
  v165 = *(v140 + 48);
  if (v165(v149, 1, v164) == 1)
  {

    sub_1C5625230(v157, &qword_1EC16ECD8, &qword_1C586B160);
    if (v165(&v149[v162], 1, v164) == 1)
    {
      sub_1C5625230(v149, &qword_1EC16ECD8, &qword_1C586B160);
      goto LABEL_8;
    }

LABEL_6:
    v167 = &qword_1EC16FC40;
    v168 = &qword_1C5875E50;
    v169 = v149;
LABEL_43:
    sub_1C5625230(v169, v167, v168);
    goto LABEL_44;
  }

  v166 = v388;
  sub_1C56466CC(v149, v388, &qword_1EC16ECD8, &qword_1C586B160);
  if (v165(&v149[v162], 1, v164) == 1)
  {

    sub_1C5625230(v157, &qword_1EC16ECD8, &qword_1C586B160);
    sub_1C56EC248(v166, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
    goto LABEL_6;
  }

  v170 = v382;
  sub_1C56EC178(&v149[v162], v382, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);

  v171 = sub_1C56F4268(v166, v170, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C56EC248(v170, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C5625230(v157, &qword_1EC16ECD8, &qword_1C586B160);
  sub_1C56EC248(v166, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C5625230(v149, &qword_1EC16ECD8, &qword_1C586B160);
  if ((v171 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  v172 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v173 = v389;
  sub_1C56466CC(a1 + v172, v389, &qword_1EC16EC78, &qword_1C586B100);
  v174 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v175 = *(v383 + 48);
  v176 = v386;
  sub_1C56466CC(v173, v386, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C56466CC(v160 + v174, v176 + v175, &qword_1EC16EC78, &qword_1C586B100);
  v177 = *(v384 + 48);
  v178 = v385;
  if (v177(v176, 1, v385) == 1)
  {
    sub_1C5625230(v173, &qword_1EC16EC78, &qword_1C586B100);
    v179 = v177(v176 + v175, 1, v178);
    v180 = v387;
    if (v179 == 1)
    {
      sub_1C5625230(v176, &qword_1EC16EC78, &qword_1C586B100);
      goto LABEL_16;
    }

LABEL_13:
    v167 = &qword_1EC16FC38;
    v168 = &qword_1C5875E48;
LABEL_14:
    v169 = v176;
    goto LABEL_43;
  }

  v181 = v381;
  sub_1C56466CC(v176, v381, &qword_1EC16EC78, &qword_1C586B100);
  v182 = v177(v176 + v175, 1, v178);
  v180 = v387;
  if (v182 == 1)
  {
    sub_1C5625230(v389, &qword_1EC16EC78, &qword_1C586B100);
    sub_1C56EC248(v181, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
    goto LABEL_13;
  }

  v183 = v176 + v175;
  v184 = v375;
  sub_1C56EC178(v183, v375, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  v185 = sub_1C56EE398(v181, v184);
  sub_1C56EC248(v184, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C5625230(v389, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C56EC248(v181, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C5625230(v176, &qword_1EC16EC78, &qword_1C586B100);
  if ((v185 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  v186 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v186, v180, &qword_1EC16EC70, &qword_1C586B0F8);
  v187 = v180;
  v188 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  v189 = *(v377 + 48);
  v190 = v380;
  sub_1C56466CC(v187, v380, &qword_1EC16EC70, &qword_1C586B0F8);
  sub_1C56466CC(v160 + v188, v190 + v189, &qword_1EC16EC70, &qword_1C586B0F8);
  v191 = v379;
  v192 = *(v378 + 48);
  if (v192(v190, 1, v379) == 1)
  {
    sub_1C5625230(v187, &qword_1EC16EC70, &qword_1C586B0F8);
    if (v192(v190 + v189, 1, v191) == 1)
    {
      sub_1C5625230(v190, &qword_1EC16EC70, &qword_1C586B0F8);
      goto LABEL_26;
    }

LABEL_21:
    v167 = &qword_1EC16FC30;
    v168 = &qword_1C5875E40;
LABEL_22:
    v169 = v190;
    goto LABEL_43;
  }

  v193 = v376;
  sub_1C56466CC(v190, v376, &qword_1EC16EC70, &qword_1C586B0F8);
  if (v192(v190 + v189, 1, v191) == 1)
  {
    sub_1C5625230(v387, &qword_1EC16EC70, &qword_1C586B0F8);
    sub_1C56EC248(v193, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
    goto LABEL_21;
  }

  v194 = v191;
  v195 = v369;
  sub_1C56EC178(v190 + v189, v369, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  v196 = *(v194 + 20);
  v197 = *(v193 + v196);
  v198 = *(v195 + v196);
  if (v197 != v198)
  {

    v199 = sub_1C56D872C(v197, v198);

    if (!v199)
    {
      v220 = type metadata accessor for WebPlacecardBridgeReply.MUUserData;
      sub_1C56EC248(v195, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
      v221 = &qword_1EC16EC70;
      v222 = &qword_1C586B0F8;
      sub_1C5625230(v387, &qword_1EC16EC70, &qword_1C586B0F8);
      v223 = v376;
LABEL_37:
      sub_1C56EC248(v223, v220);
      v169 = v190;
LABEL_38:
      v167 = v221;
      v168 = v222;
      goto LABEL_43;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v200 = v376;
  v201 = sub_1C584F620();
  sub_1C56EC248(v195, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C5625230(v387, &qword_1EC16EC70, &qword_1C586B0F8);
  sub_1C56EC248(v200, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C5625230(v190, &qword_1EC16EC70, &qword_1C586B0F8);
  if ((v201 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_26:
  v202 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v203 = v374;
  sub_1C56466CC(a1 + v202, v374, &qword_1EC16EC80, &qword_1C586B108);
  v204 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v205 = *(v370 + 48);
  v206 = v373;
  sub_1C56466CC(v203, v373, &qword_1EC16EC80, &qword_1C586B108);
  v207 = v206;
  sub_1C56466CC(v160 + v204, v206 + v205, &qword_1EC16EC80, &qword_1C586B108);
  v208 = v372;
  v209 = *(v371 + 48);
  if (v209(v206, 1, v372) == 1)
  {
    sub_1C5625230(v203, &qword_1EC16EC80, &qword_1C586B108);
    if (v209(v206 + v205, 1, v208) == 1)
    {
      sub_1C5625230(v206, &qword_1EC16EC80, &qword_1C586B108);
      goto LABEL_33;
    }

LABEL_31:
    v167 = &qword_1EC16FC28;
    v168 = &qword_1C5875E38;
LABEL_42:
    v169 = v207;
    goto LABEL_43;
  }

  v210 = v367;
  sub_1C56466CC(v206, v367, &qword_1EC16EC80, &qword_1C586B108);
  if (v209(v206 + v205, 1, v208) == 1)
  {
    sub_1C5625230(v374, &qword_1EC16EC80, &qword_1C586B108);
    sub_1C56EC248(v210, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
    goto LABEL_31;
  }

  v211 = v206 + v205;
  v212 = v362;
  sub_1C56EC178(v211, v362, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  v213 = sub_1C56ED578(v210, v212);
  sub_1C56EC248(v212, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C5625230(v374, &qword_1EC16EC80, &qword_1C586B108);
  sub_1C56EC248(v210, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C5625230(v206, &qword_1EC16EC80, &qword_1C586B108);
  if ((v213 & 1) == 0)
  {
LABEL_44:

    return 0;
  }

LABEL_33:
  v214 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  v215 = v368;
  sub_1C56466CC(a1 + v214, v368, &qword_1EC16ECE0, &qword_1C586B168);
  v216 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  v217 = *(v363 + 48);
  v207 = v366;
  sub_1C56466CC(v215, v366, &qword_1EC16ECE0, &qword_1C586B168);
  sub_1C56466CC(v160 + v216, v207 + v217, &qword_1EC16ECE0, &qword_1C586B168);
  v218 = v365;
  v219 = *(v364 + 48);
  if (v219(v207, 1, v365) == 1)
  {
    sub_1C5625230(v215, &qword_1EC16ECE0, &qword_1C586B168);
    if (v219(v207 + v217, 1, v218) == 1)
    {
      sub_1C5625230(v207, &qword_1EC16ECE0, &qword_1C586B168);
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v224 = v360;
  sub_1C56466CC(v207, v360, &qword_1EC16ECE0, &qword_1C586B168);
  if (v219(v207 + v217, 1, v218) == 1)
  {
    sub_1C5625230(v368, &qword_1EC16ECE0, &qword_1C586B168);
    sub_1C56EC248(v224, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
LABEL_41:
    v167 = &qword_1EC16FC20;
    v168 = &qword_1C5875E30;
    goto LABEL_42;
  }

  v226 = v207 + v217;
  v227 = v354;
  sub_1C56EC178(v226, v354, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  v228 = sub_1C56F3344(v224, v227, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C56EC248(v227, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C5625230(v368, &qword_1EC16ECE0, &qword_1C586B168);
  sub_1C56EC248(v224, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C5625230(v207, &qword_1EC16ECE0, &qword_1C586B168);
  if ((v228 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v229 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  v230 = v361;
  sub_1C56466CC(a1 + v229, v361, &qword_1EC16ECE8, &qword_1C586B170);
  v231 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  v232 = *(v355 + 48);
  v176 = v357;
  sub_1C56466CC(v230, v357, &qword_1EC16ECE8, &qword_1C586B170);
  sub_1C56466CC(v160 + v231, v176 + v232, &qword_1EC16ECE8, &qword_1C586B170);
  v233 = *(v356 + 48);
  v234 = v359;
  if (v233(v176, 1, v359) == 1)
  {
    sub_1C5625230(v230, &qword_1EC16ECE8, &qword_1C586B170);
    v235 = v233(v176 + v232, 1, v234);
    v236 = v358;
    if (v235 == 1)
    {
      sub_1C5625230(v176, &qword_1EC16ECE8, &qword_1C586B170);
      goto LABEL_50;
    }

    goto LABEL_55;
  }

  v244 = v353;
  sub_1C56466CC(v176, v353, &qword_1EC16ECE8, &qword_1C586B170);
  v245 = v233(v176 + v232, 1, v234);
  v236 = v358;
  if (v245 == 1)
  {
    sub_1C5625230(v361, &qword_1EC16ECE8, &qword_1C586B170);
    sub_1C56EC248(v244, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
LABEL_55:
    v167 = &qword_1EC16FC18;
    v168 = &qword_1C5875E28;
    goto LABEL_14;
  }

  v246 = v347;
  sub_1C56EC178(v176 + v232, v347, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  v247 = v244;
  if ((sub_1C56EA4D0(*v244, *v246) & 1) == 0)
  {
    sub_1C5625230(v361, &qword_1EC16ECE8, &qword_1C586B170);
    sub_1C56EC248(v246, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
    sub_1C56EC248(v244, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
    v169 = v176;
    v167 = &qword_1EC16ECE8;
    v168 = &qword_1C586B170;
    goto LABEL_43;
  }

  v248 = *(v359 + 20);
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v249 = sub_1C584F620();
  sub_1C5625230(v361, &qword_1EC16ECE8, &qword_1C586B170);
  sub_1C56EC248(v246, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  sub_1C56EC248(v247, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  sub_1C5625230(v176, &qword_1EC16ECE8, &qword_1C586B170);
  if ((v249 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_50:
  v237 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v238 = v352;
  sub_1C56466CC(a1 + v237, v352, &qword_1EC16EC98, &qword_1C586B120);
  v239 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v240 = *(v348 + 48);
  v241 = v351;
  sub_1C56466CC(v238, v351, &qword_1EC16EC98, &qword_1C586B120);
  v207 = v241;
  sub_1C56466CC(v160 + v239, v241 + v240, &qword_1EC16EC98, &qword_1C586B120);
  v242 = v350;
  v243 = *(v349 + 48);
  if (v243(v241, 1, v350) == 1)
  {
    sub_1C5625230(v238, &qword_1EC16EC98, &qword_1C586B120);
    if (v243(v241 + v240, 1, v242) == 1)
    {
      sub_1C5625230(v241, &qword_1EC16EC98, &qword_1C586B120);
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v250 = v346;
  sub_1C56466CC(v241, v346, &qword_1EC16EC98, &qword_1C586B120);
  if (v243(v241 + v240, 1, v242) == 1)
  {
    sub_1C5625230(v352, &qword_1EC16EC98, &qword_1C586B120);
    sub_1C56EC248(v250, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
LABEL_61:
    v167 = &qword_1EC16FC10;
    v168 = &qword_1C5875E20;
    goto LABEL_42;
  }

  v251 = v241 + v240;
  v252 = v341;
  sub_1C56EC178(v251, v341, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  v253 = sub_1C56ED04C(v250, v252);
  sub_1C56EC248(v252, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C5625230(v352, &qword_1EC16EC98, &qword_1C586B120);
  sub_1C56EC248(v250, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C5625230(v241, &qword_1EC16EC98, &qword_1C586B120);
  if ((v253 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_64:
  v254 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  sub_1C56466CC(a1 + v254, v236, &qword_1EC16ECF0, &qword_1C586B178);
  v255 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  v256 = *(v342 + 48);
  v257 = v345;
  sub_1C56466CC(v236, v345, &qword_1EC16ECF0, &qword_1C586B178);
  v258 = v160 + v255;
  v190 = v257;
  sub_1C56466CC(v258, v257 + v256, &qword_1EC16ECF0, &qword_1C586B178);
  v259 = v344;
  v260 = *(v343 + 48);
  if (v260(v257, 1, v344) == 1)
  {
    sub_1C5625230(v236, &qword_1EC16ECF0, &qword_1C586B178);
    if (v260(v257 + v256, 1, v259) == 1)
    {
      sub_1C5625230(v257, &qword_1EC16ECF0, &qword_1C586B178);
      goto LABEL_67;
    }

    goto LABEL_75;
  }

  v279 = v339;
  sub_1C56466CC(v190, v339, &qword_1EC16ECF0, &qword_1C586B178);
  if (v260(v190 + v256, 1, v259) == 1)
  {
    sub_1C5625230(v236, &qword_1EC16ECF0, &qword_1C586B178);
    sub_1C56EC248(v279, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
LABEL_75:
    v167 = &qword_1EC16FC08;
    v168 = &qword_1C5875E18;
    goto LABEL_22;
  }

  v280 = v190 + v256;
  v281 = v334;
  sub_1C56EC178(v280, v334, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  v282 = *(v259 + 20);
  v283 = *(v279 + v282);
  v284 = *(v281 + v282);
  if (v283 == 3)
  {
    if (v284 != 3)
    {
LABEL_78:
      v220 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs;
      sub_1C56EC248(v281, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
      v221 = &qword_1EC16ECF0;
      v222 = &qword_1C586B178;
      sub_1C5625230(v236, &qword_1EC16ECF0, &qword_1C586B178);
      v223 = v279;
      goto LABEL_37;
    }
  }

  else if (v283 != v284)
  {
    goto LABEL_78;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v286 = sub_1C584F620();
  sub_1C56EC248(v281, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  sub_1C5625230(v236, &qword_1EC16ECF0, &qword_1C586B178);
  sub_1C56EC248(v279, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  sub_1C5625230(v190, &qword_1EC16ECF0, &qword_1C586B178);
  if ((v286 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_67:
  v261 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  v262 = v340;
  sub_1C56466CC(a1 + v261, v340, &qword_1EC16ECF8, &qword_1C586B180);
  v263 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  v264 = *(v335 + 48);
  v265 = v262;
  v266 = v338;
  sub_1C56466CC(v265, v338, &qword_1EC16ECF8, &qword_1C586B180);
  v207 = v266;
  sub_1C56466CC(v160 + v263, v266 + v264, &qword_1EC16ECF8, &qword_1C586B180);
  v267 = *(v336 + 48);
  v268 = v266;
  v269 = v337;
  if (v267(v268, 1, v337) == 1)
  {
    sub_1C5625230(v340, &qword_1EC16ECF8, &qword_1C586B180);
    if (v267(v207 + v264, 1, v269) == 1)
    {
      sub_1C5625230(v207, &qword_1EC16ECF8, &qword_1C586B180);
      goto LABEL_70;
    }

    goto LABEL_81;
  }

  v285 = v333;
  sub_1C56466CC(v207, v333, &qword_1EC16ECF8, &qword_1C586B180);
  if (v267(v207 + v264, 1, v269) == 1)
  {
    sub_1C5625230(v340, &qword_1EC16ECF8, &qword_1C586B180);
    sub_1C56EC248(v285, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
LABEL_81:
    v167 = &qword_1EC16FC00;
    v168 = &qword_1C5875E10;
    goto LABEL_42;
  }

  v287 = v330;
  sub_1C56EC178(v207 + v264, v330, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  v288 = *(v269 + 20);
  v289 = *(v285 + v288);
  v290 = *(v287 + v288);
  if (v289 == 2)
  {
    if (v290 == 2)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (v290 == 2 || ((v289 ^ v290) & 1) != 0)
  {
LABEL_94:
    sub_1C56EC248(v330, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
    v221 = &qword_1EC16ECF8;
    v222 = &qword_1C586B180;
    sub_1C5625230(v340, &qword_1EC16ECF8, &qword_1C586B180);
    sub_1C56EC248(v333, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
    v169 = v338;
    goto LABEL_38;
  }

LABEL_95:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v291 = v333;
  v292 = v330;
  v293 = sub_1C584F620();
  sub_1C56EC248(v292, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C5625230(v340, &qword_1EC16ECF8, &qword_1C586B180);
  sub_1C56EC248(v291, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C5625230(v338, &qword_1EC16ECF8, &qword_1C586B180);
  if ((v293 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_70:
  v270 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v271 = a1;
  v272 = a1 + v270;
  v273 = v331;
  sub_1C56466CC(v272, v331, &qword_1EC16ED00, &qword_1C586B188);
  v274 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v275 = *(v326 + 48);
  v276 = v332;
  sub_1C56466CC(v273, v332, &qword_1EC16ED00, &qword_1C586B188);
  sub_1C56466CC(v160 + v274, v276 + v275, &qword_1EC16ED00, &qword_1C586B188);
  v277 = v328;
  v278 = *(v327 + 48);
  if (v278(v276, 1, v328) == 1)
  {
    sub_1C5625230(v331, &qword_1EC16ED00, &qword_1C586B188);
    if (v278(v276 + v275, 1, v277) == 1)
    {
      sub_1C5625230(v332, &qword_1EC16ED00, &qword_1C586B188);
      goto LABEL_98;
    }

    goto LABEL_90;
  }

  sub_1C56466CC(v276, v325, &qword_1EC16ED00, &qword_1C586B188);
  if (v278(v276 + v275, 1, v277) == 1)
  {
    sub_1C5625230(v331, &qword_1EC16ED00, &qword_1C586B188);
    sub_1C56EC248(v325, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
LABEL_90:
    sub_1C5625230(v332, &qword_1EC16FBF8, &qword_1C5875E08);
    goto LABEL_44;
  }

  v294 = v332;
  v295 = v332 + v275;
  v296 = v319;
  sub_1C56EC178(v295, v319, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  v297 = v325;
  v298 = sub_1C56ED21C(v325, v296);
  sub_1C56EC248(v296, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C5625230(v331, &qword_1EC16ED00, &qword_1C586B188);
  sub_1C56EC248(v297, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C5625230(v294, &qword_1EC16ED00, &qword_1C586B188);
  if ((v298 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_98:
  v299 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  v300 = v323;
  sub_1C56466CC(v271 + v299, v323, &qword_1EC16ED08, &qword_1C586B190);
  v301 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  v302 = *(v320 + 48);
  v303 = v300;
  v304 = v329;
  sub_1C56466CC(v303, v329, &qword_1EC16ED08, &qword_1C586B190);
  sub_1C56466CC(v160 + v301, v304 + v302, &qword_1EC16ED08, &qword_1C586B190);
  v305 = *(v321 + 48);
  if (v305(v304, 1, v324) != 1)
  {
    v306 = v329;
    sub_1C56466CC(v329, v322, &qword_1EC16ED08, &qword_1C586B190);
    if (v305(v306 + v302, 1, v324) == 1)
    {

      sub_1C5625230(v323, &qword_1EC16ED08, &qword_1C586B190);
      sub_1C56EC248(v322, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
      goto LABEL_104;
    }

    v310 = v318;
    sub_1C56EC178(v329 + v302, v318, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
    v311 = *(v324 + 20);
    v312 = *(v322 + v311);
    v313 = *(v310 + v311);
    if (v312 == 2)
    {
      if (v313 == 2)
      {
        goto LABEL_112;
      }
    }

    else if (v313 != 2 && ((v312 ^ v313) & 1) == 0)
    {
LABEL_112:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
      v314 = v322;
      v315 = v318;
      v316 = sub_1C584F620();

      sub_1C56EC248(v315, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
      sub_1C5625230(v323, &qword_1EC16ED08, &qword_1C586B190);
      sub_1C56EC248(v314, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
      sub_1C5625230(v329, &qword_1EC16ED08, &qword_1C586B190);
      return (v316 & 1) != 0;
    }

    sub_1C56EC248(v318, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
    sub_1C5625230(v323, &qword_1EC16ED08, &qword_1C586B190);
    sub_1C56EC248(v322, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
    v309 = v329;
    v307 = &qword_1EC16ED08;
    v308 = &qword_1C586B190;
    goto LABEL_111;
  }

  sub_1C5625230(v323, &qword_1EC16ED08, &qword_1C586B190);
  if (v305(v329 + v302, 1, v324) != 1)
  {
LABEL_104:
    v307 = &qword_1EC16FBF0;
    v308 = &qword_1C5875E00;
    v309 = v329;
LABEL_111:
    sub_1C5625230(v309, v307, v308);
    return 0;
  }

  sub_1C5625230(v329, &qword_1EC16ED08, &qword_1C586B190);
  return 1;
}

uint64_t sub_1C56E3D04@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  sub_1C584EFC0();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1C56E3DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F930, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E3E6C()
{
  sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);

  return sub_1C584F160();
}

uint64_t sub_1C56E3ED8()
{
  sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);

  return sub_1C584F170();
}

uint64_t sub_1C56E3F98()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F8A8);
  __swift_project_value_buffer(v0, qword_1EC18F8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "progress";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E4190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1C56E4260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F928, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E4300()
{
  sub_1C56EF190(&qword_1EC16D250, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);

  return sub_1C584F160();
}

uint64_t sub_1C56E436C()
{
  sub_1C56EF190(&qword_1EC16D250, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);

  return sub_1C584F170();
}

uint64_t sub_1C56E43EC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F890);
  __swift_project_value_buffer(v0, qword_1EC18F890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AEE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "canShowDirections";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isCurrentLocation";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isAdditionalStop";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isSearchAlongRoute";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "canShowDetourTime";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "detourTime";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "distanceString";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "distance";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E4738()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          v10 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 44);
          sub_1C584F0D0();
        }

        else if (result == 8)
        {
          v7 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 48);
          goto LABEL_19;
        }
      }

      else
      {
        if (result == 5)
        {
          v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 36);
          goto LABEL_3;
        }

        v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 40);
LABEL_19:
        v0 = 0;
        sub_1C584F0A0();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        v9 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 28);
      }

      else
      {
        v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 32);
      }

LABEL_3:
      v0 = 0;
      sub_1C584F080();
    }

    else
    {
      if (result == 1)
      {
        v1 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 20);
        goto LABEL_3;
      }

      if (result == 2)
      {
        v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0) + 24);
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1C56E48CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C56E4A68(v5);
  sub_1C56E4AE0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C56E4B64(v5);
  return sub_1C584EFB0();
}

uint64_t sub_1C56E4A68(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C584F1B0();
  }

  return result;
}

uint64_t sub_1C56E4AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56E4B64(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C584F1B0();
  }

  return result;
}

uint64_t sub_1C56E4BDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[12];
  v10 = (a2 + a1[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_1C56E4C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F920, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E4D3C()
{
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);

  return sub_1C584F160();
}

uint64_t sub_1C56E4DA8()
{
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);

  return sub_1C584F170();
}

uint64_t sub_1C56E4E28()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190318);
  __swift_project_value_buffer(v0, qword_1EC190318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "footerMenu";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "axIdArgs";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isPerfTest";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E503C()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0) + 28);
          sub_1C584F080();
          break;
        case 2:
          v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0) + 24);
          type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
          sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
          sub_1C584F100();
          break;
        case 1:
          type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem(0);
          sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
          sub_1C584F0F0();
          break;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E51D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem(0), sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem), result = sub_1C584F210(), !v4))
  {
    result = sub_1C56E530C(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
      if (*(v3 + *(v9 + 28)) != 2)
      {
        v10 = v9;
        sub_1C584F190();
        v9 = v10;
      }

      v11 = v3 + *(v9 + 20);
      return sub_1C584EFB0();
    }
  }

  return result;
}

uint64_t sub_1C56E530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED10, &qword_1C586B198);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  sub_1C56466CC(a1 + *(v16 + 24), v9, &qword_1EC16ED10, &qword_1C586B198);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ED10, &qword_1C586B198);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
}

uint64_t sub_1C56E5528@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[a1[5]];
  sub_1C584EFC0();
  v5 = a1[6];
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  a2[a1[7]] = 2;
  return result;
}

uint64_t sub_1C56E5608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F918, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E56A8()
{
  sub_1C56EF190(&qword_1EC16F750, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);

  return sub_1C584F160();
}

uint64_t sub_1C56E5714()
{
  sub_1C56EF190(&qword_1EC16F750, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);

  return sub_1C584F170();
}

uint64_t sub_1C56E5794()
{
  result = MEMORY[0x1C6949D90](0xD000000000000011, 0x80000001C5895DD0);
  qword_1EC190330 = 0xD000000000000026;
  *algn_1EC190338 = 0x80000001C5894DA0;
  return result;
}

uint64_t sub_1C56E5808()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190340);
  __swift_project_value_buffer(v0, qword_1EC190340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "icon";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "action_type";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E5A24@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1C56E5AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F910, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E5B8C()
{
  sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);

  return sub_1C584F160();
}

uint64_t sub_1C56E5BF8()
{
  sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);

  return sub_1C584F170();
}

uint64_t sub_1C56E5CA4()
{
  result = MEMORY[0x1C6949D90](0x4164497841554D2ELL, 0xEB00000000736772);
  qword_1EC190358 = 0xD000000000000026;
  unk_1EC190360 = 0x80000001C5894DA0;
  return result;
}

uint64_t sub_1C56E5D60(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_1C56E5E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F908, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E5EB8()
{
  sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);

  return sub_1C584F160();
}

uint64_t sub_1C56E5F24()
{
  sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);

  return sub_1C584F170();
}

uint64_t sub_1C56E5FD0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F8F0);
  __swift_project_value_buffer(v0, qword_1EC18F8F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "menu_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "menu_item_id";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "menu_type";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E61E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v5 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v8 = *(a4(0) + 28);
        a5();
        sub_1C584F090();
        break;
      case 2:
        v12 = *(a4(0) + 24);
LABEL_10:
        v5 = 0;
        sub_1C584F0D0();
        break;
      case 1:
        v11 = *(a4(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_1C56E62F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  result = a4(0);
  v9 = result;
  v10 = (v5 + *(result + 20));
  if (v10[1])
  {
    v11 = *v10;
    result = sub_1C584F1F0();
    if (v6)
    {
      return result;
    }
  }

  else if (v6)
  {
    return result;
  }

  v12 = (v5 + *(v9 + 24));
  if (v12[1])
  {
    v13 = *v12;
    result = sub_1C584F1F0();
  }

  if (*(v5 + *(v9 + 28)) != 3)
  {
    v14 = *(v5 + *(v9 + 28));
    a5(result);
    sub_1C584F1A0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56E6414@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + a1[7]) = 3;
  return result;
}

uint64_t sub_1C56E6508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F900, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E65A8()
{
  sub_1C56EF190(&qword_1EC16D2C0, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);

  return sub_1C584F160();
}

uint64_t sub_1C56E6614()
{
  sub_1C56EF190(&qword_1EC16D2C0, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);

  return sub_1C584F170();
}

uint64_t sub_1C56E66C0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F908);
  __swift_project_value_buffer(v0, qword_1EC18F908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UI_MENU";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ACTION_BAR";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E6914(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C56EF190(a5, a6);
      sub_1C584F0F0();
    }
  }

  return result;
}

uint64_t sub_1C56E69F0()
{
  if (!*(*v0 + 16) || (type metadata accessor for MUVGVehicle(0), sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle), result = sub_1C584F210(), !v1))
  {
    v3 = v0 + *(type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0) + 20);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56E6B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8F8, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E6C04()
{
  sub_1C56EF190(&qword_1EC16F798, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);

  return sub_1C584F160();
}

uint64_t sub_1C56E6C70()
{
  sub_1C56EF190(&qword_1EC16F798, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);

  return sub_1C584F170();
}

uint64_t sub_1C56E6D04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56E6DB0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F860);
  __swift_project_value_buffer(v0, qword_1EC18F860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "canShowDownloadOffline";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "downloadProgress";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "downloadedDataCount";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "downloadedDataSize";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "downloadState";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "titleText";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E707C()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0) + 32);
LABEL_5:
            v0 = v3;
            sub_1C584F0A0();
            break;
          case 5:
            v9 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0) + 36);
            sub_1C5703A40();
            sub_1C584F090();
            break;
          case 6:
            v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0) + 40);
            sub_1C584F0D0();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0) + 20);
            sub_1C584F080();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0) + 28);
            goto LABEL_5;
        }
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E7208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  v11 = v5 + v10[6];
  if ((*(v11 + 4) & 1) == 0)
  {
    v12 = *v11;
    sub_1C584F1B0();
  }

  v13 = v5 + v10[7];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    sub_1C584F1B0();
  }

  v15 = v5 + v10[8];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    sub_1C584F1B0();
  }

  sub_1C56E735C(v5);
  sub_1C56C17B4(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  return sub_1C584EFB0();
}

uint64_t sub_1C56E735C(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  if (*(a1 + *(result + 36)) != 6)
  {
    v3 = *(a1 + *(result + 36));
    sub_1C5703A40();
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56E73E8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  *(a2 + a1[9]) = 6;
  v11 = (a2 + v10);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1C56E74A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8F0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E7548()
{
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);

  return sub_1C584F160();
}

uint64_t sub_1C56E75B4()
{
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);

  return sub_1C584F170();
}

uint64_t sub_1C56E7634()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190398);
  __swift_project_value_buffer(v0, qword_1EC190398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "geo_key";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "web_key";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "BOOLean_value";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E7848()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          sub_1C584F080();
          break;
        case 2:
          v3 = v0;
          v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0) + 28);
LABEL_5:
          v0 = v3;
          sub_1C584F0D0();
          break;
        case 1:
          v3 = v0;
          v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0) + 24);
          goto LABEL_5;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E7958()
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v3 = result;
  v4 = &v0[*(result + 24)];
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = &v0[*(v3 + 28)];
  if (v6[1])
  {
    v7 = *v6;
    sub_1C584F1F0();
  }

  if (*v0 != 2)
  {
    sub_1C584F190();
  }

  v8 = &v0[*(v3 + 20)];
  return sub_1C584EFB0();
}

uint64_t sub_1C56E7A54@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 2;
  v4 = &a2[a1[5]];
  result = sub_1C584EFC0();
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  v7[1] = 0;
  v8 = &a2[v6];
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1C56E7AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8E8, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E7B8C()
{
  sub_1C56EF190(&qword_1EC16D388, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);

  return sub_1C584F160();
}

uint64_t sub_1C56E7BF8()
{
  sub_1C56EF190(&qword_1EC16D388, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);

  return sub_1C584F170();
}

uint64_t sub_1C56E7C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v10 = *(a4(0) + 20);
      a5();
      sub_1C584F090();
    }
  }

  return result;
}

uint64_t sub_1C56E7D54()
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  if (*(v0 + *(result + 20)) == 3)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v3 = *(v0 + *(result + 20));
    sub_1C5703998();
    result = sub_1C584F1A0();
    if (v1)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56E7E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  *(a2 + *(a1 + 20)) = 3;
  return result;
}

uint64_t sub_1C56E7EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8E0, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E7F58()
{
  sub_1C56EF190(&qword_1EC16D280, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);

  return sub_1C584F160();
}

uint64_t sub_1C56E7FC4()
{
  sub_1C56EF190(&qword_1EC16D280, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);

  return sub_1C584F170();
}

uint64_t sub_1C56E8040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56E80F4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F8D8);
  __swift_project_value_buffer(v0, qword_1EC18F8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLOSE";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SHARE";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E83B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8D8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E8458()
{
  sub_1C56EF190(&qword_1EC16F7C8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);

  return sub_1C584F160();
}

uint64_t sub_1C56E84C4()
{
  sub_1C56EF190(&qword_1EC16F7C8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);

  return sub_1C584F170();
}

uint64_t sub_1C56E8590()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0) + 20);
        type metadata accessor for MUUserPreferences(0);
        sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E867C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for MUUserPreferences(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  sub_1C56466CC(a1 + *(v16 + 20), v9, &qword_1EC16ECA0, &qword_1C586B128);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECA0, &qword_1C586B128);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for MUUserPreferences);
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for MUUserPreferences);
}

uint64_t sub_1C56E88B0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1C584EFC0();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1C56E8998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8D0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E8A38()
{
  sub_1C56EF190(&qword_1EC16F7E0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);

  return sub_1C584F160();
}

uint64_t sub_1C56E8AA4()
{
  sub_1C56EF190(&qword_1EC16F7E0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);

  return sub_1C584F170();
}

uint64_t sub_1C56E8BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8C8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E8C58()
{
  sub_1C56EF190(&qword_1EC16F7F8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);

  return sub_1C584F160();
}

uint64_t sub_1C56E8CC4()
{
  sub_1C56EF190(&qword_1EC16F7F8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);

  return sub_1C584F170();
}

uint64_t sub_1C56E8D70()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1903F8);
  __swift_project_value_buffer(v0, qword_1EC1903F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "errorMessage";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E8F84()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = *(type metadata accessor for WebBridgeReply(0) + 24);
        type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
        sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
        sub_1C584F100();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for WebBridgeReply(0) + 20);
LABEL_12:
        v0 = v4;
        sub_1C584F0D0();
      }

LABEL_5:
      result = sub_1C584F050();
    }

    v4 = v0;
    v6 = *(type metadata accessor for WebBridgeReply(0) + 28);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C56E90BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebBridgeReply(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    v12 = *v11;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  sub_1C56E9194(v5, a1, a2, a3);
  v13 = (v5 + *(v10 + 28));
  if (v13[1])
  {
    v14 = *v13;
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56E9194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebBridgeReply(0);
  sub_1C56466CC(a1 + *(v16 + 24), v9, &qword_1EC16ED18, &qword_1C586B1A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ED18, &qword_1C586B1A0);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
  sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
}

uint64_t sub_1C56E93B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1C56E948C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8C0, type metadata accessor for WebBridgeReply);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E952C()
{
  sub_1C56EF190(&unk_1EC16E6F0, type metadata accessor for WebBridgeReply);

  return sub_1C584F160();
}

uint64_t sub_1C56E9598()
{
  sub_1C56EF190(&unk_1EC16E6F0, type metadata accessor for WebBridgeReply);

  return sub_1C584F170();
}

uint64_t sub_1C56E9618()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190410);
  __swift_project_value_buffer(v0, qword_1EC190410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867900;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1000;
  *v5 = "perfMarkerResult";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C584F240();
}

uint64_t sub_1C56E9784()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1000)
      {
        v3 = *(type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0) + 20);
        type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
        sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E9870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56E98D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED20, &qword_1C586B1A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  sub_1C56466CC(a1 + *(v16 + 20), v9, &qword_1EC16ED20, &qword_1C586B1A8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ED20, &qword_1C586B1A8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
  sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
}

uint64_t sub_1C56E9B20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C584EFD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C56E9B88(uint64_t a1)
{
  v3 = sub_1C584EFD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C56E9C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8B8, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E9CD4()
{
  sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);

  return sub_1C584F160();
}

uint64_t sub_1C56E9D40()
{
  sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);

  return sub_1C584F170();
}

uint64_t sub_1C56E9DE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C584F250();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C5867900;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_1C584F230();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_1C584F240();
}

uint64_t sub_1C56E9F50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C56E9FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return sub_1C584EFC0();
}

uint64_t sub_1C56EA018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56EA08C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C56EA16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8B0, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56EA20C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C584F250();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C56EA2A8()
{
  sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);

  return sub_1C584F160();
}

uint64_t sub_1C56EA314()
{
  sub_1C584FEA0();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C56EA36C()
{
  sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);

  return sub_1C584F170();
}

uint64_t sub_1C56EA3E8()
{
  sub_1C584FEA0();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C56EA440(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C584FDC0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C56EA4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUVGVehicle(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v35 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_29:
    v34 = 0;
    return v34 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v15 = 0;
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v11 + 72);
  while (1)
  {
    result = sub_1C56EC1E0(v17 + v19 * v15, v13, type metadata accessor for MUVGVehicle);
    if (v15 == v14)
    {
      break;
    }

    result = sub_1C56EC1E0(v18 + v19 * v15, v9, type metadata accessor for MUVGVehicle);
    v21 = *(v4 + 24);
    v22 = &v13[v21];
    v23 = *&v13[v21 + 8];
    v24 = &v9[v21];
    v25 = *(v24 + 1);
    if (v23)
    {
      if (!v25 || ((result = *v22, *v22 == *v24) ? (v26 = v23 == v25) : (v26 = 0), !v26 && (result = sub_1C584FDC0(), (result & 1) == 0)))
      {
LABEL_28:
        sub_1C56EC248(v9, type metadata accessor for MUVGVehicle);
        sub_1C56EC248(v13, type metadata accessor for MUVGVehicle);
        goto LABEL_29;
      }
    }

    else if (v25)
    {
      goto LABEL_28;
    }

    v27 = *v13;
    v28 = *v9;
    v29 = *(*v13 + 16);
    if (v29 != *(*v9 + 16))
    {
      goto LABEL_28;
    }

    if (v29)
    {
      v30 = v27 == v28;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      v31 = (v27 + 32);
      v32 = (v28 + 32);
      while (v29)
      {
        if (*v31 != *v32)
        {
          goto LABEL_28;
        }

        ++v31;
        ++v32;
        if (!--v29)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      break;
    }

LABEL_24:
    v33 = *(v4 + 20);
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
    v34 = sub_1C584F620();
    sub_1C56EC248(v9, type metadata accessor for MUVGVehicle);
    sub_1C56EC248(v13, type metadata accessor for MUVGVehicle);
    if ((v34 & 1) != 0 && ++v15 != v14)
    {
      continue;
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EA7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v8 = *(*(v7 - 1) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v42 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (v17 && a1 != a2)
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      while (1)
      {
        sub_1C56EC1E0(v19, v16, a4);
        sub_1C56EC1E0(v20, v12, a4);
        v22 = v7[5];
        v23 = &v16[v22];
        v24 = *&v16[v22 + 8];
        v25 = &v12[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26 || (*v23 == *v25 ? (v27 = v24 == v26) : (v27 = 0), !v27 && (sub_1C584FDC0() & 1) == 0))
          {
LABEL_36:
            sub_1C56EC248(v12, a4);
            sub_1C56EC248(v16, a4);
            goto LABEL_37;
          }
        }

        else if (v26)
        {
          goto LABEL_36;
        }

        v28 = v7[6];
        v29 = &v16[v28];
        v30 = *&v16[v28 + 8];
        v31 = &v12[v28];
        v32 = *(v31 + 1);
        if (v30)
        {
          if (!v32)
          {
            goto LABEL_36;
          }

          v33 = *v29 == *v31 && v30 == v32;
          if (!v33 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v32)
        {
          goto LABEL_36;
        }

        v34 = v7[7];
        v35 = &v16[v34];
        v36 = *&v16[v34 + 8];
        v37 = &v12[v34];
        v38 = *(v37 + 1);
        if (v36)
        {
          if (!v38)
          {
            goto LABEL_36;
          }

          v39 = *v35 == *v37 && v36 == v38;
          if (!v39 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v38)
        {
          goto LABEL_36;
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
        v40 = sub_1C584F620();
        sub_1C56EC248(v12, a4);
        sub_1C56EC248(v16, a4);
        if (v40)
        {
          v20 += v21;
          v19 += v21;
          if (--v17)
          {
            continue;
          }
        }

        return v40 & 1;
      }
    }

    v40 = 1;
  }

  else
  {
LABEL_37:
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t sub_1C56EAA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      return 1;
    }

    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = *(v11 + 72);
    while (1)
    {
      sub_1C56EC1E0(v16, v13, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56EC1E0(v17, v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v19 = *(v4 + 20);
      v20 = *&v13[v19];
      v21 = *&v9[v19];
      if (v20 != v21)
      {
        v22 = *&v13[v19];

        v23 = sub_1C56A4B30(v20, v21);

        if (!v23)
        {
          break;
        }
      }

      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
      if ((sub_1C584F620() & 1) == 0)
      {
        break;
      }

      sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v17 += v18;
      v16 += v18;
      if (!--v14)
      {
        return 1;
      }
    }

    sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  }

  return 0;
}

uint64_t sub_1C56EACE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUSendToDevice(0);
  v5 = *(*(v4 - 1) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v44 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (v14 && a1 != a2)
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_1C56EC1E0(v16, v13, type metadata accessor for MUSendToDevice);
        sub_1C56EC1E0(v17, v9, type metadata accessor for MUSendToDevice);
        v19 = v4[5];
        v20 = &v13[v19];
        v21 = *&v13[v19 + 8];
        v22 = &v9[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (!v23 || (*v20 == *v22 ? (v24 = v21 == v23) : (v24 = 0), !v24 && (sub_1C584FDC0() & 1) == 0))
          {
LABEL_43:
            sub_1C56EC248(v9, type metadata accessor for MUSendToDevice);
            sub_1C56EC248(v13, type metadata accessor for MUSendToDevice);
            goto LABEL_44;
          }
        }

        else if (v23)
        {
          goto LABEL_43;
        }

        v25 = v4[6];
        v26 = &v13[v25];
        v27 = *&v13[v25 + 8];
        v28 = &v9[v25];
        v29 = *(v28 + 1);
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_43;
          }

          v30 = *v26 == *v28 && v27 == v29;
          if (!v30 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v29)
        {
          goto LABEL_43;
        }

        v31 = v4[7];
        v32 = &v13[v31];
        v33 = *&v13[v31 + 8];
        v34 = &v9[v31];
        v35 = *(v34 + 1);
        if (v33)
        {
          if (!v35)
          {
            goto LABEL_43;
          }

          v36 = *v32 == *v34 && v33 == v35;
          if (!v36 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v35)
        {
          goto LABEL_43;
        }

        v37 = v4[8];
        v38 = &v13[v37];
        v39 = *&v13[v37 + 8];
        v40 = &v9[v37];
        v41 = *(v40 + 1);
        if (v39)
        {
          if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v41)
        {
          goto LABEL_43;
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
        v42 = sub_1C584F620();
        sub_1C56EC248(v9, type metadata accessor for MUSendToDevice);
        sub_1C56EC248(v13, type metadata accessor for MUSendToDevice);
        if (v42)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v42 & 1;
      }
    }

    v42 = 1;
  }

  else
  {
LABEL_44:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t sub_1C56EB038(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EB094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1C56EC1E0(v21, v18, a4);
        sub_1C56EC1E0(v22, v14, a4);
        v24 = a5(v18, v14);
        sub_1C56EC248(v14, a4);
        sub_1C56EC248(v18, a4);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1C56EB230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v31 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (v14 && a1 != a2)
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_1C56EC1E0(v16, v13, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        sub_1C56EC1E0(v17, v9, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        v19 = *(v4 + 20);
        v20 = &v13[v19];
        v21 = v13[v19 + 4];
        v22 = &v9[v19];
        v23 = v9[v19 + 4];
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v20 != *v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
LABEL_21:
            sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
            sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
            goto LABEL_22;
          }
        }

        v24 = *(v4 + 24);
        v25 = &v13[v24];
        v26 = v13[v24 + 4];
        v27 = &v9[v24];
        v28 = v9[v24 + 4];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_21;
          }
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
        v29 = sub_1C584F620();
        sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        if (v29)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_22:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_1C56EB4D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EB534(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EB590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v5 = *(*(v4 - 1) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v36 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (v14 && a1 != a2)
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_1C56EC1E0(v16, v13, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        sub_1C56EC1E0(v17, v9, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        v19 = v4[6];
        v20 = &v13[v19];
        v21 = *&v13[v19 + 8];
        v22 = &v9[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (!v23 || (*v20 == *v22 ? (v24 = v21 == v23) : (v24 = 0), !v24 && (sub_1C584FDC0() & 1) == 0))
          {
LABEL_32:
            sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
            sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
            goto LABEL_33;
          }
        }

        else if (v23)
        {
          goto LABEL_32;
        }

        v25 = v4[7];
        v26 = &v13[v25];
        v27 = *&v13[v25 + 8];
        v28 = &v9[v25];
        v29 = *(v28 + 1);
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_32;
          }

          v30 = *v26 == *v28 && v27 == v29;
          if (!v30 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v29)
        {
          goto LABEL_32;
        }

        v31 = *v13;
        v32 = *v9;
        if (v31 == 2)
        {
          if (v32 != 2)
          {
            goto LABEL_32;
          }
        }

        else if (v32 == 2 || ((v32 ^ v31) & 1) != 0)
        {
          goto LABEL_32;
        }

        v33 = v4[5];
        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
        v34 = sub_1C584F620();
        sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        if (v34)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v34 & 1;
      }
    }

    v34 = 1;
  }

  else
  {
LABEL_33:
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t sub_1C56EB888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v5 = *(*(v4 - 1) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v44 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (v14 && a1 != a2)
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_1C56EC1E0(v16, v13, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        sub_1C56EC1E0(v17, v9, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        v19 = v4[5];
        v20 = &v13[v19];
        v21 = *&v13[v19 + 8];
        v22 = &v9[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_42;
          }

          v24 = *v20 == *v22 && v21 == v23;
          if (!v24 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else if (v23)
        {
          goto LABEL_42;
        }

        v25 = v4[6];
        v26 = &v13[v25];
        v27 = *&v13[v25 + 8];
        v28 = &v9[v25];
        v29 = *(v28 + 1);
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_42;
          }

          v30 = *v26 == *v28 && v27 == v29;
          if (!v30 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else if (v29)
        {
          goto LABEL_42;
        }

        v31 = v4[7];
        v32 = &v13[v31];
        v33 = *&v13[v31 + 8];
        v34 = &v9[v31];
        v35 = *(v34 + 1);
        if (v33)
        {
          if (!v35)
          {
            goto LABEL_42;
          }

          v36 = *v32 == *v34 && v33 == v35;
          if (!v36 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else if (v35)
        {
          goto LABEL_42;
        }

        v37 = v4[8];
        v38 = &v13[v37];
        v39 = v13[v37 + 4];
        v40 = &v9[v37];
        v41 = v9[v37 + 4];
        if (v39)
        {
          if (!v41)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (*v38 != *v40)
          {
            LOBYTE(v41) = 1;
          }

          if (v41)
          {
LABEL_42:
            sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
            sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
            goto LABEL_43;
          }
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
        v42 = sub_1C584F620();
        sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        if (v42)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v42 & 1;
      }
    }

    v42 = 1;
  }

  else
  {
LABEL_43:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t sub_1C56EBBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (v14 && a1 != a2)
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_1C56EC1E0(v16, v13, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        sub_1C56EC1E0(v17, v9, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        v19 = *(v4 + 20);
        v20 = &v13[v19];
        v21 = *&v13[v19 + 8];
        v22 = &v9[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_24;
          }

          v24 = *v20 == *v22 && v21 == v23;
          if (!v24 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (v23)
        {
          goto LABEL_24;
        }

        v25 = *(v4 + 24);
        v26 = &v13[v25];
        v27 = v13[v25 + 4];
        v28 = &v9[v25];
        v29 = v9[v25 + 4];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
LABEL_24:
            sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
            sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
            goto LABEL_25;
          }
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
        v30 = sub_1C584F620();
        sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        if (v30)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v30 & 1;
      }
    }

    v30 = 1;
  }

  else
  {
LABEL_25:
    v30 = 0;
  }

  return v30 & 1;
}

unint64_t sub_1C56EBE80(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1C56EBEB0(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

uint64_t sub_1C56EBEC0(unint64_t a1)
{
  if (a1 > 8)
  {
    return 5;
  }

  else
  {
    return byte_1C58761E0[a1];
  }
}

uint64_t sub_1C56EBEE0(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 20:
      result = 20;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 24:
      result = 24;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 26;
      break;
    case 27:
      result = 27;
      break;
    case 28:
      result = 28;
      break;
    case 29:
      result = 29;
      break;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    default:
      if (a1 == 1001)
      {
        v4 = 53;
      }

      else
      {
        v4 = 54;
      }

      if (a1 == 1000)
      {
        result = 52;
      }

      else
      {
        result = v4;
      }

      break;
  }

  return result;
}

unint64_t sub_1C56EC0C8(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_1C56EC178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C56EC1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C56EC248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C56EC9C8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1C56EC9D8(uint64_t a1)
{
  if (a1 <= 6)
  {
    if (a1 <= 3)
    {
      switch(a1)
      {
        case 1:
          return 0;
        case 2:
          return 1;
        case 3:
          return 2;
      }

      return 13;
    }

    if (a1 == 4)
    {
      return 3;
    }

    else if (a1 == 5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (a1 > 9)
    {
      if (a1 <= 11)
      {
        if (a1 == 10)
        {
          return 9;
        }

        else
        {
          return 10;
        }
      }

      if (a1 == 12)
      {
        return 11;
      }

      if (a1 == 1000)
      {
        return 12;
      }

      return 13;
    }

    if (a1 == 7)
    {
      return 6;
    }

    else if (a1 == 8)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C56ECAD0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_1C56ECE38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C56ECF40(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if ((sub_1C56EA7A8(*a1, *a2, a3, a4) & 1) == 0 || (sub_1C56EA7A8(a1[1], a2[1], a3, a4) & 1) == 0 || (sub_1C56EA7A8(a1[2], a2[2], a3, a4) & 1) == 0 || (sub_1C56EA7A8(a1[3], a2[3], a3, a4) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a5(0) + 32);
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56ED04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 6)
  {
    if (v25 != 6)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }

LABEL_33:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
    return sub_1C584F620() & 1;
  }

  if (!v30)
  {
    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_1C56ED21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUUserPreferences(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v27[0] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBE0, &qword_1C5875DF0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v27 - v18;
  v20 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0) + 20);
  v21 = *(v15 + 56);
  v27[1] = a1;
  sub_1C56466CC(a1 + v20, v19, &qword_1EC16ECA0, &qword_1C586B128);
  sub_1C56466CC(a2 + v20, &v19[v21], &qword_1EC16ECA0, &qword_1C586B128);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1C5625230(v19, &qword_1EC16ECA0, &qword_1C586B128);
LABEL_9:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
      v23 = sub_1C584F620();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_1C56466CC(v19, v13, &qword_1EC16ECA0, &qword_1C586B128);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_1C56EC248(v13, type metadata accessor for MUUserPreferences);
LABEL_6:
    sub_1C5625230(v19, &qword_1EC16FBE0, &qword_1C5875DF0);
    goto LABEL_7;
  }

  v24 = v27[0];
  sub_1C56EC178(&v19[v21], v27[0], type metadata accessor for MUUserPreferences);
  v25 = sub_1C56F34AC(v13, v24);
  sub_1C56EC248(v24, type metadata accessor for MUUserPreferences);
  sub_1C56EC248(v13, type metadata accessor for MUUserPreferences);
  sub_1C5625230(v19, &qword_1EC16ECA0, &qword_1C586B128);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1C56ED578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[11];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    if (*v26 != *v28 || v27 != v29)
    {
      v30 = v4;
      v31 = sub_1C584FDC0();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = v4[12];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56ED7BC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v5 = *(v4 + 24);
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
    if (!v10 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1C56EA440(*a1, *a2))
  {
    v11 = *(v4 + 20);
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56ED8B0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v5 = v4[6];
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
    if (!v10 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1C56EA440(*a1, *a2))
  {
    v11 = v4[7];
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = v14[1];
    if (v13)
    {
      if (!v15)
      {
        return 0;
      }

      v16 = *v12 == *v14 && v13 == v15;
      if (!v16 && (sub_1C584FDC0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v17 = v4[8];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }

      v22 = *v18 == *v20 && v19 == v21;
      if (!v22 && (sub_1C584FDC0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    v23 = v4[9];
    v24 = (a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (v27 && (*v24 == *v26 && v25 == v27 || (sub_1C584FDC0() & 1) != 0))
      {
        goto LABEL_34;
      }
    }

    else if (!v27)
    {
LABEL_34:
      v28 = v4[5];
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
      return sub_1C584F620() & 1;
    }
  }

  return 0;
}

uint64_t sub_1C56EDA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v5 = v4[5];
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1C584FDC0();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[9];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v32 = v4;
      v33 = sub_1C584FDC0();
      v4 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v31)
  {
    return 0;
  }

  v34 = v4[10];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    return 0;
  }

  v37 = v4[11];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      return 0;
    }
  }

  else if (v39 == 2 || ((v38 ^ v39) & 1) != 0)
  {
    return 0;
  }

  v40 = v4[12];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      return 0;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    return 0;
  }

  v43 = v4[13];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    return 0;
  }

  v46 = v4[14];
  v47 = *(a1 + v46);
  v48 = *(a2 + v46);
  if (v47 == 2)
  {
    if (v48 != 2)
    {
      return 0;
    }
  }

  else if (v48 == 2 || ((v47 ^ v48) & 1) != 0)
  {
    return 0;
  }

  v49 = v4[15];
  v50 = *(a1 + v49);
  v51 = *(a2 + v49);
  if (v50 == 2)
  {
    if (v51 == 2)
    {
      goto LABEL_67;
    }

    return 0;
  }

  if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

LABEL_67:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EDD88(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED10, &qword_1C586B198);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBE8, &qword_1C5875DF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v41 - v18;
  if ((sub_1C56EA7A8(*a1, *a2, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem) & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v21 = *(v20 + 24);
  v22 = a1;
  v23 = *(v15 + 48);
  v41 = v20;
  v42 = v22;
  sub_1C56466CC(v22 + v21, v19, &qword_1EC16ED10, &qword_1C586B198);
  sub_1C56466CC(a2 + v21, &v19[v23], &qword_1EC16ED10, &qword_1C586B198);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_1C5625230(v19, &qword_1EC16ED10, &qword_1C586B198);
      v25 = v42;
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_1C56466CC(v19, v14, &qword_1EC16ED10, &qword_1C586B198);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_1C56EC248(v14, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
LABEL_10:
    v29 = &qword_1EC16FBE8;
    v30 = &qword_1C5875DF8;
LABEL_25:
    sub_1C5625230(v19, v29, v30);
LABEL_26:
    v39 = 0;
    return v39 & 1;
  }

  sub_1C56EC178(&v19[v23], v9, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  v31 = *(v4 + 20);
  v32 = &v14[v31];
  v33 = *&v14[v31 + 8];
  v34 = &v9[v31];
  v35 = *(v34 + 1);
  if (!v33)
  {
    v25 = v42;
    if (!v35)
    {
      goto LABEL_18;
    }

LABEL_24:
    sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
    sub_1C56EC248(v14, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
    v29 = &qword_1EC16ED10;
    v30 = &qword_1C586B198;
    goto LABEL_25;
  }

  v25 = v42;
  if (!v35)
  {
    goto LABEL_24;
  }

  v36 = *v32 == *v34 && v33 == v35;
  if (!v36 && (sub_1C584FDC0() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v37 = sub_1C584F620();
  sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  sub_1C56EC248(v14, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  sub_1C5625230(v19, &qword_1EC16ED10, &qword_1C586B198);
  if ((v37 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  v26 = *(v41 + 28);
  v27 = *(v25 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    goto LABEL_26;
  }

  v38 = *(v41 + 20);
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v39 = sub_1C584F620();
  return v39 & 1;
}

uint64_t sub_1C56EE228(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v5 = v4[6];
  v6 = &a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = &a2[v5];
  v9 = *(v8 + 1);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = &a1[v13];
  v15 = *&a1[v13 + 8];
  v16 = &a2[v13];
  v17 = *(v16 + 1);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1C584FDC0();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    v21 = *a1;
    v22 = *a2;
    if (v21 == 2)
    {
      if (v22 != 2)
      {
        return 0;
      }
    }

    else if (v22 == 2 || ((v22 ^ v21) & 1) != 0)
    {
      return 0;
    }

    v23 = v4[5];
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
    return sub_1C584F620() & 1;
  }

  if (!v17)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_1C56EE398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v5 = v4[5];
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  if (*v19 != *v21 || v20 != v22)
  {
    v24 = v4;
    v25 = sub_1C584FDC0();
    v4 = v24;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EE53C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v5 = v4[5];
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1C584FDC0();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_1C584FDC0();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_1C584FDC0();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_1C584FDC0();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 != 2)
  {
    if (v46 != 2 && ((v45 ^ v46) & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v46 != 2)
  {
    return 0;
  }

LABEL_50:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EE7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v5 = v4[5];
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1C584FDC0();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  if (*v22 != *v24 || v23 != v25)
  {
    v27 = v4;
    v28 = sub_1C584FDC0();
    v4 = v27;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_28:
  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EE970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EEB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_1C584FDC0();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EEC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC60, &qword_1C5875E70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v39 - v18;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v21 = *(v20 + 20);
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 13)
  {
    if (v23 != 13)
    {
      goto LABEL_13;
    }
  }

  else if (v23 == 13 || qword_1C58761F0[v22] != qword_1C58761F0[v23])
  {
    goto LABEL_13;
  }

  v24 = a1;
  v25 = a2;
  v26 = *(v20 + 24);
  v27 = *(v15 + 48);
  v39[1] = v24;
  sub_1C56466CC(v24 + v26, v19, &qword_1EC16ECD0, &qword_1C586B158);
  sub_1C56466CC(v25 + v26, &v19[v27], &qword_1EC16ECD0, &qword_1C586B158);
  v28 = *(v5 + 48);
  if (v28(v19, 1, v4) == 1)
  {
    if (v28(&v19[v27], 1, v4) == 1)
    {
      sub_1C5625230(v19, &qword_1EC16ECD0, &qword_1C586B158);
LABEL_18:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
      v31 = sub_1C584F620();
      return v31 & 1;
    }

    goto LABEL_11;
  }

  sub_1C56466CC(v19, v14, &qword_1EC16ECD0, &qword_1C586B158);
  if (v28(&v19[v27], 1, v4) == 1)
  {
    sub_1C56EC248(v14, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
LABEL_11:
    v29 = &qword_1EC16FC60;
    v30 = &qword_1C5875E70;
LABEL_12:
    sub_1C5625230(v19, v29, v30);
    goto LABEL_13;
  }

  sub_1C56EC178(&v19[v27], v9, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  v33 = *(v4 + 20);
  v34 = *&v14[v33];
  v35 = *&v9[v33];
  if (v34 != v35)
  {
    v36 = *&v14[v33];

    v37 = sub_1C56E1160(v34, v35);

    if (!v37)
    {
      sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
      sub_1C56EC248(v14, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
      v29 = &qword_1EC16ECD0;
      v30 = &qword_1C586B158;
      goto LABEL_12;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v38 = sub_1C584F620();
  sub_1C56EC248(v9, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  sub_1C56EC248(v14, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  sub_1C5625230(v19, &qword_1EC16ECD0, &qword_1C586B158);
  if (v38)
  {
    goto LABEL_18;
  }

LABEL_13:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1C56EF0B8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 19)
  {
    if (v7 != 19)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_1C56EAA74(*a1, *a2))
  {
    v8 = *(v4 + 20);
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56EF190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C56EF1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MULocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC68, &qword_1C5875E78);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v67 - v18;
  v20 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v21 = v20[5];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    goto LABEL_47;
  }

  v24 = v20[6];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_47;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v29 = v20;
      v30 = sub_1C584FDC0();
      v20 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_47;
  }

  v31 = v20[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_47;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v20;
      v37 = sub_1C584FDC0();
      v20 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_47;
  }

  v38 = v20[8];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_47;
    }

    if (*v39 != *v41 || v40 != v42)
    {
      v43 = v20;
      v44 = sub_1C584FDC0();
      v20 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v42)
  {
    goto LABEL_47;
  }

  v45 = v20[9];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_47;
    }

    if (*v46 != *v48 || v47 != v49)
    {
      v50 = v20;
      v51 = sub_1C584FDC0();
      v20 = v50;
      if ((v51 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v49)
  {
    goto LABEL_47;
  }

  v52 = v20[10];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_47;
    }

    if (*v53 != *v55 || v54 != v56)
    {
      v57 = v20;
      v58 = sub_1C584FDC0();
      v20 = v57;
      if ((v58 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v56)
  {
    goto LABEL_47;
  }

  v59 = v20[11];
  v60 = *(v15 + 48);
  sub_1C56466CC(a1 + v59, v19, &qword_1EC16EC50, &qword_1C586B0C8);
  v61 = a2 + v59;
  v62 = v60;
  sub_1C56466CC(v61, &v19[v60], &qword_1EC16EC50, &qword_1C586B0C8);
  v63 = *(v5 + 48);
  if (v63(v19, 1, v4) == 1)
  {
    if (v63(&v19[v62], 1, v4) == 1)
    {
      sub_1C5625230(v19, &qword_1EC16EC50, &qword_1C586B0C8);
LABEL_50:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
      v64 = sub_1C584F620();
      return v64 & 1;
    }

    goto LABEL_46;
  }

  sub_1C56466CC(v19, v14, &qword_1EC16EC50, &qword_1C586B0C8);
  if (v63(&v19[v62], 1, v4) == 1)
  {
    sub_1C56EC248(v14, type metadata accessor for MULocation);
LABEL_46:
    sub_1C5625230(v19, &qword_1EC16FC68, &qword_1C5875E78);
    goto LABEL_47;
  }

  sub_1C56EC178(&v19[v62], v9, type metadata accessor for MULocation);
  v66 = sub_1C56F4268(v14, v9, type metadata accessor for MULocation);
  sub_1C56EC248(v9, type metadata accessor for MULocation);
  sub_1C56EC248(v14, type metadata accessor for MULocation);
  sub_1C5625230(v19, &qword_1EC16EC50, &qword_1C586B0C8);
  if (v66)
  {
    goto LABEL_50;
  }

LABEL_47:
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_1C56EF72C(uint64_t *a1, uint64_t *a2)
{
  if (sub_1C56EA440(*a1, *a2))
  {
    v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
    v5 = *(v4 + 24);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        if (*v6 == *v8 && v7 == v9)
        {
          goto LABEL_9;
        }

        v11 = v4;
        v12 = sub_1C584FDC0();
        v4 = v11;
        if (v12)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v9)
    {
LABEL_9:
      v13 = *(v4 + 20);
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
      return sub_1C584F620() & 1;
    }
  }

  return 0;
}

uint64_t sub_1C56EF828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_1C584FDC0();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
    return sub_1C584F620() & 1;
  }

  if (!v20)
  {
    goto LABEL_21;
  }

  return 0;
}