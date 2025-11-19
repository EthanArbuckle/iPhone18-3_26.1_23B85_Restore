uint64_t sub_1CAC4AD88(void *a1, void *a2, uint64_t a3)
{
  v33[3] = type metadata accessor for EventCalendarModelObject();
  v33[4] = sub_1CAC4E334(&qword_1EC4655C8, type metadata accessor for EventCalendarModelObject);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_1CAC4C5E8(a3, boxed_opaque_existential_1, type metadata accessor for EventCalendarModelObject);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if ((*(v8 + 416))(v7, v8))
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C40);
    v9 = sub_1CAD4E784();

    v10 = *(v9 + 16);

    if (v10)
    {
      v11 = a1[3];
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v11);
      if (EventModel.currentUserMayActAsOrganizer.getter(v11, v12))
      {
        v13 = a1[3];
        v14 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v13);
        if (!sub_1CAC45614(v13, v14))
        {
          v17 = a2[3];
          v18 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v17);
          if ((*(v18 + 48))(v17, v18) == 2 || boxed_opaque_existential_1[2] != 2)
          {
            v19 = a2[3];
            v20 = a2[4];
            __swift_project_boxed_opaque_existential_1(a2, v19);
            if ((*(v20 + 96))(v19, v20) != 2 || boxed_opaque_existential_1[12] == 2 || (v21 = a1[3], v22 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v21), !EventModel.isCurrentUserInvitedAttendee.getter(v21, v22)))
            {
              v23 = a2[3];
              v24 = a2[4];
              __swift_project_boxed_opaque_existential_1(a2, v23);
              if (!EventCalendarModel.isSharedToMe.getter(v23, v24) && boxed_opaque_existential_1[12] != 2)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1CAD5A0D0;
                sub_1CAB299C0(a2, inited + 32);
                sub_1CAB299C0(v33, inited + 72);
                v30 = sub_1CAC4CC78(inited);
                goto LABEL_20;
              }

              v25 = a2[3];
              v26 = a2[4];
              __swift_project_boxed_opaque_existential_1(a2, v25);
              if (EventCalendarModel.isSharedToMe.getter(v25, v26))
              {
                v27 = a2[3];
                v28 = a2[4];
                __swift_project_boxed_opaque_existential_1(a2, v27);
                if (((*(v28 + 160))(v27, v28) & 1) == 0 && boxed_opaque_existential_1[12] == 2 && (boxed_opaque_existential_1[31] & 1) == 0)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D0);
                  v29 = swift_initStackObject();
                  *(v29 + 16) = xmmword_1CAD5A0D0;
                  sub_1CAB299C0(a2, v29 + 32);
                  sub_1CAB299C0(v33, v29 + 72);
                  v30 = sub_1CAC4C680(v29);
LABEL_20:
                  v32 = v30;
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D8);
                  swift_arrayDestroy();
                  v15 = v32 ^ 1;
                  goto LABEL_6;
                }
              }
            }
          }
        }
      }
    }
  }

  v15 = 0;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v15 & 1;
}

uint64_t sub_1CAC4B16C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC4C5E8(a3, v8, type metadata accessor for EventCalendarModelObject);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((EventModel.hasAttendees.getter(v9, v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  if (*(v12 + 48))(v11, v12) != 2 && *(v8 + 2) == 2 || (v13 = a2[3], v14 = a2[4], __swift_project_boxed_opaque_existential_1(a2, v13), EventCalendarModel.isSharedToMe.getter(v13, v14)) && *(v8 + 12) != 2 && (v15 = a1[3], v16 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v15), EventModel.isCurrentUserInvitedAttendee.getter(v15, v16)) || (sub_1CAC49620(a1, a2, v8))
  {
    sub_1CAC13820(v8);
    return 1;
  }

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  if ((EventModel.currentUserMayActAsOrganizer.getter(v18, v19) & 1) != 0 && *(v8 + 12) == 2)
  {
    v20 = v8[248];
    sub_1CAC13820(v8);
    if ((v20 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
LABEL_13:
    sub_1CAC13820(v8);
  }

  return 0;
}

uint64_t sub_1CAC4B350(void *a1, void *a2, uint64_t a3)
{
  v32 = a2;
  v34[3] = type metadata accessor for EventCalendarModelObject();
  v34[4] = sub_1CAC4E334(&qword_1EC4655C8, type metadata accessor for EventCalendarModelObject);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_1CAC4C5E8(a3, boxed_opaque_existential_1, type metadata accessor for EventCalendarModelObject);
  v5 = a1[3];
  v6 = a1[4];
  *&v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 408);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CAD4E4D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v7(v5, v6);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v33[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33[4] = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v13 + 32))();
    v15 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    __swift_destroy_boxed_opaque_existential_1(v33);
    if (v15 == 1)
    {
      goto LABEL_10;
    }
  }

  v16 = v32;
  v17 = v32[3];
  v18 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v17);
  if (!EventCalendarModel.isLocalCalendar.getter(v17, v18))
  {
    v19 = *(v31 + 24);
    v20 = *(v31 + 32);
    __swift_project_boxed_opaque_existential_1(v31, v19);
    if (EventModel.hasAttendees.getter(v19, v20))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D0);
      inited = swift_initStackObject();
      v31 = xmmword_1CAD5A0D0;
      *(inited + 16) = xmmword_1CAD5A0D0;
      sub_1CAB299C0(v16, inited + 32);
      sub_1CAB299C0(v34, inited + 72);
      v22 = sub_1CAC4CC78(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D8);
      swift_arrayDestroy();
      if ((v22 & 1) == 0 || ((v23 = v16[3], v24 = v16[4], __swift_project_boxed_opaque_existential_1(v16, v23), EventCalendarModel.isSharedToMe.getter(v23, v24)) || boxed_opaque_existential_1[12] == 2) && (v25 = swift_initStackObject(), *(v25 + 16) = v31, sub_1CAB299C0(v16, v25 + 32), sub_1CAB299C0(v34, v25 + 72), v26 = sub_1CAC4C680(v25), swift_setDeallocating(), swift_arrayDestroy(), (v26 & 1) == 0))
      {
        v27 = 1;
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v27 = 0;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v27;
}

