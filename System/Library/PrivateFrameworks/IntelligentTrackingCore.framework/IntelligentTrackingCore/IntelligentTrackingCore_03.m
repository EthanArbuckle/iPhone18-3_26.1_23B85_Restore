uint64_t sub_1BB5C19EC(double *a1)
{
  v3 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera;
  sub_1BB5CB610(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera, v5, type metadata accessor for DKCamera);
  v7 = _s23IntelligentTrackingCore8DKCameraV2eeoiySbAC_ACtFZ_0(v5, a1);
  result = sub_1BB5CB678(v5, type metadata accessor for DKCamera);
  if ((v7 & 1) == 0)
  {
    sub_1BB5CAC04(a1, v1 + v6);

    v10 = sub_1BB5C1CA4(v9, type metadata accessor for DKFaceTracker, &protocol witness table for DKTrackerBase<A, B, C>);

    v12 = sub_1BB5C1CA4(v11, type metadata accessor for DKBodyTracker, &protocol witness table for DKTrackerBase<A, B, C>);

    v24 = v10;
    sub_1BB5C8ED4(v12, sub_1BB59D4F4, &qword_1EBC5BFD8);

    v14 = sub_1BB5C1CA4(v13, type metadata accessor for DKHandTracker, &protocol witness table for DKTrackerBase<A, B, C>);

    sub_1BB5C8ED4(v14, sub_1BB59D4F4, &qword_1EBC5BFD8);

    v16 = sub_1BB5C1CA4(v15, type metadata accessor for DKPersonTracker, &protocol witness table for DKPersonTracker);

    sub_1BB5C8ED4(v16, sub_1BB59D4F4, &qword_1EBC5BFD8);
    v17 = v24[2];
    if (v17)
    {
      v18 = (v24 + 4);
      do
      {
        sub_1BB5BA078(v18, v21);
        v19 = v22;
        v20 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (*(v20 + 56))(a1, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v21);
        v18 += 40;
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

void *sub_1BB5C1CA4(unint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1BB6BB564();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1BB5E57A0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x1BFB111F0](v9, a1);
        v20 = v7;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1BB5E57A0((v11 > 1), v12 + 1, 1);
          v7 = v20;
        }

        ++v9;
        v18 = a2(0);
        v19 = a3;
        *&v17 = v10;
        *(v7 + 16) = v12 + 1;
        sub_1BB593648(&v17, v7 + 40 * v12 + 32);
      }

      while (v6 != v9);
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = *v13;
        v20 = v7;
        v15 = *(v7 + 16);
        v16 = *(v7 + 24);

        if (v15 >= v16 >> 1)
        {
          sub_1BB5E57A0((v16 > 1), v15 + 1, 1);
          v7 = v20;
        }

        v18 = a2(0);
        v19 = a3;
        *&v17 = v14;
        *(v7 + 16) = v15 + 1;
        sub_1BB593648(&v17, v7 + 40 * v15 + 32);
        ++v13;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB5C1E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BB5E57C0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BFC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C4A8);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1BB5E57C0((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BB5C1FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BB5E57E0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BFB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C4A0);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1BB5E57E0((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BB5C2114(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5800(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BFA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C498);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1BB5E5800((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BB5C2270(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF58);
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C468);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5820(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1BB5982A0(v11, v4, &qword_1EBC5BF58);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BB5E5820(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_1BB5CB4C4(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1BB5C2498(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BB6BB564();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    result = sub_1BB6BB404();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x1BFB111F0]();
          type metadata accessor for DKHandObservation(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C470);
          swift_dynamicCast();
          sub_1BB6BB3D4();
          sub_1BB6BB414();
          sub_1BB6BB424();
          sub_1BB6BB3E4();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = a1 + 32;
        type metadata accessor for DKHandObservation(0);
        do
        {
          v6 += 8;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C470);
          swift_dynamicCast();
          sub_1BB6BB3D4();
          sub_1BB6BB414();
          sub_1BB6BB424();
          sub_1BB6BB3E4();
          --v2;
        }

        while (v2);
      }

      return v7;
    }
  }

  return result;
}

void *sub_1BB5C26EC(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1BB6BB564();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1BB5E58A0(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x1BFB111F0](v11, a1);
        v22 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1BB5E58A0((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_1BB5CB47C(a3, a4);
        *&v19 = v12;
        *(v9 + 16) = v14 + 1;
        sub_1BB593648(&v19, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_1BB5E58A0((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_1BB5CB47C(a3, a4);
        *&v19 = v16;
        *(v9 + 16) = v18 + 1;
        sub_1BB593648(&v19, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB5C291C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BB5E59A0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C460);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1BB5E59A0((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BB5C2A78(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_faceTrackers;
  v6 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_faceTrackers);
  v53[2] = a1;

  *(v2 + v5) = sub_1BB5BFEF0(sub_1BB5CB77C, v53, v6);

  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_bodyTrackers;
  v8 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_bodyTrackers);
  v52[2] = a1;

  v47 = v7;
  *(v2 + v7) = sub_1BB5BFEF0(sub_1BB5CB77C, v52, v8);

  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers;
  v10 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers);
  v45 = a1;
  v51[2] = a1;

  v46 = v9;
  *(v2 + v9) = sub_1BB5BFEF0(sub_1BB5CB77C, v51, v10);

  v48 = v2;
  v49 = a2;
  v44 = v5;
  v12 = *(v2 + v5);
  if (v12 >> 62)
  {
    result = sub_1BB6BB564();
    v13 = result;
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
      goto LABEL_66;
    }

    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB111F0](i, v12);
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      *(v15 + qword_1EBC5EE38) = 0;
      v16 = sub_1BB5C8AB8();
      v18 = v17;
      v19 = type metadata accessor for DKPersonGroupFilter.Track(0);
      if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
      {
        *v18 = 0;
        *(v18 + 8) = 1;
      }

      (v16)(v58, 0);
    }
  }

  v20 = *(v48 + v47);
  if (v20 >> 62)
  {
    result = sub_1BB6BB564();
    v21 = result;
    if (!result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  if (v21 < 1)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  for (j = 0; j != v21; ++j)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB111F0](j, v20);
    }

    else
    {
      v23 = *(v20 + 8 * j + 32);
    }

    *(v23 + qword_1EBC5EE38) = 0;
    v24 = sub_1BB5C8AB8();
    v26 = v25;
    v27 = type metadata accessor for DKPersonGroupFilter.Track(0);
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {
      *v26 = 0;
      *(v26 + 8) = 1;
    }

    (v24)(v58, 0);
  }

LABEL_24:
  v28 = *(v48 + v46);
  if (v28 >> 62)
  {
    result = sub_1BB6BB564();
    v29 = result;
    if (result)
    {
LABEL_26:
      if (v29 >= 1)
      {

        for (k = 0; k != v29; ++k)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1BFB111F0](k, v28);
          }

          else
          {
            v31 = *(v28 + 8 * k + 32);
          }

          *(v31 + qword_1EBC5EE38) = 0;
          v32 = sub_1BB5C8AB8();
          v34 = v33;
          v35 = type metadata accessor for DKPersonGroupFilter.Track(0);
          if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
          {
            *v34 = 0;
            *(v34 + 8) = 1;
          }

          (v32)(v58, 0);
        }

        goto LABEL_35;
      }

LABEL_67:
      __break(1u);
      return result;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_26;
    }
  }

LABEL_35:
  v59[0] = MEMORY[0x1E69E7CC0];
  v36 = *(v49 + 16);
  if (v36)
  {
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v49 + 32;
    v39 = v49 + 32;
    v40 = *(v49 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BB5BA078(v39, v58);
      sub_1BB593648(v58, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008);
      type metadata accessor for DKFaceObservation(0);
      if ((swift_dynamicCast() & 1) != 0 && v57)
      {
        MEMORY[0x1BFB10C80]();
        if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();
        v50 = v59[0];
      }

      v39 += 40;
      --v40;
    }

    while (v40);
    v59[0] = v50;
    v55 = v37;
    v41 = v38;
    v42 = v36;
    v43 = v37;
    do
    {
      sub_1BB5BA078(v41, v58);
      sub_1BB593648(v58, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008);
      type metadata accessor for DKBodyObservation(0);
      if ((swift_dynamicCast() & 1) != 0 && v54)
      {
        MEMORY[0x1BFB10C80]();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();
        v43 = v55;
      }

      v41 += 40;
      --v42;
    }

    while (v42);
    v57 = v43;
    v54 = v37;
    do
    {
      sub_1BB5BA078(v38, v58);
      sub_1BB593648(v58, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008);
      type metadata accessor for DKHandObservation(0);
      if ((swift_dynamicCast() & 1) != 0 && v53[3])
      {
        MEMORY[0x1BFB10C80]();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();
        v37 = v54;
      }

      v38 += 40;
      --v36;
    }

    while (v36);
  }

  else
  {
    v59[0] = MEMORY[0x1E69E7CC0];
    v57 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
  }

  v55 = v37;
  sub_1BB5C5700(v45, (v48 + v44), v59);

  sub_1BB5C66A4(v45, (v48 + v47), &v57);

  sub_1BB5C764C(v45, (v48 + v46), &v55);

  return sub_1BB5C322C(v45);
}

uint64_t sub_1BB5C322C(uint64_t a1)
{
  v133 = a1;
  v2 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v126 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1BB6BA7F4();
  v120 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v135 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v114 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v114 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v114 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v114 - v16;
  v134 = type metadata accessor for DKPersonGroup(0);
  v131 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v144 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1BB6BA844();
  v119 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v114 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v114 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v114 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v154 = &v114 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v151 = &v114 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v114 - v38;
  v148 = type metadata accessor for DKPersonGroupFilter.Track(0);
  v150 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v143 = (&v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v146 = (&v114 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v147 = (&v114 - v44);
  v45 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_faceTrackers);
  if (v45 >> 62)
  {
    goto LABEL_128;
  }

  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v124 = v27;
  v114 = v24;
  v141 = v19;
  v127 = v14;
  v145 = v1;

  v156 = v9;
  if (v46)
  {
    v153 = v46;
    v19 = 0;
    v155 = (v45 & 0xC000000000000001);
    v1 = v45 & 0xFFFFFFFFFFFFFF8;
    v9 = v150 + 48;
    v47 = (v150 + 56);
    v149 = MEMORY[0x1E69E7CC0];
    v14 = v148;
    while (1)
    {
      if (v155)
      {
        v27 = MEMORY[0x1BFB111F0](v19, v45);
        v24 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v19 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v27 = *(v45 + 8 * v19 + 32);

        v24 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
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
          v46 = sub_1BB6BB564();
          goto LABEL_3;
        }
      }

      if (*(*(v27 + qword_1EBC5EE40) + 16) < *(*(v27 + qword_1EBC5EE28) + 80))
      {

        (*v47)(v39, 1, 1, v14);
      }

      else
      {
        sub_1BB5982A0(v27 + *(*v27 + 232), v39, &qword_1EBC5C478);

        if ((*v9)(v39, 1, v14) != 1)
        {
          sub_1BB5CB5A8(v39, v147, type metadata accessor for DKPersonGroupFilter.Track);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v149 = sub_1BB59D7D4(0, v149[2] + 1, 1, v149);
          }

          v49 = v149[2];
          v48 = v149[3];
          v27 = v49 + 1;
          if (v49 >= v48 >> 1)
          {
            v149 = sub_1BB59D7D4(v48 > 1, v49 + 1, 1, v149);
          }

          v51 = v149;
          v50 = v150;
          v149[2] = v27;
          sub_1BB5CB5A8(v147, v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, type metadata accessor for DKPersonGroupFilter.Track);
          v14 = v148;
          goto LABEL_7;
        }
      }

      sub_1BB598308(v39, &qword_1EBC5C478);
LABEL_7:
      ++v19;
      if (v24 == v153)
      {
        goto LABEL_22;
      }
    }
  }

  v149 = MEMORY[0x1E69E7CC0];
  v14 = v148;
LABEL_22:

  v1 = *(v145 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_bodyTrackers);
  if (v1 >> 62)
  {
    v39 = sub_1BB6BB564();
  }

  else
  {
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39)
  {
    v45 = 0;
    v155 = (v1 & 0xC000000000000001);
    v153 = v1 & 0xFFFFFFFFFFFFFF8;
    v9 = v150 + 48;
    v19 = v150 + 56;
    v147 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v155)
      {
        v27 = MEMORY[0x1BFB111F0](v45, v1);
        v24 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_121;
        }
      }

      else
      {
        if (v45 >= *(v153 + 16))
        {
          goto LABEL_122;
        }

        v27 = *(v1 + 8 * v45 + 32);

        v24 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_121;
        }
      }

      v53 = v34;
      if (*(*(v27 + qword_1EBC5EE40) + 16) < *(*(v27 + qword_1EBC5EE28) + 80))
      {

        v52 = v151;
        (*v19)(v151, 1, 1, v14);
      }

      else
      {
        v52 = v151;
        sub_1BB5982A0(v27 + *(*v27 + 232), v151, &qword_1EBC5C478);

        if ((*v9)(v52, 1, v14) != 1)
        {
          sub_1BB5CB5A8(v52, v146, type metadata accessor for DKPersonGroupFilter.Track);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_1BB59D7D4(0, v147[2] + 1, 1, v147);
          }

          v34 = v53;
          v55 = v147[2];
          v54 = v147[3];
          v27 = v55 + 1;
          if (v55 >= v54 >> 1)
          {
            v147 = sub_1BB59D7D4(v54 > 1, v55 + 1, 1, v147);
          }

          v56 = v146;
          v57 = v147;
          v147[2] = v27;
          sub_1BB5CB5A8(v56, v57 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v55, type metadata accessor for DKPersonGroupFilter.Track);
          v14 = v148;
          goto LABEL_28;
        }
      }

      sub_1BB598308(v52, &qword_1EBC5C478);
      v34 = v53;
LABEL_28:
      ++v45;
      if (v24 == v39)
      {
        goto LABEL_43;
      }
    }
  }

  v147 = MEMORY[0x1E69E7CC0];
LABEL_43:

  v140 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers;
  v1 = *(v145 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers);
  if (v1 >> 62)
  {
    v39 = sub_1BB6BB564();
  }

  else
  {
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v24 = 0;
    v155 = (v1 & 0xC000000000000001);
    v153 = v1 & 0xFFFFFFFFFFFFFF8;
    v9 = v150 + 48;
    v19 = v150 + 56;
    do
    {
      if (v155)
      {
        v27 = MEMORY[0x1BFB111F0](v24, v1);
        v58 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v24 >= *(v153 + 16))
        {
          goto LABEL_124;
        }

        v27 = *(v1 + 8 * v24 + 32);

        v58 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_123;
        }
      }

      if (*(*(v27 + qword_1EBC5EE40) + 16) < *(*(v27 + qword_1EBC5EE28) + 80))
      {

        (*v19)(v34, 1, 1, v14);
      }

      else
      {
        sub_1BB5982A0(v27 + *(*v27 + 232), v34, &qword_1EBC5C478);

        if ((*v9)(v34, 1, v14) != 1)
        {
          sub_1BB5CB5A8(v34, v143, type metadata accessor for DKPersonGroupFilter.Track);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1BB59D7D4(0, *(v45 + 16) + 1, 1, v45);
          }

          v60 = *(v45 + 16);
          v59 = *(v45 + 24);
          v27 = v60 + 1;
          if (v60 >= v59 >> 1)
          {
            v45 = sub_1BB59D7D4(v59 > 1, v60 + 1, 1, v45);
          }

          *(v45 + 16) = v27;
          sub_1BB5CB5A8(v143, v45 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v60, type metadata accessor for DKPersonGroupFilter.Track);
          v14 = v148;
          goto LABEL_49;
        }
      }

      sub_1BB598308(v34, &qword_1EBC5C478);
