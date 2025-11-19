uint64_t sub_1ABE5EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&qword_1EB4D0138, type metadata accessor for ViewService.SiriRemembersView.Interaction);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ViewService.SiriRemembersView.Entity.init(entity:createdAt:updatedAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0xD00000000000002FLL;
  v9 = sub_1ABBAE7C4(a1, &selRef_identifier);
  if (!v10)
  {
    v31 = "nteraction.startDate";
    v8 = 0xD000000000000035;
LABEL_17:
    v32 = v31 | 0x8000000000000000;
    sub_1ABE5F344();
    swift_allocError();
    *v33 = v8;
    *(v33 + 8) = v32;
    *(v33 + 16) = 1;
    swift_willThrow();

    v34 = sub_1ABF21EB4();
    sub_1ABA7BBB0(v34);
    v36 = *(v35 + 8);
    v36(a3, v34);
    return (v36)(a2, v34);
  }

  v11 = v9;
  v12 = v10;
  v39 = a2;
  v13 = sub_1ABBAE7C4(a1, &selRef_type);
  if (!v14)
  {

    v31 = "bersEntity.identifier";
    goto LABEL_17;
  }

  v15 = v14;
  v37 = v13;
  v16 = sub_1ABBAE7C4(a1, &selRef_fields);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 32123;
  }

  v38 = a3;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE200000000000000;
  }

  v20 = sub_1ABBAE7C4(a1, &selRef_fieldsTokens);
  v22 = v21;

  *a4 = 0;
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  *(a4 + 8) = 1;
  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v37;
  *(a4 + 40) = v15;
  *(a4 + 48) = v18;
  *(a4 + 56) = v19;
  *(a4 + 64) = v23;
  *(a4 + 72) = v24;
  v25 = type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  v26 = *(v25 + 36);
  v27 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v27);
  v29 = *(v28 + 32);
  v29(a4 + v26, v39, v27);
  return (v29)(a4 + *(v25 + 40), v38, v27);
}

uint64_t sub_1ABE5F110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&qword_1ED86B1D0, type metadata accessor for ViewService.SiriRemembersView.Entity);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1ABE5F198()
{
  sub_1ABE5FBD0();

  return sub_1ABF22804();
}

uint64_t sub_1ABE5F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FB7C();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1ABE5F2E0()
{
  result = qword_1ED86B370;
  if (!qword_1ED86B370)
  {
    sub_1ABAE2850(&qword_1EB4DB160, &qword_1ABF6CC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B370);
  }

  return result;
}

unint64_t sub_1ABE5F344()
{
  result = qword_1EB4DB170;
  if (!qword_1EB4DB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB170);
  }

  return result;
}

unint64_t sub_1ABE5F474()
{
  result = qword_1EB4DB188;
  if (!qword_1EB4DB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB188);
  }

  return result;
}

unint64_t sub_1ABE5F5EC()
{
  result = qword_1EB4DB190;
  if (!qword_1EB4DB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB190);
  }

  return result;
}

unint64_t sub_1ABE5F644()
{
  result = qword_1EB4D0130;
  if (!qword_1EB4D0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0130);
  }

  return result;
}

unint64_t sub_1ABE5F69C()
{
  result = qword_1ED871348;
  if (!qword_1ED871348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871348);
  }

  return result;
}

uint64_t sub_1ABE5F718()
{
  result = sub_1ABF21EB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15ProcessingStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr1F2074559O20ProcessedInteractionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE5FA78()
{
  result = qword_1EB4DB198;
  if (!qword_1EB4DB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB198);
  }

  return result;
}

unint64_t sub_1ABE5FAD0()
{
  result = qword_1EB4D0118;
  if (!qword_1EB4D0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0118);
  }

  return result;
}

unint64_t sub_1ABE5FB28()
{
  result = qword_1EB4D0120;
  if (!qword_1EB4D0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0120);
  }

  return result;
}

unint64_t sub_1ABE5FB7C()
{
  result = qword_1EB4D0128;
  if (!qword_1EB4D0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0128);
  }

  return result;
}

unint64_t sub_1ABE5FBD0()
{
  result = qword_1EB4DB1A0;
  if (!qword_1EB4DB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB1A0);
  }

  return result;
}

uint64_t sub_1ABE5FC24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ViewService.SiriRemembersView.SourceStreams.init(syncedStreamName:)@<X0>(void *a1@<X8>)
{
  sub_1ABA82FAC();
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t ViewService.SiriRemembersView.Interaction.init(rowid:id:domain:type:bundleId:isDonatedBySiri:donorStream:direction:handlingStatus:startDate:durationSeconds:fields:contentHash:biomeEventTimestamp:isLocal:devicePlatform:userDonatorType:sourceStreams:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, int a21, uint64_t *a22)
{
  v26 = *a22;
  v25 = a22[1];
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14;
  *(a9 + 84) = *(&a14 + 4);
  *(a9 + 92) = HIDWORD(a14);
  v27 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v28 = v27[13];
  v29 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v29);
  result = (*(v30 + 32))(a9 + v28, a15);
  *(a9 + v27[14]) = a10;
  v32 = (a9 + v27[15]);
  *v32 = a16;
  v32[1] = a17;
  *(a9 + v27[16]) = a18;
  *(a9 + v27[17]) = a11;
  *(a9 + v27[18]) = a19;
  *(a9 + v27[19]) = a20;
  *(a9 + v27[20]) = a21;
  v33 = (a9 + v27[21]);
  *v33 = v26;
  v33[1] = v25;
  return result;
}

