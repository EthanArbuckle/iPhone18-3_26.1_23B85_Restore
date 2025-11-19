unint64_t sub_1BB61D44C()
{
  result = qword_1EBC5D460;
  if (!qword_1EBC5D460)
  {
    sub_1BB6BA7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D460);
  }

  return result;
}

unint64_t sub_1BB61D4C8()
{
  result = qword_1EBC5D468;
  if (!qword_1EBC5D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D468);
  }

  return result;
}

uint64_t keypath_set_61Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

uint64_t sub_1BB61D58C()
{
  result = type metadata accessor for DKCamera();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of DKPersonMotionFilter.lastUpdateRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 744);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DKPersonMotionFilter.updateStubFace(faceRect:bodyRect:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  v5 = *(*v2 + 840);
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  v12 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = v4;
  return v5(v11, v9);
}

uint64_t sub_1BB61E468()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DKPersonMotionFilter.Measurement.faceRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 168);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DKPersonMotionFilter.Measurement.bodyRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 192);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t sub_1BB61E948()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DKMotion3();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

IntelligentTrackingCore::DKIdentityConfidence __swiftcall DKIdentityConfidence.init(id:confidence:)(Swift::Int id, Swift::Double confidence)
{
  *v2 = id;
  *(v2 + 8) = confidence;
  result.confidence = confidence;
  result.id = id;
  return result;
}

uint64_t sub_1BB61F024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Array<A>.max()@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;

  sub_1BB62E3A8(&v9);
  v3 = *(v9 + 2);
  if (v3)
  {
    v4 = &v9[16 * v3 + 16];
    v5 = *v4;
    v6 = *(v4 + 1);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = v3 == 0;

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t DKObjectTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = a3[1];
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion;
  v27 = type metadata accessor for DKMotion3();
  (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v30 = sub_1BB6BA7F4();
  v31 = *(*(v30 - 8) + 32);
  v31(v23 + v29, a1, v30);
  v32 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v33 = sub_1BB6BA844();
  (*(*(v33 - 8) + 32))(v23 + v32, a2, v33);
  v34 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v34 = a9;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v35 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
  *v35 = v24;
  v35[1] = v25;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_anstId) = a4;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerId) = a5;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v23 + v26);
  v31(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, a8, v30);
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_framesSinceLastUpdate) = a14;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence) = a13;
  *(v23 + v28) = a15;
  return v23;
}

uint64_t sub_1BB61F3E4()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1BB61F418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB61F4F4(uint64_t a1)
{
  v2 = sub_1BB62E564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB61F530(uint64_t a1)
{
  v2 = sub_1BB62E564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityConfidence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E564();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BB734();
  if (!v1)
  {
    v8[14] = 1;
    sub_1BB6BB724();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKIdentityConfidence.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x1BFB117B0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1BFB117D0](*&v2);
}

uint64_t DKIdentityConfidence.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1BFB117D0](*&v3);
  return sub_1BB6BB964();
}

uint64_t DKIdentityConfidence.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E564();
  sub_1BB6BB974();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_1BB6BB674();
    v13[14] = 1;
    sub_1BB6BB664();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BB61F99C()
{
  v1 = *(v0 + 8);
  MEMORY[0x1BFB117B0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1BFB117D0](*&v2);
}

uint64_t sub_1BB61F9E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1BFB117D0](*&v3);
  return sub_1BB6BB964();
}

void sub_1BB61FB64(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB61FBA4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB61FBC4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB61FE90(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB61FEEC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB61FF48(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_1BB61FF8C(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 1952671090;
      break;
    case 3:
      result = 0x797469746E656469;
      break;
    case 4:
      result = 0x644974736E61;
      break;
    case 5:
      result = 0x4972656B63617274;
      break;
    case 6:
      result = 0x644970756F7267;
      break;
    case 7:
      result = 0x6E6F69746F6DLL;
      break;
    case 8:
      result = 0x616470557473616CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6573624F7473616CLL;
      break;
    case 12:
      result = 0x77615965636166;
      break;
    case 13:
      result = 0x6374695065636166;
      break;
    case 14:
      result = 0x6C6C6F5265636166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BB62017C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6343A4();
  *a1 = result;
  return result;
}

unint64_t sub_1BB6201AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB61FF8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BB6201F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6343A4();
  *a1 = result;
  return result;
}

uint64_t sub_1BB620228(uint64_t a1)
{
  v2 = sub_1BB62E690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB620264(uint64_t a1)
{
  v2 = sub_1BB62E690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFaceTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:faceYaw:facePitch:faceRoll:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  v28 = swift_allocObject();
  v43 = *a3;
  v29 = a3[1];
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion;
  v31 = type metadata accessor for DKMotion3();
  (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
  v44 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation;
  v32 = v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  v33 = v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  v34 = v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  v35 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v36 = sub_1BB6BA7F4();
  v37 = *(*(v36 - 8) + 32);
  v37(v28 + v35, a1, v36);
  v38 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v39 = sub_1BB6BA844();
  (*(*(v39 - 8) + 32))(v28 + v38, a2, v39);
  v40 = (v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v40 = a9;
  v40[1] = a10;
  v40[2] = a11;
  v40[3] = a12;
  v41 = (v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
  *v41 = v43;
  v41[1] = v29;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_anstId) = a4;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerId) = a5;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v28 + v30);
  v37(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, a8, v36);
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_framesSinceLastUpdate) = a14;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = a13;
  *(v28 + v44) = a15;
  *v32 = a16;
  *(v32 + 8) = a17 & 1;
  *v33 = a18;
  *(v33 + 8) = a19 & 1;
  *v34 = a20;
  *(v34 + 8) = a21 & 1;
  return v28;
}

uint64_t DKFaceTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:faceYaw:facePitch:faceRoll:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  v44 = *a3;
  v27 = a3[1];
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion;
  v29 = type metadata accessor for DKMotion3();
  (*(*(v29 - 8) + 56))(v21 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation) = 0;
  v31 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v35 = sub_1BB6BA7F4();
  v36 = *(*(v35 - 8) + 32);
  v36(v21 + v34, a1, v35);
  v37 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v38 = sub_1BB6BA844();
  (*(*(v38 - 8) + 32))(v21 + v37, a2, v38);
  v39 = (v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v39 = a9;
  v39[1] = a10;
  v39[2] = a11;
  v39[3] = a12;
  v40 = (v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
  *v40 = v44;
  v40[1] = v27;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_anstId) = a4;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerId) = a5;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v21 + v28);
  v36(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, a8, v35);
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_framesSinceLastUpdate) = a14;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = a13;
  *(v21 + v30) = a15;

  *v31 = a16;
  *(v31 + 8) = a17 & 1;
  *v32 = a18;
  *(v32 + 8) = a19 & 1;
  *v33 = a20;
  *(v33 + 8) = a21 & 1;
  return v21;
}

uint64_t DKFaceTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKFaceTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB620A7C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v27 - v3;
  v4 = sub_1BB6BA844();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4B8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E690();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time, v6);
  LOBYTE(v37) = 0;
  sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530]);
  v35 = v12;
  v17 = v15;
  v18 = v34;
  sub_1BB6BB744();
  if (v18)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v15, v35);
  }

  else
  {
    v28 = v16;
    v34 = v13;
    v20 = v11;
    v21 = *(v7 + 8);
    v21(v20, v6);
    (*(v32 + 16))(v31, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid, v33);
    LOBYTE(v37) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    v27 = v21;
    (*(v32 + 8))(v31, v33);
    v22 = v36;
    v23 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect + 16);
    v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
    v38 = v23;
    v39 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect);
    sub_1BB6BB744();
    v24 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity + 8);
    *&v37 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
    *(&v37 + 1) = v24;
    v39 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v37) = 4;
    sub_1BB6BB734();
    LOBYTE(v37) = 5;
    sub_1BB6BB734();
    LOBYTE(v37) = 6;
    sub_1BB6BB734();
    sub_1BB62E5B8(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion, v30);
    LOBYTE(v37) = 7;
    v33 = type metadata accessor for DKMotion3();
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v30);
    v28(v29, v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v6);
    v25 = v29;
    LOBYTE(v37) = 8;
    sub_1BB6BB744();
    v27(v25, v6);
    LOBYTE(v37) = 9;
    sub_1BB6BB734();
    LOBYTE(v37) = 10;
    sub_1BB6BB724();
    *&v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation);
    v39 = 11;
    type metadata accessor for DKFaceObservation(0);
    sub_1BB62E6E4(&qword_1EBC5C568, 255, type metadata accessor for DKFaceObservation);
    sub_1BB6BB704();
    LOBYTE(v37) = 12;
    sub_1BB6BB6E4();
    LOBYTE(v37) = 13;
    sub_1BB6BB6E4();
    v26 = v35;
    LOBYTE(v37) = 14;
    sub_1BB6BB6E4();
    return (*(v34 + 8))(v17, v26);
  }
}

uint64_t DKFaceTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v47 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1BB6BA7F4();
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v51 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = v47 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4C8);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = v47 - v11;
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion;
  v14 = type metadata accessor for DKMotion3();
  v15 = *(*(v14 - 8) + 56);
  v66 = v13;
  v15(v1 + v13, 1, 1, v14);
  v62 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation) = 0;
  v16 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  *v17 = 0;
  *(v17 + 8) = 1;
  v64 = a1;
  v65 = v1;
  v18 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  *v18 = 0;
  *(v18 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E690();
  v61 = v12;
  v19 = v63;
  sub_1BB6BB974();
  if (v19)
  {
    v46 = v65;
    sub_1BB62E628(v65 + v66);

    type metadata accessor for DKFaceTrackerState(0);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    v20 = v57;
    v63 = v14;
    v50 = v16;
    v49 = v17;
    v48 = v18;
    v21 = v56;
    LOBYTE(v67) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530]);
    v23 = v58;
    v24 = v60;
    sub_1BB6BB684();
    v47[1] = v22;
    v26 = *(v55 + 32);
    v27 = v65;
    v47[2] = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
    v26(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time, v23, v24);
    LOBYTE(v67) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8]);
    v28 = v53;
    sub_1BB6BB684();
    v47[0] = v26;
    (*(v54 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid, v20, v28);
    type metadata accessor for CGRect(0);
    v69 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect);
    v58 = 0;
    sub_1BB6BB684();
    v29 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
    v30 = v68;
    *v29 = v67;
    v29[1] = v30;
    v69 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v31 = *(&v67 + 1);
    v32 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
    *v32 = v67;
    v32[1] = v31;
    LOBYTE(v67) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v67) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v67) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v67) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3);
    v33 = v52;
    sub_1BB6BB644();
    sub_1BB62E4F4(v33, v27 + v66);
    LOBYTE(v67) = 8;
    v34 = v51;
    sub_1BB6BB684();
    (v47[0])(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v34, v60);
    LOBYTE(v67) = 9;
    *(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v67) = 10;
    sub_1BB6BB664();
    *(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKFaceObservation(0);
    v69 = 11;
    sub_1BB62E6E4(&qword_1EBC5C670, 255, type metadata accessor for DKFaceObservation);
    sub_1BB6BB644();
    *(v65 + v62) = v67;

    LOBYTE(v67) = 12;
    v36 = sub_1BB6BB624();
    v37 = v50;
    *v50 = v36;
    *(v37 + 8) = v38 & 1;
    LOBYTE(v67) = 13;
    v39 = sub_1BB6BB624();
    v40 = v49;
    *v49 = v39;
    *(v40 + 8) = v41 & 1;
    LOBYTE(v67) = 14;
    v42 = sub_1BB6BB624();
    v44 = v43;
    (*(v21 + 8))(v61, v59);
    v45 = v48;
    *v48 = v42;
    *(v45 + 8) = v44 & 1;
    __swift_destroy_boxed_opaque_existential_1(v64);
    return v65;
  }

  return v46;
}

void sub_1BB621E24(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB621E6C@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB621E90(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB622218@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKFaceTrackerState(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

void sub_1BB622344(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB622384@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB6223A4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB622658(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BB6BB7E4();
  }

  return v12 & 1;
}

uint64_t sub_1BB6226EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1BB6BB924();
  a3(v5);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB622758(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1BB6BACC4();
}

uint64_t sub_1BB6227B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1BB6BB924();
  a4(v6);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB622818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6343F0();
  *a1 = result;
  return result;
}

uint64_t sub_1BB622848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6343F0();
  *a1 = result;
  return result;
}

uint64_t sub_1BB622870(uint64_t a1)
{
  v2 = sub_1BB62E74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6228AC(uint64_t a1)
{
  v2 = sub_1BB62E74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKBodyTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = a3[1];
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion;
  v27 = type metadata accessor for DKMotion3();
  (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v30 = sub_1BB6BA7F4();
  v31 = *(*(v30 - 8) + 32);
  v31(v23 + v29, a1, v30);
  v32 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v33 = sub_1BB6BA844();
  (*(*(v33 - 8) + 32))(v23 + v32, a2, v33);
  v34 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v34 = a9;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v35 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
  *v35 = v24;
  v35[1] = v25;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_anstId) = a4;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerId) = a5;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v23 + v26);
  v31(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, a8, v30);
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_framesSinceLastUpdate) = a14;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = a13;
  *(v23 + v28) = a15;
  return v23;
}

uint64_t DKBodyTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = *a3;
  v24 = a3[1];
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion;
  v26 = type metadata accessor for DKMotion3();
  (*(*(v26 - 8) + 56))(v15 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation) = 0;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v29 = sub_1BB6BA7F4();
  v30 = *(*(v29 - 8) + 32);
  v30(v15 + v28, a1, v29);
  v31 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v32 = sub_1BB6BA844();
  (*(*(v32 - 8) + 32))(v15 + v31, a2, v32);
  v33 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v33 = a9;
  v33[1] = a10;
  v33[2] = a11;
  v33[3] = a12;
  v34 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
  *v34 = v23;
  v34[1] = v24;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_anstId) = a4;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerId) = a5;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v15 + v25);
  v30(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, a8, v29);
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_framesSinceLastUpdate) = a14;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = a13;
  *(v15 + v27) = a15;

  return v15;
}

uint64_t DKBodyTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKBodyTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB622F68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_1BB6BA844();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4D0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E74C();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time, v6);
  LOBYTE(v42) = 0;
  v17 = sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530]);
  v40 = v12;
  v18 = v15;
  v19 = v17;
  v20 = v39;
  sub_1BB6BB744();
  if (v20)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v18, v40);
  }

  else
  {
    v33 = v16;
    v39 = v13;
    v22 = v11;
    v23 = *(v7 + 8);
    v23(v22, v6);
    (*(v37 + 16))(v36, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid, v38);
    LOBYTE(v42) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    v31 = v23;
    v32 = v19;
    (*(v37 + 8))(v36, v38);
    v24 = v41;
    v25 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect + 16);
    v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
    v43 = v25;
    v44 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect);
    sub_1BB6BB744();
    v26 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity + 8);
    *&v42 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
    *(&v42 + 1) = v26;
    v44 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v42) = 4;
    sub_1BB6BB734();
    LOBYTE(v42) = 5;
    sub_1BB6BB734();
    LOBYTE(v42) = 6;
    sub_1BB6BB734();
    v27 = v35;
    sub_1BB62E5B8(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion, v35);
    LOBYTE(v42) = 7;
    v38 = type metadata accessor for DKMotion3();
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v27);
    v28 = v34;
    v33(v34, v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v6);
    LOBYTE(v42) = 8;
    sub_1BB6BB744();
    v31(v28, v6);
    LOBYTE(v42) = 9;
    sub_1BB6BB734();
    LOBYTE(v42) = 10;
    sub_1BB6BB724();
    *&v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation);
    v44 = 11;
    type metadata accessor for DKBodyObservation(0);
    sub_1BB62E6E4(&qword_1EBC5C580, 255, type metadata accessor for DKBodyObservation);
    v29 = v40;
    sub_1BB6BB704();
    return (*(v39 + 8))(v18, v29);
  }
}

uint64_t DKBodyTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = v37 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BB6BA7F4();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = v37 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4E0);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = v37 - v14;
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion;
  v17 = type metadata accessor for DKMotion3();
  v18 = *(*(v17 - 8) + 56);
  v51 = v16;
  v18(v1 + v16, 1, 1, v17);
  v47 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation;
  v49 = a1;
  v50 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E74C();
  v45 = v15;
  v19 = v48;
  sub_1BB6BB974();
  if (v19)
  {
    v36 = v50;
    sub_1BB62E628(v50 + v51);

    type metadata accessor for DKBodyTrackerState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v17;
    v38 = v11;
    v21 = v42;
    v20 = v43;
    LOBYTE(v52) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530]);
    v23 = v44;
    sub_1BB6BB684();
    v37[2] = v22;
    v25 = v9;
    v26 = *(v41 + 32);
    v27 = v50;
    v37[3] = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
    v44 = v25;
    v26(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time, v23);
    LOBYTE(v52) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8]);
    v28 = v8;
    v29 = v39;
    sub_1BB6BB684();
    v37[0] = v26;
    (*(v40 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid, v28, v29);
    type metadata accessor for CGRect(0);
    v54 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect);
    v37[1] = 0;
    sub_1BB6BB684();
    v30 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
    v31 = v53;
    *v30 = v52;
    v30[1] = v31;
    v54 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v32 = *(&v52 + 1);
    v33 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
    *v33 = v52;
    v33[1] = v32;
    LOBYTE(v52) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v52) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v52) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v52) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3);
    sub_1BB6BB644();
    sub_1BB62E4F4(v20, v27 + v51);
    LOBYTE(v52) = 8;
    v34 = v38;
    sub_1BB6BB684();
    (v37[0])(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v34, v44);
    LOBYTE(v52) = 9;
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v52) = 10;
    sub_1BB6BB664();
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKBodyObservation(0);
    v54 = 11;
    sub_1BB62E6E4(&qword_1EBC5C680, 255, type metadata accessor for DKBodyObservation);
    sub_1BB6BB644();
    (*(v21 + 8))(v45, v46);
    v36 = v50;
    *(v50 + v47) = v52;
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v36;
}