LABEL_49:
      ++v24;
    }

    while (v58 != v39);
  }

  v61 = v145;

  v14 = v147;
  sub_1BB638428(v133, v149, v147, v45, v158);

  v34 = v158[1];
  v132 = v158[0];
  v139 = v158[2];
  v138 = v158[3];
  v62 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers;
  v63 = *(v61 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  v158[0] = MEMORY[0x1E69E7CC0];
  if (v63 >> 62)
  {
    v19 = sub_1BB6BB564();
  }

  else
  {
    v19 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v137;

  v1 = MEMORY[0x1E69E7CC0];
  v136 = v62;
  v143 = v64;
  if (!v19)
  {
    goto LABEL_84;
  }

  v9 = 0;
  v148 = v64 & 0xFFFFFFFFFFFFFF8;
  v149 = (v64 & 0xC000000000000001);
  v147 = (v64 + 32);
  v155 = (v34 + 56);
  v153 = v119 + 16;
  v151 = v119 + 8;
  v146 = v19;
  while (v149)
  {
    v45 = MEMORY[0x1BFB111F0](v9, v143);
    v65 = __OFADD__(v9++, 1);
    if (v65)
    {
      goto LABEL_82;
    }

LABEL_71:
    if (*(v34 + 2))
    {
      v150 = v9;
      v14 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid;
      sub_1BB5CB47C(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
      v1 = &v14[v45];
      v66 = sub_1BB6BAB74();
      v67 = -1 << v34[32];
      v27 = v66 & ~v67;
      if ((*(v155 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v68 = ~v67;
        v69 = *(v119 + 72);
        v70 = *(v119 + 16);
        while (1)
        {
          v71 = v34;
          v72 = *(v34 + 6) + v69 * v27;
          v73 = v154;
          v1 = v157;
          v70(v154, v72, v157);
          sub_1BB5CB47C(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
          v24 = sub_1BB6BABE4();
          (*v151)(v73, v1);
          if (v24)
          {
            break;
          }

          v27 = (v27 + 1) & v68;
          v34 = v71;
          if (((*(v155 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_76;
          }
        }

        v1 = v158;
        sub_1BB6BB3D4();
        v27 = *(v158[0] + 16);
        sub_1BB6BB414();
        sub_1BB6BB424();
        sub_1BB6BB3E4();
        v61 = v145;
        v39 = v137;
        v34 = v71;
      }

      else
      {
LABEL_76:

        v61 = v145;
        v39 = v137;
      }

      v19 = v146;
      v9 = v150;
      if (v150 == v146)
      {
        goto LABEL_83;
      }
    }

    else
    {

      if (v9 == v19)
      {
        goto LABEL_83;
      }
    }
  }

  if (v9 >= *(v148 + 16))
  {
    goto LABEL_125;
  }

  v45 = v147[v9];

  v65 = __OFADD__(v9++, 1);
  if (!v65)
  {
    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  v1 = v158[0];
  v62 = v136;
LABEL_84:

  *(v61 + v62) = v1;

  v74 = v132;
  v129 = *(v132 + 16);
  if (v129)
  {
    v1 = 0;
    v154 = 0;
    v123 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration;
    v122 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastPersonId;
    v128 = v132 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v121 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera;
    v14 = (v119 + 48);
    v146 = (v119 + 32);
    v153 = v119 + 8;
    v120 += 2;
    v148 = v119 + 56;
    v149 = (v119 + 16);
    v34 = &unk_1BB6BE3F0;
    v9 = v130;
    v147 = (v119 + 48);
    do
    {
      if (v1 >= *(v74 + 16))
      {
        goto LABEL_126;
      }

      v76 = *(v131 + 72);
      v138 = v1;
      v77 = v128 + v76 * v1;
      v78 = v144;
      sub_1BB5CB610(v77, v144, type metadata accessor for DKPersonGroup);
      v27 = *(v134 + 28);
      sub_1BB5982A0(v78 + v27, v9, &qword_1EBC5C370);
      v155 = *v14;
      if (v155(v9, 1, v157) == 1)
      {
        sub_1BB598308(v9, &qword_1EBC5C370);
      }

      else
      {
        v45 = v115;
        v79 = v157;
        v80 = (*v146)(v115, v9, v157);
        v19 = &v114;
        v81 = *(v61 + v136);
        MEMORY[0x1EEE9AC00](v80);
        *(&v114 - 2) = v45;

        v82 = v154;
        v83 = sub_1BB5C0760(sub_1BB5CB748, (&v114 - 4), v81);
        v154 = v82;

        (*v153)(v45, v79);
        if (v83)
        {

          v9 = v136;
          goto LABEL_102;
        }

        v14 = v147;
      }

      (*v120)(v135, v133, v125);
      v84 = *(*(v61 + v123) + 40);
      v85 = v127;
      sub_1BB5982A0(v144 + v27, v127, &qword_1EBC5C370);
      v86 = v155;
      if (v155(v85, 1, v157) == 1)
      {

        v87 = v124;
        sub_1BB6BA834();
        if (v86(v85, 1, v157) != 1)
        {
          sub_1BB598308(v127, &qword_1EBC5C370);
        }
      }

      else
      {
        v87 = v124;
        (*v146)(v124, v85, v157);
      }

      v34 = v122;
      v88 = *(v61 + v122);
      v19 = v126;
      sub_1BB5CB610(v61 + v121, v126, type metadata accessor for DKCamera);
      type metadata accessor for DKPersonTracker();
      swift_allocObject();
      v45 = sub_1BB69AC1C(v135, v84, v87, v88, v19);

      v9 = v136;
      MEMORY[0x1BFB10C80](v89);
      v39 = v137;
      if (*((*(v61 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v61 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
        v9 = v136;
      }

      v1 = v61 + v9;
      sub_1BB6BAEB4();

      v90 = *&v34[v61];
      v65 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v65)
      {
        goto LABEL_127;
      }

      *&v34[v61] = v91;
LABEL_102:
      v14 = v147;
      v34 = &unk_1BB6BE3F0;
      sub_1BB5982A0(v144 + v27, v39, &qword_1EBC5C370);
      if (v155(v39, 1, v157) == 1)
      {
        sub_1BB598308(v39, &qword_1EBC5C370);
        v9 = v130;
        v75 = v138;
      }

      else
      {
        v45 = v114;
        v143 = *v146;
        v92 = (v143)(v114, v39, v157);
        v19 = &v114;
        v93 = *(v61 + v9);
        MEMORY[0x1EEE9AC00](v92);
        *(&v114 - 2) = v45;

        v94 = v154;
        v27 = sub_1BB5C0760(sub_1BB5CB748, (&v114 - 4), v93);

        v75 = v138;
        v154 = v94;
        if (v27)
        {
          v118 = v27;
          v95 = *v153;
          (*v153)(v45, v157);
          v96 = v134;
          v97 = v144;
          v117 = sub_1BB5C0574(v144 + *(v134 + 32));
          v116 = sub_1BB5C0884(v97 + *(v96 + 36));
          v98 = *(v97 + *(v96 + 40));
          v158[0] = MEMORY[0x1E69E7CC0];
          v99 = *(v98 + 16);
          if (v99)
          {
            v100 = v98 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
            v101 = *(v119 + 72);
            v150 = *(v119 + 16);
            v151 = v101;
            v139 = MEMORY[0x1E69E7CC0];
            v102 = v142;
            v27 = v152;
            v14 = v147;
            do
            {
              v45 = v95;
              v103 = v157;
              v104 = v150;
              (v150)(v27, v100, v157);
              v24 = v156;
              v104(v156, v27, v103);
              (*v148)(v24, 0, 1, v103);
              sub_1BB5982A0(v24, v102, &qword_1EBC5C370);
              if (v155(v102, 1, v103) == 1)
              {
                sub_1BB598308(v24, &qword_1EBC5C370);
                v95 = v45;
                (v45)(v27, v157);
                sub_1BB598308(v102, &qword_1EBC5C370);
              }

              else
              {
                v105 = v157;
                v106 = v141;
                v107 = (v143)(v141, v102, v157);
                v24 = &v114;
                v108 = *(v145 + v140);
                MEMORY[0x1EEE9AC00](v107);
                *(&v114 - 2) = v106;

                v109 = v154;
                v110 = sub_1BB5C0760(sub_1BB5CB72C, (&v114 - 4), v108);

                sub_1BB598308(v156, &qword_1EBC5C370);
                v111 = v105;
                v95 = v45;
                (v45)(v152, v111);
                v154 = v109;
                if (v110)
                {
                  v112 = (v45)(v106, v157);
                  MEMORY[0x1BFB10C80](v112);
                  if (*((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v139 = *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_1BB6BAE64();
                  }

                  sub_1BB6BAEB4();
                  v139 = v158[0];
                }

                else
                {
                  (v45)(v106, v157);
                }

                v102 = v142;
                v27 = v152;
                v14 = v147;
              }

              v100 += v151;
              --v99;
            }

            while (v99);
          }

          else
          {
            v139 = MEMORY[0x1E69E7CC0];
            v14 = v147;
          }

          v19 = v116;
          sub_1BB696BAC(v133, v117, v116, v139);

          v61 = v145;
          v39 = v137;
          v9 = v130;
          v75 = v138;
          v34 = &unk_1BB6BE3F0;
        }

        else
        {
          (*v153)(v45, v157);
          v9 = v130;
          v14 = v147;
        }
      }

      v1 = v75 + 1;
      sub_1BB5CB678(v144, type metadata accessor for DKPersonGroup);
      v74 = v132;
    }

    while (v1 != v129);
  }
}

BOOL sub_1BB5C4BEC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](a1);
  v4 = sub_1BB6BB964();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1BB5C4CB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    sub_1BB6BB924();
    sub_1BB6BA7F4();
    sub_1BB5CB47C(&qword_1EBC5C280, MEMORY[0x1E6969530]);
    sub_1BB6BAB84();
    sub_1BB6BA844();
    sub_1BB5CB47C(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
    sub_1BB6BAB84();
    v7 = sub_1BB6BB964();
    v8 = -1 << *(a2 + 32);
    v9 = v7 & ~v8;
    if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      v11 = *(v4 + 72);
      do
      {
        sub_1BB5CB610(*(a2 + 48) + v11 * v9, v6, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        if (sub_1BB6BA7C4())
        {
          v12 = sub_1BB6BA814();
          sub_1BB5CB678(v6, type metadata accessor for DKPersonGroupFilter.StampedPerson);
          if (v12)
          {
            return 1;
          }
        }

        else
        {
          sub_1BB5CB678(v6, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        }

        v9 = (v9 + 1) & v10;
      }

      while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1BB5C4F24(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BB6BA844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1BB5CB47C(&qword_1EBC5C288, MEMORY[0x1E69695A8]), v7 = sub_1BB6BAB74(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1BB5CB47C(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
      v15 = sub_1BB6BABE4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1BB5C513C(uint64_t a1, unint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v64 = *&a1;
  v56.size.width = a5;
  v56.size.height = a6;
  v56.origin.x = a3;
  v56.origin.y = a4;
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  *&v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  *&MidX = &v54 - v13;
  if (a2 >> 62)
  {
LABEL_33:
    if (sub_1BB6BB564() <= 1)
    {
      return;
    }

    v54 = v6;
    v22 = MEMORY[0x1E69E7CC0];
    v65 = MEMORY[0x1E69E7CC0];
    v61 = COERCE_DOUBLE(sub_1BB6BB564());
    if (v61 != 0.0)
    {
      goto LABEL_4;
    }

LABEL_16:
    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      v23 = sub_1BB6BB564();
      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v23 = *(v22 + 16);
      if (v23)
      {
LABEL_19:
        v65 = MEMORY[0x1E69E7CC0];
        sub_1BB5E5760(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return;
        }

        v24 = 0;
        v25 = v65;
        v55 = 0.01;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1BFB111F0](v24, v22);
          }

          else
          {
            v26 = *(v22 + 8 * v24 + 32);
          }

          v28 = *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
          v27 = *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8);
          v29 = *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24);
          v60 = *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
          v30 = *&v60;
          v57 = v29;
          v58 = v27;
          x = v56.origin.x;
          y = v56.origin.y;
          width = v56.size.width;
          height = v56.size.height;
          v35 = CGRectGetWidth(v56);
          v66.origin.x = v28;
          *&v59 = v28;
          v36 = v58;
          v66.origin.y = v58;
          v66.size.width = v30;
          v37 = v57;
          v66.size.height = v57;
          v38 = CGRectGetWidth(v66);
          if (v38 >= v35)
          {
            v38 = v35;
          }

          v64 = v38;
          v67.origin.x = x;
          v67.origin.y = y;
          v67.size.width = width;
          v67.size.height = height;
          v39 = CGRectGetHeight(v67);
          v68.origin.x = v28;
          v68.origin.y = v36;
          v40 = *&v60;
          *&v68.size.width = v60;
          v68.size.height = v37;
          v41 = CGRectGetHeight(v68);
          if (v41 >= v39)
          {
            v41 = v39;
          }

          v63 = v41;
          v69.origin.x = x;
          v69.origin.y = y;
          v69.size.width = width;
          v69.size.height = height;
          MidX = CGRectGetMidX(v69);
          v42 = *&v59;
          *&v70.origin.x = v59;
          v70.origin.y = v36;
          v70.size.width = v40;
          v70.size.height = v37;
          v61 = CGRectGetMidX(v70);
          v71.origin.x = x;
          v71.origin.y = y;
          v71.size.width = width;
          v71.size.height = height;
          MidY = CGRectGetMidY(v71);
          v72.origin.x = v42;
          v72.origin.y = v36;
          v72.size.width = v40;
          v72.size.height = v37;
          v44 = CGRectGetMidY(v72);

          v65 = v25;
          v46 = *(v25 + 16);
          v45 = *(v25 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_1BB5E5760((v45 > 1), v46 + 1, 1);
            v25 = v65;
          }

          v47 = fmax(v64, v55);
          v48 = fmax(v63, v55);
          v49 = sqrt((MidX - v61) / v47 * ((MidX - v61) / v47) + (MidY - v44) / v48 * ((MidY - v44) / v48));
          ++v24;
          *(v25 + 16) = v46 + 1;
          *(v25 + 8 * v46 + 32) = v49;
        }

        while (v23 != v24);

        goto LABEL_38;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_38:
    *&v50 = COERCE_DOUBLE(sub_1BB5A1724(v25));
    v52 = v51;

    v53 = *&v50;
    if (v52)
    {
      v53 = 1.0;
    }

    fmin(1.0 / (exp(-(*(*(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration) + 80) * (v53 - *(*(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration) + 72)))) + 1.0), 1.0);
    return;
  }

  v12.n128_u64[0] = 1.0;
  v61 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (*&v61 > 1uLL)
  {
    v54 = v6;
    v65 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v14 = 0;
    v57 = *&OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid;
    v58 = *&a2;
    v59 = a2 & 0xFFFFFFFFFFFFFF8;
    v60 = a2 & 0xC000000000000001;
    v15 = (v9 + 16);
    v16 = (v9 + 8);
    v17 = v63;
    while (1)
    {
      if (*&v60 == 0.0)
      {
        if (v14 >= *(v59 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v9 = *(a2 + 8 * v14 + 32);

        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = MEMORY[0x1BFB111F0](v14, a2, v12);
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v22 = v65;
          goto LABEL_16;
        }
      }

      v19 = *v15;
      v20 = MidX;
      (*v15)(COERCE_DOUBLE(*&MidX), v9 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v8);
      (v19)(*&v17, *&v64 + *&v57, v8);
      sub_1BB5CB47C(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
      v6 = sub_1BB6BABE4();
      v21 = *v16;
      (*v16)(*&v17, v8);
      v21(*&v20, v8);
      if (v6)
      {
      }

      else
      {
        v6 = &v65;
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        sub_1BB6BB424();
        sub_1BB6BB3E4();
      }

      *&a2 = v58;
      ++v14;
      if (v18 == *&v61)
      {
        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_1BB5C5700(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v125 = sub_1BB6BAA34();
  v7 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BB6BA844();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BB6BA7F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v109 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v109 - v21;
  v23 = *a2;
  v127 = *a3;
  v24 = sub_1BB609A70(v23, v127, 1.0);
  v26 = *(v24 + 16);
  if (v26)
  {
    v124 = v9;
    v139 = a1;
    v123 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera;
    v136 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration;
    v119 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_faceTrackers;
    v112 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastTrackerId;
    v141 = (v13 + 56);
    v122 = "ed. Ignoring body detection";
    v117 = 1.0e-10;
    v121 = "identityState";
    v111 = 0.115;
    v120 = (v7 + 8);
    v116 = "com.apple.DockKit";
    v110 = (v13 + 16);
    v109 = v24;
    v27 = (v24 + 40);
    *&v25 = 136315138;
    v115 = v25;
    v126 = 0.01;
    v135 = v3;
    v140 = v12;
    v137 = v19;
    while (1)
    {
      v29 = *(v27 - 1);
      v28 = *v27;
      if (v29)
      {
        if (!v28)
        {

          sub_1BB6489DC(v139, 0);
          (*v141)(v22, 1, 1, v12);

          sub_1BB6ABB40(0, 1, v22, 0.0);

          sub_1BB598308(v22, &qword_1EBC5C050);
          goto LABEL_5;
        }

        v30 = *(v29 + qword_1EBC5EE20);
        v31 = v30[2];
        v32 = 0.0;
        if (*(v31 + 33) == 1 && (*(v31 + 32) != 1 ? (v33 = *(v31 + 40)) : (v33 = atan2(*(v31 + 48), *(v31 + 56))), (v61 = v30[3], *(v61 + 33) == 1) && (*(v61 + 32) != 1 ? (v62 = *(v61 + 40)) : (v62 = atan2(*(v61 + 48), *(v61 + 56))), (v63 = v30[4], *(v63 + 33) == 1) && (*(v63 + 32) != 1 ? (v64 = *(v63 + 40)) : (v64 = atan2(*(v63 + 48), *(v63 + 56))), v65 = v30[5], *(v65 + 33) == 1))))
        {
          if (*(v65 + 32) == 1)
          {
            v66 = atan2(*(v65 + 48), *(v65 + 56));
          }

          else
          {
            v66 = *(v65 + 40);
          }

          v67 = 0;
          v32 = v33 - v64 * 0.5;
          v68 = v62 - v66 * 0.5;
        }

        else
        {
          v67 = 1;
          v68 = 0.0;
          v64 = 0.0;
          v66 = 0.0;
        }

        if (*(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw + 8))
        {
          v69 = *(v29 + qword_1EBC5F408);
          *(v69 + 33) = 0;
          v70 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

          sub_1BB598308(v69 + v70, &qword_1EBC5C050);
          v71 = *v141;
          v72 = (v69 + v70);
          v12 = v140;
          (*v141)(v72, 1, 1, v140);
        }

        else
        {
          v73 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw);
          v71 = *v141;
          (*v141)(v22, 1, 1, v12);

          sub_1BB6ABB40(0, 1, v22, v73);

          sub_1BB598308(v22, &qword_1EBC5C050);
        }

        if (*(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch + 8))
        {
          v74 = *(v29 + qword_1EBC5F410);
          *(v74 + 33) = 0;
          v75 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

          sub_1BB598308(v74 + v75, &qword_1EBC5C050);
          v76 = (v74 + v75);
          v12 = v140;
          v71(v76, 1, 1, v140);
        }

        else
        {
          v77 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch);
          v71(v22, 1, 1, v12);

          sub_1BB6ABB40(0, 1, v22, v77);

          sub_1BB598308(v22, &qword_1EBC5C050);
        }

        if (*(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll + 8))
        {
          v78 = *(v29 + qword_1EBC5F418);
          *(v78 + 33) = 0;
          v79 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

          sub_1BB598308(v78 + v79, &qword_1EBC5C050);
          v80 = (v78 + v79);
          v12 = v140;
          v71(v80, 1, 1, v140);
        }

        else
        {
          v81 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll);
          v71(v22, 1, 1, v12);

          sub_1BB6ABB40(0, 1, v22, v81);

          sub_1BB598308(v22, &qword_1EBC5C050);
        }

        sub_1BB6489DC(v139, v28);
        if (v67)
        {
        }

        else
        {
          v82 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
          v138 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8);
          v83 = v138;
          v85 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24);
          v132 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
          v84 = v132;
          v146.origin.x = v32;
          v146.origin.y = v68;
          v146.size.width = v64;
          v146.size.height = v66;
          Width = CGRectGetWidth(v146);
          v130 = v66;
          v128 = v32;
          v87 = Width;
          v147.origin.x = v82;
          v147.origin.y = v83;
          v147.size.width = v84;
          v147.size.height = v85;
          v88 = CGRectGetWidth(v147);
          if (v88 >= v87)
          {
            v88 = v87;
          }

          v148.origin.y = v68;
          v89 = v126;
          v148.size.width = v64;
          v131 = v64;
          v134 = fmax(v88, v126);
          v90 = v128;
          v148.origin.x = v128;
          y = v148.origin.y;
          v148.size.height = v66;
          Height = CGRectGetHeight(v148);
          v149.origin.x = v82;
          v93 = v82;
          v129 = v82;
          v149.origin.y = v138;
          v94 = v132;
          v149.size.width = v132;
          v149.size.height = v85;
          v95 = CGRectGetHeight(v149);
          if (v95 >= Height)
          {
            v95 = Height;
          }

          v133 = fmax(v95, v89);
          v150.origin.x = v90;
          v96 = v90;
          v150.origin.y = y;
          v97 = v130;
          v98 = v131;
          v150.size.width = v131;
          v150.size.height = v130;
          MidX = CGRectGetMidX(v150);
          v151.origin.x = v93;
          v100 = v138;
          v151.origin.y = v138;
          v151.size.width = v94;
          v151.size.height = v85;
          v134 = (MidX - CGRectGetMidX(v151)) / v134;
          v152.origin.x = v96;
          v152.origin.y = y;
          v152.size.width = v98;
          v152.size.height = v97;
          MidY = CGRectGetMidY(v152);
          v153.origin.x = v129;
          v153.origin.y = v100;
          v153.size.width = v94;
          v153.size.height = v85;
          v102 = CGRectGetMidY(v153);
          v103 = 1.0 / (exp(-(*(*(v135 + v136) + 64) * (sqrt(v134 * v134 + (MidY - v102) / v133 * ((MidY - v102) / v133)) - *(*(v135 + v136) + 56)))) + 1.0);
          if (v103 < 0.0)
          {
            v104 = 0.0;
          }

          else
          {
            v104 = v103;
          }

          v105 = 1.0 - v104;
          if (v103 >= 1.0)
          {
            v106 = 0.0;
          }

          else
          {
            v106 = v105;
          }

          sub_1BB5C513C(v28, v127, v96, y, v98, v97);
          v108 = v107 * v106;
          v71(v22, 1, 1, v12);

          sub_1BB6ABB40(0, 1, v22, v108);

          sub_1BB598308(v22, &qword_1EBC5C050);
        }
      }

      else
      {
        if (!v28)
        {
          goto LABEL_5;
        }

        v34 = v135;
        if (*(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance + 8))
        {
          sub_1BB5CB610(v135 + v123, v19, type metadata accessor for DKCamera);
          v35 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
          v36 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8);
          v37 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
          v38 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24);
          swift_retain_n();
          v144.origin.x = v35;
          v144.origin.y = v36;
          v144.size.width = v37;
          v144.size.height = v38;
          v39 = 10.0;
          if (CGRectGetWidth(v144) >= v117)
          {
            v40 = v19[3] * v111;
            v145.origin.x = v35;
            v145.origin.y = v36;
            v145.size.width = v37;
            v145.size.height = v38;
            v39 = v40 / CGRectGetWidth(v145);
          }

          sub_1BB5CB678(v19, type metadata accessor for DKCamera);
        }

        else
        {
          v39 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance);
          swift_retain_n();
        }

        v41 = *(*(v34 + v136) + 16);
        if (v39 >= *(v41 + 144) || ((v42 = *(v34 + v119), v42 >> 62) ? (v43 = sub_1BB6BB564(), v41 = *(*(v34 + v136) + 16)) : (v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10)), v43 >= *(v41 + 152)))
        {
          v55 = sub_1BB6BB064();
          v56 = v124;
          sub_1BB6BAA24();
          v57 = sub_1BB6BAA14();
          if (os_log_type_enabled(v57, v55))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v142 = v59;
            *v58 = v115;
            *(v58 + 4) = sub_1BB6A0A5C(0xD00000000000003BLL, v116 | 0x8000000000000000, &v142);
            _os_log_impl(&dword_1BB58A000, v57, v55, "%s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v59);
            MEMORY[0x1BFB122F0](v59, -1, -1);
            v60 = v58;
            v19 = v137;
            MEMORY[0x1BFB122F0](v60, -1, -1);
          }

          (*v120)(v56, v125);

          v12 = v140;
          goto LABEL_5;
        }

        v44 = v139;
        (*v110)(v118, v139, v12);

        v45 = v114;
        sub_1BB6BA834();
        v46 = v112;
        v138 = *(v34 + v112);
        if (*(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8))
        {
          v47 = NAN;
        }

        else
        {
          v47 = *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
        }

        v134 = v47;
        v48 = v113;
        sub_1BB5CB610(v34 + v123, v113, type metadata accessor for DKCamera);
        type metadata accessor for DKFaceTracker();
        swift_allocObject();
        result = DKFaceTracker.init(time:configuration:uuid:trackerId:anstId:camera:)(v118, v41, v45, *&v138, *&v134, v48);
        v50 = *(v34 + v46);
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          __break(1u);
          return result;
        }

        *(v34 + v46) = v52;

        sub_1BB64A858(v44, v28);

        v12 = v140;
        (*v141)(v22, 1, 1, v140);

        sub_1BB6ABB40(0, 1, v22, 0.0);

        sub_1BB598308(v22, &qword_1EBC5C050);

        v54 = v119;
        MEMORY[0x1BFB10C80](v53);
        if (*((*(v34 + v54) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v34 + v54) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();
      }

      v19 = v137;
LABEL_5:
      v27 += 3;
      if (!--v26)
      {
      }
    }
  }
}

uint64_t sub_1BB5C66A4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v4 = v3;
  v127 = sub_1BB6BAA34();
  v8 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v128 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v119 = v98 - v11;
  v12 = sub_1BB6BA844();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v118 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = v98 - v16;
  v133 = sub_1BB6BA7F4();
  v17 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v100 = v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v120 = v98 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v132 = v98 - v22;
  v23 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v99 = v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v126 = v98 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v116 = v98 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v131 = v98 - v30;
  v31 = sub_1BB609AB4(*a2, *a3, 1.0);
  v33 = *(v31 + 16);
  if (!v33)
  {
  }

  v115 = v12;
  v125 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera;
  v129 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration;
  v121 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_bodyTrackers;
  v124 = "ed. Ignoring body detection";
  v114 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastTrackerId;
  v122 = (v8 + 8);
  v123 = "identityState";
  v112 = "";
  v34 = (v17 + 16);
  v113 = (v13 + 16);
  v105 = "lastVerticalFraming";
  v104 = (v17 + 56);
  v103 = (v13 + 8);
  v102 = (v17 + 8);
  v98[1] = v31;
  v35 = (v31 + 40);
  *&v32 = 136315138;
  v111 = v32;
  v36 = v128;
  v37 = v131;
  v130 = (v17 + 16);
  v107 = a1;
  v106 = v4;
  while (1)
  {
    v38 = *(v35 - 1);
    v39 = *v35;
    if (v38)
    {
      break;
    }

    if (v39)
    {
      if (*(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance + 8))
      {
        sub_1BB5CB610(v4 + v125, v37, type metadata accessor for DKCamera);
        v45 = *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
        v46 = *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8);
        v47 = *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
        v48 = *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24);
        swift_retain_n();
        v136.origin.x = v45;
        v136.origin.y = v46;
        v136.size.width = v47;
        v136.size.height = v48;
        v49 = 10.0;
        if (CGRectGetWidth(v136) >= 1.0e-10)
        {
          v50 = *(v37 + 24) * 0.35;
          v137.origin.x = v45;
          v137.origin.y = v46;
          v137.size.width = v47;
          v137.size.height = v48;
          v49 = v50 / CGRectGetWidth(v137);
        }

        sub_1BB5CB678(v37, type metadata accessor for DKCamera);
      }

      else
      {
        v49 = *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance);
        swift_retain_n();
      }

      v51 = *(*(v4 + v129) + 24);
      v53 = v132;
      v52 = v133;
      if (v49 >= *(v51 + 144) || ((v54 = *(v4 + v121), v54 >> 62) ? (v55 = sub_1BB6BB564(), v53 = v132, v52 = v133, v51 = *(*(v4 + v129) + 24)) : (v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10)), v55 >= *(v51 + 152)))
      {
        v86 = sub_1BB6BB064();
        sub_1BB6BAA24();
        v87 = sub_1BB6BAA14();
        if (os_log_type_enabled(v87, v86))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v134 = v89;
          *v88 = v111;
          *(v88 + 4) = sub_1BB6A0A5C(0xD00000000000003BLL, v112 | 0x8000000000000000, &v134);
          _os_log_impl(&dword_1BB58A000, v87, v86, "%s", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v89);
          v90 = v89;
          v36 = v128;
          MEMORY[0x1BFB122F0](v90, -1, -1);
          MEMORY[0x1BFB122F0](v88, -1, -1);
        }

        (*v122)(v36, v127);

        v37 = v131;
      }

      else
      {
        v56 = v4;
        v57 = *v34;
        (*v34)(v53, a1, v52);

        v58 = v117;
        sub_1BB6BA834();
        v109 = *(v56 + v114);
        if (*(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8))
        {
          v59 = -1;
        }

        else
        {
          v59 = *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId);
        }

        v110 = v59;
        v60 = v56 + v125;
        v61 = v116;
        sub_1BB5CB610(v60, v116, type metadata accessor for DKCamera);
        type metadata accessor for DKBodyTracker();
        v62 = swift_allocObject();
        v101 = v57;
        v57(v120, v132, v133);
        v108 = *v113;
        v63 = v118;
        v64 = v115;
        v108(v118, v58, v115);
        sub_1BB5CB610(v61, v126, type metadata accessor for DKCamera);
        v65 = (v62 + qword_1EBC5EE08);
        *v65 = -1;
        v65[1] = 0;
        *(v62 + qword_1EBC5EE10) = -1;
        sub_1BB6BAA24();
        v66 = qword_1EBC5EE20;
        type metadata accessor for DKBoundingBoxFilter();
        swift_allocObject();
        *(v62 + v66) = DKBoundingBoxFilter.init(alpha:)(0.9);
        sub_1BB6BA724();
        *(v62 + qword_1EBC5EE38) = 0;
        v67 = MEMORY[0x1E69E7CC0];
        *(v62 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
        *(v62 + *(*v62 + 200)) = 0;
        *(v62 + *(*v62 + 216)) = 0;
        v68 = *(*v62 + 232);
        v69 = type metadata accessor for DKPersonGroupFilter.Track(0);
        (*(*(v69 - 8) + 56))(v62 + v68, 1, 1, v69);
        *(v62 + *(*v62 + 240)) = 0;
        *(v62 + *(*v62 + 256)) = 0;
        *(v62 + qword_1EBC5EE28) = v51;
        *(v62 + qword_1EBC5EE00) = v109;
        v108((v62 + qword_1EBC5EDF8), v63, v64);
        *(v62 + qword_1EBC5EE10) = v110;
        sub_1BB5CB610(v126, v62 + *(*v62 + 224), type metadata accessor for DKCamera);
        v70 = *(v51 + 16);
        v71 = *(v51 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
        swift_allocObject();

        *(v62 + *(*v62 + 208)) = sub_1BB6B44C8(v67, v70, v71);
        v72 = *(v51 + 176);
        v73 = *(v51 + 184);
        v74 = *v104;
        v75 = v133;
        (*v104)(v119, 1, 1, v133);
        type metadata accessor for DKSmoothingFilter();
        v76 = swift_allocObject();
        *(v76 + 33) = 0;
        *(v76 + 40) = 0;
        *(v76 + 48) = 0;
        *(v76 + 56) = 0x3FF0000000000000;
        v77 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
        v74(v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v75);
        v78 = v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
        *v78 = 0;
        *(v78 + 8) = 1;
        v79 = v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
        *v79 = 0;
        *(v79 + 8) = 1;
        *(v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
        *(v76 + 16) = v72;
        *(v76 + 24) = v73;
        *(v76 + 32) = 0;
        sub_1BB5BF3C4(v119, v76 + v77);
        *v78 = 0;
        *(v78 + 8) = 1;
        *v79 = 0;
        *(v79 + 8) = 1;
        *(v62 + *(*v62 + 248)) = v76;
        if (*(v51 + 136) == 1)
        {
          v80 = v100;
          v101(v100, v120, v133);
          v81 = v126;
          v82 = v99;
          sub_1BB5CB610(v126, v99, type metadata accessor for DKCamera);
          type metadata accessor for DKSphericalMotionFilter(0);
          swift_allocObject();
          v110 = sub_1BB66327C(v80, v51, v82);

          sub_1BB5CB678(v81, type metadata accessor for DKCamera);
          v109 = *v103;
          v83 = v115;
          v109(v118, v115);
          v84 = *v102;
          v85 = v133;
          (*v102)(v120, v133);
          sub_1BB5CB678(v116, type metadata accessor for DKCamera);
          v109(v117, v83);
          v84(v132, v85);
          *(v62 + *(*v62 + 216)) = v110;
        }

        else
        {

          sub_1BB5CB678(v126, type metadata accessor for DKCamera);
          v110 = *v103;
          v91 = v115;
          v110(v118, v115);
          v92 = *v102;
          v93 = v133;
          (*v102)(v120, v133);
          sub_1BB5CB678(v116, type metadata accessor for DKCamera);
          v110(v117, v91);
          result = (v92)(v132, v93);
        }

        v4 = v106;
        v94 = *(v106 + v114);
        v43 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        a1 = v107;
        v37 = v131;
        if (v43)
        {
          goto LABEL_40;
        }

        *(v106 + v114) = v95;

        sub_1BB648FA8(a1, v39);

        v97 = v121;
        MEMORY[0x1BFB10C80](v96);
        if (*((*(v4 + v97) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v97) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
          v37 = v131;
        }

        sub_1BB6BAEB4();

        v36 = v128;
      }

      v34 = v130;
    }

LABEL_5:
    v35 += 3;
    if (!--v33)
    {
    }
  }

  if (v39)
  {

    sub_1BB648FA8(a1, v39);

LABEL_4:

    goto LABEL_5;
  }

  *(v38 + qword_1EBC5EE38) = 0;

  result = sub_1BB648868(a1, 0);
  v41 = *(*v38 + 256);
  v42 = *(v38 + v41);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    *(v38 + v41) = v44;
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BB5C764C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v89 - v9;
  v10 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - v16;
  v115 = sub_1BB6BA844();
  v18 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v89 - v21;
  v120 = sub_1BB6BA7F4();
  v22 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v90 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v112 = &v89 - v28;
  v29 = sub_1BB60A3A0(*a2, *a3, 1.0);
  v30 = *(v29 + 16);
  if (!v30)
  {
  }

  v110 = v17;
  v111 = v14;
  v99 = v4 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera;
  v98 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration;
  v109 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastTrackerId;
  v97 = (v18 + 16);
  v92 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers;
  v96 = "lastVerticalFraming";
  v95 = (v22 + 56);
  v94 = (v18 + 8);
  v93 = (v22 + 8);
  v31 = (v22 + 16);
  v89 = v29;
  v32 = (v29 + 40);
  v117 = xmmword_1BB6BD520;
  v116 = v26;
  v119 = v31;
  v101 = v4;
  v100 = a1;
  while (1)
  {
    v35 = *(v32 - 1);
    v36 = *v32;
    if (v35)
    {
      if (v36)
      {

        sub_1BB649574(a1, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C490);
        inited = swift_initStackObject();
        *(inited + 16) = v117;
        *(inited + 32) = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality);
        *(inited + 40) = 0x3FF0000000000000;
        v34 = sub_1BB5B09CC(inited);
        v31 = v119;
        swift_setDeallocating();

        sub_1BB654BC4(v34, 1, 0);
      }

      else
      {
        *(v35 + qword_1EBC5EE38) = 0;

        result = sub_1BB6489C8(a1, 0);
        v38 = *(*v35 + 256);
        v39 = *(v35 + v38);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_26;
        }

        *(v35 + v38) = v41;
      }

      goto LABEL_4;
    }

    if (!v36)
    {
      goto LABEL_5;
    }

    v108 = v30;
    v42 = v4;
    v43 = *v31;
    v44 = a1;
    v45 = v112;
    (*v31)(v112, v44, v120);
    v46 = *(*(v42 + v98) + 32);
    swift_retain_n();
    v105 = v46;

    v47 = v113;
    sub_1BB6BA834();
    v106 = *(v42 + v109);
    v48 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId + 8) ? -1 : *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId);
    v107 = v48;
    v118 = type metadata accessor for DKCamera;
    v49 = v110;
    sub_1BB5CB610(v99, v110, type metadata accessor for DKCamera);
    type metadata accessor for DKHandTracker();
    v50 = swift_allocObject();
    v51 = *(v46 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C480);
    swift_allocObject();
    *(v50 + qword_1EBC5F440) = sub_1BB6B47F8(&unk_1F3A48528, v51, v51);
    v103 = v43;
    v43(v116, v45, v120);
    v104 = *v97;
    v52 = v114;
    v53 = v115;
    v104(v114, v47, v115);
    v54 = v49;
    v55 = v111;
    sub_1BB5CB610(v54, v111, v118);
    v56 = (v50 + qword_1EBC5EE08);
    *v56 = -1;
    v56[1] = 0;
    *(v50 + qword_1EBC5EE10) = -1;
    sub_1BB6BAA24();
    v57 = qword_1EBC5EE20;
    type metadata accessor for DKBoundingBoxFilter();
    swift_allocObject();
    *(v50 + v57) = DKBoundingBoxFilter.init(alpha:)(0.9);
    sub_1BB6BA724();
    *(v50 + qword_1EBC5EE38) = 0;
    *(v50 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
    *(v50 + *(*v50 + 200)) = 0;
    *(v50 + *(*v50 + 216)) = 0;
    v58 = *(*v50 + 232);
    v59 = type metadata accessor for DKPersonGroupFilter.Track(0);
    (*(*(v59 - 8) + 56))(v50 + v58, 1, 1, v59);
    *(v50 + *(*v50 + 240)) = 0;
    *(v50 + *(*v50 + 256)) = 0;
    v60 = v105;
    *(v50 + qword_1EBC5EE28) = v105;
    *(v50 + qword_1EBC5EE00) = v106;
    v104((v50 + qword_1EBC5EDF8), v52, v53);
    *(v50 + qword_1EBC5EE10) = v107;
    sub_1BB5CB610(v55, v50 + *(*v50 + 224), v118);
    v61 = *(v60 + 16);
    v62 = *(v60 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
    swift_allocObject();

    *(v50 + *(*v50 + 208)) = sub_1BB6B44C8(MEMORY[0x1E69E7CC0], v61, v62);
    v63 = *(v60 + 176);
    v64 = *(v60 + 184);
    v65 = *v95;
    v66 = v102;
    v67 = v120;
    (*v95)(v102, 1, 1, v120);
    type metadata accessor for DKSmoothingFilter();
    v68 = swift_allocObject();
    *(v68 + 33) = 0;
    *(v68 + 40) = 0;
    *(v68 + 48) = 0;
    *(v68 + 56) = 0x3FF0000000000000;
    v69 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v65((v68 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v67);
    v70 = v68 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v70 = 0;
    *(v70 + 8) = 1;
    v71 = v68 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v71 = 0;
    *(v71 + 8) = 1;
    *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v68 + 16) = v63;
    *(v68 + 24) = v64;
    *(v68 + 32) = 0;
    sub_1BB5BF3C4(v66, v68 + v69);
    *v70 = 0;
    *(v70 + 8) = 1;
    *v71 = 0;
    *(v71 + 8) = 1;
    *(v50 + *(*v50 + 248)) = v68;
    if (*(v60 + 136) == 1)
    {
      v72 = v90;
      v103(v90, v116, v120);
      v73 = v111;
      v74 = v91;
      sub_1BB5CB610(v111, v91, type metadata accessor for DKCamera);
      type metadata accessor for DKSphericalMotionFilter(0);
      swift_allocObject();
      v118 = sub_1BB66327C(v72, v60, v74);

      sub_1BB5CB678(v73, type metadata accessor for DKCamera);
      v75 = *v94;
      v76 = v115;
      (*v94)(v114, v115);
      v77 = *v93;
      v78 = v120;
      (*v93)(v116, v120);
      sub_1BB5CB678(v110, type metadata accessor for DKCamera);
      v75(v113, v76);
      v77(v112, v78);
      *(v50 + *(*v50 + 216)) = v118;
    }

    else
    {

      sub_1BB5CB678(v111, type metadata accessor for DKCamera);
      v79 = *v94;
      v80 = v115;
      (*v94)(v114, v115);
      v81 = *v93;
      v82 = v120;
      (*v93)(v116, v120);
      sub_1BB5CB678(v110, type metadata accessor for DKCamera);
      v79(v113, v80);
      result = (v81)(v112, v82);
    }

    v4 = v101;
    v83 = *(v101 + v109);
    v40 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    a1 = v100;
    v30 = v108;
    if (v40)
    {
      break;
    }

    *(v101 + v109) = v84;

    sub_1BB649574(a1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C490);
    v85 = swift_initStackObject();
    *(v85 + 16) = v117;
    *(v85 + 32) = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality);
    *(v85 + 40) = 0x3FF0000000000000;
    v86 = sub_1BB5B09CC(v85);
    swift_setDeallocating();

    sub_1BB654BC4(v86, 1, 0);

    v88 = v92;
    MEMORY[0x1BFB10C80](v87);
    if (*((*(v4 + v88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BB6BAE64();
    }

    sub_1BB6BAEB4();

    v31 = v119;
LABEL_4:

LABEL_5:
    v32 += 3;
    if (!--v30)
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BB5C8430()
{
  v1 = sub_1BB6BA844();
  v32 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_1BB5CA9D0(v4);

  v6 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  if (v6 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v29)
  {
    v35 = v6 & 0xC000000000000001;
    v30 = v6 + 32;
    v31 = v6 & 0xFFFFFFFFFFFFFF8;
    v37 = v32 + 16;
    v38 = v5 + 56;
    v8 = (v32 + 8);
    v33 = v6;

    v9 = 0;
    v39 = v5;
    v34 = i;
    while (v35)
    {
      v6 = MEMORY[0x1BFB111F0](v9, v33);
      v10 = v6;
      v11 = __OFADD__(v9, 1);
      v12 = v9 + 1;
      if (v11)
      {
        goto LABEL_36;
      }

LABEL_12:
      v36 = v12;
      if (*(v5 + 16) && (sub_1BB5CB47C(&qword_1EBC5C288, MEMORY[0x1E69695A8]), v6 = sub_1BB6BAB74(), v13 = -1 << *(v5 + 32), v14 = v6 & ~v13, ((*(v38 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        v16 = *(v32 + 72);
        v17 = *(v32 + 16);
        do
        {
          v17(v3, *(v39 + 48) + v16 * v14, v1);
          sub_1BB5CB47C(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
          v18 = sub_1BB6BABE4();
          v6 = (*v8)(v3, v1);
          if (v18)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
        }

        while (((*(v38 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
      if (v19)
      {
        *(v19 + *(*v19 + 240)) = v18 & 1;
      }

      v20 = *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
      v5 = v39;
      if (v20)
      {
        *(v20 + *(*v20 + 240)) = v18 & 1;
      }

      v21 = *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_handTrackers);
      if (v21 >> 62)
      {
        v6 = sub_1BB6BB564();
        v22 = v6;
        if (!v6)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_4;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_37;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v23 = v18 & 1;

        for (j = 0; j != v22; ++j)
        {
          v25 = MEMORY[0x1BFB111F0](j, v21);
          *(v25 + *(*v25 + 240)) = v23;
          swift_unknownObjectRelease();
        }

        goto LABEL_5;
      }

      v26 = (v21 + 32);
      do
      {
        v27 = *v26++;
        *(v27 + *(*v27 + 240)) = v18 & 1;
        --v22;
      }

      while (v22);
LABEL_4:

LABEL_5:
      v9 = v36;
      if (v36 == v34)
      {
      }
    }

    if (v9 >= *(v31 + 16))
    {
      goto LABEL_38;
    }

    v10 = *(v30 + 8 * v9);

    v11 = __OFADD__(v9, 1);
    v12 = v9 + 1;
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v29 = v6;
    i = sub_1BB6BB564();
  }
}

uint64_t sub_1BB5C88CC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_faceTrackers) = MEMORY[0x1E69E7CC0];

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_bodyTrackers) = v2;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers) = v2;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers) = v2;

  sub_1BB638390();

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastPersonId) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastTrackerId) = 0;
  return result;
}

uint64_t DKMultiSubjectTracker.deinit()
{
  sub_1BB5CB678(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera, type metadata accessor for DKCamera);

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKMultiSubjectTracker.__deallocating_deinit()
{
  DKMultiSubjectTracker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5C8AEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1BB59CF10(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1BB6BA844();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BB5C8C18(uint64_t a1)
{
  v6 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v7 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    result = v7 + v6;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = sub_1BB6BB564();
  v8 = __OFADD__(v17, v6);
  result = v17 + v6;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1BB68C840();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v3 + 0x10);
  v11 = (*(v3 + 0x18) >> 1) - v10;
  result = sub_1BB6A2AD4(&v32, (v3 + 8 * v10 + 32), v11, a1);
  if (result < v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v8 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v8)
    {
      __break(1u);
LABEL_16:
      v20 = (v13 + 64) >> 6;
      while (1)
      {
        v21 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_38;
        }

        if (v21 >= v20)
        {
          goto LABEL_8;
        }

        v22 = *(v12 + 8 * v21);
        ++v4;
        if (v22)
        {
          v18 = (v22 - 1) & v22;
          v19 = __clz(__rbit64(v22)) | (v21 << 6);
          v4 = v21;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v16;
  }

  result = v32;
  if (v14 != v11)
  {
LABEL_8:
    result = sub_1BB593660();
    *v1 = v2;
    return result;
  }

LABEL_13:
  v11 = *(v3 + 16);
  v12 = v33;
  v13 = v34;
  v4 = v35;
  v31 = v33;
  if (!v36)
  {
    goto LABEL_16;
  }

  v18 = (v36 - 1) & v36;
  v19 = __clz(__rbit64(v36)) | (v35 << 6);
  v20 = (v34 + 64) >> 6;
LABEL_21:
  v30 = result;
  v23 = *(*(result + 56) + 8 * v19);

  v24 = v31;
  while (1)
  {
LABEL_23:
    if (v11 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BB6BAE64();
      v24 = v31;
    }

    v2 = *v1;
    v25 = *v1 & 0xFFFFFFFFFFFFFF8;
    v26 = *(v25 + 0x18) >> 1;
    if (v11 < v26)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
  }

  while (1)
  {
    *(v25 + 32 + 8 * v11++) = v23;
    if (!v18)
    {
      break;
    }

    result = v30;
LABEL_33:
    v29 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(result + 56) + ((v4 << 9) | (8 * v29)));

    v24 = v31;
    if (v11 == v26)
    {
      v11 = v26;
      *(v25 + 16) = v26;
      goto LABEL_23;
    }
  }

  v27 = v4;
  result = v30;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v20)
    {
      *(v25 + 16) = v11;
      goto LABEL_8;
    }

    v18 = *(v24 + 8 * v28);
    ++v27;
    if (v18)
    {
      v4 = v28;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BB5C8ED4(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BB5C8FF4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BB59E150(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BB5C91AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB64ACCC(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1BB5C91F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB6B3338(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1BB5C9234@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB657060(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1BB5C9278(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BB695894(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BB5C92F4(v6);
  return sub_1BB6BB3E4();
}

void sub_1BB5C92F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BB6BB784();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DKPersonTrackerState(0);
        v6 = sub_1BB6BAE94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1BB5C965C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BB5C93F8(0, v2, 1, a1);
  }
}

void sub_1BB5C93F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1BB6BA7F4();
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v13 = type metadata accessor for DKIdentityFilter.IdentityState(0);
    v35 = *(v8 + 16);
    v36 = v13;
    v37 = v8 + 16;
    v34 = (v8 + 8);
    v41 = v12;
    v14 = (v12 + 8 * a3 - 8);
    v15 = a1 - a3;
    v16 = v38;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v17 = *(v41 + 8 * a3);
    v31 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v36;
      v20 = v39;
      v21 = v35;
      v35(v39, v17 + *(v36 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v16);
      v22 = *(v19 + 32);
      v42 = v18;
      v23 = v18 + v22 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState;
      v24 = v40;
      v21(v40, v23, v16);

      v25 = sub_1BB6BA774();
      v26 = *v34;
      (*v34)(v24, v16);
      v26(v20, v16);

      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 1;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v27 = *v14;
      v17 = v14[1];
      *v14 = v17;
      v14[1] = v27;
      --v14;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BB5C965C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v120 = a1;
  v136 = sub_1BB6BA7F4();
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v118 - v12;
  v127 = a3;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v5 = *v120;
    if (!*v120)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v15 = sub_1BB693A54(v15);
    }

    v138 = v15;
    v114 = *(v15 + 2);
    if (v114 >= 2)
    {
      while (*v127)
      {
        v115 = *&v15[16 * v114];
        v116 = *&v15[16 * v114 + 24];
        sub_1BB5C9F74((*v127 + 8 * v115), (*v127 + 8 * *&v15[16 * v114 + 16]), (*v127 + 8 * v116), v5);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v116 < v115)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1BB693A54(v15);
        }

        if (v114 - 2 >= *(v15 + 2))
        {
          goto LABEL_113;
        }

        v117 = &v15[16 * v114];
        *v117 = v115;
        *(v117 + 1) = v116;
        v138 = v15;
        sub_1BB6939C8(v114 - 1);
        v15 = v138;
        v114 = *(v138 + 2);
        if (v114 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v119 = a4;
  v14 = 0;
  v132 = (v11 + 8);
  v133 = (v11 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v131 = v13;
      v17 = *v127;
      v128 = *(*v127 + 8 * v14);
      v18 = v128;
      v124 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState;
      v22 = type metadata accessor for DKIdentityFilter.IdentityState(0);
      v23 = v18 + *(v22 + 32);
      v24 = *v133;
      v25 = v23 + v21;
      v26 = v134;
      v121 = v16;
      v27 = v136;
      v24(v134, v25, v136);
      v129 = v24;
      v130 = v22;
      v28 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState + *(v22 + 32);
      v29 = v135;
      v24(v135, v28, v27);

      v137 = sub_1BB6BA774();
      v30 = *v132;
      (*v132)(v29, v27);
      v125 = v30;
      (v30)(v26, v27);

      v31 = v121 + 2;
      v126 = v15;
      while (1)
      {
        v14 = v131;
        if (v131 == v31)
        {
          break;
        }

        v32 = *(v5 - 8);
        v33 = v130;
        v34 = *v5 + *(v130 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState;
        v35 = v134;
        v128 = v6;
        v36 = v136;
        v37 = v5;
        v38 = v129;
        v129(v134, v34, v136);
        v39 = v32 + *(v33 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState;
        v40 = v135;
        v38(v135, v39, v36);
        v41 = v37;

        LODWORD(v33) = sub_1BB6BA774() & 1;
        v42 = v125;
        v125(v40, v36);
        v43 = v36;
        v6 = v128;
        v42(v35, v43);

        ++v31;
        v5 = v41 + 8;
        v44 = (v137 & 1) == v33;
        v15 = v126;
        if (!v44)
        {
          v14 = v31 - 1;
          break;
        }
      }

      v16 = v121;
      v45 = v124;
      if (v137)
      {
        if (v14 < v121)
        {
          goto LABEL_116;
        }

        if (v121 < v14)
        {
          v46 = 8 * v14 - 8;
          v47 = v14;
          v48 = v121;
          do
          {
            if (v48 != --v47)
            {
              v50 = *v127;
              if (!*v127)
              {
                goto LABEL_122;
              }

              v49 = *(v50 + v45);
              *(v50 + v45) = *(v50 + v46);
              *(v50 + v46) = v49;
            }

            ++v48;
            v46 -= 8;
            v45 += 8;
          }

          while (v48 < v47);
        }
      }
    }

    v51 = v127[1];
    if (v14 < v51)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_115;
      }

      if (v14 - v16 < v119)
      {
        if (__OFADD__(v16, v119))
        {
          goto LABEL_117;
        }

        if (v16 + v119 >= v51)
        {
          v52 = v127[1];
        }

        else
        {
          v52 = (v16 + v119);
        }

        if (v52 < v16)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v14 != v52)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BB59D140(0, *(v15 + 2) + 1, 1, v15);
    }

    v69 = *(v15 + 2);
    v68 = *(v15 + 3);
    v5 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v15 = sub_1BB59D140((v68 > 1), v69 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v70 = &v15[16 * v69];
    *(v70 + 4) = v16;
    *(v70 + 5) = v14;
    v71 = *v120;
    if (!*v120)
    {
      goto LABEL_124;
    }

    if (v69)
    {
      while (1)
      {
        v72 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v73 = *(v15 + 4);
          v74 = *(v15 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_56:
          if (v76)
          {
            goto LABEL_103;
          }

          v89 = &v15[16 * v5];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_106;
          }

          v95 = &v15[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_110;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v99 = &v15[16 * v5];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_70:
        if (v94)
        {
          goto LABEL_105;
        }

        v102 = &v15[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_108;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_77:
        v110 = v72 - 1;
        if (v72 - 1 >= v5)
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
          goto LABEL_118;
        }

        if (!*v127)
        {
          goto LABEL_121;
        }

        v111 = *&v15[16 * v110 + 32];
        v112 = *&v15[16 * v72 + 40];
        sub_1BB5C9F74((*v127 + 8 * v111), (*v127 + 8 * *&v15[16 * v72 + 32]), (*v127 + 8 * v112), v71);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v112 < v111)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1BB693A54(v15);
        }

        if (v110 >= *(v15 + 2))
        {
          goto LABEL_100;
        }

        v113 = &v15[16 * v110];
        *(v113 + 4) = v111;
        *(v113 + 5) = v112;
        v138 = v15;
        sub_1BB6939C8(v72);
        v15 = v138;
        v5 = *(v138 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v15[16 * v5 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_101;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_102;
      }

      v84 = &v15[16 * v5];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_104;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_107;
      }

      if (v88 >= v80)
      {
        v106 = &v15[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_111;
        }

        if (v75 < v109)
        {
          v72 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = v127[1];
    if (v14 >= v13)
    {
      goto LABEL_87;
    }
  }

  v126 = v15;
  v128 = v6;
  v53 = *v127;
  v54 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  v129 = *v133;
  v130 = v54;
  v131 = v53;
  v55 = v53 + 8 * v14 - 8;
  v121 = v16;
  v122 = v52;
  v56 = v16 - v14;
LABEL_29:
  v124 = v55;
  v125 = v14;
  v57 = *(v131 + 8 * v14);
  v123 = v56;
  v58 = v55;
  while (1)
  {
    v59 = *v58;
    v60 = v129;
    v61 = v130;
    v62 = v134;
    v63 = v136;
    v129(v134, v57 + *(v130 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v136);
    v64 = v59 + *(v61 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState;
    v5 = v135;
    v60(v135, v64, v63);

    v137 = sub_1BB6BA774();
    v65 = *v132;
    (*v132)(v5, v63);
    v65(v62, v63);

    if ((v137 & 1) == 0)
    {
LABEL_28:
      v14 = v125 + 1;
      v55 = v124 + 8;
      v56 = v123 - 1;
      if (v125 + 1 != v122)
      {
        goto LABEL_29;
      }

      v14 = v122;
      v6 = v128;
      v15 = v126;
      v16 = v121;
      goto LABEL_36;
    }

    if (!v131)
    {
      break;
    }

    v66 = *v58;
    v57 = v58[1];
    *v58 = v57;
    v58[1] = v66;
    --v58;
    if (__CFADD__(v56++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1BB5C9F74(char *a1, char *a2, char *a3, char *a4)
{
  v53 = sub_1BB6BA7F4();
  v56 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v46 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    v55 = a1;
    if (a4 != a2 || &a2[8 * v14] <= a4)
    {
      memmove(a4, a2, 8 * v14);
    }

    v59 = &a4[8 * v14];
    if (a3 - a2 >= 8 && a2 > v55)
    {
      v29 = type metadata accessor for DKIdentityFilter.IdentityState(0);
      v48 = *(v56 + 16);
      v49 = v29;
      v56 += 16;
      v47 = (v56 - 8);
      v58 = a4;
LABEL_28:
      v46 = a2;
      v30 = a2 - 8;
      v31 = a3 - 8;
      v32 = v59;
      v50 = a2 - 8;
      do
      {
        v57 = v31;
        v51 = (v31 + 8);
        v33 = *(v32 - 1);
        v32 -= 8;
        v34 = *v30;
        v36 = v48;
        v35 = v49;
        v38 = v52;
        v37 = v53;
        v48(v52, v33 + *(v49 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v53);
        v39 = v54;
        v36(v54, v34 + *(v35 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v37);

        v40 = sub_1BB6BA774();
        v41 = *v47;
        (*v47)(v39, v37);
        v41(v38, v37);

        if (v40)
        {
          v43 = v50;
          v44 = v55;
          a3 = v57;
          if (v51 != v46)
          {
            *v57 = *v50;
          }

          a4 = v58;
          if (v59 <= v58 || (a2 = v43, v43 <= v44))
          {
            a2 = v43;
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        v42 = v57;
        if (v51 != v59)
        {
          *v57 = *v32;
        }

        v31 = v42 - 8;
        v59 = v32;
        a4 = v58;
        v30 = v50;
      }

      while (v32 > v58);
      v59 = v32;
      a2 = v46;
    }
  }

  else
  {
    v15 = a1;
    if (a4 != a1 || &a1[8 * v12] <= a4)
    {
      memmove(a4, a1, 8 * v12);
    }

    v59 = &a4[8 * v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = a2;
      v57 = a3;
      v17 = type metadata accessor for DKIdentityFilter.IdentityState(0);
      v50 = *(v56 + 16);
      v51 = v17;
      v56 += 16;
      v49 = v56 - 8;
      while (1)
      {
        v58 = a4;
        v55 = v15;
        v18 = *a4;
        v20 = v51;
        v19 = v52;
        v21 = v53;
        v22 = v50;
        (v50)(v52, *v16 + *(v51 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v53);
        v23 = v54;
        (v22)(v54, v18 + *(v20 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v21);

        v24 = sub_1BB6BA774();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v19, v21);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v26 = v16;
        v27 = v55;
        v28 = v55 == v16;
        v16 += 8;
        a4 = v58;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        v15 = v27 + 8;
        if (a4 >= v59 || v16 >= v57)
        {
          goto LABEL_20;
        }
      }

      v26 = v58;
      a4 = v58 + 8;
      v27 = v55;
      if (v55 == v58)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v15;
  }

LABEL_39:
  if (a2 != a4 || a2 >= &a4[(v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v59 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1BB5CA4C8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1BB6BB564();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BB5CA56C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BB6BB564();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BB6BB564();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BB5CB6D8(&qword_1EBC5C4B0, &qword_1EBC5BF00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF00);
            v9 = sub_1BB5CA88C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DKPersonTrackerState(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB5CA6FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BB6BB564();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BB6BB564();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BB5CB6D8(&qword_1EBC5C450, &qword_1EBC5C448);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C448);
            v9 = sub_1BB5CA90C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DKPersonTracker();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BB5CA88C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB111F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1BB5CB798;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BB5CA90C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB111F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1BB5CA98C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB5CA9D0(uint64_t a1)
{
  v2 = sub_1BB6BA844();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BB5CB47C(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1BFB10E40](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1BB5AD188(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BB5CAB6C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BB5CABBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB6989C8(*(v1 + 16), 0);
  *a1 = result;
  return result;
}

uint64_t sub_1BB5CAC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKCamera();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DKMultiSubjectTracker()
{
  result = qword_1EBC5C438;
  if (!qword_1EBC5C438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5CB148()
{
  result = type metadata accessor for DKCamera();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BAA34();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BB5CB47C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB5CB4C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5CB534(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFB10E40](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1BB5ACCEC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1BB5CB5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5CB610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5CB678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BB5CB6D8(unint64_t *a1, uint64_t *a2)
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

id DKRateControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DKRateControl.init(minFps:maxFps:)(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps] = 0x4024000000000000;
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps] = 0x403E000000000000;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastFps] = 0x4024000000000000;
  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minSecsElapsed;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minSecsElapsed] = 0;
  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxSecsElapsed;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxSecsElapsed] = 0;
  v9 = &v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastTriggerSecs];
  *v9 = 0;
  v9[8] = 1;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalTimeElapsed] = 0;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalFramesElapsed] = 0;
  *&v2[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs] = 0;
  sub_1BB6BAA24();
  *&v2[v5] = a1;
  *&v2[v6] = a2;
  *&v2[v7] = 1.0 / a2;
  *&v2[v8] = 1.0 / a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for DKRateControl();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BB5CB954(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps) == 0.0)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastTriggerSecs;
  if ((*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastTriggerSecs + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minSecsElapsed) > a1 - *v3)
  {
    return 0;
  }

  *v3 = a1;
  *(v3 + 8) = 0;
  return 1;
}

uint64_t sub_1BB5CB9B8(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps);
  if (v2 == 0.0)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalTimeElapsed) + a1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalTimeElapsed) = v4;
  v5 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalFramesElapsed);
  if (v5 / v4 > v2)
  {
    return 0;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalFramesElapsed) = v7;
    return 1;
  }

  return result;
}

double sub_1BB5CBA24(char a1, double a2)
{
  v5 = sub_1BB6BAA34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs);
  if (v9 == 0.0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minSecsElapsed);
  }

  else
  {
    v10 = a2 - v9;
  }

  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs) = a2;
  v11 = 1.0 / v10;
  v12 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps);
  v13 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps);
  if (v12 > 1.0 / v10)
  {
    v14 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps);
  }

  else
  {
    v14 = 1.0 / v10;
  }

  if (v13 >= v14)
  {
    v13 = v14;
  }

  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastFps) = v13;
  if ((a1 & 1) != 0 && v11 < v12)
  {
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_logger, v5);
    v15 = sub_1BB6BAA14();
    v16 = sub_1BB6BB084();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v11;
      _os_log_impl(&dword_1BB58A000, v15, v16, "Running at %f FPS. Lower than minimum required FPS", v17, 0xCu);
      MEMORY[0x1BFB122F0](v17, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

void sub_1BB5CBC48()
{
  v1 = v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastTriggerSecs;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs) = 0;
}

id DKRateControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKRateControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DKIntelligentTrackingCommand.__allocating_init(time:command:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = a2[1];
  LOWORD(a2) = *(a2 + 8);
  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time;
  v8 = sub_1BB6BA7F4();
  (*(*(v8 - 8) + 32))(v4 + v7, a1, v8);
  v9 = v4 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = a2;
  return v4;
}

uint64_t DKIntelligentTrackingState.__allocating_init(time:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DKIntelligentTrackingState.init(time:)(a1);
  return v2;
}

uint64_t sub_1BB5CBFE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 24))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, a1, v4);
  v8 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker);
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_faceTrackers) = MEMORY[0x1E69E7CC0];

  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_bodyTrackers) = v9;

  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers) = v9;

  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers) = v9;

  sub_1BB638390();

  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastPersonId) = 0;
  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastTrackerId) = 0;
  v10 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_presenceFilter);
  *(v10 + 49) = 0;
  v11 = *(v10 + 16);
  *(v11 + 33) = 0;
  v12 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

  sub_1BB598308(v11 + v12, &qword_1EBC5C050);
  v13 = *(v5 + 56);
  v13(v11 + v12, 1, 1, v4);

  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_unselectedTracks;

  *(v2 + v14) = MEMORY[0x1E69E7CC8];
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_selectedSubject;
  sub_1BB598308(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_selectedSubject, &qword_1EBC5C370);
  v16 = sub_1BB6BA844();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_localHomePosition) = 0;

  v17 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime;
  sub_1BB598308(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime, &qword_1EBC5C050);
  v13(v2 + v17, 1, 1, v4);
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastStartupCommandTime;
  sub_1BB598308(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastStartupCommandTime, &qword_1EBC5C050);
  v13(v2 + v18, 1, 1, v4);
  v19 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastReturnToBaseCommandTime;
  sub_1BB598308(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastReturnToBaseCommandTime, &qword_1EBC5C050);
  v13(v2 + v19, 1, 1, v4);
  v20 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastFlip180CommandTime;
  sub_1BB598308(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastFlip180CommandTime, &qword_1EBC5C050);
  v13(v2 + v20, 1, 1, v4);
  sub_1BB6BA724();
  (*(v5 + 40))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSubjectSeenTime, v7, v4);
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastHorizontalFraming) = 0;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSelectedSubjects) = MEMORY[0x1E69E7CC0];

  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_currentPipelineMode) = *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_config) + 89);
  v21 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_signals;

  *(v2 + v21) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1BB5CC3E8()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_selectedSubject, &qword_1EBC5C370);
  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime, &qword_1EBC5C050);
  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastStartupCommandTime, &qword_1EBC5C050);
  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastReturnToBaseCommandTime, &qword_1EBC5C050);
  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastFlip180CommandTime, &qword_1EBC5C050);

  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSubjectSeenTime, v2);

  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_startTime, v2);

  return v0;
}