uint64_t sub_1CAC4B75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventModelObject();
  v49 = v4;
  v50 = sub_1CAC4E334(&qword_1EC4655B0, type metadata accessor for EventModelObject);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_1CAC4C5E8(a1, boxed_opaque_existential_1, type metadata accessor for EventModelObject);
  v6 = __swift_project_boxed_opaque_existential_1(v48, v49);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CAD4E4D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - v10;
  sub_1CAB23A9C(v6 + v4[26], v39 - v10, &qword_1EC464020);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
  }

  else
  {
    v40 = boxed_opaque_existential_1;
    v41 = a2;
    *(&v43 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = AssociatedConformanceWitness;
    v14 = __swift_allocate_boxed_opaque_existential_1(&v42);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    v15 = *(&v43 + 1);
    v16 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    v17 = *(AssociatedConformanceWitness + 104);
    v18 = swift_getAssociatedTypeWitness();
    v19 = sub_1CAD4E4D4();
    v39[1] = v39;
    v20 = *(v19 - 8);
    MEMORY[0x1EEE9AC00](v19);
    v22 = v39 - v21;
    v17(v15, v16);
    v23 = *(v18 - 8);
    if ((*(v23 + 48))(v22, 1, v18) == 1)
    {
      (*(v20 + 8))(v22, v19);
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
    }

    else
    {
      *(&v46 + 1) = v18;
      v47 = swift_getAssociatedConformanceWitness();
      v24 = __swift_allocate_boxed_opaque_existential_1(&v45);
      (*(v23 + 32))(v24, v22, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
    a2 = v41;
    boxed_opaque_existential_1 = v40;
  }

  sub_1CAB23A9C(&v45, &v42, &qword_1EC464C80);
  v25 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v26 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    LODWORD(v25) = (*(v26 + 64))(v25, v26);
    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    sub_1CAB21B68(&v42, &qword_1EC464C80);
  }

  v27 = *(boxed_opaque_existential_1 + v4[38]);
  v28 = *(boxed_opaque_existential_1 + v4[44]);
  sub_1CAB23A9C(&v45, &v42, &qword_1EC464C80);
  v29 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    sub_1CAB21B68(&v42, &qword_1EC464C80);
    if (v28)
    {
      goto LABEL_13;
    }

LABEL_15:
    if ((v27 & 1) == 0)
    {
      v38 = *(boxed_opaque_existential_1 + v4[35]);
      v32 = 0;
      if (v38)
      {
        v33 = *(v38 + 16) != 0;
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v30 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
  v31 = (*(v30 + 56))(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  if ((v31 & 1) == 0)
  {
    if (v28)
    {
LABEL_13:
      v32 = v27 & (v25 ^ 1);
      v33 = v27 & v25;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_16:
  v32 = 0;
  v33 = 1;
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAD58380;
  v35 = sub_1CAB299C0(v48, inited + 32);
  if (v33)
  {
    v35 = sub_1CAB23A9C(&v45, &v42, &qword_1EC464C80);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  MEMORY[0x1EEE9AC00](v35);
  v39[-4] = &v42;
  LOBYTE(v39[-3]) = 1;
  BYTE1(v39[-3]) = v32;
  v39[-2] = inited;
  LOBYTE(v39[-1]) = 0;

  v36 = sub_1CAC1C574(sub_1CAC4C650, &v39[-6], a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655C0);
  swift_arrayDestroy();
  sub_1CAB21B68(&v42, &qword_1EC464C80);
  sub_1CAB21B68(&v45, &qword_1EC464C80);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v36;
}

uint64_t sub_1CAC4BE28(void *a1)
{
  v2 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = a1[4];
  if (v4 == 4 || !v4)
  {
    goto LABEL_9;
  }

  v5 = a1[6];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = a1[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = a1[5];

    return v7;
  }

  else
  {
LABEL_9:
    sub_1CAD4DEE4();
    sub_1CAD4C184();
    return sub_1CAD4DFC4();
  }
}

uint64_t sub_1CAC4BFAC(uint64_t a1, uint64_t a2)
{
  v4 = &v62;
  v5 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50[2] = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50[1] = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CAD4C124();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC8];
  v71 = MEMORY[0x1E69E7CC8];
  v72 = MEMORY[0x1E69E7CC0];
  v12 = sub_1CAC4B75C(a1, a2);
  v13 = 0;
  v14 = sub_1CAC445FC(v11, v12, &v72, &v71);

  v15 = v71;
  v16 = *(v71 + 16);
  v56 = v14;
  v50[3] = v71;
  if (v16)
  {
    v59 = 0;
    v17 = sub_1CAC2A290(v16, 0);
    v13 = sub_1CAC2A480(&v62, v17 + 32, v16, v15);
    v14 = *(&v62 + 1);
    v10 = v62;

    sub_1CAC297D0();
    if (v13 != v16)
    {
      goto LABEL_28;
    }

    v14 = v56;
    v10 = MEMORY[0x1E69E7CC0];
    v13 = v59;
  }

  else
  {
    v17 = v10;
  }

  *&v62 = v17;

  sub_1CAC46688(&v62);
  if (!v13)
  {

    v4 = v62;
    v16 = *(v62 + 16);
    if (!v16)
    {

      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    v70 = v10;
    sub_1CACB9E78(0, v16, 0);
    v17 = &v62;
    if (*(v4 + 2))
    {
      v18 = 0;
      v19 = v70;
      v52 = v16 - 1;
      v53 = (v51 + 8);
      v10 = 32;
      while (1)
      {
        v20 = v19;
        v21 = *(v4 + v10 + 16);
        v22 = *(v4 + v10 + 32);
        v23 = *(v4 + v10 + 64);
        v65 = *(v4 + v10 + 48);
        v66 = v23;
        v63 = v21;
        v64 = v22;
        v24 = *(v4 + v10 + 80);
        v25 = *(v4 + v10 + 96);
        v26 = *(v4 + v10 + 112);
        *(v69 + 10) = *(v4 + v10 + 122);
        v68 = v25;
        v69[0] = v26;
        v67 = v24;
        v62 = *(v4 + v10);
        if (v14[2])
        {
          v28 = *(&v62 + 1);
          v27 = v62;
          sub_1CAC17240(&v62, v60);
          v29 = sub_1CAC1628C(v27, v28);
          v30 = MEMORY[0x1E69E7CC0];
          if (v31)
          {
            v30 = *(v14[7] + 8 * v29);
          }
        }

        else
        {
          sub_1CAC17240(&v62, v60);
          v30 = MEMORY[0x1E69E7CC0];
        }

        *&v60[0] = v30;

        sub_1CAC466F4(v60);
        v16 = 0;

        v59 = *&v60[0];
        v32 = v54;
        sub_1CAD4C114();
        v33 = sub_1CAD4C104();
        v57 = v34;
        v58 = v33;
        (*v53)(v32, v55);
        v17 = &v62;
        v60[6] = v68;
        v61[0] = v69[0];
        *(v61 + 10) = *(v69 + 10);
        v60[2] = v64;
        v60[3] = v65;
        v60[4] = v66;
        v60[5] = v67;
        v60[0] = v62;
        v60[1] = v63;
        v35 = sub_1CAC4BE28(v60);
        v37 = v36;
        sub_1CAC1729C(&v62);
        v19 = v20;
        v70 = v20;
        v39 = v20[2];
        v38 = v20[3];
        if (v39 >= v38 >> 1)
        {
          sub_1CACB9E78((v38 > 1), v39 + 1, 1);
          v17 = &v62;
          v19 = v70;
        }

        v19[2] = v39 + 1;
        v40 = &v19[5 * v39];
        v41 = v57;
        v40[4] = v58;
        v40[5] = v41;
        v40[6] = v35;
        v40[7] = v37;
        v40[8] = v59;
        if (v52 == v18)
        {
          break;
        }

        v10 += 144;
        ++v18;
        v14 = v56;
        v13 = 0;
        if (v18 >= *(v4 + 2))
        {
          goto LABEL_27;
        }
      }

      v14 = v19;

LABEL_20:
      if (!v72[2])
      {
LABEL_26:

        return v14;
      }

      *&v62 = v72;

      sub_1CAC466F4(&v62);
      v4 = v62;
      v42 = v54;
      sub_1CAD4C114();
      v17 = sub_1CAD4C104();
      v13 = v43;
      (*(v51 + 8))(v42, v55);
      sub_1CAD4DEE4();
      sub_1CAD4C184();
      v16 = sub_1CAD4DFC4();
      v10 = v44;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v45 = v14;
LABEL_23:
        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_1CAD34884((v46 > 1), v47 + 1, 1, v45);
        }

        v45[2] = v47 + 1;
        v48 = &v45[5 * v47];
        v48[4] = v17;
        v48[5] = v13;
        v48[6] = v16;
        v48[7] = v10;
        v48[8] = v4;
        v14 = v45;
        goto LABEL_26;
      }

LABEL_29:
      v45 = sub_1CAD34884(0, v14[2] + 1, 1, v14);
      goto LABEL_23;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CAC4C5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC4C680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v48 = a1 + 32;
  sub_1CAB299C0(a1 + 32, v53);
  v2 = v54;
  v3 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v4 = *(v3 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CAD4E4D4();
  v47 = &v41;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v4(v2, v3);
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v42 = 0;
    v44 = 0;
  }

  else
  {
    v51 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v52 = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(v50);
    (*(v10 + 32))();
    v42 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v44 = v13;
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v14 = v54;
  v15 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v43 = (*(v15 + 176))(v14, v15);
  v45 = v16;
  v17 = v48;
  while (1)
  {
    v48 = v17;
    sub_1CAB299C0(v17, v50);
    v18 = v51;
    v19 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    if (!EventCalendarModel.isSharedToMe.getter(v18, v19))
    {
      break;
    }

    v46 = v1;
    v21 = v51;
    v20 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v22 = *(v20 + 104);
    v23 = swift_getAssociatedTypeWitness();
    v24 = sub_1CAD4E4D4();
    v47 = &v41;
    v25 = *(v24 - 8);
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v41 - v26;
    v22(v21, v20);
    v28 = *(v23 - 8);
    if ((*(v28 + 48))(v27, 1, v23) == 1)
    {
      (*(v25 + 8))(v27, v24);
      v29 = v46;
      if (v44)
      {
        break;
      }
    }

    else
    {
      v49[3] = v23;
      v30 = swift_getAssociatedConformanceWitness();
      v49[4] = v30;
      __swift_allocate_boxed_opaque_existential_1(v49);
      (*(v28 + 32))();
      v31 = (*(v30 + 24))(v23, v30);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1(v49);
      if (!v44)
      {
        goto LABEL_27;
      }

      if (v31 == v42 && v44 == v33)
      {

        v29 = v46;
      }

      else
      {
        v34 = sub_1CAD4E9E4();

        v29 = v46;
        if ((v34 & 1) == 0)
        {
          break;
        }
      }
    }

    v35 = v51;
    v36 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v37 = (*(v36 + 176))(v35, v36);
    if (!v38)
    {
      if (v45)
      {
        break;
      }

      goto LABEL_8;
    }

    if (!v45)
    {
LABEL_27:

      break;
    }

    if (v37 == v43 && v38 == v45)
    {

LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v50);
      goto LABEL_9;
    }

    v39 = sub_1CAD4E9E4();

    __swift_destroy_boxed_opaque_existential_1(v50);
    if ((v39 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_9:
    v17 = v48 + 40;
    v1 = v29 - 1;
    if (!v1)
    {

      v11 = 1;
      goto LABEL_30;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_29:

  v11 = 0;
LABEL_30:

  __swift_destroy_boxed_opaque_existential_1(v53);
  return v11;
}

uint64_t sub_1CAC4CC78(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 4);
  v3 = a1[7];
  v4 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v3);
  v33 = *(v4 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CAD4E4D4();
  v34 = &v31;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  (v33)(v3, v4);
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v11 = 0;
    v31 = 0;
  }

  else
  {
    v37 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v10 + 32))();
    v31 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v11 = v13;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  while (1)
  {
    v34 = v11;
    v32 = v1;
    sub_1CAB299C0(v2, v36);
    v15 = v37;
    v16 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v17 = *(v16 + 104);
    v18 = swift_getAssociatedTypeWitness();
    v19 = sub_1CAD4E4D4();
    v33 = &v31;
    v20 = *(v19 - 8);
    MEMORY[0x1EEE9AC00](v19);
    v22 = &v31 - v21;
    v17(v15, v16);
    v23 = *(v18 - 8);
    if ((*(v23 + 48))(v22, 1, v18) == 1)
    {
      (*(v20 + 8))(v22, v19);
      v14 = v32;
      v11 = v34;
      if (v34)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    v35[3] = v18;
    v24 = swift_getAssociatedConformanceWitness();
    v35[4] = v24;
    __swift_allocate_boxed_opaque_existential_1(v35);
    (*(v23 + 32))();
    v25 = (*(v24 + 24))(v18, v24);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v11 = v34;
    if (!v34)
    {
      break;
    }

    if (v25 == v31 && v34 == v27)
    {

      v14 = v32;
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(v36);
      goto LABEL_7;
    }

    v29 = sub_1CAD4E9E4();

    __swift_destroy_boxed_opaque_existential_1(v36);
    v14 = v32;
    if ((v29 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_7:
    v2 += 40;
    v1 = v14 - 1;
    if (!v1)
    {

      return 1;
    }
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v36);
LABEL_20:

  return 0;
}

uint64_t sub_1CAC4D138(void *a1, void *a2)
{
  v174 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  v3 = MEMORY[0x1EEE9AC00](v169);
  v159 = &v148[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v148[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v167 = &v148[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v168 = &v148[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v156 = &v148[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v160 = &v148[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v161 = &v148[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v158 = &v148[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v148[-v21];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v148[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v148[-v26];
  v28 = sub_1CAD4BFF4();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v157 = &v148[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v148[-v32];
  v35 = a1[3];
  v34 = a1[4];
  v170 = a1;
  v36 = __swift_project_boxed_opaque_existential_1(a1, v35);
  v37 = *(v34 + 8);
  v38 = *(v37 + 48);
  v165 = v36;
  v166 = v35;
  v163 = v37 + 48;
  v164 = v37;
  v162 = v38;
  (v38)(v35);
  v175 = v29[6];
  v39 = v175(v27, 1, v28);
  v172 = v29 + 6;
  v173 = v28;
  v171 = v29;
  if (v39 == 1)
  {
    sub_1CAB21B68(v27, &qword_1EC465450);
    v40 = v28;
    v41 = v175;
LABEL_17:
    v65 = v170;
    goto LABEL_18;
  }

  v42 = v29[4];
  v151 = v29 + 4;
  v150 = v42;
  v42(v33, v27, v28);
  v43 = v29[2];
  v43(v25, v33, v28);
  v44 = v29[7];
  v45 = 1;
  v44(v25, 0, 1, v28);
  v46 = [objc_opt_self() URLForNoMail];
  v155 = v33;
  v154 = v29 + 2;
  v152 = v43;
  if (v46)
  {
    v47 = v46;
    sub_1CAD4BFC4();

    v45 = 0;
  }

  v153 = v44;
  v44(v22, v45, 1, v28);
  v48 = *(v169 + 48);
  sub_1CAB23A9C(v25, v6, &qword_1EC465450);
  v40 = v173;
  sub_1CAB23A9C(v22, &v6[v48], &qword_1EC465450);
  v49 = v175;
  if (v175(v6, 1, v40) == 1)
  {
    sub_1CAB21B68(v22, &qword_1EC465450);
    sub_1CAB21B68(v25, &qword_1EC465450);
    v50 = v175(&v6[v48], 1, v40);
    v51 = v171;
    if (v50 == 1)
    {
      sub_1CAB21B68(v6, &qword_1EC465450);
      v51[1](v155, v40);
      return 0;
    }

    goto LABEL_10;
  }

  v52 = v158;
  sub_1CAB23A9C(v6, v158, &qword_1EC465450);
  if (v49(&v6[v48], 1, v40) == 1)
  {
    sub_1CAB21B68(v22, &qword_1EC465450);
    v40 = v173;
    sub_1CAB21B68(v25, &qword_1EC465450);
    v171[1](v52, v40);
LABEL_10:
    sub_1CAB21B68(v6, &qword_1EC463DA0);
    goto LABEL_11;
  }

  v85 = v157;
  v150(v157, &v6[v48], v40);
  sub_1CAC4E334(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
  v149 = sub_1CAD4DED4();
  v86 = v171[1];
  v86(v85, v40);
  sub_1CAB21B68(v22, &qword_1EC465450);
  sub_1CAB21B68(v25, &qword_1EC465450);
  v86(v52, v173);
  v40 = v173;
  sub_1CAB21B68(v6, &qword_1EC465450);
  if (v149)
  {
    v86(v155, v40);
    return 0;
  }

LABEL_11:
  v53 = v161;
  v54 = v155;
  v152(v161, v155, v40);
  v153(v53, 0, 1, v40);
  v55 = v174[3];
  v56 = v174[4];
  __swift_project_boxed_opaque_existential_1(v174, v55);
  v57 = *(v56 + 192);
  v58 = v160;
  v59 = v56;
  v41 = v175;
  v57(v55, v59);
  v60 = *(v169 + 48);
  v61 = v159;
  sub_1CAB23A9C(v53, v159, &qword_1EC465450);
  sub_1CAB23A9C(v58, &v61[v60], &qword_1EC465450);
  if (v41(v61, 1, v40) == 1)
  {
    sub_1CAB21B68(v58, &qword_1EC465450);
    sub_1CAB21B68(v53, &qword_1EC465450);
    v171[1](v54, v40);
    if (v41(&v61[v60], 1, v40) == 1)
    {
      sub_1CAB21B68(v61, &qword_1EC465450);
      return 0;
    }

    goto LABEL_16;
  }

  v63 = v156;
  sub_1CAB23A9C(v61, v156, &qword_1EC465450);
  if (v41(&v61[v60], 1, v40) == 1)
  {
    sub_1CAB21B68(v160, &qword_1EC465450);
    sub_1CAB21B68(v161, &qword_1EC465450);
    v64 = v171[1];
    v64(v155, v40);
    v64(v63, v40);
LABEL_16:
    sub_1CAB21B68(v61, &qword_1EC463DA0);
    goto LABEL_17;
  }

  v87 = v157;
  v150(v157, &v61[v60], v40);
  sub_1CAC4E334(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
  v88 = sub_1CAD4DED4();
  v89 = v171[1];
  v89(v87, v40);
  sub_1CAB21B68(v160, &qword_1EC465450);
  sub_1CAB21B68(v161, &qword_1EC465450);
  v89(v155, v40);
  v89(v63, v40);
  v41 = v175;
  sub_1CAB21B68(v61, &qword_1EC465450);
  v65 = v170;
  if (v88)
  {
    return 0;
  }

LABEL_18:
  v66 = v174[3];
  v67 = v174[4];
  __swift_project_boxed_opaque_existential_1(v174, v66);
  v68 = v168;
  (*(v67 + 192))(v66, v67);
  if (v41(v68, 1, v40) == 1 || (v69 = sub_1CAD4BFB4(), v171[1](v68, v40), v70 = [v69 resourceSpecifier], v69, !v70))
  {
    v71 = 0;
    v73 = 0;
  }

  else
  {
    v71 = sub_1CAD4DF94();
    v73 = v72;
  }

  v75 = v65[3];
  v74 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v75);
  v76 = (*(*(v74 + 8) + 32))(v75);
  if (v77)
  {
    v78 = v76;
    v79 = v77;
    v80 = v174[3];
    v81 = v174[4];
    __swift_project_boxed_opaque_existential_1(v174, v80);
    v82 = (*(v81 + 200))(v80, v81);
    if (v83)
    {
      if (v78 == v82 && v79 == v83)
      {
        goto LABEL_42;
      }

      v84 = sub_1CAD4E9E4();

      if (v84)
      {
LABEL_48:

        goto LABEL_49;
      }
    }

    if (v73)
    {
      if (v78 == v71 && v79 == v73)
      {
        goto LABEL_48;
      }

      v90 = sub_1CAD4E9E4();

      if (v90)
      {
LABEL_49:

        return 0;
      }
    }

    else
    {
    }
  }

  v92 = v65[3];
  v91 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v92);
  v93 = (*(*(v91 + 8) + 40))(v92);
  if (!v94)
  {
    goto LABEL_50;
  }

  v95 = v93;
  v96 = v94;
  v97 = v174[3];
  v98 = v174[4];
  __swift_project_boxed_opaque_existential_1(v174, v97);
  v99 = (*(v98 + 208))(v97, v98);
  if (v100)
  {
    if (v95 == v99 && v96 == v100)
    {
LABEL_42:

      goto LABEL_48;
    }

    v101 = sub_1CAD4E9E4();

    if (v101)
    {
      goto LABEL_48;
    }
  }

  if (v73)
  {
    if (v95 == v71 && v96 == v73)
    {
      goto LABEL_48;
    }

    v147 = sub_1CAD4E9E4();

    if (v147)
    {
      return 0;
    }
  }

  else
  {
LABEL_50:
  }

  v102 = v174[3];
  v103 = v174[4];
  __swift_project_boxed_opaque_existential_1(v174, v102);
  v104 = *(v103 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = sub_1CAD4E4D4();
  v174 = v148;
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v148[-v108];
  v104(v102, v103);
  v110 = *(AssociatedTypeWitness - 8);
  if ((*(v110 + 48))(v109, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v107 + 8))(v109, v106);
    v111 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v176[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v176[4] = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(v176);
    (*(v110 + 32))();
    v111 = (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
    result = __swift_destroy_boxed_opaque_existential_1(v176);
  }

  v113 = 0;
  v114 = v111 + 7;
  v115 = 1 << *(v111 + 32);
  v116 = -1;
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  v117 = v116 & v111[7];
  v169 = (v115 + 63) >> 6;
  ++v171;
  v174 = v111;
  while (1)
  {
    if (!v117)
    {
      while (1)
      {
        v118 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          break;
        }

        if (v118 >= v169)
        {

          return 1;
        }

        v117 = v114[v118];
        ++v113;
        if (v117)
        {
          v113 = v118;
          goto LABEL_63;
        }
      }

      __break(1u);
      return result;
    }

LABEL_63:
    v119 = (v111[6] + ((v113 << 10) | (16 * __clz(__rbit64(v117)))));
    v120 = *v119;
    v121 = v119[1];
    v122 = v65[3];
    v123 = v65[4];
    __swift_project_boxed_opaque_existential_1(v65, v122);
    v124 = *(v123 + 8);
    v125 = *(v124 + 32);

    v126 = v125(v122, v124);
    v128 = v120;
    v129 = v167;
    if (v127)
    {
      if (v120 == v126 && v127 == v121)
      {
LABEL_85:

        goto LABEL_49;
      }

      v131 = sub_1CAD4E9E4();

      if (v131)
      {
        break;
      }
    }

    v132 = v170;
    v134 = v170[3];
    v133 = v170[4];
    __swift_project_boxed_opaque_existential_1(v170, v134);
    v135 = (*(*(v133 + 8) + 40))(v134);
    if (v136)
    {
      if (v120 == v135 && v136 == v121)
      {
        goto LABEL_85;
      }

      v138 = sub_1CAD4E9E4();

      if (v138)
      {
        break;
      }
    }

    v139 = v132;
    v140 = v128;
    v117 &= v117 - 1;
    v162(v166, v164);
    v141 = v173;
    if (v175(v129, 1, v173) == 1)
    {
      sub_1CAB21B68(v129, &qword_1EC465450);

      v111 = v174;
      v65 = v139;
    }

    else
    {
      v142 = sub_1CAD4BFA4();
      v144 = v143;
      (*v171)(v129, v141);
      if (v140 == v142 && v121 == v144)
      {

        goto LABEL_49;
      }

      v146 = sub_1CAD4E9E4();

      v111 = v174;
      v65 = v139;
      if (v146)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_87:

  return 0;
}

uint64_t sub_1CAC4E334(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CAC4E3E8()
{
  sub_1CAC4E4E4(319, &qword_1EC465600, type metadata accessor for TravelTimeViewModel, MEMORY[0x1E6981A98]);
  if (v0 <= 0x3F)
  {
    sub_1CAC4E4E4(319, &qword_1EC463A50, MEMORY[0x1E697BF88], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      sub_1CAC4E548();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CAC4E4E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CAC4E548()
{
  if (!qword_1EC463558)
  {
    v0 = sub_1CAD4D9C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC463558);
    }
  }
}

uint64_t sub_1CAC4E5B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAD4CC04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TravelTimeEditor(0);
  sub_1CAB23A9C(v1 + *(v10 + 20), v9, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C784();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1CAC4E7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1CAD4CC34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465628);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465620);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465610);
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v28 = a1;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465650);
  sub_1CAB23B0C(&qword_1EC465658, &qword_1EC465650);
  sub_1CAD4D374();
  *&v9[*(v7 + 36)] = sub_1CAD4CFC4();
  if (qword_1EC462B88 != -1)
  {
    swift_once();
  }

  v31 = qword_1EC47D948;
  v32 = unk_1EC47D950;
  v16 = sub_1CAC53948();
  v17 = sub_1CABA6054();
  v18 = MEMORY[0x1E69E6158];
  sub_1CAD4D5D4();
  sub_1CAB21B68(v9, &qword_1EC465628);
  (*(v4 + 104))(v6, *MEMORY[0x1E697C430], v3);
  v31 = v7;
  v32 = v18;
  v33 = v16;
  v34 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_1CAD4D694();
  (*(v4 + 8))(v6, v3);
  v21 = (*(v24 + 8))(v12, v20);
  MEMORY[0x1EEE9AC00](v21);
  *(&v24 - 2) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465618);
  v31 = v20;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CAB23B0C(&qword_1EC465648, &qword_1EC465618);
  v22 = v27;
  sub_1CAD4D734();
  return (*(v26 + 8))(v15, v22);
}

uint64_t sub_1CAC4EC78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465680);
  v45 = *(v46 - 8);
  v3 = MEMORY[0x1EEE9AC00](v46);
  v52 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465688);
  v43 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465690);
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v48 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465698);
  sub_1CAC53D80();
  sub_1CAD4DBC4();
  v54 = a1;
  if (qword_1EC462CC0 != -1)
  {
    swift_once();
  }

  v57 = qword_1EC47DBB8;
  v58 = unk_1EC47DBC0;
  sub_1CABA6054();

  v57 = sub_1CAD4D444();
  v58 = v16;
  v59 = v17 & 1;
  v60 = v18;
  sub_1CAC51334(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4656B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B70);
  sub_1CAB23B0C(&qword_1EC4656C0, &qword_1EC4656B8);
  sub_1CABCD3F0();
  v42 = v10;
  v19 = sub_1CAD4DBB4();
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4656C8);
  sub_1CAC53E48();
  v20 = v51;
  sub_1CAD4DBC4();
  v21 = v48;
  v22 = *(v49 + 16);
  v44 = v15;
  v23 = v50;
  v22(v48, v15, v50);
  v24 = v43;
  v41 = *(v43 + 16);
  v41(v53, v10, v6);
  v39 = v6;
  v25 = v45;
  v40 = *(v45 + 16);
  v26 = v20;
  v27 = v46;
  v40(v52, v26, v46);
  v28 = v47;
  v22(v47, v21, v23);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4656E0);
  v30 = v39;
  v41(&v28[*(v29 + 48)], v53, v39);
  v31 = v52;
  v40(&v28[*(v29 + 64)], v52, v27);
  v32 = *(v25 + 8);
  v32(v51, v27);
  v33 = *(v24 + 8);
  v34 = v30;
  v33(v42, v30);
  v35 = v50;
  v36 = *(v49 + 8);
  v36(v44, v50);
  v32(v31, v27);
  v33(v53, v34);
  return (v36)(v48, v35);
}

double sub_1CAC4F28C@<D0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4CC94();
  v23 = 1;
  sub_1CAC4F4AC(a1, &v13);
  v30 = v19;
  v31 = v20;
  v32[0] = v21[0];
  *(v32 + 9) = *(v21 + 9);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v24 = v13;
  v25 = v14;
  v33[6] = v19;
  v33[7] = v20;
  v34[0] = v21[0];
  *(v34 + 9) = *(v21 + 9);
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v33[5] = v18;
  v33[0] = v13;
  v33[1] = v14;
  sub_1CAB23A9C(&v24, &v12, &qword_1EC4657A0);
  sub_1CAB21B68(v33, &qword_1EC4657A0);
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(&v22[8] + 7) = v32[0];
  v22[9] = *(v32 + 9);
  *(&v22[2] + 7) = v26;
  *(&v22[3] + 7) = v27;
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  LOBYTE(a1) = v23;
  v5 = sub_1CAD4CD84();
  v6 = v22[7];
  *(a2 + 113) = v22[6];
  *(a2 + 129) = v6;
  v7 = v22[9];
  *(a2 + 145) = v22[8];
  *(a2 + 161) = v7;
  v8 = v22[3];
  *(a2 + 49) = v22[2];
  *(a2 + 65) = v8;
  v9 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v9;
  result = *v22;
  v11 = v22[1];
  *(a2 + 17) = v22[0];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 33) = v11;
  *(a2 + 184) = v5;
  *(a2 + 192) = sub_1CAC4F9C8;
  *(a2 + 200) = 0;
  return result;
}

uint64_t sub_1CAC4F4AC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  sub_1CAD4DBF4();
  v9 = v46;
  swift_getKeyPath();
  v46 = v9;
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v10 = *(v9 + 480);

  v11 = floor(v10 / 86400.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  if (v11 < 1)
  {
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v2 = 0;
    v37 = 0;
  }

  else
  {
    sub_1CAD4DC04();
    swift_getKeyPath();
    sub_1CAD4DC24();

    (*(v6 + 8))(v8, v5);
    v12 = v46;
    v13 = v47;
    v44 = v48;
    if (qword_1EC462CA8 != -1)
    {
      v29 = v46;
      swift_once();
      v12 = v29;
    }

    v14 = unk_1EC47DB90;
    v42 = qword_1EC47DB88;
    v45 = v12;

    v43 = v13;

    v37 = v14;
    swift_bridgeObjectRetain_n();
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  a1 = *(v6 + 8);
  a1(v8, v5);
  v35 = v46;
  v40 = v48;
  v41 = v47;
  if (qword_1EC462CB0 != -1)
  {
    goto LABEL_16;
  }

LABEL_10:
  v38 = qword_1EC47DB98;
  v39 = unk_1EC47DBA0;

  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  a1(v8, v5);
  v16 = v46;
  v15 = v47;
  v36 = v48;
  if (qword_1EC462CB8 != -1)
  {
    swift_once();
  }

  v34 = qword_1EC47DBA8;
  v31 = unk_1EC47DBB0;

  v17 = v44;
  v18 = v45;
  v19 = v42;
  v20 = v43;
  v21 = v2;
  v22 = v37;
  sub_1CAC54178(v45, v43);
  v32 = v16;

  v23 = v35;

  v24 = v41;

  v30 = v15;
  v25 = v39;

  v44 = v17;
  v45 = v18;
  v33 = v21;
  sub_1CAC541C4(v18, v20);
  LOBYTE(v46) = 1;
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v17;
  *(a2 + 24) = v21;
  *(a2 + 32) = v19;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v40;
  *(a2 + 72) = 23;
  *(a2 + 80) = v38;
  *(a2 + 88) = v25;
  v26 = v31;
  v27 = v30;
  *(a2 + 96) = v32;
  *(a2 + 104) = v27;
  *(a2 + 112) = v36;
  *(a2 + 120) = 59;
  *(a2 + 128) = v34;
  *(a2 + 136) = v26;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;

  return sub_1CAC541C4(v45, v20);
}

uint64_t sub_1CAC4F9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for TravelTimeEditor(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v4;
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4656F8);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465700);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v48 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465708);
  v11 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465710);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465718);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v55 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  *v23 = sub_1CAD4CC94();
  *(v23 + 1) = 0;
  v24 = 1;
  v23[16] = 1;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465720) + 44);
  v54 = v23;
  sub_1CAC501B4(a1, &v23[v25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v26 = a1;
  sub_1CAD4DBF4();
  v27 = v63;
  swift_getKeyPath();
  v63 = v27;
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  LODWORD(v23) = *(v27 + 672);

  if (v23 == 1)
  {
    *v13 = sub_1CAD4CC94();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465748);
    sub_1CAC50FCC(&v13[*(v28 + 44)]);
    sub_1CAC54064(v13, v18);
    v24 = 0;
  }

  v29 = *(v11 + 56);
  v30 = 1;
  v56 = v18;
  v29(v18, v24, 1, v53);
  sub_1CAD4DBF4();
  v31 = v63;
  swift_getKeyPath();
  v63 = v31;
  sub_1CAD4C424();

  v32 = *(v31 + OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__travelTimeEstimatedValues);

  if (v32)
  {
    v63 = v32;
    swift_getKeyPath();
    v33 = v51;
    sub_1CAC54340(v26, v51, type metadata accessor for TravelTimeEditor);
    v34 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v35 = swift_allocObject();
    sub_1CAC543A8(v33, v35 + v34, type metadata accessor for TravelTimeEditor);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465730);
    type metadata accessor for TravelTimeEditor.TravelTimeRowView(0);
    sub_1CAB23B0C(&qword_1EC465738, &qword_1EC465730);
    sub_1CAC53EFC(&qword_1EC465740, type metadata accessor for EKLocationRoutingMode);
    sub_1CAC53EFC(&qword_1EC4656D8, type metadata accessor for TravelTimeEditor.TravelTimeRowView);
    v36 = v52;
    sub_1CAD4DB64();
    v38 = v58;
    v37 = v59;
    v39 = v60;
    (*(v58 + 32))(v60, v36, v59);
    v30 = 0;
  }

  else
  {
    v37 = v59;
    v39 = v60;
    v38 = v58;
  }

  (*(v38 + 56))(v39, v30, 1, v37);
  v40 = v54;
  v41 = v55;
  sub_1CAB301A8(v54, v55);
  v42 = v56;
  v43 = v57;
  sub_1CAB23A9C(v56, v57, &qword_1EC465710);
  v44 = v61;
  sub_1CAB23A9C(v39, v61, &qword_1EC465700);
  v45 = v62;
  sub_1CAB301A8(v41, v62);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465728);
  sub_1CAB23A9C(v43, v45 + *(v46 + 48), &qword_1EC465710);
  sub_1CAB23A9C(v44, v45 + *(v46 + 64), &qword_1EC465700);
  sub_1CAB21B68(v39, &qword_1EC465700);
  sub_1CAB21B68(v42, &qword_1EC465710);
  sub_1CAB21B68(v40, &qword_1EC465718);
  sub_1CAB21B68(v44, &qword_1EC465700);
  sub_1CAB21B68(v43, &qword_1EC465710);
  return sub_1CAB21B68(v41, &qword_1EC465718);
}

uint64_t sub_1CAC501B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for TravelTimeEditor(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33[1] = v6;
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465758);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v41 = v33 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465760);
  v37 = *(v39 - 8);
  v9 = MEMORY[0x1EEE9AC00](v39);
  v35 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = v33 - v11;
  sub_1CAC54340(a1, v7, type metadata accessor for TravelTimeEditor);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1CAC543A8(v7, v13 + v12, type metadata accessor for TravelTimeEditor);
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465768);
  sub_1CAB23B0C(&qword_1EC465770, &qword_1EC465768);
  sub_1CAD4D9E4();
  v14 = a1 + *(v4 + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  v43 = v15;
  v44 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D9B4();
  sub_1CAC54340(a1, v7, type metadata accessor for TravelTimeEditor);
  v17 = swift_allocObject();
  sub_1CAC543A8(v7, v17 + v12, type metadata accessor for TravelTimeEditor);
  type metadata accessor for LocationChooser(0);
  sub_1CAB23B0C(&qword_1EC465778, &qword_1EC465758);
  sub_1CAC53EFC(&qword_1EC465780, type metadata accessor for LocationChooser);
  v18 = v34;
  v19 = v36;
  v20 = v41;
  sub_1CAD4D6E4();

  (*(v38 + 8))(v20, v19);
  v21 = sub_1CAD4D8F4();
  LODWORD(v20) = sub_1CAD4CFD4();
  v22 = v37;
  v23 = *(v37 + 16);
  v24 = v35;
  v25 = v18;
  v26 = v39;
  v23(v35, v18, v39);
  v27 = v40;
  v23(v40, v24, v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465788);
  v29 = &v27[*(v28 + 48)];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v27[*(v28 + 64)];
  *v30 = v21;
  *(v30 + 2) = v20;
  v31 = *(v22 + 8);

  v31(v25, v26);

  return (v31)(v24, v26);
}

uint64_t sub_1CAC506FC()
{
  type metadata accessor for TravelTimeEditor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  return sub_1CAD4D9A4();
}

double sub_1CAC50770@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CDA4();
  v15 = 1;
  sub_1CAC50890(&v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v16 = v8;
  v17 = v9;
  v23 = v13;
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v22[0] = v8;
  v22[1] = v9;
  sub_1CAB23A9C(&v16, &v7, &qword_1EC465798);
  sub_1CAB21B68(v22, &qword_1EC465798);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v14[64];
  v5 = *v14;
  result = *&v14[16];
  *(a1 + 33) = *&v14[16];
  v14[87] = v21;
  v6 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 97) = *&v14[80];
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_1CAC50890@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC462C90 != -1)
  {
    swift_once();
  }

  v76[0] = xmmword_1EC47DB58;
  sub_1CABA6054();

  v1 = sub_1CAD4D444();
  v3 = v2;
  v5 = v4;
  sub_1CAD4D264();
  v6 = sub_1CAD4D424();
  v41 = v7;
  v42 = v8;
  v10 = v9;

  sub_1CABA6128(v1, v3, v5 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v11 = *(*&v76[0] + 640);
  v73 = *(*&v76[0] + 624);
  v74 = v11;
  v75 = *(*&v76[0] + 656);
  v12 = *(*&v76[0] + 576);
  v69 = *(*&v76[0] + 560);
  v70 = v12;
  v13 = *(*&v76[0] + 608);
  v71 = *(*&v76[0] + 592);
  v72 = v13;
  v14 = *(*&v76[0] + 512);
  v65 = *(*&v76[0] + 496);
  v66 = v14;
  v15 = *(*&v76[0] + 544);
  v67 = *(*&v76[0] + 528);
  v68 = v15;
  sub_1CAB23A9C(&v65, v76, &qword_1EC463C00);

  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  v55 = v66;
  v56 = v67;
  v76[7] = v72;
  v76[8] = v73;
  v76[9] = v74;
  v76[10] = v75;
  v76[3] = v68;
  v76[4] = v69;
  v76[5] = v70;
  v76[6] = v71;
  v16 = *(&v65 + 1);
  v17 = v65;
  v76[1] = v66;
  v76[2] = v67;
  v76[0] = v65;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v76) == 1)
  {
    v43 = v17;
    v44 = v16;
    v51 = v61;
    v52 = v62;
    v53 = v63;
    v54 = v64;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v45 = v55;
    v46 = v56;
    sub_1CAB21B68(&v43, &qword_1EC463C00);
    v16 = 0;
LABEL_7:
    v29 = 0;
    v35 = 0;
    v33 = 0;
    KeyPath = 0;
    v36 = 0;
    goto LABEL_8;
  }

  v43 = v17;
  v44 = v16;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v45 = v55;
  v46 = v56;

  sub_1CAB21B68(&v43, &qword_1EC463C00);
  if (!v16)
  {
    goto LABEL_7;
  }

  v18 = sub_1CAD4D444();
  v20 = v19;
  v22 = v21;
  sub_1CAD4CFE4();
  v23 = sub_1CAD4D3E4();
  v25 = v24;
  v27 = v26;
  sub_1CABA6128(v18, v20, v22 & 1);

  sub_1CAD4D304();
  v16 = sub_1CAD4D424();
  v29 = v28;
  v39 = v6;
  v31 = v30;
  v33 = v32;

  sub_1CABA6128(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v35 = v31 & 1;
  v6 = v39;
  sub_1CABA4F48(v16, v29, v35);

  v36 = 1;
LABEL_8:
  LOBYTE(v43) = v10 & 1;
  sub_1CABA4F48(v6, v41, v10 & 1);

  sub_1CAC3B744(v16, v29, v35, v33);
  sub_1CAC3B794(v16, v29, v35, v33);
  v37 = v43;
  *a1 = v6;
  *(a1 + 8) = v41;
  *(a1 + 16) = v37;
  *(a1 + 24) = v42;
  *(a1 + 32) = v16;
  *(a1 + 40) = v29;
  *(a1 + 48) = v35;
  *(a1 + 56) = v33;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = v36;
  *(a1 + 80) = 0;
  sub_1CAC3B794(v16, v29, v35, v33);
  sub_1CABA6128(v6, v41, v10 & 1);
}

uint64_t sub_1CAC50DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  sub_1CAD4DC04();
  swift_getKeyPath();
  v6 = type metadata accessor for LocationChooser(0);
  sub_1CAD4DC24();

  (*(v3 + 8))(v5, v2);
  v14[0] = xmmword_1CAD5B720;
  memset(&v14[1], 0, 32);
  v15 = 0;
  v7 = a1 + v6[6];
  v11[1] = 0;
  v11[2] = 0xE000000000000000;
  sub_1CAD4D984();
  v8 = v13;
  *v7 = v12;
  *(v7 + 16) = v8;
  v9 = v6[8];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LocationDataModel(0);
  swift_allocObject();
  sub_1CAD1B9E0(255, v14);
  sub_1CAC53EFC(&qword_1EC465790, type metadata accessor for LocationDataModel);
  result = sub_1CAD4DC14();
  *(a1 + v6[7]) = 0;
  return result;
}