uint64_t ViewService.SiriRemembersView.SourceStreams.adding(syncedStreamName:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  MEMORY[0x1AC5A9410]();
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  sub_1ABAE28EC();
  if (sub_1ABF248D4())
  {
  }

  else
  {

    MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t ViewService.SiriRemembersView.Entity.init(rowid:id:type:fields:fieldsTokens:createdAt:updatedAt:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  v14 = type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  v15 = *(v14 + 36);
  v16 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v16);
  v20 = *(v17 + 32);
  v20(a9 + v15, a12, v16);
  v18 = a9 + *(v14 + 40);

  return (v20)(v18, a13, v16);
}

void ViewService.siriRemembersView.getter(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA96B44();
  v4 = sub_1ABF23BD4();
  v11[0] = 0;
  v5 = [v3 requestAssertionForViewName:v4 error:v11];

  v6 = v11[0];
  if (v5)
  {
    *(a1 + *(type metadata accessor for ViewService.SiriRemembersView(0) + 20)) = v5;
    v7 = v6;
    v8 = [swift_unknownObjectRetain() viewArtifactURL];
    sub_1ABF21CA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v11[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t BMSiriRemembersInteractionInteractionDirection.description.getter()
{
  v0 = BMSiriRemembersInteractionInteractionDirectionAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMSiriRemembersInteractionInteractionStatus.description.getter()
{
  v0 = BMSiriRemembersInteractionInteractionStatusAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMSiriRemembersInteractionInteractionSource.description.getter()
{
  v0 = BMSiriRemembersInteractionInteractionSourceAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMDeviceMetadataDevicePlatform.description.getter()
{
  v0 = BMDeviceMetadataDevicePlatformAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMSiriRemembersInteractionUserDonatorType.description.getter()
{
  v0 = BMSiriRemembersInteractionUserDonatorTypeAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t ViewService.SiriRemembersView.SourceStreams.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.SourceStreams.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ViewService.SiriRemembersView.SourceStreams.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ViewService.SiriRemembersView.SourceStreams.encoded(syncedStreamName:)()
{
  sub_1ABA82FAC();
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  return v1;
}

uint64_t sub_1ABE60A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ViewService.SiriRemembersView.SourceStreams.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1ABE60A74@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.SiriRemembersView.SourceStreams.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE60A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE62BC4();
  v5 = sub_1ABE65994();
  v6 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

uint64_t sub_1ABE60B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE62C18();
  v7 = sub_1ABE65994();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_1ABE60B84(uint64_t a1)
{
  v2 = sub_1ABE65940();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABE60BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE65940();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1ABE60CCC()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB1F8, &qword_1ABF6D270);
  sub_1ABB9009C(v4, qword_1ED8704F0);
  sub_1ABA7AA24(v4, qword_1ED8704F0);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v5 = sub_1ABF220B4();
  sub_1ABA7B9B4(v3, 1, 1, v5);
  sub_1ABE62B7C(&qword_1ED870C68, type metadata accessor for ViewService.SiriRemembersView.Interaction);
  sub_1ABE5F69C();
  sub_1ABF221E4();
  return sub_1ABE659E8(v3);
}

uint64_t static ViewService.SiriRemembersView.Interaction.interactionEntities.getter()
{
  if (qword_1ED8704E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB1F8, &qword_1ABF6D270);
  sub_1ABA7AA24(v0, qword_1ED8704F0);
  sub_1ABA7EBF4();
  v2 = *(v1 + 16);
  v3 = sub_1ABAA3A84();

  return v4(v3);
}

uint64_t sub_1ABE60EB8()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB250, &qword_1ABF6D2B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4DB1F8, &qword_1ABF6D270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4DB200, &qword_1ABF6D278);
  sub_1ABB9009C(v10, qword_1ED8704A8);
  v14[1] = sub_1ABA7AA24(v10, qword_1ED8704A8);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  if (qword_1ED8704E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1ABA7AA24(v5, qword_1ED8704F0);
  (*(v6 + 16))(v9, v11, v5);
  if (qword_1ED870460 != -1)
  {
    swift_once();
  }

  v12 = sub_1ABA7AA24(v0, qword_1ED870468);
  (*(v1 + 16))(v4, v12, v0);
  sub_1ABE62B7C(&qword_1ED870C68, type metadata accessor for ViewService.SiriRemembersView.Interaction);
  sub_1ABAB47C4(&qword_1ED870590, &qword_1EB4DB1F8, &qword_1ABF6D270);
  sub_1ABAB47C4(&qword_1ED870588, &qword_1EB4DB250, &qword_1ABF6D2B8);
  sub_1ABF221F4();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t static ViewService.SiriRemembersView.Interaction.entities.getter()
{
  if (qword_1ED8704A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB200, &qword_1ABF6D278);
  sub_1ABA7AA24(v0, qword_1ED8704A8);
  sub_1ABA7EBF4();
  v2 = *(v1 + 16);
  v3 = sub_1ABAA3A84();

  return v4(v3);
}

uint64_t ViewService.SiriRemembersView.Interaction.rowid.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ViewService.SiriRemembersView.Interaction.rowid.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ViewService.SiriRemembersView.Interaction.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.Interaction.domain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.Interaction.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.Interaction.bundleId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.Interaction.startDate.getter()
{
  v0 = sub_1ABAA0880();
  v1 = *(type metadata accessor for ViewService.SiriRemembersView.Interaction(v0) + 52);
  v2 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1ABAA367C();

  return v6(v5);
}

uint64_t ViewService.SiriRemembersView.Interaction.fields.getter()
{
  v1 = (v0 + *(type metadata accessor for ViewService.SiriRemembersView.Interaction(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.Interaction.sourceStreams.getter()
{
  v2 = sub_1ABAA0880();
  v3 = (v1 + *(type metadata accessor for ViewService.SiriRemembersView.Interaction(v2) + 84));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t sub_1ABE61580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x80000001ABF7EF60 == a2;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x7453656372756F73 && a2 == 0xED0000736D616572)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1ABF25054();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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

unint64_t sub_1ABE61B08(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x6449656C646E7562;
      break;
    case 5:
      result = 0x6574616E6F447369;
      break;
    case 6:
      result = 0x727453726F6E6F64;
      break;
    case 7:
      result = 0x6F69746365726964;
      break;
    case 8:
      result = 0x676E696C646E6168;
      break;
    case 9:
      result = 0x7461447472617473;
      break;
    case 10:
      result = 0x6E6F697461727564;
      break;
    case 11:
      result = 0x73646C656966;
      break;
    case 12:
      result = 0x48746E65746E6F63;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6C61636F4C7369;
      break;
    case 15:
      result = 0x6C50656369766564;
      break;
    case 16:
      result = 0x616E6F4472657375;
      break;
    case 17:
      result = 0x7453656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE61D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE61580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE61D6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABE61B00();
  *a1 = result;
  return result;
}

uint64_t sub_1ABE61D94(uint64_t a1)
{
  v2 = sub_1ABE62B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE61DD0(uint64_t a1)
{
  v2 = sub_1ABE62B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewService.SiriRemembersView.Interaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4DB208, &qword_1ABF6D280);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE62B28();
  sub_1ABF252E4();
  v14 = *v3;
  v15 = *(v3 + 8);
  LOBYTE(v55) = 0;
  sub_1ABA88A3C();
  sub_1ABF24F24();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    sub_1ABA7F9F4(1);
    sub_1ABF24F34();
    v18 = v3[4];
    v19 = v3[5];
    sub_1ABA7F9F4(2);
    sub_1ABF24F34();
    v20 = v3[6];
    v21 = v3[7];
    sub_1ABA7F9F4(3);
    sub_1ABF24F34();
    v22 = v3[8];
    v23 = v3[9];
    sub_1ABA7F9F4(4);
    sub_1ABF24F34();
    v24 = *(v3 + 80);
    LOBYTE(v55) = 5;
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F44();
    LODWORD(v55) = *(v3 + 21);
    v25 = sub_1ABA95978(6);
    type metadata accessor for BMSiriRemembersInteractionInteractionSource(v25);
    sub_1ABA8E50C();
    sub_1ABE62B7C(v26, v27);
    sub_1ABA939FC();
    LODWORD(v55) = *(v3 + 22);
    v28 = sub_1ABA95978(7);
    type metadata accessor for BMSiriRemembersInteractionInteractionDirection(v28);
    sub_1ABA9A734();
    sub_1ABE62B7C(v29, v30);
    sub_1ABA939FC();
    LODWORD(v55) = *(v3 + 23);
    v31 = sub_1ABA95978(8);
    type metadata accessor for BMSiriRemembersInteractionInteractionStatus(v31);
    sub_1ABAA6218();
    sub_1ABE62B7C(v32, v33);
    sub_1ABA939FC();
    v34 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
    v35 = v34[13];
    LOBYTE(v55) = 9;
    sub_1ABF21EB4();
    sub_1ABA8FBA4();
    sub_1ABE62B7C(v36, v37);
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v38 = *(v3 + v34[14]);
    LOBYTE(v55) = 10;
    sub_1ABA88A3C();
    sub_1ABF24F54();
    v39 = (v3 + v34[15]);
    v40 = *v39;
    v41 = v39[1];
    sub_1ABA7F9F4(11);
    sub_1ABF24ED4();
    v42 = *(v3 + v34[16]);
    LOBYTE(v55) = 12;
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F74();
    v43 = *(v3 + v34[17]);
    LOBYTE(v55) = 13;
    sub_1ABA88A3C();
    sub_1ABF24F54();
    v44 = *(v3 + v34[18]);
    LOBYTE(v55) = 14;
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F44();
    LODWORD(v55) = *(v3 + v34[19]);
    v45 = sub_1ABA95978(15);
    type metadata accessor for BMDeviceMetadataDevicePlatform(v45);
    sub_1ABA97DF0();
    sub_1ABE62B7C(v46, v47);
    sub_1ABA939FC();
    LODWORD(v55) = *(v3 + v34[20]);
    v48 = sub_1ABA95978(16);
    type metadata accessor for BMSiriRemembersInteractionUserDonatorType(v48);
    sub_1ABA843F4();
    sub_1ABE62B7C(v49, v50);
    sub_1ABA939FC();
    v51 = (v3 + v34[21]);
    v52 = v51[1];
    v55 = *v51;
    v56 = v52;
    v57 = 17;
    sub_1ABE62BC4();

    sub_1ABA88A3C();
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v12, v5);
}

void ViewService.SiriRemembersView.Interaction.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABF21EB4();
  v6 = sub_1ABA7BB64(v5);
  v56 = v7;
  v57 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  v55 = sub_1ABAD219C(&unk_1EB4DB210, &qword_1ABF6D288);
  sub_1ABA7BB64(v55);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v58 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v18 = sub_1ABA7BBB0(v58);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  v24 = v2[3];
  v25 = v2[4];
  sub_1ABA93E20(v2, v24);
  sub_1ABE62B28();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABAA429C();
    sub_1ABA84B54(v2);
    if (v14)
    {
      v29 = *(v23 + 72);

      if (!v25)
      {
LABEL_5:
        if (!v24)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v25)
    {
      goto LABEL_5;
    }

    (*(v56 + 8))(v23 + v58[13], v57);
    if (!v24)
    {
      goto LABEL_10;
    }

LABEL_9:
    v30 = *(v23 + v58[15] + 8);

    goto LABEL_10;
  }

  LOBYTE(v59) = 0;
  sub_1ABA94D80();
  v26 = sub_1ABF24E04();
  sub_1ABA96E30(v26, v27);
  sub_1ABA81268(v28);
  *(v23 + 16) = sub_1ABF24E14();
  *(v23 + 24) = v31;
  sub_1ABA81268(2);
  *(v23 + 32) = sub_1ABF24E14();
  *(v23 + 40) = v32;
  sub_1ABA81268(3);
  *(v23 + 48) = sub_1ABF24E14();
  *(v23 + 56) = v33;
  sub_1ABA81268(4);
  *(v23 + 64) = sub_1ABF24E14();
  *(v23 + 72) = v34;
  sub_1ABA81268(5);
  *(v23 + 80) = sub_1ABF24E24() & 1;
  type metadata accessor for BMSiriRemembersInteractionInteractionSource(0);
  sub_1ABA8E50C();
  sub_1ABE62B7C(v35, v36);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v23 + 84) = v59;
  type metadata accessor for BMSiriRemembersInteractionInteractionDirection(0);
  sub_1ABA9A734();
  sub_1ABE62B7C(v37, v38);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v23 + 88) = v59;
  type metadata accessor for BMSiriRemembersInteractionInteractionStatus(0);
  sub_1ABAA6218();
  sub_1ABE62B7C(v39, v40);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v23 + 92) = v59;
  LOBYTE(v59) = 9;
  sub_1ABA8FBA4();
  sub_1ABE62B7C(v41, v42);
  sub_1ABA94D80();
  sub_1ABF24E64();
  (*(v56 + 32))(v23 + v58[13], v12, v57);
  sub_1ABA7C7E0(10);
  sub_1ABF24E34();
  *(v23 + v58[14]) = v43;
  sub_1ABA7C7E0(11);
  v44 = sub_1ABF24DB4();
  v45 = (v23 + v58[15]);
  *v45 = v44;
  v45[1] = v46;
  sub_1ABA7C7E0(12);
  *(v23 + v58[16]) = sub_1ABF24E54();
  sub_1ABA7C7E0(13);
  sub_1ABF24E34();
  *(v23 + v58[17]) = v47;
  sub_1ABA7C7E0(14);
  *(v23 + v58[18]) = sub_1ABF24E24() & 1;
  type metadata accessor for BMDeviceMetadataDevicePlatform(0);
  sub_1ABA97DF0();
  sub_1ABE62B7C(v48, v49);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v23 + v58[19]) = v59;
  type metadata accessor for BMSiriRemembersInteractionUserDonatorType(0);
  sub_1ABA843F4();
  sub_1ABE62B7C(v50, v51);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v23 + v58[20]) = v59;
  sub_1ABE62C18();
  sub_1ABA94D80();
  sub_1ABF24E64();
  v52 = sub_1ABAA556C();
  v53(v52);
  v54 = (v23 + v58[21]);
  *v54 = v59;
  v54[1] = v60;
  sub_1ABE63FD4(v23, v4, type metadata accessor for ViewService.SiriRemembersView.Interaction);
  sub_1ABA84B54(v2);
  sub_1ABE64030(v23, type metadata accessor for ViewService.SiriRemembersView.Interaction);
LABEL_10:
  sub_1ABA7BC90();
}

uint64_t sub_1ABE62A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE62B7C(&qword_1ED871358, type metadata accessor for ViewService.SiriRemembersView.Interaction);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1ABE62B28()
{
  result = qword_1ED870510;
  if (!qword_1ED870510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870510);
  }

  return result;
}

uint64_t sub_1ABE62B7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1ABE62BC4()
{
  result = qword_1ED86B778;
  if (!qword_1ED86B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B778);
  }

  return result;
}

unint64_t sub_1ABE62C18()
{
  result = qword_1ED870488;
  if (!qword_1ED870488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870488);
  }

  return result;
}

uint64_t sub_1ABE62C94(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_1ABB9009C(v6, a3);
  v7 = sub_1ABA7AA24(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_1ABE62D58@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_1ABA7AA24(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1ABE62DF8()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB220, &qword_1ABF6D290);
  sub_1ABB9009C(v4, qword_1EB4DB1B0);
  sub_1ABA7AA24(v4, qword_1EB4DB1B0);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  v5 = sub_1ABF220B4();
  sub_1ABA7B9B4(v3, 1, 1, v5);
  sub_1ABE62B7C(&qword_1ED870C30, type metadata accessor for ViewService.SiriRemembersView.Entity);
  sub_1ABE5F69C();
  sub_1ABF221E4();
  return sub_1ABE659E8(v3);
}

uint64_t static ViewService.SiriRemembersView.Entity.interactionEntities.getter()
{
  if (qword_1EB4D0408 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB220, &qword_1ABF6D290);
  sub_1ABA7AA24(v0, qword_1EB4DB1B0);
  sub_1ABA7EBF4();
  v2 = *(v1 + 16);
  v3 = sub_1ABAA3A84();

  return v4(v3);
}

uint64_t sub_1ABE62FE4()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB248, &qword_1ABF6D2B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4DB220, &qword_1ABF6D290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4DB228, &qword_1ABF6D298);
  sub_1ABB9009C(v10, qword_1EB4DB1C8);
  v14[1] = sub_1ABA7AA24(v10, qword_1EB4DB1C8);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  if (qword_1EB4D0408 != -1)
  {
    swift_once();
  }

  v11 = sub_1ABA7AA24(v5, qword_1EB4DB1B0);
  (*(v6 + 16))(v9, v11, v5);
  if (qword_1EB4D0428 != -1)
  {
    swift_once();
  }

  v12 = sub_1ABA7AA24(v0, qword_1EB4DB1E0);
  (*(v1 + 16))(v4, v12, v0);
  sub_1ABE62B7C(&qword_1ED870C30, type metadata accessor for ViewService.SiriRemembersView.Entity);
  sub_1ABAB47C4(&qword_1EB4DB2B0, &qword_1EB4DB220, &qword_1ABF6D290);
  sub_1ABAB47C4(&qword_1EB4DB2B8, &qword_1EB4DB248, &qword_1ABF6D2B0);
  sub_1ABF221F4();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t static ViewService.SiriRemembersView.Entity.interactions.getter()
{
  if (qword_1EB4D0410 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB228, &qword_1ABF6D298);
  sub_1ABA7AA24(v0, qword_1EB4DB1C8);
  sub_1ABA7EBF4();
  v2 = *(v1 + 16);
  v3 = sub_1ABAA3A84();

  return v4(v3);
}

uint64_t ViewService.SiriRemembersView.Entity.createdAt.getter()
{
  v0 = sub_1ABAA0880();
  v1 = *(type metadata accessor for ViewService.SiriRemembersView.Entity(v0) + 36);
  v2 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1ABAA367C();

  return v6(v5);
}

uint64_t ViewService.SiriRemembersView.Entity.updatedAt.getter()
{
  v0 = sub_1ABAA0880();
  v1 = *(type metadata accessor for ViewService.SiriRemembersView.Entity(v0) + 40);
  v2 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1ABAA367C();

  return v6(v5);
}

uint64_t sub_1ABE634D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F5473646C656966 && a2 == 0xEC000000736E656BLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
            {

              return 6;
            }

            else
            {
              v12 = sub_1ABF25054();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE63704(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    case 4:
      result = 0x6F5473646C656966;
      break;
    case 5:
      v3 = 1634038371;
      goto LABEL_8;
    case 6:
      v3 = 1633972341;
LABEL_8:
      result = v3 | 0x4164657400000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE637BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE634D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE637E4(uint64_t a1)
{
  v2 = sub_1ABE63A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE63820(uint64_t a1)
{
  v2 = sub_1ABE63A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.SiriRemembersView.Entity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1ABA7BCA8();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  v34 = sub_1ABAD219C(&unk_1EB4DB230, &qword_1ABF6D2A0);
  sub_1ABA7BB64(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  v42 = v33[4];
  sub_1ABA93E20(v33, v33[3]);
  sub_1ABE63A94();
  sub_1ABF252E4();
  v43 = *v31;
  v44 = *(v31 + 8);
  a17 = 0;
  sub_1ABA81CC8();
  sub_1ABF24F24();
  if (!v28)
  {
    v45 = v31[2];
    v46 = v31[3];
    a16 = 1;
    sub_1ABA81CC8();
    sub_1ABF24F34();
    v47 = v31[4];
    v48 = v31[5];
    sub_1ABAA1AE0();
    sub_1ABA81CC8();
    sub_1ABF24F34();
    v49 = v31[6];
    v50 = v31[7];
    a14 = 3;
    sub_1ABA81CC8();
    sub_1ABF24F34();
    v51 = v31[8];
    v52 = v31[9];
    a13 = 4;
    sub_1ABA81CC8();
    sub_1ABF24F34();
    v53 = type metadata accessor for ViewService.SiriRemembersView.Entity(0);
    v54 = *(v53 + 36);
    a12 = 5;
    sub_1ABF21EB4();
    sub_1ABA8FBA4();
    sub_1ABE62B7C(v55, v56);
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v57 = *(v53 + 40);
    a11 = 6;
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v36 + 8))(v41, v34);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE63A94()
{
  result = qword_1ED870448;
  if (!qword_1ED870448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870448);
  }

  return result;
}

void ViewService.SiriRemembersView.Entity.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v44 = v3;
  v4 = sub_1ABF21EB4();
  v5 = sub_1ABA7BB64(v4);
  v46 = v6;
  v47 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  v45 = sub_1ABAD219C(&qword_1EB4DB240, &qword_1ABF6D2A8);
  sub_1ABA7BB64(v45);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  v49 = type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  v21 = sub_1ABA7BBB0(v49);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v26 = (v25 - v24);
  v27 = v2[3];
  v28 = v2[4];
  v48 = v2;
  v29 = sub_1ABA93E20(v2, v27);
  sub_1ABE63A94();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABAA2A68();
    sub_1ABA84B54(v48);
    v32 = v49;
    if (v27)
    {
      v33 = *(v26 + 7);

      if (!v29)
      {
LABEL_5:
        if (!v13)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v29)
    {
      goto LABEL_5;
    }

    v34 = *(v26 + 9);

    if (!v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    (*(v46 + 8))(&v26[*(v32 + 36)], v47);
    goto LABEL_10;
  }

  sub_1ABA8C430();
  v30 = sub_1ABF24E04();
  sub_1ABA96E30(v30, v31);
  sub_1ABA8C430();
  *(v26 + 2) = sub_1ABF24E14();
  *(v26 + 3) = v35;
  sub_1ABAA1AE0();
  sub_1ABA8C430();
  *(v26 + 4) = sub_1ABF24E14();
  *(v26 + 5) = v36;
  sub_1ABA8C430();
  *(v26 + 6) = sub_1ABF24E14();
  *(v26 + 7) = v37;
  sub_1ABA8C430();
  *(v26 + 8) = sub_1ABF24E14();
  *(v26 + 9) = v38;
  sub_1ABA8FBA4();
  v43[1] = sub_1ABE62B7C(v39, v40);
  sub_1ABF24E64();
  v41 = &v26[*(v49 + 36)];
  v42 = v47;
  v43[0] = *(v46 + 32);
  (v43[0])(v41, v13, v47);
  sub_1ABF24E64();
  (*(v15 + 8))(v20, v45);
  (v43[0])(&v26[*(v49 + 40)], v10, v42);
  sub_1ABE63FD4(v26, v44, type metadata accessor for ViewService.SiriRemembersView.Entity);
  sub_1ABA84B54(v48);
  sub_1ABE64030(v26, type metadata accessor for ViewService.SiriRemembersView.Entity);
LABEL_10:
  sub_1ABA7BC90();
}

uint64_t sub_1ABE63FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1ABA7BBB0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1ABA7D000();
  v8(v7);
  return a2;
}

uint64_t sub_1ABE64030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABE640B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE62B7C(&unk_1ED870400, type metadata accessor for ViewService.SiriRemembersView.Entity);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE6418C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1ABF22D14();
  sub_1ABB9009C(v3, a2);
  sub_1ABA7AA24(v3, a2);
  sub_1ABE64BCC();
  return sub_1ABF22D34();
}

uint64_t sub_1ABE64208()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB248, &qword_1ABF6D2B0);
  sub_1ABB9009C(v4, qword_1EB4DB1E0);
  sub_1ABA7AA24(v4, qword_1EB4DB1E0);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  sub_1ABAD219C(&unk_1EB4DB2A0, &unk_1ABF6DE90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ABF34740;
  if (qword_1EB4D0418 != -1)
  {
    swift_once();
  }

  v6 = sub_1ABF22D14();
  v7 = sub_1ABA7AA24(v6, qword_1EB5498E8);
  v8 = MEMORY[0x1E69A0030];
  *(v5 + 56) = v6;
  *(v5 + 64) = v8;
  v9 = sub_1ABA93DC0((v5 + 32));
  (*(*(v6 - 8) + 16))(v9, v7, v6);
  sub_1ABF220C4();
  v10 = sub_1ABF220B4();
  sub_1ABA7B9B4(v3, 0, 1, v10);
  sub_1ABE5F69C();
  sub_1ABE62B7C(&qword_1ED870C68, type metadata accessor for ViewService.SiriRemembersView.Interaction);
  sub_1ABF22204();
  return sub_1ABE659E8(v3);
}

uint64_t static ViewService.SiriRemembersView.InteractionEntity.interaction.getter()
{
  if (qword_1EB4D0428 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB248, &qword_1ABF6D2B0);
  sub_1ABA7AA24(v0, qword_1EB4DB1E0);
  sub_1ABA7EBF4();
  v2 = *(v1 + 16);
  v3 = sub_1ABAA3A84();

  return v4(v3);
}

uint64_t sub_1ABE644CC()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB250, &qword_1ABF6D2B8);
  sub_1ABB9009C(v4, qword_1ED870468);
  sub_1ABA7AA24(v4, qword_1ED870468);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  sub_1ABAD219C(&unk_1EB4DB2A0, &unk_1ABF6DE90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ABF34740;
  if (qword_1ED870450 != -1)
  {
    swift_once();
  }

  v6 = sub_1ABF22D14();
  v7 = sub_1ABA7AA24(v6, qword_1ED87C410);
  v8 = MEMORY[0x1E69A0030];
  *(v5 + 56) = v6;
  *(v5 + 64) = v8;
  v9 = sub_1ABA93DC0((v5 + 32));
  (*(*(v6 - 8) + 16))(v9, v7, v6);
  sub_1ABF220C4();
  v10 = sub_1ABF220B4();
  sub_1ABA7B9B4(v3, 0, 1, v10);
  sub_1ABE5F69C();
  sub_1ABE62B7C(&qword_1ED870C30, type metadata accessor for ViewService.SiriRemembersView.Entity);
  sub_1ABF22204();
  return sub_1ABE659E8(v3);
}

uint64_t static ViewService.SiriRemembersView.InteractionEntity.entity.getter()
{
  if (qword_1ED870460 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB250, &qword_1ABF6D2B8);
  sub_1ABA7AA24(v0, qword_1ED870468);
  sub_1ABA7EBF4();
  v2 = *(v1 + 16);
  v3 = sub_1ABAA3A84();

  return v4(v3);
}

uint64_t ViewService.SiriRemembersView.InteractionEntity.parameter.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.InteractionEntity.init(interactionRowid:entityRowid:parameter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1ABE647D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF860F0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F52797469746E65 && a2 == 0xEB00000000646977;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABE648FC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6F52797469746E65;
  }

  return 0x6574656D61726170;
}

uint64_t sub_1ABE64964(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE649B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE647D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE649E0(uint64_t a1)
{
  v2 = sub_1ABE64BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE64A1C(uint64_t a1)
{
  v2 = sub_1ABE64BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.SiriRemembersView.InteractionEntity.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&unk_1EB4DB258, &qword_1ABF6D2C0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[3];
  v16[2] = v0[2];
  v16[3] = v12;
  v16[1] = v14;
  v15 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE64BCC();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24FA4();
  if (!v1)
  {
    sub_1ABA7BF34();
    sub_1ABF24FA4();
    sub_1ABAA1AE0();
    sub_1ABA81CC8();
    sub_1ABF24F34();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE64BCC()
{
  result = qword_1ED870C50;
  if (!qword_1ED870C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C50);
  }

  return result;
}

void ViewService.SiriRemembersView.InteractionEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_1ABAD219C(&qword_1EB4DB268, &unk_1ABF6D2C8);
  sub_1ABA7BB64(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = v27[4];
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABE64BCC();
  sub_1ABF252C4();
  if (!v23)
  {
    a13 = 0;
    sub_1ABA976A8();
    v39 = sub_1ABF24E84();
    a12 = 1;
    sub_1ABA976A8();
    v40 = sub_1ABF24E84();
    sub_1ABAA1AE0();
    sub_1ABA976A8();
    v41 = sub_1ABF24E14();
    v42 = v37;
    v44 = v43;
    (*(v32 + 8))(v42, v30);
    *v29 = v39;
    v29[1] = v40;
    v29[2] = v41;
    v29[3] = v44;
  }

  sub_1ABA84B54(v27);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE64DB8()
{
  result = qword_1ED870C60;
  if (!qword_1ED870C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C60);
  }

  return result;
}

unint64_t sub_1ABE64E10()
{
  result = qword_1ED870498;
  if (!qword_1ED870498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870498);
  }

  return result;
}

uint64_t sub_1ABE64EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE658EC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1ABE64F44()
{
  sub_1ABE650C0(319, &qword_1ED871880);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BMSiriRemembersInteractionInteractionSource(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for BMSiriRemembersInteractionInteractionDirection(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for BMSiriRemembersInteractionInteractionStatus(319);
        if (v3 <= 0x3F)
        {
          sub_1ABF21EB4();
          if (v4 <= 0x3F)
          {
            sub_1ABE650C0(319, &unk_1ED871B08);
            if (v5 <= 0x3F)
            {
              type metadata accessor for BMDeviceMetadataDevicePlatform(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for BMSiriRemembersInteractionUserDonatorType(319);
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

void sub_1ABE650C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1ABF247E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1ABE65144()
{
  sub_1ABE650C0(319, &qword_1ED871880);
  if (v0 <= 0x3F)
  {
    sub_1ABF21EB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_1ABE6520C(_BYTE *result, int a2, int a3)
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

_BYTE *_s17SiriRemembersViewV17InteractionEntityV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17SiriRemembersViewV6EntityV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s17SiriRemembersViewV11InteractionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17SiriRemembersViewV11InteractionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE655D8()
{
  result = qword_1EB4DB270;
  if (!qword_1EB4DB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB270);
  }

  return result;
}

unint64_t sub_1ABE65630()
{
  result = qword_1EB4DB278;
  if (!qword_1EB4DB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB278);
  }

  return result;
}

unint64_t sub_1ABE65688()
{
  result = qword_1EB4DB280;
  if (!qword_1EB4DB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB280);
  }

  return result;
}

unint64_t sub_1ABE656E0()
{
  result = qword_1ED870C38;
  if (!qword_1ED870C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C38);
  }

  return result;
}

unint64_t sub_1ABE65738()
{
  result = qword_1ED870C40;
  if (!qword_1ED870C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C40);
  }

  return result;
}

unint64_t sub_1ABE65790()
{
  result = qword_1ED870438;
  if (!qword_1ED870438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870438);
  }

  return result;
}

unint64_t sub_1ABE657E8()
{
  result = qword_1ED870440;
  if (!qword_1ED870440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870440);
  }

  return result;
}

unint64_t sub_1ABE65840()
{
  result = qword_1ED871368;
  if (!qword_1ED871368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871368);
  }

  return result;
}

unint64_t sub_1ABE65898()
{
  result = qword_1ED871370;
  if (!qword_1ED871370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871370);
  }

  return result;
}

unint64_t sub_1ABE658EC()
{
  result = qword_1EB4DB288;
  if (!qword_1EB4DB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB288);
  }

  return result;
}

unint64_t sub_1ABE65940()
{
  result = qword_1EB4DB290;
  if (!qword_1EB4DB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB290);
  }

  return result;
}

unint64_t sub_1ABE65994()
{
  result = qword_1ED870C58;
  if (!qword_1ED870C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C58);
  }

  return result;
}