uint64_t sub_1BB5CC714(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  sub_1BB5982A0(a1, &v14 - v11, a5);
  return sub_1BB5BA0DC(v12, *a2 + *a7, a5);
}

void *sub_1BB5CC860()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
  v2 = v1;
  return v1;
}

__n128 sub_1BB5CCB9C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D + 32);
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1BB5CCBBC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

__n128 sub_1BB5CCC04@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 32);
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1BB5CCC24(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1BB5CCE50()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);

  return v1;
}

uint64_t sub_1BB5CCE8C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1BB5CCEE8(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_elapsedTime;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5CCF44(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5CCFA0(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_cameraFPS;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5CCFFC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB5CD0A8(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

unint64_t sub_1BB5CD0EC(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 0x746176726573626FLL;
      break;
    case 2:
      result = 0x6172656D6163;
      break;
    case 3:
    case 4:
    case 5:
      result = 0x6465746365746564;
      break;
    case 6:
      result = 0x7370756F7267;
      break;
    case 7:
      result = 0x4664656B63617274;
      break;
    case 8:
      result = 0x4264656B63617274;
      break;
    case 9:
      result = 0x4864656B63617274;
      break;
    case 10:
      result = 0x5064656B63617274;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x646E616264616564;
      break;
    case 13:
      result = 0x646E616264616564;
      break;
    case 14:
      result = 0x646E616D6D6F63;
      break;
    case 15:
      result = 0x736F50646E617473;
      break;
    case 16:
      result = 0x676E696B63617274;
      break;
    case 17:
      result = 0x4D676E696D617266;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x6C61636974726576;
      break;
    case 20:
      result = 0x4449707061;
      break;
    case 21:
      result = 0x5464657370616C65;
      break;
    case 22:
      result = 0x6576697470616461;
      break;
    case 23:
      result = 0x50466172656D6163;
      break;
    case 24:
      result = 0x676E696B63617274;
      break;
    case 25:
      result = 0x656E696C65706970;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BB5CD40C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BB5CD0EC(*a1);
  v5 = v4;
  if (v3 == sub_1BB5CD0EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BB6BB7E4();
  }

  return v8 & 1;
}

uint64_t sub_1BB5CD494()
{
  v1 = *v0;
  sub_1BB6BB924();
  sub_1BB5CD0EC(v1);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB5CD4F8()
{
  sub_1BB5CD0EC(*v0);
  sub_1BB6BACC4();
}

uint64_t sub_1BB5CD54C()
{
  v1 = *v0;
  sub_1BB6BB924();
  sub_1BB5CD0EC(v1);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB5CD5AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB5D6E38();
  *a1 = result;
  return result;
}

unint64_t sub_1BB5CD5DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB5CD0EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BB5CD610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB5D6E38();
  *a1 = result;
  return result;
}

uint64_t sub_1BB5CD644(uint64_t a1)
{
  v2 = sub_1BB5D2288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5CD680(uint64_t a1)
{
  v2 = sub_1BB5D2288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIntelligentTrackingState.init(time:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_observationTime;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1 + v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera;
  v7 = type metadata accessor for DKCamera();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedFaces) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedBodies) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedHands) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects) = 0;
  v8 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  v9 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_standPosition) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode) = 7;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_framingMode) = 2;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_horizontalFraming) = 4;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_verticalFraming) = 3;
  v10 = (v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);
  *v10 = 0;
  v10[1] = 0;
  v11 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_elapsedTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_cameraFPS;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode) = 3;
  v15 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, a1, v4);
  return v1;
}