uint64_t sub_1CAC50FCC@<X0>(_BYTE *a1@<X8>)
{
  v29 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AB0);
  v1 = *(v31 - 8);
  v2 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27[-v4];
  sub_1CAD4C6F4();
  if (qword_1EC462CA0 != -1)
  {
    swift_once();
  }

  v32 = qword_1EC47DB78;
  v33 = unk_1EC47DB80;
  sub_1CABA6054();

  v6 = sub_1CAD4D444();
  v8 = v7;
  v10 = v9;
  sub_1CAD4D264();
  v11 = sub_1CAD4D424();
  v13 = v12;
  v28 = v14;
  v16 = v15;

  sub_1CABA6128(v6, v8, v10 & 1);

  v17 = *(v1 + 16);
  v19 = v30;
  v18 = v31;
  v17(v30, v5, v31);
  v20 = v29;
  v17(v29, v19, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465750);
  v22 = &v20[*(v21 + 48)];
  *v22 = v11;
  *(v22 + 1) = v13;
  v23 = v28 & 1;
  v22[16] = v28 & 1;
  *(v22 + 3) = v16;
  v24 = &v20[*(v21 + 64)];
  *v24 = 0;
  v24[8] = 1;
  sub_1CABA4F48(v11, v13, v23);
  v25 = *(v1 + 8);

  v25(v5, v18);
  sub_1CABA6128(v11, v13, v23);

  return (v25)(v19, v18);
}

uint64_t sub_1CAC51264@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  sub_1CAD4DBF4();
  type metadata accessor for TravelTimeViewModel();
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4DC14();
  result = type metadata accessor for TravelTimeEditor.TravelTimeRowView(0);
  *(a2 + *(result + 20)) = v4;
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_1CAC51334@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v2 = *(v18 + 672);

  if (v2)
  {
    goto LABEL_4;
  }

  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAD4C424();

  v4 = *(v18 + OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__travelTimeEstimatedValues);

  if (v4)
  {

LABEL_4:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (qword_1EC462C98 != -1)
  {
    swift_once();
  }

  sub_1CABA6054();

  v9 = sub_1CAD4D444();
  v11 = v10;
  v13 = v12;
  sub_1CAD4CFD4();
  v5 = sub_1CAD4D3E4();
  v6 = v14;
  v16 = v15;
  v8 = v17;
  sub_1CABA6128(v9, v11, v13 & 1);

  v7 = v16 & 1;
LABEL_5:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t sub_1CAC51584(uint64_t a1)
{
  v2 = type metadata accessor for TravelTimeEditor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = qword_1EC463BA0;
  sub_1CAC54340(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TravelTimeEditor);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1CAC543A8(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TravelTimeEditor);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4656E8);
  type metadata accessor for TravelTimeEditor.TravelTimeRowView(0);
  sub_1CAB23B0C(&qword_1EC4656F0, &qword_1EC4656E8);
  sub_1CAC53EFC(&qword_1EC4656D8, type metadata accessor for TravelTimeEditor.TravelTimeRowView);
  sub_1CABD4C04();
  return sub_1CAD4DB74();
}

uint64_t sub_1CAC5177C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  sub_1CAD4DBF4();
  v4 = qword_1CAD60AF8[v3];
  type metadata accessor for TravelTimeViewModel();
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4DC14();
  result = type metadata accessor for TravelTimeEditor.TravelTimeRowView(0);
  *(a2 + *(result + 20)) = v4;
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_1CAC51854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465660);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - v4;
  v6 = sub_1CAD4CF14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465668);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  sub_1CAD4CED4();
  v18[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465670);
  sub_1CAC53A44();
  sub_1CAD4C6E4();
  sub_1CAD4CEE4();
  v18[4] = a1;
  sub_1CAD4C6E4();
  v14 = *(v3 + 48);
  v15 = *(v8 + 16);
  v15(v5, v13, v7);
  v15(&v5[v14], v11, v7);
  sub_1CAD4CDF4();
  v16 = *(v8 + 8);
  v16(v11, v7);
  return (v16)(v13, v7);
}

uint64_t sub_1CAC51AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TravelTimeEditor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  if (qword_1EC462DF8 != -1)
  {
    swift_once();
  }

  v15[0] = qword_1EC47DE28;
  v15[1] = unk_1EC47DE30;

  sub_1CAD4C5B4();
  v10 = sub_1CAD4C5C4();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1CAC54340(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TravelTimeEditor);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1CAC543A8(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for TravelTimeEditor);
  sub_1CABA6054();
  sub_1CAD4D9F4();
  v13 = sub_1CAD4D804();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465670);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1CAC51D24(uint64_t a1)
{
  v16 = sub_1CAD4CC04();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1CAD4C784();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TravelTimeEditor(0);
  sub_1CAB23A9C(a1 + *(v12 + 20), v7, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1CAD4C774();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1CAC51FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TravelTimeEditor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (qword_1EC462DF0 != -1)
  {
    swift_once();
  }

  v11[0] = qword_1EC47DE18;
  v11[1] = unk_1EC47DE20;
  sub_1CAC54340(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TravelTimeEditor);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1CAC543A8(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TravelTimeEditor);
  sub_1CABA6054();

  sub_1CAD4DA04();
  v9 = sub_1CAD4D804();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465670);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_1CAC5215C()
{
  v0 = sub_1CAD4C784();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  sub_1CAD4DBF4();
  v3 = v75;
  sub_1CAD4DBF4();
  v4 = v75;
  swift_getKeyPath();
  *&v75 = v4;
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v5 = *(v4 + 480);

  v6 = v3[3];
  v7 = v3[4];
  *&v75 = v3[2];
  *(&v75 + 1) = v6;
  *&v76 = v7;
  *&v63 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C28);
  sub_1CAD4DAC4();

  sub_1CAD4DBF4();
  v8 = v75;
  sub_1CAD4DBF4();
  v9 = v75;
  swift_getKeyPath();
  *&v75 = v9;
  sub_1CAD4C424();

  v10 = v9[40];
  v60 = v9[39];
  v61 = v10;
  v62 = v9[41];
  v11 = v9[36];
  v56 = v9[35];
  v57 = v11;
  v12 = v9[38];
  v58 = v9[37];
  v59 = v12;
  v13 = v9[32];
  v52 = v9[31];
  v53 = v13;
  v14 = v9[34];
  v54 = v9[33];
  v55 = v14;
  sub_1CAB23A9C(&v52, &v75, &qword_1EC463C00);

  v15 = *(v8 + 184);
  v71 = *(v8 + 168);
  v72 = v15;
  v16 = *(v8 + 216);
  v73 = *(v8 + 200);
  v74 = v16;
  v17 = *(v8 + 120);
  v67 = *(v8 + 104);
  v68 = v17;
  v18 = *(v8 + 152);
  v69 = *(v8 + 136);
  v70 = v18;
  v19 = *(v8 + 56);
  v63 = *(v8 + 40);
  v64 = v19;
  v20 = *(v8 + 88);
  v65 = *(v8 + 72);
  v66 = v20;
  v48 = v71;
  v49 = v72;
  v50 = v73;
  v51 = v74;
  v44 = v67;
  v45 = v68;
  v46 = v69;
  v47 = v70;
  v40 = v63;
  v41 = v64;
  v42 = v65;
  v43 = v20;
  v37 = v60;
  v38 = v61;
  v39 = v62;
  v33 = v56;
  v34 = v57;
  v35 = v58;
  v36 = v59;
  v29 = v52;
  v30 = v53;
  v31 = v54;
  v32 = v55;
  sub_1CAB23A9C(&v63, &v75, &qword_1EC463C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
  sub_1CAD4DAC4();

  v83 = v48;
  v84 = v49;
  v85 = v50;
  v86 = v51;
  v79 = v44;
  v80 = v45;
  v81 = v46;
  v82 = v47;
  v75 = v40;
  v76 = v41;
  v77 = v42;
  v78 = v43;
  sub_1CAB21B68(&v75, &qword_1EC463C30);
  sub_1CAD4DBF4();
  v21 = v40;
  sub_1CAD4DBF4();
  v22 = v40;
  swift_getKeyPath();
  *&v40 = v22;
  sub_1CAD4C424();

  v23 = *(v22 + 488);

  v24 = v21[30];
  v25 = v21[31];
  *&v40 = v21[29];
  *(&v40 + 1) = v24;
  *&v41 = v25;
  *&v29 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464050);
  sub_1CAD4DAC4();

  sub_1CAC4E5B4(v2);
  sub_1CAD4C774();
  return (*(v27 + 8))(v2, v28);
}

uint64_t sub_1CAC52608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465810);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55[-v4];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465818);
  v6 = *(v60 - 8);
  v7 = MEMORY[0x1EEE9AC00](v60);
  v58 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55[-v9];
  v11 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1CABC6E18();
  v12 = sub_1CAD4E474();
  [v11 setMinimum_];

  v13 = sub_1CAD4E474();
  [v11 setMaximum_];

  [v11 setGeneratesDecimalNumbers_];
  [v11 setMaximumFractionDigits_];
  if (qword_1EC462CB0 != -1)
  {
    swift_once();
  }

  v14 = a1[1];
  v15 = a1[2];
  v67 = *a1;
  v62 = qword_1EC47DB98;
  v63 = unk_1EC47DBA0;
  *&v64 = v67;
  *(&v64 + 1) = v14;
  *&v65 = v15;

  sub_1CAC546A8(&v67, v61);
  sub_1CABA6054();

  v57 = v11;
  sub_1CAD4DD54();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465820) + 36)];
  v17 = v65;
  *v16 = v64;
  v16[1] = v17;
  v16[2] = v66;
  v18 = [objc_opt_self() quaternarySystemFillColor];
  v19 = sub_1CAD4D7D4();
  v20 = sub_1CAD4D1D4();
  v21 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465828) + 36)];
  *v21 = v19;
  v21[8] = v20;
  v22 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465830) + 36)];
  v23 = *(sub_1CAD4C974() + 20);
  v24 = *MEMORY[0x1E697F470];
  v25 = sub_1CAD4CD24();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #8.0 }

  *v22 = _Q0;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463808) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v32 = &v5[*(v3 + 36)];
  *v32 = KeyPath;
  v32[8] = 1;
  sub_1CAC54704();
  sub_1CAD4D524();
  sub_1CAB21B68(v5, &qword_1EC465810);
  v33 = a1[5];
  v62 = a1[4];
  v63 = v33;

  v34 = sub_1CAD4D444();
  v36 = v35;
  v38 = v37;
  sub_1CAD4D264();
  v39 = sub_1CAD4D424();
  v41 = v40;
  v56 = v42;
  v44 = v43;

  sub_1CABA6128(v34, v36, v38 & 1);

  v45 = *(v6 + 16);
  v46 = v58;
  v47 = v60;
  v45(v58, v10, v60);
  v48 = v59;
  v45(v59, v46, v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465878);
  v50 = &v48[*(v49 + 48)];
  *v50 = v39;
  *(v50 + 1) = v41;
  v51 = v56;
  LOBYTE(v34) = v56 & 1;
  v50[16] = v56 & 1;
  *(v50 + 3) = v44;
  v52 = &v48[*(v49 + 64)];
  sub_1CABA4F48(v39, v41, v51 & 1);

  *v52 = 0;
  v52[8] = 1;
  v53 = *(v6 + 8);
  v53(v10, v47);
  sub_1CABA6128(v39, v41, v34);

  return (v53)(v46, v47);
}

uint64_t sub_1CAC52BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  *a1 = sub_1CAD4CC94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465808);
  return sub_1CAC52608(v6, (a1 + *(v4 + 44)));
}

uint64_t sub_1CAC52C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TravelTimeEditor.TravelTimeRowView(0);
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = v5;
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v51 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v50 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v38 - v9;
  v10 = *(a1 + *(v4 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  sub_1CAD4DBF4();
  v11 = v77;
  swift_getKeyPath();
  *&v77 = v11;
  sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v12 = *(v11 + 480);

  if (v10 == v12)
  {
    v13 = sub_1CAD4D8F4();
    v14 = sub_1CAD4D804();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    LOBYTE(v66) = v62;
    v53 = v64;
    LOBYTE(v54[0]) = 0;
    *&v77 = v13;
    *(&v77 + 1) = v14;
    *&v78 = v61;
    BYTE8(v78) = v62;
    *&v79 = v63;
    BYTE8(v79) = v64;
    v80 = v65;
    v81 = 0;
  }

  else
  {
    LOBYTE(v54[0]) = 1;
    v81 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4657D8);
  sub_1CAC54480();
  sub_1CAC5450C();
  sub_1CAD4CE24();
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v72 = v56;
  v73 = v57;
  v79 = v58;
  v80 = v59;
  v81 = v60;
  v77 = v56;
  v78 = v57;
  v15 = *(a1 + *(v4 + 24));
  v48 = a2;
  sub_1CAB23A9C(&v77, &v56, &qword_1EC4657F0);
  if (v15)
  {
    sub_1CAD4DBF4();

    v16 = sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v43 = v67;
    v44 = v66;
    v41 = v69;
    v42 = v68;
    v39 = v71;
    v40 = v70;
    v52 = v16;
  }

  else
  {
    v52 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
  }

  v17 = v47;
  sub_1CAC54340(a1, v47, type metadata accessor for TravelTimeEditor.TravelTimeRowView);
  v18 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v19 = swift_allocObject();
  v20 = sub_1CAC543A8(v17, v19 + v18, type metadata accessor for TravelTimeEditor.TravelTimeRowView);
  MEMORY[0x1EEE9AC00](v20);
  *(&v38 - 2) = a1;
  v21 = v49;
  sub_1CAD4D9E4();
  v23 = v50;
  v22 = v51;
  v24 = *(v51 + 16);
  v24(v50, v21, v6);
  v25 = v75;
  v54[2] = v74;
  v54[3] = v75;
  v26 = v76;
  v55 = v76;
  v28 = v72;
  v27 = v73;
  v54[0] = v72;
  v54[1] = v73;
  v29 = v48;
  *(v48 + 32) = v74;
  *(v29 + 48) = v25;
  *(v29 + 64) = v26;
  *v29 = v28;
  *(v29 + 16) = v27;
  v30 = v43;
  v31 = v44;
  *(v29 + 72) = v52;
  *(v29 + 80) = v31;
  *(v29 + 88) = v30;
  v32 = v41;
  *(v29 + 96) = v42;
  *(v29 + 104) = v32;
  v33 = v39;
  *(v29 + 112) = v40;
  *(v29 + 120) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4657F8);
  v24((v29 + *(v34 + 64)), v23, v6);
  v35 = v29 + *(v34 + 80);
  sub_1CAB23A9C(v54, &v56, &qword_1EC465800);
  sub_1CAB21B68(&v77, &qword_1EC4657F0);
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = *(v22 + 8);
  v36(v21, v6);
  v36(v23, v6);

  v59 = v75;
  v60 = v76;
  v57 = v73;
  v58 = v74;
  v56 = v72;
  return sub_1CAB21B68(&v56, &qword_1EC4657F0);
}

uint64_t sub_1CAC532D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  sub_1CAD4DBF4();
  v2 = type metadata accessor for TravelTimeEditor.TravelTimeRowView(0);
  v3 = *(a1 + *(v2 + 20));
  if (*(v7 + 480) == v3)
  {
    *(v7 + 480) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }

  sub_1CAD4DBF4();
  if (*(v7 + 488) != *(a1 + *(v2 + 24)))
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1CAC53EFC(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CAC53544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TravelTimeEditor.TravelTimeRowView(0);
  v5 = CUIKDisplayStringForTravelTimeUsingShortFormat(1, *(a1 + *(v4 + 20)));
  sub_1CAD4DF94();

  sub_1CABA6054();
  result = sub_1CAD4D444();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

double sub_1CAC535D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for TravelTimeEditor.TravelTimeRowView(0) + 24));
  v3 = sub_1CAD4CD84();
  MEMORY[0x1CCAA5B10](v3);
  if (v2)
  {
    return result + -40.0;
  }

  return result;
}

uint64_t sub_1CAC53628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_1CAD4CC94();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4657C8);
  sub_1CAC52C28(v3, a2 + *(v8 + 44));
  v9 = sub_1CAD4CD84();
  sub_1CAC54340(v3, v7, type metadata accessor for TravelTimeEditor.TravelTimeRowView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1CAC543A8(v7, v11 + v10, type metadata accessor for TravelTimeEditor.TravelTimeRowView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4657D0);
  v13 = (a2 + *(result + 36));
  *v13 = v9;
  v13[1] = sub_1CAC54410;
  v13[2] = v11;
  return result;
}

uint64_t sub_1CAC53798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465608);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465610);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465620);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465628);
  sub_1CAC53948();
  sub_1CABA6054();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1CAB23B0C(&qword_1EC465648, &qword_1EC465618);
  swift_getOpaqueTypeConformance2();
  return sub_1CAD4C924();
}

unint64_t sub_1CAC53948()
{
  result = qword_1EC465630;
  if (!qword_1EC465630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465628);
    sub_1CAB23B0C(&qword_1EC465638, &qword_1EC465640);
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465630);
  }

  return result;
}

unint64_t sub_1CAC53A44()
{
  result = qword_1EC465678;
  if (!qword_1EC465678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465670);
    sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465678);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for TravelTimeEditor(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1CAD4C784();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAC53CFC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1CAC53D80()
{
  result = qword_1EC4656A0;
  if (!qword_1EC4656A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465698);
    sub_1CAB23B0C(&qword_1EC4656A8, &qword_1EC4656B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4656A0);
  }

  return result;
}

unint64_t sub_1CAC53E48()
{
  result = qword_1EC4656D0;
  if (!qword_1EC4656D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4656C8);
    sub_1CAC53EFC(&qword_1EC4656D8, type metadata accessor for TravelTimeEditor.TravelTimeRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4656D0);
  }

  return result;
}

uint64_t sub_1CAC53EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAC53F64@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TravelTimeEditor(0);

  return sub_1CAC5177C(a1, a2);
}

uint64_t sub_1CAC53FE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TravelTimeEditor(0);

  return sub_1CAC51264(a1, a2);
}

uint64_t sub_1CAC54064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC54108@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TravelTimeEditor(0);

  return sub_1CAC50DAC(a1);
}