uint64_t sub_1ABE659E8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE65A6C(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = 0;
  v20 = *(result + 16);
  v18 = result + 32;
  for (i = MEMORY[0x1E69E7CC0]; ; result = memcpy((i + 88 * v17 + 32), __dst, 0x58uLL))
  {
LABEL_2:
    if (v3 == v20)
    {

      return i;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    memcpy(__dst, (v18 + 88 * v3++), 0x58uLL);
    v5 = *a2;
    if (*(*a2 + 16))
    {
      v6 = __dst[3];
      v7 = __dst[4];
      v8 = *(v5 + 40);
      sub_1ABF25234();
      sub_1ABB242A4(__dst, v21);

      sub_1ABF23D34();
      v9 = sub_1ABF25294();
      v10 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v5 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v12 = (*(v5 + 48) + 16 * v11);
        if (*v12 != v6 || v12[1] != v7)
        {
          v14 = sub_1ABF25054();
          v9 = v11 + 1;
          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

        result = sub_1ABB24250(__dst);
        goto LABEL_2;
      }
    }

    else
    {
      sub_1ABB242A4(__dst, v21);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(i + 16);
      sub_1ABADDDFC();
      i = v23;
    }

    v17 = *(i + 16);
    if (v17 >= *(i + 24) >> 1)
    {
      sub_1ABADDDFC();
      i = v23;
    }

    *(i + 16) = v17 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE65CEC()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = (*(*v0 + 232))();
  v3 = v2;
  memcpy(v5, (v0 + 16), sizeof(v5));
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = &unk_1F208E968;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD00000000000001DLL;
  *(v0 + 72) = 0x80000001ABF945F0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABA925A4(v5, &qword_1EB4D1B10, &unk_1ABF33FA0);

  return v0;
}

uint64_t sub_1ABE65DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1ABA811C4();
  if (*(a2 + 32))
  {
    v6 = sub_1ABAE305C(115, 0xE100000000000000);
    swift_endAccess();
    if (v6)
    {
      sub_1ABA7F2A0();
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = *(v7 + 16);
        v9 = *(v7 + 24);
        v10 = *(v6 + 24);

        sub_1ABE19D84(v8, v9, &v23);

        if (v24)
        {
          sub_1ABA946C0(&v23, v25);
          v11 = v26;
          v12 = v27;
          sub_1ABA93E20(v25, v26);
          (*(v12 + 32))(a1, v7, v11, v12);

          return sub_1ABA84B54(v25);
        }

        sub_1ABA925A4(&v23, &qword_1EB4D3438, &qword_1ABF3C4C0);
      }

      else
      {
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_1ABA811C4();
  if (!*(a2 + 32))
  {
    result = swift_endAccess();
    goto LABEL_18;
  }

  v14 = sub_1ABAE305C(112, 0xE100000000000000);
  result = swift_endAccess();
  if (v14)
  {
    sub_1ABA811C4();
    if (*(a2 + 32))
    {
      v15 = sub_1ABA8FBBC();
      v17 = sub_1ABAE305C(v15, v16);
      swift_endAccess();
      if (v17)
      {
        sub_1ABA7F2A0();
        v18 = *(v14 + 16);

        v19 = *(v18 + 16);

        if (v19)
        {

LABEL_21:
          v20 = 6;
          goto LABEL_19;
        }

        sub_1ABA7F2A0();
        v21 = *(v17 + 16);

        v22 = *(v21 + 16);

        if (v22)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

LABEL_18:
  v20 = 2;
LABEL_19:
  *a3 = v20;
  return result;
}

uint64_t sub_1ABE66058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABA811C4();
  if (*(a6 + 32))
  {
    v8 = sub_1ABAE305C(115, 0xE100000000000000);
    swift_endAccess();
    if (v8)
    {
      sub_1ABA7F2A0();
      v9 = *(v8 + 16);

      v8 = sub_1ABE8AE5C(v9);
    }
  }

  else
  {
    swift_endAccess();
    v8 = 0;
  }

  sub_1ABA811C4();
  if (!*(a6 + 32))
  {
    swift_endAccess();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = sub_1ABAE305C(112, 0xE100000000000000);
  if (!v10)
  {
    swift_endAccess();
    goto LABEL_14;
  }

  swift_endAccess();
  sub_1ABA7F2A0();
  v11 = *(v10 + 16);

  if (!*(v11 + 16))
  {

    goto LABEL_13;
  }

  v10 = sub_1ABE8AE5C(v11);
LABEL_14:
  sub_1ABA811C4();
  if (!*(a6 + 32) || (v12 = sub_1ABA8FBBC(), (v14 = sub_1ABAE305C(v12, v13)) == 0))
  {
    swift_endAccess();
LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v15 = v14;
  swift_endAccess();
  sub_1ABA7F2A0();
  v16 = *(v15 + 16);

  if (!*(v16 + 16))
  {

    goto LABEL_19;
  }

  v17 = sub_1ABE8AE5C(v16);
LABEL_20:
  sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1ABF3BFC0;
  *(v18 + 32) = v8;
  *(v18 + 40) = v10;
  *(v18 + 48) = v17;
  v19 = sub_1ABE9059C(v18);
  swift_setDeallocating();

  sub_1ABB4DB48();
  if ((v19 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v10;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    result = 1;
    v24 = 32;
    v26 = 88;
    *(a1 + 64) = 0;
    *(a1 + 72) = v17;
    goto LABEL_28;
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1ED86E460);
  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24664();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1ABA78000, v21, v22, "Sort operator must have subject and predicate args", v23, 2u);
    MEMORY[0x1AC5AB8B0](v23, -1, -1);
  }

LABEL_26:
  v24 = 0;
  result = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v26 = 96;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x1FFFFFFFELL;
LABEL_28:
  *(a1 + v26) = 0;
  *(a1 + 104) = v24;
  return result;
}

void sub_1ABE663C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a1;
  v100 = sub_1ABE713BC();
  sub_1ABA8FBBC();
  v93 = a2;
  v101 = sub_1ABE713BC();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(a3 + 16);
  v96 = a3 + 32;
  v97 = v9;
  while (1)
  {
    v98 = v8;
LABEL_3:
    if (v7 == v97)
    {
      break;
    }

    if (v7 >= v97)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v10 = memcpy(__dst, (v96 + 88 * v7), sizeof(__dst));
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_86;
    }

    v12 = *&__dst[48];
    if (*&__dst[56])
    {
      v13 = *&__dst[56];
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    *&v104[0] = v12;
    *(&v104[0] + 1) = v13;
    MEMORY[0x1EEE9AC00](v10);
    v92 = v104;
    sub_1ABB242A4(__dst, v106);

    v14 = sub_1ABB2F764(sub_1ABB342A0, v91, v100);

    if (!v14)
    {
      v99 = v7;
      v15 = 0;
      v16 = *&__dst[80];
      v102 = *(*&__dst[80] + 16);
      for (i = (*&__dst[80] + 32); ; i += 88)
      {
        if (v102 == v15)
        {
          sub_1ABB24250(__dst);
          v8 = v98;
          v7 = v99;
          goto LABEL_3;
        }

        if (v15 >= *(v16 + 16))
        {
          break;
        }

        v18 = memcpy(v106, i, sizeof(v106));
        v19 = v106[6];
        if (v106[7])
        {
          v20 = v106[7];
        }

        else
        {
          v19 = 0;
          v20 = 0xE000000000000000;
        }

        *&v105 = v19;
        *(&v105 + 1) = v20;
        MEMORY[0x1EEE9AC00](v18);
        v92 = &v105;
        sub_1ABB242A4(v106, v104);

        v21 = sub_1ABB2F764(sub_1ABC7A930, v91, v101);
        sub_1ABB24250(v106);

        if (v21)
        {
          v8 = v98;
          v7 = v99;
          goto LABEL_20;
        }

        ++v15;
      }

      __break(1u);
LABEL_49:

      v28 = v15;
      goto LABEL_51;
    }

LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = *(v8 + 16);
      sub_1ABADDDFC();
      v8 = v108;
    }

    v25 = *(v8 + 16);
    v24 = *(v8 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1ABA7BBEC(v24);
      sub_1ABADDDFC();
      v8 = v108;
    }

    *(v8 + 16) = v25 + 1;
    memcpy((v8 + 88 * v25 + 32), __dst, 0x58uLL);
  }

  v96 = v3;
  v26 = 0;
  v27 = *(v8 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v4 = 0.0;
  v29 = 32;
  while (v27 != v26)
  {
    if (v26 >= *(v8 + 16))
    {
      goto LABEL_87;
    }

    memcpy(v106, (v8 + v29), sizeof(v106));
    memcpy(v104, v106, 0x58uLL);
    sub_1ABB242A4(v106, __dst);
    sub_1ABB242A4(v106, __dst);
    sub_1ABE66E54(v100, v101, v4, 0.0);
    v4 = v30;
    sub_1ABB24250(v106);
    memcpy(__dst, v104, sizeof(__dst));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = *(v28 + 16);
      sub_1ABAD8758();
      v28 = v37;
    }

    v31 = v28;
    v32 = *(v28 + 16);
    v33 = v31;
    v34 = *(v31 + 24);
    if (v32 >= v34 >> 1)
    {
      sub_1ABA7BBEC(v34);
      sub_1ABAD8758();
      v33 = v38;
    }

    *(v33 + 16) = v32 + 1;
    v35 = v33 + 88 * v32;
    v28 = v33;
    memcpy((v35 + 32), __dst, 0x58uLL);
    v29 += 88;
    ++v26;
  }

  v39 = *(v100 + 16);

  if (v39)
  {

    goto LABEL_51;
  }

  v40 = *(v101 + 16);

  if (v40)
  {
LABEL_51:
    if (*(v94 + 8))
    {
      v55 = *(v94 + 8);
    }

    else
    {
      type metadata accessor for ResultGraph();
      v55 = swift_allocObject();
      v56 = MEMORY[0x1E69E7CC0];
      *(v55 + 16) = sub_1ABF239C4();
      *(v55 + 24) = v56;
    }

    v57 = *(v28 + 16);
    v102 = v55;
    if (v57)
    {
      *__dst = MEMORY[0x1E69E7CC0];

      sub_1ABADDBD4();
      v58 = *__dst;
      v59 = v28;
      v60 = (v28 + 64);
      v101 = v57;
      v61 = v57;
      do
      {
        v63 = *(v60 - 1);
        v62 = *v60;
        *__dst = v58;
        v65 = *(v58 + 16);
        v64 = *(v58 + 24);

        if (v65 >= v64 >> 1)
        {
          sub_1ABADDBD4();
          v58 = *__dst;
        }

        *(v58 + 16) = v65 + 1;
        v66 = v58 + 16 * v65;
        *(v66 + 32) = v63;
        *(v66 + 40) = v62;
        v60 += 11;
        --v61;
      }

      while (v61);
      v57 = v101;
    }

    else
    {
      v59 = v28;

      v58 = MEMORY[0x1E69E7CC0];
    }

    v101 = sub_1ABE8AE5C(v58);
    v108 = v101;
    if (!v57)
    {
      v70 = v59;
      v71 = MEMORY[0x1E69E7CC0];
LABEL_76:
      v78 = sub_1ABE491D0();
      v79 = v96;
      v80 = sub_1ABE65A6C(v78, &v108);
      v81 = *(v80 + 16);
      if (v81)
      {
        v99 = v79;
        v100 = v70;
        v103 = v71;
        sub_1ABADDDFC();
        v82 = v103;
        v83 = (v80 + 32);
        for (j = v81 - 1; ; --j)
        {
          memcpy(__dst, v83, sizeof(__dst));
          v105 = *v83;
          v104[0] = *(v83 + 24);
          v104[1] = *(v83 + 40);
          v104[2] = *(v83 + 56);
          v104[3] = *(v83 + 72);
          sub_1ABB242A4(__dst, v106);
          v103 = v82;
          v86 = *(v82 + 16);
          v85 = *(v82 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_1ABA7BBEC(v85);
            sub_1ABADDDFC();
            v82 = v103;
          }

          *(v82 + 16) = v86 + 1;
          v87 = v82 + 88 * v86;
          *(v87 + 32) = v105;
          *(v87 + 48) = 0;
          v88 = v104[0];
          v89 = v104[1];
          v90 = v104[2];
          *(v87 + 104) = v104[3];
          *(v87 + 88) = v90;
          *(v87 + 72) = v89;
          *(v87 + 56) = v88;
          if (!j)
          {
            break;
          }

          v83 = (v83 + 88);
        }

        v70 = v100;
      }

      else
      {

        v82 = MEMORY[0x1E69E7CC0];
      }

      sub_1ABE48330();
      __dst[0] = 0;
      sub_1ABE4B554(v70, __dst);
      __dst[0] = 0;
      sub_1ABE4B554(v82, __dst);

      sub_1ABE4933C();
      sub_1ABE491D0();

      return;
    }

    v67 = 0;
    v68 = *(*v95 + 224);
    v69 = 48;
    v70 = v59;
    v71 = MEMORY[0x1E69E7CC0];
    while (v67 < *(v70 + 16))
    {
      v72 = *(v70 + v69);
      v73 = v68();
      v74 = swift_isUniquelyReferenced_nonNull_native();
      if (v73)
      {
        if ((v74 & 1) == 0)
        {
          sub_1ABD8EE84(v70);
          v70 = v76;
        }

        if (v67 >= *(v70 + 16))
        {
          goto LABEL_89;
        }

        v75 = v72 - v4;
      }

      else
      {
        if ((v74 & 1) == 0)
        {
          sub_1ABD8EE84(v70);
          v70 = v77;
        }

        if (v67 >= *(v70 + 16))
        {
          goto LABEL_90;
        }

        v75 = 1.0 / (v72 - v4 + 1.0);
      }

      ++v67;
      *(v70 + v69) = v75;
      v69 += 88;
      if (v57 == v67)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_88;
  }

  v41 = sub_1ABE713BC();
  v42 = *(v41 + 16);
  if (!v42)
  {

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_51;
  }

  *&v105 = MEMORY[0x1E69E7CC0];
  sub_1ABADDDFC();
  v43 = 0;
  v15 = v105;
  v100 = 3481;
  v98 = v41;
  v99 = 4281;
  v97 = v42 - 1;
  v44 = (v41 + 40);
  while (v43 < *(v41 + 16))
  {
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_94;
    }

    if (*(_Records_GDEntityPredicate_records + 1) >= v100)
    {
      goto LABEL_92;
    }

    if (*(_Records_GDEntityPredicate_records + 2) >= v99)
    {
      goto LABEL_93;
    }

    v101 = v15;
    v102 = v43;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_95;
    }

    v46 = *(v44 - 1);
    v45 = *v44;
    v47 = v44;

    v48 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_96;
    }

    v50 = v48;
    v51 = v49;
    sub_1ABF23DD4();

    *&__dst[16] = 0;
    *&__dst[40] = 0;
    *&__dst[80] = MEMORY[0x1E69E7CC0];
    *&v104[0] = v46;
    *(&v104[0] + 1) = v45;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5A9410](126, 0xE100000000000000);
    sub_1ABA7C7F8();
    MEMORY[0x1AC5A9410](v50, v51);

    sub_1ABA7C7F8();
    MEMORY[0x1AC5A9410](126, 0xE100000000000000);

    sub_1ABA7C7F8();
    MEMORY[0x1AC5A9410](v46, v45);

    *__dst = v104[0];
    *&__dst[24] = v46;
    *&__dst[32] = v45;
    *&__dst[48] = v50;
    *&__dst[56] = v51;
    *&__dst[64] = v46;
    *&__dst[72] = v45;

    sub_1ABE66E54(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v4, 0.0);
    v4 = v52;

    memcpy(v106, __dst, sizeof(v106));
    v15 = v101;
    *&v105 = v101;
    v54 = *(v101 + 16);
    v53 = *(v101 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_1ABA7BBEC(v53);
      sub_1ABADDDFC();
      v15 = v105;
    }

    *(v15 + 16) = v54 + 1;
    memcpy((v15 + 88 * v54 + 32), v106, 0x58uLL);
    if (v97 == v102)
    {
      goto LABEL_49;
    }

    v44 = v47 + 2;
    v43 = v102 + 1;
    v41 = v98;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

uint64_t sub_1ABE66E54(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = result;
  v7 = *(result + 16);
  if (*(a2 + 16))
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v9 = *(v4 + 56);
    if (v9)
    {
      v10 = *(v4 + 48);
      v11 = *(v4 + 56);
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    __dst[0] = v10;
    __dst[1] = v11;
    MEMORY[0x1EEE9AC00](v9);
    v29 = __dst;

    v15 = sub_1ABB2F764(sub_1ABC7A930, v28, v5);
    *&result = COERCE_DOUBLE();
    if (v15)
    {
LABEL_10:
      v16 = 0;
      v30 = v4;
      v17 = *(v4 + 80);
      v18 = *(v17 + 16);
      for (i = (v17 + 32); ; i += 88)
      {
        if (v18 == v16)
        {
          v4 = v30;
          goto LABEL_26;
        }

        if (v16 >= *(v17 + 16))
        {
          __break(1u);
          return result;
        }

        v20 = memcpy(__dst, i, 0x58uLL);
        v21 = __dst[6];
        if (__dst[7])
        {
          v22 = __dst[7];
        }

        else
        {
          v21 = 0;
          v22 = 0xE000000000000000;
        }

        v32[0] = v21;
        v32[1] = v22;
        MEMORY[0x1EEE9AC00](v20);
        v29 = v32;
        sub_1ABB242A4(__dst, v31);

        v23 = sub_1ABB2F764(sub_1ABC7A930, v28, a2);

        if (v23)
        {
          break;
        }

        ++v16;
        *&result = COERCE_DOUBLE(sub_1ABB24250(__dst));
      }

      v24 = __dst[8];
      v25 = __dst[9];

      *&result = COERCE_DOUBLE(sub_1ABB24250(__dst));
      v4 = v30;
      if (v25)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_30;
    }

    v12 = *(v4 + 56);
    if (v12)
    {
      v13 = *(v4 + 48);
      v14 = *(v4 + 56);
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    __dst[0] = v13;
    __dst[1] = v14;
    MEMORY[0x1EEE9AC00](v12);
    v29 = __dst;

    v26 = sub_1ABB2F764(sub_1ABC7A930, v28, v5);
    *&result = COERCE_DOUBLE();
    if (v26)
    {
LABEL_30:
      v24 = *(v4 + 64);
      v25 = *(v4 + 72);
      *&result = COERCE_DOUBLE();
      if (v25)
      {
LABEL_24:
        *&result = COERCE_DOUBLE(sub_1ABB24D04(v24, v25));
        if ((v27 & 1) == 0)
        {
          a4 = *&result;
        }
      }
    }
  }

LABEL_26:
  *(v4 + 16) = a4;
  return result;
}

uint64_t SourceConfidenceIdentifier.source.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SourceConfidenceIdentifier.signalType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

IntelligencePlatform::SourceConfidenceIdentifier __swiftcall SourceConfidenceIdentifier.init(_:_:)(Swift::String_optional a1, Swift::String_optional a2)
{
  *v2 = a1;
  v2[1] = a2;
  result.signalType = a2;
  result.source = a1;
  return result;
}

uint64_t SourceConfidenceIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1ABF25234();
  sub_1ABF25254();
  if (v2)
  {
    sub_1ABF23D34();
  }

  sub_1ABF25254();
  if (v4)
  {
    sub_1ABF23D34();
  }

  return sub_1ABF25294();
}

unint64_t sub_1ABE672DC()
{
  result = qword_1ED86B4A8;
  if (!qword_1ED86B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4A8);
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.SourceConfidenceView.confidence(source:signalType:)(Swift::String source, Swift::String signalType)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  swift_getObjectType();
  sub_1ABF22464();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1ABE673EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v67 = a6;
  v70 = a5;
  v69 = a4;
  v68 = a3;
  v65 = a1;
  v62 = a7;
  v78 = sub_1ABF223D4();
  v61 = *(v78 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v75 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1ABF22EE4();
  v64 = *(v74 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  v12 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v60 - v13;
  v63 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  v14 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v16 = (v60 - v15);
  v17 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v60 - v20;
  v22 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v60 - v25;
  v28 = *(a2 + 8);
  v27 = *(a2 + 16);

  sub_1ABF22CE4();
  sub_1ABAD219C(&unk_1EB4DB2C0, &qword_1ABF6DFD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34060;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  v30 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69A0138];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v31;
  *(inited + 48) = v68;
  *(inited + 56) = v69;
  *(inited + 88) = 0x79546C616E676973;
  *(inited + 96) = 0xEA00000000006570;
  *(inited + 128) = v30;
  *(inited + 136) = v31;
  v32 = v67;
  *(inited + 104) = v70;
  *(inited + 112) = v32;

  sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
  sub_1ABF239C4();
  sub_1ABF22C74();

  sub_1ABAAB754();
  v33 = v66;
  v34 = sub_1ABF222A4();
  (*(v18 + 8))(v21, v17);
  if (v33)
  {
    return (*(v23 + 8))(v26, v22);
  }

  v36 = v63;
  v60[1] = 0;
  v37 = v64;
  v38 = v68;
  v39 = v69;
  v40 = v70;
  v65 = v26;
  v66 = v23;
  if (!v34)
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000002ELL, 0x80000001ABF94650);
    MEMORY[0x1AC5A9410](v38, v39);
    MEMORY[0x1AC5A9410](0x6C616E676973202CLL, 0xEE00203A65707954);
    MEMORY[0x1AC5A9410](v40, v67);
    v57 = v76;
    v58 = v77;
    sub_1ABB93C20();
    swift_allocError();
    *v59 = v57;
    *(v59 + 8) = v58;
    *(v59 + 16) = 1;
    swift_willThrow();
    v23 = v66;
    v26 = v65;
    return (*(v23 + 8))(v26, v22);
  }

  v67 = v22;
  v76 = v34;
  *v16 = v34;
  v41 = *(v36 + 36);
  sub_1ABF22BB4();
  sub_1ABAAB818(&qword_1EB4D0208, MEMORY[0x1E69A0008]);
  sub_1ABF24474();
  v69 = 0;
  v42 = (v37 + 8);
  v70 = (v61 + 32);
  v43 = (v61 + 8);
  LODWORD(v68) = 1;
  while (1)
  {
    v44 = v73;
    sub_1ABF244A4();
    sub_1ABAAB818(&qword_1EB4D0200, MEMORY[0x1E69A00E0]);
    v45 = v74;
    v46 = sub_1ABF23BB4();
    (*v42)(v44, v45);
    if (v46)
    {
      break;
    }

    v47 = sub_1ABF245D4();
    v48 = v71;
    sub_1ABAAB860(v49, v71);
    v47(&v76, 0);
    sub_1ABF244B4();
    v51 = *v48;
    v50 = *(v48 + 1);
    (*v70)(v75, &v48[*(v72 + 48)], v78);
    if (v51 == 0x6E656469666E6F63 && v50 == 0xEA00000000006563)
    {

LABEL_14:
      v54 = v75;
      v69 = sub_1ABF24334();
      LODWORD(v68) = v55;
      (*v43)(v54, v78);
    }

    else
    {
      v53 = sub_1ABF25054();

      if (v53)
      {
        goto LABEL_14;
      }

      (*v43)(v75, v78);
    }
  }

  sub_1ABA925A4(v16, &unk_1EB4D5810, &qword_1ABF48B70);
  result = (*(v66 + 8))(v65, v67);
  v56 = 0x3FE999999999999ALL;
  if ((v68 & 1) == 0)
  {
    v56 = v69;
  }

  *v62 = v56;
  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.SourceConfidenceView.confidence(source:)(Swift::String source)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  swift_getObjectType();
  sub_1ABF22464();
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1ABE67D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, char *, uint64_t)@<X2>, unint64_t a4@<X3>, double *a5@<X8>)
{
  v77 = a3;
  v74 = a1;
  v64 = a5;
  v81 = sub_1ABF223D4();
  v65 = *(v81 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1ABF22EE4();
  v66 = *(v75 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v13 = &v60 - v12;
  v72 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  v14 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v16 = (&v60 - v15);
  v17 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v73 = *(v17 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - v19;
  v21 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v60 - v24;
  v27 = *(a2 + 8);
  v26 = *(a2 + 16);

  sub_1ABF22CE4();
  v83[3] = sub_1ABF22D14();
  v83[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v83);
  sub_1ABF22D24();
  v82[3] = MEMORY[0x1E69E6158];
  v82[4] = MEMORY[0x1E69A0130];
  v82[0] = v77;
  v82[1] = a4;
  v86 = sub_1ABF22424();
  v87 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v84);
  v70 = a4;

  sub_1ABF22AD4();
  sub_1ABA925A4(v82, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v83);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v84);
  sub_1ABAAB754();
  v28 = v76;
  v29 = sub_1ABF22294();
  (*(v73 + 8))(v20, v17);
  v67 = v28;
  if (v28)
  {
    return (*(v22 + 8))(v25, v21);
  }

  v31 = v66;
  v61 = v25;
  v62 = v22;
  v63 = v21;
  v71 = sub_1ABAAB7C8(v29);
  if (!v71)
  {

    v84 = 0;
    v85 = 0xE000000000000000;
    sub_1ABF24AB4();

    v84 = 0xD00000000000002ELL;
    v85 = 0x80000001ABF94650;
    MEMORY[0x1AC5A9410](v77, v70);
    v56 = v84;
    v57 = v85;
    sub_1ABB93C20();
    v58 = swift_allocError();
    *v59 = v56;
    *(v59 + 8) = v57;
    *(v59 + 16) = 1;
    v67 = v58;
    swift_willThrow();
    v21 = v63;
    v22 = v62;
    v25 = v61;
    return (*(v22 + 8))(v25, v21);
  }

  v73 = 0;
  v32 = 0;
  v70 = v29 & 0xC000000000000001;
  v68 = v29 + 32;
  v33 = (v31 + 8);
  v76 = (v65 + 8);
  v77 = (v65 + 32);
  v34 = 0.0;
  v35 = v75;
  v69 = v29;
LABEL_5:
  v36 = v70;
  sub_1ABAAB7C0(v32, v70 == 0, v29);
  if (v36)
  {
    result = MEMORY[0x1AC5AA170](v32, v29);
  }

  else
  {
    v37 = *(v68 + 8 * v32);
  }

  v38 = v72;
  v39 = __OFADD__(v32, 1);
  v40 = v32 + 1;
  if (!v39)
  {
    v74 = v40;
    v84 = result;
    *v16 = result;
    v41 = *(v38 + 36);
    sub_1ABF22BB4();
    sub_1ABAAB818(&qword_1EB4D0208, MEMORY[0x1E69A0008]);
    sub_1ABF24474();
    while (1)
    {
      while (1)
      {
        v42 = v79;
        sub_1ABF244A4();
        sub_1ABAAB818(&qword_1EB4D0200, MEMORY[0x1E69A00E0]);
        v43 = sub_1ABF23BB4();
        (*v33)(v42, v35);
        if (v43)
        {
          sub_1ABA925A4(v16, &unk_1EB4D5810, &qword_1ABF48B70);
          v32 = v74;
          v29 = v69;
          if (v74 == v71)
          {

            result = (*(v62 + 8))(v61, v63);
            if (v34 == 0.0)
            {
              v55 = 0.8;
            }

            else
            {
              v55 = v34 / v73;
            }

            *v64 = v55;
            return result;
          }

          goto LABEL_5;
        }

        v44 = sub_1ABF245D4();
        sub_1ABAAB860(v45, v13);
        v44(&v84, 0);
        sub_1ABF244B4();
        v47 = *v13;
        v46 = *(v13 + 1);
        (*v77)(v80, &v13[*(v78 + 48)], v81);
        if (v47 != 0x6E656469666E6F63 || v46 != 0xEA00000000006563)
        {
          break;
        }

LABEL_18:
        v50 = v80;
        v51 = COERCE_DOUBLE(sub_1ABF24334());
        v53 = v52;
        v54 = v50;
        v35 = v75;
        result = (*v76)(v54, v81);
        if ((v53 & 1) == 0)
        {
          v34 = v34 + v51;
          v39 = __OFADD__(v73++, 1);
          if (v39)
          {
            goto LABEL_29;
          }
        }
      }

      v49 = sub_1ABF25054();

      if (v49)
      {
        goto LABEL_18;
      }

      (*v76)(v80, v81);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1ABE68678(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1ABADEDBC();
    v6 = v39;
    v9 = sub_1ABBD2A34(v5);
    v10 = 0;
    v34 = v5 + 56;
    v29 = v5 + 64;
    v30 = v4;
    v31 = v5;
    v32 = v3;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v5 + 32))
      {
        v11 = v9 >> 6;
        if ((*(v34 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v5 + 36) != v7)
        {
          goto LABEL_28;
        }

        v12 = v8;
        v13 = v7;
        v33 = v10;
        v36 = *(*(v5 + 48) + 8 * v9);
        sub_1ABE6D684(&v36, v3, &v35, &v37);
        if (v2)
        {

          sub_1ABE5784C(v3);
          return;
        }

        v15 = v37;
        v14 = v38;
        v39 = v6;
        v16 = *(v6 + 16);
        if (v16 >= *(v6 + 24) >> 1)
        {
          v28 = v38;
          sub_1ABADEDBC();
          v14 = v28;
          v6 = v39;
        }

        *(v6 + 16) = v16 + 1;
        v17 = v6 + 16 * v16;
        *(v17 + 32) = v15;
        *(v17 + 40) = v14;
        if (v12)
        {
          goto LABEL_32;
        }

        v5 = v31;
        v3 = v32;
        v18 = 1 << *(v31 + 32);
        if (v9 >= v18)
        {
          goto LABEL_29;
        }

        v19 = *(v34 + 8 * v11);
        if ((v19 & (1 << v9)) == 0)
        {
          goto LABEL_30;
        }

        v20 = v13;
        if (*(v31 + 36) != v13)
        {
          goto LABEL_31;
        }

        v21 = v19 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v22 = v30;
        }

        else
        {
          v23 = v11 << 6;
          v24 = v11 + 1;
          v22 = v30;
          v25 = (v29 + 8 * v11);
          while (v24 < (v18 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1ABAC933C(v9, v20, 0);
              v18 = __clz(__rbit64(v26)) + v23;
              goto LABEL_20;
            }
          }

          sub_1ABAC933C(v9, v20, 0);
        }

LABEL_20:
        v10 = v33 + 1;
        if (v33 + 1 == v22)
        {
          sub_1ABE5784C(v32);
          return;
        }

        v8 = 0;
        v7 = *(v31 + 36);
        v9 = v18;
        v2 = 0;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    sub_1ABE5784C(a2);
  }
}

uint64_t sub_1ABE68928(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1ABADED7C();
  v4 = v35;
  v8 = sub_1ABAB0E08(v5);
  v9 = 0;
  v10 = v5 + 64;
  v27 = v6;
  v28 = v3;
  v26 = v5 + 72;
  v29 = v5 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (*(v5 + 36) != v6)
    {
      goto LABEL_24;
    }

    v30 = v7;
    v31 = v9;
    v12 = v5;
    v13 = *(*(v5 + 48) + 8 * v8);
    v33 = v6;
    v34 = *(*(v5 + 56) + 8 * v8);
    swift_bridgeObjectRetain_n();
    sub_1ABE68BA4(&v34);
    v32 = v2;
    if (v2)
    {
      goto LABEL_28;
    }

    v14 = v34;
    v35 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_1ABADED7C();
      v4 = v35;
    }

    *(v4 + 16) = v15 + 1;
    v16 = v4 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v14;
    v17 = 1 << *(v12 + 32);
    if (v8 >= v17)
    {
      goto LABEL_25;
    }

    v5 = v12;
    v10 = v29;
    v18 = *(v29 + 8 * v11);
    if ((v18 & (1 << v8)) == 0)
    {
      goto LABEL_26;
    }

    if (*(v5 + 36) != v33)
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v8 & 0x3F));
    if (v19)
    {
      v17 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (v26 + 8 * v11);
      while (v21 < (v17 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1ABAC933C(v8, v33, v30 & 1);
          v17 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      sub_1ABAC933C(v8, v33, v30 & 1);
    }

LABEL_20:
    v2 = 0;
    v7 = 0;
    v9 = v31 + 1;
    v8 = v17;
    v6 = v27;
    if (v31 + 1 == v28)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
  return result;
}

char *sub_1ABE68BA4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A344(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE6DDAC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABE68C10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = result;
  v6 = (a3 + 40);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;

    if (!v9)
    {
      break;
    }

    v12[2] = v9;
    v12[0] = v8;
    v10 = MEMORY[0x1EEE9AC00](result);
    v11 = v5(v12, sub_1ABE57A7C, v10);

    if (v4)
    {
      break;
    }

    v6 += 2;
  }

  while ((v11 & 1) != 0);
  return result;
}

uint64_t sub_1ABE68D00(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CD0];
  v3 = *(v2 + 16);
  v7[2] = &v8;
  v7[3] = &v9;
  v7[4] = a1;
  v7[5] = a2;

  v5 = sub_1ABE68928(v4);

  sub_1ABE68C10(sub_1ABE6F244, v7, v5);
}

uint64_t sub_1ABE68DA8()
{
  v6 = MEMORY[0x1E69E7CD0];
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v8 = *(v0 + 48);
  swift_getObjectType();
  sub_1ABE577F0(v7, v4);
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABF22464();
  if (!v1)
  {
    sub_1ABE6B50C(v5, v7, sub_1ABE6F194);
  }

  sub_1ABE5784C(v7);
}

void sub_1ABE68EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v62 = v23;
  v63 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v61 = v31;
  v33 = v32;
  v34 = sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1ABA7AC18();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v60 - v40;
  v42 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  sub_1ABA7BBB0(v42);
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v60 - v46;
  v55 = sub_1ABC4A938(v33, v48, v49, v50, v51, v52, v53, v54);
  if (v20)
  {
  }

  else
  {
    v60 = v26;
    v56 = a10;
    a10 = v30;
    MEMORY[0x1EEE9AC00](v55);
    sub_1ABA9A74C();
    v57 = v62;
    *(v58 - 32) = v61;
    *(v58 - 24) = v57;
    *(v58 - 16) = &a10;
    sub_1ABE5604C(v63, v59, 0);
    if (sub_1ABA7E1E0(v41, 1, v42) == 1)
    {
      sub_1ABAB480C(v41, &unk_1EB4DB3D0, &qword_1ABF6E370);
    }

    else
    {
      sub_1ABE6EFEC(v41, v47);
      a10 = v56;
      sub_1ABB3E5B4(v47, v38, &qword_1EB4DB110, &unk_1ABF6CBD8);
      sub_1ABA7B9B4(v38, 0, 1, v42);
      v28(&a10, v38);
      sub_1ABAB480C(v38, &unk_1EB4DB3D0, &qword_1ABF6E370);
      sub_1ABAB480C(v47, &qword_1EB4DB110, &unk_1ABF6CBD8);
    }
  }

  sub_1ABA7BC90();
}