uint64_t static DKIntelligentTrackingState.decode(nsdata:)()
{
  sub_1BB6BA574();
  swift_allocObject();
  sub_1BB6BA564();
  v0 = sub_1BB6BA6F4();
  v2 = v1;
  sub_1BB5D21DC(&qword_1EBC5C500, type metadata accessor for DKIntelligentTrackingState);
  sub_1BB6BA554();
  sub_1BB59F668(v0, v2);

  return v4;
}

uint64_t sub_1BB5CDADC()
{
  sub_1BB6BA5A4();
  swift_allocObject();
  sub_1BB6BA594();
  type metadata accessor for DKIntelligentTrackingState(0);
  sub_1BB5D21DC(&qword_1EBC5C510, type metadata accessor for DKIntelligentTrackingState);
  v0 = sub_1BB6BA584();
  v2 = v1;

  v3 = sub_1BB6BA6D4();
  sub_1BB59F668(v0, v2);
  return v3;
}

uint64_t sub_1BB5CDC68()
{
  v0 = sub_1BB5CDADC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static DKIntelligentTrackingState.decode(nsdata:)();

  result = v2;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BB5CDCDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_observationTime;
  sub_1BB598308(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_observationTime, &qword_1EBC5C050);
  (*(v5 + 56))(v1 + v6, 1, 1, v4);
  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera;
  sub_1BB598308(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, &qword_1EBC5BCB0);
  v8 = type metadata accessor for DKCamera();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedFaces) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedBodies) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedHands) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects) = 0;

  v10 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  v11 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_standPosition) = 0;

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode) = 7;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_framingMode) = 2;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_horizontalFraming) = 4;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_verticalFraming) = 3;
  v12 = (v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);
  *v12 = 0;
  v12[1] = 0;

  v14 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_elapsedTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_cameraFPS;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode) = 3;
  v18 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  return result;
}