uint64_t sub_1CAC54178(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1CAC541C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1CAC5423C()
{
  sub_1CAC4E4E4(319, &qword_1EC465600, type metadata accessor for TravelTimeViewModel, MEMORY[0x1E6981A98]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EKLocationRoutingMode(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CAC54340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC543A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1CAC54410(uint64_t a1)
{
  v3 = *(type metadata accessor for TravelTimeEditor.TravelTimeRowView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CAC535D8(a1, v4);
}

unint64_t sub_1CAC54480()
{
  result = qword_1EC4657E0;
  if (!qword_1EC4657E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4657D8);
    sub_1CABC16EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4657E0);
  }

  return result;
}

unint64_t sub_1CAC5450C()
{
  result = qword_1EC4657E8;
  if (!qword_1EC4657E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4657E8);
  }

  return result;
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(type metadata accessor for TravelTimeEditor.TravelTimeRowView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_1CAC54704()
{
  result = qword_1EC465838;
  if (!qword_1EC465838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465810);
    sub_1CAC547BC();
    sub_1CAB23B0C(&qword_1EC465868, &qword_1EC465870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465838);
  }

  return result;
}

unint64_t sub_1CAC547BC()
{
  result = qword_1EC465840;
  if (!qword_1EC465840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465830);
    sub_1CAC54874();
    sub_1CAB23B0C(&qword_1EC463838, &qword_1EC463808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465840);
  }

  return result;
}

unint64_t sub_1CAC54874()
{
  result = qword_1EC465848;
  if (!qword_1EC465848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465828);
    sub_1CAC5492C();
    sub_1CAB23B0C(&qword_1EC465858, &qword_1EC465860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465848);
  }

  return result;
}

unint64_t sub_1CAC5492C()
{
  result = qword_1EC465850;
  if (!qword_1EC465850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465820);
    sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465850);
  }

  return result;
}

unint64_t sub_1CAC549E4()
{
  result = qword_1EC465880;
  if (!qword_1EC465880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4657D0);
    sub_1CAB23B0C(&qword_1EC465888, &qword_1EC465890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465880);
  }

  return result;
}

uint64_t EventLocationPredictedLOIModelObject.customLabel.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EventLocationPredictedLOIModelObject.customLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t EventLocationPredictedLOIModelObject.mapItemName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EventLocationPredictedLOIModelObject.mapItemName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EventLocationPredictedLOIModelObject.addressCountryCode.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EventLocationPredictedLOIModelObject.addressCountryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t EventLocationPredictedLOIModelObject.addressThoroughfare.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t EventLocationPredictedLOIModelObject.addressThoroughfare.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t EventLocationPredictedLOIModelObject.addressLocality.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t EventLocationPredictedLOIModelObject.addressLocality.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

__n128 EventLocationPredictedLOIModelObject.init(type:customLabel:mapItemName:addressCountryCode:addressThoroughfare:addressLocality:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t EventLocationPredictedLOIModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  v31 = v14;
  v32 = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v30 = (*(v16 + 32))(v15, v16);
  v34 = v17;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 40))(v18, v19);
  *&v29 = v21;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  *(&v29 + 1) = (*(v23 + 48))(v22, v23);
  v25 = v24;
  *&v35 = v5;
  *(&v35 + 1) = v8;
  *&v36 = v10;
  *(&v36 + 1) = v32;
  *&v37 = v31;
  *(&v37 + 1) = v30;
  *&v38 = v34;
  *(&v38 + 1) = v20;
  v39 = v29;
  v40 = v24;
  *(a2 + 80) = v24;
  v26 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v26;
  *(a2 + 64) = v39;
  v27 = v36;
  *a2 = v35;
  *(a2 + 16) = v27;
  sub_1CAC54FBC(&v35, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41[0] = v5;
  v41[1] = v8;
  v41[2] = v10;
  v41[3] = v32;
  v41[4] = v31;
  v41[5] = v30;
  v41[6] = v34;
  v41[7] = v20;
  v42 = v29;
  v43 = v25;
  return sub_1CAC54FF4(v41);
}

uint64_t EventLocationPredictedLOIModelObject.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[8];
  v5 = v0[10];
  MEMORY[0x1CCAA7D10](*v0);
  if (v1)
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1CAD4EAA4();
    if (v2)
    {
LABEL_3:
      sub_1CAD4EAA4();
      sub_1CAD4E054();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_1CAD4EAA4();
  if (v3)
  {
LABEL_4:
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_1CAD4EAA4();
    if (v5)
    {
      goto LABEL_6;
    }

    return sub_1CAD4EAA4();
  }

LABEL_11:
  sub_1CAD4EAA4();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (!v5)
  {
    return sub_1CAD4EAA4();
  }

LABEL_6:
  sub_1CAD4EAA4();

  return sub_1CAD4E054();
}

uint64_t EventLocationPredictedLOIModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventLocationPredictedLOIModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC551C4()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1CAC551F4()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1CAC55224()
{
  sub_1CAD4EA84();
  EventLocationPredictedLOIModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC55268()
{
  sub_1CAD4EA84();
  EventLocationPredictedLOIModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

unint64_t sub_1CAC552A8()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x4C73736572646461;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x614C6D6F74737563;
  if (v1 != 1)
  {
    v5 = 0x4E6D65744970616DLL;
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

uint64_t sub_1CAC5537C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC56258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC553A4(uint64_t a1)
{
  v2 = sub_1CAC55E5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC553E0(uint64_t a1)
{
  v2 = sub_1CAC55E5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventLocationPredictedLOIModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4658A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC55E5C();
  sub_1CAD4EAE4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for RTLocationOfInterestType(0);
    LOBYTE(v38) = 0;
    sub_1CAC56470(&qword_1EC4658B8);
    sub_1CAD4E8C4();
    v9 = v44[0];
    LOBYTE(v44[0]) = 1;
    v10 = sub_1CAD4E824();
    v12 = v11;
    v37 = v10;
    v36 = a2;
    LOBYTE(v44[0]) = 2;
    v13 = sub_1CAD4E824();
    v15 = v14;
    v34 = v13;
    v35 = v6;
    LOBYTE(v44[0]) = 3;
    v16 = sub_1CAD4E824();
    v18 = v17;
    v33 = v16;
    v32 = v9;
    LOBYTE(v44[0]) = 4;
    v19 = sub_1CAD4E824();
    v21 = v20;
    v31 = v19;
    v45 = 5;
    v22 = sub_1CAD4E824();
    v23 = v8;
    v25 = v24;
    (*(v35 + 8))(v23, v5);
    v26 = v32;
    *&v38 = v32;
    *(&v38 + 1) = v37;
    *&v39 = v12;
    *(&v39 + 1) = v34;
    *&v40 = v15;
    *(&v40 + 1) = v33;
    *&v41 = v18;
    *(&v41 + 1) = v31;
    *&v42 = v21;
    *(&v42 + 1) = v22;
    v43 = v25;
    v27 = v36;
    *(v36 + 80) = v25;
    v28 = v41;
    v27[2] = v40;
    v27[3] = v28;
    v27[4] = v42;
    v29 = v39;
    *v27 = v38;
    v27[1] = v29;
    sub_1CAC54FBC(&v38, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v44[0] = v26;
    v44[1] = v37;
    v44[2] = v12;
    v44[3] = v34;
    v44[4] = v15;
    v44[5] = v33;
    v44[6] = v18;
    v44[7] = v31;
    v44[8] = v21;
    v44[9] = v22;
    v44[10] = v25;
    return sub_1CAC54FF4(v44);
  }
}

uint64_t EventLocationPredictedLOIModelObject.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4658C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16[9] = v1[2];
  v16[10] = v8;
  v11 = v1[5];
  v16[7] = v1[4];
  v16[8] = v10;
  v12 = v1[7];
  v16[5] = v1[6];
  v16[6] = v11;
  v13 = v1[9];
  v16[3] = v1[8];
  v16[4] = v12;
  v14 = v1[10];
  v16[1] = v13;
  v16[2] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC55E5C();
  sub_1CAD4EB04();
  v23 = v9;
  v22 = 0;
  type metadata accessor for RTLocationOfInterestType(0);
  sub_1CAC56470(&qword_1EC4658C8);
  sub_1CAD4E984();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v21 = 1;
  sub_1CAD4E904();
  v20 = 2;
  sub_1CAD4E904();
  v19 = 3;
  sub_1CAD4E904();
  v18 = 4;
  sub_1CAD4E904();
  v17 = 5;
  sub_1CAD4E904();
  return (*(v5 + 8))(v7, v4);
}

uint64_t _s13CalendarUIKit36EventLocationPredictedLOIModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  v9 = a1[9];
  v11 = a1[10];
  v12 = a2[2];
  v13 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v17 = a2[6];
  v16 = a2[7];
  v18 = a2[8];
  v19 = a2[9];
  v20 = a2[10];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v3 != v12)
    {
      v45 = a1[8];
      v47 = a2[8];
      v43 = a2[9];
      v44 = a1[7];
      v41 = a1[10];
      v42 = a2[10];
      v21 = a1[9];
      v22 = a2[7];
      v23 = a1[6];
      v24 = a1[5];
      v25 = a2[6];
      v26 = a2[5];
      v27 = a1[3];
      v28 = sub_1CAD4E9E4();
      v4 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v30 = v16;
      v31 = v7;
      v32 = v5;
      v33 = v14;
      v34 = sub_1CAD4E9E4();
      v14 = v33;
      v9 = v46;
      v17 = v48;
      v5 = v32;
      v7 = v31;
      v16 = v30;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v35 = v18;
      v36 = v9;
      v37 = v16;
      v38 = sub_1CAD4E9E4();
      v16 = v37;
      v9 = v36;
      v18 = v35;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v39 = v9;
      v40 = sub_1CAD4E9E4();
      v9 = v39;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_1CAD4E9E4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1CAC55E5C()
{
  result = qword_1EC4658B0;
  if (!qword_1EC4658B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4658B0);
  }

  return result;
}

unint64_t sub_1CAC55EB4()
{
  result = qword_1EC4658D0;
  if (!qword_1EC4658D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4658D0);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1CAC55F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1CAC55F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventLocationPredictedLOIModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventLocationPredictedLOIModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CAC56154()
{
  result = qword_1EC4658D8;
  if (!qword_1EC4658D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4658D8);
  }

  return result;
}

unint64_t sub_1CAC561AC()
{
  result = qword_1EC4658E0;
  if (!qword_1EC4658E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4658E0);
  }

  return result;
}

unint64_t sub_1CAC56204()
{
  result = qword_1EC4658E8;
  if (!qword_1EC4658E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4658E8);
  }

  return result;
}

uint64_t sub_1CAC56258(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6D6F74737563 && a2 == 0xEB000000006C6562 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E6D65744970616DLL && a2 == 0xEB00000000656D61 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CAD76390 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CAD763B0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C73736572646461 && a2 == 0xEF7974696C61636FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC56470(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RTLocationOfInterestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CAC564DC(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1CAD4D7D4();
  *a3 = result;
  return result;
}

uint64_t EventIntegrationModel.displayColor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v12);
  v2 = v13;
  if (v13)
  {
    v3 = v12;
    v4 = v14;
    v5 = v15;
    v6 = objc_opt_self();
    v7 = sub_1CAD4C014();
    v8 = sub_1CAD4DF54();
    v9 = [v6 deserializeColor:v7 providerIdentifier:v8];

    if (v9)
    {
      v10 = sub_1CAD4D7D4();
      sub_1CAC3C300(v3, v2, v4, v5);
      return v10;
    }

    sub_1CAC3C300(v3, v2, v4, v5);
  }

  return 0;
}

uint64_t static EventIntegrationColor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1CAD4E9E4() & 1) == 0)
  {
    return 0;
  }

  return sub_1CAC57310(v2, v3, v4, v5);
}

uint64_t sub_1CAC566B4()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1CAC566EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001CAD76300 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC567D4(uint64_t a1)
{
  v2 = sub_1CAC57478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC56810(uint64_t a1)
{
  v2 = sub_1CAC57478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventIntegrationColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4658F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC57478();
  sub_1CAD4EB04();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_1CAD4E934();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_1CABB8BB4(v12, v11);
    sub_1CAC574CC();
    sub_1CAD4E984();
    sub_1CABB8C1C(v14, v15);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t EventIntegrationColor.hash(into:)()
{
  sub_1CAD4E054();

  return sub_1CAD4C034();
}

uint64_t EventIntegrationColor.hashValue.getter()
{
  sub_1CAD4EA84();
  sub_1CAD4E054();
  sub_1CAD4C034();
  return sub_1CAD4EAC4();
}

uint64_t EventIntegrationColor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465908);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC57478();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = sub_1CAD4E884();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  sub_1CAC57520();
  sub_1CAD4E8C4();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  sub_1CABB8BB4(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1CABB8C1C(v13, v14);
}

uint64_t sub_1CAC56CC0()
{
  sub_1CAD4EA84();
  sub_1CAD4E054();
  sub_1CAD4C034();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC56D28()
{
  sub_1CAD4E054();

  return sub_1CAD4C034();
}

uint64_t sub_1CAC56D78()
{
  sub_1CAD4EA84();
  sub_1CAD4E054();
  sub_1CAD4C034();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC56E0C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1CAD4E9E4() & 1) == 0)
  {
    return 0;
  }

  return sub_1CAC57310(v2, v3, v4, v5);
}

uint64_t sub_1CAC56E98@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1CAD4BCA4();
    if (v10)
    {
      v11 = sub_1CAD4BCC4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1CAD4BCB4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1CAD4BCA4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1CAD4BCC4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1CAD4BCB4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CAC570C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1CAC57258(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1CABB8C1C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1CAC56E98(v13, a3, a4, &v12);
  v10 = v4;
  sub_1CABB8C1C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1CAC57258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1CAD4BCA4();
  v11 = result;
  if (result)
  {
    result = sub_1CAD4BCC4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CAD4BCB4();
  sub_1CAC56E98(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1CAC57310(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1CABB8BB4(a3, a4);
          return sub_1CAC570C8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1CAC57478()
{
  result = qword_1EC465900;
  if (!qword_1EC465900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465900);
  }

  return result;
}

unint64_t sub_1CAC574CC()
{
  result = qword_1EC467100[0];
  if (!qword_1EC467100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC467100);
  }

  return result;
}

unint64_t sub_1CAC57520()
{
  result = qword_1EC4670F0;
  if (!qword_1EC4670F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4670F0);
  }

  return result;
}

unint64_t sub_1CAC57578()
{
  result = qword_1EC465910;
  if (!qword_1EC465910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465910);
  }

  return result;
}

unint64_t sub_1CAC5762C()
{
  result = qword_1EC465918;
  if (!qword_1EC465918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465918);
  }

  return result;
}

unint64_t sub_1CAC57684()
{
  result = qword_1EC465920;
  if (!qword_1EC465920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465920);
  }

  return result;
}

unint64_t sub_1CAC576DC()
{
  result = qword_1EC465928;
  if (!qword_1EC465928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465928);
  }

  return result;
}

uint64_t type metadata accessor for PreviewController()
{
  result = qword_1EC465930;
  if (!qword_1EC465930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CAC577A4()
{
  result = type metadata accessor for EventAttachmentModelObject();
  if (v1 <= 0x3F)
  {
    result = sub_1CAC57828();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CAC57828()
{
  result = qword_1EC465940;
  if (!qword_1EC465940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC465940);
  }

  return result;
}

id sub_1CAC578A8(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + *(a2 + 20)) previewController];

  return v3;
}

uint64_t sub_1CAC578E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAC57A2C(&qword_1EC465950);

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1CAC57968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAC57A2C(&qword_1EC465950);

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1CAC579E8()
{
  sub_1CAC57A2C(&qword_1EC465950);
  sub_1CAD4D144();
  __break(1u);
}

uint64_t sub_1CAC57A2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *EventLocationModelObject.geoLocation.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

__n128 EventLocationModelObject.init(title:geoLocation:radius:address:contactLabel:mapKitHandle:isImprecise:predictedLOI:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, uint64_t a13)
{
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a10;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  sub_1CABB8C08(0, 0xF000000000000000);
  *(a9 + 64) = a8;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  v15 = *(a9 + 136);
  v20[2] = *(a9 + 120);
  v20[3] = v15;
  v20[4] = *(a9 + 152);
  v21 = *(a9 + 168);
  v16 = *(a9 + 104);
  v20[0] = *(a9 + 88);
  v20[1] = v16;
  sub_1CAB21B68(v20, &qword_1EC463C20);
  v17 = *(a13 + 48);
  *(a9 + 120) = *(a13 + 32);
  *(a9 + 136) = v17;
  *(a9 + 152) = *(a13 + 64);
  *(a9 + 168) = *(a13 + 80);
  result = *a13;
  v19 = *(a13 + 16);
  *(a9 + 88) = *a13;
  *(a9 + 104) = v19;
  return result;
}

uint64_t EventLocationModelObject.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventLocationModelObject.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventLocationModelObject.address.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EventLocationModelObject.address.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t EventLocationModelObject.contactLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EventLocationModelObject.contactLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t EventLocationModelObject.mapKitHandle.getter()
{
  v1 = *(v0 + 64);
  sub_1CABF2B60(v1, *(v0 + 72));
  return v1;
}

uint64_t EventLocationModelObject.mapKitHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1CABB8C08(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t EventLocationModelObject.predictedLOI.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1CAB23A9C(v9, v8, &qword_1EC463C20);
}

__n128 EventLocationModelObject.predictedLOI.setter(uint64_t a1)
{
  v3 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v3;
  v8[4] = *(v1 + 152);
  v9 = *(v1 + 168);
  v4 = *(v1 + 104);
  v8[0] = *(v1 + 88);
  v8[1] = v4;
  sub_1CAB21B68(v8, &qword_1EC463C20);
  v5 = *(a1 + 48);
  *(v1 + 120) = *(a1 + 32);
  *(v1 + 136) = v5;
  *(v1 + 152) = *(a1 + 64);
  *(v1 + 168) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v7;
  return result;
}

uint64_t EventLocationModelObject.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v60 = a2;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v58 = v6;
  v59 = v5;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v57 = (*(v8 + 32))(v7, v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 40))(v9, v10);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 48))(v12, v13);
  v55 = v15;
  v56 = v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v72 = (*(v17 + 56))(v16, v17);
  v54 = v18;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v53 = (*(v20 + 64))(v19, v20);
  v71 = v21;
  sub_1CABB8C08(0, 0xF000000000000000);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v52 = (*(v23 + 72))(v22, v23);
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v70 = *(v24 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_1CAD4E4D4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  v70(v25, v24);
  v31 = *(AssociatedTypeWitness - 8);
  if ((*(v31 + 48))(v30, 1, AssociatedTypeWitness) == 1)
  {
    (*(v28 + 8))(v30, v27);
    AssociatedConformanceWitness = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v113);
    (*(v31 + 32))(boxed_opaque_existential_1, v30, AssociatedTypeWitness);
  }

  sub_1CAB23A9C(&v113, &v111, &qword_1EC464C60);
  if (v112)
  {
    sub_1CAC11E60(&v111, &v78);
    sub_1CAB299C0(&v78, v73);
    EventLocationPredictedLOIModelObject.init(_:)(v73, &v89);
    v69 = v90;
    v70 = v89;
    v67 = v93;
    v68 = v92;
    v66 = v94;
    v65 = v95;
    v63 = v91;
    v64 = v96;
    v61 = v98;
    v62 = v97;
    v51 = v99;
    __swift_destroy_boxed_opaque_existential_1(&v78);
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0.0;
    v65 = 0;
    v66 = 0;
    v61 = 0;
    v62 = 0;
    v51 = 0;
    v63 = 1;
    v64 = 0;
  }

  v33 = v52 & 1;
  v52 &= 1u;
  sub_1CAB21B68(&v113, &qword_1EC464C60);
  v73[0] = 0;
  v73[1] = 0;
  v73[2] = 1;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  sub_1CAB21B68(v73, &qword_1EC463C20);
  v35 = v58;
  v34 = v59;
  *&v78 = v59;
  *(&v78 + 1) = v58;
  v37 = v56;
  v36 = v57;
  *&v79 = v57;
  *(&v79 + 1) = v11;
  v38 = v54;
  v39 = v55;
  *&v80 = v56;
  *(&v80 + 1) = v55;
  *&v81 = v72;
  *(&v81 + 1) = v54;
  v40 = v53;
  *&v82 = v53;
  *(&v82 + 1) = v71;
  LOBYTE(v83) = v33;
  *(&v83 + 1) = v116[0];
  DWORD1(v83) = *(v116 + 3);
  *(&v83 + 1) = v70;
  *&v84 = v69;
  *(&v84 + 1) = v63;
  *&v85 = v68;
  *(&v85 + 1) = v67;
  *&v86 = v66;
  *(&v86 + 1) = v65;
  *&v87 = v64;
  *(&v87 + 1) = v62;
  v41 = v51;
  *&v88 = v61;
  *(&v88 + 1) = v51;
  v42 = v79;
  v43 = v80;
  v44 = v60;
  *v60 = v78;
  v44[1] = v42;
  v45 = v81;
  v46 = v83;
  v47 = v84;
  v44[4] = v82;
  v44[5] = v46;
  v44[2] = v43;
  v44[3] = v45;
  v48 = v88;
  v44[9] = v87;
  v44[10] = v48;
  v49 = v86;
  v44[7] = v85;
  v44[8] = v49;
  v44[6] = v47;
  sub_1CABD3C1C(&v78, &v89);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v89 = v34;
  v90 = v35;
  v91 = v36;
  v92 = v11;
  v93 = v37;
  v94 = v39;
  v95 = v72;
  v96 = v38;
  v97 = v40;
  v98 = v71;
  LOBYTE(v99) = v52;
  *(&v99 + 1) = v116[0];
  HIDWORD(v99) = *(v116 + 3);
  v100 = v70;
  v101 = v69;
  v102 = v63;
  v103 = v68;
  v104 = v67;
  v105 = v66;
  v106 = v65;
  v107 = v64;
  v108 = v62;
  v109 = v61;
  v110 = v41;
  return sub_1CABD3C78(&v89);
}