void sub_1BB6240F0(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB624138@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB62415C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB6244E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKBodyTrackerState(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

void sub_1BB624610(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB624650@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB624670(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

unint64_t sub_1BB624924(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0xD000000000000011;
    if (a1 != 10)
    {
      v7 = 0x6573624F7473616CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x644970756F7267;
    v9 = 0x6E6F69746F6DLL;
    if (a1 != 7)
    {
      v9 = 0x616470557473616CLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701669236;
    v2 = 0x797469746E656469;
    v3 = 0x644974736E61;
    if (a1 != 4)
    {
      v3 = 0x4972656B63617274;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1684632949;
    if (a1 != 1)
    {
      v4 = 1952671090;
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
}

uint64_t sub_1BB624AA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB63443C();
  *a1 = result;
  return result;
}

uint64_t sub_1BB624AD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB63443C();
  *a1 = result;
  return result;
}

uint64_t sub_1BB624AFC(uint64_t a1)
{
  v2 = sub_1BB62E7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB624B38(uint64_t a1)
{
  v2 = sub_1BB62E7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKObjectTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = *a3;
  v24 = a3[1];
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion;
  v26 = type metadata accessor for DKMotion3();
  (*(*(v26 - 8) + 56))(v15 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation) = 0;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v29 = sub_1BB6BA7F4();
  v30 = *(*(v29 - 8) + 32);
  v30(v15 + v28, a1, v29);
  v31 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v32 = sub_1BB6BA844();
  (*(*(v32 - 8) + 32))(v15 + v31, a2, v32);
  v33 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v33 = a9;
  v33[1] = a10;
  v33[2] = a11;
  v33[3] = a12;
  v34 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
  *v34 = v23;
  v34[1] = v24;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_anstId) = a4;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerId) = a5;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v15 + v25);
  v30(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, a8, v29);
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_framesSinceLastUpdate) = a14;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence) = a13;
  *(v15 + v27) = a15;

  return v15;
}

uint64_t DKObjectTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKObjectTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB624FBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_1BB6BA844();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4E8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E7C0();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time, v6);
  LOBYTE(v42) = 0;
  v17 = sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530]);
  v40 = v12;
  v18 = v15;
  v19 = v17;
  v20 = v39;
  sub_1BB6BB744();
  if (v20)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v18, v40);
  }

  else
  {
    v33 = v16;
    v39 = v13;
    v22 = v11;
    v23 = *(v7 + 8);
    v23(v22, v6);
    (*(v37 + 16))(v36, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid, v38);
    LOBYTE(v42) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    v31 = v23;
    v32 = v19;
    (*(v37 + 8))(v36, v38);
    v24 = v41;
    v25 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect + 16);
    v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
    v43 = v25;
    v44 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect);
    sub_1BB6BB744();
    v26 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity + 8);
    *&v42 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
    *(&v42 + 1) = v26;
    v44 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v42) = 4;
    sub_1BB6BB734();
    LOBYTE(v42) = 5;
    sub_1BB6BB734();
    LOBYTE(v42) = 6;
    sub_1BB6BB734();
    v27 = v35;
    sub_1BB62E5B8(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion, v35);
    LOBYTE(v42) = 7;
    v38 = type metadata accessor for DKMotion3();
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v27);
    v28 = v34;
    v33(v34, v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v6);
    LOBYTE(v42) = 8;
    sub_1BB6BB744();
    v31(v28, v6);
    LOBYTE(v42) = 9;
    sub_1BB6BB734();
    LOBYTE(v42) = 10;
    sub_1BB6BB724();
    *&v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation);
    v44 = 11;
    type metadata accessor for DKObjectObservation(0);
    sub_1BB62E6E4(&qword_1EBC5CF70, 255, type metadata accessor for DKObjectObservation);
    v29 = v40;
    sub_1BB6BB704();
    return (*(v39 + 8))(v18, v29);
  }
}

uint64_t DKObjectTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = v37 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BB6BA7F4();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = v37 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4F8);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = v37 - v14;
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion;
  v17 = type metadata accessor for DKMotion3();
  v18 = *(*(v17 - 8) + 56);
  v51 = v16;
  v18(v1 + v16, 1, 1, v17);
  v47 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation;
  v49 = a1;
  v50 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E7C0();
  v45 = v15;
  v19 = v48;
  sub_1BB6BB974();
  if (v19)
  {
    v36 = v50;
    sub_1BB62E628(v50 + v51);

    type metadata accessor for DKObjectTrackerState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v17;
    v38 = v11;
    v21 = v42;
    v20 = v43;
    LOBYTE(v52) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530]);
    v23 = v44;
    sub_1BB6BB684();
    v37[2] = v22;
    v25 = v9;
    v26 = *(v41 + 32);
    v27 = v50;
    v37[3] = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
    v44 = v25;
    v26(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time, v23);
    LOBYTE(v52) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8]);
    v28 = v8;
    v29 = v39;
    sub_1BB6BB684();
    v37[0] = v26;
    (*(v40 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid, v28, v29);
    type metadata accessor for CGRect(0);
    v54 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect);
    v37[1] = 0;
    sub_1BB6BB684();
    v30 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
    v31 = v53;
    *v30 = v52;
    v30[1] = v31;
    v54 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v32 = *(&v52 + 1);
    v33 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
    *v33 = v52;
    v33[1] = v32;
    LOBYTE(v52) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v52) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v52) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v52) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3);
    sub_1BB6BB644();
    sub_1BB62E4F4(v20, v27 + v51);
    LOBYTE(v52) = 8;
    v34 = v38;
    sub_1BB6BB684();
    (v37[0])(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v34, v44);
    LOBYTE(v52) = 9;
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v52) = 10;
    sub_1BB6BB664();
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKObjectObservation(0);
    v54 = 11;
    sub_1BB62E6E4(&qword_1EBC5CF68, 255, type metadata accessor for DKObjectObservation);
    sub_1BB6BB644();
    (*(v21 + 8))(v45, v46);
    v36 = v50;
    *(v50 + v47) = v52;
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v36;
}

void sub_1BB626144(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB62618C@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB6261B0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB626538@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKObjectTrackerState(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

void sub_1BB626664(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB6266A4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB6266C4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

unint64_t sub_1BB6269C8(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 1952671090;
      break;
    case 3:
      result = 0x797469746E656469;
      break;
    case 4:
      result = 0x644974736E61;
      break;
    case 5:
      result = 0x4972656B63617274;
      break;
    case 6:
      result = 0x644970756F7267;
      break;
    case 7:
      result = 0x6E6F69746F6DLL;
      break;
    case 8:
      result = 0x616470557473616CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6573624F7473616CLL;
      break;
    case 12:
      result = 0x74696C6172696863;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BB626B88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB634488();
  *a1 = result;
  return result;
}

unint64_t sub_1BB626BB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB6269C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BB626C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB634488();
  *a1 = result;
  return result;
}

uint64_t sub_1BB626C28(uint64_t a1)
{
  v2 = sub_1BB62E834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB626C64(uint64_t a1)
{
  v2 = sub_1BB62E834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKHandTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:lastObservation:trackerConfidence:chirality:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, char *a16)
{
  v24 = swift_allocObject();
  v25 = *a3;
  v26 = a3[1];
  v39 = *a16;
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v28 = type metadata accessor for DKMotion3();
  (*(*(v28 - 8) + 56))(v24 + v27, 1, 1, v28);
  v38 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v31 = sub_1BB6BA7F4();
  v32 = *(*(v31 - 8) + 32);
  v32(v24 + v30, a1, v31);
  v33 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v34 = sub_1BB6BA844();
  (*(*(v34 - 8) + 32))(v24 + v33, a2, v34);
  v35 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v35 = a9;
  v35[1] = a10;
  v35[2] = a11;
  v35[3] = a12;
  v36 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *v36 = v25;
  v36[1] = v26;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = a4;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = a5;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v24 + v27);
  v32(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, a8, v31);
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = a14;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = a13;
  *(v24 + v38) = a15;
  *(v24 + v29) = v39;
  return v24;
}

uint64_t DKHandTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:lastObservation:trackerConfidence:chirality:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, char *a16)
{
  v37 = *a3;
  v24 = a3[1];
  v41 = *a16;
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v26 = type metadata accessor for DKMotion3();
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation) = 0;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v30 = sub_1BB6BA7F4();
  v31 = *(*(v30 - 8) + 32);
  v31(v16 + v29, a1, v30);
  v32 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v33 = sub_1BB6BA844();
  (*(*(v33 - 8) + 32))(v16 + v32, a2, v33);
  v34 = (v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v34 = a9;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v35 = (v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *v35 = v37;
  v35[1] = v24;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = a4;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = a5;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v16 + v25);
  v31(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, a8, v30);
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = a14;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = a13;
  *(v16 + v27) = a15;

  *(v16 + v28) = v41;
  return v16;
}

uint64_t DKHandTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKHandTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB627370(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v27 - v3;
  v4 = sub_1BB6BA844();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D500);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E834();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time, v6);
  LOBYTE(v37) = 0;
  sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530]);
  v35 = v12;
  v17 = v15;
  v18 = v34;
  sub_1BB6BB744();
  if (v18)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v15, v35);
  }

  else
  {
    v28 = v16;
    v34 = v13;
    v20 = v11;
    v21 = *(v7 + 8);
    v21(v20, v6);
    (*(v32 + 16))(v31, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid, v33);
    LOBYTE(v37) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    v27 = v21;
    (*(v32 + 8))(v31, v33);
    v22 = v36;
    v23 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect + 16);
    v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
    v38 = v23;
    v39 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect);
    sub_1BB6BB744();
    v24 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity + 8);
    *&v37 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
    *(&v37 + 1) = v24;
    v39 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v37) = 4;
    sub_1BB6BB734();
    LOBYTE(v37) = 5;
    sub_1BB6BB734();
    LOBYTE(v37) = 6;
    sub_1BB6BB734();
    sub_1BB62E5B8(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion, v30);
    LOBYTE(v37) = 7;
    v33 = type metadata accessor for DKMotion3();
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v30);
    v28(v29, v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v6);
    v25 = v29;
    LOBYTE(v37) = 8;
    sub_1BB6BB744();
    v27(v25, v6);
    LOBYTE(v37) = 9;
    sub_1BB6BB734();
    LOBYTE(v37) = 10;
    sub_1BB6BB724();
    *&v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation);
    v39 = 11;
    type metadata accessor for DKHandObservation(0);
    sub_1BB62E6E4(&qword_1EBC5C598, 255, type metadata accessor for DKHandObservation);
    sub_1BB6BB704();
    LOBYTE(v37) = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality);
    v39 = 12;
    sub_1BB6049F0();
    v26 = v35;
    sub_1BB6BB744();
    return (*(v34 + 8))(v17, v26);
  }
}

uint64_t DKHandTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v37 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v37 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D510);
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v16 = type metadata accessor for DKMotion3();
  v17 = *(*(v16 - 8) + 56);
  v56 = v15;
  v17(v1 + v15, 1, 1, v16);
  v52 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation) = 0;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  v54 = a1;
  v55 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E834();
  v50 = v14;
  v19 = v53;
  sub_1BB6BB974();
  if (v19)
  {
    v36 = v55;
    sub_1BB62E628(v55 + v56);

    type metadata accessor for DKHandTrackerState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v53 = v16;
    v41 = v18;
    v42 = v10;
    v21 = v47;
    v20 = v48;
    LOBYTE(v57) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530]);
    v23 = v49;
    sub_1BB6BB684();
    v39 = v22;
    v25 = v8;
    v26 = *(v46 + 32);
    v27 = v55;
    v40 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
    v49 = v25;
    v26(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time, v23);
    LOBYTE(v57) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8]);
    v28 = v44;
    sub_1BB6BB684();
    v38 = v26;
    (*(v45 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid, v20, v28);
    type metadata accessor for CGRect(0);
    v59 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect);
    v48 = 0;
    sub_1BB6BB684();
    v29 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
    v30 = v58;
    *v29 = v57;
    v29[1] = v30;
    v59 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v31 = *(&v57 + 1);
    v32 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
    *v32 = v57;
    v32[1] = v31;
    LOBYTE(v57) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v57) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v57) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v57) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3);
    v33 = v43;
    sub_1BB6BB644();
    sub_1BB62E4F4(v33, v27 + v56);
    LOBYTE(v57) = 8;
    v34 = v42;
    sub_1BB6BB684();
    v38(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v34, v49);
    LOBYTE(v57) = 9;
    *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v57) = 10;
    sub_1BB6BB664();
    *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKHandObservation(0);
    v59 = 11;
    sub_1BB62E6E4(&qword_1EBC5C690, 255, type metadata accessor for DKHandObservation);
    sub_1BB6BB644();
    *(v55 + v52) = v57;

    v59 = 12;
    sub_1BB604A44();
    sub_1BB6BB684();
    (*(v21 + 8))(v50, v51);
    v36 = v55;
    *(v55 + v41) = v57;
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  return v36;
}

void sub_1BB6285B4(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB6285FC@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB628620(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB6289A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKHandTrackerState(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t DKBodyKeyPointList.init(keypoints:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    *&v13[0] = MEMORY[0x1E69E7CC0];

    sub_1BB5E5940(0, v3, 0);
    v4 = *&v13[0];
    v6 = *(*&v13[0] + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      *&v13[0] = v4;
      v9 = *(v4 + 24);
      if (v6 >= v9 >> 1)
      {
        v12 = v8;
        sub_1BB5E5940((v9 > 1), v6 + 1, 1);
        v8 = v12;
        v4 = *&v13[0];
      }

      *(v4 + 16) = v6 + 1;
      *(v4 + 16 * v6 + 32) = v8;
      v7 += 24;
      ++v6;
      --v3;
    }

    while (v3);
  }

  sub_1BB5A0278(v4, v13);

  if (v14)
  {

    type metadata accessor for DKBodyKeyPointList();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v10 = v13[1];
    *(v2 + 24) = v13[0];
    *(v2 + 40) = v10;
  }

  return v2;
}

char *sub_1BB628B80(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *a3;
  v8 = [a1 keypoints];
  if (!v8)
  {

    goto LABEL_49;
  }

  v9 = v8;
  sub_1BB634528();
  v10 = sub_1BB6BAE34();

  if (v10 >> 62)
  {
    v11 = sub_1BB6BB564();
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_38:

    v14 = MEMORY[0x1E69E7CC0];
LABEL_39:
    *(v4 + 16) = v14;
    v27 = *(v14 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      *&v40[0] = MEMORY[0x1E69E7CC0];

      sub_1BB5E5940(0, v27, 0);
      v28 = *&v40[0];
      v29 = *(*&v40[0] + 16);
      v30 = 32;
      do
      {
        v31 = *(v14 + v30);
        *&v40[0] = v28;
        v32 = *(v28 + 24);
        if (v29 >= v32 >> 1)
        {
          v35 = v31;
          sub_1BB5E5940((v32 > 1), v29 + 1, 1);
          v31 = v35;
          v28 = *&v40[0];
        }

        *(v28 + 16) = v29 + 1;
        *(v28 + 16 * v29 + 32) = v31;
        v30 += 24;
        ++v29;
        --v27;
      }

      while (v27);
    }

    sub_1BB5A0278(v28, v38);

    if (v39)
    {
    }

    else
    {
      v37 = v7;
      v36 = v6;
      sub_1BB5A4994(&v37, &v36, v40, v38[0], v38[1], v38[2], v38[3]);

      if ((v41 & 1) == 0)
      {
        v33 = v40[1];
        *(v4 + 24) = v40[0];
        *(v4 + 40) = v33;
        return v4;
      }
    }

LABEL_49:
    type metadata accessor for DKBodyKeyPointList();
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_4:
  *&v40[0] = MEMORY[0x1E69E7CC0];
  result = sub_1BB5E5960(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v34 = v4;
    v13 = 0;
    v14 = *&v40[0];
    while (1)
    {
      v15 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB111F0](v13, v10) : *(v10 + 8 * v13 + 32);
      v16 = v15;
      [v15 location];
      v18 = v17;
      v20 = 1.0 - v19;
      [v16 confidence];
      v22 = v21;

      if ((v6 - 1) <= 1)
      {
        break;
      }

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v23 = v20;
          goto LABEL_32;
        }

        if (v7 == 4)
        {
          v18 = 1.0 - v18;
          v23 = 1.0 - v20;
          goto LABEL_32;
        }

LABEL_17:
        v23 = v20;
        if (v7 != 7)
        {
          goto LABEL_25;
        }

        goto LABEL_32;
      }

      if (v7 == 1)
      {
        v23 = v18;
        goto LABEL_31;
      }

      if (v7 != 2)
      {
        goto LABEL_25;
      }

      v23 = 1.0 - v18;
      v18 = v20;
LABEL_32:
      *&v40[0] = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1BB5E5960((v24 > 1), v25 + 1, 1);
        v14 = *&v40[0];
      }

      ++v13;
      *(v14 + 16) = v25 + 1;
      v26 = (v14 + 24 * v25);
      v26[4] = v18;
      v26[5] = v23;
      v26[6] = v22;
      if (v11 == v13)
      {

        v4 = v34;
        goto LABEL_39;
      }
    }

    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v23 = v18;
        v18 = v20;
        goto LABEL_32;
      }

      if (v7 == 2)
      {
        v23 = 1.0 - v18;
LABEL_31:
        v18 = 1.0 - v20;
        goto LABEL_32;
      }