uint64_t sub_1BB5CE008()
{
  v0 = sub_1BB6BAC84();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BB6BA464();
  MEMORY[0x1EEE9AC00](v1);
  sub_1BB6BA4A4();
  swift_allocObject();
  sub_1BB6BA494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C518);
  *(swift_allocObject() + 16) = xmmword_1BB6BC7E0;
  sub_1BB6BA444();
  sub_1BB6BA454();
  sub_1BB5D21DC(&qword_1EBC5C520, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C528);
  sub_1BB5D2224();
  sub_1BB6BB234();
  sub_1BB6BA474();
  type metadata accessor for DKIntelligentTrackingState(0);
  sub_1BB5D21DC(&qword_1EBC5C510, type metadata accessor for DKIntelligentTrackingState);
  v3 = sub_1BB6BA484();
  v5 = v4;
  sub_1BB6BAC74();
  v6 = sub_1BB6BAC54();
  v8 = v7;
  sub_1BB59F668(v3, v5);

  if (v8)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t DKIntelligentTrackingState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_observationTime, &qword_1EBC5C050);
  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, &qword_1EBC5BCB0);

  return v0;
}

uint64_t sub_1BB5CE464(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5CE4C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v25 - v5;
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C538);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D2288();
  sub_1BB6BB984();
  (*(v7 + 16))(v9, v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v6);
  LOBYTE(v31) = 0;
  sub_1BB5D21DC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  v29 = v13;
  v14 = v28;
  sub_1BB6BB744();
  if (v14)
  {
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v29, v10);
  }

  else
  {
    v16 = v26;
    v28 = v11;
    (*(v7 + 8))(v9, v6);
    v17 = v30;
    v18 = v27;
    sub_1BB5982A0(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_observationTime, v27, &qword_1EBC5C050);
    LOBYTE(v31) = 1;
    sub_1BB6BB704();
    sub_1BB598308(v18, &qword_1EBC5C050);
    sub_1BB5982A0(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v16, &qword_1EBC5BCB0);
    LOBYTE(v31) = 2;
    type metadata accessor for DKCamera();
    sub_1BB5D21DC(&qword_1EBC5C550, type metadata accessor for DKCamera);
    sub_1BB6BB704();
    sub_1BB598308(v16, &qword_1EBC5BCB0);
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces);
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C558);
    sub_1BB5D22DC();
    sub_1BB6BB704();
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies);
    v34 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C570);
    sub_1BB5D2390();
    sub_1BB6BB704();
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands);
    v34 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C588);
    sub_1BB5D2444();
    sub_1BB6BB704();
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups);
    v34 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5A0);
    sub_1BB5D2C50(&qword_1EBC5C5A8, sub_1BB5D24F8);
    sub_1BB6BB704();
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedFaces);
    v34 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5B8);
    sub_1BB5D254C();
    sub_1BB6BB704();
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedBodies);
    v34 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5D0);
    sub_1BB5D2600();
    sub_1BB6BB704();
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedHands);
    v34 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5E8);
    sub_1BB5D26B4();
    sub_1BB6BB704();
    *&v31 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople);
    v34 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF00);
    sub_1BB5D2768();
    sub_1BB6BB704();
    *&v31 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
    v34 = 11;
    sub_1BB6BB704();
    v19 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D + 32);
    v20 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D + 16);
    v31 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D);
    v32 = v20;
    v33 = v19;
    v34 = 12;
    type metadata accessor for CGRect(0);
    sub_1BB5D21DC(&qword_1EBC5C610, type metadata accessor for CGRect);
    sub_1BB6BB704();
    v21 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 32);
    v22 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 16);
    v31 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D);
    v32 = v22;
    v33 = v21;
    v34 = 13;
    sub_1BB6BB704();
    *&v31 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command);
    v34 = 14;
    type metadata accessor for DKIntelligentTrackingCommand(0);
    sub_1BB5D21DC(&qword_1EBC5C618, type metadata accessor for DKIntelligentTrackingCommand);
    sub_1BB6BB704();
    *&v31 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_standPosition);
    v34 = 15;
    sub_1BB5D283C();

    sub_1BB6BB704();

    LOBYTE(v31) = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode);
    v34 = 16;
    sub_1BB5D2890();
    sub_1BB6BB704();
    LOBYTE(v31) = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_framingMode);
    v34 = 17;
    sub_1BB5D28E4();
    sub_1BB6BB704();
    LOBYTE(v31) = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_horizontalFraming);
    v34 = 18;
    sub_1BB5D2938();
    sub_1BB6BB704();
    LOBYTE(v31) = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_verticalFraming);
    v34 = 19;
    sub_1BB5D298C();
    sub_1BB6BB704();
    LOBYTE(v31) = 20;

    sub_1BB6BB6C4();

    LOBYTE(v31) = 21;
    sub_1BB6BB6E4();
    LOBYTE(v31) = 22;
    sub_1BB6BB6E4();
    LOBYTE(v31) = 23;
    sub_1BB6BB6E4();
    LOBYTE(v31) = 24;
    sub_1BB6BB6E4();
    LOBYTE(v31) = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode);
    v34 = 25;
    sub_1BB5D29E0();
    sub_1BB6BB704();
    v23 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension + 16);
    v31 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension);
    LOBYTE(v32) = v23;
    v34 = 26;
    type metadata accessor for CGSize(0);
    sub_1BB5D21DC(&qword_1EBC5C0B0, type metadata accessor for CGSize);
    v24 = v29;
    sub_1BB6BB704();
    return (*(v28 + 8))(v24, 0);
  }
}

uint64_t DKIntelligentTrackingState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v58 - v6;
  v7 = sub_1BB6BA7F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C650);
  v70 = *(v89 - 8);
  v10 = MEMORY[0x1EEE9AC00](v89);
  v93 = &v58 - v11;
  v71 = v8;
  v12 = *(v8 + 56);
  v88 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_observationTime;
  v73 = v7;
  v12(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_observationTime, 1, 1, v7, v10);
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera;
  v14 = type metadata accessor for DKCamera();
  v15 = *(*(v14 - 8) + 56);
  v87 = v13;
  v67 = v14;
  v15(v1 + v13, 1, 1);
  v74 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image) = 0;
  v86 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces) = 0;
  v85 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies) = 0;
  v84 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands) = 0;
  v83 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups) = 0;
  v82 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedFaces;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedFaces) = 0;
  v81 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedBodies;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedBodies) = 0;
  v80 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedHands;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedHands) = 0;
  v79 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople) = 0;
  v78 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects) = 0;
  v16 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v66 = v16;
  *(v16 + 32) = 1;
  v17 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v65 = v17;
  *(v17 + 32) = 1;
  v77 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = 0;
  v75 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_standPosition;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_standPosition) = 0;
  v61 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode) = 7;
  v62 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_framingMode;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_framingMode) = 2;
  v63 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_horizontalFraming;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_horizontalFraming) = 4;
  v64 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_verticalFraming;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_verticalFraming) = 3;
  v18 = (v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);
  *v18 = 0;
  v18[1] = 0;
  v76 = v18;
  v19 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_elapsedTime;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_cameraFPS;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode) = 3;
  v24 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  v25 = a1[3];
  v91 = a1;
  v92 = v1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1BB5D2288();
  v26 = v90;
  sub_1BB6BB974();
  if (v26)
  {
    v57 = v92;
    sub_1BB598308(v92 + v88, &qword_1EBC5C050);
    sub_1BB598308(v57 + v87, &qword_1EBC5BCB0);

    type metadata accessor for DKIntelligentTrackingState(0);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  else
  {
    v27 = v71;
    v58 = v19;
    v59 = v20;
    v60 = v21;
    v90 = v22;
    v28 = v70;
    LOBYTE(v94) = 0;
    sub_1BB5D21DC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v29 = v72;
    v30 = v73;
    sub_1BB6BB684();
    v32 = v92;
    (*(v27 + 32))(v92 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v29, v30);
    LOBYTE(v94) = 1;
    v33 = v69;
    sub_1BB6BB644();
    sub_1BB5BA0DC(v33, v32 + v88, &qword_1EBC5C050);
    LOBYTE(v94) = 2;
    sub_1BB5D21DC(&qword_1EBC5C660, type metadata accessor for DKCamera);
    v34 = v68;
    sub_1BB6BB644();
    sub_1BB5BA0DC(v34, v32 + v87, &qword_1EBC5BCB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C558);
    v97 = 3;
    sub_1BB5D2A34();
    sub_1BB6BB644();
    *(v32 + v86) = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C570);
    v97 = 4;
    sub_1BB5D2AE8();
    sub_1BB6BB644();
    *(v32 + v85) = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C588);
    v97 = 5;
    sub_1BB5D2B9C();
    sub_1BB6BB644();
    *(v32 + v84) = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5A0);
    v97 = 6;
    sub_1BB5D2C50(&qword_1EBC5C698, sub_1BB5D2CC8);
    sub_1BB6BB644();
    *(v32 + v83) = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5B8);
    v97 = 7;
    sub_1BB5D2D1C();
    sub_1BB6BB644();
    *(v32 + v82) = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5D0);
    v97 = 8;
    sub_1BB5D2DD0();
    sub_1BB6BB644();
    *(v32 + v81) = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C5E8);
    v97 = 9;
    sub_1BB5D2E84();
    sub_1BB6BB644();
    *(v92 + v80) = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF00);
    v97 = 10;
    sub_1BB5D2F38();
    sub_1BB6BB644();
    *(v92 + v79) = v94;

    v97 = 11;
    sub_1BB6BB644();
    *(v92 + v78) = v94;

    type metadata accessor for CGRect(0);
    v97 = 12;
    sub_1BB5D21DC(&qword_1EBC5C6E8, type metadata accessor for CGRect);
    sub_1BB6BB644();
    v35 = v96;
    v36 = v95;
    v37 = v66;
    *v66 = v94;
    v37[1] = v36;
    *(v37 + 32) = v35;
    v97 = 13;
    sub_1BB6BB644();
    v38 = v96;
    v39 = v95;
    v40 = v65;
    *v65 = v94;
    v40[1] = v39;
    *(v40 + 32) = v38;
    type metadata accessor for DKIntelligentTrackingCommand(0);
    v97 = 14;
    sub_1BB5D21DC(&qword_1EBC5C6F0, type metadata accessor for DKIntelligentTrackingCommand);
    sub_1BB6BB644();
    *(v92 + v77) = v94;

    v97 = 15;
    sub_1BB5D2FEC();
    sub_1BB6BB644();
    *(v92 + v75) = v94;

    v97 = 16;
    sub_1BB5D3040();
    sub_1BB6BB644();
    *(v92 + v61) = v94;
    v97 = 17;
    sub_1BB5D3094();
    sub_1BB6BB644();
    *(v92 + v62) = v94;
    v97 = 18;
    sub_1BB5D30E8();
    sub_1BB6BB644();
    *(v92 + v63) = v94;
    v97 = 19;
    sub_1BB5D313C();
    sub_1BB6BB644();
    *(v92 + v64) = v94;
    LOBYTE(v94) = 20;
    v41 = sub_1BB6BB604();
    v42 = v76;
    *v76 = v41;
    v42[1] = v43;

    LOBYTE(v94) = 21;
    v44 = sub_1BB6BB624();
    v45 = v58;
    *v58 = v44;
    *(v45 + 8) = v46 & 1;
    LOBYTE(v94) = 22;
    v47 = sub_1BB6BB624();
    v48 = v59;
    *v59 = v47;
    *(v48 + 8) = v49 & 1;
    LOBYTE(v94) = 23;
    v50 = sub_1BB6BB624();
    v51 = v60;
    *v60 = v50;
    *(v51 + 8) = v52 & 1;
    LOBYTE(v94) = 24;
    v53 = sub_1BB6BB624();
    v54 = v90;
    *v90 = v53;
    *(v54 + 8) = v55 & 1;
    v97 = 25;
    sub_1BB5D3190();
    sub_1BB6BB644();
    *(v92 + v23) = v94;
    type metadata accessor for CGSize(0);
    v97 = 26;
    sub_1BB5D21DC(&qword_1EBC5C0E8, type metadata accessor for CGSize);
    sub_1BB6BB644();
    (*(v28 + 8))(v93, v89);
    v56 = v95;
    *v24 = v94;
    *(v24 + 16) = v56;
    __swift_destroy_boxed_opaque_existential_1(v91);
    return v92;
  }

  return v57;
}