uint64_t EventLocationModelObject.hash(into:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 104);
  if (*(v0 + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v2)
    {
LABEL_3:
      sub_1CAD4EAA4();
      v8 = v2;
      sub_1CAD4E4A4();

      goto LABEL_6;
    }
  }

  else
  {
    sub_1CAD4EAA4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_1CAD4EAA4();
LABEL_6:
  v9 = 0.0;
  if (v3 != 0.0)
  {
    v9 = v3;
  }

  MEMORY[0x1CCAA7D30](*&v9);
  if (v4)
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v5)
    {
LABEL_10:
      sub_1CAD4EAA4();
      sub_1CAD4E054();
      goto LABEL_13;
    }
  }

  else
  {
    sub_1CAD4EAA4();
    if (v5)
    {
      goto LABEL_10;
    }
  }

  sub_1CAD4EAA4();
LABEL_13:
  sub_1CAD4EAA4();
  if (v6 >> 60 != 15)
  {
    sub_1CAD4C034();
  }

  sub_1CAD4EAA4();
  if (v7 == 1)
  {
    return sub_1CAD4EAA4();
  }

  v13 = *(v1 + 88);
  *&v14[8] = v1[7];
  *&v14[24] = v1[8];
  *&v14[40] = v1[9];
  *&v14[56] = v1[10];
  *v14 = v7;
  sub_1CAD4EAA4();
  v15 = *(v1 + 88);
  v16 = v7;
  v11 = v1[8];
  v17 = v1[7];
  v18 = v11;
  v12 = v1[10];
  v19 = v1[9];
  v20 = v12;
  sub_1CAC54FBC(&v15, v21);
  EventLocationPredictedLOIModelObject.hash(into:)();
  v21[2] = *&v14[16];
  v21[3] = *&v14[32];
  v21[4] = *&v14[48];
  v22 = *&v14[64];
  v21[0] = v13;
  v21[1] = *v14;
  return sub_1CAC54FF4(v21);
}

uint64_t EventLocationModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventLocationModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

void *sub_1CAC587F0()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1CAC58820()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1CAC58850()
{
  v1 = *(v0 + 64);
  sub_1CABF2B60(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_1CAC5888C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1CAB23A9C(v9, v8, &qword_1EC463C20);
}

uint64_t sub_1CAC58900()
{
  sub_1CAD4EA84();
  EventLocationModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC58944()
{
  sub_1CAD4EA84();
  EventLocationModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC58984()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x636572706D497369;
  if (v1 != 6)
  {
    v3 = 0x6574636964657270;
  }

  v4 = 0x4C746361746E6F63;
  if (v1 != 4)
  {
    v4 = 0x614874694B70616DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x737569646172;
  if (v1 != 2)
  {
    v5 = 0x73736572646461;
  }

  if (*v0)
  {
    v2 = 0x7461636F4C6F6567;
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

uint64_t sub_1CAC58AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC5A084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC58AC8(uint64_t a1)
{
  v2 = sub_1CAC59CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC58B04(uint64_t a1)
{
  v2 = sub_1CAC59CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventLocationModelObject.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465958);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - v7;
  v9 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CAC59CAC();
  sub_1CAD4EAE4();
  if (v2)
  {
    v63 = v2;
    v12 = 0;
    v13 = 0;
    v14 = 0xF000000000000000;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v62);

    sub_1CABB8C08(v12, v14);
    v80 = 0;
    v81 = 0;
    v82 = 1;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    return sub_1CAB21B68(&v80, &qword_1EC463C20);
  }

  v61 = v6;
  LOBYTE(v80) = 0;
  v10 = sub_1CAD4E824();
  v63 = 0;
  v16 = v10;
  v60 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465968);
  LOBYTE(v69) = 1;
  sub_1CAC59D54(&qword_1EC465970);
  v17 = v63;
  sub_1CAD4E8C4();
  v18 = v61;
  if (v17)
  {
    v63 = v17;
    (*(v61 + 8))(v8, v5);
    v12 = 0;
    v13 = 0;
    v14 = 0xF000000000000000;
    goto LABEL_4;
  }

  v59 = v80;
  LOBYTE(v80) = 2;
  v19 = COERCE_DOUBLE(sub_1CAD4E844());
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  LOBYTE(v80) = 3;
  v22 = sub_1CAD4E824();
  v58 = v23;
  LOBYTE(v80) = 4;
  v24 = sub_1CAD4E824();
  v63 = 0;
  v26 = v25;
  v57 = v24;
  LOBYTE(v69) = 5;
  sub_1CAC57520();
  v27 = v63;
  sub_1CAD4E874();
  v63 = v27;
  if (v27)
  {
    (*(v18 + 8))(v8, v5);
    v12 = 0;
    v14 = 0xF000000000000000;
LABEL_15:
    v13 = v59;
    goto LABEL_4;
  }

  v56 = v22;
  v12 = v80;
  v14 = v81;
  sub_1CABB8C08(0, 0xF000000000000000);
  LOBYTE(v80) = 6;
  v28 = v63;
  v29 = sub_1CAD4E834();
  v63 = v28;
  if (v28 || (v55 = v29, v98 = 7, sub_1CAC59D00(), v30 = v63, sub_1CAD4E874(), (v63 = v30) != 0))
  {
    (*(v61 + 8))(v8, v5);
    goto LABEL_15;
  }

  v55 &= 1u;
  (*(v61 + 8))(v8, v5);
  v31 = v99;
  v32 = v102;
  v61 = v101;
  v49 = v102;
  v50 = v99;
  v33 = v104;
  v46 = v103;
  v47 = v100;
  v48 = v104;
  v45 = v105;
  v53 = v107;
  v54 = v106;
  v51 = v109;
  v52 = v108;
  v64[0] = 0;
  v64[1] = 0;
  v64[2] = 1;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  sub_1CAB21B68(v64, &qword_1EC463C20);
  *&v69 = v16;
  *(&v69 + 1) = v60;
  *&v70 = v59;
  *(&v70 + 1) = v21;
  *&v71 = v56;
  *(&v71 + 1) = v58;
  *&v72 = v57;
  *(&v72 + 1) = v26;
  *&v73 = v12;
  *(&v73 + 1) = v14;
  LOBYTE(v74) = v55;
  *(&v74 + 1) = v31;
  v34 = v47;
  *&v75 = v47;
  *(&v75 + 1) = v61;
  *&v76 = v32;
  v35 = v46;
  *(&v76 + 1) = v46;
  *&v77 = v33;
  v36 = v45;
  *(&v77 + 1) = v45;
  *&v78 = v54;
  *(&v78 + 1) = v53;
  *&v79 = v52;
  *(&v79 + 1) = v51;
  v37 = v72;
  v38 = v74;
  v39 = v75;
  a2[4] = v73;
  a2[5] = v38;
  v40 = v69;
  v41 = v70;
  a2[2] = v71;
  a2[3] = v37;
  *a2 = v40;
  a2[1] = v41;
  v42 = v79;
  a2[9] = v78;
  a2[10] = v42;
  v43 = v77;
  a2[7] = v76;
  a2[8] = v43;
  a2[6] = v39;
  sub_1CABD3C1C(&v69, &v80);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v80 = v16;
  v81 = v60;
  v82 = v59;
  *&v83 = v21;
  *(&v83 + 1) = v56;
  *&v84 = v58;
  *(&v84 + 1) = v57;
  *&v85 = v26;
  *(&v85 + 1) = v12;
  *&v86 = v14;
  BYTE8(v86) = v55;
  v87 = v50;
  v88 = v34;
  v89 = v61;
  v90 = v49;
  v91 = v35;
  v92 = v48;
  v93 = v36;
  v94 = v54;
  v95 = v53;
  v96 = v52;
  v97 = v51;
  return sub_1CABD3C78(&v80);
}

uint64_t EventLocationModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465980);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  v24 = *(v1 + 32);
  v25 = v7;
  v23 = v8;
  v9 = *(v1 + 48);
  v21 = *(v1 + 56);
  v22 = v9;
  v10 = *(v1 + 72);
  *&v20 = *(v1 + 64);
  *(&v20 + 1) = v10;
  v19[3] = *(v1 + 80);
  v11 = *(v1 + 136);
  v38 = *(v1 + 120);
  v39 = v11;
  v40 = *(v1 + 152);
  v41 = *(v1 + 168);
  v12 = *(v1 + 104);
  v36 = *(v1 + 88);
  v37 = v12;
  v13 = a1[3];
  v14 = a1;
  v15 = v6;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1CAC59CAC();
  sub_1CAD4EB04();
  LOBYTE(v30) = 0;
  v16 = v26;
  sub_1CAD4E904();
  if (v16)
  {
    return (*(v4 + 8))(v15, v3);
  }

  *&v30 = v25;
  LOBYTE(v27[0]) = 1;
  v17 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465968);
  sub_1CAC59D54(&qword_1EC465988);
  sub_1CAD4E984();

  LOBYTE(v30) = 2;
  sub_1CAD4E954();
  LOBYTE(v30) = 3;
  sub_1CAD4E904();
  LOBYTE(v30) = 4;
  sub_1CAD4E904();
  v30 = v20;
  LOBYTE(v27[0]) = 5;
  sub_1CABF2B60(v20, *(&v20 + 1));
  sub_1CAC574CC();
  sub_1CAD4E924();
  sub_1CABB8C08(v30, *(&v30 + 1));
  LOBYTE(v30) = 6;
  sub_1CAD4E944();
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  v29 = 7;
  sub_1CAB23A9C(&v36, v27, &qword_1EC463C20);
  sub_1CAC59DA4();
  sub_1CAD4E924();
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v28 = v35;
  v27[0] = v30;
  v27[1] = v31;
  sub_1CAB21B68(v27, &qword_1EC463C20);
  return (*(v4 + 8))(v15, 0);
}

uint64_t _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 3);
  v8 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v10 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v14 = *(a1 + 80);
  v15 = *(a1 + 17);
  v116 = *(a1 + 15);
  v117 = v15;
  v118 = *(a1 + 19);
  v119 = a1[21];
  v16 = *(a1 + 13);
  v114 = *(a1 + 11);
  v115 = v16;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  v20 = *(a2 + 3);
  v22 = a2[4];
  v21 = a2[5];
  v23 = a2[6];
  v24 = a2[7];
  v26 = a2[8];
  v25 = a2[9];
  v93 = *(a2 + 80);
  v125 = a2[21];
  v27 = *(a2 + 19);
  v28 = *(a2 + 15);
  v123 = *(a2 + 17);
  v124 = v27;
  v29 = *(a2 + 11);
  v121 = *(a2 + 13);
  v122 = v28;
  v120 = v29;
  if (v5)
  {
    if (!v18)
    {
      goto LABEL_16;
    }

    if (*&v4 != *&v17 || v5 != v18)
    {
      v81 = v26;
      v83 = v11;
      v91 = v13;
      v79 = v25;
      v86 = v22;
      v88 = v24;
      v90 = v14;
      v30 = v12;
      v31 = v10;
      v32 = v23;
      v33 = v8;
      v34 = v9;
      v35 = v21;
      v36 = v6;
      v37 = sub_1CAD4E9E4();
      v6 = v36;
      v21 = v35;
      v22 = v86;
      v24 = v88;
      v9 = v34;
      v8 = v33;
      v23 = v32;
      v10 = v31;
      v12 = v30;
      v14 = v90;
      v25 = v79;
      v26 = v81;
      v13 = v91;
      v11 = v83;
      if ((v37 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_16;
  }

  if (!v6)
  {
    if (v19)
    {
      [v19 coordinate];
      goto LABEL_16;
    }

    v87 = v22;
    if (v7 != v20)
    {
      goto LABEL_16;
    }

LABEL_19:
    if (v9)
    {
      if (!v21)
      {
        goto LABEL_16;
      }

      if (v8 != v87 || v9 != v21)
      {
        v85 = v11;
        v47 = v25;
        v48 = v12;
        v49 = v10;
        v50 = v23;
        v51 = sub_1CAD4E9E4();
        v23 = v50;
        v10 = v49;
        v12 = v48;
        v25 = v47;
        v11 = v85;
        if ((v51 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v21)
    {
      goto LABEL_16;
    }

    if (v10)
    {
      if (!v24)
      {
        goto LABEL_16;
      }

      if (v11 != v23 || v10 != v24)
      {
        v52 = v25;
        v53 = v12;
        v54 = sub_1CAD4E9E4();
        v12 = v53;
        v25 = v52;
        if ((v54 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v24)
    {
      goto LABEL_16;
    }

    if (v13 >> 60 == 15)
    {
      if (v25 >> 60 == 15)
      {
        v55 = v25;
        v56 = v12;
        sub_1CABF2B60(v12, v13);
        sub_1CABF2B60(v26, v55);
        sub_1CABB8C08(v56, v13);
        if (v14 != v93)
        {
          goto LABEL_16;
        }

        goto LABEL_41;
      }
    }

    else if (v25 >> 60 != 15)
    {
      v58 = v12;
      sub_1CABF2B60(v12, v13);
      sub_1CABF2B60(v26, v25);
      sub_1CABF2B60(v58, v13);
      sub_1CABF2B60(v26, v25);
      v59 = sub_1CAC57310(v58, v13, v26, v25);
      v22 = v26;
      v60 = v25;
      v61 = v59;
      sub_1CABB8C08(v22, v60);
      sub_1CABB8C08(v22, v60);
      sub_1CABB8C08(v58, v13);
      sub_1CABB8C08(v58, v13);
      LOBYTE(v22) = 0;
      if (v61 & 1) == 0 || ((v14 ^ v93))
      {
        return v22 & 1;
      }

LABEL_41:
      v62 = v115;
      v22 = v121;
      if (v115 == 1)
      {
        if (v121 == 1)
        {
          v106 = *(a1 + 11);
          *v107 = 1;
          v63 = *(a1 + 8);
          *&v107[8] = *(a1 + 7);
          *&v107[24] = v63;
          v64 = *(a1 + 10);
          *&v107[40] = *(a1 + 9);
          *&v107[56] = v64;
          sub_1CAB23A9C(&v114, &v100, &qword_1EC463C20);
          sub_1CAB23A9C(&v120, &v100, &qword_1EC463C20);
          v65 = &v106;
LABEL_49:
          sub_1CAB21B68(v65, &qword_1EC463C20);
          return v22 & 1;
        }

        sub_1CAB23A9C(&v114, &v106, &qword_1EC463C20);
        sub_1CAB23A9C(&v120, &v106, &qword_1EC463C20);
      }

      else
      {
        *v107 = v115;
        v66 = *(a1 + 7);
        *&v107[24] = *(a1 + 8);
        *&v107[8] = v66;
        v67 = *(a1 + 10);
        *&v107[40] = *(a1 + 9);
        *&v107[56] = v67;
        v102 = *&v107[16];
        v103 = *&v107[32];
        v104 = *&v107[48];
        v106 = *(a1 + 11);
        v105 = *(&v67 + 1);
        v100 = v106;
        v101 = *v107;
        if (v121 != 1)
        {
          v98 = *(a2 + 11);
          v73 = *(a2 + 8);
          *&v99[8] = *(a2 + 7);
          *&v99[24] = v73;
          v74 = *(a2 + 10);
          *&v99[40] = *(a2 + 9);
          *&v99[56] = v74;
          *v99 = v121;
          LOBYTE(v22) = _s13CalendarUIKit36EventLocationPredictedLOIModelObjectV2eeoiySbAC_ACtFZ_0(&v100, &v98);
          v94[2] = *&v99[16];
          v94[3] = *&v99[32];
          v94[4] = *&v99[48];
          v95 = *&v99[64];
          v94[0] = v98;
          v94[1] = *v99;
          sub_1CAB23A9C(&v114, v96, &qword_1EC463C20);
          sub_1CAB23A9C(&v120, v96, &qword_1EC463C20);
          sub_1CAB23A9C(&v106, v96, &qword_1EC463C20);
          sub_1CAC54FF4(v94);
          v96[2] = v102;
          v96[3] = v103;
          v96[4] = v104;
          v97 = v105;
          v96[0] = v100;
          v96[1] = v101;
          sub_1CAC54FF4(v96);
          v98 = *(a1 + 11);
          *v99 = v62;
          v75 = *(a1 + 8);
          *&v99[8] = *(a1 + 7);
          *&v99[24] = v75;
          v76 = *(a1 + 10);
          *&v99[40] = *(a1 + 9);
          *&v99[56] = v76;
          v65 = &v98;
          goto LABEL_49;
        }

        *&v99[16] = *&v107[16];
        *&v99[32] = *&v107[32];
        *&v99[48] = *&v107[48];
        *&v99[64] = *&v107[64];
        v98 = v106;
        *v99 = *v107;
        sub_1CAB23A9C(&v114, v96, &qword_1EC463C20);
        sub_1CAB23A9C(&v120, v96, &qword_1EC463C20);
        sub_1CAB23A9C(&v106, v96, &qword_1EC463C20);
        sub_1CAC54FF4(&v98);
      }

      v106 = *(a1 + 11);
      v68 = *(a1 + 8);
      *&v107[8] = *(a1 + 7);
      *&v107[24] = v68;
      v69 = *(a1 + 10);
      *&v107[40] = *(a1 + 9);
      *&v107[56] = v69;
      v108 = *(a2 + 11);
      *v107 = v62;
      v109 = v22;
      v70 = *(a2 + 7);
      v71 = *(a2 + 8);
      v72 = *(a2 + 10);
      v112 = *(a2 + 9);
      v113 = v72;
      v110 = v70;
      v111 = v71;
      sub_1CAB21B68(&v106, &qword_1EC4659B8);
LABEL_16:
      LOBYTE(v22) = 0;
      return v22 & 1;
    }

    v57 = v12;
    sub_1CABF2B60(v12, v13);
    sub_1CABF2B60(v26, v25);
    sub_1CABB8C08(v57, v13);
    sub_1CABB8C08(v26, v25);
    goto LABEL_16;
  }

  v77 = v21;
  v78 = v9;
  v80 = v8;
  v82 = v23;
  v89 = v24;
  v38 = v10;
  v84 = v12;
  v92 = v13;
  v39 = v6;
  [v6 coordinate];
  if (!v19)
  {
    goto LABEL_16;
  }

  v41 = v40;
  [v19 coordinate];
  if (v41 != v42)
  {
    goto LABEL_16;
  }

  v87 = v22;
  [v39 coordinate];
  v44 = v43;
  [v19 coordinate];
  LOBYTE(v22) = 0;
  if (v44 == v45)
  {
    v13 = v92;
    v23 = v82;
    v12 = v84;
    v10 = v38;
    v24 = v89;
    v9 = v78;
    v8 = v80;
    v21 = v77;
    if (v7 == v20)
    {
      goto LABEL_19;
    }
  }

  return v22 & 1;
}

unint64_t sub_1CAC59CAC()
{
  result = qword_1EC465960;
  if (!qword_1EC465960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465960);
  }

  return result;
}

unint64_t sub_1CAC59D00()
{
  result = qword_1EC465978;
  if (!qword_1EC465978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465978);
  }

  return result;
}

uint64_t sub_1CAC59D54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465968);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAC59DA4()
{
  result = qword_1EC465990;
  if (!qword_1EC465990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465990);
  }

  return result;
}

unint64_t sub_1CAC59E08()
{
  result = qword_1EC465998;
  if (!qword_1EC465998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465998);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CalendarUIKit36EventLocationPredictedLOIModelObjectVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_1CAC59E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
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

uint64_t sub_1CAC59EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1CAC59F80()
{
  result = qword_1EC4659A0;
  if (!qword_1EC4659A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4659A0);
  }

  return result;
}

unint64_t sub_1CAC59FD8()
{
  result = qword_1EC4659A8;
  if (!qword_1EC4659A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4659A8);
  }

  return result;
}

unint64_t sub_1CAC5A030()
{
  result = qword_1EC4659B0;
  if (!qword_1EC4659B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4659B0);
  }

  return result;
}

uint64_t sub_1CAC5A084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636F4C6F6567 && a2 == 0xEB000000006E6F69 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614874694B70616DLL && a2 == 0xEC000000656C646ELL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x636572706D497369 && a2 == 0xEB00000000657369 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574636964657270 && a2 == 0xEC000000494F4C64)
  {

    return 7;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

size_t sub_1CAC5A324(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v7 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  result = swift_beginAccess();
  v21 = *(*(v3 + v7) + 16);
  if (v21)
  {
    v19 = v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
    swift_beginAccess();
    v9 = 0;
    v18 = a3 & 1;
    v20 = a2;
    while (1)
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      v10 = *(v4 + v7);
      if (v9 >= *(v10 + 16))
      {
        break;
      }

      v11 = type metadata accessor for EventAttachmentModelObject();
      v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
      v13 = *(*(v11 - 8) + 72) * v9;
      v14 = (v10 + v12 + v13);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (result = sub_1CAD4E9E4(), (result & 1) != 0))
      {
        swift_getKeyPath();
        sub_1CAD4C424();

        swift_getKeyPath();
        sub_1CAD4C444();

        swift_beginAccess();
        v16 = *(v4 + v7);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + v7) = v16;
        if ((result & 1) == 0)
        {
          result = sub_1CABF1ADC(v16);
          v16 = result;
        }

        if (v9 >= v16[2])
        {
          goto LABEL_16;
        }

        *(v16 + v12 + v13 + *(v11 + 36)) = v18;
        *(v4 + v7) = v16;
        swift_endAccess();
        swift_getKeyPath();
        sub_1CAD4C424();

        v17 = *(v4 + v7);
        swift_getKeyPath();

        sub_1CAD4C424();

        swift_getKeyPath();
        sub_1CAD4C444();

        *(v19 + *(type metadata accessor for EventModelObject() + 156)) = v17;

        swift_getKeyPath();
        sub_1CAD4C434();

        swift_getKeyPath();
        sub_1CAD4C434();

        a2 = v20;
      }

      if (v21 == ++v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

size_t sub_1CAC5A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v7 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  result = swift_beginAccess();
  v22 = *(*(v4 + v7) + 16);
  if (v22)
  {
    v19 = v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
    swift_beginAccess();
    v9 = 0;
    v20 = a2;
    while (1)
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      v10 = *(v5 + v7);
      if (v9 >= *(v10 + 16))
      {
        break;
      }

      v11 = type metadata accessor for EventAttachmentModelObject();
      v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
      v13 = *(*(v11 - 8) + 72) * v9;
      v14 = (v10 + v12 + v13);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (result = sub_1CAD4E9E4(), (result & 1) != 0))
      {
        swift_getKeyPath();

        sub_1CAD4C424();

        swift_getKeyPath();
        sub_1CAD4C444();

        swift_beginAccess();
        v16 = *(v5 + v7);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + v7) = v16;
        if ((result & 1) == 0)
        {
          result = sub_1CABF1ADC(v16);
          v16 = result;
          *(v5 + v7) = result;
        }

        if (v9 >= v16[2])
        {
          goto LABEL_16;
        }

        v17 = (v16 + v12 + *(v11 + 32) + v13);
        *v17 = a3;
        v17[1] = a4;
        *(v5 + v7) = v16;
        swift_endAccess();

        swift_getKeyPath();
        sub_1CAD4C424();

        v18 = *(v5 + v7);
        swift_getKeyPath();

        sub_1CAD4C424();

        swift_getKeyPath();
        sub_1CAD4C444();

        *(v19 + *(type metadata accessor for EventModelObject() + 156)) = v18;

        swift_getKeyPath();
        sub_1CAD4C434();

        swift_getKeyPath();
        sub_1CAD4C434();

        a2 = v20;
      }

      if (v22 == ++v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC5AAD4()
{
  v1 = type metadata accessor for EventAttachmentModelObject();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_getKeyPath();
  v16[0] = v0;
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v5 = [*(v0 + 16) attachments];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    v8 = sub_1CAD4E214();

    v9 = *(v8 + 16);
    if (v9)
    {
      v17 = v6;
      sub_1CACB9F74(0, v9, 0);
      v6 = v17;
      v10 = v8 + 32;
      do
      {
        sub_1CABD3CDC(v10, v16);
        sub_1CABD3CDC(v16, v15);
        sub_1CAC5AD50();
        swift_dynamicCast();
        sub_1CACA07A0(v14, v4);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v17 = v6;
        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1CACB9F74(v11 > 1, v12 + 1, 1);
          v6 = v17;
        }

        *(v6 + 16) = v12 + 1;
        sub_1CAC3F38C(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
        v10 += 32;
        --v9;
      }

      while (v9);
    }
  }

  return sub_1CACF5FA4(v6);
}

unint64_t sub_1CAC5ACF8()
{
  result = qword_1EC466AE0;
  if (!qword_1EC466AE0)
  {
    type metadata accessor for EventEditViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466AE0);
  }

  return result;
}

unint64_t sub_1CAC5AD50()
{
  result = qword_1EC464E58;
  if (!qword_1EC464E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC464E58);
  }

  return result;
}