LABEL_25:
      v23 = 0.0;
      v18 = 0.0;
      goto LABEL_32;
    }

    if (v7 == 3)
    {
      v23 = 1.0 - v20;
      goto LABEL_32;
    }

    if (v7 == 4)
    {
      v18 = 1.0 - v18;
      v23 = v20;
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

IntelligentTrackingCore::DKBodyKeyPoint __swiftcall DKBodyKeyPoint.init(location:confidence:port:orientation:)(CGPoint location, Swift::Double confidence, IntelligentTrackingCore::DKCameraPort port, IntelligentTrackingCore::DKCameraOrientation orientation)
{
  v6 = v4;
  v7 = *port;
  v14 = *orientation;
  v13 = v7;
  v8 = COERCE_DOUBLE(sub_1BB5A4EBC(&v14, &v13, location.x, location.y));
  v10 = v9;
  v12 = 0.0;
  if (v11)
  {
    v10 = 0.0;
    v8 = 0.0;
  }

  *v6 = v8;
  v6[1] = v10;
  v6[2] = confidence;
  result.confidence = v12;
  result.location.y = v10;
  result.location.x = v8;
  return result;
}

uint64_t sub_1BB628FD4()
{
  if (*v0)
  {
    return 1952671090;
  }

  else
  {
    return 0x746E696F7079656BLL;
  }
}

uint64_t sub_1BB62900C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F7079656BLL && a2 == 0xE900000000000073;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB6290F0(uint64_t a1)
{
  v2 = sub_1BB62F064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB62912C(uint64_t a1)
{
  v2 = sub_1BB62F064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKBodyKeyPointList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6291C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D518);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F064();
  sub_1BB6BB984();
  *&v11[0] = *(v3 + 16);
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D528);
  sub_1BB62F10C(&qword_1EBC5D530, sub_1BB62F0B8);
  sub_1BB6BB744();
  if (!v2)
  {
    v9 = *(v3 + 40);
    v11[0] = *(v3 + 24);
    v11[1] = v9;
    v12 = 1;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect);
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKBodyKeyPointList.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKBodyKeyPointList.init(from:)(a1);
  return v2;
}

uint64_t DKBodyKeyPointList.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D540);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F064();
  sub_1BB6BB974();
  if (v2)
  {
    type metadata accessor for DKBodyKeyPointList();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D528);
    v11 = 0;
    sub_1BB62F10C(&qword_1EBC5D548, sub_1BB62F184);
    sub_1BB6BB684();
    *(v1 + 16) = *&v10[0];
    type metadata accessor for CGRect(0);
    v11 = 1;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect);
    sub_1BB6BB684();
    (*(v5 + 8))(v7, v4);
    v9 = v10[1];
    *(v1 + 24) = v10[0];
    *(v1 + 40) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1BB6296C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DKBodyKeyPointList();
  v5 = swift_allocObject();
  result = DKBodyKeyPointList.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1BB6297A0()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1BB6297E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB6298C4(uint64_t a1)
{
  v2 = sub_1BB62F1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB629900(uint64_t a1)
{
  v2 = sub_1BB62F1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKBodyKeyPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D558);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F1D8();
  sub_1BB6BB984();
  v11[0] = v8;
  v11[1] = v9;
  v12 = 0;
  type metadata accessor for CGPoint(0);
  sub_1BB62E6E4(&qword_1EBC5C0B8, 255, type metadata accessor for CGPoint);
  sub_1BB6BB744();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_1BB6BB724();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DKBodyKeyPoint.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D568);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F1D8();
  sub_1BB6BB974();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v14[15] = 0;
    sub_1BB62E6E4(&qword_1EBC5C0F0, 255, type metadata accessor for CGPoint);
    sub_1BB6BB684();
    v9 = v15;
    v10 = v16;
    LOBYTE(v15) = 1;
    sub_1BB6BB664();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1BB629EB4(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1BB629EE4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1BB629F10@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void sub_1BB62A0F0(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB62A130@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB62A150(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB62A2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v11 - v8;
  sub_1BB62E5B8(a1, &v11 - v8);
  return sub_1BB62E4F4(v9, *a2 + *a5);
}

uint64_t sub_1BB62A3A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  (*(v10 + 16))(&v14 - v11, a1, v9);
  return (*(v10 + 40))(*a2 + *a6, v12, v9);
}

uint64_t sub_1BB62A4BC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_1BB62A554(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 40);

  return v7(v3 + v5, a1, v6);
}

uint64_t sub_1BB62A654(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceYaw;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB62A6B0(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_facePitch;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB62A70C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceRoll;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB62A840@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *a2 = *v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
}

uint64_t sub_1BB62A89C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  *v5 = *a1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v4;
}

uint64_t sub_1BB62A92C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 8);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 16);
  v5 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 24);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1BB62A984(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation;
  *v4 = *a1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

void sub_1BB62AAC4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB62AE6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void), void *a7)
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  sub_1BB62F22C(a1, &v14 - v11, a6);
  return sub_1BB62F294(v12, *a2 + *a7, a6);
}

unint64_t sub_1BB62AFFC(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 1952671090;
      break;
    case 3:
    case 27:
      result = 0x797469746E656469;
      break;
    case 4:
      result = 0x644974736E61;
      break;
    case 5:
      result = 0x756F724774736E61;
      break;
    case 6:
      result = 0x4972656B63617274;
      break;
    case 7:
      result = 0x644970756F7267;
      break;
    case 8:
      result = 0x6E6F69746F6DLL;
      break;
    case 9:
      result = 0x616470557473616CLL;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x77615965636166;
      break;
    case 12:
      result = 0x6374695065636166;
      break;
    case 13:
      result = 0x6C6C6F5265636166;
      break;
    case 14:
      result = 0x6573624F7473616CLL;
      break;
    case 15:
      result = 0x70756F7267;
      break;
    case 16:
      result = 0x7463655279646F62;
      break;
    case 17:
      result = 0x7079654B79646F62;
      break;
    case 18:
    case 21:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0x666E6F436B6E6172;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 1701869940;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
      result = 0x6572694465636166;
      break;
    case 26:
      result = 0x676E696B63617274;
      break;
    case 28:
      result = 0x6F697463656C6573;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BB62B324(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BB62AFFC(*a1);
  v5 = v4;
  if (v3 == sub_1BB62AFFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BB6BB7E4();
  }

  return v8 & 1;
}

uint64_t sub_1BB62B3AC()
{
  v1 = *v0;
  sub_1BB6BB924();
  sub_1BB62AFFC(v1);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB62B410()
{
  sub_1BB62AFFC(*v0);
  sub_1BB6BACC4();
}

uint64_t sub_1BB62B464()
{
  v1 = *v0;
  sub_1BB6BB924();
  sub_1BB62AFFC(v1);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB62B4C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6344D4();
  *a1 = result;
  return result;
}

unint64_t sub_1BB62B4F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB62AFFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BB62B528@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6344D4();
  *a1 = result;
  return result;
}

uint64_t sub_1BB62B55C(uint64_t a1)
{
  v2 = sub_1BB62F35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB62B598(uint64_t a1)
{
  v2 = sub_1BB62F35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKPersonTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v2);

  sub_1BB62F2FC(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, type metadata accessor for DKPersonGroup);

  sub_1BB62F2FC(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, type metadata accessor for DKIdentityFilter.IdentityState);
  return v0;
}

uint64_t DKPersonTrackerState.__deallocating_deinit()
{
  DKPersonTrackerState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB62B80C(void *a1)
{
  v51 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DKPersonGroup(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = v48 - v5;
  v6 = sub_1BB6BA844();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D570);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v48 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F35C();
  sub_1BB6BB984();
  v59 = v9;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v18 = v20;
  v20(v13, v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v8);
  LOBYTE(v64) = 0;
  v21 = sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530]);
  v61 = v14;
  v62 = v17;
  v22 = v60;
  sub_1BB6BB744();
  if (v22)
  {
    (*(v59 + 8))(v13, v8);
    return (*(v15 + 8))(v62, v61);
  }

  else
  {
    v48[1] = v19;
    v48[2] = v21;
    v49 = v18;
    v60 = v15;
    v24 = *(v59 + 8);
    v24(v13, v8);
    v26 = v56;
    v25 = v57;
    v27 = v63;
    (*(v56 + 16))(v58, v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v57);
    LOBYTE(v64) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8]);
    v28 = v61;
    sub_1BB6BB744();
    v59 = v8;
    (*(v26 + 8))(v58, v25);
    v29 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 16);
    v64 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
    v65 = v29;
    v66 = 2;
    type metadata accessor for CGRect(0);
    v31 = v30;
    v32 = sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect);
    sub_1BB6BB744();
    v58 = v32;
    v33 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity + 8);
    *&v64 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity);
    *(&v64 + 1) = v33;
    v66 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    v34 = v60;
    LOBYTE(v64) = 4;
    sub_1BB6BB734();
    LOBYTE(v64) = 5;
    sub_1BB6BB734();
    LOBYTE(v64) = 6;
    sub_1BB6BB734();
    v57 = v31;
    LOBYTE(v64) = 7;
    sub_1BB6BB734();
    v35 = v55;
    sub_1BB62E5B8(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, v55);
    LOBYTE(v64) = 8;
    type metadata accessor for DKMotion3();
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3);
    sub_1BB6BB704();
    v56 = 0;
    sub_1BB62E628(v35);
    v36 = v54;
    v37 = v59;
    v49(v54, v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v59);
    LOBYTE(v64) = 9;
    v38 = v62;
    v39 = v56;
    sub_1BB6BB744();
    v24(v36, v37);
    if (v39)
    {
      return (*(v34 + 8))(v38, v28);
    }

    else
    {
      LOBYTE(v64) = 10;
      sub_1BB6BB734();
      LOBYTE(v64) = 11;
      sub_1BB6BB6E4();
      LOBYTE(v64) = 12;
      sub_1BB6BB6E4();
      LOBYTE(v64) = 13;
      sub_1BB6BB6E4();
      v40 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 8);
      v41 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 16);
      v42 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 24);
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
      *(&v64 + 1) = v40;
      *&v65 = v41;
      *(&v65 + 1) = v42;
      v66 = 14;
      sub_1BB5D24F8();

      sub_1BB6BB744();

      sub_1BB62F22C(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, v53, type metadata accessor for DKPersonGroup);
      LOBYTE(v64) = 15;
      sub_1BB62E6E4(&qword_1EBC5D580, 255, type metadata accessor for DKPersonGroup);
      sub_1BB6BB744();
      sub_1BB62F2FC(v53, type metadata accessor for DKPersonGroup);
      v43 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect + 16);
      v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect);
      v65 = v43;
      v66 = 16;
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints);
      v66 = 17;
      type metadata accessor for DKBodyKeyPointList();
      sub_1BB62E6E4(&qword_1EBC5CAE8, v44, type metadata accessor for DKBodyKeyPointList);
      sub_1BB6BB704();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_speakingConfidence);
      v66 = 18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C390);
      sub_1BB62F520(&qword_1EBC5D588, &qword_1EBC5C390);
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lookingConfidence);
      v66 = 19;
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence);
      v66 = 20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420);
      sub_1BB62F520(&qword_1EBC5D590, &qword_1EBC5C420);
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_saliencyConfidence);
      v66 = 21;
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionConfidence);
      v66 = 22;
      sub_1BB6BB744();
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type);
      v66 = 23;
      sub_1BB62F3B0();
      sub_1BB6BB744();
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification);
      v66 = 24;
      sub_1BB62F404();
      sub_1BB6BB744();
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection);
      v66 = 25;
      sub_1BB62F458();
      sub_1BB6BB744();
      LOBYTE(v64) = 26;
      sub_1BB6BB714();
      v45 = v50;
      sub_1BB62F22C(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v50, type metadata accessor for DKIdentityFilter.IdentityState);
      LOBYTE(v64) = 27;
      sub_1BB62E6E4(&qword_1EBC5D5B0, 255, type metadata accessor for DKIdentityFilter.IdentityState);
      sub_1BB6BB744();
      sub_1BB62F2FC(v45, type metadata accessor for DKIdentityFilter.IdentityState);
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionReason);
      v66 = 28;
      sub_1BB62F4AC();
      sub_1BB6BB744();
      v46 = v62;
      LOBYTE(v64) = 29;
      v47 = v61;
      sub_1BB6BB724();
      return (*(v60 + 8))(v46, v47);
    }
  }
}

uint64_t sub_1BB62C770(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t DKPersonTrackerState.init(from:)(void *a1)
{
  v102 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  MEMORY[0x1EEE9AC00](v102);
  v103 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DKPersonGroup(0);
  MEMORY[0x1EEE9AC00](v104);
  v105 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v108 = v95 - v6;
  v111 = sub_1BB6BA844();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v112 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v107 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D5C0);
  v114 = *(v12 - 8);
  v115 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v95 - v13;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion;
  v16 = type metadata accessor for DKMotion3();
  v17 = *(*(v16 - 8) + 56);
  v125 = v15;
  v109 = v16;
  v17(v1 + v15, 1, 1);
  v18 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceYaw;
  *v18 = 0;
  v106 = v18;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_facePitch;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceRoll;
  *v20 = 0;
  *(v20 + 8) = 1;
  v120 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceTracker;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceTracker) = 0;
  v121 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyTracker;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyTracker) = 0;
  v21 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_handTrackers;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_handTrackers) = MEMORY[0x1E69E7CC0];
  v122 = v21;
  v123 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints) = 0;
  v100 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type) = 0;
  v101 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification) = 2;
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection) = 3;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackingLock;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackingLock) = 0;
  v24 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence;
  v126 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence) = 0;
  v25 = a1;
  v26 = a1[3];
  v124 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1BB62F35C();
  v118 = v14;
  v27 = v119;
  sub_1BB6BB974();
  if (v27)
  {
    v32 = v126;
    sub_1BB62E628(v126 + v125);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    LODWORD(v119) = 0;
    v39 = 0;
    goto LABEL_4;
  }

  v28 = v112;
  v119 = v19;
  v99 = v20;
  v96 = v22;
  v97 = v23;
  v98 = v24;
  LOBYTE(v128) = 0;
  v29 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530]);
  v30 = v113;
  v31 = v117;
  sub_1BB6BB684();
  v43 = v31;
  v44 = *(v116 + 32);
  v45 = v126;
  v44(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v30, v43);
  LOBYTE(v128) = 1;
  sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8]);
  v46 = v111;
  sub_1BB6BB684();
  v113 = v29;
  (*(v110 + 32))(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v28, v46);
  type metadata accessor for CGRect(0);
  v48 = v47;
  v127 = 2;
  v49 = sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect);
  v112 = 0;
  sub_1BB6BB684();
  v95[0] = v49;
  v95[1] = v48;
  v50 = (v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  v51 = v129;
  *v50 = v128;
  v50[1] = v51;
  v127 = 3;
  sub_1BB604730();
  sub_1BB6BB684();
  v52 = *(&v128 + 1);
  v53 = (v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity);
  *v53 = v128;
  v53[1] = v52;
  LOBYTE(v128) = 4;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_anstId) = sub_1BB6BB674();
  LOBYTE(v128) = 5;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_anstGroupId) = sub_1BB6BB674();
  LOBYTE(v128) = 6;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId) = sub_1BB6BB674();
  LOBYTE(v128) = 7;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_groupId) = sub_1BB6BB674();
  LOBYTE(v128) = 8;
  sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3);
  v54 = v108;
  sub_1BB6BB644();
  sub_1BB62E4F4(v54, v45 + v125);
  LOBYTE(v128) = 9;
  sub_1BB6BB684();
  v113 = 0;
  v44(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v107, v117);
  LOBYTE(v128) = 10;
  v56 = v113;
  v57 = sub_1BB6BB674();
  v113 = v56;
  if (v56 || (*(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_framesSinceLastUpdate) = v57, LOBYTE(v128) = 11, v58 = v113, v59 = sub_1BB6BB624(), (v113 = v58) != 0) || (v61 = v106, *v106 = v59, *(v61 + 8) = v60 & 1, LOBYTE(v128) = 12, v62 = v113, v63 = sub_1BB6BB624(), (v113 = v62) != 0) || (v65 = v119, *v119 = v63, *(v65 + 8) = v64 & 1, LOBYTE(v128) = 13, v66 = v113, v67 = sub_1BB6BB624(), (v113 = v66) != 0) || (v69 = v99, *v99 = v67, *(v69 + 8) = v68 & 1, v127 = 14, sub_1BB5D2CC8(), v70 = v113, sub_1BB6BB684(), (v113 = v70) != 0))
  {
    (*(v114 + 8))(v118, v115);
    v39 = 0;
    LODWORD(v119) = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
LABEL_36:
    v71 = v112;
    v32 = v126;
    v55 = *(v116 + 8);
    v116 += 8;
    v55(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v117);
    if (v71)
    {
      sub_1BB62E628(v32 + v125);
      if (!v115)
      {
LABEL_27:
        v33 = v118;
LABEL_4:

        if (v39)
        {

          v32 = v126;
        }

        if (v119)
        {
          sub_1BB62F2FC(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, type metadata accessor for DKPersonGroup);
        }

        v40 = v124;
        if (v38)
        {

          if (!v37)
          {
LABEL_10:
            if (!v36)
            {
              goto LABEL_11;
            }

            goto LABEL_20;
          }
        }

        else if (!v37)
        {
          goto LABEL_10;
        }

        if (!v36)
        {
LABEL_11:
          if (!v35)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }

LABEL_20:

        if (!v35)
        {
LABEL_12:
          if (!v34)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }

LABEL_21:

        if (!v34)
        {
LABEL_13:
          if (!v33)
          {
LABEL_15:
            type metadata accessor for DKPersonTrackerState(0);
            swift_deallocPartialClassInstance();
            goto LABEL_16;
          }

LABEL_14:
          sub_1BB62F2FC(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, type metadata accessor for DKIdentityFilter.IdentityState);
          goto LABEL_15;
        }

LABEL_22:

        if (!v33)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      (*(v110 + 8))(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v111);
      sub_1BB62E628(v32 + v125);
      if ((v115 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v55(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v117);
    goto LABEL_27;
  }

  v72 = v129;
  v73 = (v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  *v73 = v128;
  v73[1] = v72;
  LOBYTE(v128) = 15;
  sub_1BB62E6E4(&qword_1EBC5D5C8, 255, type metadata accessor for DKPersonGroup);
  v74 = v113;
  sub_1BB6BB684();
  v113 = v74;
  if (v74)
  {
    (*(v114 + 8))(v118, v115);
    LODWORD(v119) = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    goto LABEL_36;
  }

  sub_1BB62F664(v105, v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, type metadata accessor for DKPersonGroup);
  v127 = 16;
  v75 = v113;
  sub_1BB6BB684();
  v113 = v75;
  if (v75 || (v76 = (v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect), v77 = v129, *v76 = v128, v76[1] = v77, type metadata accessor for DKBodyKeyPointList(), v127 = 17, sub_1BB62E6E4(&qword_1EBC5CAF8, v78, type metadata accessor for DKBodyKeyPointList), v79 = v113, sub_1BB6BB644(), (v113 = v79) != 0) || (*(v126 + v123) = v128, , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C390), v127 = 18, sub_1BB62F520(&qword_1EBC5D5D0, &qword_1EBC5C390), v80 = v113, sub_1BB6BB684(), (v113 = v80) != 0))
  {
    (*(v114 + 8))(v118, v115);
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_speakingConfidence) = v128;
  v127 = 19;
  v81 = v113;
  sub_1BB6BB684();
  v113 = v81;
  if (v81)
  {
    (*(v114 + 8))(v118, v115);
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lookingConfidence) = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420);
  v127 = 20;
  sub_1BB62F520(&qword_1EBC5D5D8, &qword_1EBC5C420);
  v82 = v113;
  sub_1BB6BB684();
  v113 = v82;
  if (v82)
  {
    (*(v114 + 8))(v118, v115);
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) = v128;
  v127 = 21;
  v83 = v113;
  sub_1BB6BB684();
  v113 = v83;
  if (v83)
  {
    (*(v114 + 8))(v118, v115);
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_saliencyConfidence) = v128;
  v127 = 22;
  v84 = v113;
  sub_1BB6BB684();
  v113 = v84;
  if (v84)
  {
    (*(v114 + 8))(v118, v115);
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionConfidence) = v128;
  v127 = 23;
  sub_1BB62F568();
  v85 = v113;
  sub_1BB6BB684();
  v113 = v85;
  if (v85 || (*(v126 + v100) = v128, v127 = 24, sub_1BB62F5BC(), v86 = v113, sub_1BB6BB684(), (v113 = v86) != 0) || (*(v126 + v101) = v128, v127 = 25, sub_1BB62F610(), v87 = v113, sub_1BB6BB684(), (v113 = v87) != 0) || (*(v126 + v96) = v128, LOBYTE(v128) = 26, v88 = v113, v89 = sub_1BB6BB654(), (v113 = v88) != 0) || (*(v126 + v97) = v89 & 1, LOBYTE(v128) = 27, sub_1BB62E6E4(&qword_1EBC5D5F8, 255, type metadata accessor for DKIdentityFilter.IdentityState), v90 = v113, sub_1BB6BB684(), (v113 = v90) != 0))
  {
    (*(v114 + 8))(v118, v115);
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    v34 = 1;
    goto LABEL_36;
  }

  sub_1BB62F664(v103, v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, type metadata accessor for DKIdentityFilter.IdentityState);
  v127 = 28;
  sub_1BB62F6CC();
  v91 = v113;
  sub_1BB6BB684();
  v113 = v91;
  if (v91)
  {
    (*(v114 + 8))(v118, v115);
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    v34 = 1;
    LODWORD(v118) = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionReason) = v128;
  LOBYTE(v128) = 29;
  v92 = v113;
  sub_1BB6BB664();
  if (!v92)
  {
    v94 = v93;
    (*(v114 + 8))(v118, v115);
    v32 = v126;
    *(v126 + v98) = v94;
    v41 = v124;
    goto LABEL_17;
  }

  v32 = v126;

  (*(v114 + 8))(v118, v115);
  v40 = v124;
LABEL_16:
  v41 = v40;
LABEL_17:
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v32;
}

void sub_1BB62DE74(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB62DEBC@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB62DEE0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB62E0A4@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_1BB62E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = *v5;
  v8 = *a4;
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 40);

  return v10(v7 + v8, a1, v9);
}

uint64_t sub_1BB62E2D0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1BB62E364@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKPersonTrackerState(0);
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t sub_1BB62E3A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BB693B84(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1BB6BB784();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1BB6BAE94();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1BB62E8CC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1BB62E4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BB62E564()
{
  result = qword_1EBC5D4A8;
  if (!qword_1EBC5D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4A8);
  }

  return result;
}

uint64_t sub_1BB62E5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB62E628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BB62E690()
{
  result = qword_1EBC5D4C0;
  if (!qword_1EBC5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4C0);
  }

  return result;
}