uint64_t DKIntelligentTrackingCommand.VelocityCommand.velocity.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1BB5D0484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BB6BB7E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BB5D050C(uint64_t a1)
{
  v2 = sub_1BB5D31E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5D0548(uint64_t a1)
{
  v2 = sub_1BB5D31E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIntelligentTrackingCommand.VelocityCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C728);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D31E4();

  sub_1BB6BB984();
  v9[1] = v7;
  sub_1BB5D283C();
  sub_1BB6BB744();

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKIntelligentTrackingCommand.VelocityCommand.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D31E4();
  sub_1BB6BB974();
  if (!v2)
  {
    sub_1BB5D2FEC();
    sub_1BB6BB684();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DKIntelligentTrackingCommand.PositionCommand.position.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

IntelligentTrackingCore::DKIntelligentTrackingCommand::PositionCommand __swiftcall DKIntelligentTrackingCommand.PositionCommand.init(position:duration:relative:highPriority:)(IntelligentTrackingCore::DKVector3 position, Swift::Double duration, Swift::Bool relative, Swift::Bool highPriority)
{
  *v4 = *position.elements._rawValue;
  *(v4 + 8) = duration;
  *(v4 + 16) = relative;
  *(v4 + 17) = highPriority;
  result.duration = duration;
  result.position = position;
  result.relative = relative;
  return result;
}

uint64_t sub_1BB5D0980()
{
  v1 = 0x6E6F697469736F70;
  v2 = 0x65766974616C6572;
  if (*v0 != 2)
  {
    v2 = 0x6F69725068676968;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
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

uint64_t sub_1BB5D0A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB5D6E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5D0A2C(uint64_t a1)
{
  v2 = sub_1BB5D3238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5D0A68(uint64_t a1)
{
  v2 = sub_1BB5D3238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIntelligentTrackingCommand.PositionCommand.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C740);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 16);
  v11[3] = *(v1 + 17);
  v11[4] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D3238();

  sub_1BB6BB984();
  v16 = v8;
  v15 = 0;
  sub_1BB5D283C();
  sub_1BB6BB744();

  if (!v2)
  {
    v14 = 1;
    sub_1BB6BB724();
    v13 = 2;
    sub_1BB6BB714();
    v12 = 3;
    sub_1BB6BB714();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DKIntelligentTrackingCommand.PositionCommand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C750);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D3238();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[7] = 0;
  sub_1BB5D2FEC();
  sub_1BB6BB684();
  v9 = v16;
  v15[6] = 1;
  sub_1BB6BB664();
  v11 = v10;
  v15[5] = 2;
  v12 = sub_1BB6BB654();
  v15[4] = 3;
  v14 = sub_1BB6BB654();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 17) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BB5D0F30()
{
  v1 = 0x797469636F6C6576;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697469736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E616D6D6F436F6ELL;
  }
}

uint64_t sub_1BB5D0F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB5D6FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5D0FB8(uint64_t a1)
{
  v2 = sub_1BB5D328C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5D0FF4(uint64_t a1)
{
  v2 = sub_1BB5D328C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5D103C(uint64_t a1)
{
  v2 = sub_1BB5D3430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5D1078(uint64_t a1)
{
  v2 = sub_1BB5D3430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5D10C0(uint64_t a1)
{
  v2 = sub_1BB5D32E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5D10FC(uint64_t a1)
{
  v2 = sub_1BB5D32E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5D1138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BB6BB7E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BB5D11B8(uint64_t a1)
{
  v2 = sub_1BB5D3388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5D11F4(uint64_t a1)
{
  v2 = sub_1BB5D3388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIntelligentTrackingCommand.Command.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C758);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C760);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C768);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C770);
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v23 - v12;
  v31 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D328C();
  sub_1BB6BB984();
  if (v15 >> 14)
  {
    if (v15 >> 14 == 1)
    {
      LOBYTE(v33) = 2;
      sub_1BB5D32E0();
      v16 = v28;
      v17 = v32;
      sub_1BB6BB6B4();
      v33 = v31;
      v34 = v14;
      v35 = v15 & 0x101;
      sub_1BB5D3334();
      v18 = v30;
      sub_1BB6BB744();
      (*(v29 + 8))(v16, v18);
      return (*(v11 + 8))(v13, v17);
    }

    else
    {
      LOBYTE(v33) = 0;
      sub_1BB5D3430();
      v22 = v32;
      sub_1BB6BB6B4();
      (*(v24 + 8))(v10, v25);
      return (*(v11 + 8))(v13, v22);
    }
  }

  else
  {
    LOBYTE(v33) = 1;
    sub_1BB5D3388();
    v20 = v32;
    sub_1BB6BB6B4();
    v33 = v31;
    sub_1BB5D33DC();
    v21 = v27;
    sub_1BB6BB744();
    (*(v26 + 8))(v7, v21);
    return (*(v11 + 8))(v13, v20);
  }
}

uint64_t DKIntelligentTrackingCommand.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7A8);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v49 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7B0);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7B8);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  v15 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BB5D328C();
  v16 = v50;
  sub_1BB6BB974();
  if (!v16)
  {
    v41 = v8;
    v42 = v12;
    v17 = v48;
    v18 = v49;
    v50 = v14;
    v19 = sub_1BB6BB694();
    v20 = *(v19 + 16);
    if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 3) : (v22 = 1), v22))
    {
      v23 = sub_1BB6BB3B4();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v26 = &type metadata for DKIntelligentTrackingCommand.Command;
      v27 = v50;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v23 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v42 + 8))(v27, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v19 + 32))
      {
        if (v21 == 1)
        {
          LOBYTE(v51) = 1;
          sub_1BB5D3388();
          v28 = v50;
          sub_1BB6BB5E4();
          sub_1BB5D34D8();
          v32 = v44;
          sub_1BB6BB684();
          (*(v45 + 8))(v7, v32);
          (*(v42 + 8))(v28, v11);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 0;
          v35 = v51;
          v36 = v47;
        }

        else
        {
          LOBYTE(v51) = 2;
          sub_1BB5D32E0();
          v30 = v18;
          sub_1BB6BB5E4();
          v36 = v47;
          sub_1BB5D3484();
          v37 = v43;
          sub_1BB6BB684();
          v38 = v42;
          (*(v46 + 8))(v30, v37);
          (*(v38 + 8))(v50, v11);
          swift_unknownObjectRelease();
          v35 = v51;
          v33 = v52;
          if (v54)
          {
            v39 = 256;
          }

          else
          {
            v39 = 0;
          }

          v34 = v39 | v53 | 0x4000;
        }
      }

      else
      {
        LOBYTE(v51) = 0;
        sub_1BB5D3430();
        v29 = v50;
        sub_1BB6BB5E4();
        (*(v17 + 8))(v10, v41);
        (*(v42 + 8))(v29, v11);
        swift_unknownObjectRelease();
        v35 = 0;
        v33 = 0;
        v34 = 0x8000;
        v36 = v47;
      }

      *v36 = v35;
      *(v36 + 8) = v33;
      *(v36 + 16) = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1BB5D1CF4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1BB5D1D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1BB5D1D54()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB5D1D88()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB5D1DBC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB5D1E20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  return (*(v9 + 40))(*a2 + *a5, v11, v8);
}

uint64_t sub_1BB5D1F24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1BB6BA7F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BB5D1FA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1BB6BA7F4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BB5D2040(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = *a1;
  *(v4 + 8) = v3;
  v7 = *(a1 + 16);
  v8 = *(v4 + 16);
  *(v4 + 16) = v7;
  sub_1BB598288(v2, v3, v7);

  return sub_1BB598294(v5, v6, v8);
}

uint64_t sub_1BB5D20B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_1BB598288(v3, v4, v5);
}

uint64_t sub_1BB5D20D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  v5 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 8);
  *v3 = *a1;
  v6 = *(v3 + 16);
  *(v3 + 16) = v2;
  return sub_1BB598294(v5, v4, v6);
}

uint64_t DKIntelligentTrackingCommand.init(time:command:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 8);
  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time;
  v8 = sub_1BB6BA7F4();
  (*(*(v8 - 8) + 32))(v2 + v7, a1, v8);
  v9 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  *v9 = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  return v2;
}

uint64_t sub_1BB5D21DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BB5D2224()
{
  result = qword_1EBC5C530;
  if (!qword_1EBC5C530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C530);
  }

  return result;
}

unint64_t sub_1BB5D2288()
{
  result = qword_1EBC5C540;
  if (!qword_1EBC5C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C540);
  }

  return result;
}

unint64_t sub_1BB5D22DC()
{
  result = qword_1EBC5C560;
  if (!qword_1EBC5C560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C558);
    sub_1BB5D21DC(&qword_1EBC5C568, type metadata accessor for DKFaceObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C560);
  }

  return result;
}

unint64_t sub_1BB5D2390()
{
  result = qword_1EBC5C578;
  if (!qword_1EBC5C578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C570);
    sub_1BB5D21DC(&qword_1EBC5C580, type metadata accessor for DKBodyObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C578);
  }

  return result;
}

unint64_t sub_1BB5D2444()
{
  result = qword_1EBC5C590;
  if (!qword_1EBC5C590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C588);
    sub_1BB5D21DC(&qword_1EBC5C598, type metadata accessor for DKHandObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C590);
  }

  return result;
}

unint64_t sub_1BB5D24F8()
{
  result = qword_1EBC5C5B0;
  if (!qword_1EBC5C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C5B0);
  }

  return result;
}

unint64_t sub_1BB5D254C()
{
  result = qword_1EBC5C5C0;
  if (!qword_1EBC5C5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C5B8);
    sub_1BB5D21DC(&qword_1EBC5C5C8, type metadata accessor for DKFaceTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C5C0);
  }

  return result;
}

unint64_t sub_1BB5D2600()
{
  result = qword_1EBC5C5D8;
  if (!qword_1EBC5C5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C5D0);
    sub_1BB5D21DC(&qword_1EBC5C5E0, type metadata accessor for DKBodyTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C5D8);
  }

  return result;
}

unint64_t sub_1BB5D26B4()
{
  result = qword_1EBC5C5F0;
  if (!qword_1EBC5C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C5E8);
    sub_1BB5D21DC(&qword_1EBC5C5F8, type metadata accessor for DKHandTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C5F0);
  }

  return result;
}

unint64_t sub_1BB5D2768()
{
  result = qword_1EBC5C600;
  if (!qword_1EBC5C600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5BF00);
    sub_1BB5D21DC(&qword_1EBC5C608, type metadata accessor for DKPersonTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C600);
  }

  return result;
}

unint64_t sub_1BB5D283C()
{
  result = qword_1EBC5C620;
  if (!qword_1EBC5C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C620);
  }

  return result;
}

unint64_t sub_1BB5D2890()
{
  result = qword_1EBC5C628;
  if (!qword_1EBC5C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C628);
  }

  return result;
}

unint64_t sub_1BB5D28E4()
{
  result = qword_1EBC5C630;
  if (!qword_1EBC5C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C630);
  }

  return result;
}

unint64_t sub_1BB5D2938()
{
  result = qword_1EBC5C638;
  if (!qword_1EBC5C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C638);
  }

  return result;
}

unint64_t sub_1BB5D298C()
{
  result = qword_1EBC5C640;
  if (!qword_1EBC5C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C640);
  }

  return result;
}

unint64_t sub_1BB5D29E0()
{
  result = qword_1EBC5C648;
  if (!qword_1EBC5C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C648);
  }

  return result;
}

unint64_t sub_1BB5D2A34()
{
  result = qword_1EBC5C668;
  if (!qword_1EBC5C668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C558);
    sub_1BB5D21DC(&qword_1EBC5C670, type metadata accessor for DKFaceObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C668);
  }

  return result;
}

unint64_t sub_1BB5D2AE8()
{
  result = qword_1EBC5C678;
  if (!qword_1EBC5C678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C570);
    sub_1BB5D21DC(&qword_1EBC5C680, type metadata accessor for DKBodyObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C678);
  }

  return result;
}

unint64_t sub_1BB5D2B9C()
{
  result = qword_1EBC5C688;
  if (!qword_1EBC5C688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C588);
    sub_1BB5D21DC(&qword_1EBC5C690, type metadata accessor for DKHandObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C688);
  }

  return result;
}

uint64_t sub_1BB5D2C50(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C5A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB5D2CC8()
{
  result = qword_1EBC5C6A0;
  if (!qword_1EBC5C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C6A0);
  }

  return result;
}

unint64_t sub_1BB5D2D1C()
{
  result = qword_1EBC5C6A8;
  if (!qword_1EBC5C6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C5B8);
    sub_1BB5D21DC(&qword_1EBC5C6B0, type metadata accessor for DKFaceTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C6A8);
  }

  return result;
}

unint64_t sub_1BB5D2DD0()
{
  result = qword_1EBC5C6B8;
  if (!qword_1EBC5C6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C5D0);
    sub_1BB5D21DC(&qword_1EBC5C6C0, type metadata accessor for DKBodyTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C6B8);
  }

  return result;
}

unint64_t sub_1BB5D2E84()
{
  result = qword_1EBC5C6C8;
  if (!qword_1EBC5C6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C5E8);
    sub_1BB5D21DC(&qword_1EBC5C6D0, type metadata accessor for DKHandTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C6C8);
  }

  return result;
}

unint64_t sub_1BB5D2F38()
{
  result = qword_1EBC5C6D8;
  if (!qword_1EBC5C6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5BF00);
    sub_1BB5D21DC(&qword_1EBC5C6E0, type metadata accessor for DKPersonTrackerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C6D8);
  }

  return result;
}

unint64_t sub_1BB5D2FEC()
{
  result = qword_1EBC5C6F8;
  if (!qword_1EBC5C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C6F8);
  }

  return result;
}

unint64_t sub_1BB5D3040()
{
  result = qword_1EBC5C700;
  if (!qword_1EBC5C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C700);
  }

  return result;
}

unint64_t sub_1BB5D3094()
{
  result = qword_1EBC5C708;
  if (!qword_1EBC5C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C708);
  }

  return result;
}

unint64_t sub_1BB5D30E8()
{
  result = qword_1EBC5C710;
  if (!qword_1EBC5C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C710);
  }

  return result;
}

unint64_t sub_1BB5D313C()
{
  result = qword_1EBC5C718;
  if (!qword_1EBC5C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C718);
  }

  return result;
}

unint64_t sub_1BB5D3190()
{
  result = qword_1EBC5C720;
  if (!qword_1EBC5C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C720);
  }

  return result;
}

unint64_t sub_1BB5D31E4()
{
  result = qword_1EBC5C730;
  if (!qword_1EBC5C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C730);
  }

  return result;
}

unint64_t sub_1BB5D3238()
{
  result = qword_1EBC5C748;
  if (!qword_1EBC5C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C748);
  }

  return result;
}

unint64_t sub_1BB5D328C()
{
  result = qword_1EBC5C778;
  if (!qword_1EBC5C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C778);
  }

  return result;
}

unint64_t sub_1BB5D32E0()
{
  result = qword_1EBC5C780;
  if (!qword_1EBC5C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C780);
  }

  return result;
}

unint64_t sub_1BB5D3334()
{
  result = qword_1EBC5C788;
  if (!qword_1EBC5C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C788);
  }

  return result;
}

unint64_t sub_1BB5D3388()
{
  result = qword_1EBC5C790;
  if (!qword_1EBC5C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C790);
  }

  return result;
}

unint64_t sub_1BB5D33DC()
{
  result = qword_1EBC5C798;
  if (!qword_1EBC5C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C798);
  }

  return result;
}

unint64_t sub_1BB5D3430()
{
  result = qword_1EBC5C7A0;
  if (!qword_1EBC5C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C7A0);
  }

  return result;
}

unint64_t sub_1BB5D3484()
{
  result = qword_1EBC5C7D0;
  if (!qword_1EBC5C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C7D0);
  }

  return result;
}

unint64_t sub_1BB5D34D8()
{
  result = qword_1EBC5C7D8;
  if (!qword_1EBC5C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C7D8);
  }

  return result;
}

uint64_t sub_1BB5D352C()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v1, v3);
  v6 = v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  v7 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  type metadata accessor for DKIntelligentTrackingCommand(0);
  v10 = swift_allocObject();
  (*(v2 + 32))(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v5, v1);
  v11 = v10 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  sub_1BB598288(v7, v8, v9);
  return v10;
}

uint64_t sub_1BB5D367C()
{
  if (*v0)
  {
    return 0x646E616D6D6F63;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1BB5D36B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1BB5D378C(uint64_t a1)
{
  v2 = sub_1BB5D3BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5D37C8(uint64_t a1)
{
  v2 = sub_1BB5D3BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIntelligentTrackingCommand.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB598294(*(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 8), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 16));
  return v0;
}

uint64_t DKIntelligentTrackingCommand.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB598294(*(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 8), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5D3930(void *a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7E0);
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D3BF0();
  sub_1BB6BB984();
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v4);
  LOBYTE(v17) = 0;
  sub_1BB5D21DC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  v11 = v15[1];
  sub_1BB6BB744();
  (*(v5 + 8))(v7, v4);
  if (!v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 8);
    v13 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 16);
    v17 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
    v18 = v12;
    v19 = v13;
    v20 = 1;
    sub_1BB598288(v17, v12, v13);
    sub_1BB5D3C44();
    sub_1BB6BB744();
    sub_1BB598294(v17, v18, v19);
  }

  return (*(v16 + 8))(v10, v8);
}

unint64_t sub_1BB5D3BF0()
{
  result = qword_1EBC5C7E8;
  if (!qword_1EBC5C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C7E8);
  }

  return result;
}

unint64_t sub_1BB5D3C44()
{
  result = qword_1EBC5C7F0;
  if (!qword_1EBC5C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C7F0);
  }

  return result;
}

uint64_t sub_1BB5D3CC4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t DKIntelligentTrackingCommand.init(from:)(void *a1)
{
  v20 = sub_1BB6BA7F4();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7F8);
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5D3BF0();
  sub_1BB6BB974();
  if (v2)
  {
    type metadata accessor for DKIntelligentTrackingCommand(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v6;
    v9 = v18;
    LOBYTE(v21) = 0;
    sub_1BB5D21DC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v10 = v19;
    v11 = v20;
    sub_1BB6BB684();
    v12 = *(v9 + 32);
    v16[1] = OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time;
    v12(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v5, v11);
    v23 = 1;
    sub_1BB5D4064();
    sub_1BB6BB684();
    (*(v17 + 8))(v8, v10);
    v14 = v22;
    v15 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
    *v15 = v21;
    *(v15 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_1BB5D4064()
{
  result = qword_1EBC5C800;
  if (!qword_1EBC5C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C800);
  }

  return result;
}

uint64_t sub_1BB5D40C4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1BB6BA7F4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BB5D4148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  v8 = sub_1BB6BA7F4();
  v9 = *(*(v8 - 8) + 40);

  return v9(v6 + v7, a1, v8);
}

uint64_t sub_1BB5D422C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
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

__n128 keypath_get_31Tm@<Q0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v6;
  *(a3 + 32) = v4;
  return result;
}

__n128 keypath_set_32Tm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  v6 = *a2 + *a5;
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  return result;
}

uint64_t keypath_set_14Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_1BB6BA7F4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v4 + v5, v6);
}

void sub_1BB5D43E8()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB5D5830(319, &qword_1EBC5C818, MEMORY[0x1E69695A8]);
    if (v1 <= 0x3F)
    {
      sub_1BB5D5830(319, &qword_1EBC5C820, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BB5D45B4()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB5D5830(319, &qword_1EBC5C820, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1BB5D5830(319, &qword_1EBC5C838, type metadata accessor for DKCamera);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of DKIntelligentTrackingState.deadband2D.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 624);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DKIntelligentTrackingState.deadband3D.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 648);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

void sub_1BB5D5830(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BB6BB184();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BB5D588C()
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

uint64_t getEnumTagSinglePayload for DKDataLog(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for DKDataLog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BB5D5B60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1BB5D5BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23IntelligentTrackingCore013DKIntelligentB7CommandC0E0O(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1BB5D5C18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 18))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 16) & 0x3E00 | (*(a1 + 16) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 16) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BB5D5C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 16) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1BB5D5CF8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x8000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKIntelligentTrackingCommand.PositionCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DKIntelligentTrackingCommand.PositionCommand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DKIntelligentTrackingState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKIntelligentTrackingState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB5D6038()
{
  result = qword_1EBC5C850;
  if (!qword_1EBC5C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C850);
  }

  return result;
}

unint64_t sub_1BB5D6090()
{
  result = qword_1EBC5C858;
  if (!qword_1EBC5C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C858);
  }

  return result;
}

unint64_t sub_1BB5D60E8()
{
  result = qword_1EBC5C860;
  if (!qword_1EBC5C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C860);
  }

  return result;
}

unint64_t sub_1BB5D6140()
{
  result = qword_1EBC5C868;
  if (!qword_1EBC5C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C868);
  }

  return result;
}

unint64_t sub_1BB5D6198()
{
  result = qword_1EBC5C870;
  if (!qword_1EBC5C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C870);
  }

  return result;
}

unint64_t sub_1BB5D61F0()
{
  result = qword_1EBC5C878;
  if (!qword_1EBC5C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C878);
  }

  return result;
}

unint64_t sub_1BB5D6248()
{
  result = qword_1EBC5C880;
  if (!qword_1EBC5C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C880);
  }

  return result;
}

unint64_t sub_1BB5D62A0()
{
  result = qword_1EBC5C888;
  if (!qword_1EBC5C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C888);
  }

  return result;
}

unint64_t sub_1BB5D62F8()
{
  result = qword_1EBC5C890;
  if (!qword_1EBC5C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C890);
  }

  return result;
}

unint64_t sub_1BB5D6350()
{
  result = qword_1EBC5C898;
  if (!qword_1EBC5C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C898);
  }

  return result;
}

unint64_t sub_1BB5D63A8()
{
  result = qword_1EBC5C8A0;
  if (!qword_1EBC5C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8A0);
  }

  return result;
}

unint64_t sub_1BB5D6400()
{
  result = qword_1EBC5C8A8;
  if (!qword_1EBC5C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8A8);
  }

  return result;
}

unint64_t sub_1BB5D6458()
{
  result = qword_1EBC5C8B0;
  if (!qword_1EBC5C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8B0);
  }

  return result;
}

unint64_t sub_1BB5D64B0()
{
  result = qword_1EBC5C8B8;
  if (!qword_1EBC5C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8B8);
  }

  return result;
}

unint64_t sub_1BB5D6508()
{
  result = qword_1EBC5C8C0;
  if (!qword_1EBC5C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8C0);
  }

  return result;
}

unint64_t sub_1BB5D6560()
{
  result = qword_1EBC5C8C8;
  if (!qword_1EBC5C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8C8);
  }

  return result;
}

unint64_t sub_1BB5D65B8()
{
  result = qword_1EBC5C8D0;
  if (!qword_1EBC5C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8D0);
  }

  return result;
}

unint64_t sub_1BB5D6610()
{
  result = qword_1EBC5C8D8;
  if (!qword_1EBC5C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8D8);
  }

  return result;
}

unint64_t sub_1BB5D6668()
{
  result = qword_1EBC5C8E0;
  if (!qword_1EBC5C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8E0);
  }

  return result;
}

unint64_t sub_1BB5D66C0()
{
  result = qword_1EBC5C8E8;
  if (!qword_1EBC5C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8E8);
  }

  return result;
}