void sub_1ABE691D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34(0);
  sub_1ABA7BBB0(v35);
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &a9 - v40;
  v42 = v27(v39);
  v25(v42, v31, v29);
  if (!v20)
  {
    sub_1ABE6F2B0(v41, v33, a10);
    sub_1ABA7B9B4(v33, 0, 1, v35);
  }

  sub_1ABA7BC90();
}

uint64_t ViewService.sportsSchedulesView.getter@<X0>(void *a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA7E03C();
  v5 = sub_1ABF23BD4();
  v17[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    result = v11(v6, v9, v10);
    if (v2)
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      a1[3] = result;
      a1[4] = v14;
      *a1 = v6;
      a1[1] = 0x6870617267;
      a1[2] = 0xE500000000000000;
    }
  }

  else
  {
    v15 = v17[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void ViewService.SportsSchedulesView.enumerateGames(in:block:)()
{
  sub_1ABA81AB4();
  v91 = v2;
  v92 = v3;
  v5 = v4;
  v6 = sub_1ABF220F4();
  v7 = sub_1ABA7BB64(v6);
  v95 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v94 = v12 - v11;
  v13 = sub_1ABF22384();
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v97 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v90 - v25;
  v26 = *(v0 + 16);
  v105[0] = *v0;
  v105[1] = v26;
  v106 = *(v0 + 32);
  sub_1ABF21E14();
  v28 = v27;
  v29 = v5 + *(sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0) + 36);
  sub_1ABF21E14();
  if (v28 > v30)
  {
    __break(1u);
  }

  else
  {
    v93 = v6;
    v99 = v23;
    v100 = v16;
    LOBYTE(v104[0]) = 0;
    sub_1ABEA5B7C(v108, v28, v30);
    memcpy(v107, v108, sizeof(v107));
    if (qword_1ED870750 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1ABA7D72C();
LABEL_3:
  v31 = sub_1ABF237F4();
  v32 = sub_1ABA7AA24(v31, qword_1ED870758);
  sub_1ABE10DCC(v108, v104);
  v96 = v32;
  v33 = sub_1ABF237D4();
  v34 = sub_1ABF24654();
  sub_1ABE10E28(v108);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = sub_1ABA8E2E8();
    v36 = swift_slowAlloc();
    *v35 = 136315138;
    v101 = 0;
    v102 = 0xE000000000000000;
    v103 = v36;
    sub_1ABE10DCC(v108, v104);
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF931A0);
    memcpy(v104, v108, 0x69uLL);
    sub_1ABF24C54();
    MEMORY[0x1AC5A9410](62, 0xE100000000000000);
    sub_1ABE10E28(v108);
    v37 = v13;
    v38 = sub_1ABADD6D8(v101, v102, &v103);

    *(v35 + 4) = v38;
    v13 = v37;
    _os_log_impl(&dword_1ABA78000, v33, v34, "SportsSchedulesView: enumerateGames query: %s", v35, 0xCu);
    sub_1ABA84B54(v36);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABAA46F8(&v90);
  *(v40 - 16) = v107;
  sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
  sub_1ABF22464();
  v41 = v99;
  if (v1)
  {
    sub_1ABE10E28(v108);
    v42 = v100;
    v52 = v98;
    v104[0] = v1;
    v53 = v1;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v54 = swift_dynamicCast();
    v55 = v97;
    if (v54)
    {

      (*(v42 + 32))(v41, v52, v13);
      v56 = v41;
      v91 = *(v42 + 16);
      v92 = v42 + 16;
      v91(v55, v41, v13);
      v57 = sub_1ABF237D4();
      v58 = sub_1ABF24664();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = sub_1ABA8E2E8();
        v96 = 0;
        v60 = v59;
        v61 = swift_slowAlloc();
        v101 = v61;
        *v60 = 136315138;
        sub_1ABA90430(&qword_1EB4DB318);
        v62 = sub_1ABF24FF4();
        v63 = v13;
        v65 = v64;
        v98 = *(v100 + 8);
        (v98)(v55, v63);
        v66 = sub_1ABADD6D8(v62, v65, &v101);
        v13 = v63;

        *(v60 + 4) = v66;
        _os_log_impl(&dword_1ABA78000, v57, v58, "SportsSchedulesView: enumerateGames database error: %s", v60, 0xCu);
        sub_1ABA84B54(v61);
        v67 = v99;
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {

        v98 = *(v42 + 8);
        (v98)(v55, v13);
        v67 = v56;
      }

      v68 = type metadata accessor for ViewService();
      v69 = static ViewService.clientService.getter(v68);
      v70 = v94;
      sub_1ABF22374();
      sub_1ABF220E4();
      (*(v95 + 8))(v70, v93);
      v71._countAndFlagsBits = sub_1ABA7E03C();
      ViewService.reportSQLiteError(for:sqliteErrorCode:)(v71, v72);
      if (v73)
      {
        v74 = sub_1ABAA3E1C();
        v75(v74);
      }

      else
      {

        sub_1ABA8ED8C(&qword_1EB4DB310);
        swift_allocError();
        v91(v76, v67, v13);
        swift_willThrow();
        v77 = sub_1ABAA3E1C();
        v78(v77);
      }
    }
  }

  else
  {
    sub_1ABE10E28(v108);
    v43 = v104[0];
    v44 = *(v104[0] + 2);
    if (v44)
    {
      v90 = v13;
      v104[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADDFFC(0, v44, 0);
      v45 = v104[0];
      v46 = *(v104[0] + 2);
      v47 = 32;
      do
      {
        v48 = *&v43[v47];
        v104[0] = v45;
        v49 = v45[3];
        if (v46 >= v49 >> 1)
        {
          sub_1ABADDFFC((v49 > 1), v46 + 1, 1);
          v45 = v104[0];
        }

        v45[2] = v46 + 1;
        v45[v46 + 4] = v48;
        v47 += 120;
        ++v46;
        --v44;
      }

      while (v44);
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    v50 = sub_1ABE8AC38(v45);
    sub_1ABE577F0(v105, v104);
    sub_1ABE68678(v50, v105);
    v79 = v51;

    v80 = sub_1ABBFA988(v79);

    v81 = sub_1ABF237D4();
    v82 = sub_1ABF24654();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = sub_1ABA8E2E8();
      *v83 = 134217984;
      *(v83 + 4) = *(v80 + 16);

      _os_log_impl(&dword_1ABA78000, v81, v82, "SportsSchedulesView: triplesDict: %ld keys", v83, 0xCu);
      sub_1ABA7BC34();
    }

    else
    {
    }

    v84 = v92;
    sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
    swift_initStackObject();
    sub_1ABE577F0(v105, v104);
    v85 = sub_1ABAE687C(v105);
    sub_1ABAD219C(&qword_1EB4DB328, &qword_1ABF6E000);
    swift_initStackObject();
    v86 = sub_1ABAE6998(v80);
    MEMORY[0x1EEE9AC00](v86);
    sub_1ABA9A74C();
    v87 = v91;
    *(v88 - 32) = v85;
    *(v88 - 24) = v87;
    *(v88 - 16) = v84;
    sub_1ABE68D00(sub_1ABE6E80C, v89);
  }

  sub_1ABA8CD68();
}

{
  sub_1ABA81AB4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v8;
  v36 = *(v0 + 32);
  sub_1ABF21E14();
  v10 = v9;
  v11 = v7 + *(sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0) + 36);
  sub_1ABF21E14();
  if (v10 > v12)
  {
    __break(1u);
  }

  else
  {
    v33 = v5;
    LOBYTE(v34[0]) = 0;
    sub_1ABEA5B7C(v38, v10, v12);
    memcpy(v37, v38, sizeof(v37));
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    sub_1ABAA46F8(&v31);
    *(v14 - 16) = v37;
    sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
    sub_1ABF22464();
    sub_1ABE10E28(v38);
    if (!v1)
    {
      v15 = v34[0];
      v16 = *(v34[0] + 16);
      if (v16)
      {
        v32 = v3;
        v34[0] = MEMORY[0x1E69E7CC0];
        sub_1ABADDFFC(0, v16, 0);
        v17 = v34[0];
        v18 = *(v34[0] + 16);
        v19 = 32;
        do
        {
          v20 = *(v15 + v19);
          v34[0] = v17;
          v21 = *(v17 + 24);
          if (v18 >= v21 >> 1)
          {
            sub_1ABADDFFC((v21 > 1), v18 + 1, 1);
            v17 = v34[0];
          }

          *(v17 + 16) = v18 + 1;
          *(v17 + 8 * v18 + 32) = v20;
          v19 += 120;
          ++v18;
          --v16;
        }

        while (v16);

        v3 = v32;
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
      }

      v22 = sub_1ABE8AC38(v17);
      sub_1ABE577F0(v35, v34);
      sub_1ABE68678(v22, v35);
      v24 = v23;

      v25 = sub_1ABBFA988(v24);
      sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
      swift_initStackObject();
      sub_1ABE577F0(v35, v34);
      v26 = sub_1ABAE687C(v35);
      sub_1ABAD219C(&qword_1EB4DB328, &qword_1ABF6E000);
      swift_initStackObject();
      v27 = sub_1ABAE6998(v25);
      MEMORY[0x1EEE9AC00](v27);
      sub_1ABA9A74C();
      v28 = v33;
      *(v29 - 32) = v26;
      *(v29 - 24) = v28;
      *(v29 - 16) = v3;
      sub_1ABE68D00(sub_1ABE6E944, v30);
    }

    sub_1ABA8CD68();
  }
}

uint64_t sub_1ABE69D8C(void *__src, __int128 *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v10 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 24);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
  result = sub_1ABF22464();
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1ABE69E74(_BYTE **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v64 = a5;
  v65 = a4;
  v69 = a3;
  v9 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v61 - v15;
  v70 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  v16 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v61 - v20;
  v21 = *a1;
  if (qword_1ED870750 != -1)
  {
LABEL_32:
    swift_once();
  }

  v22 = sub_1ABF237F4();
  v66 = sub_1ABA7AA24(v22, qword_1ED870758);
  v23 = sub_1ABF237D4();
  v24 = sub_1ABF24654();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v63 = v9;
    v26 = v25;
    v27 = swift_slowAlloc();
    v74 = v6;
    v62 = v27;
    *&__src[0] = v27;
    *v26 = 136315138;
    v72[0] = v21;
    sub_1ABAD219C(&qword_1EB4D6790, &unk_1ABF6E390);
    v28 = sub_1ABF23C74();
    v30 = v18;
    v31 = a2;
    v32 = sub_1ABADD6D8(v28, v29, __src);

    *(v26 + 4) = v32;
    a2 = v31;
    v18 = v30;
    _os_log_impl(&dword_1ABA78000, v23, v24, "SportsSchedulesView: enumerateGraphObjects: %s", v26, 0xCu);
    v33 = v62;
    sub_1ABA84B54(v62);
    v6 = v74;
    MEMORY[0x1AC5AB8B0](v33, -1, -1);
    v34 = v26;
    v9 = v63;
    MEMORY[0x1AC5AB8B0](v34, -1, -1);
  }

  v35 = v67;
  v36 = v68;
  sub_1ABB3E5B4(a2, v68, &unk_1EB4DB3D0, &qword_1ABF6E370);
  if (sub_1ABA7E1E0(v36, 1, v70) == 1)
  {
    sub_1ABAB480C(v36, &unk_1EB4DB3D0, &qword_1ABF6E370);
    LOBYTE(v35) = 1;
  }

  else
  {
    sub_1ABE6EFEC(v36, v35);
    sub_1ABB3E5B4(v35, v18, &qword_1EB4DB110, &unk_1ABF6CBD8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&__src[0] = *v18;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
      sub_1ABAB480C(v35, &qword_1EB4DB110, &unk_1ABF6CBD8);
    }

    else
    {
      v74 = v6;
      sub_1ABE6F2B0(v18, v12, type metadata accessor for CustomGraphSportsGameEvent);
      v37 = 0;
      v38 = *(v9 + 48);
      v62 = v12;
      v39 = *(v12 + v38);
      v18 = *(v39 + 16);
      v40 = v39 + 88;
      v63 = MEMORY[0x1E69E7CC0];
      v12 = &unk_1EB4DB3E0;
      v6 = &unk_1ABF50320;
      v61 = v39 + 88;
      v68 = v39;
LABEL_9:
      v21 = (v40 + (v37 << 6));
      while (v18 != v37)
      {
        if (v37 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (*v21)
        {
          memset(__src, 0, 88);
        }

        else
        {
          v70 = v37;
          v41 = v12;
          v42 = v18;
          v43 = *(v21 - 5);
          v9 = *(v21 - 3);
          a2 = *(v21 - 2);
          v44 = *(v21 - 1);

          v45 = v44;
          LOBYTE(v35) = v69;
          v46 = v74;
          sub_1ABE54BFC(v45, __src);
          v74 = v46;
          if (v46)
          {
            sub_1ABAB480C(v67, &qword_1EB4DB110, &unk_1ABF6CBD8);

            sub_1ABE6F05C(v62);

            return v35 & 1;
          }

          if (*(&__src[0] + 1))
          {
            memcpy(v72, __src, sizeof(v72));
            v18 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = *(v63 + 16);
              sub_1ABADCB80();
              v63 = v51;
            }

            v12 = v41;
            v47 = *(v63 + 16);
            v48 = v70;
            if (v47 >= *(v63 + 24) >> 1)
            {
              sub_1ABADCB80();
              v63 = v52;
            }

            v37 = v48 + 1;
            memcpy(v71, v72, sizeof(v71));
            v49 = v63;
            *(v63 + 16) = v47 + 1;
            memcpy((v49 + 88 * v47 + 32), v71, 0x58uLL);
            v39 = v68;
            v40 = v61;
            goto LABEL_9;
          }

          v18 = v42;
          v39 = v68;
          v12 = v41;
          v37 = v70;
        }

        memcpy(v72, __src, sizeof(v72));
        sub_1ABAB480C(v72, v12, &unk_1ABF50320);
        v21 += 64;
        ++v37;
      }

      v53 = v63;

      v54 = sub_1ABF237D4();
      v55 = sub_1ABF24654();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = *(v53 + 16);

        _os_log_impl(&dword_1ABA78000, v54, v55, "SportsSchedulesView: teams: %ld", v56, 0xCu);
        MEMORY[0x1AC5AB8B0](v56, -1, -1);
      }

      else
      {
      }

      v57 = v74;
      LOBYTE(v35) = v64;
      v58 = v62;
      v59 = v65(v62, v53);
      if (!v57)
      {
        LOBYTE(v35) = v59;
      }

      sub_1ABAB480C(v67, &qword_1EB4DB110, &unk_1ABF6CBD8);

      sub_1ABE6F05C(v58);
    }
  }

  return v35 & 1;
}

