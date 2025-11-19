uint64_t sub_1BB5DB3D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v60 = type metadata accessor for DKMotion3();
  v7 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v49 - v12);
  v14 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople);
  if (v14)
  {
    v15 = sub_1BB6BA844();
    v51 = *(v15 - 8);
    v16 = *(v51 + 56);
    v54 = v51 + 56;
    v55 = v16;
    result = (v16)(v13, 1, 1, v15);
    if (v14 >> 62)
    {
      goto LABEL_41;
    }

    v61 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v56 = v13;
    v57 = v14;
    v53 = v15;
    v49 = a2;
    if (v61)
    {
      if (v61 >= 1)
      {
        v58 = v14 & 0xC000000000000001;
        v13 = (v7 + 6);
        v52 = (v51 + 16);

        v18 = 0;
        v19 = INFINITY;
        v7 = &OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion;
        a2 = &unk_1BB6BCE60;
        while (1)
        {
          v20 = v14;
          if (v58)
          {
            v15 = MEMORY[0x1BFB111F0](v18, v14);
          }

          else
          {
            v15 = *(v14 + 8 * v18 + 32);
          }

          sub_1BB5982A0(v15 + *v7, v6, &qword_1EBC5BCB8);
          if ((*v13)(v6, 1, v60) == 1)
          {

            sub_1BB598308(v6, &qword_1EBC5BCB8);
          }

          else
          {
            v14 = v59;
            sub_1BB5DD278(v6, v59);
            v21 = *(v14 + *(v60 + 20));
            if (*(v21 + 16) < 3uLL)
            {
              __break(1u);
LABEL_41:
              result = sub_1BB6BB564();
              v61 = result;
              goto LABEL_4;
            }

            v22 = *(v21 + 48);
            if (v22 >= v19)
            {

              v14 = v20;
LABEL_19:
              sub_1BB5DD2DC(v59);
              goto LABEL_8;
            }

            if (*(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection) != 3)
            {
              v14 = v20;

              goto LABEL_19;
            }

            v23 = v56;
            sub_1BB598308(v56, &qword_1EBC5C370);
            v24 = v7;
            v25 = v53;
            (*v52)(v23, v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v53);

            sub_1BB5DD2DC(v59);
            v26 = v23;
            v14 = v57;
            v27 = v25;
            v7 = v24;
            v55(v26, 0, 1, v27);
            v19 = v22;
          }

LABEL_8:
          if (v61 == ++v18)
          {
            goto LABEL_24;
          }
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v19 = INFINITY;
LABEL_24:
    v30 = v56;
    v31 = v50;
    sub_1BB5982A0(v56, v50, &qword_1EBC5C370);
    v32 = v51;
    v33 = v53;
    if ((*(v51 + 48))(v31, 1, v53) != 1)
    {
      sub_1BB598308(v30, &qword_1EBC5C370);

      v38 = v49;
      (*(v32 + 32))(v49, v31, v33);
      return (v55)(v38, 0, 1, v33);
    }

    result = sub_1BB598308(v31, &qword_1EBC5C370);
    if (v61)
    {
      if (v61 < 1)
      {
LABEL_43:
        __break(1u);
        return result;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v34 = 0;
        v35 = v56;
        do
        {
          v36 = MEMORY[0x1BFB111F0](v34, v57);
          v37 = fabs(CGRectGetMidX(*(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect)) + -0.5);
          if (v37 >= v19)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1BB598308(v35, &qword_1EBC5C370);
            (*(v32 + 16))(v35, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v33);
            swift_unknownObjectRelease();
            v55(v35, 0, 1, v33);
            v19 = v37;
          }

          ++v34;
        }

        while (v61 != v34);
      }

      else
      {
        v39 = (v57 + 32);
        v40 = (v32 + 16);
        v41 = v56;
        do
        {
          v42 = *v39;
          v43 = *v39 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect;
          v44 = *v43;
          v45 = *(v43 + 8);
          v46 = *(v43 + 16);
          v47 = *(v43 + 24);

          v63.origin.x = v44;
          v63.origin.y = v45;
          v63.size.width = v46;
          v63.size.height = v47;
          v48 = fabs(CGRectGetMidX(v63) + -0.5);
          if (v48 >= v19)
          {
          }

          else
          {
            sub_1BB598308(v41, &qword_1EBC5C370);
            (*v40)(v41, v42 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v33);

            v55(v41, 0, 1, v33);
            v19 = v48;
          }

          ++v39;
          --v61;
        }

        while (v61);
      }
    }

    return sub_1BB5DD208(v56, v49);
  }

  v28 = sub_1BB6BA844();
  v29 = *(*(v28 - 8) + 56);

  return v29(a2, 1, 1, v28);
}

uint64_t sub_1BB5DBB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v65 - v8;
  v10 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople);
  if (!v10)
  {
    goto LABEL_17;
  }

  MEMORY[0x1EEE9AC00](v7);
  *(&v65 - 2) = a2;

  v11 = sub_1BB5CB764(sub_1BB5DD1E8, (&v65 - 4), v10);
  if (!v11)
  {

LABEL_17:
    v40 = sub_1BB6BA844();
    return (*(*(v40 - 8) + 56))(a3, 1, 1, v40);
  }

  v12 = v11;
  v67 = a3;
  v13 = sub_1BB6BA844();
  v14 = *(v13 - 8);
  v15 = v14;
  v69 = *(v14 + 56);
  v70 = v13;
  v68 = v14 + 56;
  result = v69(v9, 1, 1);
  if (!(v10 >> 62))
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_29:

    return sub_1BB5DD208(v9, v67);
  }

  result = sub_1BB6BB564();
  v17 = result;
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_5:
  if (v17 >= 1)
  {
    v18 = (v12 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
    v19 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      v21 = (v15 + 16);
      v71 = INFINITY;
      do
      {
        v22 = MEMORY[0x1BFB111F0](v20, v10);
        v23 = (v22 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        MidX = CGRectGetMidX(*(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        if ((CGRectGetMidX(*v18) < MidX && *(v12 + v19) == 2 || (v25 = CGRectGetMidX(*v23), v25 < CGRectGetMidX(*v18)) && *(v12 + v19) == 1) && (x = v18->origin.x, y = v18->origin.y, width = v18->size.width, height = v18->size.height, v30 = v23->origin.x, v31 = v23->origin.y, v32 = v23->size.width, v72 = v23->size.height, v73 = v30, v74.origin.x = x, v74.origin.y = y, v74.size.width = width, v74.size.height = height, v33 = CGRectGetMidX(v74), v75.origin.x = v30, v75.origin.y = v31, v75.size.width = v32, v34 = v72, v75.size.height = v72, v35 = v33 - CGRectGetMidX(v75), v76.origin.x = x, v76.origin.y = y, v76.size.width = width, v76.size.height = height, MidY = CGRectGetMidY(v76), v77.origin.x = v73, v77.origin.y = v31, v77.size.width = v32, v77.size.height = v34, v37 = CGRectGetMidY(v77), v38 = sqrt(v35 * v35 + (MidY - v37) * (MidY - v37)), v38 < v71))
        {
          sub_1BB598308(v9, &qword_1EBC5C370);
          v39 = v70;
          (*v21)(v9, v22 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v70);
          swift_unknownObjectRelease();
          (v69)(v9, 0, 1, v39);
          v71 = v38;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v20;
      }

      while (v17 != v20);
    }

    else
    {
      v41 = (v10 + 32);
      v66 = (v15 + 16);
      v42 = INFINITY;
      do
      {
        v73 = v42;
        v43 = *v41;
        v44 = *v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect;
        v45 = *v44;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        v48 = *(v44 + 24);

        v78.origin.x = v45;
        v78.origin.y = v46;
        v78.size.width = v47;
        v78.size.height = v48;
        v49 = CGRectGetMidX(v78);
        if (CGRectGetMidX(*v18) < v49 && *(v12 + v19) == 2 || (v50 = CGRectGetMidX(*v44), v50 < CGRectGetMidX(*v18)) && *(v12 + v19) == 1)
        {
          v51 = v18->origin.x;
          v52 = v18->origin.y;
          v53 = v18->size.width;
          v54 = v18->size.height;
          v55 = *v44;
          v56 = *(v44 + 8);
          v57 = *(v44 + 16);
          v71 = *(v44 + 24);
          v72 = v55;
          v79.origin.x = v51;
          v79.origin.y = v52;
          v79.size.width = v53;
          v79.size.height = v54;
          v58 = CGRectGetMidX(v79);
          v80.origin.x = v55;
          v80.origin.y = v56;
          v80.size.width = v57;
          v59 = v71;
          v80.size.height = v71;
          v60 = v58 - CGRectGetMidX(v80);
          v81.origin.x = v51;
          v81.origin.y = v52;
          v81.size.width = v53;
          v81.size.height = v54;
          v61 = CGRectGetMidY(v81);
          v82.origin.x = v72;
          v82.origin.y = v56;
          v82.size.width = v57;
          v82.size.height = v59;
          v62 = CGRectGetMidY(v82);
          v42 = sqrt(v60 * v60 + (v61 - v62) * (v61 - v62));
          v63 = v73;
          if (v42 >= v73)
          {

            v42 = v63;
          }

          else
          {
            sub_1BB598308(v9, &qword_1EBC5C370);
            v64 = v70;
            (*v66)(v9, v43 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v70);

            (v69)(v9, 0, 1, v64);
          }
        }

        else
        {

          v42 = v73;
        }

        ++v41;
        --v17;
      }

      while (v17);
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB5DC188(void *a1)
{
  v2 = sub_1BB6BA844();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v2, v4);
  v7 = sub_1BB6BA814();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1BB5DC29C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacySubjectSelection.TrackInfo()
{
  result = qword_1EBC5C958;
  if (!qword_1EBC5C958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5DC35C()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA844();
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

uint64_t getEnumTagSinglePayload for LegacySubjectSelection.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacySubjectSelection.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB5DC58C()
{
  result = qword_1EBC5C968;
  if (!qword_1EBC5C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C968);
  }

  return result;
}

unint64_t sub_1BB5DC5E4()
{
  result = qword_1EBC5C970;
  if (!qword_1EBC5C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C970);
  }

  return result;
}

uint64_t sub_1BB5DC638(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = sub_1BB6A36B0(*(a1 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v2 + 56) + 8 * v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = v7 + 32;
  do
  {
    v11 = v10 + 3 * v9++;
    v12 = *(a2 + 16);
    v13 = (a2 + 32);
    while (v12)
    {
      v14 = *v13++;
      --v12;
      if (v14 == *(v11 + 2))
      {
        *(a1 + 16) = *(v11 + 1);
        return 1;
      }
    }

    result = 0;
  }

  while (v9 != v8);
  return result;
}

uint64_t sub_1BB5DC734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 24);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = a3(*(a1 + 16));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v3 + 56) + 8 * v6);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = v8 + 32;
  do
  {
    v12 = v11 + 3 * v10++;
    v13 = *(a2 + 16);
    v14 = (a2 + 32);
    while (v13)
    {
      v15 = *v14++;
      --v13;
      if (v15 == *(v12 + 2))
      {
        *(a1 + 16) = *(v12 + 1);
        return 1;
      }
    }

    result = 0;
  }

  while (v10 != v9);
  return result;
}

uint64_t sub_1BB5DC804(uint64_t *a1)
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
  sub_1BB5DC880(v6);
  return sub_1BB6BB3E4();
}

uint64_t sub_1BB5DC880(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BB6BB784();
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
        type metadata accessor for DKPersonTrackerState(0);
        v6 = sub_1BB6BAE94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1BB5DCA04(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1BB5DC984(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BB5DC984(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*(*v9 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16) >= *(*(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BB5DCA04(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1BB693A54(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_1BB5DCFB4((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BB693A54(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_1BB6939C8(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*(*a3 + 8 * v7) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
      v11 = *(*(*(*a3 + 8 * v9) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*(*a3 + 8 * v12) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BB59D140(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1BB59D140((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_1BB5DCFB4((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BB693A54(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_1BB6939C8(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(*(*v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16) >= *(*(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1BB5DCFB4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(*(*v17 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16) < *(*(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*(*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16) >= *(*(*v6 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1BB5DD208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5DD278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKMotion3();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5DD2DC(uint64_t a1)
{
  v2 = type metadata accessor for DKMotion3();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB5DD338()
{
  sub_1BB6BA844();
  sub_1BB5DF3C0(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  v1 = type metadata accessor for SlidingWindowMaxIdentity.TimedProbability(0);
  sub_1BB6BA7F4();
  sub_1BB5DF3C0(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v2 = v0 + *(v1 + 24);
  sub_1BB6BAB84();
  v3 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v4 = *(v2 + *(v3 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v4);
  v5 = *(v2 + *(v3 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x1BFB117D0](*&v5);
}

uint64_t sub_1BB5DD494()
{
  sub_1BB6BB924();
  sub_1BB5DD338();
  return sub_1BB6BB964();
}

uint64_t sub_1BB5DD4D8()
{
  sub_1BB6BB924();
  sub_1BB5DD338();
  return sub_1BB6BB964();
}

BOOL sub_1BB5DD514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (sub_1BB6BA814() & 1) != 0 && (sub_1BB6BA7C4())
  {
    v6 = *(a3 + 24);
    v7 = a1 + v6;
    v8 = a2 + v6;
    if (sub_1BB6BA814())
    {
      v9 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
      if (*(v7 + *(v9 + 20)) == *(v8 + *(v9 + 20)) && *(v7 + *(v9 + 24)) == *(v8 + *(v9 + 24)))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1BB5DD5B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SlidingWindowMaxIdentity.TimedProbability(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v37[0] = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v15 = *(v14 + 20);
  v16 = sub_1BB6BA7F4();
  v17 = *(*(v16 - 8) + 16);
  v37[1] = a2;
  v17(&v13[v15], a2, v16);
  sub_1BB5DF408(a1, &v13[*(v5 + 24)], type metadata accessor for DKIdentityFilter.IdentityProbability);
  sub_1BB6BA834();
  sub_1BB5DF408(v13, v10, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
  v18 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1BB59D7AC(0, v18[2] + 1, 1, v18);
    *(v2 + 16) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1BB59D7AC(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = *(v6 + 72);
  sub_1BB5DF470(v10, v18 + v22 + v23 * v21, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
  *(v2 + 16) = v18;
  sub_1BB5DD974();
  v24 = *(v2 + 24);
  v25 = v24[2];
  if (v25)
  {
    v26 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
    while (*(v24 + v22 + (v25 - 1) * v23 + *(v5 + 24) + *(v26 + 20)) < *(a1 + *(v26 + 20)))
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 24) = v24;
      if (v27)
      {
        v28 = v24[2];
        if (!v28)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v24 = sub_1BB6B0FC0(v24);
        *(v2 + 24) = v24;
        v28 = v24[2];
        if (!v28)
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      v29 = v28 - 1;
      sub_1BB5DF4D8(v24 + v22 + (v28 - 1) * v23, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      v24[2] = v29;
      *(v2 + 24) = v24;
      v25 = v24[2];
      if (!v25)
      {
        break;
      }
    }
  }

  v30 = v37[0];
  sub_1BB5DF408(v13, v37[0], type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
  v31 = *(v2 + 24);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_1BB59D7AC(0, v31[2] + 1, 1, v31);
    *(v2 + 24) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    *(v2 + 24) = sub_1BB59D7AC(v33 > 1, v34 + 1, 1, v31);
  }

  sub_1BB5DF4D8(v13, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
  v35 = *(v2 + 24);
  *(v35 + 16) = v34 + 1;
  result = sub_1BB5DF470(v30, v35 + v22 + v34 * v23, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
  *(v2 + 24) = v35;
  return result;
}

void sub_1BB5DD974()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C9B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v28 - v5;
  v6 = type metadata accessor for SlidingWindowMaxIdentity.TimedProbability(0);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = *(v0 + 16);
  if (*(v12 + 16))
  {
    v13 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v14 = (v29 + 56);
    while (1)
    {
      sub_1BB5DF408(v12 + v13, v11, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      sub_1BB6BA744();
      if (*(v0 + 32) >= v15)
      {
        sub_1BB5DF4D8(v11, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
        return;
      }

      v16 = *(v0 + 24);
      if (*(v16 + 16))
      {
        sub_1BB5DF408(v16 + v13, v8, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
        if (sub_1BB6BA814())
        {
          v17 = *(v0 + 24);
          if (!*(v17 + 16))
          {
            goto LABEL_33;
          }

          v18 = v28;
          sub_1BB5DF408(v17 + v13, v28, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
          (*v14)(v18, 0, 1, v6);
          sub_1BB598308(v18, &qword_1EBC5C9B0);
          v19 = *(v0 + 24);
          v20 = v19[2];
          if (!v20)
          {
            goto LABEL_34;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 24) = v19;
          if (!isUniquelyReferenced_nonNull_native || (v20 - 1) > v19[3] >> 1)
          {
            v19 = sub_1BB59D7AC(isUniquelyReferenced_nonNull_native, v20, 1, v19);
            *(v0 + 24) = v19;
          }

          sub_1BB5DF4D8(v19 + v13, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
          v22 = *(v29 + 72);
          if (v22 > 0 || v19 + v13 >= v19 + v13 + v22 + (v19[2] - 1) * v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          --v19[2];
          *(v0 + 24) = v19;
        }

        sub_1BB5DF4D8(v8, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      }

      v23 = *(v0 + 16);
      if (!*(v23 + 16))
      {
        break;
      }

      sub_1BB5DF408(v23 + v13, v3, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      (*v14)(v3, 0, 1, v6);
      sub_1BB598308(v3, &qword_1EBC5C9B0);
      v24 = *(v0 + 16);
      v25 = v24[2];
      if (!v25)
      {
        goto LABEL_32;
      }

      v26 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 16) = v24;
      if (!v26 || (v25 - 1) > v24[3] >> 1)
      {
        v24 = sub_1BB59D7AC(v26, v25, 1, v24);
        *(v0 + 16) = v24;
      }

      sub_1BB5DF4D8(v24 + v13, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      v27 = *(v29 + 72);
      if (v27 > 0 || v24 + v13 >= v24 + v13 + v27 + (v24[2] - 1) * v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v27)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --v24[2];
      *(v0 + 16) = v24;
      sub_1BB5DF4D8(v11, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      v12 = *(v0 + 16);
      if (!*(v12 + 16))
      {
        return;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1BB5DDE18()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5DDED4(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

double DKIdentityEMAFilter.Configuration.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BB6BF6E0;
  *(v0 + 32) = vdupq_n_s64(0x3FB999999999999AuLL);
  result = 0.9;
  *(v0 + 48) = xmmword_1BB6BF6F0;
  *(v0 + 64) = xmmword_1BB6BF700;
  *(v0 + 80) = xmmword_1BB6BF700;
  *(v0 + 96) = 0x4000000000000000;
  *(v0 + 104) = 0;
  return result;
}

double DKIdentityEMAFilter.Configuration.init()()
{
  *(v0 + 16) = xmmword_1BB6BF6E0;
  *(v0 + 32) = vdupq_n_s64(0x3FB999999999999AuLL);
  result = 0.9;
  *(v0 + 48) = xmmword_1BB6BF6F0;
  *(v0 + 64) = xmmword_1BB6BF700;
  *(v0 + 80) = xmmword_1BB6BF700;
  *(v0 + 96) = 0x4000000000000000;
  *(v0 + 104) = 0;
  return result;
}

uint64_t DKIdentityEMAFilter.__allocating_init(state:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DKIdentityEMAFilter.init(state:configuration:)(a1, a2);
  return v4;
}

uint64_t DKIdentityEMAFilter.init(state:configuration:)(uint64_t a1, uint64_t a2)
{
  sub_1BB6BA724();
  sub_1BB6BA724();
  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue;
  v6 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
  sub_1BB5DF408(a1, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
  *(v7 + *(v6 + 24)) = *(a2 + 88);
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration) = a2;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = *(a2 + 48);
  if (*(a2 + 104))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *(a2 + 96);
  }

  type metadata accessor for SlidingWindowMaxIdentity();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  sub_1BB5DF4D8(a1, type metadata accessor for DKIdentityFilter.IdentityProbability);
  *(v9 + 24) = v10;
  *(v9 + 32) = v8;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) = v9;
  return v2;
}

uint64_t sub_1BB5DE1A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v47 - v9;
  v10 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  sub_1BB5DE68C(a1, a3);
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue;
  sub_1BB598308(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, &qword_1EBC5C428);
  sub_1BB5DF408(a2, v4 + v16, type metadata accessor for DKIdentityFilter.IdentityProbability);
  v17 = *(v11 + 56);
  v17(v4 + v16, 0, 1, v10);
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration;
  v19 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
  if (*(v19 + 104))
  {
    sub_1BB5DF408(a2, v15, type metadata accessor for DKIdentityFilter.IdentityProbability);
  }

  else
  {
    v49 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration;
    v20 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory;
    *(*(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) + 32) = *(v19 + 96);

    sub_1BB5DD974();

    v48 = a2;
    sub_1BB5DD5B8(a2, a1);

    v21 = *(v4 + v20);

    v50 = a1;
    sub_1BB5DD974();
    v22 = *(v21 + 24);
    if (*(v22 + 16))
    {
      v23 = type metadata accessor for SlidingWindowMaxIdentity.TimedProbability(0);
      v24 = v52;
      sub_1BB5DF408(v22 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)) + *(v23 + 24), v52, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v25 = 0;
    }

    else
    {
      v25 = 1;
      v24 = v52;
    }

    v17(v24, v25, 1, v10);

    v26 = *(v11 + 48);
    v27 = v26(v24, 1, v10);
    v18 = v49;
    a1 = v50;
    if (v27 == 1)
    {
      v28 = v51;
      sub_1BB5DF408(v48, v51, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (v26(v24, 1, v10) != 1)
      {
        sub_1BB598308(v24, &qword_1EBC5C428);
      }
    }

    else
    {
      v28 = v51;
      sub_1BB5DF470(v24, v51, type metadata accessor for DKIdentityFilter.IdentityProbability);
    }

    sub_1BB5DF470(v28, v15, type metadata accessor for DKIdentityFilter.IdentityProbability);
  }

  v29 = *(v4 + v18);
  v30 = exp(-v29[3] / v29[2]);
  v31 = *(v10 + 20);
  v32 = *(v10 + 24);
  v33 = *&v15[v32];
  v34 = v4 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
  v35 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state + v32);
  v36 = (1.0 - v30) * (v33 / (v33 + v35));
  if (v36 <= 1.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = v36 < 0.0;
  v39 = 0.0;
  if (!v38)
  {
    v39 = v37;
  }

  v40 = *&v15[v31] * v39 + *(v34 + v31) * (1.0 - v39);
  if (v29[7] > v40)
  {
    v40 = v29[7];
  }

  if (v29[8] < v40)
  {
    v40 = v29[8];
  }

  *(v34 + v31) = v40;
  v41 = v29[4];
  sub_1BB5DF4D8(v15, type metadata accessor for DKIdentityFilter.IdentityProbability);
  v42 = *(v4 + v18);
  v43 = v35 + v33 * v41 / v42[3];
  if (v42[9] > v43)
  {
    v43 = v42[9];
  }

  if (v42[10] < v43)
  {
    v43 = v42[10];
  }

  *(v34 + v32) = v43;
  v44 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastUpdateTime;
  v45 = sub_1BB6BA7F4();
  return (*(*(v45 - 8) + 24))(v4 + v44, a1, v45);
}

uint64_t sub_1BB5DE68C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v6, v8.n128_f64[0]);
    sub_1BB6BA744();
    v12 = v11;
    (*(v7 + 8))(v10, v6);
    v13 = 1.79769313e308;
    if (v12 <= 1.79769313e308)
    {
      v13 = v12;
    }

    if (v12 < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
    v16 = 1.0 - *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence);
    v17 = *(v15 + 40) * v16;
    if (v17 <= 1.0)
    {
      v18 = *(v15 + 40) * v16;
    }

    else
    {
      v18 = 1.0;
    }

    if (v17 < 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v18;
    }

    v20 = v3 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
    v21 = *(type metadata accessor for DKIdentityFilter.IdentityProbability(0) + 24);
    v8.n128_f64[0] = *(v20 + v21) - v14 * v19;
    if (*(v15 + 72) > v8.n128_f64[0])
    {
      v8.n128_u64[0] = *(v15 + 72);
    }

    if (*(v15 + 80) < v8.n128_f64[0])
    {
      v8.n128_u64[0] = *(v15 + 80);
    }

    *(v20 + v21) = v8.n128_u64[0];
  }

  return (*(v7 + 24))(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, a1, v6, v8);
}

uint64_t DKIdentityEMAFilter.deinit()
{
  sub_1BB5DF4D8(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastUpdateTime, v2);

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, &qword_1EBC5C428);
  return v0;
}

uint64_t DKIdentityEMAFilter.__deallocating_deinit()
{
  sub_1BB5DF4D8(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastUpdateTime, v2);

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, &qword_1EBC5C428);

  return swift_deallocClassInstance();
}

void sub_1BB5DEAC0()
{
  type metadata accessor for DKIdentityFilter.IdentityProbability(319);
  if (v0 <= 0x3F)
  {
    sub_1BB6BA7F4();
    if (v1 <= 0x3F)
    {
      sub_1BB5DEC94();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BB5DEC94()
{
  if (!qword_1EBC5C990)
  {
    type metadata accessor for DKIdentityFilter.IdentityProbability(255);
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5C990);
    }
  }
}

uint64_t sub_1BB5DF2DC()
{
  result = sub_1BB6BA844();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DKIdentityFilter.IdentityProbability(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BB5DF3C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB5DF408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5DF470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5DF4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DKIdentityKalmanFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKIdentityKalmanFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

IntelligentTrackingCore::DKIdentityKalmanFilter::Index_optional __swiftcall DKIdentityKalmanFilter.Index.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BB5DF774(uint64_t a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  v4 = v3[2];
  if (v4 < 1)
  {
    goto LABEL_21;
  }

  v5 = v3[3];
  if (v5 <= 0)
  {
    goto LABEL_21;
  }

  v6 = v3[4];
  *v6 = a2;
  if (v4 == 1 || v5 == 1)
  {
    goto LABEL_21;
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6[v4 + 1] = a2;
  if (v4 < 3 || v5 <= 2)
  {
    goto LABEL_21;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
    goto LABEL_19;
  }

  v9 = 2 * v4;
  v10 = __OFADD__(v9, 2);
  v11 = v9 + 2;
  if (v10)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_1BB6BB524();
    __break(1u);
    return result;
  }

  v6[v11] = a2;

  return sub_1BB69E74C(a1);
}

uint64_t DKIdentityKalmanFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1BB5DF8E4()
{
  result = qword_1EBC5C9B8;
  if (!qword_1EBC5C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C9B8);
  }

  return result;
}

unint64_t sub_1BB5DF93C()
{
  result = qword_1EBC5C9C0;
  if (!qword_1EBC5C9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C9C0);
  }

  return result;
}

uint64_t DKISSTrackVector.__allocating_init(trackerID:features:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DKISSTrackVector.init(trackerID:features:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BB5DFBC4()
{
  if (*v0)
  {
    return 0x7365727574616566;
  }

  else
  {
    return 0x4964656B63617274;
  }
}

uint64_t sub_1BB5DFC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4964656B63617274 && a2 == 0xE900000000000044;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
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

uint64_t sub_1BB5DFCE8(uint64_t a1)
{
  v2 = sub_1BB5DFF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5DFD24(uint64_t a1)
{
  v2 = sub_1BB5DFF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB5DFD60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C9F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5DFF14();
  sub_1BB6BB984();
  v12 = 0;
  sub_1BB6BB734();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEC8);
    sub_1BB5E01EC(&qword_1EBC5CA00);
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BB5DFF14()
{
  result = qword_1EBC5C9F8;
  if (!qword_1EBC5C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C9F8);
  }

  return result;
}

uint64_t DKISSTrackVector.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKISSTrackVector.init(from:)(a1);
  return v2;
}

uint64_t DKISSTrackVector.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5DFF14();
  sub_1BB6BB974();
  if (v2)
  {
    type metadata accessor for DKISSTrackVector();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = 0;
    *(v1 + 16) = sub_1BB6BB674();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEC8);
    v10 = 1;
    sub_1BB5E01EC(&qword_1EBC5CA10);
    sub_1BB6BB684();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1BB5E01EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5BEC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB5E02C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKISSTrackVector();
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t DKISSFeatureVector.__allocating_init(framenum:time:tracks:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a3;
  *(result + 32) = a2;
  return result;
}

uint64_t DKISSFeatureVector.init(framenum:time:tracks:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;
  return v3;
}

uint64_t sub_1BB5E0380()
{
  v1 = 1701669236;
  if (*v0 != 1)
  {
    v1 = 0x736B63617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D756E656D617266;
  }
}

uint64_t sub_1BB5E03D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB5EE998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5E03F8(uint64_t a1)
{
  v2 = sub_1BB5E06BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5E0434(uint64_t a1)
{
  v2 = sub_1BB5E06BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKISSFeatureVector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5E04C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E06BC();
  sub_1BB6BB984();
  v13 = 0;
  sub_1BB6BB734();
  if (!v2)
  {
    v12 = 1;
    sub_1BB6BB724();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA28);
    sub_1BB5E0710();
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BB5E06BC()
{
  result = qword_1EBC5CA20;
  if (!qword_1EBC5CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CA20);
  }

  return result;
}

unint64_t sub_1BB5E0710()
{
  result = qword_1EBC5CA30;
  if (!qword_1EBC5CA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CA28);
    sub_1BB5EEEC4(&qword_1EBC5CA38, v1, type metadata accessor for DKISSTrackVector);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CA30);
  }

  return result;
}

uint64_t DKISSFeatureVector.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKISSFeatureVector.init(from:)(a1);
  return v2;
}

void *DKISSFeatureVector.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E06BC();
  sub_1BB6BB974();
  if (v2)
  {
    type metadata accessor for DKISSFeatureVector();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = 0;
    v1[2] = sub_1BB6BB674();
    v12 = 1;
    sub_1BB6BB664();
    v1[3] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA28);
    v11 = 2;
    sub_1BB5E0A4C();
    sub_1BB6BB684();
    (*(v5 + 8))(v7, v4);
    v1[4] = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_1BB5E0A4C()
{
  result = qword_1EBC5CA48;
  if (!qword_1EBC5CA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CA28);
    sub_1BB5EEEC4(&qword_1EBC5CA50, v1, type metadata accessor for DKISSTrackVector);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CA48);
  }

  return result;
}

uint64_t sub_1BB5E0B68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKISSFeatureVector();
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t sub_1BB5E0BA8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BB5E0BD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *DKISSFeatureVectors.__allocating_init(videoName:frames:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *DKISSFeatureVectors.init(videoName:frames:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1BB5E0C40()
{
  if (*v0)
  {
    return 0x73656D617266;
  }

  else
  {
    return 0x6D614E6F65646976;
  }
}

uint64_t sub_1BB5E0C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6F65646976 && a2 == 0xE900000000000065;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D617266 && a2 == 0xE600000000000000)
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

uint64_t sub_1BB5E0D5C(uint64_t a1)
{
  v2 = sub_1BB5E1008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5E0D98(uint64_t a1)
{
  v2 = sub_1BB5E1008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKISSFeatureVectors.deinit()
{

  return v0;
}

uint64_t DKISSFeatureVectors.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5E0E3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E1008();
  sub_1BB6BB984();
  v12 = 0;

  sub_1BB6BB6C4();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v11 = *(v3 + 32);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA68);
    sub_1BB5E105C();
    sub_1BB6BB744();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1BB5E1008()
{
  result = qword_1EBC5CA60;
  if (!qword_1EBC5CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CA60);
  }

  return result;
}

unint64_t sub_1BB5E105C()
{
  result = qword_1EBC5CA70;
  if (!qword_1EBC5CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CA68);
    sub_1BB5EEEC4(&qword_1EBC5CA78, v1, type metadata accessor for DKISSFeatureVector);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CA70);
  }

  return result;
}

uint64_t DKISSFeatureVectors.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKISSFeatureVectors.init(from:)(a1);
  return v2;
}

void *DKISSFeatureVectors.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v1[2] = 0;
  v1[3] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E1008();
  sub_1BB6BB974();
  if (v2)
  {

    type metadata accessor for DKISSFeatureVectors();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    v1[2] = sub_1BB6BB604();
    v1[3] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA68);
    v11 = 1;
    sub_1BB5E1388();
    sub_1BB6BB684();
    (*(v5 + 8))(v7, v4);
    v1[4] = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_1BB5E1388()
{
  result = qword_1EBC5CA88;
  if (!qword_1EBC5CA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CA68);
    sub_1BB5EEEC4(&qword_1EBC5CA90, v1, type metadata accessor for DKISSFeatureVector);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CA88);
  }

  return result;
}

uint64_t sub_1BB5E14A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKISSFeatureVectors();
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t DKISSDetections.__allocating_init(time:detections:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t DKISSDetections.init(time:detections:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_1BB5E1550()
{
  if (*v0)
  {
    return 0x6F69746365746564;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1BB5E1588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365746564 && a2 == 0xEA0000000000736ELL)
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

uint64_t sub_1BB5E166C(uint64_t a1)
{
  v2 = sub_1BB5E18CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5E16A8(uint64_t a1)
{
  v2 = sub_1BB5E18CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKISSDetections.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5E173C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CA98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E18CC();
  sub_1BB6BB984();
  v12 = 0;
  sub_1BB6BB724();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CAA8);
    sub_1BB5E1920();
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BB5E18CC()
{
  result = qword_1EBC5CAA0;
  if (!qword_1EBC5CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CAA0);
  }

  return result;
}

unint64_t sub_1BB5E1920()
{
  result = qword_1EBC5CAB0;
  if (!qword_1EBC5CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CAA8);
    sub_1BB5EEEC4(&qword_1EBC5CAB8, v1, type metadata accessor for DKISSDetection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CAB0);
  }

  return result;
}

uint64_t DKISSDetections.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKISSDetections.init(from:)(a1);
  return v2;
}

uint64_t DKISSDetections.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CAC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E18CC();
  sub_1BB6BB974();
  if (v2)
  {
    type metadata accessor for DKISSDetections();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    sub_1BB6BB664();
    *(v1 + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CAA8);
    v11 = 1;
    sub_1BB5E1C58();
    sub_1BB6BB684();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_1BB5E1C58()
{
  result = qword_1EBC5CAC8;
  if (!qword_1EBC5CAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5CAA8);
    sub_1BB5EEEC4(&qword_1EBC5CAD0, v1, type metadata accessor for DKISSDetection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CAC8);
  }

  return result;
}

uint64_t sub_1BB5E1D74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKISSDetections();
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

void sub_1BB5E1DC0(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

uint64_t sub_1BB5E1DD8(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_1BB5E1E04(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t sub_1BB5E1E20(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t sub_1BB5E1E94(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t sub_1BB5E1ED0(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t DKISSDetection.__allocating_init(time:rect:trackerId:framesSinceLastUpdate:faceYaw:facePitch:faceRoll:bodyKeypoints:speaking:looking:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  result = swift_allocObject();
  *(result + 16) = a9;
  *(result + 24) = a10;
  *(result + 32) = a11;
  *(result + 40) = a12;
  *(result + 48) = a13;
  *(result + 56) = a1;
  *(result + 64) = a2 & 1;
  *(result + 72) = a3;
  *(result + 80) = a4;
  *(result + 88) = a5 & 1;
  *(result + 96) = a6;
  *(result + 104) = a7 & 1;
  *(result + 112) = a8;
  *(result + 120) = a14 & 1;
  *(result + 128) = a15;
  *(result + 136) = a16;
  *(result + 144) = a17 & 1;
  *(result + 152) = a18;
  *(result + 160) = a19 & 1;
  return result;
}

uint64_t DKISSDetection.init(time:rect:trackerId:framesSinceLastUpdate:faceYaw:facePitch:faceRoll:bodyKeypoints:speaking:looking:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v19 + 16) = a9;
  *(v19 + 24) = a10;
  *(v19 + 32) = a11;
  *(v19 + 40) = a12;
  *(v19 + 48) = a13;
  *(v19 + 56) = a1;
  *(v19 + 64) = a2 & 1;
  *(v19 + 72) = a3;
  *(v19 + 80) = a4;
  *(v19 + 88) = a5 & 1;
  *(v19 + 96) = a6;
  *(v19 + 104) = a7 & 1;
  *(v19 + 112) = a8;
  *(v19 + 120) = a14 & 1;
  *(v19 + 128) = a15;
  *(v19 + 136) = a16;
  *(v19 + 144) = a17 & 1;
  *(v19 + 152) = a18;
  *(v19 + 160) = a19 & 1;
  return v19;
}

uint64_t sub_1BB5E2094(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7079654B79646F62;
    v6 = 0x676E696B61657073;
    if (a1 != 8)
    {
      v6 = 0x676E696B6F6F6CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6374695065636166;
    if (a1 != 5)
    {
      v7 = 0x6C6C6F5265636166;
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
    v1 = 1701669236;
    v2 = 0x4972656B63617274;
    v3 = 0xD000000000000015;
    if (a1 != 3)
    {
      v3 = 0x77615965636166;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1952671090;
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

uint64_t sub_1BB5E21E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB5EEAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5E2218(uint64_t a1)
{
  v2 = sub_1BB5E2650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5E2254(uint64_t a1)
{
  v2 = sub_1BB5E2650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKISSDetection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5E22E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CAD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E2650();
  sub_1BB6BB984();
  LOBYTE(v13) = 0;
  sub_1BB6BB724();
  if (!v2)
  {
    v9 = *(v3 + 40);
    v13 = *(v3 + 24);
    v14 = v9;
    v12 = 1;
    type metadata accessor for CGRect(0);
    sub_1BB5EEEC4(&qword_1EBC5C610, 255, type metadata accessor for CGRect);
    sub_1BB6BB744();
    LOBYTE(v13) = 2;
    sub_1BB6BB6F4();
    LOBYTE(v13) = 3;
    sub_1BB6BB734();
    LOBYTE(v13) = 4;
    sub_1BB6BB6E4();
    LOBYTE(v13) = 5;
    sub_1BB6BB6E4();
    LOBYTE(v13) = 6;
    sub_1BB6BB6E4();
    *&v13 = *(v3 + 128);
    v12 = 7;
    type metadata accessor for DKBodyKeyPointList();
    sub_1BB5EEEC4(&qword_1EBC5CAE8, 255, type metadata accessor for DKBodyKeyPointList);
    sub_1BB6BB704();
    LOBYTE(v13) = 8;
    sub_1BB6BB6E4();
    LOBYTE(v13) = 9;
    sub_1BB6BB6E4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BB5E2650()
{
  result = qword_1EBC5CAE0;
  if (!qword_1EBC5CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5CAE0);
  }

  return result;
}

uint64_t DKISSDetection.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKISSDetection.init(from:)(a1);
  return v2;
}

uint64_t DKISSDetection.init(from:)(void *a1)
{
  v3 = v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CAF0);
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - v6;
  *(v1 + 128) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  *(v1 + 160) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5E2650();
  sub_1BB6BB974();
  if (v2)
  {

    type metadata accessor for DKISSDetection();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21) = 0;
    sub_1BB6BB664();
    *(v1 + 16) = v8;
    type metadata accessor for CGRect(0);
    v23 = 1;
    sub_1BB5EEEC4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect);
    sub_1BB6BB684();
    v9 = v22;
    *(v1 + 24) = v21;
    *(v1 + 40) = v9;
    LOBYTE(v21) = 2;
    *(v1 + 56) = sub_1BB6BB634();
    *(v1 + 64) = v10 & 1;
    LOBYTE(v21) = 3;
    *(v1 + 72) = sub_1BB6BB674();
    LOBYTE(v21) = 4;
    *(v1 + 80) = sub_1BB6BB624();
    *(v1 + 88) = v12 & 1;
    LOBYTE(v21) = 5;
    *(v1 + 96) = sub_1BB6BB624();
    *(v1 + 104) = v13 & 1;
    LOBYTE(v21) = 6;
    *(v1 + 112) = sub_1BB6BB624();
    *(v1 + 120) = v14 & 1;
    type metadata accessor for DKBodyKeyPointList();
    v23 = 7;
    sub_1BB5EEEC4(&qword_1EBC5CAF8, 255, type metadata accessor for DKBodyKeyPointList);
    sub_1BB6BB644();
    *(v1 + 128) = v21;

    LOBYTE(v21) = 8;
    *(v1 + 136) = sub_1BB6BB624();
    *(v1 + 144) = v15 & 1;
    LOBYTE(v21) = 9;
    v16 = sub_1BB6BB624();
    v18 = v17;
    (*(v5 + 8))(v7, v20);
    *(v3 + 152) = v16;
    *(v3 + 160) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1BB5E2BBC@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1BB5E2C50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DKISSDetection();
  result = sub_1BB6BB314();
  *a1 = result;
  return result;
}

uint64_t DKISSPrediction.probabilities.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DKISSModel.__allocating_init()()
{
  v0 = swift_allocObject();
  DKISSModel.init()();
  return v0;
}

void *DKISSModel.init()()
{
  v2 = v0;
  v0[6] = 120;
  v0[7] = 0xE100000000000000;
  v0[8] = 0x6E695F7868;
  v0[9] = 0xE500000000000000;
  v0[10] = 0x6E695F7863;
  v0[11] = 0xE500000000000000;
  v0[12] = 1802723693;
  v0[13] = 0xE400000000000000;
  v0[14] = 0x74756F5F7868;
  v0[15] = 0xE600000000000000;
  v0[16] = 0x74756F5F7863;
  v0[17] = 0xE600000000000000;
  v0[18] = 1684370032;
  v0[19] = 0xE400000000000000;
  bzero(v0 + 20, 0x498uLL);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_logger;
  sub_1BB6BAA24();
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_maxNumTrackers) = 10;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_forgetDetectionThreshold) = 0x3FF0000000000000;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_unusedIndexes) = MEMORY[0x1E69E7CD0];
  v4 = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRankMap) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRowMap) = v4;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_poseNormalisation) = 1050857701;
  v5 = sub_1BB5EC418(0xD000000000000021, 0x80000001BB6CC4E0, 0x737465737341, 0xE600000000000000, 0xD000000000000010, 0x80000001BB6CA7D0);
  if (v1)
  {

    v9 = sub_1BB6BAA34();
    (*(*(v9 - 8) + 8))(v2 + v3, v9);

    type metadata accessor for DKISSModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v5;
    v2[3] = v6;
    v2[4] = v7;
    *(v2 + 10) = v8;
    v10 = sub_1BB6BAE94();
    v10[2] = 10;
    v10[4] = -1;
    v10[5] = 0;
    v10[6] = -1;
    v10[7] = 0;
    v10[8] = -1;
    v10[9] = 0;
    v10[10] = -1;
    v10[11] = 0;
    v10[12] = -1;
    v10[13] = 0;
    v10[14] = -1;
    v10[15] = 0;
    v10[16] = -1;
    v10[17] = 0;
    v10[18] = -1;
    v10[19] = 0;
    v10[20] = -1;
    v10[21] = 0;
    v10[22] = -1;
    v10[23] = 0;
    *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections) = v10;
    sub_1BB5ACCEC(&v12, 0);
    sub_1BB5ACCEC(&v12, 1);
    sub_1BB5ACCEC(&v12, 2);
    sub_1BB5ACCEC(&v12, 3);
    sub_1BB5ACCEC(&v12, 4);
    sub_1BB5ACCEC(&v12, 5);
    sub_1BB5ACCEC(&v12, 6);
    sub_1BB5ACCEC(&v12, 7);
    sub_1BB5ACCEC(&v12, 8);
    sub_1BB5ACCEC(&v12, 9);
    sub_1BB5E3244();
  }

  return v2;
}

uint64_t DKISSModel.deinit()
{
  espresso_plan_destroy();
  espresso_context_destroy();

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKISSModel.__deallocating_deinit()
{
  DKISSModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1BB5E3244()
{
  v2 = v0[6];
  v3 = v0[7];

  sub_1BB5ECA98((v0 + 4), v2, v3);

  if (!v1)
  {
    v4 = v0[8];
    v5 = v0[9];

    sub_1BB5ECA98((v0 + 4), v4, v5);

    v6 = v0[10];
    v7 = v0[11];

    sub_1BB5ECA98((v0 + 4), v6, v7);

    v8 = v0[12];
    v9 = v0[13];
    v10 = (v0 + 83);

    sub_1BB5ECA98((v0 + 4), v8, v9);

    v11 = v0[14];
    v12 = v0[15];

    sub_1BB5ECBAC((v0 + 4), v11, v12);

    v13 = v0[16];
    v14 = v0[17];
    v15 = (v0 + 125);

    sub_1BB5ECBAC((v0 + 4), v13, v14);

    v16 = v0[18];
    v17 = v0[19];

    sub_1BB5ECBAC((v0 + 4), v16, v17);

    v18 = v0[31];
    if (v18 <= 0)
    {
      sub_1BB6BB2F4();

      v39 = sub_1BB6BB794();
      MEMORY[0x1BFB10B60](v39);

      sub_1BB5A8D60();
      swift_allocError();
      *v40 = 0xD00000000000001FLL;
      *(v40 + 8) = 0x80000001BB6CC8E0;
      *(v40 + 16) = 0;
      swift_willThrow();
      return;
    }

    v19 = v0[20];
    if (!v19)
    {
      goto LABEL_48;
    }

    v20 = v0[30];
    v21 = v20 * v18;
    if ((v20 * v18) >> 64 != (v20 * v18) >> 63)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v22 = *v10;
    if (!*v10)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v23 = v0[93];
    v24 = v0[94];
    v25 = v23 * v24;
    v26 = (v23 * v24) >> 64;
    v27 = v26 == v25 >> 63;
    v28 = v26 != v25 >> 63;
    if (!v27)
    {
      goto LABEL_38;
    }

    v29 = v0[104];
    if (!v29)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if ((v0[114] * v0[115]) >> 64 != (v0[114] * v0[115]) >> 63)
    {
      goto LABEL_39;
    }

    v30 = *v15;
    if (!*v15)
    {
LABEL_51:
      __break(1u);
      return;
    }

    if ((v0[135] * v0[136]) >> 64 != (v0[135] * v0[136]) >> 63)
    {
      goto LABEL_40;
    }

    if (v21 < 0)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v21)
    {
      bzero(v19, 4 * v21);
      v31 = v0[93];
      v32 = v0[94];
      v25 = v31 * v32;
      v28 = (v31 * v32) >> 64 != (v31 * v32) >> 63;
    }

    if (v28)
    {
      goto LABEL_42;
    }

    if (v25 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v25)
    {
      bzero(v22, 4 * v25);
    }

    v33 = v0[114];
    v34 = v0[115];
    v35 = v33 * v34;
    if ((v33 * v34) >> 64 != (v33 * v34) >> 63)
    {
      goto LABEL_44;
    }

    if (v35 < 0)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v35)
    {
      bzero(v29, 4 * v35);
    }

    v36 = v0[135];
    v37 = v0[136];
    v38 = v36 * v37;
    if ((v36 * v37) >> 64 != (v36 * v37) >> 63)
    {
      goto LABEL_46;
    }

    if (v38 < 0)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v38)
    {

      bzero(v30, 4 * v38);
    }
  }
}

uint64_t sub_1BB5E3630(uint64_t a1)
{
  v186 = v1[20];
  if (!v186)
  {
    goto LABEL_200;
  }

  v3 = v1;
  v5 = v1[30];
  v4 = v1[31];
  v6 = v5 * v4;
  v182 = v5;
  if ((v5 * v4) >> 64 != (v5 * v4) >> 63)
  {
    goto LABEL_78;
  }

  v184 = v1[83];
  if (!v184)
  {
    goto LABEL_201;
  }

  if (v6 < 0)
  {
    goto LABEL_79;
  }

  if (v6)
  {
    bzero(v186, 4 * v6);
  }

  v7 = v1[94];
  if (v7 < 0)
  {
    goto LABEL_80;
  }

  if (v7)
  {
    bzero(v184, 4 * v7);
  }

  v204 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 32);
  if (v2 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BB6BB564())
  {
    v9 = MEMORY[0x1E69E7CC0];
    v198 = v3;
    if (!i)
    {
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

    v199 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections;
    v194 = v2 & 0xC000000000000001;
    v176 = v2 + 32;
    v178 = v2 & 0xFFFFFFFFFFFFFF8;

    v10 = 0;
    v11 = v9;
    v180 = v2;
    v190 = i;
LABEL_18:
    if (v194)
    {
      v13 = MEMORY[0x1BFB111F0](v10, v2);
      v14 = __OFADD__(v10++, 1);
      if (!v14)
      {
        goto LABEL_24;
      }

      goto LABEL_70;
    }

    if (v10 < *(v178 + 16))
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

  v13 = *(v176 + 8 * v10);

  v14 = __OFADD__(v10++, 1);
  if (v14)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_24:
  v15 = 0;
  v16 = *(v3 + v199);
  v17 = -1;
  do
  {
    if (v17 - *(v16 + 2) == -1)
    {

      MEMORY[0x1BFB10C80](v12);
      if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();

      v11 = v204;
      goto LABEL_17;
    }

    v18 = *&v16[v15 + 32];
    ++v17;
    v15 += 16;
  }

  while (*(v13 + 16) != v18);
  v19 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v199) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1BB6B0FE8(v16);
  }

  if (v17 >= *(v16 + 2))
  {
    goto LABEL_72;
  }

  v2 = v11;
  v21 = &v16[v15];
  *(v21 + 2) = v18;
  *(v21 + 3) = v19;
  *(v3 + v199) = v16;
  v22 = *(v13 + 24);
  v23 = *(v22 + 16);
  if (v23)
  {

    sub_1BB5E5A00(0, v23, 0);
    v24 = v9;
    v25 = *(v9 + 16);
    v26 = 32;
    do
    {
      v27 = *(v22 + v26);
      v28 = *(v9 + 24);
      if (v25 >= v28 >> 1)
      {
        sub_1BB5E5A00((v28 > 1), v25 + 1, 1);
      }

      v29 = v27;
      *(v9 + 16) = v25 + 1;
      *(v9 + 4 * v25 + 32) = v29;
      v26 += 8;
      ++v25;
      --v23;
    }

    while (v23);

    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v24 = v9;
  }

  v3 = v198;
  if ((v17 * v182) >> 64 != (v17 * v182) >> 63)
  {
    goto LABEL_73;
  }

  v11 = v2;
  v30 = &v186[4 * v17 * v182];
  v31 = v24[2];
  v32 = v24[4];
  *(v30 + 1) = v24[3];
  *(v30 + 2) = v32;
  *v30 = v31;
  v33 = v24[5];
  v34 = v24[6];
  v35 = v24[8];
  *(v30 + 5) = v24[7];
  *(v30 + 6) = v35;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v36 = v24[9];
  v37 = v24[10];
  v38 = v24[12];
  *(v30 + 9) = v24[11];
  *(v30 + 10) = v38;
  *(v30 + 7) = v36;
  *(v30 + 8) = v37;
  v39 = v24[13];
  v40 = v24[14];
  v41 = v24[15];
  *(v30 + 220) = *(v24 + 252);
  *(v30 + 12) = v40;
  *(v30 + 13) = v41;
  *(v30 + 11) = v39;

  *(v184 + v17) = 1065353216;

  v2 = v180;
LABEL_17:
  if (v10 != v190)
  {
    goto LABEL_18;
  }

LABEL_41:
  sub_1BB5E5494(1.0, *(a1 + 24));
  if (v11 >> 62)
  {
    v42 = sub_1BB6BB564();
    if (v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v42 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
LABEL_43:
      v43 = 0;
      v44 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_unusedIndexes;
      v2 = v11 & 0xC000000000000001;
      v200 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections;
      v191 = v11 + 32;
      v195 = v11 & 0xFFFFFFFFFFFFFF8;
      v177 = v42;
      v179 = v11 & 0xC000000000000001;
      v181 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_unusedIndexes;
      do
      {
        if (v2)
        {
          v57 = MEMORY[0x1BFB111F0](v43, v11);
          v14 = __OFADD__(v43++, 1);
          if (v14)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v43 >= *(v195 + 16))
          {
            goto LABEL_75;
          }

          v57 = *(v191 + 8 * v43);

          v14 = __OFADD__(v43++, 1);
          if (v14)
          {
            goto LABEL_71;
          }
        }

        v58 = 0;
        v59 = *(v3 + v44);
        v60 = 1 << *(v59 + 32);
        v61 = (v60 + 63) >> 6;
        v62 = 56;
        while (1)
        {
          v63 = *(v59 + v62);
          if (v63)
          {
            break;
          }

          v58 -= 64;
          v62 += 8;
          if (!--v61)
          {
            goto LABEL_46;
          }
        }

        v64 = __clz(__rbit64(v63));
        if (v64 - v60 != v58)
        {
          v65 = sub_1BB5EC198(v64 - v58, *(v59 + 36), 0, v59);
          v66 = *(a1 + 24);
          v67 = *(v57 + 16);
          v68 = *(v3 + v200);
          v69 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + v200) = v68;
          if (v69)
          {
            if (v65 < 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v68 = sub_1BB6B0FE8(v68);
            if (v65 < 0)
            {
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }
          }

          if (v65 >= *(v68 + 2))
          {
            goto LABEL_76;
          }

          v2 = v11;
          v70 = &v68[16 * v65];
          *(v70 + 4) = v67;
          *(v70 + 5) = v66;
          *(v3 + v200) = v68;
          v71 = *(v57 + 24);
          v72 = *(v71 + 16);
          if (v72)
          {
            v203 = MEMORY[0x1E69E7CC0];

            sub_1BB5E5A00(0, v72, 0);
            v73 = v203;
            v74 = *(v203 + 16);
            v75 = 32;
            do
            {
              v76 = *(v71 + v75);
              v77 = *(v203 + 24);
              if (v74 >= v77 >> 1)
              {
                sub_1BB5E5A00((v77 > 1), v74 + 1, 1);
              }

              v78 = v76;
              *(v203 + 16) = v74 + 1;
              *(v203 + 4 * v74 + 32) = v78;
              v75 += 8;
              ++v74;
              --v72;
            }

            while (v72);

            v42 = v177;
          }

          else
          {
            v73 = MEMORY[0x1E69E7CC0];
          }

          v44 = v181;
          v3 = v198;
          if ((v65 * v182) >> 64 != (v65 * v182) >> 63)
          {
            goto LABEL_77;
          }

          v11 = v2;
          v45 = &v186[4 * v65 * v182];
          v46 = v73[2];
          v47 = v73[4];
          *(v45 + 1) = v73[3];
          *(v45 + 2) = v47;
          *v45 = v46;
          v48 = v73[5];
          v49 = v73[6];
          v50 = v73[8];
          *(v45 + 5) = v73[7];
          *(v45 + 6) = v50;
          *(v45 + 3) = v48;
          *(v45 + 4) = v49;
          v51 = v73[9];
          v52 = v73[10];
          v53 = v73[12];
          *(v45 + 9) = v73[11];
          *(v45 + 10) = v53;
          *(v45 + 7) = v51;
          *(v45 + 8) = v52;
          v54 = v73[13];
          v55 = v73[14];
          v56 = v73[15];
          *(v45 + 220) = *(v73 + 252);
          *(v45 + 12) = v55;
          *(v45 + 13) = v56;
          *(v45 + 11) = v54;

          *(v184 + v65) = 1065353216;
          sub_1BB5EBC18(v65);
          v2 = v179;
        }

LABEL_46:
      }

      while (v43 != v42);
    }
  }

  v79 = v3[41];
  if (!v79)
  {
    goto LABEL_202;
  }

  v80 = v3[51];
  v81 = v3[52];
  if ((v80 * v81) >> 64 != (v80 * v81) >> 63)
  {
    goto LABEL_193;
  }

  v82 = v3[104];
  if (!v82)
  {
    goto LABEL_203;
  }

  if ((v3[114] * v3[115]) >> 64 != (v3[114] * v3[115]) >> 63)
  {
    goto LABEL_194;
  }

  v83 = v3[62];
  if (!v83)
  {
    goto LABEL_204;
  }

  if ((v3[72] * v3[73]) >> 64 != (v3[72] * v3[73]) >> 63)
  {
    goto LABEL_195;
  }

  v84 = v3[125];
  if (!v84)
  {
    goto LABEL_205;
  }

  if ((v3[135] * v3[136]) >> 64 != (v3[135] * v3[136]) >> 63)
  {
    goto LABEL_196;
  }

  memcpy(v79, v82, 4 * v80 * v81);
  v85 = v3[72];
  v86 = v3[73];
  if ((v85 * v86) >> 64 != (v85 * v86) >> 63)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  memcpy(v83, v84, 4 * v85 * v86);
  espresso_plan_execute_sync();
  v183 = v3[146];
  if (v183)
  {

    if ((v3[156] * v3[157]) >> 64 == (v3[156] * v3[157]) >> 63)
    {
      v87 = sub_1BB5B10CC(MEMORY[0x1E69E7CC0]);
      v88 = v3[157];
      if ((v88 & 0x8000000000000000) == 0)
      {
        v89 = v87;
        if (v88)
        {
          v90 = 0;
          v185 = v3[157];
          v187 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRowMap;
          v189 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections;
          while (1)
          {
            v91 = v3[156];
            v92 = v90 * v91;
            if ((v90 * v91) >> 64 != (v90 * v91) >> 63)
            {
              goto LABEL_180;
            }

            v93 = *(v3 + v189);
            if (v90 >= *(v93 + 16))
            {
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            v201 = *(v93 + 16 * v90 + 32);
            if ((v201 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_99:
            if (++v90 == v88)
            {
              goto LABEL_155;
            }
          }

          v14 = __OFADD__(v92, v91);
          v94 = v92 + v91;
          if (v14)
          {
            goto LABEL_182;
          }

          v95 = v94 - v92;
          if (v94 < v92)
          {
            goto LABEL_183;
          }

          v96 = MEMORY[0x1E69E7CC0];
          if (v94 != v92)
          {
            if (v95 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C018);
              v96 = swift_allocObject();
              v97 = _swift_stdlib_malloc_size(v96);
              v98 = v97 - 32;
              if (v97 < 32)
              {
                v98 = v97 - 29;
              }

              v96[2] = v95;
              v96[3] = 2 * (v98 >> 2);
            }

            v99 = v92 + v95;
            if (__OFADD__(v92, v95))
            {
              goto LABEL_186;
            }

            if (v99 < v92)
            {
              goto LABEL_187;
            }

            if (v99 == v92)
            {
              v100 = 0;
            }

            else
            {
              v100 = v95;
              memcpy(v96 + 4, (v183 + 4 * v92), 4 * v95);
            }

            if (v100 != v95)
            {
              goto LABEL_188;
            }
          }

          v192 = v90;
          v196 = v89;
          v101 = v96[2];
          if (v101)
          {
            v102 = 0;
            v103 = 0;
            v104 = (v96 + 4);
            v105 = -INFINITY;
            v106 = MEMORY[0x1E69E7CC8];
            do
            {
              if (v103 >= v96[2])
              {
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v109 = exp(-v104[v103]);
              v110 = swift_isUniquelyReferenced_nonNull_native();
              v112 = sub_1BB6A1004(v103);
              v113 = v106[2];
              v114 = (v111 & 1) == 0;
              v115 = v113 + v114;
              if (__OFADD__(v113, v114))
              {
                goto LABEL_177;
              }

              v116 = v111;
              if (v106[3] >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  sub_1BB5EB2DC();
                }
              }

              else
              {
                sub_1BB5E87CC(v115, v110);
                v117 = sub_1BB6A1004(v103);
                if ((v116 & 1) != (v118 & 1))
                {
                  goto LABEL_207;
                }

                v112 = v117;
              }

              v119 = 1.0 / (v109 + 1.0);
              if (v116)
              {
                *(v106[7] + 8 * v112) = v119;
              }

              else
              {
                v106[(v112 >> 6) + 8] |= 1 << v112;
                *(v106[6] + 8 * v112) = v103;
                *(v106[7] + 8 * v112) = v119;
                v120 = v106[2];
                v14 = __OFADD__(v120, 1);
                v121 = v120 + 1;
                if (v14)
                {
                  goto LABEL_178;
                }

                v106[2] = v121;
              }

              v107 = v104[v103];
              if (v105 < v107)
              {
                v102 = v103;
              }

              v108 = v103 + 1;
              if (v105 < v107)
              {
                v105 = v104[v103];
              }

              ++v103;
            }

            while (v101 != v108);
          }

          else
          {
            v102 = 0;
            v106 = MEMORY[0x1E69E7CC8];
          }

          v122 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v192;
          v123 = sub_1BB6A1004(v192);
          v125 = v196[2];
          v126 = (v124 & 1) == 0;
          v14 = __OFADD__(v125, v126);
          v127 = v125 + v126;
          v3 = v198;
          if (v14)
          {
            goto LABEL_184;
          }

          v128 = v124;
          if (v196[3] >= v127)
          {
            v130 = v187;
            v131 = v201;
            if ((v122 & 1) == 0)
            {
              v133 = v123;
              sub_1BB5EB428();
              v123 = v133;
              v131 = v201;
              v89 = v196;
              if (v128)
              {
                goto LABEL_141;
              }

              goto LABEL_143;
            }
          }

          else
          {
            sub_1BB5E8A30(v127, v122);
            v123 = sub_1BB6A1004(v192);
            v130 = v187;
            v131 = v201;
            if ((v128 & 1) != (v129 & 1))
            {
              goto LABEL_207;
            }
          }

          v89 = v196;
          if (v128)
          {
LABEL_141:
            v132 = (v89[7] + 24 * v123);
            *v132 = v131;
            v132[1] = v102;
            v132[2] = v106;

            goto LABEL_145;
          }

LABEL_143:
          v89[(v123 >> 6) + 8] |= 1 << v123;
          *(v89[6] + 8 * v123) = v192;
          v134 = (v89[7] + 24 * v123);
          *v134 = v131;
          v134[1] = v102;
          v134[2] = v106;
          v135 = v89[2];
          v14 = __OFADD__(v135, 1);
          v136 = v135 + 1;
          if (v14)
          {
            goto LABEL_189;
          }

          v89[2] = v136;
LABEL_145:
          v137 = swift_isUniquelyReferenced_nonNull_native();
          v138 = *&v130[v198];
          *&v130[v198] = 0x8000000000000000;
          v139 = sub_1BB6A1004(v131);
          v141 = v138[2];
          v142 = (v140 & 1) == 0;
          v14 = __OFADD__(v141, v142);
          v143 = v141 + v142;
          v88 = v185;
          if (v14)
          {
            goto LABEL_185;
          }

          v144 = v140;
          if (v138[3] >= v143)
          {
            if ((v137 & 1) == 0)
            {
              v149 = v139;
              sub_1BB5EB190();
              v139 = v149;
              v131 = v201;
              v146 = v138;
              if ((v144 & 1) == 0)
              {
                goto LABEL_151;
              }

              goto LABEL_97;
            }
          }

          else
          {
            sub_1BB5E8568(v143, v137);
            v139 = sub_1BB6A1004(v131);
            if ((v144 & 1) != (v145 & 1))
            {
              goto LABEL_207;
            }
          }

          v146 = v138;
          if ((v144 & 1) == 0)
          {
LABEL_151:
            v146[(v139 >> 6) + 8] |= 1 << v139;
            *(v146[6] + 8 * v139) = v131;
            *(v146[7] + 8 * v139) = v192;
            v147 = v146[2];
            v14 = __OFADD__(v147, 1);
            v148 = v147 + 1;
            if (v14)
            {
              goto LABEL_190;
            }

            v146[2] = v148;
            goto LABEL_98;
          }

LABEL_97:
          *(v146[7] + 8 * v139) = v192;
LABEL_98:
          *&v130[v198] = v146;

          goto LABEL_99;
        }

LABEL_155:
        v150 = v89 + 8;
        v151 = 1 << *(v89 + 32);
        v152 = -1;
        if (v151 < 64)
        {
          v152 = ~(-1 << v151);
        }

        v153 = v152 & v89[8];
        v202 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRankMap;
        v154 = (v151 + 63) >> 6;
        v197 = v89;

        v155 = 0;
        while (1)
        {
          if (!v153)
          {
            while (1)
            {
              v157 = v155 + 1;
              if (__OFADD__(v155, 1))
              {
                break;
              }

              if (v157 >= v154)
              {

                return v197;
              }

              v153 = v150[v157];
              ++v155;
              if (v153)
              {
                v155 = v157;
                goto LABEL_165;
              }
            }

LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
            goto LABEL_181;
          }

LABEL_165:
          v158 = (v197[7] + 24 * (__clz(__rbit64(v153)) | (v155 << 6)));
          v159 = *v158;
          v193 = v158[1];
          v160 = v158[2];
          swift_bridgeObjectRetain_n();
          v161 = swift_isUniquelyReferenced_nonNull_native();
          v162 = *(v198 + v202);
          *(v198 + v202) = 0x8000000000000000;
          v163 = sub_1BB6A1004(v159);
          v165 = v162[2];
          v166 = (v164 & 1) == 0;
          v14 = __OFADD__(v165, v166);
          v167 = v165 + v166;
          if (v14)
          {
            goto LABEL_191;
          }

          v168 = v164;
          if (v162[3] < v167)
          {
            break;
          }

          if (v161)
          {
            goto LABEL_170;
          }

          v174 = v163;
          sub_1BB5EB428();
          v163 = v174;
          v170 = v162;
          if (v168)
          {
LABEL_158:
            v156 = (v170[7] + 24 * v163);
            *v156 = v159;
            v156[1] = v193;
            v156[2] = v160;

            goto LABEL_159;
          }

LABEL_171:
          v170[(v163 >> 6) + 8] |= 1 << v163;
          *(v170[6] + 8 * v163) = v159;
          v171 = (v170[7] + 24 * v163);
          *v171 = v159;
          v171[1] = v193;
          v171[2] = v160;

          v172 = v170[2];
          v14 = __OFADD__(v172, 1);
          v173 = v172 + 1;
          if (v14)
          {
            goto LABEL_192;
          }

          v170[2] = v173;
LABEL_159:
          v153 &= v153 - 1;
          *(v198 + v202) = v170;
        }

        sub_1BB5E8A30(v167, v161);
        v163 = sub_1BB6A1004(v159);
        if ((v168 & 1) != (v169 & 1))
        {
          goto LABEL_207;
        }

LABEL_170:
        v170 = v162;
        if (v168)
        {
          goto LABEL_158;
        }

        goto LABEL_171;
      }

      goto LABEL_199;
    }

LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
  }

  __break(1u);
LABEL_207:
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t sub_1BB5E4514(uint64_t a1, char a2, double a3)
{
  v6 = v3;
  v194 = v6;
  if ((a2 & 1) == 0)
  {
    v17 = sub_1BB5B10CC(MEMORY[0x1E69E7CC0]);
    v4 = *(a1 + 24);
    if (!(v4 >> 62))
    {
      v187 = (v4 & 0xFFFFFFFFFFFFFF8);
      v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
      v191 = v17;
      v183 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRankMap;
      v179 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRowMap;

      if (!v26)
      {
LABEL_57:

        return v191;
      }

      v27 = 0;
      while (1)
      {
        v28 = v27;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1BFB111F0](v28, v4);
            v29 = v17;
            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v28 >= v187[2])
            {
              goto LABEL_74;
            }

            v29 = *(v4 + 8 * v28 + 32);

            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }
          }

          if (*(v29 + 64))
          {
            goto LABEL_230;
          }

          v30 = *(v194 + v183);
          if (*(v30 + 16))
          {
            v31 = *(v29 + 56);
            v32 = sub_1BB6A1004(v31);
            if (v33)
            {
              v34 = *(v194 + v179);
              if (*(v34 + 16))
              {
                v35 = (*(v30 + 56) + 24 * v32);
                v36 = v35[1];
                v177 = v35[2];
                v37 = *v35;
                v38 = sub_1BB6A1004(v31);
                if (v39)
                {
                  break;
                }
              }
            }
          }

          ++v28;
          if (v27 == v26)
          {
            goto LABEL_57;
          }
        }

        v40 = *(*(v34 + 56) + 8 * v38);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = sub_1BB6A1004(v40);
        v44 = v191[2];
        v45 = (v43 & 1) == 0;
        v18 = __OFADD__(v44, v45);
        v46 = v44 + v45;
        if (v18)
        {
          goto LABEL_220;
        }

        v47 = v43;
        if (v191[3] >= v46)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = v42;
            sub_1BB5EB428();
            v42 = v53;
          }
        }

        else
        {
          sub_1BB5E8A30(v46, isUniquelyReferenced_nonNull_native);
          v42 = sub_1BB6A1004(v40);
          if ((v47 & 1) != (v48 & 1))
          {
            goto LABEL_229;
          }
        }

        if (v47)
        {
          v49 = (v191[7] + 24 * v42);
          *v49 = v37;
          v49[1] = v36;
          v49[2] = v177;

          if (v27 != v26)
          {
            continue;
          }

          goto LABEL_57;
        }

        v191[(v42 >> 6) + 8] |= 1 << v42;
        *(v191[6] + 8 * v42) = v40;
        v50 = (v191[7] + 24 * v42);
        *v50 = v37;
        v50[1] = v36;
        v50[2] = v177;

        v51 = v191[2];
        v18 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v18)
        {
          goto LABEL_221;
        }

        v191[2] = v52;
        if (v27 == v26)
        {
          goto LABEL_57;
        }
      }
    }

LABEL_77:
    v65 = v17;
    v187 = (v4 & 0xFFFFFFFFFFFFFF8);
    v26 = sub_1BB6BB564();
    v17 = v65;
    goto LABEL_30;
  }

  v190 = v6[20];
  if (!v190)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v9 = v6[30];
  v8 = v6[31];
  v10 = v9 * v8;
  v182 = v9;
  if ((v9 * v8) >> 64 != (v9 * v8) >> 63)
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v186 = v6[83];
  if (!v186)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  if (v10 < 0)
  {
    goto LABEL_79;
  }

  v5 = a3;
  if (v10)
  {
    bzero(v190, 4 * v10);
  }

  v11 = v6[94];
  if (v11 < 0)
  {
    goto LABEL_80;
  }

  if (v11)
  {
    bzero(v186, 4 * v11);
  }

  v195 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 24);
  if (v4 >> 62)
  {
LABEL_81:
    v12 = sub_1BB6BB564();
    v13 = &qword_1EBC5C000;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_82:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_83;
  }

  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = &qword_1EBC5C000;
  if (!v12)
  {
    goto LABEL_82;
  }

LABEL_13:
  v14 = v13[353];
  if ((v4 & 0xC000000000000001) != 0)
  {

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = MEMORY[0x1BFB111F0](v15, v4);
      v18 = __OFADD__(v15++, 1);
      if (v18)
      {
        break;
      }

      v19 = *(v6 + v14);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = (v19 + 32);
        while (1)
        {
          v23 = *v22;
          v22 += 2;
          v24 = *(v17 + 56) == v23 ? *(v17 + 64) : 1;
          if ((v24 & 1) == 0)
          {
            break;
          }

          if (v20 == ++v21)
          {
            goto LABEL_24;
          }
        }

        sub_1BB5ECCC0(v17, v21, v190, v186, v182);
        swift_unknownObjectRelease();
        if (v15 == v12)
        {
          goto LABEL_72;
        }
      }

      else
      {
LABEL_24:
        v25 = swift_unknownObjectRetain();
        MEMORY[0x1BFB10C80](v25);
        if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();
        swift_unknownObjectRelease();
        v16 = v195;
        if (v15 == v12)
        {
          goto LABEL_72;
        }
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v55 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v55 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_76;
    }

    v57 = *(v4 + 32 + 8 * v55);
    v58 = *(v6 + v14);
    v59 = *(v58 + 16);
    if (v59)
    {
      v60 = 0;
      v61 = (v58 + 32);
      while (1)
      {
        v62 = *v61;
        v61 += 2;
        v63 = *(v57 + 56) == v62 ? *(v57 + 64) : 1;
        if ((v63 & 1) == 0)
        {
          break;
        }

        if (v59 == ++v60)
        {
          goto LABEL_69;
        }
      }

      sub_1BB5ECCC0(v56, v60, v190, v186, v182);
    }

    else
    {
LABEL_69:
      v64 = swift_retain_n();
      MEMORY[0x1BFB10C80](v64);
      if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
        v6 = v194;
      }

      sub_1BB6BAEB4();

      v16 = v195;
    }

    ++v55;
  }

  while (v55 != v12);
LABEL_72:

LABEL_83:
  sub_1BB5E5494(1.0, v5);
  if (v16 >> 62)
  {
    goto LABEL_101;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BB6BB564())
  {
    v67 = 0;
    v68 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_unusedIndexes;
    while ((v16 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x1BFB111F0](v67, v16);
      v18 = __OFADD__(v67++, 1);
      if (v18)
      {
        goto LABEL_99;
      }

LABEL_93:
      v70 = 0;
      v71 = *(v194 + v68);
      v72 = 1 << *(v71 + 32);
      v73 = (v72 + 63) >> 6;
      v74 = 56;
      while (1)
      {
        v75 = *(v71 + v74);
        if (v75)
        {
          break;
        }

        v70 -= 64;
        v74 += 8;
        if (!--v73)
        {
          goto LABEL_86;
        }
      }

      v76 = __clz(__rbit64(v75));
      if (v76 - v72 != v70)
      {
        v77 = sub_1BB5EC198(v76 - v70, *(v71 + 36), 0, v71);
        sub_1BB5ECCC0(v69, v77, v190, v186, v182);
        sub_1BB5EBC18(v77);
      }

LABEL_86:

      if (v67 == i)
      {
        goto LABEL_102;
      }
    }

    if (v67 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_100;
    }

    v69 = *(v16 + 32 + 8 * v67);

    v18 = __OFADD__(v67++, 1);
    if (!v18)
    {
      goto LABEL_93;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    ;
  }

LABEL_102:
  v78 = v194;
  v79 = v194[41];
  if (v79)
  {
    v80 = v194[51];
    v81 = v194[52];
    if ((v80 * v81) >> 64 != (v80 * v81) >> 63)
    {
      goto LABEL_213;
    }

    v82 = v194[104];
    if (!v82)
    {
      goto LABEL_225;
    }

    if ((v194[114] * v194[115]) >> 64 != (v194[114] * v194[115]) >> 63)
    {
      goto LABEL_214;
    }

    v83 = v194[62];
    if (!v83)
    {
      goto LABEL_226;
    }

    if ((v194[72] * v194[73]) >> 64 != (v194[72] * v194[73]) >> 63)
    {
      goto LABEL_215;
    }

    v84 = v194[125];
    if (!v84)
    {
      goto LABEL_227;
    }

    if ((v194[135] * v194[136]) >> 64 != (v194[135] * v194[136]) >> 63)
    {
      goto LABEL_216;
    }

    memcpy(v79, v82, 4 * v80 * v81);
    v85 = v194[72];
    v86 = v194[73];
    if ((v85 * v86) >> 64 == (v85 * v86) >> 63)
    {
      memcpy(v83, v84, 4 * v85 * v86);
      espresso_plan_execute_sync();
      v176 = v194[146];
      if (!v176)
      {
        goto LABEL_228;
      }

      if ((v194[156] * v194[157]) >> 64 == (v194[156] * v194[157]) >> 63)
      {
        v87 = sub_1BB5B10CC(MEMORY[0x1E69E7CC0]);
        v88 = v194[157];
        if ((v88 & 0x8000000000000000) == 0)
        {
          v89 = v87;
          if (v88)
          {
            v90 = 0;
            v180 = v194[157];
            v181 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections;
            v178 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRowMap;
            while (1)
            {
              v91 = v78[156];
              v92 = v90 * v91;
              if ((v90 * v91) >> 64 != (v90 * v91) >> 63)
              {
                goto LABEL_200;
              }

              v93 = *(v78 + v181);
              if (v90 >= *(v93 + 16))
              {
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
LABEL_214:
                __break(1u);
LABEL_215:
                __break(1u);
LABEL_216:
                __break(1u);
                goto LABEL_217;
              }

              v188 = *(v93 + 16 * v90 + 32);
              if ((v188 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_118:
              if (++v90 == v88)
              {
                goto LABEL_174;
              }
            }

            v18 = __OFADD__(v92, v91);
            v94 = v92 + v91;
            if (v18)
            {
              goto LABEL_202;
            }

            v95 = v94 - v92;
            if (v94 < v92)
            {
              goto LABEL_203;
            }

            v192 = v89;
            v96 = MEMORY[0x1E69E7CC0];
            if (v94 != v92)
            {
              if (v95 >= 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C018);
                v96 = swift_allocObject();
                v97 = _swift_stdlib_malloc_size(v96);
                v98 = v97 - 32;
                if (v97 < 32)
                {
                  v98 = v97 - 29;
                }

                v96[2] = v95;
                v96[3] = 2 * (v98 >> 2);
              }

              v99 = v92 + v95;
              if (__OFADD__(v92, v95))
              {
                goto LABEL_206;
              }

              if (v99 < v92)
              {
                goto LABEL_207;
              }

              if (v99 == v92)
              {
                v100 = 0;
              }

              else
              {
                v100 = v95;
                memcpy(v96 + 4, (v176 + 4 * v92), 4 * v95);
              }

              if (v100 != v95)
              {
                goto LABEL_208;
              }
            }

            v184 = v90;
            v101 = v96[2];
            if (v101)
            {
              v102 = 0;
              v103 = 0;
              v104 = (v96 + 4);
              v105 = -INFINITY;
              v106 = MEMORY[0x1E69E7CC8];
              do
              {
                if (v103 >= v96[2])
                {
                  __break(1u);
LABEL_197:
                  __break(1u);
LABEL_198:
                  __break(1u);
                  goto LABEL_199;
                }

                v109 = exp(-v104[v103]);
                v110 = swift_isUniquelyReferenced_nonNull_native();
                v112 = sub_1BB6A1004(v103);
                v113 = v106[2];
                v114 = (v111 & 1) == 0;
                v115 = v113 + v114;
                if (__OFADD__(v113, v114))
                {
                  goto LABEL_197;
                }

                v116 = v111;
                if (v106[3] >= v115)
                {
                  if ((v110 & 1) == 0)
                  {
                    sub_1BB5EB2DC();
                  }
                }

                else
                {
                  sub_1BB5E87CC(v115, v110);
                  v117 = sub_1BB6A1004(v103);
                  if ((v116 & 1) != (v118 & 1))
                  {
                    goto LABEL_229;
                  }

                  v112 = v117;
                }

                v119 = 1.0 / (v109 + 1.0);
                if (v116)
                {
                  *(v106[7] + 8 * v112) = v119;
                }

                else
                {
                  v106[(v112 >> 6) + 8] |= 1 << v112;
                  *(v106[6] + 8 * v112) = v103;
                  *(v106[7] + 8 * v112) = v119;
                  v120 = v106[2];
                  v18 = __OFADD__(v120, 1);
                  v121 = v120 + 1;
                  if (v18)
                  {
                    goto LABEL_198;
                  }

                  v106[2] = v121;
                }

                v107 = v104[v103];
                if (v105 < v107)
                {
                  v102 = v103;
                }

                v108 = v103 + 1;
                if (v105 < v107)
                {
                  v105 = v104[v103];
                }

                ++v103;
              }

              while (v101 != v108);
            }

            else
            {
              v102 = 0;
              v106 = MEMORY[0x1E69E7CC8];
            }

            v122 = swift_isUniquelyReferenced_nonNull_native();
            v90 = v184;
            v123 = sub_1BB6A1004(v184);
            v125 = v192[2];
            v126 = (v124 & 1) == 0;
            v18 = __OFADD__(v125, v126);
            v127 = v125 + v126;
            v78 = v194;
            if (v18)
            {
              goto LABEL_204;
            }

            v128 = v124;
            if (v192[3] >= v127)
            {
              v130 = v188;
              if ((v122 & 1) == 0)
              {
                v132 = v123;
                sub_1BB5EB428();
                v123 = v132;
                v130 = v188;
                v89 = v192;
                if (v128)
                {
                  goto LABEL_160;
                }

                goto LABEL_162;
              }
            }

            else
            {
              sub_1BB5E8A30(v127, v122);
              v123 = sub_1BB6A1004(v184);
              v130 = v188;
              if ((v128 & 1) != (v129 & 1))
              {
                goto LABEL_229;
              }
            }

            v89 = v192;
            if (v128)
            {
LABEL_160:
              v131 = (v89[7] + 24 * v123);
              *v131 = v130;
              v131[1] = v102;
              v131[2] = v106;

              goto LABEL_164;
            }

LABEL_162:
            v89[(v123 >> 6) + 8] |= 1 << v123;
            *(v89[6] + 8 * v123) = v184;
            v133 = (v89[7] + 24 * v123);
            *v133 = v130;
            v133[1] = v102;
            v133[2] = v106;
            v134 = v89[2];
            v18 = __OFADD__(v134, 1);
            v135 = v134 + 1;
            if (v18)
            {
              goto LABEL_209;
            }

            v89[2] = v135;
LABEL_164:
            v136 = swift_isUniquelyReferenced_nonNull_native();
            v137 = *(v194 + v178);
            *(v194 + v178) = 0x8000000000000000;
            v138 = sub_1BB6A1004(v130);
            v140 = v137[2];
            v141 = (v139 & 1) == 0;
            v18 = __OFADD__(v140, v141);
            v142 = v140 + v141;
            v88 = v180;
            if (v18)
            {
              goto LABEL_205;
            }

            v143 = v139;
            if (v137[3] >= v142)
            {
              if ((v136 & 1) == 0)
              {
                v148 = v138;
                sub_1BB5EB190();
                v138 = v148;
                v130 = v188;
                v145 = v137;
                if ((v143 & 1) == 0)
                {
                  goto LABEL_170;
                }

                goto LABEL_116;
              }
            }

            else
            {
              sub_1BB5E8568(v142, v136);
              v138 = sub_1BB6A1004(v130);
              if ((v143 & 1) != (v144 & 1))
              {
                goto LABEL_229;
              }
            }

            v145 = v137;
            if ((v143 & 1) == 0)
            {
LABEL_170:
              v145[(v138 >> 6) + 8] |= 1 << v138;
              *(v145[6] + 8 * v138) = v130;
              *(v145[7] + 8 * v138) = v184;
              v146 = v145[2];
              v18 = __OFADD__(v146, 1);
              v147 = v146 + 1;
              if (v18)
              {
                goto LABEL_210;
              }

              v145[2] = v147;
              goto LABEL_117;
            }

LABEL_116:
            *(v145[7] + 8 * v138) = v184;
LABEL_117:
            *(v194 + v178) = v145;

            goto LABEL_118;
          }

LABEL_174:
          v149 = v89 + 8;
          v150 = 1 << *(v89 + 32);
          v151 = -1;
          if (v150 < 64)
          {
            v151 = ~(-1 << v150);
          }

          v152 = v89;
          v153 = v151 & v89[8];
          v189 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_trackerIdRankMap;
          v193 = v152;
          v154 = (v150 + 63) >> 6;

          v155 = 0;
          while (1)
          {
            if (!v153)
            {
              while (1)
              {
                v157 = v155 + 1;
                if (__OFADD__(v155, 1))
                {
                  break;
                }

                if (v157 >= v154)
                {
                  v54 = v193;

                  return v54;
                }

                v153 = v149[v157];
                ++v155;
                if (v153)
                {
                  v155 = v157;
                  goto LABEL_184;
                }
              }

LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
              goto LABEL_201;
            }

LABEL_184:
            v158 = (v193[7] + 24 * (__clz(__rbit64(v153)) | (v155 << 6)));
            v159 = *v158;
            v185 = v158[1];
            v160 = v158[2];
            swift_bridgeObjectRetain_n();
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v162 = *&v189[v194];
            *&v189[v194] = 0x8000000000000000;
            v163 = sub_1BB6A1004(v159);
            v165 = v162[2];
            v166 = (v164 & 1) == 0;
            v18 = __OFADD__(v165, v166);
            v167 = v165 + v166;
            if (v18)
            {
              goto LABEL_211;
            }

            v168 = v164;
            if (v162[3] < v167)
            {
              break;
            }

            if (v161)
            {
              goto LABEL_189;
            }

            v174 = v163;
            sub_1BB5EB428();
            v163 = v174;
            v170 = v162;
            if (v168)
            {
LABEL_177:
              v156 = (v170[7] + 24 * v163);
              *v156 = v159;
              v156[1] = v185;
              v156[2] = v160;

              goto LABEL_178;
            }

LABEL_190:
            v170[(v163 >> 6) + 8] |= 1 << v163;
            *(v170[6] + 8 * v163) = v159;
            v171 = (v170[7] + 24 * v163);
            *v171 = v159;
            v171[1] = v185;
            v171[2] = v160;

            v172 = v170[2];
            v18 = __OFADD__(v172, 1);
            v173 = v172 + 1;
            if (v18)
            {
              goto LABEL_212;
            }

            v170[2] = v173;
LABEL_178:
            v153 &= v153 - 1;
            *&v189[v194] = v170;
          }

          sub_1BB5E8A30(v167, v161);
          v163 = sub_1BB6A1004(v159);
          if ((v168 & 1) != (v169 & 1))
          {
            goto LABEL_229;
          }

LABEL_189:
          v170 = v162;
          if (v168)
          {
            goto LABEL_177;
          }

          goto LABEL_190;
        }

LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }
    }

    else
    {
LABEL_217:
      __break(1u);
    }

    __break(1u);
    goto LABEL_219;
  }

LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  sub_1BB6BB874();
  __break(1u);
LABEL_230:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

void sub_1BB5E5494(double a1, double a2)
{
  v3 = v2[104];
  if (!v3)
  {
    goto LABEL_35;
  }

  v4 = v2;
  if ((v2[114] * v2[115]) >> 64 != (v2[114] * v2[115]) >> 63)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v5 = v2[125];
  if (!v5)
  {
LABEL_36:
    __break(1u);
    return;
  }

  if ((v2[135] * v2[136]) >> 64 != (v2[135] * v2[136]) >> 63)
  {
    goto LABEL_34;
  }

  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections;
  v7 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKISSModel_networkDetections);
  v8 = *(v7 + 16);
  if (v8)
  {

    v11 = 0;
    for (i = 0; i != v8; ++i)
    {
      if (i >= *(v7 + 16))
      {
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
        goto LABEL_33;
      }

      if (vabdd_f64(*(v7 + v11 + 40), a2) > a1)
      {
        sub_1BB5ACCEC(&v18, i);
        v14 = v4[135];
        if ((i * v14) >> 64 != (i * v14) >> 63)
        {
          goto LABEL_28;
        }

        if (v14 < 0)
        {
          goto LABEL_29;
        }

        if (v14)
        {
          bzero((v5 + 4 * i * v14), 4 * v14);
        }

        v15 = v4[114];
        if ((i * v15) >> 64 != (i * v15) >> 63)
        {
          goto LABEL_30;
        }

        if (v15 < 0)
        {
          goto LABEL_31;
        }

        if (v15)
        {
          bzero((v3 + 4 * i * v15), 4 * v15);
        }

        v16 = *(v4 + v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + v6) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_1BB6B0FE8(v16);
        }

        if (i >= *(v16 + 2))
        {
          goto LABEL_32;
        }

        v13 = &v16[v11];
        *(v13 + 4) = -1;
        *(v13 + 5) = 0;
        *(v4 + v6) = v16;
      }

      v11 += 16;
    }
  }
}

void sub_1BB5E5690(uint64_t a1)
{
  v2 = v1[104];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v1[114];
  if ((v3 * v1[115]) >> 64 != (v3 * v1[115]) >> 63)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v1[125];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if ((v1[135] * v1[136]) >> 64 != (v1[135] * v1[136]) >> 63)
  {
    goto LABEL_13;
  }

  v5 = a1 * v3;
  if ((a1 * v3) >> 64 != (a1 * v3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = 4 * v5;
    v7 = 4 * v3;
    bzero((v4 + 4 * v5), 4 * v3);

    bzero((v2 + v6), v7);
  }
}

char *sub_1BB5E5760(char *a1, int64_t a2, char a3)
{
  result = sub_1BB6925EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E5780(char *a1, int64_t a2, char a3)
{
  result = sub_1BB6926F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BB5E57A0(void *a1, int64_t a2, char a3)
{
  result = sub_1BB692810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BB5E57C0(void *a1, int64_t a2, char a3)
{
  result = sub_1BB692834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BB5E57E0(void *a1, int64_t a2, char a3)
{
  result = sub_1BB692858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BB5E5800(void *a1, int64_t a2, char a3)
{
  result = sub_1BB69287C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BB5E5820(size_t a1, int64_t a2, char a3)
{
  result = sub_1BB6928A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BB5E5840(size_t a1, int64_t a2, char a3)
{
  result = sub_1BB6928C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BB5E5860(size_t a1, int64_t a2, char a3)
{
  result = sub_1BB6928EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BB5E5880(size_t a1, int64_t a2, char a3)
{
  result = sub_1BB692914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BB5E58A0(void *a1, int64_t a2, char a3)
{
  result = sub_1BB69293C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E58C0(char *a1, int64_t a2, char a3)
{
  result = sub_1BB692BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E58E0(char *a1, int64_t a2, char a3)
{
  result = sub_1BB692CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BB5E5900(void *a1, int64_t a2, char a3)
{
  result = sub_1BB692DE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E5920(char *a1, int64_t a2, char a3)
{
  result = sub_1BB692F14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E5940(char *a1, int64_t a2, char a3)
{
  result = sub_1BB693024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E5960(char *a1, int64_t a2, char a3)
{
  result = sub_1BB693128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BB5E5980(size_t a1, int64_t a2, char a3)
{
  result = sub_1BB693244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BB5E59A0(void *a1, int64_t a2, char a3)
{
  result = sub_1BB693450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E59C0(char *a1, int64_t a2, char a3)
{
  result = sub_1BB6935BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BB5E59E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BB6936C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BB5E5A00(char *a1, int64_t a2, char a3)
{
  result = sub_1BB6936E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BB5E5A34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBE0);
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v35 = v3;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v37 = *(v22 + 24);
      v23 = *(v22 + 16);
      v24 = *(v22 + 8);
      v25 = *v22;
      result = sub_1BB6BB914();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v37;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E5CF0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_1BB6BB584();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v21);
      result = sub_1BB6BB964();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1BB5E5FB4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1BB6BB584();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = a2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v6 + 48) + v21);
      v23 = (*(v6 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v22);
      result = sub_1BB6BB964();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v25;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_31;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_31:
  *v4 = v8;
  return result;
}

uint64_t sub_1BB5E624C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2C8);
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1BB6BB914();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E64E4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for DKPersonGroup(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBD0);
  v37 = a2;
  result = sub_1BB6BB584();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1BB5EEE5C(v25, v7, type metadata accessor for DKPersonGroup);
      }

      else
      {
        sub_1BB5EEDF4(v25, v7, type metadata accessor for DKPersonGroup);
      }

      result = sub_1BB6BB914();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1BB5EEE5C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for DKPersonGroup);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1BB5E68A4(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v56 = a6;
  v8 = v6;
  v10 = a3(0);
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v45 - v11;
  v12 = sub_1BB6BA844();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v50 = a2;
  v16 = v15;
  result = sub_1BB6BB584();
  v18 = result;
  if (*(v15 + 16))
  {
    v54 = v12;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = v6;
    v46 = (v13 + 16);
    v47 = v15;
    v48 = v13;
    v52 = (v13 + 32);
    v25 = result + 64;
    v26 = v51;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v53 = *(v48 + 72);
      v33 = v32 + v53 * v31;
      if (v50)
      {
        (*v52)(v26, v33, v54);
        v34 = *(v16 + 56);
        v35 = *(v49 + 72);
        sub_1BB5EEE5C(v34 + v35 * v31, v55, v56);
      }

      else
      {
        (*v46)(v26, v33, v54);
        v36 = *(v16 + 56);
        v35 = *(v49 + 72);
        sub_1BB5EEDF4(v36 + v35 * v31, v55, v56);
      }

      sub_1BB5EEEC4(&qword_1EBC5C288, 255, MEMORY[0x1E69695A8]);
      result = sub_1BB6BAB74();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v26 = v51;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v27 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v26 = v51;
LABEL_7:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v52)((*(v18 + 48) + v53 * v27), v26, v54);
      result = sub_1BB5EEE5C(v55, *(v18 + 56) + v35 * v27, v56);
      ++*(v18 + 16);
      v16 = v47;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v16 + 32);
    v8 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v8 = v18;
  return result;
}

uint64_t sub_1BB5E6D1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBB8);
  v30 = a2;
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1BB6BB924();
      sub_1BB5EC1E8(v31, v20);
      result = sub_1BB6BB964();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E6FDC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_1BB6BB584();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v21);
      result = sub_1BB6BB964();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1BB5E7264(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C260);
  v39 = a2;
  result = sub_1BB6BB584();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1BB5EEEC4(&qword_1EBC5C288, 255, MEMORY[0x1E69695A8]);
      result = sub_1BB6BAB74();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1BB5E766C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1BB6BB584();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = a2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v21);
      result = sub_1BB6BB964();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_31;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_31:
  *v4 = v8;
  return result;
}

uint64_t sub_1BB5E78E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2E0);
  v35 = a2;
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1BB6BB924();
      sub_1BB6BACC4();
      result = sub_1BB6BB964();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E7B8C(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_1BB6BA7F4();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBA0);
  v37 = a2;
  result = sub_1BB6BB584();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_1BB6BB914();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1BB5E7ED8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CB98);
  v38 = a2;
  result = sub_1BB6BB584();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_1BB593648((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_1BB5BA078(*(v9 + 56) + 40 * v23, v43);
      }

      sub_1BB5EEEC4(&qword_1EBC5C288, 255, MEMORY[0x1E69695A8]);
      result = sub_1BB6BAB74();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_1BB593648(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1BB5E82C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBA8);
  v36 = a2;
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[2];
      v25 = v22[3];
      if ((v36 & 1) == 0)
      {
      }

      result = sub_1BB6BB914();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v24;
      v16[3] = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E8568(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C208);
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1BB6BB914();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E87CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C200);
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1BB6BB914();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E8A30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2B0);
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v33 = *v22;
      v23 = *(v22 + 16);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1BB6BB914();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v33;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E8CC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBB0);
  result = sub_1BB6BB584();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1BB6BB914();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BB5E8F30(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2A8);
  v40 = a2;
  result = sub_1BB6BB584();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1BB5EEEC4(&qword_1EBC5C288, 255, MEMORY[0x1E69695A8]);
      result = sub_1BB6BAB74();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_1BB5E92F4(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6 & 1;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_1BB5E9350(unint64_t result, char a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  v5 = (a3[7] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_1BB5E9398(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1BB5E9438(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1BB6BA844();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1BB5EEE5C(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_1BB5E952C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1BB5E9570(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1BB5E95B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BB6BA7F4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1BB5E9664(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BB6BA844();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1BB5E9730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBE0);
  v2 = *v0;
  v3 = sub_1BB6BB574();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 24);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 32 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BB5E98C8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BB5E9A50(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 16 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 16 * v15);
      *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BB5E9BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2C8);
  v2 = *v0;
  v3 = sub_1BB6BB574();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BB5E9D28()
{
  v1 = v0;
  v2 = type metadata accessor for DKPersonGroup(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBD0);
  v4 = *v0;
  v5 = sub_1BB6BB574();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1BB5EEDF4(*(v4 + 56) + v23, v26, type metadata accessor for DKPersonGroup);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_1BB5EEE5C(v22, *(v24 + 56) + v23, type metadata accessor for DKPersonGroup);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1BB5E9FD8(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v46 = a4;
  v6 = v4;
  v7 = a1(0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v36 - v8;
  v43 = sub_1BB6BA844();
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v10 = *v4;
  v11 = sub_1BB6BB574();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v47 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = v47;
    v39 = v48 + 32;
    v40 = v48 + 16;
    v41 = v10;
    v23 = v48;
    v24 = v46;
    if (v20)
    {
      do
      {
        v25 = __clz(__rbit64(v20));
        v49 = (v20 - 1) & v20;
LABEL_14:
        v28 = v25 | (v16 << 6);
        v29 = *(v23 + 72) * v28;
        v31 = v42;
        v30 = v43;
        (*(v23 + 16))(v42, *(v10 + 48) + v29, v43);
        v32 = *(v10 + 56);
        v33 = v44;
        v34 = *(v45 + 72) * v28;
        sub_1BB5EEDF4(v32 + v34, v44, v24);
        (*(v23 + 32))(*(v22 + 48) + v29, v31, v30);
        v35 = v33;
        v10 = v41;
        result = sub_1BB5EEE5C(v35, *(v22 + 56) + v34, v24);
        v20 = v49;
      }

      while (v49);
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v37;
        v12 = v47;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v16);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v49 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v12;
  }

  return result;
}

void *sub_1BB5EA2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBB8);
  v2 = *v0;
  v3 = sub_1BB6BB574();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BB5EA47C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

char *sub_1BB5EA5C8()
{
  v1 = v0;
  v33 = sub_1BB6BA844();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C260);
  v3 = *v0;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BB5EA870(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BB6BB574();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 8 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}