uint64_t sub_1BB62E6E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB62E74C()
{
  result = qword_1EBC5D4D8;
  if (!qword_1EBC5D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4D8);
  }

  return result;
}

unint64_t sub_1BB62E7C0()
{
  result = qword_1EBC5D4F0;
  if (!qword_1EBC5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4F0);
  }

  return result;
}

unint64_t sub_1BB62E834()
{
  result = qword_1EBC5D508;
  if (!qword_1EBC5D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D508);
  }

  return result;
}

uint64_t sub_1BB62E8CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1BB693A54(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1BB62EE60((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BB59D140(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1BB59D140((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1BB62EE60((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1BB62EE60(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t sub_1BB62F064()
{
  result = qword_1EBC5D520;
  if (!qword_1EBC5D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D520);
  }

  return result;
}

unint64_t sub_1BB62F0B8()
{
  result = qword_1EBC5D538;
  if (!qword_1EBC5D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D538);
  }

  return result;
}

uint64_t sub_1BB62F10C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5D528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB62F184()
{
  result = qword_1EBC5D550;
  if (!qword_1EBC5D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D550);
  }

  return result;
}

unint64_t sub_1BB62F1D8()
{
  result = qword_1EBC5D560;
  if (!qword_1EBC5D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D560);
  }

  return result;
}

uint64_t sub_1BB62F22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB62F294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB62F2FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BB62F35C()
{
  result = qword_1EBC5D578;
  if (!qword_1EBC5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D578);
  }

  return result;
}

unint64_t sub_1BB62F3B0()
{
  result = qword_1EBC5D598;
  if (!qword_1EBC5D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D598);
  }

  return result;
}

unint64_t sub_1BB62F404()
{
  result = qword_1EBC5D5A0;
  if (!qword_1EBC5D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5A0);
  }

  return result;
}

unint64_t sub_1BB62F458()
{
  result = qword_1EBC5D5A8;
  if (!qword_1EBC5D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5A8);
  }

  return result;
}

unint64_t sub_1BB62F4AC()
{
  result = qword_1EBC5D5B8;
  if (!qword_1EBC5D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5B8);
  }

  return result;
}

uint64_t sub_1BB62F520(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB62F568()
{
  result = qword_1EBC5D5E0;
  if (!qword_1EBC5D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5E0);
  }

  return result;
}

unint64_t sub_1BB62F5BC()
{
  result = qword_1EBC5D5E8;
  if (!qword_1EBC5D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5E8);
  }

  return result;
}

unint64_t sub_1BB62F610()
{
  result = qword_1EBC5D5F0;
  if (!qword_1EBC5D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5F0);
  }

  return result;
}

uint64_t sub_1BB62F664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BB62F6CC()
{
  result = qword_1EBC5D600;
  if (!qword_1EBC5D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D600);
  }

  return result;
}

unint64_t sub_1BB62F724()
{
  result = qword_1EBC5D608;
  if (!qword_1EBC5D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D608);
  }

  return result;
}

uint64_t sub_1BB62F778(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6B0, 255, type metadata accessor for DKFaceTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C5C8, 255, type metadata accessor for DKFaceTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D610, 255, type metadata accessor for DKFaceTrackerState);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB62F830(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6C0, 255, type metadata accessor for DKBodyTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C5E0, 255, type metadata accessor for DKBodyTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D618, 255, type metadata accessor for DKBodyTrackerState);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB62F8E8(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5D620, 255, type metadata accessor for DKObjectTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5D628, 255, type metadata accessor for DKObjectTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D630, 255, type metadata accessor for DKObjectTrackerState);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB62F9A0(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6D0, 255, type metadata accessor for DKHandTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C5F8, 255, type metadata accessor for DKHandTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D638, 255, type metadata accessor for DKHandTrackerState);
  a1[4] = result;
  return result;
}

unint64_t sub_1BB62FA5C()
{
  result = qword_1EBC5D640;
  if (!qword_1EBC5D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D640);
  }

  return result;
}

unint64_t sub_1BB62FAB4()
{
  result = qword_1EBC5D648;
  if (!qword_1EBC5D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D648);
  }

  return result;
}

unint64_t sub_1BB62FB0C()
{
  result = qword_1EBC5D650;
  if (!qword_1EBC5D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D650);
  }

  return result;
}

unint64_t sub_1BB62FB64()
{
  result = qword_1EBC5D658;
  if (!qword_1EBC5D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D658);
  }

  return result;
}

uint64_t sub_1BB62FBB8(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6E0, 255, type metadata accessor for DKPersonTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C608, 255, type metadata accessor for DKPersonTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D660, 255, type metadata accessor for DKPersonTrackerState);
  a1[4] = result;
  return result;
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v5 + v6, v7);
}

void sub_1BB62FF5C()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v1 <= 0x3F)
    {
      sub_1BB630970();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BB630970()
{
  if (!qword_1EBC5D678)
  {
    type metadata accessor for DKMotion3();
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5D678);
    }
  }
}

void sub_1BB631054()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v1 <= 0x3F)
    {
      sub_1BB630970();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BB631818()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v1 <= 0x3F)
    {
      sub_1BB630970();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DKPersonSelectionReason(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for DKPersonSelectionReason(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

void sub_1BB632300()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v1 <= 0x3F)
    {
      sub_1BB630970();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DKPersonGroup(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for DKIdentityFilter.IdentityState(319);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DKPersonTrackerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKPersonTrackerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BB6338B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
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

  return (v8 + 1);
}

uint64_t sub_1BB633944(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKFaceTrackerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKFaceTrackerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB633B68()
{
  result = qword_1EBC5D6C0;
  if (!qword_1EBC5D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6C0);
  }

  return result;
}

unint64_t sub_1BB633BC0()
{
  result = qword_1EBC5D6C8;
  if (!qword_1EBC5D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6C8);
  }

  return result;
}

unint64_t sub_1BB633C18()
{
  result = qword_1EBC5D6D0;
  if (!qword_1EBC5D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6D0);
  }

  return result;
}

unint64_t sub_1BB633C70()
{
  result = qword_1EBC5D6D8;
  if (!qword_1EBC5D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6D8);
  }

  return result;
}

unint64_t sub_1BB633CC8()
{
  result = qword_1EBC5D6E0;
  if (!qword_1EBC5D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6E0);
  }

  return result;
}

unint64_t sub_1BB633D20()
{
  result = qword_1EBC5D6E8;
  if (!qword_1EBC5D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6E8);
  }

  return result;
}

unint64_t sub_1BB633D78()
{
  result = qword_1EBC5D6F0;
  if (!qword_1EBC5D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6F0);
  }

  return result;
}

unint64_t sub_1BB633DD0()
{
  result = qword_1EBC5D6F8;
  if (!qword_1EBC5D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6F8);
  }

  return result;
}

unint64_t sub_1BB633E28()
{
  result = qword_1EBC5D700;
  if (!qword_1EBC5D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D700);
  }

  return result;
}

unint64_t sub_1BB633E80()
{
  result = qword_1EBC5D708;
  if (!qword_1EBC5D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D708);
  }

  return result;
}

unint64_t sub_1BB633ED8()
{
  result = qword_1EBC5D710;
  if (!qword_1EBC5D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D710);
  }

  return result;
}

unint64_t sub_1BB633F30()
{
  result = qword_1EBC5D718;
  if (!qword_1EBC5D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D718);
  }

  return result;
}

unint64_t sub_1BB633F88()
{
  result = qword_1EBC5D720;
  if (!qword_1EBC5D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D720);
  }

  return result;
}

unint64_t sub_1BB633FE0()
{
  result = qword_1EBC5D728;
  if (!qword_1EBC5D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D728);
  }

  return result;
}

unint64_t sub_1BB634038()
{
  result = qword_1EBC5D730;
  if (!qword_1EBC5D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D730);
  }

  return result;
}

unint64_t sub_1BB634090()
{
  result = qword_1EBC5D738;
  if (!qword_1EBC5D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D738);
  }

  return result;
}

unint64_t sub_1BB6340E8()
{
  result = qword_1EBC5D740;
  if (!qword_1EBC5D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D740);
  }

  return result;
}

unint64_t sub_1BB634140()
{
  result = qword_1EBC5D748;
  if (!qword_1EBC5D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D748);
  }

  return result;
}

unint64_t sub_1BB634198()
{
  result = qword_1EBC5D750;
  if (!qword_1EBC5D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D750);
  }

  return result;
}

unint64_t sub_1BB6341F0()
{
  result = qword_1EBC5D758;
  if (!qword_1EBC5D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D758);
  }

  return result;
}

unint64_t sub_1BB634248()
{
  result = qword_1EBC5D760;
  if (!qword_1EBC5D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D760);
  }

  return result;
}

unint64_t sub_1BB6342A0()
{
  result = qword_1EBC5D768;
  if (!qword_1EBC5D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D768);
  }

  return result;
}

unint64_t sub_1BB6342F8()
{
  result = qword_1EBC5D770;
  if (!qword_1EBC5D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D770);
  }

  return result;
}

unint64_t sub_1BB634350()
{
  result = qword_1EBC5D778;
  if (!qword_1EBC5D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D778);
  }

  return result;
}