uint64_t sub_1CAC5ADDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v6 = *a2;
  swift_beginAccess();
  return sub_1CAB23A9C(v5 + v6, a3, &qword_1EC4635D0);
}

uint64_t sub_1CAC5AED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1CAB23A9C(a1, &v11 - v8, &qword_1EC4635D0);
  return a5(v9);
}

uint64_t sub_1CAC5AF84()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8);
  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16);
  v6 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v5, v3);
  return v5;
}

uint64_t sub_1CAC5AFE8()
{
  swift_getKeyPath();
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1CAC5B094@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1CAC5B148()
{
  swift_getKeyPath();
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C414();
}

uint64_t sub_1CAC5B264@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v8 = v2;
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v5 = *a1;
  swift_beginAccess();
  v6 = sub_1CAD4BDC4();
  return (*(*(v6 - 8) + 16))(a2, v8 + v5, v6);
}

uint64_t sub_1CAC5B35C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1CAD4BDC4();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_1CAC5B458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1CAD4BDC4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_1CAC5B554(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  v6 = v4;
  v8 = sub_1CAD4BDC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, v6 + v12, v8);
  sub_1CAC64DD4(&qword_1EC465A40, MEMORY[0x1E6968278]);
  v19 = a1;
  LOBYTE(a1) = sub_1CAD4DED4();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (a1)
  {
    v13(v11, v19, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v12, v11, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v19;
    v18[-2] = v6;
    v18[-1] = v16;
    v20 = v6;
    sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
    sub_1CAD4C414();
  }

  return (v14)(v19, v8);
}

uint64_t sub_1CAC5B7E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1CAD4BDC4();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1CAC5B87C@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v117 = sub_1CAD4BDC4();
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v85 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v85 - v9;
  v11 = sub_1CAD4C404();
  v110 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v86 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v85 - v17;
  v115 = sub_1CAD4C374();
  v118 = *(v115 - 8);
  v18 = MEMORY[0x1EEE9AC00](v115);
  v99 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v107 = &v85 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v85 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v85 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v85 - v30;
  v31 = sub_1CAD4C0F4();
  v32 = *(v31 - 8);
  v113 = v31;
  v114 = v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v103 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v102 = &v85 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v101 = &v85 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v112 = &v85 - v39;
  sub_1CAD4C324();
  v111 = v1;
  v94 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v5, &qword_1EC463678);
  v106 = v3;
  MEMORY[0x1CCAA6D30](v3);
  v104 = v5;
  v40 = v5;
  v41 = v110;
  sub_1CAB21B68(v40, &qword_1EC463678);
  v42 = *(v41 + 48);
  v96 = v41 + 48;
  v95 = v42;
  v43 = v42(v10, 1, v11);
  v108 = v29;
  v85 = v16;
  v100 = v11;
  if (v43 == 1)
  {
    sub_1CAB21B68(v10, &qword_1EC4635D0);
  }

  else
  {
    v44 = v93;
    (*(v41 + 32))(v93, v10, v11);
    (*(v41 + 16))(v16, v44, v11);
    sub_1CAD4C344();
    (*(v41 + 8))(v44, v11);
  }

  v45 = v118;
  v46 = *(v118 + 32);
  v47 = v97;
  v48 = v115;
  v93 = (v118 + 32);
  v92 = v46;
  v46(v97, v24, v115);
  swift_getKeyPath();
  v49 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel___observationRegistrar;
  v50 = v111;
  v121 = v111;
  v51 = sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  v91 = v49;
  v90 = v51;
  sub_1CAD4C424();

  v52 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__startDateComponents;
  swift_beginAccess();
  v53 = v119;
  v54 = v116;
  v55 = v117;
  v89 = *(v119 + 16);
  v89(v116, v50 + v52, v117);
  v56 = v98;
  sub_1CAD4C2A4();
  v57 = *(v53 + 8);
  v119 = v53 + 8;
  v88 = v57;
  v57(v54, v55);
  v58 = v56;
  v59 = *(v45 + 8);
  v118 = v45 + 8;
  v59(v47, v48);
  v61 = v113;
  v60 = v114;
  v62 = *(v114 + 48);
  if (v62(v56, 1, v113) != 1)
  {
    v97 = v59;
    v98 = *(v60 + 32);
    (v98)(v112, v56, v61);
    v63 = v99;
    sub_1CAD4C324();
    v64 = v104;
    sub_1CAB23A9C(v50 + v94, v104, &qword_1EC463678);
    v65 = v105;
    MEMORY[0x1CCAA6D30](v106);
    sub_1CAB21B68(v64, &qword_1EC463678);
    v66 = v100;
    v67 = v95(v65, 1, v100);
    v87 = v62;
    if (v67 == 1)
    {
      sub_1CAB21B68(v65, &qword_1EC4635D0);
    }

    else
    {
      v68 = v110;
      v69 = v86;
      (*(v110 + 32))(v86, v65, v66);
      (*(v68 + 16))(v85, v69, v66);
      sub_1CAD4C344();
      (*(v68 + 8))(v69, v66);
    }

    v71 = v107;
    v70 = v108;
    v72 = v115;
    v92(v107, v63, v115);
    swift_getKeyPath();
    v73 = v111;
    v120 = v111;
    sub_1CAD4C424();

    v74 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__endDateComponents;
    swift_beginAccess();
    v75 = v73 + v74;
    v77 = v116;
    v76 = v117;
    v89(v116, v75, v117);
    sub_1CAD4C2A4();
    v88(v77, v76);
    (v97)(v71, v72);
    v78 = v113;
    if (v87(v70, 1, v113) != 1)
    {
      v79 = v101;
      (v98)(v101, v70, v78);
      v80 = v114;
      v81 = *(v114 + 16);
      v82 = v112;
      v81(v102, v112, v78);
      v81(v103, v79, v78);
      sub_1CAD4BC54();
      v83 = *(v80 + 8);
      v83(v79, v78);
      return (v83)(v82, v78);
    }

    v58 = v70;
    (*(v114 + 8))(v112, v78);
  }

  sub_1CAB21B68(v58, &unk_1EC465A70);
  result = sub_1CAD4E794();
  __break(1u);
  return result;
}

uint64_t sub_1CAC5C3B8(uint64_t a1)
{
  v236 = a1;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E8);
  MEMORY[0x1EEE9AC00](v193);
  v194 = &v184 - v2;
  v218 = sub_1CAD4BC94();
  v217 = *(v218 - 8);
  v3 = MEMORY[0x1EEE9AC00](v218);
  v191 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v192 = &v184 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v210 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v215 = &v184 - v9;
  v238 = sub_1CAD4C0F4();
  v235 = *(v238 - 8);
  v10 = MEMORY[0x1EEE9AC00](v238);
  v189 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v190 = &v184 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v216 = &v184 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v184 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v184 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v209 = &v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v214 = &v184 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v205 = (&v184 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v220 = &v184 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v204 = (&v184 - v30);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v184 - v31;
  v33 = sub_1CAD4C404();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v188 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v206 = &v184 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v187 = &v184 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v219 = &v184 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v186 = &v184 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v224 = &v184 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v185 = &v184 - v47;
  v237 = sub_1CAD4C374();
  v226 = *(v237 - 8);
  v48 = MEMORY[0x1EEE9AC00](v237);
  v207 = &v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v208 = &v184 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v212 = &v184 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v213 = &v184 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v202 = &v184 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v203 = &v184 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v232 = (&v184 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v198 = &v184 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v200 = &v184 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v201 = &v184 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v231 = &v184 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v197 = &v184 - v70;
  v222 = sub_1CAD4BDC4();
  v227 = *(v222 - 8);
  v71 = MEMORY[0x1EEE9AC00](v222);
  v221 = &v184 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v199 = &v184 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v196 = &v184 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v79 = (&v184 - v78);
  MEMORY[0x1EEE9AC00](v77);
  v195 = &v184 - v80;
  v81 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8);
  v82 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16);
  v240 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay);
  v241 = v81;
  v242 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v239, v83);
  v225 = v34;
  v84 = (v34 + 48);
  v85 = v1;
  v223 = v1;
  v86 = v17;
  v234 = v17;
  v87 = v19;
  v228 = v33;
  v229 = v19;
  v88 = v33;
  v211 = v34 + 48;
  if (v239 == 1)
  {
    v205 = v79;
    sub_1CAD4C324();
    v203 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
    sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v87, &qword_1EC463678);
    MEMORY[0x1CCAA6D30](v86);
    sub_1CAB21B68(v87, &qword_1EC463678);
    v233 = *v84;
    if (v233(v32, 1, v33) == 1)
    {
      sub_1CAB21B68(v32, &qword_1EC4635D0);
      v89 = v238;
      v90 = v231;
    }

    else
    {
      v93 = v225;
      v94 = v185;
      (*(v225 + 32))(v185, v32, v88);
      (*(v93 + 16))(v224, v94, v88);
      v95 = v231;
      sub_1CAD4C344();
      (*(v93 + 8))(v94, v88);
      v89 = v238;
      v90 = v95;
    }

    v220 = (v84 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
    v96 = v226;
    v97 = v197;
    v98 = v237;
    v232 = v226[4];
    v232(v197, v90, v237);
    v99 = *(v85 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_dateOnlyComponents);
    v100 = v230;
    sub_1CAD4BC74();
    v101 = v195;
    v202 = v99;
    sub_1CAD4C244();
    v219 = v235[1];
    (v219)(v100, v89);
    v231 = v96[1];
    (v231)(v97, v98);
    sub_1CAC5B228(v101);
    v102 = v200;
    sub_1CAD4C324();
    v103 = v229;
    sub_1CAB23A9C(&v203[v85], v229, &qword_1EC463678);
    v104 = v204;
    MEMORY[0x1CCAA6D30](v234);
    sub_1CAB21B68(v103, &qword_1EC463678);
    v105 = v228;
    if (v233(v104, 1, v228) == 1)
    {
      sub_1CAB21B68(v104, &qword_1EC4635D0);
    }

    else
    {
      v122 = v225;
      v123 = v186;
      (*(v225 + 32))(v186, v104, v105);
      (*(v122 + 16))(v224, v123, v105);
      sub_1CAD4C344();
      (*(v122 + 8))(v123, v105);
    }

    v124 = v212;
    v125 = v201;
    v126 = v237;
    v232(v201, v102, v237);
    v127 = v230;
    sub_1CAD4BC44();
    v128 = v205;
    sub_1CAD4C244();
    (v219)(v127, v238);
    (v231)(v125, v126);
    v117 = v223;
    v129 = v215;
    v130 = v234;
  }

  else
  {
    sub_1CAD4C324();
    v204 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
    sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v87, &qword_1EC463678);
    v91 = v220;
    MEMORY[0x1CCAA6D30](v86);
    sub_1CAB21B68(v87, &qword_1EC463678);
    v233 = *v84;
    if (v233(v91, 1, v88) == 1)
    {
      sub_1CAB21B68(v91, &qword_1EC4635D0);
      v92 = v232;
    }

    else
    {
      v106 = v88;
      v107 = v225;
      v108 = v219;
      (*(v225 + 32))(v219, v91, v106);
      (*(v107 + 16))(v224, v108, v106);
      v109 = v232;
      sub_1CAD4C344();
      (*(v107 + 8))(v108, v106);
      v92 = v109;
    }

    v220 = (v84 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
    v110 = v226;
    v111 = v198;
    v112 = v237;
    v232 = v226[4];
    v232(v198, v92, v237);
    v113 = v223;
    v114 = *(v223 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_dateTimeComponents);
    v115 = v230;
    sub_1CAD4BC74();
    v116 = v196;
    v201 = v114;
    sub_1CAD4C244();
    v219 = v235[1];
    (v219)(v115, v238);
    v117 = v113;
    v231 = v110[1];
    (v231)(v111, v112);
    sub_1CAC5B228(v116);
    v118 = v202;
    sub_1CAD4C324();
    v119 = v229;
    sub_1CAB23A9C(v204 + v113, v229, &qword_1EC463678);
    v120 = v205;
    MEMORY[0x1CCAA6D30](v234);
    sub_1CAB21B68(v119, &qword_1EC463678);
    v121 = v228;
    if (v233(v120, 1, v228) == 1)
    {
      sub_1CAB21B68(v120, &qword_1EC4635D0);
    }

    else
    {
      v131 = v225;
      v132 = v187;
      (*(v225 + 32))(v187, v120, v121);
      (*(v131 + 16))(v224, v132, v121);
      sub_1CAD4C344();
      (*(v131 + 8))(v132, v121);
    }

    v129 = v215;
    v124 = v212;
    v133 = v118;
    v134 = v203;
    v135 = v237;
    v232(v203, v133, v237);
    v136 = v230;
    sub_1CAD4BC44();
    v137 = v199;
    sub_1CAD4C244();
    (v219)(v136, v238);
    (v231)(v134, v135);
    v128 = v137;
    v130 = v234;
    v105 = v228;
  }

  sub_1CAC5B52C(v128);
  sub_1CAD4C324();
  v215 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
  v138 = v229;
  sub_1CAB23A9C(v117 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v229, &qword_1EC463678);
  v139 = v214;
  MEMORY[0x1CCAA6D30](v130);
  v140 = v139;
  sub_1CAB21B68(v138, &qword_1EC463678);
  v141 = v233(v139, 1, v105);
  v142 = v227;
  if (v141 == 1)
  {
    sub_1CAB21B68(v140, &qword_1EC4635D0);
  }

  else
  {
    v143 = v225;
    v144 = v206;
    (*(v225 + 32))(v206, v140, v105);
    (*(v143 + 16))(v224, v144, v105);
    sub_1CAD4C344();
    (*(v143 + 8))(v144, v105);
  }

  v145 = v213;
  v146 = v237;
  v214 = (v226 + 4);
  v232(v213, v124, v237);
  swift_getKeyPath();
  v147 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel___observationRegistrar;
  v240 = v117;
  v148 = sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  v212 = v147;
  v211 = v148;
  sub_1CAD4C424();

  v149 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__startDateComponents;
  swift_beginAccess();
  v150 = *(v142 + 16);
  v151 = v117 + v149;
  v152 = v221;
  v153 = v222;
  v206 = (v142 + 16);
  v205 = v150;
  v150(v221, v151, v222);
  sub_1CAD4C2A4();
  v155 = *(v142 + 8);
  v154 = v142 + 8;
  v204 = v155;
  v155(v152, v153);
  (v231)(v145, v146);
  v156 = v235;
  v157 = v235[6];
  v158 = v238;
  if (v157(v129, 1, v238) == 1)
  {
    (*(v217 + 8))(v236, v218);
    return sub_1CAB21B68(v129, &unk_1EC465A70);
  }

  else
  {
    v227 = v154;
    v160 = v156[4];
    v226 = v156 + 4;
    v213 = v160;
    (v160)(v216, v129, v158);
    v161 = v207;
    sub_1CAD4C324();
    sub_1CAB23A9C(&v215[v117], v138, &qword_1EC463678);
    v162 = v209;
    MEMORY[0x1CCAA6D30](v234);
    sub_1CAB21B68(v138, &qword_1EC463678);
    v163 = v228;
    if (v233(v162, 1, v228) == 1)
    {
      sub_1CAB21B68(v162, &qword_1EC4635D0);
    }

    else
    {
      v164 = v225;
      v165 = v188;
      (*(v225 + 32))(v188, v162, v163);
      (*(v164 + 16))(v224, v165, v163);
      sub_1CAD4C344();
      (*(v164 + 8))(v165, v163);
    }

    v166 = v210;
    v167 = v161;
    v168 = v208;
    v169 = v237;
    v232(v208, v167, v237);
    swift_getKeyPath();
    v170 = v223;
    v239 = v223;
    sub_1CAD4C424();

    v171 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__endDateComponents;
    swift_beginAccess();
    v172 = v221;
    v173 = v222;
    v205(v221, v170 + v171, v222);
    sub_1CAD4C2A4();
    v204(v172, v173);
    (v231)(v168, v169);
    v174 = v238;
    if (v157(v166, 1, v238) == 1)
    {
      (*(v217 + 8))(v236, v218);
      (v219)(v216, v174);
      return sub_1CAB21B68(v166, &unk_1EC465A70);
    }

    else
    {
      v175 = v190;
      (v213)(v190, v166, v174);
      v176 = v235[2];
      v177 = v216;
      v176(v230, v216, v174);
      v176(v189, v175, v174);
      v178 = v192;
      sub_1CAD4BC54();
      v179 = v194;
      sub_1CAB23A9C(v170 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval, v194, &qword_1EC4635E8);
      v180 = v217;
      v181 = v218;
      (*(v217 + 16))(v191, v178, v218);
      sub_1CAD4DAC4();
      v182 = *(v180 + 8);
      v182(v236, v181);
      sub_1CAB21B68(v179, &qword_1EC4635E8);
      v182(v178, v181);
      v183 = v219;
      (v219)(v175, v174);
      return (v183)(v177, v174);
    }
  }
}

uint64_t sub_1CAC5DC58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v6, v5, &qword_1EC4635D0);
  v7 = sub_1CAC64A28(v5, a1);
  sub_1CAB21B68(v5, &qword_1EC4635D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
    sub_1CAD4C414();
  }

  else
  {
    sub_1CAB23A9C(a1, v5, &qword_1EC4635D0);
    swift_beginAccess();
    sub_1CAC64E1C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1CAB21B68(a1, &qword_1EC4635D0);
}

uint64_t sub_1CAC5DE60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
  swift_beginAccess();
  sub_1CAC64D48(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1CAC5DECC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  swift_getKeyPath();
  v13 = v0;
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v8 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v8, v7, &qword_1EC4635D0);
  v9 = sub_1CAD4C404();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9);
  result = sub_1CAB21B68(v7, &qword_1EC4635D0);
  if (v8 == 1)
  {
    swift_getKeyPath();
    v12[0] = v1;
    sub_1CAD4C424();

    v11 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone;
    swift_beginAccess();
    sub_1CAB23A9C(v1 + v11, v5, &qword_1EC4635D0);
    return sub_1CAC5DC58(v5);
  }

  return result;
}

uint64_t sub_1CAC5E10C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v5 = *a1;
  swift_beginAccess();
  return sub_1CAB23A9C(v2 + v5, a2, &qword_1EC4635D0);
}

uint64_t sub_1CAC5E1E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v6, v5, &qword_1EC4635D0);
  v7 = sub_1CAC64A28(v5, a1);
  sub_1CAB21B68(v5, &qword_1EC4635D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
    sub_1CAD4C414();
  }

  else
  {
    sub_1CAB23A9C(a1, v5, &qword_1EC4635D0);
    swift_beginAccess();
    sub_1CAC64D48(v5, v1 + v6);
    swift_endAccess();
    sub_1CAC5DECC();
    sub_1CAB21B68(v5, &qword_1EC4635D0);
  }

  return sub_1CAB21B68(a1, &qword_1EC4635D0);
}

uint64_t sub_1CAC5E3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1CAB23A9C(a2, &v9 - v5, &qword_1EC4635D0);
  v7 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone;
  swift_beginAccess();
  sub_1CAC64D48(v6, a1 + v7);
  swift_endAccess();
  sub_1CAC5DECC();
  return sub_1CAB21B68(v6, &qword_1EC4635D0);
}