void ViewService.SportsSchedulesView.enumerateAllGames(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v76 = sub_1ABF220F4();
  v28 = sub_1ABA7BB64(v76);
  v75 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  v35 = sub_1ABF22384();
  v36 = sub_1ABA7BB64(v35);
  v77 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7AC18();
  v42 = (v40 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v73 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v73 - v47;
  v49 = *(v20 + 16);
  v82[0] = *v20;
  v82[1] = v49;
  v83 = *(v20 + 32);
  sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
  swift_initStackObject();
  sub_1ABE577F0(v82, &v81);
  v78 = sub_1ABAE687C(v82);
  v79 = v27;
  v80 = v25;
  sub_1ABE68DA8();
  if (v21)
  {

    v81 = v21;
    v50 = v21;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    if (swift_dynamicCast())
    {

      v51 = v77;
      (*(v77 + 32))(v45, v48, v35);
      if (qword_1ED870750 != -1)
      {
        sub_1ABA7D72C();
      }

      v52 = sub_1ABF237F4();
      sub_1ABA7AA24(v52, qword_1ED870758);
      v53 = (v51 + 16);
      v74 = *(v51 + 16);
      v74(v42, v45, v35);
      v54 = sub_1ABF237D4();
      v55 = sub_1ABF24664();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = sub_1ABA8E2E8();
        v73[0] = swift_slowAlloc();
        a10 = v73[0];
        *v56 = 136315138;
        sub_1ABA90430(&qword_1EB4DB318);
        v57 = sub_1ABF24FF4();
        v73[1] = v53;
        v59 = v58;
        v60 = sub_1ABAA3A90(v77);
        v61(v60);
        v62 = sub_1ABADD6D8(v57, v59, &a10);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_1ABA78000, v54, v55, "SportsSchedulesView: enumerateAllGames database error: %s", v56, 0xCu);
        sub_1ABA84B54(v73[0]);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {

        v63 = sub_1ABAA3A90(v51);
        v64(v63);
      }

      v65 = type metadata accessor for ViewService();
      v66 = static ViewService.clientService.getter(v65);
      sub_1ABF22374();
      sub_1ABF220E4();
      (*(v75 + 8))(v34, v76);
      v67._countAndFlagsBits = sub_1ABA7E03C();
      ViewService.reportSQLiteError(for:sqliteErrorCode:)(v67, v68);
      if (v69)
      {
        v70 = sub_1ABA97E08();
        v42(v70);
      }

      else
      {

        sub_1ABA8ED8C(&qword_1EB4DB310);
        swift_allocError();
        v74(v71, v45, v35);
        swift_willThrow();
        v72 = sub_1ABA97E08();
        v42(v72);
      }
    }
  }

  else
  {
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE6AA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v44 = a5;
  v45 = a4;
  v48 = a3;
  v46 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  sub_1ABB3E5B4(a2, v12, &unk_1EB4DB3D0, &qword_1ABF6E370);
  if (sub_1ABA7E1E0(v12, 1, v13) == 1)
  {
    sub_1ABAB480C(v12, &unk_1EB4DB3D0, &qword_1ABF6E370);
    LOBYTE(v19) = 1;
  }

  else
  {
    sub_1ABE6EFEC(v12, v19);
    sub_1ABB3E5B4(v19, v16, &qword_1EB4DB110, &unk_1ABF6CBD8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&__src[0] = *v16;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
      sub_1ABAB480C(v19, &qword_1EB4DB110, &unk_1ABF6CBD8);
    }

    else
    {
      v52 = v5;
      v43 = v19;
      v20 = v47;
      result = sub_1ABE6F2B0(v16, v47, type metadata accessor for CustomGraphSportsGameEvent);
      v22 = 0;
      v23 = *(v20 + *(v46 + 48));
      v24 = *(v23 + 16);
      v25 = v23 + 88;
      v46 = MEMORY[0x1E69E7CC0];
      v42 = v23 + 88;
LABEL_6:
      v26 = (v25 + (v22 << 6));
      while (v24 != v22)
      {
        if (v22 >= *(v23 + 16))
        {
          __break(1u);
          return result;
        }

        if (*v26)
        {
          memset(__src, 0, 88);
        }

        else
        {
          v27 = *(v26 - 5);
          v28 = *(v26 - 3);
          v29 = *(v26 - 2);
          v30 = *(v26 - 1);

          v31 = v30;
          LOBYTE(v19) = v48;
          v32 = v52;
          sub_1ABE54BFC(v31, __src);
          v52 = v32;
          if (v32)
          {
            sub_1ABAB480C(v43, &qword_1EB4DB110, &unk_1ABF6CBD8);

            sub_1ABE6F05C(v47);

            return v19 & 1;
          }

          if (*(&__src[0] + 1))
          {
            memcpy(v50, __src, sizeof(v50));
            v33 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = *(v33 + 16);
              sub_1ABADCB80();
              v33 = v36;
            }

            v34 = *(v33 + 16);
            if (v34 >= *(v33 + 24) >> 1)
            {
              sub_1ABADCB80();
              v33 = v37;
            }

            ++v22;
            memcpy(v49, v50, sizeof(v49));
            *(v33 + 16) = v34 + 1;
            v46 = v33;
            result = memcpy((v33 + 88 * v34 + 32), v49, 0x58uLL);
            v25 = v42;
            goto LABEL_6;
          }
        }

        memcpy(v50, __src, sizeof(v50));
        result = sub_1ABAB480C(v50, &unk_1EB4DB3E0, &unk_1ABF50320);
        v26 += 64;
        ++v22;
      }

      v38 = v47;
      LOBYTE(v19) = v44;
      v39 = v52;
      v40 = v45(v47, v46);
      if (!v39)
      {
        LOBYTE(v19) = v40;
      }

      sub_1ABAB480C(v43, &qword_1EB4DB110, &unk_1ABF6CBD8);

      sub_1ABE6F05C(v38);
    }
  }

  return v19 & 1;
}