uint64_t sub_1BB6343A4()
{
  v0 = sub_1BB6BB5D4();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BB6343F0()
{
  v0 = sub_1BB6BB5D4();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BB63443C()
{
  v0 = sub_1BB6BB5D4();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BB634488()
{
  v0 = sub_1BB6BB5D4();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BB6344D4()
{
  v0 = sub_1BB6BB804();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BB634528()
{
  result = qword_1EBC5D780;
  if (!qword_1EBC5D780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC5D780);
  }

  return result;
}

uint64_t sub_1BB6345A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1BB599B50(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v13;
  }

  else
  {
    v8 = sub_1BB6A1320(a2);
    v10 = v9;

    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v14 = *v3;
      if (!v11)
      {
        sub_1BB5EA2F0();
        v12 = v14;
      }

      result = sub_1BB63F250(v8, v12);
      *v3 = v12;
    }
  }

  return result;
}

uint64_t sub_1BB634680(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1BB598308(a1, &qword_1EBC5D7E0);
    sub_1BB63E994(a2, v7);
    v13 = sub_1BB6BA844();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1BB598308(v7, &qword_1EBC5D7E0);
  }

  else
  {
    sub_1BB6448B8(a1, v11, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1BB5997A8(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1BB6BA844();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1BB6348A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1BB6BA7F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1BB598308(a1, &qword_1EBC5C050);
    v13 = sub_1BB6A1004(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BB5EAB18();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1BB63F3EC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BB598308(v8, &qword_1EBC5C050);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1BB599DCC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1BB634AF0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1BFB111F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1BB6BB564();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1BB634C2C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

double DKPersonGroupConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[1] = xmmword_1BB6BE560;
  v0[2] = xmmword_1BB6BE570;
  result = 0.75;
  v0[3] = xmmword_1BB6BE580;
  return result;
}

void *DKPersonGroupFilter.__allocating_init(configuration:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CD0];
  result[4] = MEMORY[0x1E69E7CC8];
  result[5] = v4;
  v5 = MEMORY[0x1E69E7CC0];
  result[6] = v3;
  result[7] = v5;
  result[8] = v4;
  result[9] = v4;
  result[10] = v4;
  result[2] = a1;
  result[3] = v3;
  return result;
}

size_t sub_1BB634D70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BB6A08D8(*(a1 + 16), 0);
  v4 = *(type metadata accessor for DKPersonGroup(0) - 8);
  v5 = sub_1BB6A36A8(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_1BB593660();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1BB634E38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BB6A0854(*(a1 + 16), 0);
  v4 = sub_1BB6A2C28(&v6, v3 + 4, v2, a1);
  sub_1BB593660();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

double DKPersonGroupConfiguration.init()()
{
  v0[1] = xmmword_1BB6BE560;
  v0[2] = xmmword_1BB6BE570;
  result = 0.75;
  v0[3] = xmmword_1BB6BE580;
  return result;
}

_OWORD *DKPersonGroupConfiguration.__allocating_init(configuration:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[2];
  v2[1] = a1[1];
  v2[2] = v3;
  v2[3] = a1[3];

  return v2;
}

void *DKPersonGroupConfiguration.init(configuration:)(void *a1)
{
  v1 = sub_1BB644574(a1);

  return v1;
}

uint64_t DKPersonGroup.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DKPersonGroup(0) + 24);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DKPersonGroup.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKPersonGroup(0) + 24);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DKPersonGroup.handUUIDs.getter()
{
  type metadata accessor for DKPersonGroup(0);
}

uint64_t DKPersonGroup.handUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKPersonGroup(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

char *DKPersonGroup.getUUIDs()()
{
  v1 = v0;
  v2 = sub_1BB6BA844();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  v5 = *(v38 - 8);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D788);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v36 = swift_allocObject();
  v14 = v36 + v13;
  v15 = type metadata accessor for DKPersonGroup(0);
  sub_1BB5982A0(v1 + *(v15 + 32), v14, &qword_1EBC5C370);
  v35 = v15;
  v16 = *(v15 + 36);
  v39 = v1;
  v17 = v1 + v16;
  v18 = v2;
  sub_1BB5982A0(v17, v14 + v12, &qword_1EBC5C370);
  v34 = v14;
  sub_1BB5982A0(v14, v11, &qword_1EBC5C370);
  sub_1BB60DF90(v11, v8, &qword_1EBC5C370);
  v19 = (v3 + 32);
  v37 = v3;
  v20 = *(v3 + 48);
  v21 = v20(v8, 1, v18);
  v40 = (v3 + 32);
  if (v21 == 1)
  {
    sub_1BB598308(v8, &qword_1EBC5C370);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = v33;
  }

  else
  {
    v23 = v33;
    v32 = *v19;
    v32(v33, v8, v18);
    v22 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1BB59CF10(0, *(v22 + 2) + 1, 1, v22);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1BB59CF10(v24 > 1, v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v32(&v22[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25], v23, v18);
  }

  sub_1BB5982A0(v34 + v12, v11, &qword_1EBC5C370);
  sub_1BB60DF90(v11, v8, &qword_1EBC5C370);
  if (v20(v8, 1, v18) == 1)
  {
    sub_1BB598308(v8, &qword_1EBC5C370);
  }

  else
  {
    v26 = *v40;
    (*v40)(v23, v8, v18);
    v27 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1BB59CF10(0, *(v22 + 2) + 1, 1, v22);
    }

    v29 = *(v22 + 2);
    v28 = *(v22 + 3);
    if (v29 >= v28 >> 1)
    {
      v22 = sub_1BB59CF10(v28 > 1, v29 + 1, 1, v22);
    }

    *(v22 + 2) = v29 + 1;
    v26(&v22[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29], v27, v18);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = v22;

  sub_1BB5C8AEC(v30);
  return v41;
}

uint64_t DKPersonGroup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1BB6BA844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for DKPersonGroup(0);
  v17 = v16[8];
  v28 = v2;
  sub_1BB5982A0(v2 + v17, v15, &qword_1EBC5C370);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    (*(v4 + 32))(v9, v15, v3);
    sub_1BB6BB944();
    sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
    sub_1BB6BAB84();
    (*(v4 + 8))(v9, v3);
  }

  sub_1BB5982A0(v28 + v16[9], v12, &qword_1EBC5C370);
  if (v18(v12, 1, v3) == 1)
  {
    v19 = v4;
    sub_1BB6BB944();
  }

  else
  {
    (*(v4 + 32))(v9, v12, v3);
    sub_1BB6BB944();
    sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
    sub_1BB6BAB84();
    v19 = v4;
    (*(v4 + 8))(v9, v3);
  }

  v20 = *(v28 + v16[10]);
  result = MEMORY[0x1BFB117B0](*(v20 + 16));
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = v19 + 16;
    v24 = *(v19 + 16);
    v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);
    do
    {
      v24(v6, v25, v3);
      sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
      sub_1BB6BAB84();
      result = (*(v23 - 8))(v6, v3);
      v25 += v26;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t static DKPersonGroup.== infix(_:_:)()
{
  v0 = DKPersonGroup.getUUIDs()();
  v1 = DKPersonGroup.getUUIDs()();
  v2 = sub_1BB63601C(v0, v1);

  return v2 & 1;
}

uint64_t sub_1BB635DAC(uint64_t result, uint64_t a2)
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

uint64_t sub_1BB635E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1BB644798(v13, v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
    if (!v11)
    {
      break;
    }

    sub_1BB644798(v14, v6, type metadata accessor for DKIdentityFilter.IdentityProbability);
    if ((sub_1BB6BA814() & 1) == 0 || *&v10[*(v4 + 20)] != *&v6[*(v4 + 20)])
    {
      sub_1BB644800(v6, type metadata accessor for DKIdentityFilter.IdentityProbability);
      sub_1BB644800(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
      return 0;
    }

    v17 = *&v10[*(v4 + 24)];
    sub_1BB644800(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
    v18 = *&v6[*(v4 + 24)];
    sub_1BB644800(v6, type metadata accessor for DKIdentityFilter.IdentityProbability);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB63601C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BB6BA844();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
    v22 = sub_1BB6BABE4();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB636230()
{
  v1 = *v0;
  v2 = 0x644970756F7267;
  v3 = 0x4449555579646F62;
  if (v1 != 5)
  {
    v3 = 0x44495555646E6168;
  }

  v4 = 0x55556E6F73726570;
  if (v1 != 3)
  {
    v4 = 0x4449555565636166;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656469666E6F63;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461657263;
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

uint64_t sub_1BB636320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6453BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB636348(uint64_t a1)
{
  v2 = sub_1BB6445CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB636384(uint64_t a1)
{
  v2 = sub_1BB6445CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKPersonGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6445CC();
  sub_1BB6BB984();
  v18 = 0;
  sub_1BB6BB734();
  if (!v2)
  {
    v17 = 1;
    sub_1BB6BB724();
    v10 = type metadata accessor for DKPersonGroup(0);
    v16 = 2;
    sub_1BB6BA7F4();
    sub_1BB644620(&qword_1EBC5C548, MEMORY[0x1E6969530]);
    sub_1BB6BB744();
    v15 = 3;
    sub_1BB6BA844();
    sub_1BB644620(&qword_1EBC5CE38, MEMORY[0x1E69695A8]);
    sub_1BB6BB704();
    v14 = 4;
    sub_1BB6BB704();
    v13 = 5;
    sub_1BB6BB704();
    v11[1] = *(v3 + *(v10 + 40));
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7A0);
    sub_1BB644668(&qword_1EBC5D7A8, &qword_1EBC5CE38);
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKPersonGroup.hashValue.getter()
{
  sub_1BB6BB924();
  DKPersonGroup.hash(into:)(v1);
  return sub_1BB6BB964();
}

uint64_t DKPersonGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v31 - v8;
  v9 = sub_1BB6BA7F4();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7B0);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v31 - v12;
  v14 = type metadata accessor for DKPersonGroup(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 28);
  v19 = sub_1BB6BA844();
  v20 = *(*(v19 - 8) + 56);
  v45 = v18;
  v20(v16 + v18, 1, 1, v19);
  v44 = v14[8];
  v20(v16 + v44, 1, 1, v19);
  v43 = v14[9];
  v20(v16 + v43, 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6445CC();
  v41 = v13;
  v21 = v42;
  sub_1BB6BB974();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24 = v43;
    sub_1BB598308(v16 + v45, &qword_1EBC5C370);
    sub_1BB598308(v16 + v44, &qword_1EBC5C370);
    return sub_1BB598308(v16 + v24, &qword_1EBC5C370);
  }

  else
  {
    v23 = v38;
    v22 = v39;
    v42 = a1;
    v53 = 0;
    *v16 = sub_1BB6BB674();
    v52 = 1;
    sub_1BB6BB664();
    v16[1] = v25;
    v51 = 2;
    sub_1BB644620(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v26 = v37;
    sub_1BB6BB684();
    v32 = v14;
    (*(v36 + 32))(v16 + v14[6], v11, v26);
    v50 = 3;
    sub_1BB644620(&qword_1EBC5CE68, MEMORY[0x1E69695A8]);
    sub_1BB6BB644();
    sub_1BB5BA0DC(v22, v16 + v45, &qword_1EBC5C370);
    v49 = 4;
    v27 = v35;
    sub_1BB6BB644();
    sub_1BB5BA0DC(v27, v16 + v44, &qword_1EBC5C370);
    v48 = 5;
    v28 = v34;
    sub_1BB6BB644();
    sub_1BB5BA0DC(v28, v16 + v43, &qword_1EBC5C370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7A0);
    v47 = 6;
    sub_1BB644668(&qword_1EBC5D7B8, &qword_1EBC5CE68);
    sub_1BB6BB684();
    v29 = v32[10];
    (*(v23 + 8))(v41, v40);
    *(v16 + v29) = v46;
    sub_1BB644798(v16, v33, type metadata accessor for DKPersonGroup);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_1BB644800(v16, type metadata accessor for DKPersonGroup);
  }
}

uint64_t sub_1BB636E90()
{
  sub_1BB6BB924();
  DKPersonGroup.hash(into:)(v1);
  return sub_1BB6BB964();
}

uint64_t sub_1BB636ED4()
{
  sub_1BB6BB924();
  DKPersonGroup.hash(into:)(v1);
  return sub_1BB6BB964();
}

uint64_t sub_1BB636F40()
{
  v0 = DKPersonGroup.getUUIDs()();
  v1 = DKPersonGroup.getUUIDs()();
  v2 = sub_1BB63601C(v0, v1);

  return v2 & 1;
}

uint64_t static DKPersonGroupFilter.StampedPerson.== infix(_:_:)()
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DKPersonGroupFilter.StampedPerson(0);

  return sub_1BB6BA814();
}

uint64_t DKPersonGroupFilter.StampedPerson.hash(into:)()
{
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  return sub_1BB6BAB84();
}

uint64_t DKPersonGroupFilter.StampedPerson.hashValue.getter()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  return sub_1BB6BB964();
}

uint64_t sub_1BB6371CC()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  return sub_1BB6BB964();
}

uint64_t sub_1BB6372B8()
{
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  return sub_1BB6BAB84();
}

uint64_t sub_1BB63738C()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  return sub_1BB6BB964();
}

uint64_t sub_1BB637474()
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  return sub_1BB6BA814();
}

uint64_t DKPersonGroupFilter.Track.lastGroupId.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DKPersonGroupFilter.Track.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DKPersonGroupFilter.Track(0) + 20);
  v4 = sub_1BB6BA844();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DKPersonGroupFilter.Track.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKPersonGroupFilter.Track(0) + 20);
  v4 = sub_1BB6BA844();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DKPersonGroupFilter.Track.identity.setter(uint64_t a1)
{
  result = type metadata accessor for DKPersonGroupFilter.Track(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1BB6376F8()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0x797469746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72477473616CLL;
  }
}

uint64_t sub_1BB637754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB645620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB63777C(uint64_t a1)
{
  v2 = sub_1BB644744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6377B8(uint64_t a1)
{
  v2 = sub_1BB644744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKPersonGroupFilter.Track.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB644744();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BB6F4();
  if (!v1)
  {
    type metadata accessor for DKPersonGroupFilter.Track(0);
    v8[14] = 1;
    sub_1BB6BA844();
    sub_1BB644620(&qword_1EBC5CE38, MEMORY[0x1E69695A8]);
    sub_1BB6BB744();
    v8[13] = 2;
    sub_1BB6BB734();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKPersonGroupFilter.Track.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v1 = *v0;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v1);
  }

  v2 = type metadata accessor for DKPersonGroupFilter.Track(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  return MEMORY[0x1BFB117B0](*(v0 + *(v2 + 24)));
}

uint64_t DKPersonGroupFilter.Track.hashValue.getter()
{
  sub_1BB6BB924();
  if (*(v0 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v1 = *v0;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v1);
  }

  v2 = type metadata accessor for DKPersonGroupFilter.Track(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  MEMORY[0x1BFB117B0](*(v0 + *(v2 + 24)));
  return sub_1BB6BB964();
}

uint64_t DKPersonGroupFilter.Track.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1BB6BA844();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7D0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DKPersonGroupFilter.Track(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB644744();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  *v11 = sub_1BB6BB634();
  v21 = v11;
  v11[8] = v15 & 1;
  v29 = 1;
  sub_1BB644620(&qword_1EBC5CE68, MEMORY[0x1E69695A8]);
  v16 = v6;
  sub_1BB6BB684();
  v17 = v21;
  (*(v13 + 32))(&v21[*(v9 + 20)], v16, v14);
  v28 = 2;
  v18 = sub_1BB6BB674();
  (*(v12 + 8))(v8, v27);
  *(v17 + *(v9 + 24)) = v18;
  sub_1BB644798(v17, v23, type metadata accessor for DKPersonGroupFilter.Track);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1BB644800(v17, type metadata accessor for DKPersonGroupFilter.Track);
}

uint64_t sub_1BB637F38(uint64_t a1)
{
  sub_1BB6BB924();
  if (*(v1 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v3 = *v1;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v3);
  }

  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  MEMORY[0x1BFB117B0](*(v1 + *(a1 + 24)));
  return sub_1BB6BB964();
}

uint64_t sub_1BB638020(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v4 = *v2;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v4);
  }

  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  return MEMORY[0x1BFB117B0](*(v2 + *(a2 + 24)));
}

uint64_t sub_1BB6380F4(uint64_t a1, uint64_t a2)
{
  sub_1BB6BB924();
  if (*(v2 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v4 = *v2;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v4);
  }

  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  MEMORY[0x1BFB117B0](*(v2 + *(a2 + 24)));
  return sub_1BB6BB964();
}

uint64_t DKPersonGroupFilter.State.activeGroups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DKPersonGroupFilter.State.activeIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DKPersonGroupFilter.State.createdIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DKPersonGroupFilter.State.killedIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void *DKPersonGroupFilter.init(configuration:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CC0];
  v1[6] = MEMORY[0x1E69E7CC8];
  v1[7] = v3;
  v4 = MEMORY[0x1E69E7CD0];
  v1[4] = v2;
  v1[5] = v4;
  v1[8] = v4;
  v1[9] = v4;
  v1[10] = v4;
  v1[2] = a1;
  v1[3] = v2;
  return v1;
}

uint64_t sub_1BB638390()
{

  v1 = MEMORY[0x1E69E7CC8];
  v0[6] = MEMORY[0x1E69E7CC8];

  v0[3] = v1;

  v0[4] = v1;
  v2 = MEMORY[0x1E69E7CD0];
  v0[7] = MEMORY[0x1E69E7CC0];
  v0[8] = v2;
  v0[9] = v2;
  v0[10] = v2;
}

uint64_t sub_1BB638428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v666 = a1;
  v595 = a5;
  v690[9] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v658 = &v594 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v654 = &v594 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v650 = &v594 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v653 = &v594 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v641 = &v594 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v640 = (&v594 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v639 = (&v594 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v618 = &v594 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v630 = &v594 - v25;
  v633 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v597 = *(v633 - 8);
  MEMORY[0x1EEE9AC00](v633);
  v617 = &v594 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v616 = &v594 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v644 = &v594 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v629 = &v594 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v628 = &v594 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v627 = &v594 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v626 = &v594 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v643 = &v594 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v645 = &v594 - v42;
  v631 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C468);
  v596 = *(v631 - 8);
  MEMORY[0x1EEE9AC00](v631);
  v625 = &v594 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v638 = &v594 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v624 = &v594 - v47;
  v668 = sub_1BB6BA7F4();
  v600 = *(v668 - 8);
  MEMORY[0x1EEE9AC00](v668);
  v637 = &v594 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v598 = &v594 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v599 = &v594 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v665 = &v594 - v54;
  v657 = type metadata accessor for DKPersonGroup(0);
  v651 = *(v657 - 8);
  MEMORY[0x1EEE9AC00](v657);
  v660 = &v594 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v652 = &v594 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v636 = &v594 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v649 = &v594 - v61;
  v655 = type metadata accessor for DKPersonGroupFilter.Track(0);
  v62 = *(v655 - 8);
  MEMORY[0x1EEE9AC00](v655 - 8);
  v619 = &v594 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v615 = &v594 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v614 = &v594 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v664 = &v594 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v670 = (&v594 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v674 = &v594 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v671 = &v594 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v679 = &v594 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v669 = &v594 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v687 = &v594 - v81;
  v82 = sub_1BB6BA844();
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v610 = &v594 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v620 = &v594 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v642 = &v594 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v612 = &v594 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v621 = &v594 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v661 = &v594 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v659 = &v594 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v632 = &v594 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v623 = &v594 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v634 = &v594 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v601 = &v594 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v672 = (&v594 - v106);
  MEMORY[0x1EEE9AC00](v107);
  v681 = &v594 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v678 = (&v594 - v110);
  MEMORY[0x1EEE9AC00](v111);
  v680 = &v594 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v682 = (&v594 - v114);
  MEMORY[0x1EEE9AC00](v115);
  v683 = &v594 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v677 = &v594 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v676 = &v594 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v675 = &v594 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v594 - v124;
  MEMORY[0x1EEE9AC00](v126);
  *&v662 = &v594 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v594 - v129;
  v602 = a4;
  v609 = sub_1BB643678(a2, a3, a4);
  v131 = *(a2 + 16);
  v132 = MEMORY[0x1E69E7CC0];
  v667 = v83;
  v622 = v62;
  v605 = a3;
  v608 = a2;
  v685 = v131;
  *&v663 = v125;
  if (v131)
  {
    v690[0] = MEMORY[0x1E69E7CC0];
    v133 = v131;
    sub_1BB5E5860(0, v131, 0);
    v134 = v655;
    v132 = v690[0];
    v135 = a2 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v686 = *(v62 + 72);
    v136 = v82;
    v137 = (v83 + 32);
    v138 = v133;
    do
    {
      v139 = v687;
      sub_1BB644798(v135, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v140 = *v137;
      (*v137)(v130, v139 + *(v134 + 20), v136);
      v690[0] = v132;
      v142 = *(v132 + 16);
      v141 = *(v132 + 24);
      if (v142 >= v141 >> 1)
      {
        sub_1BB5E5860(v141 > 1, v142 + 1, 1);
        v134 = v655;
        v132 = v690[0];
      }

      *(v132 + 16) = v142 + 1;
      v140((v132 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v142), v130, v136);
      v135 += v686;
      --v138;
    }

    while (v138);
    v82 = v136;
    v83 = v667;
    a3 = v605;
    a2 = v608;
    v125 = v663;
  }

  v143 = *(a3 + 16);
  v144 = MEMORY[0x1E69E7CC0];
  v686 = v143;
  if (v143)
  {
    v656 = v132;
    v690[0] = MEMORY[0x1E69E7CC0];
    sub_1BB5E5860(0, v143, 0);
    v144 = v690[0];
    v145 = a3 + ((*(v622 + 80) + 32) & ~*(v622 + 80));
    v673 = *(v622 + 72);
    v146 = v82;
    v147 = (v83 + 32);
    v148 = v143;
    v149 = v655;
    v150 = v662;
    do
    {
      v151 = v687;
      sub_1BB644798(v145, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v152 = *v147;
      (*v147)(v150, v151 + *(v149 + 20), v146);
      v690[0] = v144;
      v154 = *(v144 + 16);
      v153 = *(v144 + 24);
      if (v154 >= v153 >> 1)
      {
        sub_1BB5E5860(v153 > 1, v154 + 1, 1);
        v149 = v655;
        v144 = v690[0];
      }

      *(v144 + 16) = v154 + 1;
      v152(v144 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v154, v150, v146);
      v145 += v673;
      --v148;
    }

    while (v148);
    v82 = v146;
    v83 = v667;
    a2 = v608;
    v125 = v663;
    v132 = v656;
  }

  v690[0] = v132;
  sub_1BB5C8AEC(v144);
  v155 = v690[0];
  v156 = v602;
  v157 = *(v602 + 16);
  v158 = MEMORY[0x1E69E7CC0];
  v611 = v157;
  if (v157)
  {
    *&v662 = v690[0];
    v690[0] = MEMORY[0x1E69E7CC0];
    sub_1BB5E5860(0, v157, 0);
    v158 = v690[0];
    v159 = v156 + ((*(v622 + 80) + 32) & ~*(v622 + 80));
    v673 = *(v622 + 72);
    v160 = (v83 + 32);
    v161 = v157;
    v162 = v655;
    v163 = v82;
    do
    {
      v164 = v687;
      sub_1BB644798(v159, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v165 = *v160;
      (*v160)(v125, v164 + *(v162 + 20), v163);
      v690[0] = v158;
      v167 = *(v158 + 16);
      v166 = *(v158 + 24);
      if (v167 >= v166 >> 1)
      {
        sub_1BB5E5860(v166 > 1, v167 + 1, 1);
        v162 = v655;
        v158 = v690[0];
      }

      *(v158 + 16) = v167 + 1;
      v165((v158 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v167), v125, v163);
      v159 += v673;
      --v161;
    }

    while (v161);
    v82 = v163;
    a2 = v608;
    v155 = v662;
  }

  v690[0] = v155;
  sub_1BB5C8AEC(v158);
  v603 = sub_1BB5CA9D0(v690[0]);

  v168 = MEMORY[0x1E69E7CC0];
  v169 = v669;
  if (v685)
  {
    v170 = (*(v622 + 80) + 32) & ~*(v622 + 80);
    v171 = *(v622 + 72);
    v172 = a2 + v170;
    v173 = MEMORY[0x1E69E7CC0];
    v174 = v685;
    v175 = v671;
    do
    {
      sub_1BB644798(v172, v169, type metadata accessor for DKPersonGroupFilter.Track);
      if (*(v169 + 8))
      {
        sub_1BB644800(v169, type metadata accessor for DKPersonGroupFilter.Track);
      }

      else
      {
        sub_1BB6448B8(v169, v679, type metadata accessor for DKPersonGroupFilter.Track);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v690[0] = v173;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E5840(0, *(v173 + 16) + 1, 1);
          v175 = v671;
          v173 = v690[0];
        }

        v178 = *(v173 + 16);
        v177 = *(v173 + 24);
        if (v178 >= v177 >> 1)
        {
          sub_1BB5E5840(v177 > 1, v178 + 1, 1);
          v175 = v671;
          v173 = v690[0];
        }

        *(v173 + 16) = v178 + 1;
        sub_1BB6448B8(v679, v173 + v170 + v178 * v171, type metadata accessor for DKPersonGroupFilter.Track);
        v169 = v669;
      }

      v172 += v171;
      --v174;
    }

    while (v174);
  }

  else
  {
    v173 = MEMORY[0x1E69E7CC0];
    v175 = v671;
  }

  v679 = v82;
  v179 = *(v173 + 16);
  if (v179)
  {
    v690[0] = v168;
    sub_1BB63E91C(v179);
    v180 = v173 + ((*(v622 + 80) + 32) & ~*(v622 + 80));
    v181 = *(v622 + 72);
    v182 = (v667 + 32);
    v183 = v655;
    v184 = v679;
    v185 = v675;
    do
    {
      v186 = v687;
      sub_1BB644798(v180, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v187 = *v182;
      (*v182)(v185, v186 + *(v183 + 20), v184);
      v188 = v690[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v188 + 16) + 1, 1);
        v183 = v655;
        v188 = v690[0];
      }

      v190 = *(v188 + 16);
      v189 = *(v188 + 24);
      if (v190 >= v189 >> 1)
      {
        sub_1BB5E5860(v189 > 1, v190 + 1, 1);
        v183 = v655;
        v188 = v690[0];
      }

      *(v188 + 16) = v190 + 1;
      v191 = v188 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v190;
      v185 = v675;
      v184 = v679;
      v187(v191, v675, v679);
      v690[0] = v188;
      v180 += v181;
      --v179;
    }

    while (v179);

    v175 = v671;
  }

  else
  {

    v188 = MEMORY[0x1E69E7CC0];
  }

  v192 = MEMORY[0x1E69E7CC0];
  v193 = v686;
  if (v686)
  {
    v194 = (*(v622 + 80) + 32) & ~*(v622 + 80);
    v195 = *(v622 + 72);
    v196 = v605 + v194;
    v197 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BB644798(v196, v175, type metadata accessor for DKPersonGroupFilter.Track);
      if (*(v175 + 8))
      {
        sub_1BB644800(v175, type metadata accessor for DKPersonGroupFilter.Track);
      }

      else
      {
        sub_1BB6448B8(v175, v674, type metadata accessor for DKPersonGroupFilter.Track);
        v198 = swift_isUniquelyReferenced_nonNull_native();
        v690[0] = v197;
        if ((v198 & 1) == 0)
        {
          sub_1BB5E5840(0, *(v197 + 16) + 1, 1);
          v175 = v671;
          v197 = v690[0];
        }

        v200 = *(v197 + 16);
        v199 = *(v197 + 24);
        if (v200 >= v199 >> 1)
        {
          sub_1BB5E5840(v199 > 1, v200 + 1, 1);
          v175 = v671;
          v197 = v690[0];
        }

        *(v197 + 16) = v200 + 1;
        sub_1BB6448B8(v674, v197 + v194 + v200 * v195, type metadata accessor for DKPersonGroupFilter.Track);
      }

      v196 += v195;
      --v193;
    }

    while (v193);
  }

  else
  {
    v197 = MEMORY[0x1E69E7CC0];
  }

  v201 = *(v197 + 16);
  if (v201)
  {
    v690[0] = v192;
    sub_1BB63E91C(v201);
    v202 = (*(v622 + 80) + 32) & ~*(v622 + 80);
    v674 = v197;
    v203 = v197 + v202;
    v675 = *(v622 + 72);
    v204 = (v667 + 32);
    v205 = v655;
    v206 = v679;
    v207 = v676;
    do
    {
      v208 = v687;
      sub_1BB644798(v203, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v209 = *v204;
      (*v204)(v207, v208 + *(v205 + 20), v206);
      v210 = v690[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v210 + 16) + 1, 1);
        v205 = v655;
        v210 = v690[0];
      }

      v212 = *(v210 + 16);
      v211 = *(v210 + 24);
      if (v212 >= v211 >> 1)
      {
        sub_1BB5E5860(v211 > 1, v212 + 1, 1);
        v205 = v655;
        v210 = v690[0];
      }

      *(v210 + 16) = v212 + 1;
      v213 = v210 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v212;
      v207 = v676;
      v206 = v679;
      v209(v213, v676, v679);
      v690[0] = v210;
      v203 += v675;
      --v201;
    }

    while (v201);
  }

  else
  {

    v210 = MEMORY[0x1E69E7CC0];
  }

  v690[0] = v188;
  sub_1BB5C8AEC(v210);
  v675 = v690[0];
  v214 = MEMORY[0x1E69E7CC0];
  v215 = v611;
  v216 = v683;
  v217 = v670;
  if (v611)
  {
    v218 = (*(v622 + 80) + 32) & ~*(v622 + 80);
    v219 = *(v622 + 72);
    v220 = v602 + v218;
    v221 = MEMORY[0x1E69E7CC0];
    v222 = v664;
    do
    {
      sub_1BB644798(v220, v217, type metadata accessor for DKPersonGroupFilter.Track);
      if (*(v217 + 8))
      {
        sub_1BB644800(v217, type metadata accessor for DKPersonGroupFilter.Track);
      }

      else
      {
        sub_1BB6448B8(v217, v222, type metadata accessor for DKPersonGroupFilter.Track);
        v223 = swift_isUniquelyReferenced_nonNull_native();
        v690[0] = v221;
        if ((v223 & 1) == 0)
        {
          sub_1BB5E5840(0, *(v221 + 16) + 1, 1);
          v222 = v664;
          v221 = v690[0];
        }

        v225 = *(v221 + 16);
        v224 = *(v221 + 24);
        if (v225 >= v224 >> 1)
        {
          sub_1BB5E5840(v224 > 1, v225 + 1, 1);
          v222 = v664;
          v221 = v690[0];
        }

        *(v221 + 16) = v225 + 1;
        sub_1BB6448B8(v222, v221 + v218 + v225 * v219, type metadata accessor for DKPersonGroupFilter.Track);
        v216 = v683;
        v217 = v670;
      }

      v220 += v219;
      --v215;
    }

    while (v215);
  }

  else
  {
    v221 = MEMORY[0x1E69E7CC0];
  }

  v226 = *(v221 + 16);
  if (v226)
  {
    v690[0] = v214;
    sub_1BB63E91C(v226);
    v227 = v221 + ((*(v622 + 80) + 32) & ~*(v622 + 80));
    v676 = *(v622 + 72);
    v228 = (v667 + 32);
    v229 = v655;
    v230 = v679;
    v231 = v677;
    do
    {
      v232 = v687;
      sub_1BB644798(v227, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v233 = *v228;
      (*v228)(v231, v232 + *(v229 + 20), v230);
      v234 = v690[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v234 + 16) + 1, 1);
        v229 = v655;
        v234 = v690[0];
      }

      v236 = *(v234 + 16);
      v235 = *(v234 + 24);
      if (v236 >= v235 >> 1)
      {
        sub_1BB5E5860(v235 > 1, v236 + 1, 1);
        v229 = v655;
        v234 = v690[0];
      }

      *(v234 + 16) = v236 + 1;
      v237 = v234 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v236;
      v231 = v677;
      v230 = v679;
      v233(v237, v677, v679);
      v690[0] = v234;
      v227 += v676;
      --v226;
      v238 = v680;
    }

    while (v226);

    v216 = v683;
  }

  else
  {

    v234 = MEMORY[0x1E69E7CC0];
    v238 = v680;
  }

  v690[0] = v675;
  sub_1BB5C8AEC(v234);
  v635 = sub_1BB5CA9D0(v690[0]);

  v239 = MEMORY[0x1E69E7CC0];
  v240 = v679;
  if (v685)
  {
    v690[0] = MEMORY[0x1E69E7CC0];
    sub_1BB63E91C(v685);
    v241 = v608 + ((*(v622 + 80) + 32) & ~*(v622 + 80));
    v242 = *(v622 + 72);
    v243 = (v667 + 32);
    v244 = v655;
    do
    {
      v245 = v687;
      sub_1BB644798(v241, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v246 = *v243;
      (*v243)(v216, v245 + *(v244 + 20), v240);
      v239 = v690[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v239 + 16) + 1, 1);
        v244 = v655;
        v239 = v690[0];
      }

      v248 = *(v239 + 16);
      v247 = *(v239 + 24);
      if (v248 >= v247 >> 1)
      {
        sub_1BB5E5860(v247 > 1, v248 + 1, 1);
        v244 = v655;
        v239 = v690[0];
      }

      *(v239 + 16) = v248 + 1;
      v249 = v239 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v248;
      v216 = v683;
      v246(v249, v683, v240);
      v690[0] = v239;
      v241 += v242;
      --v685;
    }

    while (v685);
    v238 = v680;
  }

  v250 = MEMORY[0x1E69E7CC0];
  if (v686)
  {
    v690[0] = MEMORY[0x1E69E7CC0];
    sub_1BB63E91C(v686);
    v251 = v605 + ((*(v622 + 80) + 32) & ~*(v622 + 80));
    v685 = *(v622 + 72);
    v252 = (v667 + 32);
    v253 = v655;
    v254 = v682;
    do
    {
      v255 = v687;
      sub_1BB644798(v251, v687, type metadata accessor for DKPersonGroupFilter.Track);
      v256 = *v252;
      (*v252)(v254, v255 + *(v253 + 20), v240);
      v250 = v690[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v250 + 16) + 1, 1);
        v253 = v655;
        v250 = v690[0];
      }

      v258 = *(v250 + 16);
      v257 = *(v250 + 24);
      if (v258 >= v257 >> 1)
      {
        sub_1BB5E5860(v257 > 1, v258 + 1, 1);
        v253 = v655;
        v250 = v690[0];
      }

      *(v250 + 16) = v258 + 1;
      v254 = v682;
      v256(v250 + ((v667[80] + 32) & ~v667[80]) + *(v667 + 9) * v258, v682, v240);
      v690[0] = v250;
      v251 += v685;
      v259 = v686-- == 1;
      v238 = v680;
    }

    while (!v259);
  }

  v690[0] = v239;
  sub_1BB5C8AEC(v250);
  v607 = sub_1BB5CA9D0(v690[0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF48);
  inited = swift_initStackObject();
  v261 = MEMORY[0x1E69E7CD0];
  *(inited + 16) = xmmword_1BB6BD520;
  v682 = inited;
  *(inited + 32) = v261;
  v262 = v609;
  v263 = v678;
  v604 = *(v609 + 16);
  if (!v604)
  {

    v265 = v667;
    goto LABEL_129;
  }

  v264 = 0;
  v606 = v609 + ((*(v651 + 80) + 32) & ~*(v651 + 80));
  v265 = v667;
  v266 = (v667 + 8);
  v664 = (v600 + 16);
  *&v663 = v600 + 56;
  v662 = xmmword_1BB6BE460;
  v669 = v667 + 16;
  v670 = (v667 + 8);
  while (1)
  {
    if (v264 >= *(v262 + 16))
    {
      goto LABEL_320;
    }

    v268 = *(v651 + 72);
    v613 = v264;
    sub_1BB644798(v606 + v268 * v264, v649, type metadata accessor for DKPersonGroup);
    v269 = DKPersonGroup.getUUIDs()();
    v648 = *(v269 + 2);
    if (v648)
    {
      break;
    }

LABEL_97:

    v267 = v613 + 1;
    sub_1BB644800(v649, type metadata accessor for DKPersonGroup);
    v264 = v267;
    v262 = v609;
    if (v267 == v604)
    {
      goto LABEL_312;
    }
  }

  v270 = 0;
  v671 = v265[80];
  v676 = (v671 + 32) & ~v671;
  v647 = &v269[v676];
  v646 = v269;
LABEL_103:
  if (v270 >= *(v269 + 2))
  {
    goto LABEL_316;
  }

  v273 = *(v265 + 9);
  v656 = v270;
  v677 = *(v265 + 2);
  (v677)(v238, &v647[v273 * v270], v240);
  v274 = DKPersonGroup.getUUIDs()();
  v683 = *(v274 + 2);
  if (!v683)
  {

    v271 = *v266;
    goto LABEL_102;
  }

  v275 = 0;
  v276 = &v274[v676];
  v674 = (v676 + 2 * v273);
  v265 = v677;
  v277 = v274;
  v673 = v273;
  v675 = v274;
  while (1)
  {
    if (v275 >= *(v277 + 16))
    {
      __break(1u);
      while (1)
      {

        v473 = v688;
        v413 = v684;
        while (1)
        {
          v474 = v413[8];
          v475 = v671;
          if (*(v473 + 16) > *(v474 + 16) >> 3)
          {

            v476 = sub_1BB63F984(v473, v474);
          }

          else
          {
            v690[0] = v413[8];

            sub_1BB63F768(v473);
            v476 = v690[0];
          }

          v413[10] = v476;

          v477 = v413[8];
          if (*(v477 + 16) <= *(v473 + 16) >> 3)
          {
            v690[0] = v473;

            sub_1BB63F768(v477);

            v478 = v690[0];
          }

          else
          {

            v478 = sub_1BB63F984(v477, v473);
          }

          v413[9] = v478;

          v413[8] = v473;

          v479 = v619;
          if (!v611)
          {
LABEL_309:

            v413[7] = sub_1BB634D70(v587);

            v588 = v413[8];
            v589 = v413[9];
            v590 = v413[10];
            v591 = v595;
            *v595 = v413[7];
            v591[1] = v588;
            v591[2] = v589;
            v591[3] = v590;
          }

          v480 = 0;
          v668 = v602 + ((*(v622 + 80) + 32) & ~*(v622 + 80));
          v678 = v667 + 48;
          v672 = (v651 + 48);
          v666 = *(v622 + 72);
LABEL_228:
          v481 = sub_1BB644798(v668 + v666 * v480, v479, type metadata accessor for DKPersonGroupFilter.Track);
          v482 = v413[6];
          MEMORY[0x1EEE9AC00](v481);
          *(&v594 - 2) = v479;
          *(&v594 - 1) = v607;

          v483 = sub_1BB64044C(sub_1BB644898, (&v594 - 4), v482, sub_1BB6416E8, sub_1BB6416E8);

          v484 = 1 << *(v483 + 32);
          if (v484 < 64)
          {
            v485 = ~(-1 << v484);
          }

          else
          {
            v485 = -1;
          }

          v486 = v485 & *(v483 + 64);
          if (v486)
          {
            v670 = v480;
            v671 = v475;
            v487 = 0;
            v488 = __clz(__rbit64(v486));
            v489 = (v486 - 1) & v486;
            v490 = (v484 + 63) >> 6;
            goto LABEL_237;
          }

          v491 = v413;
          v492 = 0;
          v490 = (v484 + 63) >> 6;
          do
          {
            if (v490 - 1 == v486)
            {

              v413 = v491;
LABEL_227:
              ++v480;
              v479 = v619;
              sub_1BB644800(v619, type metadata accessor for DKPersonGroupFilter.Track);
              if (v480 == v611)
              {
                goto LABEL_309;
              }

              goto LABEL_228;
            }

            v487 = v486 + 1;
            v493 = *(v483 + 8 * v486 + 72);
            v492 -= 64;
            ++v486;
          }

          while (!v493);
          v670 = v480;
          v671 = v475;
          v489 = (v493 - 1) & v493;
          v488 = __clz(__rbit64(v493)) - v492;
LABEL_237:
          v494 = *(*(v483 + 56) + 8 * v488);
          v686 = *(*(v483 + 48) + 8 * v488);

          while (2)
          {
            if (v489)
            {
LABEL_243:
              v496 = __clz(__rbit64(v489));
              v489 &= v489 - 1;
              v497 = v496 | (v487 << 6);
              v498 = *(*(v483 + 56) + 8 * v497);
              if (*(v494 + 33) == 1)
              {
                if (*(v494 + 32) == 1)
                {
                  v499 = atan2(*(v494 + 48), *(v494 + 56));
                }

                else
                {
                  v499 = *(v494 + 40);
                }

                if (*(v498 + 33) != 1)
                {
                  if (v499 >= 0.0)
                  {
                    continue;
                  }

                  goto LABEL_256;
                }

                if (*(v498 + 32) != 1)
                {
LABEL_253:
                  if (v499 >= *(v498 + 40))
                  {
                    continue;
                  }

                  goto LABEL_256;
                }
              }

              else
              {
                if (*(v498 + 33) != 1)
                {
                  continue;
                }

                v499 = 0.0;
                if ((*(v498 + 32) & 1) == 0)
                {
                  goto LABEL_253;
                }
              }

              if (v499 >= atan2(*(v498 + 48), *(v498 + 56)))
              {
                continue;
              }

LABEL_256:
              v500 = *(*(v483 + 48) + 8 * v497);

              v494 = v498;
              v686 = v500;
              continue;
            }

            break;
          }

          while (1)
          {
            v495 = v487 + 1;
            if (__OFADD__(v487, 1))
            {
              goto LABEL_314;
            }

            if (v495 >= v490)
            {
              break;
            }

            v489 = *(v483 + 64 + 8 * v495);
            ++v487;
            if (v489)
            {
              v487 = v495;
              goto LABEL_243;
            }
          }

          v501 = v689 + 64;
          v502 = 1 << *(v689 + 32);
          if (v502 < 64)
          {
            v503 = ~(-1 << v502);
          }

          else
          {
            v503 = -1;
          }

          v504 = v503 & *(v689 + 64);
          v673 = (v502 + 63) >> 6;
          v683 = (v686 + 56);
          v674 = v689;

          v505 = 0;
          v506 = v658;
          v507 = v677;
          v675 = v501;
          if (v504)
          {
            while (1)
            {
              v509 = v505;
LABEL_273:
              v511 = __clz(__rbit64(v504));
              v504 &= v504 - 1;
              v512 = v511 | (v509 << 6);
              v513 = v674;
              v514 = v667;
              v515 = v681;
              (*(v667 + 2))(v681, *(v674 + 6) + *(v667 + 9) * v512, v240);
              v516 = v652;
              sub_1BB644798(*(v513 + 56) + *(v651 + 72) * v512, v652, type metadata accessor for DKPersonGroup);
              v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E8);
              v518 = *(v517 + 48);
              v519 = *(v514 + 4);
              v506 = v658;
              v507 = v677;
              v519(v658, v515, v240);
              sub_1BB6448B8(v516, v506 + v518, type metadata accessor for DKPersonGroup);
              (*(*(v517 - 8) + 56))(v506, 0, 1, v517);
LABEL_274:
              v520 = v654;
              sub_1BB60DF90(v506, v654, &qword_1EBC5D7D8);
              v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E8);
              if ((*(*(v521 - 8) + 48))(v520, 1, v521) == 1)
              {

                v413 = v684;
                v475 = v671;
                v480 = v670;
                goto LABEL_227;
              }

              v522 = *(v521 + 48);
              v523 = *v507;
              (*v507)(v659, v520, v240);
              v524 = v520 + v522;
              v525 = v660;
              sub_1BB6448B8(v524, v660, type metadata accessor for DKPersonGroup);
              v526 = v657;
              v527 = v525 + *(v657 + 32);
              v528 = v653;
              sub_1BB5982A0(v527, v653, &qword_1EBC5C370);
              v680 = *v678;
              v529 = (v680)(v528, 1, v240);
              v676 = v523;
              if (v529 == 1)
              {
                v530 = v507;
                sub_1BB598308(v528, &qword_1EBC5C370);
                v531 = v660;
              }

              else
              {
                v523(v661, v528, v240);
                if (*(v686 + 16))
                {
                  v532 = v686;
                  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
                  v533 = sub_1BB6BAB74();
                  v534 = -1 << *(v532 + 32);
                  v535 = v533 & ~v534;
                  if ((*&v683[(v535 >> 3) & 0xFFFFFFFFFFFFFF8] >> v535))
                  {
                    v536 = ~v534;
                    v537 = *(v667 + 9);
                    v538 = *(v667 + 2);
                    while (1)
                    {
                      v539 = v681;
                      v538(v681, *(v686 + 48) + v537 * v535, v240);
                      sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
                      v540 = sub_1BB6BABE4();
                      v541 = v240;
                      v542 = *v687;
                      (*v687)(v539, v541);
                      if (v540)
                      {
                        break;
                      }

                      v535 = (v535 + 1) & v536;
                      v240 = v679;
                      if (((*&v683[(v535 >> 3) & 0xFFFFFFFFFFFFFF8] >> v535) & 1) == 0)
                      {
                        goto LABEL_282;
                      }
                    }

                    v555 = v621;
                    v556 = v679;
                    v538(v621, v659, v679);
                    v557 = sub_1BB63D8E8(v690);
                    v559 = v558;
                    v560 = v657;
                    if (!(*v672)(v558, 1, v657))
                    {
                      v680 = v557;
                      v538(v612, v619 + *(v655 + 20), v556);
                      v567 = *(v560 + 40);
                      v568 = *&v559[v567];
                      v569 = swift_isUniquelyReferenced_nonNull_native();
                      *&v559[v567] = v568;
                      v669 = v559;
                      if ((v569 & 1) == 0)
                      {
                        v568 = sub_1BB59CF10(0, v568[2] + 1, 1, v568);
                        *&v559[v567] = v568;
                      }

                      v507 = v677;
                      v570 = v680;
                      v572 = v568[2];
                      v571 = v568[3];
                      v573 = v572 + 1;
                      if (v572 >= v571 >> 1)
                      {
                        v680 = v572 + 1;
                        v585 = sub_1BB59CF10(v571 > 1, v572 + 1, 1, v568);
                        v573 = v680;
                        v568 = v585;
                        *&v669[v567] = v585;
                      }

                      v568[2] = v573;
                      v574 = v568 + ((v667[80] + 32) & ~v667[80]) + v572 * v537;
                      v575 = v679;
                      (v676)(v574, v612, v679);
                      v570(v690, 0);
                      (v542)(v621, v575);
                      (v542)(v661, v575);
                      sub_1BB644800(v660, type metadata accessor for DKPersonGroup);
                      (v542)(v659, v575);
                      v240 = v575;
                      v506 = v658;
                      goto LABEL_296;
                    }

                    (v557)(v690, 0);
                    (v542)(v555, v556);
                    v561 = v661;
LABEL_294:
                    (v542)(v561, v556);
                    sub_1BB644800(v660, type metadata accessor for DKPersonGroup);
                    (v542)(v659, v556);
                    v506 = v658;
                    v240 = v556;
                    goto LABEL_295;
                  }
                }

LABEL_282:
                (*v687)(v661, v240);
                v526 = v657;
                v531 = v660;
                v530 = v677;
                v523 = v676;
              }

              v543 = v650;
              sub_1BB5982A0(v531 + *(v526 + 36), v650, &qword_1EBC5C370);
              if ((v680)(v543, 1, v240) == 1)
              {
                sub_1BB644800(v531, type metadata accessor for DKPersonGroup);
                (*v687)(v659, v240);
                sub_1BB598308(v543, &qword_1EBC5C370);
                v501 = v675;
                v507 = v530;
                v506 = v658;
                if (!v504)
                {
                  break;
                }
              }

              else
              {
                v544 = v642;
                v523(v642, v543, v240);
                if (*(v686 + 16))
                {
                  v545 = v686;
                  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
                  v546 = sub_1BB6BAB74();
                  v547 = -1 << *(v545 + 32);
                  v548 = v546 & ~v547;
                  if ((*&v683[(v548 >> 3) & 0xFFFFFFFFFFFFFF8] >> v548))
                  {
                    v549 = ~v547;
                    v680 = *(v667 + 9);
                    v550 = *(v667 + 2);
                    while (1)
                    {
                      v551 = v681;
                      v550(v681, *(v686 + 48) + v680 * v548, v240);
                      sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
                      v552 = sub_1BB6BABE4();
                      v553 = v240;
                      v542 = *v687;
                      (*v687)(v551, v553);
                      if (v552)
                      {
                        break;
                      }

                      v548 = (v548 + 1) & v549;
                      v240 = v679;
                      if (((*&v683[(v548 >> 3) & 0xFFFFFFFFFFFFFF8] >> v548) & 1) == 0)
                      {
                        goto LABEL_289;
                      }
                    }

                    v562 = v620;
                    v556 = v679;
                    v550(v620, v659, v679);
                    v563 = sub_1BB63D8E8(v690);
                    v565 = v564;
                    v566 = v657;
                    if (!(*v672)(v564, 1, v657))
                    {
                      v669 = v563;
                      v550(v610, v619 + *(v655 + 20), v556);
                      v576 = *(v566 + 40);
                      v577 = *&v565[v576];
                      v578 = swift_isUniquelyReferenced_nonNull_native();
                      *&v565[v576] = v577;
                      v665 = v565;
                      if ((v578 & 1) == 0)
                      {
                        v577 = sub_1BB59CF10(0, v577[2] + 1, 1, v577);
                        *&v565[v576] = v577;
                      }

                      v507 = v677;
                      v579 = v669;
                      v581 = v577[2];
                      v580 = v577[3];
                      v582 = (v581 + 1);
                      if (v581 >= v580 >> 1)
                      {
                        v669 = (v581 + 1);
                        v586 = sub_1BB59CF10(v580 > 1, v581 + 1, 1, v577);
                        v582 = v669;
                        v577 = v586;
                        *&v665[v576] = v586;
                      }

                      v577[2] = v582;
                      v583 = v577 + ((v667[80] + 32) & ~v667[80]) + v581 * v680;
                      v584 = v679;
                      (v676)(v583, v610, v679);
                      v579(v690, 0);
                      (v542)(v620, v584);
                      (v542)(v544, v584);
                      sub_1BB644800(v660, type metadata accessor for DKPersonGroup);
                      (v542)(v659, v584);
                      v240 = v584;
                      v506 = v658;
                      goto LABEL_296;
                    }

                    (v563)(v690, 0);
                    (v542)(v562, v556);
                    v561 = v544;
                    goto LABEL_294;
                  }
                }

LABEL_289:
                v554 = *v687;
                (*v687)(v544, v240);
                sub_1BB644800(v660, type metadata accessor for DKPersonGroup);
                (v554)(v659, v240);
                v506 = v658;
LABEL_295:
                v507 = v677;
LABEL_296:
                v501 = v675;
                if (!v504)
                {
                  break;
                }
              }
            }
          }

          if (v673 <= (v505 + 1))
          {
            v508 = (v505 + 1);
          }

          else
          {
            v508 = v673;
          }

          v265 = (v508 - 1);
          while (1)
          {
            v509 = (v505 + 1);
            if (__OFADD__(v505, 1))
            {
              break;
            }

            if (v509 >= v673)
            {
              v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E8);
              (*(*(v510 - 8) + 56))(v506, 1, 1, v510);
              v504 = 0;
              v505 = v265;
              goto LABEL_274;
            }

            v504 = *(v501 + 8 * v509);
            ++v505;
            if (v504)
            {
              v505 = v509;
              goto LABEL_273;
            }
          }

          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:

LABEL_129:
          v316 = v635 + 56;
          v317 = 1 << *(v635 + 32);
          if (v317 < 64)
          {
            v318 = ~(-1 << v317);
          }

          else
          {
            v318 = -1;
          }

          v319 = v318 & *(v635 + 56);
          v320 = (v317 + 63) >> 6;
          v685 = (v265 + 16);
          v687 = (v265 + 8);
          v674 = v600 + 16;
          v669 = v600 + 56;

          v321 = 0;
          v663 = xmmword_1BB6BE460;
          v677 = v265 + 32;
          v673 = v316;
          *&v662 = v320;
          while (2)
          {
            if (v319)
            {
              v322 = v321;
LABEL_139:
              v670 = ((v319 - 1) & v319);
              v664 = v322;
              v323 = v635;
              v324 = v667;
              v325 = *(v667 + 9);
              v326 = *(v635 + 48) + v325 * (__clz(__rbit64(v319)) | (v322 << 6));
              v327 = v601;
              v683 = *(v667 + 2);
              (v683)(v601, v326, v240);
              v680 = *(v324 + 4);
              (v680)(v634, v327, v240);
              v328 = 1 << *(v323 + 32);
              if (v328 < 64)
              {
                v329 = ~(-1 << v328);
              }

              else
              {
                v329 = -1;
              }

              v330 = v329 & *(v323 + 56);
              v331 = (v328 + 63) >> 6;
              v671 = 2 * v325;

              v332 = 0;
              v316 = v673;
              v686 = v325;
              v678 = v331;
LABEL_145:
              if (!v330)
              {
                v334 = v683;
                while (1)
                {
                  v335 = v332 + 1;
                  if (__OFADD__(v332, 1))
                  {
                    goto LABEL_315;
                  }

                  if (v335 >= v331)
                  {
                    break;
                  }

                  v330 = *(v316 + 8 * v335);
                  ++v332;
                  if (v330)
                  {
                    v332 = v335;
                    goto LABEL_152;
                  }
                }

                (*v687)();

                v321 = v664;
                v320 = v662;
                v319 = v670;
                continue;
              }

              v334 = v683;
LABEL_152:
              v336 = v623;
              (v334)(v623, *(v635 + 48) + (__clz(__rbit64(v330)) | (v332 << 6)) * v325, v240);
              v337 = v632;
              (v680)(v632, v336, v240);
              sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
              v338 = v634;
              if (sub_1BB6BABE4())
              {
                v333 = *v687;
                v331 = v678;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF60);
                v339 = (v667[80] + 32) & ~v667[80];
                v675 = swift_allocObject();
                v340 = v675 + v339;
                (v334)(v675 + v339, v338, v240);
                (v334)(v340 + v686, v337, v240);
                v341 = sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
                v690[0] = MEMORY[0x1BFB10E40](2, v240, v341);
                v342 = v681;
                (v334)(v681, v340, v240);
                v343 = v672;
                sub_1BB5AD188(v672, v342);
                v344 = *(v667 + 1);
                v676 = v687 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                (v344)(v343, v240);
                (v334)(v342, v340 + v686, v240);
                v333 = v344;
                swift_setDeallocating();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                sub_1BB5AD188(v343, v342);
                (v344)(v343, v240);
                v345 = v690[0];
                v331 = v678;
                if (*(v684[6] + 16))
                {

                  sub_1BB6A1320(v345);
                  if (v346)
                  {

                    goto LABEL_158;
                  }
                }

                v347 = v684[2];
                v349 = v347[4];
                v348 = v347[5];
                v350 = v347[3];
                v351 = v665;
                v352 = v668;
                (*v674)(v665, v666, v668);
                v675 = v345;
                v353 = *v669;
                (*v669)(v351, 0, 1, v352);
                type metadata accessor for DKSmoothingFilter();
                v354 = swift_allocObject();
                *(v354 + 48) = v663;
                v355 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
                v353(v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v352);
                v356 = v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
                *v356 = 0;
                *(v356 + 8) = 1;
                v357 = v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
                *v357 = 0;
                *(v357 + 8) = 1;
                *(v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
                *(v354 + 16) = v350;
                *(v354 + 24) = v349;
                *(v354 + 32) = 256;
                *(v354 + 40) = v348;
                v358 = v354 + v355;
                v240 = v679;
                sub_1BB5BA0DC(v351, v358, &qword_1EBC5C050);
                *v356 = 0;
                *(v356 + 8) = 1;
                *v357 = 0;
                *(v357 + 8) = 1;
                sub_1BB6345A0(v354, v675);
LABEL_158:
                v337 = v632;
                v316 = v673;
              }

              v330 &= v330 - 1;
              (v333)(v337, v240);
              v325 = v686;
              goto LABEL_145;
            }

            break;
          }

          while (1)
          {
            v322 = v321 + 1;
            if (__OFADD__(v321, 1))
            {
              goto LABEL_317;
            }

            if (v322 >= v320)
            {
              break;
            }

            v319 = *(v316 + 8 * v322);
            ++v321;
            if (v319)
            {
              goto LABEL_139;
            }
          }

          v359 = v684[6];
          v362 = *(v359 + 64);
          v361 = v359 + 64;
          v360 = v362;
          v363 = 1 << *(v684[6] + 32);
          v364 = -1;
          if (v363 < 64)
          {
            v364 = ~(-1 << v363);
          }

          v365 = v364 & v360;
          v366 = (v363 + 63) >> 6;
          v686 = v684[6];

          v367 = 0;
          v671 = 0;
          while (v365)
          {
            v368 = v603;
LABEL_170:
            v370 = *(*(v686 + 48) + ((v367 << 9) | (8 * __clz(__rbit64(v365)))));
            v371 = *(v368 + 32);
            v372 = v371 & 0x3F;
            v373 = ((1 << v371) + 63) >> 6;
            v374 = 8 * v373;
            swift_bridgeObjectRetain_n();
            isStackAllocationSafe = swift_bridgeObjectRetain_n();
            if (v372 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v285 = &v594 - ((v374 + 15) & 0x3FFFFFFFFFFFFFF0);
              bzero(v285, v374);
              v376 = v671;
              sub_1BB642B50(v285, v373, v368, v370);
              v671 = v376;
              if (v376)
              {
                goto LABEL_322;
              }

              v378 = v377;

              v240 = v679;
            }

            else
            {
              v285 = swift_slowAlloc();

              v387 = v671;
              v378 = sub_1BB641B04(v285, v373, v368, v370);

              v388 = &v691;
              v671 = v387;
              if (v387)
              {
                goto LABEL_323;
              }

              MEMORY[0x1BFB122F0](v285, -1, -1);
            }

            v365 &= v365 - 1;
            v379 = v378[2];

            if (v379)
            {
            }

            else
            {
              v380 = sub_1BB6A1320(v370);
              v382 = v381;

              if (v382)
              {
                v383 = v684;
                v384 = swift_isUniquelyReferenced_nonNull_native();
                v690[0] = v383[6];
                v385 = v690[0];
                v383[6] = 0x8000000000000000;
                sub_1BB63F708(v384, *(v385 + 24));
                v386 = v690[0];

                sub_1BB63F250(v380, v386);
                v383[6] = v386;
              }
            }
          }

          v368 = v603;
          while (1)
          {
            v369 = v367 + 1;
            if (__OFADD__(v367, 1))
            {
              goto LABEL_318;
            }

            if (v369 >= v366)
            {
              break;
            }

            v365 = *(v361 + 8 * v369);
            ++v367;
            if (v365)
            {
              v367 = v369;
              goto LABEL_170;
            }
          }

          v389 = v684[6];
          v390 = v389 + 64;
          v391 = 1 << *(v389 + 32);
          v392 = -1;
          if (v391 < 64)
          {
            v392 = ~(-1 << v391);
          }

          v393 = v392 & *(v389 + 64);
          v394 = (v391 + 63) >> 6;
          v683 = v600 + 48;
          v670 = (v600 + 32);
          v680 = (v600 + 8);
          v686 = v389;

          v396 = 0;
LABEL_183:
          v397 = v599;
          if (!v393)
          {
            goto LABEL_185;
          }

          do
          {
            v398 = v396;
LABEL_188:
            v399 = (v398 << 9) | (8 * __clz(__rbit64(v393)));
            v400 = *(*(v686 + 48) + v399);
            v401 = *(*(v686 + 56) + v399);
            v690[0] = v400;
            MEMORY[0x1EEE9AC00](v395);
            *(&v594 - 2) = v690;

            v402 = v671;
            v403 = sub_1BB634C2C(sub_1BB644860, (&v594 - 4), v682);
            v671 = v402;
            v404 = 1.0;
            v405 = v668;
            if ((v403 & 1) != 0 || (v406 = v635, , v407 = *(sub_1BB64298C(v400, v406) + 2), , v404 = 0.0, v407 == 2))
            {
              v408 = v665;
              (*v674)(v665, v666, v405);
              (*v669)(v408, 0, 1, v405);
              sub_1BB6ABB40(0, 1, v408, v404);
              sub_1BB598308(v408, &qword_1EBC5C050);
            }

            v393 &= v393 - 1;
            v409 = v397;
            sub_1BB5982A0(v401 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, v397, &qword_1EBC5C050);
            v410 = (*v683)(v397, 1, v405);
            v240 = v679;
            if (v410 != 1)
            {
              v411 = v598;
              (*v670)(v598, v409, v405);
              sub_1BB6BA744();
              if (*(v684[2] + 16) < v412)
              {
                sub_1BB63EB44(v400);

                v395 = (*v680)(v411, v405);
              }

              else
              {
                (*v680)(v411, v405);
              }

              v396 = v398;
              goto LABEL_183;
            }

            v395 = sub_1BB598308(v397, &qword_1EBC5C050);
            v396 = v398;
          }

          while (v393);
          while (1)
          {
LABEL_185:
            v398 = v396 + 1;
            if (__OFADD__(v396, 1))
            {
              goto LABEL_319;
            }

            if (v398 >= v394)
            {
              break;
            }

            v393 = *(v390 + 8 * v398);
            ++v396;
            if (v393)
            {
              goto LABEL_188;
            }
          }

          v413 = v684;
          v414 = *(v684[2] + 56);

          v415 = sub_1BB60C238(v608, v605, v413, v414);
          v689 = MEMORY[0x1E69E7CC8];
          v688 = MEMORY[0x1E69E7CD0];
          v413[5] = MEMORY[0x1E69E7CD0];

          v416 = *(v415 + 16);
          if (v416)
          {
            break;
          }

          v473 = MEMORY[0x1E69E7CD0];
        }

        v417 = (*(v596 + 80) + 32) & ~*(v596 + 80);
        v656 = v415;
        v418 = v415 + v417;
        v669 = (v597 + 48);
        v665 = *(v631 + 48);
        v680 = (v667 + 56);
        v686 = v622 + 48;
        v664 = *(v631 + 64);
        *&v663 = *(v596 + 72);
        *&v662 = v597 + 56;
        do
        {
          v678 = v416;
          v676 = v418;
          v423 = v624;
          sub_1BB5982A0(v418, v624, &qword_1EBC5C468);
          v424 = *(v423 + v664);
          v425 = v631;
          v426 = *(v631 + 48);
          v427 = *(v631 + 64);
          v428 = v638;
          sub_1BB60DF90(v423, v638, &qword_1EBC5C478);
          sub_1BB60DF90(&v665[v423], v428 + v426, &qword_1EBC5C478);
          *(v428 + v427) = v424;
          v429 = v625;
          sub_1BB5982A0(v428, v625, &qword_1EBC5C468);
          v430 = *(v425 + 48);
          v431 = v645;
          sub_1BB60DF90(v429, v645, &qword_1EBC5C478);
          sub_1BB598308(v429 + v430, &qword_1EBC5C478);
          sub_1BB5982A0(v428, v429, &qword_1EBC5C468);
          v432 = v643;
          sub_1BB60DF90(v429 + *(v425 + 48), v643, &qword_1EBC5C478);
          sub_1BB598308(v429, &qword_1EBC5C478);
          v433 = v630;
          sub_1BB63DA78(v431, v432, v630);
          v434 = v633;
          if ((*v669)(v433, 1, v633) == 1)
          {
            sub_1BB598308(v433, &qword_1EBC5D7E0);
            v435 = v674;
            v436 = v644;
            v437 = v668;
            (*v674)(v644, v666, v668);
            sub_1BB6BA834();
            v438 = v685;
          }

          else
          {
            v439 = v616;
            sub_1BB6448B8(v433, v616, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            v436 = v644;
            sub_1BB6448B8(v439, v644, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            v437 = v668;
            v438 = v685;
            v435 = v674;
          }

          v440 = *(v434 + 20);
          v441 = *v438;
          v442 = v672;
          (*v438)(v672, v436 + v440, v240);
          v443 = v681;
          sub_1BB5AD188(v681, v442);
          (*v687)(v443, v240);
          (*v435)(v637, v436, v437);
          v675 = v440;
          v444 = v639;
          v441(v639, v436 + v440, v240);
          v445 = *v680;
          (*v680)(v444, 0, 1, v240);
          v446 = v626;
          sub_1BB5982A0(v645, v626, &qword_1EBC5C478);
          v447 = v655;
          v683 = *v686;
          if ((v683)(v446, 1, v655) == 1)
          {
            sub_1BB598308(v446, &qword_1EBC5C478);
            v448 = 1;
            v449 = v627;
            v450 = v640;
          }

          else
          {
            v450 = v640;
            v441(v640, v446 + *(v447 + 20), v240);
            sub_1BB644800(v446, type metadata accessor for DKPersonGroupFilter.Track);
            v448 = 0;
            v449 = v627;
          }

          v451 = v641;
          v445(v450, v448, 1, v240);
          sub_1BB5982A0(v643, v449, &qword_1EBC5C478);
          v452 = (v683)(v449, 1, v447);
          v673 = v441;
          if (v452 == 1)
          {
            sub_1BB598308(v449, &qword_1EBC5C478);
            v453 = 1;
          }

          else
          {
            v441(v451, v449 + *(v447 + 20), v240);
            sub_1BB644800(v449, type metadata accessor for DKPersonGroupFilter.Track);
            v453 = 0;
          }

          v445(v451, v453, 1, v240);
          v454 = v657;
          v455 = *(v657 + 28);
          v456 = v636;
          v445(v636 + v455, 1, 1, v240);
          v457 = v454[8];
          v445(v456 + v457, 1, 1, v240);
          v458 = v454[9];
          v445(v456 + v458, 1, 1, v240);
          v459 = v454[10];
          *v456 = -1;
          *(v456 + 8) = 1.0 - v424;
          (*v670)(v456 + v454[6], v637, v668);
          sub_1BB5BA0DC(v639, v456 + v455, &qword_1EBC5C370);
          sub_1BB5BA0DC(v640, v456 + v457, &qword_1EBC5C370);
          sub_1BB5BA0DC(v641, v456 + v458, &qword_1EBC5C370);
          *(v456 + v459) = MEMORY[0x1E69E7CC0];
          v460 = v652;
          sub_1BB644798(v456, v652, type metadata accessor for DKPersonGroup);
          v461 = v689;
          v462 = swift_isUniquelyReferenced_nonNull_native();
          v690[0] = v461;
          v463 = v644;
          sub_1BB59997C(v460, v644 + v675, v462);
          v689 = v690[0];

          v464 = v628;
          sub_1BB5982A0(v645, v628, &qword_1EBC5C478);
          if ((v683)(v464, 1, v447) == 1)
          {
            sub_1BB598308(v464, &qword_1EBC5C478);
          }

          else
          {
            v465 = v614;
            sub_1BB6448B8(v464, v614, type metadata accessor for DKPersonGroupFilter.Track);
            v466 = *(v447 + 20);
            v467 = v617;
            sub_1BB644798(v463, v617, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            v468 = v684;
            v469 = swift_isUniquelyReferenced_nonNull_native();
            v690[0] = v468[3];
            v468[3] = 0x8000000000000000;
            sub_1BB5997A8(v467, v465 + v466, v469);
            v447 = v655;
            sub_1BB644800(v465, type metadata accessor for DKPersonGroupFilter.Track);
            v468[3] = v690[0];
          }

          v470 = v629;
          v471 = v643;
          sub_1BB5982A0(v643, v629, &qword_1EBC5C478);
          v472 = (v683)(v470, 1, v447);
          v240 = v679;
          if (v472 == 1)
          {
            sub_1BB644800(v644, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            sub_1BB598308(v471, &qword_1EBC5C478);
            sub_1BB598308(v645, &qword_1EBC5C478);
            sub_1BB598308(v638, &qword_1EBC5C468);
            sub_1BB644800(v636, type metadata accessor for DKPersonGroup);
            sub_1BB598308(v470, &qword_1EBC5C478);
          }

          else
          {
            v419 = v615;
            sub_1BB6448B8(v470, v615, type metadata accessor for DKPersonGroupFilter.Track);
            v420 = v681;
            (v673)(v681, v419 + *(v447 + 20), v240);
            v421 = v644;
            v422 = v618;
            sub_1BB644798(v644, v618, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            (*v662)(v422, 0, 1, v633);
            sub_1BB634680(v422, v420);
            sub_1BB644800(v419, type metadata accessor for DKPersonGroupFilter.Track);
            sub_1BB644800(v421, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            sub_1BB598308(v471, &qword_1EBC5C478);
            sub_1BB598308(v645, &qword_1EBC5C478);
            sub_1BB598308(v638, &qword_1EBC5C468);
            sub_1BB644800(v636, type metadata accessor for DKPersonGroup);
          }

          v418 = v676 + v663;
          v416 = (v678 - 1);
        }

        while (v678 != 1);
      }
    }

    v686 = v276;
    v687 = v275;
    (v265)(v263);
    sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
    if (sub_1BB6BABE4())
    {
      v278 = *v266;
      (*v266)(v263, v240);
      goto LABEL_107;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF60);
    v685 = swift_allocObject();
    v279 = v266;
    v280 = v685 + v676;
    (v265)(v685 + v676, v238, v240);
    (v265)(v280 + v273, v263, v240);
    v281 = sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
    v690[0] = MEMORY[0x1BFB10E40](2, v240, v281);
    v282 = v681;
    (v265)(v681, v280, v240);
    v283 = v672;
    sub_1BB5AD188(v672, v282);
    v284 = *v279;
    (*v279)(v283, v240);
    (v265)(v282, v280 + v273, v240);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1BB5AD188(v283, v282);
    v685 = v284;
    v284(v283, v240);
    v285 = v690[0];
    v286 = v682[2];
    v287 = v682[3];

    if (v286 >= v287 >> 1)
    {
      v682 = sub_1BB59D788((v287 > 1), v286 + 1, 1, v682);
    }

    v288 = v682;
    v682[2] = v286 + 1;
    v288[v286 + 4] = v285;
    v263 = v678;
    v238 = v680;
    v265 = v677;
    v277 = v675;
    if (*(v684[6] + 16))
    {

      sub_1BB6A1320(v285);
      if (v289)
      {

        v266 = v670;
        v278 = v685;
        (v685)(v263, v240);
        v273 = v673;
        goto LABEL_107;
      }
    }

    v290 = v684;
    v291 = v684[2];
    v292 = v291[6];
    v293 = v291[3];
    v294 = v291[4];
    v295 = v665;
    v296 = v668;
    (*v664)(v665, v666, v668);
    v297 = *v663;
    (*v663)(v295, 0, 1, v296);
    type metadata accessor for DKSmoothingFilter();
    v298 = swift_allocObject();
    *(v298 + 48) = v662;
    v299 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v297(v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v296);
    v300 = v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v300 = 0;
    *(v300 + 8) = 1;
    v301 = v290;
    v302 = v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v302 = 0;
    *(v302 + 8) = 1;
    *(v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v298 + 16) = v293;
    *(v298 + 24) = v294;
    *(v298 + 32) = 256;
    *(v298 + 40) = v292;
    sub_1BB5BA0DC(v295, v298 + v299, &qword_1EBC5C050);
    *v300 = 0;
    *(v300 + 8) = 1;
    *v302 = 0;
    *(v302 + 8) = 1;
    v240 = swift_isUniquelyReferenced_nonNull_native();
    v690[0] = v301[6];
    v303 = v690[0];
    v301[6] = 0x8000000000000000;
    v305 = sub_1BB6A1320(v285);
    v306 = *(v303 + 16);
    v307 = (v304 & 1) == 0;
    v308 = v306 + v307;
    if (__OFADD__(v306, v307))
    {
      goto LABEL_311;
    }

    v309 = v304;
    if (*(v303 + 24) >= v308)
    {
      v263 = v678;
      if ((v240 & 1) == 0)
      {
        sub_1BB5EA2F0();
      }

      goto LABEL_122;
    }

    sub_1BB5E6D1C(v308, v240);
    v310 = sub_1BB6A1320(v285);
    v263 = v678;
    if ((v309 & 1) != (v311 & 1))
    {
      break;
    }

    v305 = v310;
LABEL_122:
    v240 = v679;
    if (v309)
    {

      v312 = v690[0];
      *(*(v690[0] + 56) + 8 * v305) = v298;

      v266 = v670;
      (v685)(v263, v240);
    }

    else
    {
      v312 = v690[0];
      *(v690[0] + 8 * (v305 >> 6) + 64) |= 1 << v305;
      *(v312[6] + 8 * v305) = v285;
      *(v312[7] + 8 * v305) = v298;
      v266 = v670;
      (v685)(v263, v240);
      v313 = v312[2];
      v314 = __OFADD__(v313, 1);
      v315 = v313 + 1;
      if (v314)
      {
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
      }

      v312[2] = v315;
    }

    v684[6] = v312;

    v238 = v680;
    v273 = v673;
    v278 = v685;
LABEL_107:
    v275 = v687 + 1;
    v276 = v686 + v273;
    if (v683 == (v687 + 1))
    {

      v265 = v667;
      v271 = v278;
LABEL_102:
      v272 = v656 + 1;
      v271(v238, v240);
      v270 = v272;
      v269 = v646;
      if (v272 == v648)
      {
        goto LABEL_97;
      }

      goto LABEL_103;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE28);
  sub_1BB6BB874();
  __break(1u);
LABEL_322:

  v593 = v671;
  swift_willThrow();

  __break(1u);
LABEL_323:

  result = MEMORY[0x1BFB122F0](v285, -1, -1);
  __break(1u);
  return result;
}

BOOL sub_1BB63D638(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for DKPersonGroupFilter.Track(0);
  if ((sub_1BB5C4F24(a3 + *(v7 + 20), v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(sub_1BB64298C(a4, v6) + 2);

  return v8 != 0;
}

uint64_t (*sub_1BB63D6B8(uint64_t **a1, char a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1BB6407C8(v4, a2 & 1);
  return sub_1BB63D730;
}

uint64_t (*sub_1BB63D734(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1BB640724(v4, a2);
  return sub_1BB645740;
}

uint64_t (*sub_1BB63D7AC(uint64_t **a1, char a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1BB640680(v4, a2 & 1);
  return sub_1BB645740;
}