BOOL sub_1CAC5E4EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - v5;
  v7 = sub_1CAD4C404();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v42 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel___observationRegistrar;
  v51 = v0;
  v47 = sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  v48 = v18;
  sub_1CAD4C424();

  v19 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(v0 + v19, v6, &qword_1EC4635D0);
  v20 = *(v8 + 48);
  if (v20(v6, 1, v7) == 1)
  {
    sub_1CAB21B68(v6, &qword_1EC4635D0);
  }

  else
  {
    v43 = v20;
    (*(v8 + 32))(v17, v6, v7);
    v21 = sub_1CAD4C394();
    v23 = v22;
    sub_1CAD4C3F4();
    v24 = sub_1CAD4C394();
    v26 = v25;
    v44 = v8;
    v42 = *(v8 + 8);
    v42(v15, v7);
    if (v21 == v24 && v23 == v26)
    {

      v42(v17, v7);
      v20 = v43;
      v8 = v44;
    }

    else
    {
      v27 = sub_1CAD4E9E4();

      v42(v17, v7);
      v20 = v43;
      v8 = v44;
      if ((v27 & 1) == 0)
      {
        return 1;
      }
    }
  }

  swift_getKeyPath();
  v50 = v1;
  sub_1CAD4C424();

  v28 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone;
  swift_beginAccess();
  v29 = v1 + v28;
  v30 = v49;
  sub_1CAB23A9C(v29, v49, &qword_1EC4635D0);
  if (v20(v30, 1, v7) == 1)
  {
    sub_1CAB21B68(v30, &qword_1EC4635D0);
    return 0;
  }

  v32 = v46;
  (*(v8 + 32))(v46, v30, v7);
  v33 = sub_1CAD4C394();
  v35 = v34;
  v36 = v45;
  sub_1CAD4C3F4();
  v37 = sub_1CAD4C394();
  v39 = v38;
  v40 = *(v8 + 8);
  v40(v36, v7);
  if (v33 == v37 && v35 == v39)
  {

    v40(v32, v7);
    return 0;
  }

  v41 = sub_1CAD4E9E4();

  v40(v32, v7);
  return (v41 & 1) == 0;
}

uint64_t sub_1CAC5EA14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  v4 = sub_1CAD4BC94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  [v8 setDateStyle_];
  [v8 setTimeStyle_];
  sub_1CAB23A9C(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval, v3, &qword_1EC4635E8);
  MEMORY[0x1CCAA6D30](v1);
  sub_1CAB21B68(v3, &qword_1EC4635E8);
  v9 = sub_1CAD4BC24();
  (*(v5 + 8))(v7, v4);
  v10 = [v8 stringFromDateInterval_];

  if (v10)
  {
    v11 = sub_1CAD4DF94();
  }

  else
  {
    if (qword_1EC462C40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EC47DAB8;
  }

  return v11;
}

uint64_t sub_1CAC5EC5C()
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v85 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v95 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v85 - v5;
  v6 = sub_1CAD4C404();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAD4C0F4();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E8);
  MEMORY[0x1EEE9AC00](v104);
  v14 = &v85 - v13;
  v15 = sub_1CAD4BC94();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8);
  LOBYTE(v17) = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16);
  v106 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay);
  v107 = v19;
  v108 = v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](v105, v20);
  if (LOBYTE(v105[0]) == 1)
  {
    if (qword_1EC462C48 != -1)
    {
      swift_once();
    }

    v21 = qword_1EC47DAC8;

    return v21;
  }

  v86 = v9;
  v87 = v7;
  v88 = v6;
  v22 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  v23 = v15;
  v100 = v15;
  v101 = v22;
  v24 = v0;
  v25 = v22;
  [v22 setAllowedUnits_];
  [v25 setUnitsStyle_];
  v26 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval;
  sub_1CAB23A9C(v24 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval, v14, &qword_1EC4635E8);
  MEMORY[0x1CCAA6D30](v104);
  sub_1CAB21B68(v14, &qword_1EC4635E8);
  sub_1CAD4BC74();
  v27 = v16 + 8;
  v28 = *(v16 + 8);
  v28(v18, v23);
  v90 = sub_1CAD4C084();
  v29 = v102 + 8;
  v30 = *(v102 + 8);
  v30(v12, v103);
  v93 = v26;
  v99 = v24;
  sub_1CAB23A9C(v24 + v26, v14, &qword_1EC4635E8);
  MEMORY[0x1CCAA6D30](v104);
  v92 = v14;
  sub_1CAB21B68(v14, &qword_1EC4635E8);
  sub_1CAD4BC44();
  v91 = v18;
  v31 = v18;
  v32 = v12;
  v94 = v27;
  v28(v31, v100);
  v33 = sub_1CAD4C084();
  v89 = v30;
  v30(v12, v103);
  v34 = v90;
  v35 = [v101 stringFromDate:v90 toDate:v33];

  if (v35)
  {
    v102 = sub_1CAD4DF94();
    v37 = v36;

    v38 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v38 setDateStyle_];
    [v38 setTimeStyle_];
    v39 = v92;
    sub_1CAB23A9C(v99 + v93, v92, &qword_1EC4635E8);
    v40 = v91;
    MEMORY[0x1CCAA6D30](v104);
    sub_1CAB21B68(v39, &qword_1EC4635E8);
    sub_1CAD4BC74();
    v28(v40, v100);
    v41 = sub_1CAD4C084();
    v89(v32, v103);
    v42 = [v38 stringFromDate_];

    v43 = sub_1CAD4DF94();
    v45 = v44;

    v106 = v43;
    v107 = v45;
    MEMORY[0x1CCAA7330](0x20A280E220, 0xA500000000000000);
    MEMORY[0x1CCAA7330](v102, v37);

    return v106;
  }

  v46 = v32;
  v102 = v29;
  v47 = v103;
  v48 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  [v48 setDateStyle_];
  [v48 setTimeStyle_];
  v49 = v99;
  v50 = sub_1CAC5E4EC();
  v51 = v49;
  v52 = v104;
  v53 = v91;
  if (!v50)
  {
LABEL_17:
    v78 = v92;
    sub_1CAB23A9C(v51 + v93, v92, &qword_1EC4635E8);
    MEMORY[0x1CCAA6D30](v52);
    sub_1CAB21B68(v78, &qword_1EC4635E8);
    v79 = sub_1CAD4BC24();
    v28(v53, v100);
    v80 = [v48 stringFromDateInterval_];

    if (v80)
    {
      v21 = sub_1CAD4DF94();
    }

    else
    {

      return 0;
    }

    return v21;
  }

  v90 = v48;
  v85 = v28;
  v54 = v49 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
  v55 = v97;
  sub_1CAB23A9C(v54, v97, &qword_1EC463678);
  v56 = v96;
  MEMORY[0x1CCAA6D30](v98);
  sub_1CAB21B68(v55, &qword_1EC463678);
  v57 = v87;
  v58 = *(v87 + 48);
  v59 = v88;
  if (v58(v56, 1, v88) == 1)
  {
    sub_1CAB21B68(v56, &qword_1EC4635D0);
LABEL_16:
    v51 = v99;
    v28 = v85;
    v48 = v90;
    goto LABEL_17;
  }

  v60 = v86;
  (*(v57 + 32))(v86, v56, v59);
  sub_1CAD4C0E4();
  v61 = sub_1CAD4C3A4();
  v63 = v62;
  v64 = v47;
  v65 = v63;
  v89(v46, v64);
  if (!v65)
  {
    (*(v57 + 8))(v60, v59);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v66 = v99;
  v106 = v99;
  sub_1CAC64DD4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v67 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
  swift_beginAccess();
  v68 = v95;
  sub_1CAB23A9C(v66 + v67, v95, &qword_1EC4635D0);
  v69 = 0;
  if (v58(v68, 1, v59) != 1)
  {
    v69 = sub_1CAD4C3D4();
    (*(v87 + 8))(v68, v88);
  }

  v70 = v61;
  v71 = v90;
  [v90 setTimeZone_];

  v72 = 0xE000000000000000;
  v105[0] = 0;
  v105[1] = 0xE000000000000000;
  v73 = v92;
  sub_1CAB23A9C(v99 + v93, v92, &qword_1EC4635E8);
  MEMORY[0x1CCAA6D30](v104);
  sub_1CAB21B68(v73, &qword_1EC4635E8);
  v74 = sub_1CAD4BC24();
  v85(v53, v100);
  v75 = [v71 stringFromDateInterval_];

  if (v75)
  {
    v76 = sub_1CAD4DF94();
    v72 = v77;
  }

  else
  {
    v76 = 0;
  }

  v81 = v101;
  v82 = v87;
  v83 = v86;
  MEMORY[0x1CCAA7330](v76, v72);

  MEMORY[0x1CCAA7330](32, 0xE100000000000000);
  MEMORY[0x1CCAA7330](v70, v65);

  v21 = v105[0];
  (*(v82 + 8))(v83, v88);
  return v21;
}

uint64_t sub_1CAC5F7C8()
{
  v0 = sub_1CAD4C0F4();
  v46 = *(v0 - 8);
  v47 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v45 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v37 - v3;
  v4 = sub_1CAD4BC94();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_1CAD4C404();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v37 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v39 = sub_1CAD4C374();
  v19 = *(v39 - 8);
  v20 = MEMORY[0x1EEE9AC00](v39);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v37 - v23;
  sub_1CAD4C324();
  sub_1CAB23A9C(v48 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v9, &qword_1EC463678);
  MEMORY[0x1CCAA6D30](v38);
  sub_1CAB21B68(v9, &qword_1EC463678);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CAB21B68(v12, &qword_1EC4635D0);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    (*(v14 + 16))(v37, v18, v13);
    sub_1CAD4C344();
    (*(v14 + 8))(v18, v13);
  }

  v25 = v39;
  (*(v19 + 32))(v24, v22, v39);
  v26 = v40;
  sub_1CAC5B87C(v40);
  v27 = v44;
  sub_1CAD4BC74();
  v28 = *(v42 + 8);
  v29 = v26;
  v30 = v43;
  v28(v29, v43);
  v31 = v41;
  sub_1CAC5B87C(v41);
  v32 = v45;
  sub_1CAD4BC44();
  v28(v31, v30);
  LOBYTE(v28) = sub_1CAD4C2F4();
  v33 = *(v46 + 8);
  v34 = v32;
  v35 = v47;
  v33(v34, v47);
  v33(v27, v35);
  (*(v19 + 8))(v24, v25);
  return v28 & 1;
}

size_t sub_1CAC5FD14(uint64_t a1)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v67);
  v4 = &v59 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - v6;
  v68 = sub_1CAD4C404();
  v8 = *(v68 - 8);
  v9 = MEMORY[0x1EEE9AC00](v68);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v59 - v11;
  v12 = sub_1CAD4C374();
  v69 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - v16;
  v18 = sub_1CAD4C0F4();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v63 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v70 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - v24;
  if (a1 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = v23;
  v61 = v12;
  v64 = a1;
  sub_1CAD4C324();
  v62 = v1;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v4, &qword_1EC463678);
  MEMORY[0x1CCAA6D30](v67);
  sub_1CAB21B68(v4, &qword_1EC463678);
  v26 = v68;
  if ((*(v8 + 48))(v7, 1, v68) == 1)
  {
    sub_1CAB21B68(v7, &qword_1EC4635D0);
  }

  else
  {
    v28 = v65;
    (*(v8 + 32))(v65, v7, v26);
    (*(v8 + 16))(v66, v28, v26);
    sub_1CAD4C344();
    (*(v8 + 8))(v28, v26);
  }

  v29 = v64;
  v30 = v61;
  v31 = v69;
  (*(v69 + 32))(v17, v15, v61);
  v32 = v70;
  sub_1CAD4C0C4();
  sub_1CAD4C204();
  v33 = v60;
  v34 = *(v60 + 8);
  v35 = v32;
  v36 = v60 + 8;
  v34(v35, v18);
  v37 = (*(v31 + 8))(v17, v30);
  MEMORY[0x1EEE9AC00](v37);
  *(&v59 - 2) = v62;
  *(&v59 - 1) = v25;
  v38 = sub_1CABEE4D4(sub_1CAC648C0, (&v59 - 4), 0, v29);
  v39 = *(v38 + 16);
  v40 = v39 != 0;
  v41 = MEMORY[0x1E69E7CC0];
  if (v39 < 2)
  {
LABEL_14:
    v71[0] = sub_1CAC6082C(1uLL, v38);
    v71[1] = v56;
    v71[2] = v57;
    v71[3] = v58;
    v71[4] = v41;
    v27 = sub_1CAC608C0(v71);

    swift_unknownObjectRelease();
    v34(v25, v18);
    return v27;
  }

  v62 = 0;
  v67 = v34;
  v69 = v39;
  v42 = v39 - v40;
  v71[0] = MEMORY[0x1E69E7CC0];
  v43 = (v39 - v40) & ~((v39 - v40) >> 63);
  v44 = *(v33 + 80);

  result = sub_1CACBA228(0, v43, 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v68 = v36;
    v61 = v25;
    v59 = v38;
    v66 = ((v44 + 32) & ~v44);
    v65 = &v66[v38];
    v41 = v71[0];
    v64 = v33 + 16;
    v46 = v63;
    v47 = v69;
    while (v40 < v47)
    {
      v48 = *(v33 + 72);
      v49 = v70;
      (*(v33 + 16))(v70, &v65[v48 * v40], v18);
      sub_1CAD4C074();
      v50 = v49;
      v51 = v67;
      v67(v50, v18);
      v71[0] = v41;
      v52 = v18;
      v54 = *(v41 + 16);
      v53 = *(v41 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1CACBA228(v53 > 1, v54 + 1, 1);
        v51 = v67;
        v41 = v71[0];
      }

      *(v41 + 16) = v54 + 1;
      result = (*(v33 + 32))(&v66[v41 + v54 * v48], v46, v52);
      ++v40;
      v47 = v69;
      v18 = v52;
      if (v69 == v40)
      {
        v55 = v59;

        v25 = v61;
        v34 = v51;
        v38 = v55;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC603E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a3;
  v31 = a1;
  v32 = a2;
  v38 = sub_1CAD4C354();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_1CAD4C404();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v27 - v14;
  v33 = sub_1CAD4C374();
  v15 = *(v33 - 8);
  v16 = MEMORY[0x1EEE9AC00](v33);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v31 = *v31;
  sub_1CAD4C324();
  sub_1CAB23A9C(v32 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v6, &qword_1EC463678);
  MEMORY[0x1CCAA6D30](v30);
  sub_1CAB21B68(v6, &qword_1EC463678);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CAB21B68(v9, &qword_1EC4635D0);
  }

  else
  {
    v21 = v28;
    (*(v11 + 32))(v28, v9, v10);
    (*(v11 + 16))(v29, v21, v10);
    sub_1CAD4C344();
    (*(v11 + 8))(v21, v10);
  }

  v22 = v33;
  (*(v15 + 32))(v20, v18, v33);
  v24 = v34;
  v23 = v35;
  v25 = v38;
  (*(v35 + 104))(v34, *MEMORY[0x1E6969A48], v38);
  sub_1CAD4C2C4();
  (*(v23 + 8))(v24, v25);
  return (*(v15 + 8))(v20, v22);
}

unint64_t sub_1CAC6082C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    sub_1CAD4C0F4();
    return a2;
  }

  return result;
}