uint64_t ViewService.SportsSchedulesView.enumerateTriples(for:block:)(uint64_t *a1)
{
  v2 = *a1;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 4);
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v2;
  sub_1ABB2C288();
  LOBYTE(v10[0]) = 0;
  v10[1] = v4;
  v10[2] = 0;
  sub_1ABA99728();
  LOBYTE(v11) = 0;
  v12 = 0;
  LOBYTE(v13) = 0;
  v14 = 0;
  v15 = v5;
  swift_getObjectType();
  sub_1ABF22464();
  return sub_1ABE47224(v10);
}

uint64_t sub_1ABE6B0D0(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t (*)(), __n128))
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22464();
  if (!v2)
  {
    sub_1ABE6B50C(v6, v7, a2);
  }

  return result;
}

uint64_t ViewService.SportsSchedulesView.enumerateTriples(block:)(uint64_t (*a1)(uint64_t *, uint64_t (*)(uint64_t a1, uint64_t a2), __n128))
{
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 4);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22464();
  if (!v2)
  {
    sub_1ABE6B5F0(v5, a1);
  }

  return result;
}

uint64_t sub_1ABE6B280@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v2 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34740;
  if (qword_1EB4D0440 != -1)
  {
    swift_once();
  }

  v11 = sub_1ABF22D14();
  v12 = sub_1ABA7AA24(v11, qword_1EB549900);
  v13 = MEMORY[0x1E69A0038];
  *(v10 + 56) = v11;
  *(v10 + 64) = v13;
  v14 = sub_1ABA93DC0((v10 + 32));
  (*(*(v11 - 8) + 16))(v14, v12, v11);
  sub_1ABE6EB8C();
  MEMORY[0x1AC5A7830](v10);

  sub_1ABF22914();
  v15 = *(v3 + 8);
  v15(v6, v2);
  sub_1ABAB47C4(&qword_1EB4DB890, &unk_1EB4D59C0, &unk_1ABF70750);
  sub_1ABAA98EC();
  v16 = sub_1ABF22274();
  result = (v15)(v9, v2);
  if (!v1)
  {
    *v19 = v16;
  }

  return result;
}

uint64_t sub_1ABE6B50C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t (*)(), __n128))
{
  v6 = *(result + 16);
  v7 = (result + 32);
  do
  {
    if (!v6)
    {
      break;
    }

    v16 = *v7;
    MEMORY[0x1EEE9AC00](result);
    v14 = a2;
    v15 = v8;
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = sub_1ABE6F348;
    v13 = v11;
    result = a3(&v16, sub_1ABE6F360, v10);
    if (v3)
    {
      break;
    }

    ++v7;
    --v6;
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t sub_1ABE6B5F0(uint64_t result, uint64_t (*a2)(uint64_t *, uint64_t (*)(uint64_t a1, uint64_t a2), __n128))
{
  v4 = *(result + 16);
  v5 = (result + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v7 = *v5;
    v6 = MEMORY[0x1EEE9AC00](result);
    result = a2(&v7, sub_1ABE6F348, v6);
    if (v2)
    {
      break;
    }

    ++v5;
    --v4;
  }

  while ((result & 1) != 0);
  return result;
}

void ViewService.SportsSchedulesView.enumerateTriples<A>(for:block:)()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v25 = v4;
  v26 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v18 = *(v2 + 16);
  v28[0] = *v2;
  v28[1] = v18;
  v29 = *(v2 + 32);
  (*(v9 + 16))(v13, v26, v6);
  sub_1ABF23F04();
  swift_getAssociatedConformanceWitness();
  do
  {
    v19 = sub_1ABF24864();
    if (v27[8])
    {
      break;
    }

    v20 = MEMORY[0x1EEE9AC00](v19);
    *(&v25 - 2) = v28;
    *(&v25 - 1) = v21;
    v22 = v8(v27, sub_1ABE6E8D4, v20);
    if (v1)
    {
      break;
    }
  }

  while ((v22 & 1) != 0);
  v23 = sub_1ABAA42AC();
  v24(v23);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE6B91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, const void *a6@<X5>, uint64_t *a7@<X8>)
{
  v33 = a1;
  v37 = a6;
  v31 = a7;
  v11 = sub_1ABAD219C(&unk_1EB4DB400, &qword_1ABF6E380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v47 = v16;
  v38 = v17;
  v36 = v18;
  v35 = a5;
  if (a4 == 1)
  {
    v41 = 0;
    v39 = 0;
    v32 = 0;
    v40 = 1;
  }

  else
  {
    v40 = a3;
    v41 = a2;
    v39 = a4;
    v32 = a5;
  }

  v19 = a3;
  v21 = aGraphFts[0];
  v20 = aGraphFts[1];
  v45[3] = sub_1ABF22424();
  v45[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v45);
  v22 = v37;
  memcpy(v44, v37, 0x69uLL);
  v43[0] = 0x6870617267;
  v43[1] = 0xE500000000000000;
  v43[2] = v21;
  v43[3] = v20;

  sub_1ABE4C0D8(a2, v19, a4);
  sub_1ABE3C1CC(v22, &v42);
  TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(v43);
  memcpy(__dst, v44, 0x69uLL);
  sub_1ABE4C0EC(__dst);

  sub_1ABE6EB8C();
  sub_1ABF221C4();
  sub_1ABA84B54(v45);
  if (v39)
  {
    v44[0] = v39;
    LOBYTE(v44[1]) = v32 & 1;
    TriplesSort.sqlOrdering.getter();
    sub_1ABAB47C4(&qword_1EB4DB418, &unk_1EB4DB400, &qword_1ABF6E380);
    v23 = v47;
    v24 = v36;
    sub_1ABF224A4();

    v25 = v38;
    (*(v38 + 8))(v15, v24);
    (*(v25 + 32))(v15, v23, v24);

    v27 = v41;
  }

  else
  {

    v23 = v47;
    v27 = v41;
    v25 = v38;
    v24 = v36;
  }

  if ((v40 & 1) == 0)
  {
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1ABAB47C4(&unk_1EB4DB430, &unk_1EB4DB400, &qword_1ABF6E380);
    sub_1ABF22754();
    (*(v25 + 8))(v15, v24);
    (*(v25 + 32))(v15, v23, v24);
  }

  sub_1ABAB47C4(&qword_1ED86B368, &unk_1EB4DB400, &qword_1ABF6E380);
  sub_1ABE6EB38();
  v28 = v34;
  v29 = sub_1ABF22234();
  result = (*(v25 + 8))(v15, v24);
  if (!v28)
  {
    *v31 = v29;
  }

  return result;
}

uint64_t sub_1ABE6BD54(uint64_t a1, __int128 *a2, void *__src, uint64_t a4, char a5, uint64_t (*a6)(__int128 *), uint64_t a7)
{
  memcpy(__dst, __src, 0x69uLL);
  v14 = a2[1];
  v21 = *a2;
  v22 = v14;
  v23 = *(a2 + 4);
  v20[0] = 0x6870617267;
  v20[1] = 0xE500000000000000;
  v20[2] = aGraphFts[0];
  v20[3] = aGraphFts[1];
  v17 = a4;
  v18 = a5;

  sub_1ABE3C1CC(__src, v16);
  sub_1ABE6BE7C(a1, v20, __dst, &v17, a6, a7);
  memcpy(v16, __dst, 0x69uLL);
  sub_1ABAB480C(v16, &qword_1EB4DB3F8, &qword_1ABF6E378);
}

uint64_t sub_1ABE6BE7C(uint64_t a1, uint64_t *a2, const void *a3, uint64_t *a4, uint64_t (*a5)(__int128 *), uint64_t a6)
{
  __dst[16] = a6;
  v35 = a5;
  v32 = a1;
  v9 = sub_1ABAD219C(&unk_1EB4DB400, &qword_1ABF6E380);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v17 = *a2;
  v16 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v29 = v18;
  v31 = *a4;
  v30 = *(a4 + 8);
  sub_1ABE6EB8C();
  sub_1ABF221A4();
  memcpy(__dst, a3, 0x69uLL);
  if (__dst[11] >> 1 != 0xFFFFFFFFLL || LOBYTE(__dst[13]) >= 2u)
  {
    v39[0] = sub_1ABF22424();
    v39[1] = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(&v37);
    memcpy(v40, __dst, 0x69uLL);
    v36[0] = v17;
    v36[1] = v16;
    v36[2] = v29;
    v36[3] = v19;
    sub_1ABE10DCC(__dst, v41);
    TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(v36);
    memcpy(v41, v40, 0x69uLL);
    sub_1ABE4C0EC(v41);
    sub_1ABAB47C4(&unk_1EB4DB420, &unk_1EB4DB400, &qword_1ABF6E380);
    sub_1ABF225A4();
    v21 = v34;
    (*(v34 + 8))(v15, v9);
    sub_1ABA84B54(&v37);
    (*(v21 + 32))(v15, v12, v9);
  }

  if (v31)
  {
    *v41 = v31;
    v41[8] = v30 & 1;
    TriplesSort.sqlOrdering.getter();
    sub_1ABAB47C4(&qword_1EB4DB418, &unk_1EB4DB400, &qword_1ABF6E380);
    sub_1ABF224A4();

    v22 = v34;
    (*(v34 + 8))(v15, v9);
    (*(v22 + 32))(v15, v12, v9);
  }

  sub_1ABAB47C4(&qword_1ED86B368, &unk_1EB4DB400, &qword_1ABF6E380);
  sub_1ABE6EB38();
  v23 = v33;
  sub_1ABF22224();
  if (v23)
  {
    return (*(v34 + 8))(v15, v9);
  }

  do
  {
    sub_1ABE7F2F4(v41);
    memcpy(v40, v41, sizeof(v40));
    v25 = v40[2];
    if (!v40[2])
    {
      break;
    }

    v26 = objc_autoreleasePoolPush();
    v37 = *v41;
    v38 = v25;
    memcpy(v39, &v41[24], sizeof(v39));
    v27 = v35(&v37);
    sub_1ABAB480C(v40, &qword_1EB4DB410, &qword_1ABF6E388);
    objc_autoreleasePoolPop(v26);
  }

  while ((v27 & 1) != 0);
  (*(v34 + 8))(v15, v9);
}

uint64_t sub_1ABE6C3B8()
{
  v0 = sub_1ABF22E64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = sub_1ABF22AB4();
  sub_1ABB9009C(v8, qword_1EB4DB2E0);
  sub_1ABA7AA24(v8, qword_1EB4DB2E0);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = *(v1 + 104);
  v10(v7, v9, v0);
  v10(v4, v9, v0);
  return sub_1ABF22AA4();
}

uint64_t static ViewService.SportsSchedulesView.SportsScheduleTriple.persistenceConflictPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4D0438 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABF22AB4();
  v3 = sub_1ABA7AA24(v2, qword_1EB4DB2E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ViewService.SportsSchedulesView.SportsScheduleTriple.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t ViewService.SportsSchedulesView.SportsScheduleTriple.relationshipPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t ViewService.SportsSchedulesView.SportsScheduleTriple.object.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_1ABE6C694()
{
  v0 = sub_1ABF22D14();
  sub_1ABB9009C(v0, qword_1EB549900);
  sub_1ABA7AA24(v0, qword_1EB549900);
  sub_1ABE6E8F0();
  return sub_1ABF22D34();
}

void *ViewService.SportsSchedulesView.SportsScheduleTriple.init(subject:predicate:relationshipId:relationshipPredicate:object:confidence:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 16);
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 2);
  v15 = *(a4 + 3);
  v16 = *(a4 + 16);
  *a7 = *result;
  *(a7 + 8) = v8;
  *(a7 + 24) = v9;
  *(a7 + 32) = v10;
  *(a7 + 40) = v11;
  *(a7 + 48) = v12;
  *(a7 + 56) = v13;
  *(a7 + 72) = v14;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  *(a7 + 112) = a8;
  return result;
}

uint64_t sub_1ABE6C754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABE6C958(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE6CA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE6C754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE6CA50(uint64_t a1)
{
  v2 = sub_1ABE6E8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE6CA8C(uint64_t a1)
{
  v2 = sub_1ABE6E8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.SportsSchedulesView.SportsScheduleTriple.encode(to:)()
{
  sub_1ABA81AB4();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB340, &qword_1ABF6E008);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  v12 = *v0;
  v14 = v0[2];
  v13 = v0[3];
  v32 = v0[1];
  v33 = v14;
  v31 = v13;
  v34 = v0[4];
  v30 = *(v0 + 20);
  v15 = v0[6];
  v28 = v0[7];
  v29 = v15;
  v16 = v0[9];
  v24 = v0[8];
  v25 = v16;
  v27 = v0[10];
  v26 = *(v0 + 44);
  v17 = v0[13];
  v23[0] = v0[12];
  v23[1] = v17;
  v18 = v0[14];
  v19 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE6E8F0();
  sub_1ABF252E4();
  v35 = v12;
  v40 = 0;
  sub_1ABAE8BC8();
  sub_1ABA94D8C();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v1)
  {
    v20 = v28;
    v21 = v29;
    v35 = v32;
    v36 = v33;
    v37 = v31;
    v38 = v34;
    v39 = v30;
    v40 = 1;
    sub_1ABAA68CC();

    sub_1ABA94D8C();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    v35 = v21;
    v40 = 2;
    sub_1ABC3C8F0();
    sub_1ABA94D8C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v35 = v20;
    v36 = v24;
    v22 = v27;
    v37 = v25;
    v38 = v27;
    v39 = v26;
    v40 = 3;

    sub_1ABA94D8C();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    if (!v22)
    {
      LOBYTE(v35) = 4;
      sub_1ABA7BF34();
      sub_1ABF24F34();
      LOBYTE(v35) = 5;
      sub_1ABA7BF34();
      sub_1ABF24F54();
    }
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA8CD68();
}

void ViewService.SportsSchedulesView.SportsScheduleTriple.init(from:)()
{
  sub_1ABA81AB4();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DB368, &qword_1ABF6E010);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE6E8F0();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAE8B74();
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    sub_1ABAA6FE4();
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    v25 = v31;
    v27 = v31;
    v28 = v32;
    v26 = v33;
    v29 = v34;
    sub_1ABC3CD80();
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    v24 = v35;
    LOBYTE(v30[0]) = 3;
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    v22 = v31;
    v21 = v31;
    v23 = v32;
    v10 = v34;
    v20 = v33;
    v19 = v35;
    LOBYTE(v31) = 4;
    sub_1ABAA6230();
    v11 = sub_1ABF24E14();
    v13 = v12;
    v18 = v11;
    v46 = 5;
    sub_1ABAA6230();
    sub_1ABF24E34();
    v15 = v14;
    v16 = sub_1ABA7C814();
    v17(v16);
    v30[0] = v25;
    v30[1] = v27;
    v30[2] = v28;
    v30[3] = v26;
    v30[4] = v29;
    LOWORD(v30[5]) = v24;
    v30[6] = v22;
    v30[7] = v21;
    v30[8] = v23;
    v30[9] = v20;
    v30[10] = v10;
    LOWORD(v30[11]) = v19;
    v30[12] = v18;
    v30[13] = v13;
    v30[14] = v15;
    memcpy(v4, v30, 0x78uLL);
    sub_1ABE57A98(v30, &v31);
    sub_1ABA84B54(v2);
    v31 = v25;
    v32 = v27;
    v33 = v28;
    v34 = v26;
    v35 = v29;
    v36 = v24;
    v37 = v22;
    v38 = v21;
    v39 = v23;
    v40 = v20;
    v41 = v10;
    v42 = v19;
    v43 = v18;
    v44 = v13;
    v45 = v15;
    sub_1ABE57AF4(&v31);
  }

  sub_1ABA8CD68();
}

uint64_t sub_1ABE6D294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE6EF20();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE6D2F8()
{
  v0 = aGraphFts[0];

  return v0;
}

uint64_t sub_1ABE6D684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  *a4 = *a1;
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v8;
  sub_1ABB2C288();
  LOBYTE(v20) = 1;
  LOBYTE(v14[0]) = 0;
  v14[1] = v10;
  v14[2] = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  sub_1ABA99728();
  v19 = 1;
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
  sub_1ABF22464();
  result = sub_1ABE47224(v14);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    a4[1] = v20;
  }

  return result;
}

uint64_t ViewService.SportsSchedulesView.enumerateAllGames(block:)()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
  swift_initStackObject();
  sub_1ABE577F0(v4, v3);
  sub_1ABAE687C(v4);
  sub_1ABE68DA8();
}