unint64_t sub_1BB5D6718()
{
  result = qword_1EBC5C8F0;
  if (!qword_1EBC5C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8F0);
  }

  return result;
}

unint64_t sub_1BB5D6770()
{
  result = qword_1EBC5C8F8;
  if (!qword_1EBC5C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C8F8);
  }

  return result;
}

unint64_t sub_1BB5D67C8()
{
  result = qword_1EBC5C900;
  if (!qword_1EBC5C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C900);
  }

  return result;
}

uint64_t sub_1BB5D681C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a3;
  v39 = a2;
  v5 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastFacePrintTime) = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastBodyPrintTime) = v10;
  *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_unselectedTracks) = v10;
  *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_localHomePosition) = 0;
  v11 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_selectedSubject;
  v12 = sub_1BB6BA844();
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime;
  v14 = sub_1BB6BA7F4();
  v43 = *(v14 - 8);
  v15 = *(v43 + 56);
  v15(v4 + v13, 1, 1, v14);
  v15(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastStartupCommandTime, 1, 1, v14);
  v15(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastReturnToBaseCommandTime, 1, 1, v14);
  v15(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastFlip180CommandTime, 1, 1, v14);
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_flipClockwise) = 1;
  v38 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_presenceFilter;
  v15(v9, 1, 1, v14);
  type metadata accessor for DKBinaryProbabilityFilter();
  v16 = swift_allocObject();
  *(v16 + 49) = 0;
  *(v16 + 24) = 0x3FE0000000000000;
  type metadata accessor for DKSmoothingFilter();
  v17 = swift_allocObject();
  *(v17 + 48) = xmmword_1BB6BE460;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v15(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v14);
  v19 = v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v17 + 16) = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v17 + 32) = 256;
  *(v17 + 40) = 0x3FE0000000000000;
  sub_1BB5BA0DC(v9, v17 + v18, &qword_1EBC5C050);
  *v19 = 0;
  *(v19 + 8) = 1;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v16 + 16) = v17;
  *(v16 + 32) = 0x3FE8000000000000;
  *(v16 + 40) = 0x3FD0000000000000;
  *(v16 + 48) = 0;
  *(v4 + v38) = v16;
  sub_1BB6BA724();
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_signals) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastHorizontalFraming) = 0;
  v21 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_appID);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSelectedSubjects) = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_trackingFPSTracker;
  type metadata accessor for DKFPSTracker();
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v24 + 16) = v25;
  *(v24 + 24) = v22;
  *(v4 + v23) = v24;
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_inputBuffer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C910);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v27[2] = v28;
  v27[3] = v22;
  *(v4 + v26) = v27;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_runSubjectSelection) = 0;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastCommand) = 0;
  v29 = v39;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_config) = v39;
  v27[4] = 1;
  v30 = *(v43 + 16);
  v31 = v40;
  v30(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v40, v14);
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tf) = v41;
  type metadata accessor for DKMultiSubjectTrackerConfiguration();
  swift_allocObject();

  v32 = DKMultiSubjectTrackerConfiguration.init()();
  v33 = v42;
  sub_1BB5D7A00(v42);
  type metadata accessor for DKMultiSubjectTracker();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) = DKMultiSubjectTracker.init(configuration:camera:)(v32, v33);
  v30(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_startTime, v31, v14);
  v34 = *(v29 + 136);
  v44[0] = *(v29 + 120);
  v44[1] = v34;
  v44[2] = *(v29 + 152);
  type metadata accessor for DKAdaptiveFramerate();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_adaptiveFramerate) = sub_1BB6B5D54(v44);
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_currentPipelineMode) = *(v29 + 89);
  type metadata accessor for DKFramingEngine();
  swift_allocObject();

  v36 = DKFramingEngine.init(config:)(v35);
  (*(v43 + 8))(v31, v14);
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_framingEngine) = v36;
  return v4;
}

uint64_t sub_1BB5D6E38()
{
  v0 = sub_1BB6BB804();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BB5D6E8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69725068676968 && a2 == 0xEC00000079746972)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

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

uint64_t sub_1BB5D6FF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E616D6D6F436F6ELL && a2 == 0xE900000000000064;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

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

uint64_t sub_1BB5D7144()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for DKIMUManager();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;
    sub_1BB6BAA24();
    v2 = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
    v3 = *(v1 + 16);
    *(v1 + 16) = v2;

    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1BB5D723C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5D7F84(a1, v6);
  return sub_1BB5D7FE8(v6, *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera);
}

uint64_t DKCameraManager.__allocating_init(imuEnabled:camera:)(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DKCameraManager.init(imuEnabled:camera:)(a1, a2);
  return v4;
}

uint64_t DKCameraManager.init(imuEnabled:camera:)(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  *(v2 + 24) = 0;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_movingThreshold) = 0x3FB999999999999ALL;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_notMovingThreshold) = 0x3FA999999999999ALL;
  sub_1BB6BAA24();
  *(v2 + 16) = a1;
  sub_1BB5D7F84(a2, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera);
  sub_1BB6BA7E4();
  sub_1BB5D818C(a2, type metadata accessor for DKCamera);
  v11 = sub_1BB6BA7F4();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  type metadata accessor for DKBinaryProbabilityFilter();
  v13 = swift_allocObject();
  *(v13 + 49) = 0;
  *(v13 + 24) = 0x3FE0000000000000;
  sub_1BB5D804C(v10, v7);
  type metadata accessor for DKSmoothingFilter();
  v14 = swift_allocObject();
  *(v14 + 48) = xmmword_1BB6BE460;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v12((v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v11);
  v16 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v14 + 16) = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v14 + 32) = 256;
  *(v14 + 40) = 0x3FE0000000000000;
  sub_1BB5BF3C4(v7, v14 + v15);
  *v16 = 0;
  *(v16 + 8) = 1;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v13 + 16) = v14;
  *(v13 + 32) = 0x3FB999999999999ALL;
  *(v13 + 40) = 0x3FA999999999999ALL;
  *(v13 + 48) = 0;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_isMovingFilter) = v13;
  return v2;
}

id sub_1BB5D7690(uint64_t a1)
{
  [*(v1 + 32) lock];
  sub_1BB5D8124(a1, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera, type metadata accessor for DKCamera);
  v3 = *(v1 + 32);

  return [v3 unlock];
}

uint64_t sub_1BB5D7704@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for DKMotion3();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 16) & 1) == 0)
  {
    sub_1BB5D7F84(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera, v14);
    v16 = &v14[*(v12 + 32)];
LABEL_12:
    sub_1BB5D80BC(v16, a1, type metadata accessor for DKMotion3);
    v15 = 0;
    return (*(v9 + 56))(a1, v15, 1, v8);
  }

  sub_1BB5D7144();
  sub_1BB680C10(v7);

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1BB5D80BC(v7, v11, type metadata accessor for DKMotion3);
    if (*(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera) == 1)
    {
LABEL_11:
      v16 = v11;
      goto LABEL_12;
    }

    v17 = *(v8 + 20);
    v18 = *&v11[v17];
    if (*(v18 + 2) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v2 = -*(v18 + 5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v11[v17] = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }
    }

    v18 = sub_1BB6B0F28(v18);
LABEL_8:
    *(v18 + 5) = v2;
    *&v11[v17] = v18;
    v20 = *(v8 + 24);
    v21 = *&v11[v20];
    if (*(v21 + 2) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v2 = -*(v21 + 5);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v11[v20] = v21;
      if (v22)
      {
LABEL_10:
        *(v21 + 5) = v2;
        *&v11[v20] = v21;
        goto LABEL_11;
      }
    }

    v21 = sub_1BB6B0F28(v21);
    goto LABEL_10;
  }

  sub_1BB598308(v7, &qword_1EBC5BCB8);
  v15 = 1;
  return (*(v9 + 56))(a1, v15, 1, v8);
}

id sub_1BB5D7A00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for DKMotion3();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 32) lock];
  sub_1BB5D7F84(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera, v16);
  sub_1BB5D7704(v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1BB5D80BC(v9, v13, type metadata accessor for DKMotion3);
    sub_1BB5D8124(v13, &v16[*(v14 + 32)], type metadata accessor for DKMotion3);
    v17 = *&v13[*(v10 + 24)];
    v18 = *(v17 + 16);
    if (v18)
    {
      if (v18 > 3)
      {
        v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
        v21 = (v17 + 48);
        v20 = 0.0;
        v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v23 = vmulq_f64(v21[-1], v21[-1]);
          v24 = vmulq_f64(*v21, *v21);
          v20 = v20 + v23.f64[0] + v23.f64[1] + v24.f64[0] + v24.f64[1];
          v21 += 2;
          v22 -= 4;
        }

        while (v22);
        if (v18 == v19)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v19 = 0;
        v20 = 0.0;
      }

      v25 = v18 - v19;
      v26 = (v17 + 8 * v19 + 32);
      do
      {
        v27 = *v26++;
        v20 = v20 + v27 * v27;
        --v25;
      }

      while (v25);
    }

    else
    {
      v20 = 0.0;
    }

LABEL_12:
    v28 = sqrt(v20);

    sub_1BB6BA7D4();
    v29 = sub_1BB6BA7F4();
    (*(*(v29 - 8) + 56))(v6, 0, 1, v29);

    sub_1BB6ABB40(0, 1, v6, v28);

    sub_1BB598308(v6, &qword_1EBC5C050);
    v30 = sub_1BB5BAB20();
    sub_1BB5D818C(v13, type metadata accessor for DKMotion3);
    v31 = *(v30 + 16);

    v16[*(v14 + 36)] = (v31 & 1) == 0;
    goto LABEL_13;
  }

  sub_1BB598308(v9, &qword_1EBC5BCB8);
LABEL_13:
  sub_1BB5D80BC(v16, a1, type metadata accessor for DKCamera);
  return [*(v2 + 32) unlock];
}

uint64_t DKCameraManager.deinit()
{

  sub_1BB5D818C(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera, type metadata accessor for DKCamera);

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DKCameraManager.__deallocating_deinit()
{

  sub_1BB5D818C(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_camera, type metadata accessor for DKCamera);

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKCameraManager_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5D7F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKCamera();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5D7FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKCamera();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5D804C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5D80BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5D8124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5D818C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DKCameraManager()
{
  result = qword_1EBC5C938;
  if (!qword_1EBC5C938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5D8240()
{
  result = type metadata accessor for DKCamera();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BAA34();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BB5D8584()
{
  v1[2] = v0;
  v2 = sub_1BB6BA7F4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB5D8688, 0, 0);
}

uint64_t sub_1BB5D8688()
{
  v1 = v0[2];
  v2 = *(v1 + 40);
  v3 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_localHomePosition);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKStartupTask_startupCommandIssued;
    if ((*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKStartupTask_startupCommandIssued) & 1) == 0)
    {
      v5 = v0[7];
      v6 = v0[3];
      v7 = v0[4];
      sub_1BB5BA930(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastStartupCommandTime, v5);
      v8 = (*(v7 + 48))(v5, 1, v6);
      v9 = v0[7];
      if (v8 == 1)
      {
        sub_1BB5A1908(v0[7]);
      }

      else
      {
        v11 = v0[4];
        v10 = v0[5];
        v13 = v0[2];
        v12 = v0[3];

        sub_1BB5A1908(v9);
        *(v1 + v4) = 1;
        v14 = *(v13 + 48);
        (*(v11 + 16))(v10, v14 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v12);
        type metadata accessor for DKIntelligentTrackingCommand(0);
        v15 = swift_allocObject();
        (*(v11 + 32))(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v10, v12);
        v16 = v15 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
        *v16 = v3;
        *(v16 + 8) = 0x4000000000000000;
        *(v16 + 16) = 0x4000;
        *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = v15;
      }
    }
  }

  v17 = v0[6];
  v18 = v0[3];
  v19 = v0[4];
  sub_1BB5BA930(*(v1 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastStartupCommandTime, v17);
  LODWORD(v18) = (*(v19 + 48))(v17, 1, v18);
  sub_1BB5A1908(v17);
  if (v18 == 1)
  {
    v20 = v0[3];
    v21 = v0[4];
    v22 = v0[2];
    v23 = *(v1 + 40);
    v24 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastStartupCommandTime;

    sub_1BB5A1908(v23 + v24);
    (*(v21 + 16))(v23 + v24, *(v22 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v20);
    (*(v21 + 56))(v23 + v24, 0, 1, v20);
  }

  v25 = v0[1];

  return v25(1);
}

uint64_t sub_1BB5D893C()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB5A1908(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKStartupTask_startupTime);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKStartupTask()
{
  result = qword_1EBC5C948;
  if (!qword_1EBC5C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BB5D8A60()
{
  sub_1BB5D8AFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BB5D8AFC()
{
  if (!qword_1EBC5C820)
  {
    sub_1BB6BA7F4();
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5C820);
    }
  }
}

uint64_t sub_1BB5D8B54()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid;
  v4 = sub_1BB6BA844();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5D8C30()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = xmmword_1BB6BF590;
  *(v0 + 56) = 0;
  v2 = sub_1BB59D3A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = sub_1BB59D3A8((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v7 = &v2[3 * v4];
  *(v7 + 16) = 256;
  v7[34] = 0;
  v8 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    v2 = sub_1BB59D3A8((v3 > 1), v4 + 2, 1, v2);
  }

  *(v2 + 2) = v8;
  v9 = &v2[3 * v6];
  *(v9 + 16) = 513;
  v9[34] = 1;
  v10 = *(v2 + 3);
  v11 = v4 + 3;
  if ((v4 + 3) > (v10 >> 1))
  {
    v2 = sub_1BB59D3A8((v10 > 1), v4 + 3, 1, v2);
  }

  *(v2 + 2) = v11;
  v12 = &v2[3 * v8];
  *(v12 + 16) = 1;
  v12[34] = 2;
  v13 = *(v2 + 3);
  v14 = v4 + 4;
  if ((v4 + 4) > (v13 >> 1))
  {
    v2 = sub_1BB59D3A8((v13 > 1), v4 + 4, 1, v2);
  }

  *(v2 + 2) = v14;
  v15 = &v2[3 * v11];
  *(v15 + 16) = 770;
  v15[34] = 3;
  v16 = *(v2 + 3);
  v17 = v4 + 5;
  if ((v4 + 5) > (v16 >> 1))
  {
    v2 = sub_1BB59D3A8((v16 > 1), v4 + 5, 1, v2);
  }

  *(v2 + 2) = v17;
  v18 = &v2[3 * v14];
  *(v18 + 16) = 2;
  v18[34] = 2;
  v19 = *(v2 + 3);
  v20 = v4 + 6;
  if ((v4 + 6) > (v19 >> 1))
  {
    v2 = sub_1BB59D3A8((v19 > 1), v4 + 6, 1, v2);
  }

  *(v2 + 2) = v20;
  v21 = &v2[3 * v17];
  *(v21 + 16) = 1027;
  v21[34] = 4;
  v22 = *(v2 + 3);
  v23 = v4 + 7;
  if ((v4 + 7) > (v22 >> 1))
  {
    v2 = sub_1BB59D3A8((v22 > 1), v4 + 7, 1, v2);
  }

  *(v2 + 2) = v23;
  v24 = &v2[3 * v20];
  *(v24 + 16) = 259;
  v24[34] = 2;
  v25 = *(v2 + 3);
  v26 = v4 + 8;
  if ((v4 + 8) > (v25 >> 1))
  {
    v2 = sub_1BB59D3A8((v25 > 1), v4 + 8, 1, v2);
  }

  *(v2 + 2) = v26;
  v27 = &v2[3 * v23];
  *(v27 + 16) = 3;
  v27[34] = 6;
  v28 = *(v2 + 3);
  v29 = v4 + 9;
  if ((v4 + 9) > (v28 >> 1))
  {
    v2 = sub_1BB59D3A8((v28 > 1), v4 + 9, 1, v2);
  }

  *(v2 + 2) = v29;
  v30 = &v2[3 * v26];
  *(v30 + 16) = 515;
  v30[34] = 5;
  v31 = *(v2 + 3);
  v32 = v4 + 10;
  if ((v4 + 10) > (v31 >> 1))
  {
    v2 = sub_1BB59D3A8((v31 > 1), v4 + 10, 1, v2);
  }

  *(v2 + 2) = v32;
  v33 = &v2[3 * v29];
  *(v33 + 16) = 516;
  v33[34] = 2;
  v34 = *(v2 + 3);
  v35 = v4 + 11;
  if ((v4 + 11) > (v34 >> 1))
  {
    v2 = sub_1BB59D3A8((v34 > 1), v4 + 11, 1, v2);
  }

  *(v2 + 2) = v35;
  v36 = &v2[3 * v32];
  *(v36 + 16) = 516;
  v36[34] = 5;
  v37 = *(v2 + 3);
  if ((v4 + 12) > (v37 >> 1))
  {
    v2 = sub_1BB59D3A8((v37 > 1), v4 + 12, 1, v2);
  }

  *(v2 + 2) = v4 + 12;
  v38 = &v2[3 * v35];
  *(v38 + 16) = 4;
  v38[34] = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C978);
  swift_allocObject();
  *(v1 + 48) = sub_1BB597434(0, v2);
  return v1;
}

uint64_t sub_1BB5D9054(uint64_t a1)
{
  v3 = sub_1BB6BA844();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BB6BA7F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v44 - v14;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSelectedSubjects;
  v16 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSelectedSubjects);
  if (v16 >> 62)
  {
LABEL_36:
    v40 = v13;
    v41 = sub_1BB6BB564();
    v13 = v40;
    if (!v41)
    {
LABEL_41:
      v42 = v1[6];
      v43 = *(v42 + 32);

      [v43 lock];
      *(v42 + 16) = 0;
      [v43 unlock];

      v1[2] = 0;

      v1[3] = 0;
    }
  }

  else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v47 = v13;
  v51 = v6;
  v52 = a1;
  v6 = *(a1 + v15);
  v54 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    a1 = sub_1BB6BB564();
  }

  else
  {
    a1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v8;
  v50 = v11;
  if (a1)
  {
    v44 = v7;
    v45 = v3;
    v48 = v4;
    v46 = v1;
    v11 = 0;
    v4 = v6 & 0xC000000000000001;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    v3 = &OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1BFB111F0](v11, v6);
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v3 = v45;
          v1 = v46;
          v4 = v48;
          v7 = v44;
          v8 = v53;
          v11 = v50;
          break;
        }
      }

      else
      {
        if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v7 = *(v6 + 8 * v11 + 32);

        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_16;
        }
      }

      if (*(*(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16) == -1)
      {
      }

      else
      {
        v1 = &v54;
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        sub_1BB6BB424();
        sub_1BB6BB3E4();
      }

      ++v11;
      if (v15 == a1)
      {
        goto LABEL_17;
      }
    }
  }

  v54 = sub_1BB5CA470(v17);
  sub_1BB5DC804(&v54);

  v18 = v54;
  if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x4000000000000000) == 0)
  {
    v19 = *(v54 + 16);
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

  v19 = sub_1BB6BB564();
  if (!v19)
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_21:
  if (v19 == 1)
  {
    v20 = v1[6];
    v21 = *(v20 + 32);

    [v21 lock];
    *(v20 + 16) = 2;
    [v21 unlock];

    v22 = v49;
    (*(v8 + 16))(v49, v52 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v7);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB111F0](0, v18);
      goto LABEL_25;
    }

    if (*(v18 + 16))
    {
      v23 = *(v18 + 32);

LABEL_25:

      v24 = v51;
      (*(v4 + 16))(v51, v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v3);

      type metadata accessor for LegacySubjectSelection.TrackInfo();
      v25 = swift_allocObject();
      (*(v8 + 32))(v25 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v22, v7);
      (*(v4 + 32))(v25 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v24, v3);
      v1[2] = v25;

      v1[3] = 0;
    }

    __break(1u);
    goto LABEL_47;
  }

  v26 = v1[6];
  v27 = *(v26 + 32);

  [v27 lock];
  *(v26 + 16) = 4;
  [v27 unlock];

  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time;
  v20 = *(v8 + 16);
  (v20)(v11, v52 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v7);
  v49 = v20;
  v45 = v18 & 0xC000000000000001;
  v46 = v28;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1BFB111F0](0, v18);
  }

  else
  {
    if (!*(v18 + 16))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v29 = *(v18 + 32);
  }

  v30 = v51;
  v44 = *(v4 + 16);
  v44(v51, v29 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v3);

  v20 = type metadata accessor for LegacySubjectSelection.TrackInfo();
  v31 = swift_allocObject();
  v32 = *(v53 + 32);
  v33 = v50;
  v53 += 32;
  v50 = v32;
  (v32)(v31 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v33, v7);
  v34 = v4 + 32;
  v35 = *(v4 + 32);
  v48 = v34;
  v35(v31 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v30, v3);
  v1[2] = v31;

  (v49)(v47, v46 + v52, v7);
  if (v45)
  {
    v36 = MEMORY[0x1BFB111F0](1, v18);
LABEL_33:

    v37 = v51;
    v44(v51, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v3);

    v38 = swift_allocObject();
    (v50)(v38 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v47, v7);
    v35(v38 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v37, v3);
    v1[3] = v38;
  }

  if (*(v18 + 16) >= 2uLL)
  {
    v36 = *(v18 + 40);

    goto LABEL_33;
  }