uint64_t sub_1CAC608C0(void *a1)
{
  v82 = sub_1CAD4BC94();
  v84 = *(v82 - 8);
  v3 = MEMORY[0x1EEE9AC00](v82);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v62 - v6;
  v90 = sub_1CAD4C0F4();
  v8 = *(v90 - 8);
  v9 = MEMORY[0x1EEE9AC00](v90);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v62 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465A38);
  v13 = MEMORY[0x1EEE9AC00](v81);
  v77 = (v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v80 = v62 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = v62 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = v62 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v64 = v62 - v21;
  v22 = (a1[3] >> 1);
  v85 = a1[2];
  v67 = v22;
  v23 = v22 - v85;
  if (__OFSUB__(v22, v85))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v76 = v11;
  v63 = v7;
  v62[1] = v1;
  v24 = a1[1];
  v62[2] = *a1;
  v83 = v24;
  v25 = a1[4];
  v86 = v25;
  v26 = *(v25 + 16);
  if (v26 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = *(v25 + 16);
  }

  v91 = MEMORY[0x1E69E7CC0];
  sub_1CACBA1E4(0, v27 & ~(v27 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v28 = v91;
    v78 = v26;
    if (v27)
    {
      v71 = v5;
      v69 = v8 + 32;
      v73 = (v8 + 8);
      v68 = v84 + 32;
      v29 = v67;
      if (v85 > v67)
      {
        v29 = v85;
      }

      v74 = v29 - v85;
      v75 = v85 - v67;
      swift_unknownObjectRetain();

      v31 = 0;
      v72 = v8;
      v87 = v27;
      v70 = v8 + 16;
      while (v75 + v31)
      {
        if (v74 == v31)
        {
          __break(1u);
          goto LABEL_32;
        }

        v89 = v28;
        v32 = *(v8 + 72);
        v33 = *(v8 + 16);
        v11 = v76;
        v34 = v8;
        v33(v76, v83 + v32 * &v85[v31], v90);
        if (v26 == v31)
        {
          goto LABEL_37;
        }

        v35 = v86 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v32 * v31;
        v36 = v81;
        v37 = *(v81 + 48);
        v38 = v77;
        v39 = v11;
        v40 = v90;
        (*(v8 + 32))(v77, v39, v90);
        v33((v38 + v37), v35, v40);
        v41 = v40;
        v11 = v79;
        sub_1CAB23A9C(v38, v79, &qword_1EC465A38);
        v88 = *(v36 + 48);
        v42 = v80;
        sub_1CAB23A9C(v38, v80, &qword_1EC465A38);
        v43 = v71;
        sub_1CAD4BC54();
        v44 = *(v34 + 8);
        v44(v42, v41);
        v44(&v11[v88], v41);
        sub_1CAB21B68(v38, &qword_1EC465A38);
        v28 = v89;
        v91 = v89;
        v46 = *(v89 + 16);
        v45 = *(v89 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1CACBA1E4(v45 > 1, v46 + 1, 1);
          v28 = v91;
        }

        ++v31;
        *(v28 + 16) = v46 + 1;
        result = (*(v84 + 32))(v28 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v46, v43, v82);
        v27 = v87;
        v8 = v72;
        v26 = v78;
        if (v87 == v31)
        {
          v47 = &v85[v31];
          goto LABEL_18;
        }
      }

      goto LABEL_38;
    }

    swift_unknownObjectRetain();

    v47 = v85;
LABEL_18:
    if (v47 == v67)
    {
LABEL_30:

      swift_unknownObjectRelease();
      return v28;
    }

    v89 = v8 + 16;
    v76 = v47;
    v77 = (v8 + 8);
    v74 = v84 + 32;
    v75 = v8 + 32;
    v48 = v47;
    while (v47 >= v85 && v48 < v67)
    {
      v49 = *(v8 + 72);
      v50 = *(v8 + 16);
      v50(v66, v83 + v49 * v48, v90);
      if (v26 == v27)
      {
        (*v77)(v66, v90);
        goto LABEL_30;
      }

      if (v27 >= v26)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v27, 1))
      {
        goto LABEL_34;
      }

      v51 = v86 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v49 * v27;
      v52 = v81;
      v87 = v27;
      v53 = *(v81 + 48);
      v54 = v65;
      v11 = v90;
      (*(v8 + 32))(v65, v66, v90);
      v50((v54 + v53), v51, v11);
      v55 = v64;
      sub_1CAC648DC(v54, v64);
      v56 = v79;
      sub_1CAB23A9C(v55, v79, &qword_1EC465A38);
      v88 = *(v52 + 48);
      v57 = v80;
      sub_1CAB23A9C(v55, v80, &qword_1EC465A38);
      v58 = v63;
      sub_1CAD4BC54();
      v59 = *(v8 + 8);
      v59(v57, v11);
      v59(v56 + v88, v11);
      sub_1CAB21B68(v55, &qword_1EC465A38);
      v91 = v28;
      v61 = *(v28 + 16);
      v60 = *(v28 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1CACBA1E4(v60 > 1, v61 + 1, 1);
        v28 = v91;
      }

      ++v48;
      *(v28 + 16) = v61 + 1;
      (*(v84 + 32))(v28 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v61, v58, v82);
      v27 = v87 + 1;
      v26 = v78;
      v47 = v76;
      if (v67 == v48)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  result = (*v73)(v11, v90);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_1CAC61120()
{
  v188 = sub_1CAD4C354();
  v157 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v156 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v186 = &v156 - v3;
  v4 = type metadata accessor for DateTimeSuggestion(0);
  v193 = *(v4 - 8);
  v194 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v203 = (&v156 - v8);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v156 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v185 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v190 = &v156 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v165 = &v156 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v179 = (&v156 - v17);
  v18 = sub_1CAD4C404();
  v159 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v167 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v166 = &v156 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v160 = &v156 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v191 = &v156 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v164 = &v156 - v27;
  v207 = sub_1CAD4C374();
  v180 = *(v207 - 8);
  v28 = MEMORY[0x1EEE9AC00](v207);
  v184 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v183 = &v156 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v156 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v182 = &v156 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v163 = &v156 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v162 = &v156 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v178 = (&v156 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v177 = &v156 - v43;
  v206 = sub_1CAD4C0F4();
  v158 = *(v206 - 8);
  v44 = MEMORY[0x1EEE9AC00](v206);
  v170 = &v156 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v200 = &v156 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v201 = &v156 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v212 = &v156 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v211 = &v156 - v52;
  v205 = sub_1CAD4BC94();
  v53 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v204 = &v156 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = v0;
  v55 = sub_1CAC5FD14(3);
  v56 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v57 = sub_1CAD4DF54();
  v168 = v56;
  [v56 setLocalizedDateFormatFromTemplate_];

  v58 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v59 = sub_1CAD4DF54();
  v161 = v58;
  [v58 setLocalizedDateFormatFromTemplate_];

  v60 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  v61 = sub_1CAD4DF54();
  v189 = v60;
  [v60 setDateTemplate_];

  v62 = *(v55 + 16);
  v195 = v18;
  v192 = v34;
  v171 = v7;
  v156 = v55;
  if (v62)
  {
    v64 = *(v53 + 16);
    v63 = v53 + 16;
    v202 = v64;
    v65 = v55 + ((*(v63 + 64) + 32) & ~*(v63 + 64));
    v198 = (v159 + 48);
    v173 = (v159 + 32);
    v197 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
    *&v172 = v159 + 16;
    v169 = (v159 + 8);
    v176 = *(v63 + 56);
    v196 = (v180 + 32);
    v181 = (v180 + 8);
    v175 = (v158 + 8);
    v199 = v63;
    v174 = (v63 - 8);
    v213 = MEMORY[0x1E69E7CC0];
    v66 = v204;
    v67 = v205;
    while (1)
    {
      (v202)(v66, v65, v67);
      sub_1CAD4BC74();
      v68 = v178;
      sub_1CAD4C324();
      v69 = v208;
      sub_1CAB23A9C(v210 + v197, v208, &qword_1EC463678);
      v70 = v179;
      MEMORY[0x1CCAA6D30](v209);
      sub_1CAB21B68(v69, &qword_1EC463678);
      v71 = *v198;
      if ((*v198)(v70, 1, v18) == 1)
      {
        sub_1CAB21B68(v70, &qword_1EC4635D0);
      }

      else
      {
        v72 = v164;
        (*v173)(v164, v70, v18);
        (*v172)(v191, v72, v18);
        sub_1CAD4C344();
        (*v169)(v72, v18);
      }

      v73 = v68;
      v74 = *v196;
      v75 = v177;
      v76 = v207;
      (*v196)(v177, v73, v207);
      v77 = sub_1CAD4C234();
      v78 = *v181;
      (*v181)(v75, v76);
      if (v77)
      {
        if (qword_1EC462C50 != -1)
        {
          swift_once();
        }

        v79 = &qword_1EC47DAD8;
      }

      else
      {
        v80 = v163;
        sub_1CAD4C324();
        v81 = v208;
        sub_1CAB23A9C(v210 + v197, v208, &qword_1EC463678);
        v82 = v165;
        MEMORY[0x1CCAA6D30](v209);
        sub_1CAB21B68(v81, &qword_1EC463678);
        v83 = v195;
        if (v71(v82, 1, v195) == 1)
        {
          sub_1CAB21B68(v82, &qword_1EC4635D0);
        }

        else
        {
          v84 = v160;
          (*v173)(v160, v82, v83);
          (*v172)(v191, v84, v83);
          sub_1CAD4C344();
          (*v169)(v84, v83);
        }

        v85 = v162;
        v86 = v207;
        v74(v162, v80, v207);
        v87 = sub_1CAD4C264();
        v78(v85, v86);
        if ((v87 & 1) == 0)
        {
          v90 = sub_1CAD4C084();
          v91 = [v161 stringFromDate_];

          v88 = sub_1CAD4DF94();
          v89 = v92;

          goto LABEL_19;
        }

        if (qword_1EC462C58 != -1)
        {
          swift_once();
        }

        v79 = &qword_1EC47DAE8;
      }

      v88 = *v79;
      v89 = v79[1];

LABEL_19:
      v93 = sub_1CAD4C084();
      v94 = [v168 stringFromDate_];

      v95 = sub_1CAD4DF94();
      v97 = v96;

      v98 = v203;
      (v202)(v203, v204, v205);
      v99 = v194;
      *(v98 + *(v194 + 20)) = 1;
      v100 = (v98 + *(v99 + 24));
      *v100 = v88;
      v100[1] = v89;
      v101 = (v98 + *(v99 + 28));
      *v101 = v95;
      v101[1] = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v213 = sub_1CAD35240(0, v213[2] + 1, 1, v213);
      }

      v18 = v195;
      v34 = v192;
      v103 = v213[2];
      v102 = v213[3];
      v104 = v211;
      if (v103 >= v102 >> 1)
      {
        v213 = sub_1CAD35240(v102 > 1, v103 + 1, 1, v213);
      }

      (*v175)(v104, v206);
      v66 = v204;
      v67 = v205;
      (*v174)(v204, v205);
      v105 = v213;
      v213[2] = v103 + 1;
      sub_1CAC6485C(v203, v105 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v103);
      v65 += v176;
      --v62;
      v106 = v180;
      if (!v62)
      {
        goto LABEL_26;
      }
    }
  }

  v213 = MEMORY[0x1E69E7CC0];
  v106 = v180;
LABEL_26:
  v205 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
  if (qword_1EC462C60 != -1)
  {
    swift_once();
  }

  v107 = 0;
  v181 = qword_1EC47DAF8;
  v180 = unk_1EC47DB00;
  v204 = (v159 + 48);
  v179 = (v159 + 32);
  v178 = (v159 + 16);
  v177 = (v159 + 8);
  v203 = (v106 + 32);
  v211 = (v158 + 8);
  v202 = (v106 + 8);
  LODWORD(v176) = *MEMORY[0x1E6969A48];
  v175 = (v157 + 104);
  v174 = (v157 + 8);
  v173 = (v158 + 48);
  v169 = (v158 + 16);
  v172 = xmmword_1CAD58380;
  v108 = v190;
  while (1)
  {
    v198 = v107;
    v109 = *(&unk_1F4AA00B0 + v107 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
    v110 = swift_allocObject();
    *(v110 + 16) = v172;
    *(v110 + 56) = MEMORY[0x1E69E6530];
    *(v110 + 64) = MEMORY[0x1E69E65A8];
    v199 = v109;
    *(v110 + 32) = v109;
    v111 = sub_1CAD4DF64();
    v196 = v112;
    v197 = v111;

    sub_1CAD4C324();
    v113 = v208;
    sub_1CAB23A9C(v210 + v205, v208, &qword_1EC463678);
    MEMORY[0x1CCAA6D30](v209);
    sub_1CAB21B68(v113, &qword_1EC463678);
    v114 = *v204;
    if ((*v204)(v108, 1, v18) == 1)
    {
      sub_1CAB21B68(v108, &qword_1EC4635D0);
    }

    else
    {
      v115 = v166;
      (*v179)(v166, v108, v18);
      (*v178)(v191, v115, v18);
      sub_1CAD4C344();
      (*v177)(v115, v18);
    }

    v116 = *v203;
    v117 = v182;
    v118 = v207;
    (*v203)(v182, v34, v207);
    v119 = v201;
    sub_1CAD4C0C4();
    sub_1CAD4C204();
    v120 = *v211;
    (*v211)(v119, v206);
    v121 = *v202;
    (*v202)(v117, v118);
    v122 = v184;
    sub_1CAD4C324();
    v123 = v208;
    sub_1CAB23A9C(v210 + v205, v208, &qword_1EC463678);
    v124 = v185;
    MEMORY[0x1CCAA6D30](v209);
    v125 = v123;
    v126 = v124;
    sub_1CAB21B68(v125, &qword_1EC463678);
    if (v114(v124, 1, v18) == 1)
    {
      sub_1CAB21B68(v124, &qword_1EC4635D0);
    }

    else
    {
      v127 = v167;
      (*v179)(v167, v126, v18);
      (*v178)(v191, v127, v18);
      sub_1CAD4C344();
      (*v177)(v127, v18);
    }

    v128 = v122;
    v129 = v183;
    v130 = v207;
    v116(v183, v128, v207);
    v131 = v187;
    v132 = v188;
    (*v175)(v187, v176, v188);
    v133 = v186;
    v134 = v212;
    sub_1CAD4C2C4();
    (*v174)(v131, v132);
    v121(v129, v130);
    v135 = v206;
    result = (*v173)(v133, 1, v206);
    if (result == 1)
    {
      break;
    }

    v137 = v200;
    sub_1CAD4C074();
    v120(v133, v135);
    v138 = sub_1CAD4C084();
    v139 = sub_1CAD4C084();
    v140 = v134;
    v141 = [v189 stringFromDate:v138 toDate:v139];

    v142 = sub_1CAD4DF94();
    v144 = v143;

    v145 = *v169;
    (*v169)(v201, v140, v135);
    (v145)(v170, v137, v135);
    v146 = v171;
    sub_1CAD4BC54();
    v147 = v194;
    *(v146 + *(v194 + 20)) = 1;
    v148 = (v146 + *(v147 + 24));
    v149 = v196;
    *v148 = v197;
    v148[1] = v149;
    v150 = (v146 + *(v147 + 28));
    *v150 = v142;
    v150[1] = v144;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v190;
    v34 = v192;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v213 = sub_1CAD35240(0, v213[2] + 1, 1, v213);
    }

    v152 = v212;
    v154 = v213[2];
    v153 = v213[3];
    if (v154 >= v153 >> 1)
    {
      v213 = sub_1CAD35240(v153 > 1, v154 + 1, 1, v213);
    }

    v120(v200, v135);
    v120(v152, v135);
    v155 = v213;
    v213[2] = v154 + 1;
    sub_1CAC6485C(v146, v155 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v154);
    v107 = v198 + 1;
    v18 = v195;
    if (v198 == 16)
    {

      return v213;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC62740(uint64_t a1)
{
  v133 = a1;
  v136 = sub_1CAD4C354();
  v141 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v113 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v117 = &v106 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v106 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v106 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v123 = &v106 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v106 - v18;
  v20 = sub_1CAD4C404();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v106 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v107 = &v106 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v121 = &v106 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v137 = &v106 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v130 = &v106 - v30;
  v139 = sub_1CAD4C374();
  v31 = *(v139 - 8);
  v32 = MEMORY[0x1EEE9AC00](v139);
  v110 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v111 = &v106 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v114 = &v106 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v115 = &v106 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v122 = &v106 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v120 = &v106 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v106 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v106 - v47;
  v142 = sub_1CAD4C0F4();
  v124 = *(v142 - 8);
  v49 = MEMORY[0x1EEE9AC00](v142);
  v109 = &v106 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v108 = &v106 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v119 = &v106 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v126 = &v106 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v138 = &v106 - v57;
  sub_1CAD4C324();
  v129 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone;
  sub_1CAB23A9C(v140 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, v10, &qword_1EC463678);
  v134 = v8;
  MEMORY[0x1CCAA6D30](v8);
  v58 = v137;
  sub_1CAB21B68(v10, &qword_1EC463678);
  v131 = *(v21 + 48);
  v132 = v21 + 48;
  v59 = v131(v19, 1, v20);
  v125 = v21;
  if (v59 == 1)
  {
    sub_1CAB21B68(v19, &qword_1EC4635D0);
  }

  else
  {
    v60 = v130;
    (*(v21 + 32))(v130, v19, v20);
    (*(v21 + 16))(v58, v60, v20);
    sub_1CAD4C344();
    (*(v21 + 8))(v60, v20);
  }

  v61 = v139;
  v127 = *(v31 + 32);
  v128 = v31 + 32;
  v127(v48, v46, v139);
  sub_1CAD4C204();
  v62 = *(v31 + 8);
  v133 = v31 + 8;
  v130 = v62;
  (v62)(v48, v61);
  v63 = v122;
  sub_1CAD4C324();
  sub_1CAB23A9C(v140 + v129, v10, &qword_1EC463678);
  v64 = v123;
  MEMORY[0x1CCAA6D30](v134);
  sub_1CAB21B68(v10, &qword_1EC463678);
  if (v131(v64, 1, v20) == 1)
  {
    sub_1CAB21B68(v64, &qword_1EC4635D0);
  }

  else
  {
    v65 = v125;
    v66 = v121;
    (*(v125 + 32))(v121, v64, v20);
    (*(v65 + 16))(v137, v66, v20);
    sub_1CAD4C344();
    (*(v65 + 8))(v66, v20);
  }

  v67 = v120;
  v68 = v63;
  v69 = v139;
  v127(v120, v68, v139);
  v70 = v141;
  v71 = *(v141 + 104);
  v72 = v135;
  LODWORD(v123) = *MEMORY[0x1E6969A58];
  v73 = v136;
  v122 = v71;
  (v71)(v135);
  v74 = v118;
  sub_1CAD4C2D4();
  v75 = *(v70 + 8);
  v141 = v70 + 8;
  v121 = v75;
  (v75)(v72, v73);
  (v130)(v67, v69);
  v76 = v124;
  v120 = *(v124 + 48);
  result = (v120)(v74, 1, v142);
  if (result == 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v118 = *(v76 + 32);
  (v118)(v126, v74, v142);
  v78 = v114;
  sub_1CAD4C324();
  sub_1CAB23A9C(v140 + v129, v10, &qword_1EC463678);
  v79 = v116;
  MEMORY[0x1CCAA6D30](v134);
  sub_1CAB21B68(v10, &qword_1EC463678);
  v80 = v131(v79, 1, v20);
  v81 = v125;
  v82 = v137;
  if (v80 == 1)
  {
    sub_1CAB21B68(v79, &qword_1EC4635D0);
  }

  else
  {
    v83 = v107;
    (*(v125 + 32))(v107, v79, v20);
    (*(v81 + 16))(v82, v83, v20);
    sub_1CAD4C344();
    (*(v81 + 8))(v83, v20);
  }

  v84 = v115;
  v85 = v139;
  v127(v115, v78, v139);
  v86 = v135;
  v87 = v136;
  (v122)(v135, v123, v136);
  v88 = v117;
  sub_1CAD4C2D4();
  (v121)(v86, v87);
  (v130)(v84, v85);
  result = (v120)(v88, 1, v142);
  if (result == 1)
  {
    goto LABEL_18;
  }

  (v118)(v119, v88, v142);
  v89 = v110;
  sub_1CAD4C324();
  sub_1CAB23A9C(v140 + v129, v10, &qword_1EC463678);
  v90 = v112;
  MEMORY[0x1CCAA6D30](v134);
  sub_1CAB21B68(v10, &qword_1EC463678);
  if (v131(v90, 1, v20) == 1)
  {
    sub_1CAB21B68(v90, &qword_1EC4635D0);
  }

  else
  {
    v91 = v125;
    v92 = v106;
    (*(v125 + 32))(v106, v90, v20);
    (*(v91 + 16))(v137, v92, v20);
    sub_1CAD4C344();
    (*(v91 + 8))(v92, v20);
  }

  v93 = v113;
  v94 = v111;
  v95 = v89;
  v96 = v139;
  v127(v111, v95, v139);
  v98 = v135;
  v97 = v136;
  (v122)(v135, v123, v136);
  sub_1CAD4C2D4();
  (v121)(v98, v97);
  (v130)(v94, v96);
  result = (v120)(v93, 1, v142);
  if (result != 1)
  {
    v99 = v108;
    v100 = v142;
    (v118)(v108, v93, v142);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465A30);
    sub_1CAD4BC94();
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_1CAD5B6C0;
    v101 = v124;
    v102 = *(v124 + 16);
    v103 = v109;
    v102(v109, v126, v100);
    sub_1CAD4BC64();
    v104 = v119;
    v102(v103, v119, v100);
    sub_1CAD4BC64();
    v102(v103, v99, v100);
    sub_1CAD4BC64();
    v102(v103, v99, v100);
    sub_1CAD4BC64();
    v105 = *(v101 + 8);
    v105(v99, v100);
    v105(v104, v100);
    v105(v126, v100);
    v105(v138, v100);
    return v141;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_1CAC6372C()
{
  v1 = type metadata accessor for DateTimeSuggestion(0);
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v66 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CAD4C0F4();
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = sub_1CAD4BC94();
  v63 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v58 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  sub_1CAB23A9C(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval, v9, &qword_1EC4635E8);
  MEMORY[0x1CCAA6D30](v7);
  v18 = v63;
  sub_1CAB21B68(v9, &qword_1EC4635E8);
  sub_1CAD4BC74();
  v19 = *(v18 + 8);
  v60 = v10;
  v56 = v19;
  v57 = v18 + 8;
  v19(v17, v10);
  v20 = sub_1CAC62740(v6);
  v21 = *(v65 + 8);
  v59 = v6;
  v65 += 8;
  v55 = v21;
  v21(v6, v64);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v23 = sub_1CAD4DF54();
  v62 = v22;
  [v22 setLocalizedDateFormatFromTemplate_];

  v61 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  result = [v61 setUnitsStyle_];
  v52 = *(v20 + 16);
  if (v52)
  {
    v25 = 0;
    v51 = v18 + 16;
    v49 = (v18 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v60;
    v50 = v20;
    while (v25 < *(v20 + 16))
    {
      v28 = *(v18 + 16);
      v29 = v58;
      v28(v58, v20 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v27);
      v28(v13, v29, v27);
      v30 = v59;
      sub_1CAD4BC74();
      v31 = sub_1CAD4C084();
      v55(v30, v64);
      v32 = [v62 stringFromDate_];

      v33 = sub_1CAD4DF94();
      v35 = v34;
      sub_1CAD4BC84();
      v37 = v36;
      v56(v29, v27);
      result = [v61 stringFromTimeInterval_];
      if (!result)
      {
        goto LABEL_14;
      }

      v38 = result;

      v39 = sub_1CAD4DF94();
      v41 = v40;

      v42 = v66;
      (*v49)(v66, v13, v27);
      v43 = v54;
      *(v42 + *(v54 + 20)) = 0;
      v44 = (v42 + *(v43 + 24));
      *v44 = v33;
      v44[1] = v35;
      v45 = (v42 + *(v43 + 28));
      *v45 = v39;
      v45[1] = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1CAD35240(0, v26[2] + 1, 1, v26);
      }

      v18 = v63;
      v20 = v50;
      v47 = v26[2];
      v46 = v26[3];
      v27 = v60;
      if (v47 >= v46 >> 1)
      {
        v26 = sub_1CAD35240(v46 > 1, v47 + 1, 1, v26);
      }

      ++v25;
      v26[2] = v47 + 1;
      result = sub_1CAC6485C(v66, v26 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v47);
      if (v52 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_12:

    return v26;
  }

  return result;
}

uint64_t sub_1CAC63D0C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_1CAD4C0F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v13 setTimeStyle_];
  [v13 setDateStyle_];
  if (!sub_1CAC5E4EC())
  {
    goto LABEL_7;
  }

  v36 = v4;
  sub_1CAB23A9C(a2, v12, &qword_1EC4635D0);
  v14 = sub_1CAD4C404();
  v15 = a2;
  v16 = *(v14 - 8);
  v17 = *(v16 + 48);
  if (v17(v12, 1, v14) == 1)
  {
    sub_1CAB21B68(v12, &qword_1EC4635D0);
LABEL_7:
    v25 = sub_1CAD4C084();
    v26 = [v13 stringFromDate_];

    v27 = sub_1CAD4DF94();
    return v27;
  }

  sub_1CAD4C0E4();
  v35 = v15;
  v18 = sub_1CAD4C3A4();
  v19 = v6;
  v21 = v20;
  (*(v36 + 8))(v19, v3);
  v22 = *(v16 + 8);
  v22(v12, v14);
  if (!v21)
  {
    goto LABEL_7;
  }

  v23 = v18;
  sub_1CAB23A9C(v35, v10, &qword_1EC4635D0);
  if (v17(v10, 1, v14) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1CAD4C3D4();
    v22(v10, v14);
  }

  [v13 setTimeZone_];

  v29 = sub_1CAD4C084();
  v30 = [v13 stringFromDate_];

  v31 = sub_1CAD4DF94();
  v33 = v32;

  v38 = v31;
  v39 = v33;
  MEMORY[0x1CCAA7330](32, 0xE100000000000000);
  MEMORY[0x1CCAA7330](v23, v21);

  return v38;
}

uint64_t sub_1CAC640C4()
{
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval, &qword_1EC4635E8);

  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, &qword_1EC463678);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__endTimeZone, &qword_1EC463678);

  sub_1CABEDD0C(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__delegate);

  v1 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__startDateComponents;
  v2 = sub_1CAD4BDC4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__endDateComponents, v2);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone, &qword_1EC4635D0);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone, &qword_1EC4635D0);
  v4 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel___observationRegistrar;
  v5 = sub_1CAD4C464();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1CAC642D0()
{
  sub_1CAC640C4();

  return swift_deallocClassInstance();
}

void sub_1CAC64350()
{
  sub_1CAC6456C(319, &qword_1EC465A28, MEMORY[0x1E6968130], MEMORY[0x1E6981940]);
  if (v0 <= 0x3F)
  {
    sub_1CABCC548();
    if (v1 <= 0x3F)
    {
      sub_1CAD4BDC4();
      if (v2 <= 0x3F)
      {
        sub_1CAC6456C(319, &qword_1EDA5F890, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1CAD4C464();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1CAC6456C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CAC645F0()
{
  sub_1CAD4EA84();
  sub_1CAD4BC94();
  sub_1CAC64DD4(&unk_1EC465A60, MEMORY[0x1E6968130]);
  sub_1CAD4DEB4();
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  sub_1CAD4E054();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC646C0()
{
  sub_1CAD4BC94();
  sub_1CAC64DD4(&unk_1EC465A60, MEMORY[0x1E6968130]);
  sub_1CAD4DEB4();
  sub_1CAD4EAA4();
  sub_1CAD4E054();

  return sub_1CAD4E054();
}

uint64_t sub_1CAC6478C()
{
  sub_1CAD4EA84();
  sub_1CAD4BC94();
  sub_1CAC64DD4(&unk_1EC465A60, MEMORY[0x1E6968130]);
  sub_1CAD4DEB4();
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  sub_1CAD4E054();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC6485C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateTimeSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC648DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC6494C(uint64_t a1, uint64_t a2)
{
  if ((sub_1CAD4BC34() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DateTimeSuggestion(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v6 = v4[6];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v8 != *v9 || v7 != v9[1])
  {
    v11 = v4;
    v12 = sub_1CAD4E9E4();
    v4 = v11;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  if (v14 == *v16 && v15 == v16[1])
  {
    return 1;
  }

  return sub_1CAD4E9E4();
}

uint64_t sub_1CAC64A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C404();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v21 - v13, &qword_1EC4635D0);
  sub_1CAB23A9C(a2, &v14[v15], &qword_1EC4635D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &qword_1EC4635D0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1CAC64DD4(&qword_1EC464E68, MEMORY[0x1E6969BC0]);
      v18 = sub_1CAD4DED4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1CAB21B68(v14, &qword_1EC4635D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CAB21B68(v14, &unk_1EC4679E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CAB21B68(v14, &qword_1EC4635D0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1CAC64D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC64DD4(unint64_t *a1, void (*a2)(uint64_t))
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