void sub_1ABE6D8B8()
{
  sub_1ABA7BCA8();
  v34[1] = v2;
  v35 = v1;
  v36 = v3;
  v5 = v4;
  v6 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v7 = sub_1ABA7BBB0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v37 = v11 - v10;
  v12 = *(*(sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  v17 = sub_1ABA7BBB0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7AC18();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v34 - v24;
  sub_1ABB3E5B4(v5, v15, &unk_1EB4DB3D0, &qword_1ABF6E370);
  if (sub_1ABA7E1E0(v15, 1, v16) == 1)
  {
    sub_1ABAB480C(v15, &unk_1EB4DB3D0, &qword_1ABF6E370);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  sub_1ABE6EFEC(v15, v25);
  sub_1ABB3E5B4(v25, v22, &qword_1EB4DB110, &unk_1ABF6CBD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45[0] = *v22;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    swift_willThrowTypedImpl();
    sub_1ABAB480C(v25, &qword_1EB4DB110, &unk_1ABF6CBD8);
    goto LABEL_11;
  }

  v26 = v37;
  sub_1ABE6F2B0(v22, v37, type metadata accessor for CustomGraphSportsGameEvent);
  v27 = *(v26 + *(v6 + 48));
  if (*(v27 + 16) <= 2uLL)
  {
    sub_1ABAB480C(v25, &qword_1EB4DB110, &unk_1ABF6CBD8);
    goto LABEL_10;
  }

  if (*(v27 + 88) == 1)
  {
    goto LABEL_7;
  }

  sub_1ABE54BFC(*(v27 + 80), v45);
  if (v0)
  {
    sub_1ABAB480C(v25, &qword_1EB4DB110, &unk_1ABF6CBD8);
    sub_1ABE6F05C(v26);
    goto LABEL_11;
  }

  memcpy(v44, v45, sizeof(v44));
  v31 = v44[1];
  if (!v44[1])
  {
LABEL_7:
    v28 = &qword_1EB4DB110;
    v29 = &unk_1ABF6CBD8;
    v30 = v25;
LABEL_8:
    sub_1ABAB480C(v30, v28, v29);
LABEL_10:
    sub_1ABE6F05C(v26);
    goto LABEL_11;
  }

  if (*(v27 + 16) >= 2uLL)
  {
    if (*(v27 + 152) != 1)
    {
      v32 = v44[0];
      sub_1ABE54BFC(*(v27 + 144), v43);
      memcpy(v42, v43, sizeof(v42));
      if (v42[1])
      {
        v40[0] = v32;
        v40[1] = v31;
        memcpy(v41, &v45[2], sizeof(v41));
        v38[0] = v42[0];
        v38[1] = v42[1];
        memcpy(v39, &v43[16], sizeof(v39));
        v33 = v37;
        v35(v37, v40, v38);
        sub_1ABAB480C(v25, &qword_1EB4DB110, &unk_1ABF6CBD8);
        sub_1ABE6F05C(v33);
        sub_1ABAB480C(v42, &unk_1EB4DB3E0, &unk_1ABF50320);
        sub_1ABAB480C(v44, &unk_1EB4DB3E0, &unk_1ABF50320);
        goto LABEL_11;
      }

      sub_1ABAB480C(v25, &qword_1EB4DB110, &unk_1ABF6CBD8);
      sub_1ABAB480C(v44, &unk_1EB4DB3E0, &unk_1ABF50320);
      v26 = v37;
      goto LABEL_10;
    }

    sub_1ABAB480C(v25, &qword_1EB4DB110, &unk_1ABF6CBD8);
    v28 = &unk_1EB4DB3E0;
    v29 = &unk_1ABF50320;
    v30 = v44;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABE6DD68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABF22384();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1ABE6DDAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE6DF94(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABE6DEA0(0, v2, 1, a1);
  }

  return result;
}

char *sub_1ABE6DEA0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 120 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = *(v10 - 15);
        if (*v10 >= v11)
        {
          v12 = *v10 != v11 || v10[6] >= *(v10 - 9);
          if (v12)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 15, 0x78uLL);
        result = memcpy(v10 - 15, __dst, 0x78uLL);
        v10 -= 15;
        v12 = __CFADD__(v9++, 1);
      }

      while (!v12);
      ++v4;
      v7 += 120;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABE6DF94(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 >= v5)
      {
        goto LABEL_35;
      }

      v9 = (*a3 + 120 * v6);
      v10 = *v9;
      v11 = (*a3 + 120 * v8);
      v12 = *v11;
      if (*v9 >= *v11)
      {
        v14 = v11[6];
        v15 = v9[6];
        v16 = v10 != v12 || v15 >= v14;
        v13 = !v16;
      }

      else
      {
        v13 = 1;
      }

      v17 = v8 + 2;
      if (v5 <= v8 + 2)
      {
        v6 = v8 + 2;
      }

      else
      {
        v6 = v5;
      }

      v18 = 120 * v8;
      for (i = (*a3 + 120 * v8 + 288); ; i += 15)
      {
        if (v17 >= v5)
        {
          goto LABEL_26;
        }

        v20 = *(i - 6);
        if (v20 >= v10)
        {
          break;
        }

        if ((v13 & 1) == 0)
        {
          v6 = v17;
          goto LABEL_35;
        }

LABEL_24:
        ++v17;
        v10 = v20;
      }

      if (v20 != v10)
      {
        if (v13)
        {
          v6 = v17;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if ((v13 ^ (*i >= *(i - 15))))
      {
        goto LABEL_24;
      }

      v6 = v17;
LABEL_26:
      if (v13)
      {
LABEL_27:
        if (v6 >= v8)
        {
          if (v8 < v6)
          {
            v21 = 120 * v6 - 120;
            v22 = v6;
            v23 = v8;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                memcpy(__dst, (v24 + v18), sizeof(__dst));
                memmove((v24 + v18), (v24 + v21), 0x78uLL);
                memcpy((v24 + v21), __dst, 0x78uLL);
              }

              ++v23;
              v21 -= 120;
              v18 += 120;
            }

            while (v23 < v22);
            v5 = a3[1];
          }

          goto LABEL_35;
        }

LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        break;
      }

LABEL_35:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_128;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_129;
          }

          if (v8 + a4 >= v5)
          {
            v25 = v5;
          }

          else
          {
            v25 = v8 + a4;
          }

          if (v25 < v8)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v6 != v25)
          {
            v80 = v7;
            v26 = *a3;
            v27 = *a3 + 120 * v6;
            v28 = v8 - v6;
            do
            {
              v29 = v28;
              v30 = v27;
              do
              {
                v31 = *(v30 - 15);
                if (*v30 >= v31 && (*v30 != v31 || v30[6] >= *(v30 - 9)))
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_132;
                }

                memcpy(__dst, v30, sizeof(__dst));
                memcpy(v30, v30 - 15, 0x78uLL);
                memcpy(v30 - 15, __dst, 0x78uLL);
                v30 -= 15;
                v16 = __CFADD__(v29++, 1);
              }

              while (!v16);
              ++v6;
              v27 += 120;
              --v28;
            }

            while (v6 != v25);
            v6 = v25;
            v7 = v80;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = v7[2];
        sub_1ABAD8820();
        v7 = v76;
      }

      v33 = v7[2];
      v34 = v33 + 1;
      if (v33 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v77;
      }

      v7[2] = v34;
      v35 = v7 + 4;
      v36 = &v7[2 * v33 + 4];
      *v36 = v8;
      v36[1] = v6;
      v81 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v7[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v7[4];
            v41 = v7[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_76:
            if (v43)
            {
              goto LABEL_117;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_120;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_123;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_125;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v34 < 2)
          {
            goto LABEL_119;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_91:
          if (v58)
          {
            goto LABEL_122;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_124;
          }

          if (v65 < v57)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v37 - 1 >= v34)
          {
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
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v69 = v7;
          v70 = &v35[2 * v37 - 2];
          v71 = *v70;
          v72 = &v35[2 * v37];
          v73 = v72[1];
          sub_1ABE6E644((*a3 + 120 * *v70), (*a3 + 120 * *v72), (*a3 + 120 * v73), v81);
          if (v4)
          {
            goto LABEL_110;
          }

          if (v73 < v71)
          {
            goto LABEL_112;
          }

          v74 = v69[2];
          if (v37 > v74)
          {
            goto LABEL_113;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v37 >= v74)
          {
            goto LABEL_114;
          }

          v34 = v74 - 1;
          memmove(&v35[2 * v37], v72 + 2, 16 * (v74 - 1 - v37));
          v7 = v69;
          v69[2] = v74 - 1;
          if (v74 <= 2)
          {
            goto LABEL_105;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_115;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_116;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_118;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_121;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_126;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v84 = v7;
        goto LABEL_108;
      }
    }

    __break(1u);
    goto LABEL_136;
  }

LABEL_108:
  if (!*a1)
  {
LABEL_136:
    __break(1u);
    return;
  }

  sub_1ABE6E50C(&v84, *a1, a3);
LABEL_110:
}

uint64_t sub_1ABE6E50C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABE6E644((*a3 + 120 * *v4), (*a3 + 120 * *v9), (*a3 + 120 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABE6E644(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 120;
  v9 = (a3 - a2) / 120;
  if (v8 < v9)
  {
    sub_1ABADD448(a1, (a2 - a1) / 120, a4);
    v10 = &v4[120 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v15 = v7;
        goto LABEL_38;
      }

      if (*v6 < *v4)
      {
        break;
      }

      if (*v6 == *v4 && *(v6 + 6) < *(v4 + 6))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 120;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 120;
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 120;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v7, v13, 0x78uLL);
    goto LABEL_18;
  }

  sub_1ABADD448(a2, (a3 - a2) / 120, a4);
  v10 = &v4[120 * v9];
LABEL_20:
  v15 = v6;
  v6 -= 120;
  for (v5 -= 120; v10 > v4 && v15 > v7; v5 -= 120)
  {
    v17 = *(v10 - 15);
    if (v17 < *v6 || (v17 == *v6 ? (v18 = *(v10 - 9) >= *(v15 - 9)) : (v18 = 1), !v18))
    {
      if (v5 + 120 != v15)
      {
        memmove(v5, v6, 0x78uLL);
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 120)
    {
      memmove(v5, v10 - 120, 0x78uLL);
    }

    v10 -= 120;
  }

LABEL_38:
  v19 = (v10 - v4) / 120;
  if (v15 != v4 || v15 >= &v4[120 * v19])
  {
    memmove(v15, v4, 120 * v19);
  }

  return 1;
}

uint64_t sub_1ABE6E854(void *__src)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  memcpy(__dst, __src, sizeof(__dst));
  return v3(__dst) & 1;
}

unint64_t sub_1ABE6E8F0()
{
  result = qword_1EB4DB348;
  if (!qword_1EB4DB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB348);
  }

  return result;
}

uint64_t sub_1ABE6E944()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1ABE6D8B8();
  return v4 & 1;
}

unint64_t sub_1ABE6E968(uint64_t a1)
{
  result = sub_1ABE6E990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE6E990()
{
  result = qword_1EB4DB378;
  if (!qword_1EB4DB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB378);
  }

  return result;
}

unint64_t sub_1ABE6E9E8()
{
  result = qword_1EB4DB380;
  if (!qword_1EB4DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB380);
  }

  return result;
}

unint64_t sub_1ABE6EA3C(uint64_t a1)
{
  result = sub_1ABE6EA64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE6EA64()
{
  result = qword_1EB4DB388;
  if (!qword_1EB4DB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB388);
  }

  return result;
}

unint64_t sub_1ABE6EB08(uint64_t a1)
{
  *(a1 + 8) = sub_1ABE6EB38();
  result = sub_1ABE6EB8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABE6EB38()
{
  result = qword_1ED86B1C0;
  if (!qword_1ED86B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B1C0);
  }

  return result;
}

unint64_t sub_1ABE6EB8C()
{
  result = qword_1ED86B1C8;
  if (!qword_1ED86B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B1C8);
  }

  return result;
}

uint64_t sub_1ABE6EBEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1ABE6EC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s19SportsSchedulesViewV20SportsScheduleTripleV7ColumnsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s19SportsSchedulesViewV20SportsScheduleTripleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE6EE1C()
{
  result = qword_1EB4DB3B0;
  if (!qword_1EB4DB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3B0);
  }

  return result;
}

unint64_t sub_1ABE6EE74()
{
  result = qword_1EB4DB3B8;
  if (!qword_1EB4DB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3B8);
  }

  return result;
}

unint64_t sub_1ABE6EECC()
{
  result = qword_1EB4DB3C0;
  if (!qword_1EB4DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3C0);
  }

  return result;
}

unint64_t sub_1ABE6EF20()
{
  result = qword_1EB4DB3C8;
  if (!qword_1EB4DB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3C8);
  }

  return result;
}

uint64_t sub_1ABE6EF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = a3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[2] = a2;
  return v4(a1, sub_1ABE6EFC4, v7) & 1;
}

uint64_t sub_1ABE6EFC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1ABE6EFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE6F05C(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphSportsGameEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE6F2B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t StaticKnowledgeAssetTriple.predicate.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1ABA7D000();
}

void __swiftcall StaticKnowledgeAssetTriple.init(confidence:object:predicate:relationshipId:relationshipPredicate:subject:)(IntelligencePlatform::StaticKnowledgeAssetTriple *__return_ptr retstr, Swift::Double confidence, Swift::String object, Swift::String predicate, Swift::String_optional relationshipId, Swift::String_optional relationshipPredicate, Swift::String subject)
{
  retstr->confidence = confidence;
  retstr->object = object;
  retstr->predicate = predicate;
  retstr->relationshipId = relationshipId;
  retstr->relationshipPredicate = relationshipPredicate;
  retstr->subject = subject;
}

uint64_t sub_1ABE6F3CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE6F5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE6F3CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE6F610(uint64_t a1)
{
  v2 = sub_1ABA99EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE6F64C(uint64_t a1)
{
  v2 = sub_1ABA99EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticKnowledgeAssetTriple.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB440, &qword_1ABF6E3A0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *v1;
  v13 = v1[1];
  v25[7] = v1[2];
  v25[8] = v13;
  v14 = v1[3];
  v25[5] = v1[4];
  v25[6] = v14;
  v15 = v1[6];
  v25[3] = v1[5];
  v25[4] = v15;
  v16 = v1[8];
  v25[1] = v1[7];
  v25[2] = v16;
  v18 = v1[9];
  v17 = v1[10];
  v19 = a1[3];
  v20 = a1[4];
  v21 = a1;
  v23 = v22;
  sub_1ABA93E20(v21, v19);
  sub_1ABA99EE8();
  sub_1ABF252E4();
  v31 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F54();
  if (!v2)
  {
    v25[0] = v17;
    v30 = 1;
    sub_1ABA81294();
    sub_1ABF24F34();
    v29 = 2;
    sub_1ABA81294();
    sub_1ABF24F34();
    v28 = 3;
    sub_1ABA81294();
    sub_1ABF24ED4();
    v27 = 4;
    sub_1ABA81294();
    sub_1ABF24ED4();
    v26 = 5;
    sub_1ABA81294();
    sub_1ABF24F34();
  }

  return (*(v6 + 8))(v11, v23);
}

uint64_t StaticKnowledgeAsset.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

void StaticKnowledgeAsset.subjectIdentifier(for:entityClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABF23924();
  v8 = sub_1ABA7BB64(v7);
  v53 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  v15 = sub_1ABF23914();
  v16 = sub_1ABA7BB64(v15);
  v54 = v17;
  v55 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v22 = v21 - v20;
  v23 = sub_1ABF23C54();
  v24 = sub_1ABA7BB64(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v31 = v30 - v29;
  v52 = *(a3 + 32);
  v32 = v3[1];
  v56 = *v3;
  v57 = v32;

  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a1, a2);
  v33 = v57;
  sub_1ABF23C44();
  sub_1ABF23C14();
  v35 = v34;
  (*(v26 + 8))(v31, v23);
  if (v35 >> 60 == 15)
  {
    v36 = v56;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v37 = sub_1ABF237F4();
    sub_1ABA7AA24(v37, qword_1ED871B20);

    v38 = sub_1ABF237D4();
    v39 = sub_1ABF24664();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      *v40 = 136380675;
      v42 = sub_1ABADD6D8(v36, v33, &v56);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_1ABA78000, v38, v39, "StaticKnowledgeAsset: failed to encode string as UTF8 data: %{private}s", v40, 0xCu);
      sub_1ABA84B54(v41);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {
    }

    v51 = 0;
    goto LABEL_10;
  }

  sub_1ABB3E180();
  sub_1ABA90454();
  v43 = sub_1ABA82ED0();
  sub_1ABB0DBF0(v43, v44);
  v45 = sub_1ABA82ED0();
  sub_1ABE70664(v45, v46);
  v47 = sub_1ABA82ED0();
  sub_1ABAC9310(v47, v48);
  sub_1ABF238E4();
  (*(v53 + 8))(v14, v7);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  sub_1ABF23904();
  if ((v57 & 1) == 0)
  {
    v49 = sub_1ABA82ED0();
    sub_1ABAC9310(v49, v50);
    (*(v54 + 8))(v22, v55);
    v51 = (v56 >> 9) | (v52 << 56) | 0x80000000000000;
LABEL_10:
    sub_1ABA99744(v51);
    return;
  }

  sub_1ABF24CD4();
  __break(1u);
}

void StaticKnowledgeAsset.relationshipIdentifier(for:relationshipId:entityClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1ABF23924();
  v11 = sub_1ABA7BB64(v10);
  v56 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = sub_1ABF23914();
  v19 = sub_1ABA7BB64(v18);
  v58 = v20;
  v59 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v57 = v24 - v23;
  v25 = sub_1ABF23C54();
  v26 = sub_1ABA7BB64(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  v55 = *(a5 + 32);
  v34 = v5[1];
  v61 = *v5;
  v62 = v34;

  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a1, a2);
  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a3, a4);
  v36 = v61;
  v35 = v62;
  sub_1ABF23C44();
  sub_1ABF23C14();
  v38 = v37;
  (*(v28 + 8))(v33, v25);
  if (v38 >> 60 == 15)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v39 = sub_1ABF237F4();
    sub_1ABA7AA24(v39, qword_1ED871B20);

    v40 = sub_1ABF237D4();
    v41 = sub_1ABF24664();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136380675;
      v44 = sub_1ABADD6D8(v36, v35, &v61);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_1ABA78000, v40, v41, "StaticKnowledgeAsset: failed to encode string as UTF8 data: %{private}s", v42, 0xCu);
      sub_1ABA84B54(v43);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {
    }

    v53 = 0;
    goto LABEL_10;
  }

  sub_1ABB3E180();
  sub_1ABA90454();
  v45 = sub_1ABA82ED0();
  sub_1ABB0DBF0(v45, v46);
  v47 = sub_1ABA82ED0();
  sub_1ABE70664(v47, v48);
  v49 = sub_1ABA82ED0();
  sub_1ABAC9310(v49, v50);
  sub_1ABF238E4();
  (*(v56 + 8))(v17, v10);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  sub_1ABF23904();
  if ((v62 & 1) == 0)
  {
    v51 = sub_1ABA82ED0();
    sub_1ABAC9310(v51, v52);
    (*(v58 + 8))(v57, v59);
    *(&v54 + 1) = v55;
    *&v54 = v61;
    v53 = v54 >> 8;
LABEL_10:
    sub_1ABA99744(v53);
    return;
  }

  sub_1ABF24CD4();
  __break(1u);
}

uint64_t sub_1ABE70184(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656C70697274 && a2 == 0xE700000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E456C61626F6C67 && a2 == 0xEE00736569746974)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

uint64_t sub_1ABE702EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE70338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE70184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE70360(uint64_t a1)
{
  v2 = sub_1ABA991D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE7039C(uint64_t a1)
{
  v2 = sub_1ABA991D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticKnowledgeAsset.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DB450, &dword_1ABF6E3B8);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v21 = v1[3];
  v22 = v13;
  v20 = v1[4];
  v14 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABA991D8();
  sub_1ABF252E4();
  LOBYTE(v25) = 0;
  v15 = v23;
  sub_1ABF24F34();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    LOBYTE(v25) = 1;
    sub_1ABA7BF34();
    sub_1ABF24F74();
    v25 = v17;
    v24 = 2;
    sub_1ABAD219C(&qword_1EB4DB458, &dword_1ABF6E3C0);
    sub_1ABA99A18(&qword_1EB4DB460, sub_1ABE70700);
    sub_1ABA7BF34();
    sub_1ABF24F14();
    v25 = v16;
    v24 = 3;
    sub_1ABAD219C(&qword_1EB4DB470, &qword_1ABF6E3C8);
    sub_1ABA9A1D0(&qword_1EB4DB478, sub_1ABE70754);
    sub_1ABA7BF34();
    sub_1ABF24F14();
  }

  return (*(v5 + 8))(v10, v3);
}