LABEL_48:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1BB5D980C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BB6BA7F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v211 = &v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v213 = &v196 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v208 = (&v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v209 = &v196 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v196 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v196 - v18;
  v217 = sub_1BB6BA844();
  v210 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v196 - v22;
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](&v196 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v32 = &v196 - v31;
  v214 = a1;
  v33 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople);
  if (!v33)
  {
    return;
  }

  v216 = v27;
  v199 = v30;
  v206 = v29;
  v200 = v6;
  v201 = v5;
  v215 = v28;
  v34 = *(v2 + 56);

  if ((v34 & 1) == 0)
  {
    sub_1BB5D9054(a2);
    *(v2 + 56) = 1;
  }

  v35 = *(v2 + 48);
  v36 = *(v35 + 32);

  [v36 lock];
  LODWORD(v37) = *(v35 + 16);
  [v36 unlock];

  v212 = v2;
  if (v37 > 1)
  {
    v216 = v33;
    if (v37 == 2)
    {
      v211 = *(v2 + 16);
      if (v211)
      {
        v16 = (v33 & 0xFFFFFFFFFFFFFF8);
        if (v33 >> 62)
        {
LABEL_147:
          v52 = sub_1BB6BB564();
        }

        else
        {
          v52 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v207 = OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid;

        if (v52)
        {
          v53 = 0;
          v205 = v23;
          v206 = v33 & 0xC000000000000001;
          v2 = v210 + 16;
          v208 = (v210 + 8);
          v204 = v16;
          while (1)
          {
            if (v206)
            {
              v23 = MEMORY[0x1BFB111F0](v53, v33);
              v54 = v53 + 1;
              if (__OFADD__(v53, 1))
              {
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }
            }

            else
            {
              if (v53 >= *(v16 + 2))
              {
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
                goto LABEL_144;
              }

              v23 = *(v33 + 8 * v53 + 32);

              v54 = v53 + 1;
              if (__OFADD__(v53, 1))
              {
                goto LABEL_39;
              }
            }

            v55 = v52;
            v56 = *v2;
            v202 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid;
            v57 = v217;
            v58 = v215;
            v56(v215, v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v217);
            v59 = v205;
            v203 = v56;
            v56(v205, &v211[v207], v57);
            LOBYTE(v56) = sub_1BB6BA814();
            v60 = v59;
            v61 = *v208;
            (*v208)(v60, v57);
            v61(v58, v57);
            if (v56)
            {
              break;
            }

            ++v53;
            v52 = v55;
            v62 = v54 == v55;
            v33 = v216;
            v16 = v204;
            if (v62)
            {
              goto LABEL_64;
            }
          }

          v104 = v215;
          v105 = v217;
          v106 = v203;
          v203(v215, v202 + v23, v217);
          v107 = v209;
          v108 = v214;
          sub_1BB5DBB98(v214, v104, v209);
          v61(v104, v105);
          v109 = v210;
          if ((*(v210 + 48))(v107, 1, v105) != 1)
          {
            v216 = v23;
            v140 = *(v109 + 32);
            v210 = v109 + 32;
            v207 = v140;
            v141 = v199;
            v142 = v217;
            v140(v199, v107, v217);
            v143 = v200;
            v144 = v108 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
            v145 = v213;
            v146 = v201;
            (*(v200 + 16))(v213, v144, v201);
            v106(v104, v141, v142);
            type metadata accessor for LegacySubjectSelection.TrackInfo();
            v147 = swift_allocObject();
            (*(v143 + 32))(v147 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v145, v146);
            (v207)(v147 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v104, v142);
            *(v212 + 24) = v147;

            v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v149 = *(v73 + 2);
            v148 = *(v73 + 3);
            v23 = 0x1E7FB4000;
            if (v149 >= v148 >> 1)
            {
              v73 = sub_1BB59DB6C((v148 > 1), v149 + 1, 1, v73);
            }

            v61(v199, v217);
            *(v73 + 2) = v149 + 1;
            v138 = &v73[v149];
            v139 = 3;
            goto LABEL_128;
          }

          sub_1BB598308(v107, &qword_1EBC5C370);
LABEL_119:
          v73 = MEMORY[0x1E69E7CC0];
          v84 = v212;
          v23 = 0x1E7FB4000;
        }

        else
        {
LABEL_64:

          v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v86 = *(v73 + 2);
          v85 = *(v73 + 3);
          v23 = 0x1E7FB4000;
          if (v86 >= v85 >> 1)
          {
            v73 = sub_1BB59DB6C((v85 > 1), v86 + 1, 1, v73);
          }

          *(v73 + 2) = v86 + 1;
          v73[v86 + 32] = 2;
          v84 = v212;
          *(v212 + 16) = 0;
        }

        goto LABEL_130;
      }
    }

    else if (v37 == 3)
    {
      v207 = *(v2 + 16);
      if (v207)
      {
        v38 = *(v2 + 24);
        if (v38)
        {
          v39 = v33 & 0xFFFFFFFFFFFFFF8;
          if (v33 >> 62)
          {
            v19 = sub_1BB6BB564();
          }

          else
          {
            v19 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v204 = OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid;

          v197 = v38;

          if (v19)
          {
            v37 = 0;
            v203 = (v33 & 0xC000000000000001);
            v16 = (v210 + 16);
            v205 = (v210 + 8);
            v199 = v33 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v203)
              {
                v32 = MEMORY[0x1BFB111F0](v37, v33);
                v40 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
LABEL_21:
                  __break(1u);
                  goto LABEL_22;
                }
              }

              else
              {
                if (v37 >= *(v39 + 16))
                {
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
                  goto LABEL_147;
                }

                v32 = *(v33 + 8 * v37 + 32);

                v40 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_21;
                }
              }

              v209 = v40;
              v41 = *v16;
              v198 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid;
              v42 = v215;
              v43 = v217;
              v41(v215, &v32[OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid], v217);
              v44 = v16;
              v202 = v41;
              v41(v23, (v207 + v204), v43);
              v45 = sub_1BB6BA814();
              v46 = v23;
              v47 = *v205;
              v48 = v46;
              (*v205)();
              (v47)(v42, v43);
              if (v45)
              {
                break;
              }

              ++v37;
              v2 = v212;
              v33 = v216;
              v23 = v48;
              v16 = v44;
              v39 = v199;
              if (v209 == v19)
              {
                goto LABEL_72;
              }
            }

            v216 = v32;
            v132 = v215;
            v133 = v217;
            v202(v215, &v32[v198], v217);
            v134 = v208;
            v135 = v214;
            sub_1BB5DBB98(v214, v132, v208);
            (v47)(v132, v133);
            v136 = v210;
            if ((*(v210 + 48))(v134, 1, v133) == 1)
            {
              sub_1BB598308(v134, &qword_1EBC5C370);
              *(v212 + 24) = 0;

              v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v130 = *(v73 + 2);
              v137 = *(v73 + 3);
              v131 = v130 + 1;
              v23 = 0x1E7FB4000;
              if (v130 >= v137 >> 1)
              {
                v73 = sub_1BB59DB6C((v137 > 1), v130 + 1, 1, v73);
              }

LABEL_114:

              *(v73 + 2) = v131;
              v138 = &v73[v130];
              v139 = 5;
            }

            else
            {
              v172 = v206;
              v173 = v217;
              v210 = *(v136 + 32);
              (v210)(v206, v134, v217);
              v174 = v197;
              v202(v132, (v197 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid), v173);
              v175 = sub_1BB6BA814();
              v176 = v173;
              v177 = v47;
              (v47)(v132, v176);
              v23 = 0x1E7FB4000;
              if ((v175 & 1) == 0)
              {

                v188 = v200;
                v189 = v135 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
                v190 = v213;
                v191 = v201;
                (*(v200 + 16))(v213, v189, v201);
                v192 = v172;
                v193 = v217;
                v194 = v210;
                (v210)(v132, v192, v217);
                type metadata accessor for LegacySubjectSelection.TrackInfo();
                v195 = swift_allocObject();
                (*(v188 + 32))(v195 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v190, v191);
                v194(v195 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v132, v193);
                v84 = v212;
                *(v212 + 24) = v195;
                goto LABEL_96;
              }

              v178 = v200;
              v179 = *(v200 + 16);
              v180 = v213;
              v181 = v201;
              v179(v213, v135 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v201);
              v182 = v211;
              v179(v211, v174 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v181);
              sub_1BB6BA744();
              v184 = v183;
              v185 = *(v178 + 8);
              v185(v182, v181);
              v185(v180, v181);
              if (v184 <= 2.0)
              {
                (v177)(v206, v217);

                goto LABEL_60;
              }

              v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v187 = *(v73 + 2);
              v186 = *(v73 + 3);
              if (v187 >= v186 >> 1)
              {
                v73 = sub_1BB59DB6C((v186 > 1), v187 + 1, 1, v73);
              }

              (v177)(v206, v217);
              *(v73 + 2) = v187 + 1;
              v138 = &v73[v187];
              v139 = 4;
            }
          }

          else
          {
LABEL_72:

            *(v2 + 16) = 0;

            *(v2 + 24) = 0;

            v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v102 = *(v73 + 2);
            v101 = *(v73 + 3);
            v103 = v102 + 1;
            if (v102 >= v101 >> 1)
            {
              v73 = sub_1BB59DB6C((v101 > 1), v102 + 1, 1, v73);
            }

            v23 = 0x1E7FB4000;

LABEL_127:

            *(v73 + 2) = v103;
            v138 = &v73[v102];
            v139 = 2;
          }

          goto LABEL_128;
        }
      }
    }

    else
    {
LABEL_40:
      v211 = *(v2 + 16);
      v63 = v215;
      if (v211)
      {
        v207 = *(v2 + 24);
        if (v207)
        {
          v208 = (v33 & 0xFFFFFFFFFFFFFF8);
          if (v33 >> 62)
          {
            v214 = sub_1BB6BB564();
          }

          else
          {
            v214 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v209 = OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid;
          v213 = (v33 & 0xC000000000000001);
          v64 = (v210 + 16);
          v65 = (v210 + 8);

          v66 = 0;
          while (v214 != v66)
          {
            if (v213)
            {
              v67 = MEMORY[0x1BFB111F0](v66, v216);
              if (__OFADD__(v66, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v66 >= v208[2])
              {
                goto LABEL_142;
              }

              v67 = *&v216[8 * v66 + 32];

              if (__OFADD__(v66, 1))
              {
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }
            }

            v16 = *v64;
            v68 = v217;
            (*v64)(v63, v67 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v217);
            (v16)(v23, &v211[v209], v68);
            v33 = sub_1BB6BA814();

            v69 = *v65;
            (*v65)(v23, v68);
            (v69)(v63, v68);
            ++v66;
            if (v33)
            {
              v110 = 0;
              v210 = OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid;
              while (v214 != v110)
              {
                if (v213)
                {
                  v111 = MEMORY[0x1BFB111F0](v110, v216);
                  if (__OFADD__(v110, 1))
                  {
                    goto LABEL_84;
                  }
                }

                else
                {
                  if (v110 >= v208[2])
                  {
                    goto LABEL_146;
                  }

                  v111 = *&v216[8 * v110 + 32];

                  if (__OFADD__(v110, 1))
                  {
LABEL_84:
                    __break(1u);
                    goto LABEL_85;
                  }
                }

                v112 = v217;
                (v16)(v63, v111 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v217);
                (v16)(v23, v207 + v210, v112);
                v33 = sub_1BB6BA814();

                (v69)(v23, v112);
                (v69)(v63, v112);
                ++v110;
                if (v33)
                {

                  goto LABEL_119;
                }
              }

              break;
            }
          }

LABEL_85:
          v113 = 0;
          v114 = v208;
          while (v214 != v113)
          {
            if (v213)
            {
              v87 = MEMORY[0x1BFB111F0](v113, v216);
              if (__OFADD__(v113, 1))
              {
                goto LABEL_94;
              }
            }

            else
            {
              if (v113 >= v114[2])
              {
                goto LABEL_143;
              }

              v87 = *&v216[8 * v113 + 32];

              if (__OFADD__(v113, 1))
              {
LABEL_94:
                __break(1u);
                goto LABEL_95;
              }
            }

            v115 = *v64;
            v116 = v217;
            (*v64)(v63, v87 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v217);
            (v115)(v23, &v211[v209], v116);
            v33 = sub_1BB6BA814();

            v16 = *v65;
            (*v65)(v23, v116);
            (v16)(v63, v116);
            ++v113;
            if (v33)
            {
LABEL_107:

              *(v212 + 24) = 0;

              v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v130 = *(v73 + 2);
              v129 = *(v73 + 3);
              v131 = v130 + 1;
              if (v130 >= v129 >> 1)
              {
                v73 = sub_1BB59DB6C((v129 > 1), v130 + 1, 1, v73);
              }

              v23 = 0x1E7FB4000;

              goto LABEL_114;
            }
          }

          v122 = 0;
          v16 = OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid;
          while (v214 != v122)
          {
            if (v213)
            {
              v123 = MEMORY[0x1BFB111F0](v122, v216);
              if (__OFADD__(v122, 1))
              {
                goto LABEL_106;
              }
            }

            else
            {
              if (v122 >= v114[2])
              {
                goto LABEL_145;
              }

              v123 = *&v216[8 * v122 + 32];

              if (__OFADD__(v122, 1))
              {
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }
            }

            v124 = *v64;
            v125 = v217;
            v126 = v215;
            (*v64)(v215, v123 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v217);
            (v124)(v23, &v16[v207], v125);
            v33 = sub_1BB6BA814();

            v127 = *v65;
            (*v65)(v23, v125);
            v128 = v126;
            v114 = v208;
            (v127)(v128, v125);
            ++v122;
            if (v33)
            {

              v153 = v212;
              *(v212 + 16) = v207;

              *(v153 + 24) = 0;

              v154 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v73 = v154;
              v102 = *(v154 + 2);
              v155 = *(v154 + 3);
              v103 = v102 + 1;
              if (v102 >= v155 >> 1)
              {
                v73 = sub_1BB59DB6C((v155 > 1), v102 + 1, 1, v154);
              }

              v23 = &unk_1E7FB4000;

              goto LABEL_127;
            }
          }

          v150 = v212;
          *(v212 + 16) = 0;

          *(v150 + 24) = 0;

          v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v152 = *(v73 + 2);
          v151 = *(v73 + 3);
          if (v152 >= v151 >> 1)
          {
            v73 = sub_1BB59DB6C((v151 > 1), v152 + 1, 1, v73);
          }

          v23 = 0x1E7FB4000;

          *(v73 + 2) = v152 + 1;
          v138 = &v73[v152];
          v139 = 6;
LABEL_128:
          v138[32] = v139;
          goto LABEL_129;
        }
      }
    }

LABEL_54:

LABEL_55:
    LOBYTE(v219) = 9;
    v70 = sub_1BB6BB074();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v219, 0xD000000000000022, 0x80000001BB6CC1E0, v70);
    return;
  }

LABEL_22:
  v49 = v214;
  if (v37)
  {

    v71 = *(v2 + 16);
    v23 = 0x1E7FB4000;
    if (!v71)
    {
      goto LABEL_55;
    }

    sub_1BB5DB3D8(v49, v16);
    v72 = v210;
    if ((*(v210 + 48))(v16, 1, v217) != 1)
    {
      v87 = *(v72 + 32);
      v33 = v216;
      v88 = v217;
      v87(v216, v16, v217);
      v63 = v215;
      (*(v72 + 16))(v215, v71 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v88);
      v89 = sub_1BB6BA814();
      v90 = *(v72 + 8);
      v210 = v72 + 8;
      v90(v63, v88);
      if ((v89 & 1) == 0)
      {
LABEL_95:

        v117 = v200;
        v118 = v213;
        v119 = v201;
        (*(v200 + 16))(v213, v214 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v201);
        v120 = v217;
        v87(v63, v33, v217);
        type metadata accessor for LegacySubjectSelection.TrackInfo();
        v121 = swift_allocObject();
        (*(v117 + 32))(v121 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v118, v119);
        v87((v121 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid), v63, v120);
        v84 = v212;
        *(v212 + 16) = v121;
LABEL_96:

        v73 = MEMORY[0x1E69E7CC0];
        goto LABEL_130;
      }

      v91 = v200;
      v92 = *(v200 + 16);
      v93 = v213;
      v94 = v201;
      v92(v213, v214 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v201);
      v95 = v211;
      v92(v211, v71 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v94);
      sub_1BB6BA744();
      v97 = v96;
      v98 = *(v91 + 8);
      v98(v95, v94);
      v98(v93, v94);
      if (v97 > 1.0)
      {
        v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v100 = *(v73 + 2);
        v99 = *(v73 + 3);
        if (v100 >= v99 >> 1)
        {
          v73 = sub_1BB59DB6C((v99 > 1), v100 + 1, 1, v73);
        }

        v90(v216, v217);
        *(v73 + 2) = v100 + 1;
        v73[v100 + 32] = 1;
        goto LABEL_129;
      }

      v90(v216, v217);

      goto LABEL_60;
    }

    v51 = v16;
  }

  else
  {

    sub_1BB5DB3D8(v49, v19);
    v50 = v210;
    v23 = 0x1E7FB4000;
    if ((*(v210 + 48))(v19, 1, v217) != 1)
    {
      v74 = *(v50 + 32);
      v74(v32, v19, v217);
      v73 = sub_1BB59DB6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v76 = *(v73 + 2);
      v75 = *(v73 + 3);
      if (v76 >= v75 >> 1)
      {
        v73 = sub_1BB59DB6C((v75 > 1), v76 + 1, 1, v73);
      }

      v78 = v213;
      v77 = v214;
      *(v73 + 2) = v76 + 1;
      v73[v76 + 32] = 0;
      v79 = v200;
      v80 = v201;
      (*(v200 + 16))(v78, v77 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v201);
      v81 = v215;
      v82 = v217;
      v74(v215, v32, v217);
      type metadata accessor for LegacySubjectSelection.TrackInfo();
      v83 = swift_allocObject();
      (*(v79 + 32))(v83 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_startTime, v78, v80);
      v74((v83 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid), v81, v82);
      v84 = v212;
      *(v212 + 16) = v83;

      v23 = 0x1E7FB4000;
      goto LABEL_130;
    }

    v51 = v19;
  }

  sub_1BB598308(v51, &qword_1EBC5C370);
LABEL_60:
  v73 = MEMORY[0x1E69E7CC0];
LABEL_129:
  v84 = v212;
LABEL_130:
  v156 = *(v84 + 48);
  v157 = *(v156 + 32);

  [v157 lock];
  v158 = sub_1BB5DC734(v156, v73, sub_1BB6A36B4);
  [v157 *(v23 + 3040)];

  v159 = v212;
  if (v158)
  {
    v221[0] = 9;
    v219 = 0;
    v220 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000016, 0x80000001BB6CC230);
    v160 = *(v159 + 48);
    v161 = *(v160 + 32);

    [v161 lock];
    v162 = *(v160 + 16);
    [v161 *(v23 + 3040)];

    v218 = v162;
    sub_1BB6BB4B4();
    v163 = v219;
    v164 = v220;
    v165 = sub_1BB6BB084();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v221, v163, v164, v165);
  }

  v221[0] = 9;
  v219 = 0;
  v220 = 0xE000000000000000;
  sub_1BB6BB2F4();
  MEMORY[0x1BFB10B60](0xD000000000000010, 0x80000001BB6CC210);
  v166 = *(v159 + 48);
  v167 = *(v166 + 32);

  [v167 lock];
  v168 = *(v166 + 16);
  [v167 *(v23 + 3040)];

  v218 = v168;
  sub_1BB6BB4B4();
  v169 = v219;
  v170 = v220;
  v171 = sub_1BB6BB064();
  _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v221, v169, v170, v171);
}