void sub_1ABE70664(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1ABE70BE4(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1ABE70B40();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

unint64_t sub_1ABE70700()
{
  result = qword_1EB4DB468;
  if (!qword_1EB4DB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB468);
  }

  return result;
}

unint64_t sub_1ABE70754()
{
  result = qword_1EB4DB480;
  if (!qword_1EB4DB480)
  {
    sub_1ABAE2850(&qword_1EB4DB488, &unk_1ABF6E3D0);
    sub_1ABD3CCE8(&qword_1EB4D4308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB480);
  }

  return result;
}

unint64_t sub_1ABE70800()
{
  result = qword_1EB4CED48;
  if (!qword_1EB4CED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED48);
  }

  return result;
}

unint64_t sub_1ABE70854()
{
  result = qword_1EB4CE750;
  if (!qword_1EB4CE750)
  {
    sub_1ABAE2850(&qword_1EB4DB488, &unk_1ABF6E3D0);
    sub_1ABD3CCE8(&qword_1ED870660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE750);
  }

  return result;
}

unint64_t sub_1ABE70934()
{
  result = qword_1EB4DB498;
  if (!qword_1EB4DB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB498);
  }

  return result;
}

unint64_t sub_1ABE7098C()
{
  result = qword_1EB4DB4A0;
  if (!qword_1EB4DB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4A0);
  }

  return result;
}

unint64_t sub_1ABE709E4()
{
  result = qword_1EB4CF068;
  if (!qword_1EB4CF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF068);
  }

  return result;
}

unint64_t sub_1ABE70A3C()
{
  result = qword_1EB4CF070;
  if (!qword_1EB4CF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF070);
  }

  return result;
}

unint64_t sub_1ABE70A94()
{
  result = qword_1EB4CED50;
  if (!qword_1EB4CED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED50);
  }

  return result;
}

unint64_t sub_1ABE70AEC()
{
  result = qword_1EB4CED58;
  if (!qword_1EB4CED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED58);
  }

  return result;
}

uint64_t sub_1ABE70B40()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1ABF23924();
  sub_1ABB3E180();
  result = sub_1ABF238D4();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABE70BE4(uint64_t a1, uint64_t a2)
{
  result = sub_1ABF219E4();
  if (!result || (result = sub_1ABF21A04(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1ABF219F4();
      sub_1ABF23924();
      sub_1ABB3E180();
      return sub_1ABF238D4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE70C94()
{
  result = sub_1ABE70CB4();
  qword_1ED87C3E0 = result;
  return result;
}

uint64_t sub_1ABE70CB4()
{
  v0 = sub_1ABE70DD4(0x726F775F706F7473, 0xEA00000000007364);
  if (v0)
  {

    return sub_1ABE8B3B8(v0);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v2 = sub_1ABF237F4();
    sub_1ABA7AA24(v2, qword_1ED871B40);
    v3 = sub_1ABF237D4();
    v4 = sub_1ABF24674();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1ABA78000, v3, v4, "Failed to load stop_words from resources.", v5, 2u);
      MEMORY[0x1AC5AB8B0](v5, -1, -1);
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1ABE70DD4(uint64_t a1, unint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = sub_1ABF21CF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v48[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48[-v13];
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v15 = sub_1ABA96194(a1, a2, 1852797802, 0xE400000000000000, qword_1ED871EA8);
  if (!v15)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B40);

    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24674();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1ABADD6D8(a1, a2, v51);
      _os_log_impl(&dword_1ABA78000, v31, v32, "Error: Unable to read file %s", v33, 0xCu);
      sub_1ABA84B54(v34);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    goto LABEL_15;
  }

  v16 = v15;
  sub_1ABF21CA4();

  (*(v5 + 32))(v14, v12, v4);
  v38 = sub_1ABF21D34();
  v40 = v39;
  v41 = objc_autoreleasePoolPush();
  v42 = objc_opt_self();
  v43 = sub_1ABF21DB4();
  v51[0] = 0;
  v44 = [v42 JSONObjectWithData:v43 options:0 error:v51];

  if (!v44)
  {
    v46 = v51[0];
    v47 = sub_1ABF21BE4();

    swift_willThrow();
    objc_autoreleasePoolPop(v41);
    sub_1ABA96210(v38, v40);
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v17 = sub_1ABF237F4();
    sub_1ABA7AA24(v17, qword_1ED871B40);
    (*(v5 + 16))(v9, v14, v4);
    v18 = v47;
    v19 = sub_1ABF237D4();
    v20 = sub_1ABF24664();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51[0] = v50;
      *v21 = 136315394;
      sub_1ABAE27F8();
      v49 = v20;
      v22 = sub_1ABF24FF4();
      v24 = v23;
      v25 = *(v5 + 8);
      v25(v9, v4);
      v26 = sub_1ABADD6D8(v22, v24, v51);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_1ABF25154();
      v29 = sub_1ABADD6D8(v27, v28, v51);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_1ABA78000, v19, v49, "Error: Unable to decode file %s with error %s", v21, 0x16u);
      swift_arrayDestroy();
      sub_1ABA7BC34();
      sub_1ABA7BC34();

      v25(v14, v4);
    }

    else
    {

      v35 = *(v5 + 8);
      v35(v9, v4);
      v35(v14, v4);
    }

LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v45 = v51[0];
  sub_1ABF248F4();
  swift_unknownObjectRelease();
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
  }

  objc_autoreleasePoolPop(v41);
  sub_1ABA96210(v38, v40);
  (*(v5 + 8))(v14, v4);
  result = v52;
LABEL_16:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABE713BC()
{
  sub_1ABA7FC9C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!v3 || !*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1ABA94FC8(v2, v0);
  if ((v5 & 1) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  sub_1ABA7EF0C();
  swift_beginAccess();
  v7 = *(v6 + 16);

  return v7;
}

void *sub_1ABE71478()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v0 + 32))
  {

    v29 = sub_1ABB62B78(v1);
    sub_1ABE71988(&v29);

    v2 = 0;
    v3 = v29;
    v4 = v29[2];
    v5 = v29 + 6;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v4 == v2)
      {

        v29 = v6;
        sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
        sub_1ABAA3AA4();
        sub_1ABD1044C(v17);
        v18 = sub_1ABF23B54();
        v20 = v19;

        goto LABEL_12;
      }

      if (v2 >= v3[2])
      {
        break;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      v29 = *(v5 - 2);
      v30 = v8;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1AC5A9410](58, 0xE100000000000000);
      v9 = sub_1ABE73930();
      MEMORY[0x1AC5A9410](v9);

      v10 = v29;
      v11 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = v6[2];
        sub_1ABAAA4F4();
        v6 = v15;
      }

      v12 = v6[2];
      if (v12 >= v6[3] >> 1)
      {
        sub_1ABAAA4F4();
        v6 = v16;
      }

      v6[2] = v12 + 1;
      v13 = &v6[2 * v12];
      v13[4] = v10;
      v13[5] = v11;
      v5 += 3;
      ++v2;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
LABEL_12:
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1ABF24AB4();
    v22 = *(v0 + 16);
    v21 = *(v0 + 24);

    v29 = v22;
    v30 = v21;
    MEMORY[0x1AC5A9410](40, 0xE100000000000000);
    MEMORY[0x1AC5A9410](v18, v20);

    v23 = 0xE700000000000000;
    MEMORY[0x1AC5A9410](0x3D74696D696C2CLL, 0xE700000000000000);
    v28 = *(v0 + 48);
    v24 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v24);

    MEMORY[0x1AC5A9410](0x79547865646E692CLL, 0xEB000000003D6570);
    v25 = 0x7865646E496F6ELL;
    switch(*(v0 + 64))
    {
      case 1:
        v25 = 0xD000000000000010;
        v23 = 0x80000001ABF7EE20;
        break;
      case 2:
        break;
      case 3:
        v26 = 0x47746E657665;
        goto LABEL_20;
      case 4:
        v23 = 0xED00007865646E49;
        v25 = 0x79676F6C6F746E6FLL;
        break;
      case 5:
        v23 = 0xEC0000007865646ELL;
        v25 = 0x49747865746E6F63;
        break;
      case 6:
        v26 = 0x476C61636F6CLL;
LABEL_20:
        v25 = v26 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
        v23 = 0xEF7865646E496870;
        break;
      case 7:
        v23 = 0x80000001ABF7EE80;
        v25 = 0xD00000000000001ALL;
        break;
      case 8:
        v23 = 0x80000001ABF7EEA0;
        v25 = 0xD000000000000018;
        break;
      default:
        v23 = 0xE400000000000000;
        v25 = 1701736302;
        break;
    }

    MEMORY[0x1AC5A9410](v25, v23);

    MEMORY[0x1AC5A9410](41, 0xE100000000000000);
    return v29;
  }

  return result;
}

uint64_t KnosisInternalFact.init(sid:pid:oid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[2] = 0;
  a7[5] = 0;
  a7[10] = MEMORY[0x1E69E7CC0];

  sub_1ABA90E20();
  sub_1ABE7DCE8();
  MEMORY[0x1AC5A9410](a3, a4);

  sub_1ABE7DCE8();
  sub_1ABA90E20();

  sub_1ABE7DCE8();
  MEMORY[0x1AC5A9410](a5, a6);

  *a7 = a1;
  a7[1] = a2;
  a7[3] = a1;
  a7[4] = a2;
  a7[6] = a3;
  a7[7] = a4;
  a7[8] = a5;
  a7[9] = a6;
  return result;
}

uint64_t sub_1ABE71988(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A1F8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE79684(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABE719F4()
{
  sub_1ABA7FC9C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!v3 || !*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1ABA94FC8(v2, v0);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1ABE71A88()
{
  sub_1ABA7FC9C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(v0 + 32);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_19;
    }

    v4 = *(v0 + 32);

    sub_1ABB5C1D0();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v3)
  {
    goto LABEL_19;
  }

  v7 = *(v0 + 40);
  if (!*(v1 + 40))
  {
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_19:
    v15 = 0;
    return v15 & 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = *(v0 + 40);

  v10 = sub_1ABE71A88(v9, v7);

  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v11 && (sub_1ABF25054() & 1) == 0 || *(v1 + 48) != *(v0 + 48) || *(v1 + 56) != *(v0 + 56))
  {
    goto LABEL_19;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  v12 = *(v1 + 72);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v13 = *(v0 + 72);

  sub_1ABA8CD18();
  sub_1ABB5C318();
  v15 = v14;

  return v15 & 1;
}

uint64_t sub_1ABE71C10()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  sub_1ABA7D32C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v7)
  {
LABEL_8:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = *(*(v1 + 56) + ((v11 << 9) | (8 * v13)));
    sub_1ABA7EF0C();
    result = swift_beginAccess();
    if (*(v14 + 24))
    {

      MEMORY[0x1AC5A9710](v15);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1ABF24134();
      }

      result = sub_1ABF24184();
      v2 = v17;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v2;
    }

    v7 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE71D70()
{
  v1 = *(v0 + 80);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v2 = *(v0 + 81);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

BOOL sub_1ABE71DAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

uint64_t sub_1ABE71DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA07D4();
  v6 = sub_1ABE719F4();
  if (v6)
  {
    v7 = v6;
    sub_1ABA7C32C();

    sub_1ABD7DA50(v8);
    swift_endAccess();
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    sub_1ABAA096C();
    v7 = swift_allocObject();
    sub_1ABE75D28(a3);
  }

  sub_1ABE71E8C(v4, v3, v7);
}

uint64_t sub_1ABE71E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA0948();
  swift_beginAccess();
  if (*(v3 + 32))
  {
    sub_1ABA7C32C();

    v7 = *(v3 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 32);
    sub_1ABAFAC94();
    *(v3 + 32) = v12;
    return swift_endAccess();
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB660, &qword_1ABF6F318);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34740;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    type metadata accessor for KnosisQueryParam();

    v10 = sub_1ABF239C4();
    v11 = *(v3 + 32);
    *(v3 + 32) = v10;
  }
}

IntelligencePlatform::KnosisIndexType_optional __swiftcall KnosisIndexType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABE7200C(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = 0;
    v5 = *(v3 + 24);
    v6 = (result + 32);
    for (i = v2 - 1; ; --i)
    {
      memcpy(__dst, v6, 0x58uLL);
      v9 = __dst[0];
      v8 = __dst[1];
      sub_1ABB242A4(__dst, &v32);

      sub_1ABAC9398(v4);
      v10 = *(v3 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v3 + 16);
      v11 = v32;
      v12 = sub_1ABA94FC8(v9, v8);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        break;
      }

      v14 = v12;
      v15 = v13;
      sub_1ABAD219C(&qword_1EB4DB628, &qword_1ABF6F300);
      v16 = sub_1ABF24C64();
      v17 = v32;
      if (v16)
      {
        v18 = sub_1ABA94FC8(v9, v8);
        if ((v15 & 1) != (v19 & 1))
        {
          goto LABEL_23;
        }

        v14 = v18;
      }

      *(v3 + 16) = v17;
      if (v15)
      {
      }

      else
      {
        v17[(v14 >> 6) + 8] |= 1 << v14;
        v20 = (v17[6] + 16 * v14);
        *v20 = v9;
        v20[1] = v8;
        *(v17[7] + 8 * v14) = MEMORY[0x1E69E7CC0];
        v21 = v17[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_22;
        }

        v17[2] = v23;
      }

      v24 = v17[7];
      v25 = *(v24 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v14) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = *(v25 + 16);
        sub_1ABAD8758();
        v25 = v30;
        *(v24 + 8 * v14) = v30;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_1ABAD8758();
        v25 = v31;
        *(v24 + 8 * v14) = v31;
      }

      v28 = *&__dst[2];
      *(v25 + 16) = v27 + 1;
      result = memcpy((v25 + 88 * v27 + 32), __dst, 0x58uLL);
      if (v5 <= v28)
      {
        v5 = v28;
      }

      if (!i)
      {
        *(v3 + 24) = v5;
        return result;
      }

      v6 += 88;
      v4 = sub_1ABAB9874;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t KnosisInternalFact.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t KnosisInternalFact.id.setter()
{
  sub_1ABA7FC9C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KnosisInternalFact.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[8];
  v7 = v0[9];

  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x3A646973202CLL, 0xE600000000000000);
  v9 = sub_1ABAA015C();
  MEMORY[0x1AC5A9410](v9);
  MEMORY[0x1AC5A9410](0x3A646970202CLL, 0xE600000000000000);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1AC5A9410](v10, v5);

  MEMORY[0x1AC5A9410](0x3A64696F202CLL, 0xE600000000000000);

  v11 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v11);

  MEMORY[0x1AC5A9410](93, 0xE100000000000000);
  return 979659099;
}

void KnosisInternalFact.init(sid:pid:oid:qpid:qoid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA07D4();
  v17 = v16;
  v25 = v18;
  v26 = v19;

  sub_1ABAA1414();
  sub_1ABA82B84();
  MEMORY[0x1AC5A9410](a3, a4);

  sub_1ABA82B84();
  sub_1ABAA1414();

  sub_1ABA82B84();
  MEMORY[0x1AC5A9410](a5, a6);

  *v17 = v25;
  v17[1] = v26;
  v17[2] = 0;
  v17[3] = v11;
  v17[4] = v10;
  v17[5] = 0;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;
  v17[10] = MEMORY[0x1E69E7CC0];
  v17 += 10;
  swift_bridgeObjectRetain_n();
  sub_1ABAA1414();
  sub_1ABE7DD04();
  MEMORY[0x1AC5A9410](a7, a8);

  sub_1ABE7DD04();
  sub_1ABAA1414();

  sub_1ABE7DD04();
  MEMORY[0x1AC5A9410](a9, a10);

  sub_1ABB4DC08();
  v20 = *(*v17 + 16);
  sub_1ABB4E00C(v20);
  v21 = *v17;
  *(v21 + 16) = v20 + 1;
  v22 = (v21 + 88 * v20);
  v22[4] = v25;
  v22[5] = v26;
  v22[6] = 0;
  v22[7] = v25;
  v22[8] = v26;
  v22[9] = 0;
  v22[10] = a7;
  v22[11] = a8;
  v22[12] = a9;
  v22[13] = a10;
  v22[14] = MEMORY[0x1E69E7CC0];
  sub_1ABA950C0();
}

Swift::Void __swiftcall KnosisInternalFact.addQualifier(qpid:qoid:)(Swift::String qpid, Swift::String qoid)
{
  object = qoid._object;
  countAndFlagsBits = qoid._countAndFlagsBits;
  v5 = qpid._object;
  v6 = qpid._countAndFlagsBits;
  v8 = *v2;
  v7 = v2[1];
  v12 = qpid._countAndFlagsBits;
  v13 = *v2;
  swift_bridgeObjectRetain_n();
  sub_1ABA90E20();
  sub_1ABA96520();
  MEMORY[0x1AC5A9410](v6, v5);

  sub_1ABA96520();
  sub_1ABA90E20();

  sub_1ABA96520();
  MEMORY[0x1AC5A9410](countAndFlagsBits, object);

  sub_1ABB4DC08();
  v9 = *(v2[10] + 16);
  sub_1ABB4E00C(v9);
  v10 = v2[10];
  *(v10 + 16) = v9 + 1;
  v11 = (v10 + 88 * v9);
  v11[4] = v13;
  v11[5] = v7;
  v11[6] = 0;
  v11[7] = v8;
  v11[8] = v7;
  v11[9] = 0;
  v11[10] = v12;
  v11[11] = v5;
  v11[12] = countAndFlagsBits;
  v11[13] = object;
  v11[14] = MEMORY[0x1E69E7CC0];
  v2[10] = v10;
}

uint64_t static KnosisInternalFact.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABE72720(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x497463656A627573 && a2 == 0xE900000000000044;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x497463656A627573 && a2 == 0xEA00000000006173;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656966696C617571 && a2 == 0xEA00000000007372)
            {

              return 6;
            }

            else
            {
              v12 = sub_1ABF25054();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE72960(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
    case 3:
      result = 0x497463656A627573;
      break;
    case 4:
      result = 0x7461636964657270;
      break;
    case 5:
      result = 0x44497463656A626FLL;
      break;
    case 6:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE72A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE72720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE72A68(uint64_t a1)
{
  v2 = sub_1ABE79558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE72AA4(uint64_t a1)
{
  v2 = sub_1ABE79558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}