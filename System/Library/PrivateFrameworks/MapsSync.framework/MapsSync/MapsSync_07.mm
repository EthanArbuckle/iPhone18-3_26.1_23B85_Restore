uint64_t sub_1B633C158()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisit__visitClassification);
  [v1 unlock];
  return v2;
}

id sub_1B633C204(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisit__visitClassification) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B633D0D4;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B633C3A0(uint64_t a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for MapsSyncManagedVisit();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setVisitClassification_];
  }

  return result;
}

id (*sub_1B633C404(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisit__visitClassification);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B633C488;
}

void *sub_1B633C53C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisit__location);
  v3 = v2;
  [v1 unlock];
  return v2;
}

void sub_1B633C5F4(void *a1)
{
  sub_1B633D0DC(a1);
}

void sub_1B633C62C(void *a1, void *a2, char *a3)
{
  type metadata accessor for MapsSyncManagedVisit();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    if (a3)
    {
      v7 = v6;
      v8 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
      v12 = a2;
      v9 = a3;
      [v8 lock];
      v13 = sub_1B629563C(v8, a1);
      [v8 unlock];
      if (v13)
      {
        type metadata accessor for MapsSyncManagedVisitedLocation();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          [v7 setLocation_];
        }

        else
        {
        }

        v11 = v13;
      }

      else
      {

        v11 = v12;
      }
    }

    else
    {

      [v6 setLocation_];
    }
  }
}

void (*sub_1B633C794(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisit__location);
  v5 = v4;
  [v3 unlock];
  *a1 = v4;
  return sub_1B633C81C;
}

void sub_1B633C81C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    sub_1B633D0DC(v5);

    v4 = v3;
  }

  else
  {
    sub_1B633D0DC(*a1);
    v4 = v5;
  }
}

void *sub_1B633C8E4(void *a1, void *a2, int a3, int a4)
{
  v50 = a4;
  v51 = a3;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - v11;
  v4[OBJC_IVAR___MSVisit__hidden] = 0;
  v12 = OBJC_IVAR___MSVisit__startDate;
  v13 = sub_1B63BE994();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR___MSVisit__visitClassification] = 0;
  *&v4[OBJC_IVAR___MSVisit__location] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v17 = type metadata accessor for MapsSyncHashing();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v19 = sub_1B63BEA04();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v51;
  v20(v21, 1, 1, v19);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
  v23 = v52;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v24 = type metadata accessor for MapsSyncObject();
  v53.receiver = v4;
  v53.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v53, sel_init);
  v27 = v26;
  if (v23)
  {
    v28 = v26;
    v29 = [v23 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v23, v22 & 1, v50 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v49;
    sub_1B63BE9F4();
    v20(v32, 0, 1, v19);
    v33 = v46;
    sub_1B628C510(v32, v46, &unk_1EB943680, qword_1B63C4070);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v33, &v31[v34], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v35 = v48;
    sub_1B628C510(v32, v48, &unk_1EB943680, qword_1B63C4070);
    v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v37 = swift_allocObject();
    sub_1B628A128(v35, v37 + v36, &unk_1EB943680, qword_1B63C4070);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B62B2D5C;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B6284EAC(v32, &unk_1EB943680, qword_1B63C4070);
  }

  return v27;
}

void sub_1B633CE90()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSVisit__startDate, &unk_1EB943210, &unk_1B63C3F50);
  v1 = *(v0 + OBJC_IVAR___MSVisit__location);
}

id Visit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Visit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B633CF78(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 1) & 0xFFFFFFFFFFFFFFFELL));
  v8 = *(v2 + 16);

  sub_1B633A738(a1, a2, v8, v2 + v6, v7);
}

void sub_1B633D048(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B633BE24(a1, a2, v6);
}

id sub_1B633D0DC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisit__location);
  *(v2 + OBJC_IVAR___MSVisit__location) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B633D674;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

uint64_t type metadata accessor for Visit()
{
  result = qword_1EB942D10;
  if (!qword_1EB942D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B633D2D8()
{
  sub_1B628CC34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id VisitedLocation.__allocating_init(enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, void *a19)
{
  v20 = v19;
  v60 = a4;
  v61 = a5;
  LODWORD(v59) = a3;
  v54 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v51 - v25;
  v58 = objc_allocWithZone(v20);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v56 = qword_1EDB0F2A8;
  if (a7)
  {
    v55 = sub_1B63BEBC4();

    v27 = a11;
    if (a9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v55 = 0;
    v27 = a11;
    if (a9)
    {
LABEL_5:
      v28 = sub_1B63BEBC4();

      v29 = a13;
      v30 = a14;
      if (v27)
      {
        goto LABEL_6;
      }

LABEL_10:
      v31 = 0;
      if (v29)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v28 = 0;
  v29 = a13;
  v30 = a14;
  if (!v27)
  {
    goto LABEL_10;
  }

LABEL_6:
  v31 = sub_1B63BEBC4();

  if (v29)
  {
LABEL_7:
    v32 = sub_1B63BEBC4();

    goto LABEL_12;
  }

LABEL_11:
  v32 = 0;
LABEL_12:
  v57 = v30;
  sub_1B628C510(v30, v26, &unk_1EB943210, &unk_1B63C3F50);
  v33 = sub_1B63BE994();
  v34 = *(v33 - 8);
  v35 = 0;
  if ((*(v34 + 48))(v26, 1, v33) != 1)
  {
    v35 = sub_1B63BE954();
    (*(v34 + 8))(v26, v33);
  }

  if (a16)
  {
    v36 = sub_1B63BEBC4();
  }

  else
  {
    v36 = 0;
  }

  v53 = v36;
  LODWORD(v50) = a18;
  v49 = v36;
  v48 = v35;
  v37 = v32;
  v46 = v31;
  v47 = v32;
  v38 = v31;
  v45 = v28;
  v52 = v35;
  v39 = v28;
  v40 = v55;
  v41 = v54;
  v43 = v60;
  v42 = v61;
  v59 = [v58 initWithStore:v56 enclosingRegionMuid:a1 enclosingRegionProvider:v54 hidden:v59 & 1 latitude:v60 longitude:v61 mapItemAddress:v55 mapItemCategory:v45 mapItemCity:v46 mapItemIdentifier:v47 mapItemLastRefreshed:v48 mapItemName:v49 mapItemStorage:a17 mapItemTopLevelCategory:v50 muid:a19];

  sub_1B6284EAC(v57, &unk_1EB943210, &unk_1B63C3F50);
  return v59;
}

id VisitedLocation.init(enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, void *a19)
{
  v23 = sub_1B6347EF8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  return v23;
}

char *VisitedLocation.__allocating_init(store:enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, void *a3, int a4, void *a5, void *a6, char *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, int a19, void *a20)
{
  LODWORD(v113) = a4;
  v114 = a20;
  v115 = a19;
  v125 = a17;
  v126 = a18;
  v123 = a7;
  v124 = a16;
  v128 = a15;
  v121 = a13;
  v122 = a14;
  v119 = a11;
  v120 = a12;
  v118 = a9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v105 = *(v27 - 8);
  v28 = *(v105 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v106 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v98 = &v97 - v31;
  v32 = objc_allocWithZone(v20);
  v117 = a1;
  v33 = [v32 initWithStore_];
  v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v35 = *&v33[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v36 = v33;
  [v35 lock];
  v116 = v33;
  v127 = v34;
  v107 = *&v33[v34];
  v37 = *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
  *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = a2;
  v109 = a2;
  v103 = a2;

  v38 = *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
  *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = a3;
  v110 = a3;
  v102 = a3;

  v99 = v113 & 1;
  v36[OBJC_IVAR___MSVisitedLocation__hidden] = v113;
  v39 = *&v36[OBJC_IVAR___MSVisitedLocation__latitude];
  *&v36[OBJC_IVAR___MSVisitedLocation__latitude] = a5;
  v111 = a5;
  v101 = a5;

  v40 = *&v36[OBJC_IVAR___MSVisitedLocation__longitude];
  *&v36[OBJC_IVAR___MSVisitedLocation__longitude] = a6;
  v112 = a6;
  v100 = a6;

  v41 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
  v42 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8];
  *v41 = v123;
  v41[1] = a8;
  v113 = a8;
  v43 = v128;

  v44 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
  v45 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8];
  *v44 = v118;
  *(v44 + 1) = a10;
  v108 = a10;

  v46 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemCity];
  v47 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemCity + 8];
  v48 = v120;
  *v46 = v119;
  *(v46 + 1) = v48;

  v49 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
  v50 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8];
  v51 = v122;
  *v49 = v121;
  *(v49 + 1) = v51;

  v52 = v98;
  sub_1B628C510(v43, v98, &unk_1EB943210, &unk_1B63C3F50);
  v53 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v52, &v36[v53], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v54 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemName];
  v55 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemName + 8];
  v56 = v125;
  *v54 = v124;
  *(v54 + 1) = v56;

  v57 = v126;

  if (v57)
  {
    v58 = [v57 data];
    if (v58)
    {
      v59 = v58;
      v57 = sub_1B63BE924();
      v61 = v60;

      goto LABEL_6;
    }

    v57 = 0;
  }

  v61 = 0xF000000000000000;
LABEL_6:
  v62 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v63 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v64 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
  *v62 = v57;
  *(v62 + 1) = v61;
  sub_1B6284F64(v63, v64);
  v65 = v115;
  *&v36[OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory] = v115;
  v66 = *&v36[OBJC_IVAR___MSVisitedLocation__muid];
  v67 = v114;
  *&v36[OBJC_IVAR___MSVisitedLocation__muid] = v114;
  v98 = v67;

  v68 = v106;
  sub_1B628C510(v43, v106, &unk_1EB943210, &unk_1B63C3F50);
  v69 = (*(v105 + 80) + 120) & ~*(v105 + 80);
  v70 = (v104 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 11) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v110;
  *(v73 + 16) = v109;
  *(v73 + 24) = v74;
  *(v73 + 32) = v99;
  v75 = v112;
  *(v73 + 40) = v111;
  *(v73 + 48) = v75;
  v76 = v113;
  *(v73 + 56) = v123;
  *(v73 + 64) = v76;
  v77 = v108;
  *(v73 + 72) = v118;
  *(v73 + 80) = v77;
  v78 = v120;
  *(v73 + 88) = v119;
  *(v73 + 96) = v78;
  v79 = v122;
  *(v73 + 104) = v121;
  *(v73 + 112) = v79;
  sub_1B628A128(v68, v73 + v69, &unk_1EB943210, &unk_1B63C3F50);
  v80 = (v73 + v70);
  v81 = v125;
  *v80 = v124;
  v80[1] = v81;
  v82 = v126;
  *(v73 + v71) = v126;
  *(v73 + v72) = v65;
  *(v73 + ((v72 + 11) & 0xFFFFFFFFFFFFFFF8)) = v67;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v83 = v116;
  v84 = *&v116[v127];
  v85 = v103;
  v86 = v102;
  v125 = v101;
  v124 = v100;
  v123 = v98;
  v87 = v82;
  if (sub_1B63BEF24())
  {
    v126 = v86;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_1B63481D8;
    *(v88 + 24) = v73;
    v89 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v90 = *&v36[v89];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[v89] = v90;
    v92 = v85;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v90 = sub_1B629A8E8(0, v90[2] + 1, 1, v90);
      *&v36[v89] = v90;
    }

    v94 = v90[2];
    v93 = v90[3];
    if (v94 >= v93 >> 1)
    {
      v90 = sub_1B629A8E8((v93 > 1), v94 + 1, 1, v90);
    }

    v90[2] = v94 + 1;
    v95 = &v90[2 * v94];
    v95[4] = sub_1B62B8188;
    v95[5] = v88;
    *&v36[v89] = v90;
    swift_endAccess();
    v85 = v92;
    v86 = v126;
  }

  [*&v83[v127] unlock];

  sub_1B6284EAC(v128, &unk_1EB943210, &unk_1B63C3F50);
  return v36;
}

char *VisitedLocation.init(store:enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, int a19, void *a20)
{
  v21 = v20;
  v123 = a7;
  v124 = a8;
  v114 = a20;
  v115 = a19;
  v126 = a17;
  v127 = a18;
  v125 = a16;
  v129 = a15;
  v121 = a13;
  v122 = a14;
  v119 = a11;
  v120 = a12;
  v118 = a9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v105 = *(v28 - 8);
  v29 = *(v105 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v107 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v98 - v32;
  v117 = a1;
  v33 = [v21 initWithStore_];
  v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v35 = *&v33[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v36 = v33;
  [v35 lock];
  v116 = v33;
  v128 = v34;
  v109 = *&v33[v34];
  v37 = *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
  *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = a2;
  v110 = a2;
  v106 = a2;

  v38 = *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
  *&v36[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = a3;
  v111 = a3;
  v103 = a3;

  v100 = a4 & 1;
  v36[OBJC_IVAR___MSVisitedLocation__hidden] = a4;
  v39 = *&v36[OBJC_IVAR___MSVisitedLocation__latitude];
  *&v36[OBJC_IVAR___MSVisitedLocation__latitude] = a5;
  v112 = a5;
  v102 = a5;

  v40 = *&v36[OBJC_IVAR___MSVisitedLocation__longitude];
  *&v36[OBJC_IVAR___MSVisitedLocation__longitude] = a6;
  v113 = a6;
  v101 = a6;

  v41 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
  v42 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8];
  v43 = v124;
  *v41 = v123;
  *(v41 + 1) = v43;

  v44 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
  v45 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8];
  *v44 = v118;
  *(v44 + 1) = a10;
  v108 = a10;
  v46 = v129;

  v47 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemCity];
  v48 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemCity + 8];
  v49 = v120;
  *v47 = v119;
  *(v47 + 1) = v49;

  v50 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
  v51 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8];
  v52 = v122;
  *v50 = v121;
  *(v50 + 1) = v52;

  v53 = v99;
  sub_1B628C510(v46, v99, &unk_1EB943210, &unk_1B63C3F50);
  v54 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v53, &v36[v54], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v55 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemName];
  v56 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemName + 8];
  v57 = v126;
  *v55 = v125;
  *(v55 + 1) = v57;

  v58 = v127;

  if (v58)
  {
    v59 = [v58 data];
    if (v59)
    {
      v60 = v59;
      v58 = sub_1B63BE924();
      v62 = v61;

      goto LABEL_6;
    }

    v58 = 0;
  }

  v62 = 0xF000000000000000;
LABEL_6:
  v63 = &v36[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v64 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v65 = *&v36[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
  *v63 = v58;
  *(v63 + 1) = v62;
  sub_1B6284F64(v64, v65);
  v66 = v115;
  *&v36[OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory] = v115;
  v67 = *&v36[OBJC_IVAR___MSVisitedLocation__muid];
  v68 = v114;
  *&v36[OBJC_IVAR___MSVisitedLocation__muid] = v114;
  v99 = v68;

  v69 = v107;
  sub_1B628C510(v46, v107, &unk_1EB943210, &unk_1B63C3F50);
  v70 = (*(v105 + 80) + 120) & ~*(v105 + 80);
  v71 = (v104 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 11) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = v111;
  *(v74 + 16) = v110;
  *(v74 + 24) = v75;
  *(v74 + 32) = v100;
  v76 = v113;
  *(v74 + 40) = v112;
  *(v74 + 48) = v76;
  v77 = v124;
  *(v74 + 56) = v123;
  *(v74 + 64) = v77;
  v78 = v108;
  *(v74 + 72) = v118;
  *(v74 + 80) = v78;
  v79 = v120;
  *(v74 + 88) = v119;
  *(v74 + 96) = v79;
  v80 = v122;
  *(v74 + 104) = v121;
  *(v74 + 112) = v80;
  sub_1B628A128(v69, v74 + v70, &unk_1EB943210, &unk_1B63C3F50);
  v81 = (v74 + v71);
  v82 = v126;
  *v81 = v125;
  v81[1] = v82;
  v83 = v127;
  *(v74 + v72) = v127;
  *(v74 + v73) = v66;
  *(v74 + ((v73 + 11) & 0xFFFFFFFFFFFFFFF8)) = v68;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v84 = v116;
  v85 = *&v116[v128];
  v86 = v106;
  v87 = v103;
  v126 = v102;
  v125 = v101;
  v124 = v99;
  v88 = v83;
  if (sub_1B63BEF24())
  {
    v127 = v87;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1B6349DBC;
    *(v89 + 24) = v74;
    v90 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v91 = *&v36[v90];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[v90] = v91;
    v93 = v86;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_1B629A8E8(0, v91[2] + 1, 1, v91);
      *&v36[v90] = v91;
    }

    v95 = v91[2];
    v94 = v91[3];
    if (v95 >= v94 >> 1)
    {
      v91 = sub_1B629A8E8((v94 > 1), v95 + 1, 1, v91);
    }

    v91[2] = v95 + 1;
    v96 = &v91[2 * v95];
    v96[4] = sub_1B62B9488;
    v96[5] = v89;
    *&v36[v90] = v91;
    swift_endAccess();
    v86 = v93;
    v87 = v127;
  }

  [*&v84[v128] unlock];

  sub_1B6284EAC(v129, &unk_1EB943210, &unk_1B63C3F50);
  return v36;
}

void sub_1B633EB9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, unsigned int a20, uint64_t a21)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = v49 - v30;
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    v49[1] = a8;
    v50 = v31;
    v51 = a2;
    [v33 setEnclosingRegionMuid_];
    [v33 setEnclosingRegionProvider_];
    [v33 setHidden_];
    [v33 setLatitude_];
    [v33 setLongitude_];
    if (a9)
    {
      v34 = sub_1B63BEBC4();
    }

    else
    {
      v34 = 0;
    }

    [v33 setMapItemAddress_];

    v35 = v50;
    if (a11)
    {
      v36 = sub_1B63BEBC4();
    }

    else
    {
      v36 = 0;
    }

    [v33 setMapItemCategory_];

    if (a13)
    {
      v37 = sub_1B63BEBC4();
    }

    else
    {
      v37 = 0;
    }

    [v33 setMapItemCity_];

    if (a15)
    {
      v38 = sub_1B63BEBC4();
    }

    else
    {
      v38 = 0;
    }

    [v33 setMapItemIdentifier_];

    sub_1B628C510(a16, v35, &unk_1EB943210, &unk_1B63C3F50);
    v39 = sub_1B63BE994();
    v40 = *(v39 - 8);
    v41 = 0;
    if ((*(v40 + 48))(v35, 1, v39) != 1)
    {
      v41 = sub_1B63BE954();
      (*(v40 + 8))(v35, v39);
    }

    [v33 setMapItemLastRefreshed_];

    if (a18)
    {
      v42 = sub_1B63BEBC4();
    }

    else
    {
      v42 = 0;
    }

    [v33 setMapItemName_];

    if (a19 && (v43 = [a19 data]) != 0)
    {
      v44 = v43;
      v45 = sub_1B63BE924();
      v47 = v46;

      v48 = sub_1B63BE904();
      sub_1B628BAC0(v45, v47);
    }

    else
    {
      v48 = 0;
    }

    [v33 setMapItemStorage_];

    [v33 setMapItemTopLevelCategory_];
    [v33 setMuid_];
  }
}

void sub_1B633F278(void *a1, int a2, int a3)
{
  LODWORD(v5) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v142 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v142 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v142 - v18;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    LODWORD(v149) = a3;
    if (v5)
    {
      v22 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
      *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid) = 0;
      v23 = a1;

      v24 = 0;
    }

    else
    {
      v25 = a1;
      v26 = [v21 enclosingRegionMuid];
      v27 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
      *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid) = v26;

      v24 = [v21 enclosingRegionProvider];
    }

    v28 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider);
    *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider) = v24;

    v29 = [v21 hidden];
    *(v3 + OBJC_IVAR___MSVisitedLocation__hidden) = v29;
    v150 = v5;
    if (v5)
    {
      v30 = sub_1B63BE994();
      (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
    }

    else
    {
      v31 = [v21 latestVisitDate];
      if (v31)
      {
        v5 = v31;
        sub_1B63BE974();

        LOBYTE(v5) = v150;
        v32 = sub_1B63BE994();
        (*(*(v32 - 8) + 56))(v17, 0, 1, v32);
      }

      else
      {
        v33 = sub_1B63BE994();
        (*(*(v33 - 8) + 56))(v17, 1, 1, v33);
      }

      sub_1B628A128(v17, v19, &unk_1EB943210, &unk_1B63C3F50);
    }

    v34 = OBJC_IVAR___MSVisitedLocation__latestVisitDate;
    swift_beginAccess();
    sub_1B6282DFC(v19, v3 + v34, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (v5)
    {
      v35 = *(v3 + OBJC_IVAR___MSVisitedLocation__latitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__latitude) = 0;

      v36 = *(v3 + OBJC_IVAR___MSVisitedLocation__longitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__longitude) = 0;

      v37 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
      v38 = *(v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8);
      *v37 = 0;
      v37[1] = 0;

      v39 = 0;
      v40 = 0;
      v41 = v3;
    }

    else
    {
      v42 = [v21 latitude];
      v43 = *(v3 + OBJC_IVAR___MSVisitedLocation__latitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__latitude) = v42;

      v44 = [v21 longitude];
      v45 = *(v3 + OBJC_IVAR___MSVisitedLocation__longitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__longitude) = v44;

      v46 = [v21 mapItemAddress];
      v41 = v3;
      if (v46)
      {
        v47 = v46;
        v48 = sub_1B63BEBD4();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v51 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
      v52 = *(v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8);
      *v51 = v48;
      v51[1] = v50;

      v53 = [v21 mapItemCategory];
      if (v53)
      {
        v54 = v53;
        v39 = sub_1B63BEBD4();
        v40 = v55;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      LOBYTE(v5) = v150;
    }

    v56 = (v41 + OBJC_IVAR___MSVisitedLocation__mapItemCategory);
    v57 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8);
    *v56 = v39;
    v56[1] = v40;

    if (v5)
    {
      v58 = (v41 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
      v59 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemCity + 8);
      *v58 = 0;
      v58[1] = 0;

      v60 = 0;
      v61 = 0;
    }

    else
    {
      v62 = [v21 mapItemCity];
      if (v62)
      {
        v63 = v62;
        v64 = sub_1B63BEBD4();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0;
      }

      v67 = (v41 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
      v68 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemCity + 8);
      *v67 = v64;
      v67[1] = v66;

      v69 = [v21 mapItemIdentifier];
      if (v69)
      {
        v70 = v69;
        v60 = sub_1B63BEBD4();
        v61 = v71;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      LOBYTE(v5) = v150;
    }

    v72 = (v41 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier);
    v73 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8);
    *v72 = v60;
    v72[1] = v61;

    if (v5)
    {
      v74 = sub_1B63BE994();
      (*(*(v74 - 8) + 56))(v14, 1, 1, v74);
    }

    else
    {
      v75 = [v21 mapItemLastRefreshed];
      if (v75)
      {
        v76 = v75;
        sub_1B63BE974();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }

      v78 = sub_1B63BE994();
      (*(*(v78 - 8) + 56))(v11, v77, 1, v78);
      sub_1B628A128(v11, v14, &unk_1EB943210, &unk_1B63C3F50);
    }

    v79 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v14, v41 + v79, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (v5)
    {
      v80 = (v41 + OBJC_IVAR___MSVisitedLocation__mapItemName);
      v81 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemName + 8);
      *v80 = 0;
      v80[1] = 0;

      v82 = 0;
      v83 = 0xF000000000000000;
      v84 = v149;
    }

    else
    {
      v85 = [v21 mapItemName];
      v84 = v149;
      if (v85)
      {
        v86 = v85;
        v87 = sub_1B63BEBD4();
        v89 = v88;
      }

      else
      {
        v87 = 0;
        v89 = 0;
      }

      v90 = (v41 + OBJC_IVAR___MSVisitedLocation__mapItemName);
      v91 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemName + 8);
      *v90 = v87;
      v90[1] = v89;

      v92 = [v21 mapItemStorage];
      if (v92)
      {
        v93 = v92;
        v82 = sub_1B63BE924();
        v83 = v94;
      }

      else
      {
        v82 = 0;
        v83 = 0xF000000000000000;
      }
    }

    v95 = (v41 + OBJC_IVAR___MSVisitedLocation__mapItemStorage);
    v96 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemStorage);
    v97 = *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8);
    *v95 = v82;
    v95[1] = v83;
    sub_1B6284F64(v96, v97);
    v98 = [v21 mapItemTopLevelCategory];
    *(v41 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory) = v98;
    if (v5)
    {
      v99 = 0;
    }

    else
    {
      v99 = [v21 muid];
    }

    v100 = *(v41 + OBJC_IVAR___MSVisitedLocation__muid);
    *(v41 + OBJC_IVAR___MSVisitedLocation__muid) = v99;

    if ((v84 & 1) == 0)
    {
      goto LABEL_67;
    }

    v101 = [v21 visits];
    if (!v101)
    {
      goto LABEL_67;
    }

    v102 = v101;
    v154 = 0;
    v103 = type metadata accessor for MapsSyncManagedVisit();
    sub_1B6349B8C();
    v142[1] = v103;
    sub_1B63BED54();

    v104 = v154;
    if (v154)
    {
      v149 = v41;
      if ((v154 & 0xC000000000000001) != 0)
      {
        sub_1B63BF004();
        sub_1B63BED74();
        v104 = v154;
        v105 = v155;
        v106 = v156;
        v107 = v157;
        v108 = v158;
      }

      else
      {
        v107 = 0;
        v109 = -1 << *(v154 + 32);
        v105 = v154 + 56;
        v106 = ~v109;
        v110 = -v109;
        if (v110 < 64)
        {
          v111 = ~(-1 << v110);
        }

        else
        {
          v111 = -1;
        }

        v108 = v111 & *(v154 + 56);
      }

      v142[0] = v106;
      v112 = (v106 + 64) >> 6;
      v143 = v150 & 1;
      v145 = v105;
      v146 = v104;
      v144 = v112;
      if (v104 < 0)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v113 = v107;
        v114 = v108;
        v115 = v107;
        if (!v108)
        {
          break;
        }

LABEL_60:
        v116 = (v114 - 1) & v114;
        v117 = *(*(v104 + 48) + ((v115 << 9) | (8 * __clz(__rbit64(v114)))));
        if (!v117)
        {
LABEL_66:
          sub_1B628B9E4();
          goto LABEL_67;
        }

        while (1)
        {
          v119 = *(v149 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
          v120 = objc_allocWithZone(type metadata accessor for Visit());
          v148 = v116;
          v121 = v120;
          v120[OBJC_IVAR___MSVisit__hidden] = 0;
          v122 = OBJC_IVAR___MSVisit__startDate;
          v123 = sub_1B63BE994();
          v124 = *(*(v123 - 8) + 56);
          v124(&v121[v122], 1, 1, v123);
          *&v121[OBJC_IVAR___MSVisit__visitClassification] = 0;
          *&v121[OBJC_IVAR___MSVisit__location] = 0;
          *&v121[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
          v125 = a1;
          v126 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
          v127 = objc_allocWithZone(MEMORY[0x1E696AD10]);
          v147 = v117;
          v128 = v119;
          *&v121[v126] = [v127 init];
          a1 = v125;
          *&v121[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
          v129 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
          v130 = type metadata accessor for MapsSyncHashing();
          (*(*(v130 - 8) + 56))(&v121[v129], 1, 1, v130);
          v131 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
          v132 = sub_1B63BEA04();
          (*(*(v132 - 8) + 56))(&v121[v131], 1, 1, v132);
          v124(&v121[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v123);
          v124(&v121[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v123);
          v112 = v144;
          *&v121[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v128;
          v121[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v143;
          v133 = type metadata accessor for MapsSyncObject();
          v153.receiver = v121;
          v153.super_class = v133;
          v134 = v128;
          v135 = objc_msgSendSuper2(&v153, sel_init);
          v136 = v147;
          v137 = [v147 objectID];
          v138 = *(v135 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
          *(v135 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v137;

          (*((*MEMORY[0x1E69E7D40] & *v135) + 0x218))(v136, v150 & 1, 0);
          v139 = v136;

          swift_beginAccess();
          v140 = v135;
          sub_1B62CAA38(&v152, v140);
          v141 = v152;
          swift_endAccess();

          v105 = v145;
          v104 = v146;
          v107 = v115;
          v108 = v148;
          if ((v146 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_62:
          v118 = sub_1B63BF074();
          if (v118)
          {
            v152 = v118;
            swift_dynamicCast();
            v117 = v151;
            v115 = v107;
            v116 = v108;
            if (v151)
            {
              continue;
            }
          }

          goto LABEL_66;
        }
      }

      while (1)
      {
        v115 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          break;
        }

        if (v115 >= v112)
        {
          goto LABEL_66;
        }

        v114 = *(v105 + 8 * v115);
        ++v113;
        if (v114)
        {
          goto LABEL_60;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_67:
    }
  }
}

uint64_t sub_1B633FF80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B63482F0;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_23;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B63482F0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6340340(void *a1)
{
  sub_1B6348318(a1);
}

void (*sub_1B6340378(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B633FF80();
  return sub_1B63403C0;
}

uint64_t sub_1B634041C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B63484D8;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_27_3;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B63484D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63407DC(void *a1)
{
  sub_1B6348500(a1);
}

void (*sub_1B6340814(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B634041C();
  return sub_1B634085C;
}

uint64_t sub_1B63408E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisitedLocation__hidden);
  [v1 unlock];
  return v2;
}

id sub_1B6340990(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisitedLocation__hidden) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B63486C0;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6340B3C(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id (*sub_1B6340BA0(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__hidden);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6340C24;
}

uint64_t sub_1B6340C64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSVisitedLocation__latestVisitDate;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v2 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B63486C8;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_45;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B6341190()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__latitude);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B63486F0;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_55_1;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B63486F0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6341550(void *a1)
{
  sub_1B6348718(a1);
}

void (*sub_1B6341588(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6341190();
  return sub_1B63415D0;
}

uint64_t sub_1B634162C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__longitude);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B63488D8;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_66_0;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B63488D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63419EC(void *a1)
{
  sub_1B6348900(a1);
}

void (*sub_1B6341A24(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B634162C();
  return sub_1B6341A6C;
}

uint64_t sub_1B6341A9C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
  v4 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6348AC0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_77;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6348AC0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6341E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
  v8 = *(v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6348AE8;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B6342008(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6341A9C();
  a1[1] = v3;
  return sub_1B6342050;
}

uint64_t sub_1B6342080()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemCategory);
  v4 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6348B0C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_94;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6348B0C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6342424(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1B63424AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemCategory);
  v8 = *(v3 + OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6348B34;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B6342674(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6342080();
  a1[1] = v3;
  return sub_1B63426BC;
}

uint64_t sub_1B63426D4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

uint64_t sub_1B634276C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
  v4 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemCity + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6348B58;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_112_1;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6348B58;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6342B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
  v8 = *(v3 + OBJC_IVAR___MSVisitedLocation__mapItemCity + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6348B80;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B6342CD8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B634276C();
  a1[1] = v3;
  return sub_1B6342D20;
}

uint64_t sub_1B6342D50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6348BA4;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_130;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6348BA4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B63430F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6348BCC;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B63432BC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6342D50();
  a1[1] = v3;
  return sub_1B6343304;
}

id sub_1B6343334(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1;
  a3();

  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1B63BE954();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_1B6343464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v2 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6348BF0;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_148;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B6343A64(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6348C18;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

uint64_t sub_1B6343D44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B628C510(a1, &v10 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v8 = *a2;
  return sub_1B6343A64(v7);
}

void sub_1B6343DF0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27[-v14];
  v28[0] = 0;
  v16 = [a1 existingObjectWithID:a2 error:v28];
  v17 = v28[0];
  if (v16)
  {
    v18 = v16;
    type metadata accessor for MapsSyncManagedVisitedLocation();
    v19 = swift_dynamicCastClass();
    v20 = v17;
    if (v19 && (v21 = [v19 *a4]) != 0)
    {
      v22 = v21;
      sub_1B63BE974();

      v23 = *(v9 + 32);
      v23(v15, v13, v8);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v23(a3, v15, v8);
      (*(v9 + 56))(a3, 0, 1, v8);
    }

    else
    {
    }
  }

  else
  {
    v24 = v28[0];
    v25 = sub_1B63BE824();

    swift_willThrow();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1B6344028(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    sub_1B628C510(a3, v8, &unk_1EB943210, &unk_1B63C3F50);
    v11 = sub_1B63BE994();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    v14 = a2;
    v15 = 0;
    if (v13 != 1)
    {
      v15 = sub_1B63BE954();
      (*(v12 + 8))(v8, v11);
    }

    [v10 setMapItemLastRefreshed_];
  }
}

void (*sub_1B6344194(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B6343464(v4);
  return sub_1B6344250;
}

void sub_1B6344250(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1B628C510(a1[2], v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B6343A64(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B6343A64(a1[2]);
  }

  free(v3);

  free(v2);
}

id sub_1B6344304(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1B63BEBC4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B6344384()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemName);
  v4 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemName + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6348CA4;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_165;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6348CA4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6344728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemName);
  v8 = *(v3 + OBJC_IVAR___MSVisitedLocation__mapItemName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6348CCC;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B63448F0(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVisitedLocation();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BEBD4();
      v15 = v14;

      v16 = a3[1];
      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
    }
  }

  else
  {
    v17 = v20[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B6344A14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B6344AD8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6344384();
  a1[1] = v3;
  return sub_1B6344B20;
}

uint64_t sub_1B6344B7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemStorage);
  v5 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8);
  v29 = v4;
  v30 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      v8 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v4, v5);
      v9 = sub_1B63BE904();
      v10 = [v8 initWithData_];

      sub_1B6284F64(v4, v5);
LABEL_15:
      v16 = 0;
LABEL_16:
      sub_1B6284F64(v29, v30);
      sub_1B62B1F7C(v16);
      return v10;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_10:
    v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_12;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_12:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    v28[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    goto LABEL_14;
  }

  [v3 lock];
  v18 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v18;
  [v3 unlock];
  if (!v18)
  {
    sub_1B6295C20(v13);
    v10 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  v20 = swift_allocObject();
  v20[2] = v13;
  v20[3] = v19;
  v20[4] = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B6348CF0;
  *(v21 + 24) = v20;
  v28[4] = sub_1B62B9478;
  v28[5] = v21;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1B62B1294;
  v28[3] = &block_descriptor_183_0;
  v22 = _Block_copy(v28);
  v23 = v19;

  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    v24 = v30;
    if (v30 >> 60 == 15)
    {

      sub_1B6295C20(v13);
      v10 = 0;
    }

    else
    {
      v25 = v29;
      v26 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v25, v24);
      v27 = sub_1B63BE904();
      v10 = [v26 initWithData_];

      sub_1B6284F64(v25, v24);
      sub_1B6295C20(v13);
    }

    v16 = sub_1B6348CF0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B6345070(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B634520C(v2, a1, v1);
  [v2 unlock];
}

void sub_1B63450E8(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedVisitedLocation();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItemStorage]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BE924();
      v13 = v12;

      v14 = *a3;
      v15 = a3[1];
      *a3 = v11;
      a3[1] = v13;
      sub_1B6284F64(v14, v15);
    }

    else
    {
    }
  }

  else
  {
    v16 = v19[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B634520C(uint64_t a1, void *a2, char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v97 - v7;
  if (a2)
  {
    v9 = a2;
    v10 = [v9 data];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1B63BE924();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v33 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
    v34 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
    v35 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
    *v33 = v12;
    v33[1] = v14;
    sub_1B6284F64(v34, v35);
    v36 = [v9 _muid];
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v38 = *&a3[OBJC_IVAR___MSVisitedLocation__muid];
    *&a3[OBJC_IVAR___MSVisitedLocation__muid] = v37;

    [v9 coordinate];
    v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v41 = *&a3[OBJC_IVAR___MSVisitedLocation__latitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__latitude] = v40;

    [v9 coordinate];
    v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v44 = *&a3[OBJC_IVAR___MSVisitedLocation__longitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__longitude] = v43;

    v45 = [v9 addressObject];
    if (v45 && (v46 = v45, v47 = [v45 fullAddressWithMultiline_], v46, v47))
    {
      v48 = sub_1B63BEBD4();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v51 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
    v52 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8];
    *v51 = v48;
    v51[1] = v50;

    v53 = [v9 name];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1B63BEBD4();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v58 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemName];
    v59 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemName + 8];
    *v58 = v55;
    v58[1] = v57;

    v32 = v9;
    v60 = sub_1B6347B3C(v32);
    v62 = v61;

    v63 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
    v64 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8];
    *v63 = v60;
    *(v63 + 1) = v62;

    v65 = [v32 _identifier];
    if (v65 && (v66 = v65, v67 = [v65 mapsIdentifierString], v66, v67))
    {
      v68 = sub_1B63BEBD4();
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
    v72 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8];
    *v71 = v68;
    v71[1] = v70;

    sub_1B63BE984();
    v73 = sub_1B63BE994();
    (*(*(v73 - 8) + 56))(v8, 0, 1, v73);
    v74 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v8, &a3[v74], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v75 = [v32 enclosingRegionIdentifier];
    if (v75)
    {
      v76 = v75;
      v77 = [v76 muid];
      v78 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    }

    else
    {
      v78 = 0;
    }

    v79 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = v78;

    v80 = [v32 enclosingRegionIdentifier];
    if (v80)
    {
      v81 = v80;
      v82 = [v81 resultProviderID];
      v83 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    }

    else
    {

      v83 = 0;
    }

    v84 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = v83;
  }

  else
  {
    v15 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
    v16 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v15, v16);
    v17 = *&a3[OBJC_IVAR___MSVisitedLocation__muid];
    *&a3[OBJC_IVAR___MSVisitedLocation__muid] = 0;

    v18 = *&a3[OBJC_IVAR___MSVisitedLocation__latitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__latitude] = 0;

    v19 = *&a3[OBJC_IVAR___MSVisitedLocation__longitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__longitude] = 0;

    v20 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
    v21 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8];
    *v20 = 0;
    *(v20 + 1) = 0;

    v22 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemName];
    v23 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemName + 8];
    *v22 = 0;
    *(v22 + 1) = 0;

    v24 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
    v25 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8];
    *v24 = 0;
    *(v24 + 1) = 0;

    v26 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
    v27 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8];
    *v26 = 0;
    *(v26 + 1) = 0;

    v28 = sub_1B63BE994();
    (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
    v29 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v8, &a3[v29], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v30 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = 0;

    v31 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = 0;

    v32 = 0;
  }

  v85 = swift_allocObject();
  *(v85 + 16) = a2;
  *(v85 + 24) = a3;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v86 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v87 = v32;
  v88 = a3;
  if (sub_1B63BEF24())
  {
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1B6349C08;
    *(v89 + 24) = v85;
    v90 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v91 = *&v88[v90];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v88[v90] = v91;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_1B629A8E8(0, v91[2] + 1, 1, v91);
      *&v88[v90] = v91;
    }

    v94 = v91[2];
    v93 = v91[3];
    if (v94 >= v93 >> 1)
    {
      v91 = sub_1B629A8E8((v93 > 1), v94 + 1, 1, v91);
    }

    v91[2] = v94 + 1;
    v95 = &v91[2 * v94];
    v95[4] = sub_1B62B9488;
    v95[5] = v89;
    *&v88[v90] = v91;
    swift_endAccess();
  }
}

void sub_1B6345968(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1B63BE994();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    if (a3)
    {
      ObjectType = swift_getObjectType();
      v47 = a2;
      v13 = a3;
      v14 = [ObjectType strippedMapItemWith_];
      v15 = [v14 data];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1B63BE924();
        v19 = v18;

        v20 = sub_1B63BE904();
        sub_1B628BAC0(v17, v19);
      }

      else
      {
        v20 = 0;
      }

      [v11 setMapItemStorage_];

      v22 = [v14 _muid];
      v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      [v11 setMuid_];

      [v14 coordinate];
      v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v11 setLatitude_];

      [v14 coordinate];
      v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v11 setLongitude_];

      v28 = [v14 addressObject];
      if (!v28 || (v29 = v28, v30 = [v28 fullAddressWithMultiline_], v29, !v30))
      {
        v30 = 0;
      }

      [v11 setMapItemAddress_];

      v31 = [v14 name];
      [v11 setMapItemName_];

      v32 = v14;
      sub_1B6347B3C(v32);

      v33 = sub_1B63BEBC4();

      [v11 setMapItemCategory_];

      v34 = [v32 _identifier];
      if (!v34 || (v35 = v34, v36 = [v34 mapsIdentifierString], v35, !v36))
      {
        v36 = 0;
      }

      [v11 setMapItemIdentifier_];

      sub_1B63BE984();
      v37 = sub_1B63BE954();
      (*(v6 + 8))(v9, v5);
      [v11 setMapItemLastRefreshed_];

      v38 = [v32 enclosingRegionIdentifier];
      if (v38)
      {
        v39 = v38;
        v40 = [v39 muid];
        v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      }

      else
      {
        v41 = 0;
      }

      [v11 setEnclosingRegionMuid_];

      v42 = [v32 enclosingRegionIdentifier];
      if (v42)
      {
        v43 = v42;
        v44 = [v43 resultProviderID];
        v45 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      }

      else
      {
        v45 = 0;
      }

      [v11 setEnclosingRegionProvider_];
    }

    else
    {
      v47 = a2;
      [v11 setMapItemStorage_];
      [v11 setMuid_];
      [v11 setLatitude_];
      [v11 setLongitude_];
      [v11 setMapItemAddress_];
      [v11 setMapItemName_];
      [v11 setMapItemCategory_];
      [v11 setMapItemIdentifier_];
      [v11 setMapItemLastRefreshed_];
      [v11 setEnclosingRegionMuid_];
      [v11 setEnclosingRegionProvider_];
      v21 = v47;
    }
  }
}

void (*sub_1B6345F60(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6344B7C();
  return sub_1B6345FA8;
}

void sub_1B6345FA8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B634520C(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B634520C(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B63460E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory);
  [v1 unlock];
  return v2;
}

id sub_1B6346194(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6348CFC;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6346340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setMapItemTopLevelCategory_];
  }

  return result;
}

id (*sub_1B63463A4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6346428;
}

uint64_t sub_1B6346494()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__muid);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6348D04;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_200;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B6348D04;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6346854(void *a1)
{
  sub_1B6348D2C(a1);
}

void sub_1B634688C(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVisitedLocation();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9)
    {
      v11 = [v9 *a4];

      if (v11)
      {
        v12 = *a3;
        *a3 = v11;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v16[0];
    v14 = sub_1B63BE824();

    swift_willThrow();
  }

  v15 = *MEMORY[0x1E69E9840];
}

id sub_1B63469A0(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B6346A10(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6346494();
  return sub_1B6346A58;
}

void sub_1B6346A70(id *a1, char a2, void (*a3)(id))
{
  v4 = a1[1];
  v7 = *a1;
  if (a2)
  {
    v5 = v7;
    a3(v7);

    v6 = v5;
  }

  else
  {
    a3(*a1);
    v6 = v7;
  }
}

char *sub_1B6346AF0()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B7F0C(MEMORY[0x1E69E7CC0]);
  }

  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];

  v2 = OBJC_IVAR___MSVisitedLocation__visits;
  swift_beginAccess();
  v3 = *(v0 + v2);

  [v1 unlock];
  v4 = sub_1B62B7A7C(v3);

  return v4;
}

id sub_1B6346C30(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = a1;
  sub_1B62CAA38(&v17, v5);
  v6 = v17;
  swift_endAccess();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v5;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6348EEC;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6346E80(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1B62CC838(a1);
  swift_endAccess();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v7 = a1;
  if (sub_1B63BEF24())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1B6348F10;
    *(v8 + 24) = v6;
    v9 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v10 = *(v2 + v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1B629A8E8(0, v10[2] + 1, 1, v10);
      *(v2 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1B629A8E8((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1B62B9488;
    v14[5] = v8;
    *(v2 + v9) = v10;
    swift_endAccess();
  }

  return [v4 unlock];
}

void sub_1B634705C(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    v14 = a2;
    [v10 lock];
    v11 = sub_1B629563C(v10, a1);
    [v10 unlock];
    if (v11)
    {
      type metadata accessor for MapsSyncManagedVisit();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        [v9 *a4];
      }

      v13 = v11;
    }

    else
    {
      v13 = v14;
    }
  }
}

void *sub_1B63471D0(void *a1, void *a2, int a3, int a4)
{
  v55 = a4;
  v56 = a3;
  v57 = a2;
  v58 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v51 - v10;
  *&v4[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = 0;
  v4[OBJC_IVAR___MSVisitedLocation__hidden] = 0;
  v11 = OBJC_IVAR___MSVisitedLocation__latestVisitDate;
  v12 = sub_1B63BE994();
  v13 = *(*(v12 - 8) + 56);
  v13(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR___MSVisitedLocation__latitude] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__longitude] = 0;
  v14 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemCity];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
  *v17 = 0;
  v17[1] = 0;
  v13(&v4[OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed], 1, 1, v12);
  v18 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemName];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__mapItemStorage] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__muid] = 0;
  v19 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B7F0C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR___MSVisitedLocation__visits] = v20;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v19;
  v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v23 = type metadata accessor for MapsSyncHashing();
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v25 = sub_1B63BEA04();
  v26 = *(*(v25 - 8) + 56);
  v26(&v4[v24], 1, 1, v25);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v12);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v12);
  v27 = v57;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v57;
  v28 = v56 & 1;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v56 & 1;
  v29 = type metadata accessor for MapsSyncObject();
  v59.receiver = v4;
  v59.super_class = v29;
  v30 = v27;
  v31 = objc_msgSendSuper2(&v59, sel_init);
  v32 = v31;
  v33 = v58;
  if (v58)
  {
    v34 = v31;
    v35 = [v33 objectID];
    v36 = *(v34 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v34 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v35;

    (*((*MEMORY[0x1E69E7D40] & *v34) + 0x218))(v33, v28, v55 & 1);
  }

  else
  {
    v37 = v31;
    v38 = v54;
    sub_1B63BE9F4();
    v26(v38, 0, 1, v25);
    v39 = v51;
    sub_1B628C510(v38, v51, &unk_1EB943680, qword_1B63C4070);
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v39, &v37[v40], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v41 = v53;
    sub_1B628C510(v38, v53, &unk_1EB943680, qword_1B63C4070);
    v42 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v43 = swift_allocObject();
    sub_1B628A128(v41, v43 + v42, &unk_1EB943680, qword_1B63C4070);
    v44 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v45 = *&v37[v44];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[v44] = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_1B629A8E8(0, v45[2] + 1, 1, v45);
      *&v37[v44] = v45;
    }

    v48 = v45[2];
    v47 = v45[3];
    if (v48 >= v47 >> 1)
    {
      v45 = sub_1B629A8E8((v47 > 1), v48 + 1, 1, v45);
    }

    v45[2] = v48 + 1;
    v49 = &v45[2 * v48];
    v49[4] = sub_1B62B2D5C;
    v49[5] = v43;
    *&v37[v44] = v45;
    swift_endAccess();

    sub_1B6284EAC(v38, &unk_1EB943680, qword_1B63C4070);
  }

  return v32;
}

uint64_t sub_1B6347870()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSVisitedLocation__latestVisitDate, &unk_1EB943210, &unk_1B63C3F50);

  v1 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8);

  v2 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8);

  v3 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemCity + 8);

  v4 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemName + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVisitedLocation__mapItemStorage), *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8));

  v6 = *(v0 + OBJC_IVAR___MSVisitedLocation__visits);
}

id VisitedLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedLocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6347B3C(void *a1)
{
  v26 = sub_1B63BE844();
  v23 = *(v26 - 8);
  v2 = *(v23 + 64);
  v3 = MEMORY[0x1EEE9AC00](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v32 = MEMORY[0x1E69E7CD0];
  v8 = [a1 _place];
  v9 = [v8 firstBusiness];

  v10 = [v9 localizedCategories];
  if (!v10)
  {
    sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
    v10 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
  }

  sub_1B63BEEE4();

  sub_1B63BE834();
  if (!v31)
  {
LABEL_16:
    (*(v23 + 8))(v7, v26);
    v30 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943328, &unk_1B63C4B40);
    sub_1B6349C10();
    sub_1B6349C74();
    v21 = sub_1B63BEC74();

    return v21;
  }

  v11 = sub_1B6281C60(0, &qword_1EB943330, 0x1E69A1BD0);
  v24 = (v23 + 8);
  v25 = v11;
  while (1)
  {
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    v12 = v7;
    v13 = v28;
    v14 = [v28 localizedNames];
    if (!v14)
    {
      sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
      v14 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
    }

    sub_1B63BEEE4();

    sub_1B63BE834();
    if (v29)
    {
      break;
    }

LABEL_5:
    (*v24)(v5, v26);

    v7 = v12;
LABEL_6:
    sub_1B63BE834();
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  sub_1B6281C60(0, qword_1EB943338, 0x1E69A1E68);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_1B63BE834();
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  v15 = v27;
  result = [v27 name];
  if (result)
  {
    v17 = result;
    v18 = sub_1B63BEBD4();
    v20 = v19;

    sub_1B62CD684(&v27, v18, v20);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1B6347EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19)
{
  v44 = a4;
  v45 = a5;
  v40 = a3;
  v41 = a1;
  v42 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v38 - v22;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDB0F2A8;
  if (a7)
  {
    v38 = sub_1B63BEBC4();

    v24 = a11;
    if (a9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v38 = 0;
    v24 = a11;
    if (a9)
    {
LABEL_5:
      v25 = sub_1B63BEBC4();

      v26 = a13;
      v27 = a14;
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_10:
      v28 = 0;
      if (v26)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v25 = 0;
  v26 = a13;
  v27 = a14;
  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_6:
  v28 = sub_1B63BEBC4();

  if (v26)
  {
LABEL_7:
    v29 = sub_1B63BEBC4();

    goto LABEL_12;
  }

LABEL_11:
  v29 = 0;
LABEL_12:
  sub_1B628C510(v27, v23, &unk_1EB943210, &unk_1B63C3F50);
  v30 = sub_1B63BE994();
  v31 = *(v30 - 8);
  v32 = 0;
  if ((*(v31 + 48))(v23, 1, v30) != 1)
  {
    v32 = sub_1B63BE954();
    (*(v31 + 8))(v23, v30);
  }

  if (a16)
  {
    v33 = sub_1B63BEBC4();
  }

  else
  {
    v33 = 0;
  }

  LODWORD(v37) = a18;
  v34 = v38;
  v35 = [v43 initWithStore:v39 enclosingRegionMuid:v41 enclosingRegionProvider:v42 hidden:v40 & 1 latitude:v44 longitude:v45 mapItemAddress:v38 mapItemCategory:v25 mapItemCity:v28 mapItemIdentifier:v29 mapItemLastRefreshed:v32 mapItemName:v33 mapItemStorage:a17 mapItemTopLevelCategory:v37 muid:a19];

  sub_1B6284EAC(v27, &unk_1EB943210, &unk_1B63C3F50);
  return v35;
}

void sub_1B63481DC(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1B633EB9C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 11) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B6348318(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
  *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349D34;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6348500(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider);
  *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349D10;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6348718(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__latitude);
  *(v2 + OBJC_IVAR___MSVisitedLocation__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349CEC;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6348900(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__longitude);
  *(v2 + OBJC_IVAR___MSVisitedLocation__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349CC8;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

void sub_1B6348C18(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B6344028(a1, a2, v6);
}

id sub_1B6348D2C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__muid);
  *(v2 + OBJC_IVAR___MSVisitedLocation__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349BE4;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

uint64_t type metadata accessor for VisitedLocation()
{
  result = qword_1EB942E20;
  if (!qword_1EB942E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_set_225Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

void sub_1B6348FC8()
{
  sub_1B628CC34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B6349B8C()
{
  result = qword_1EB943320;
  if (!qword_1EB943320)
  {
    type metadata accessor for MapsSyncManagedVisit();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943320);
  }

  return result;
}

unint64_t sub_1B6349C10()
{
  result = qword_1EB942BA0;
  if (!qword_1EB942BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB943328, &unk_1B63C4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942BA0);
  }

  return result;
}

unint64_t sub_1B6349C74()
{
  result = qword_1EB942BB0;
  if (!qword_1EB942BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942BB0);
  }

  return result;
}

id sub_1B6349DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CollectionPlaceItemRequest.fetch(searchTerm:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  v5[59] = a1;
  v5[64] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6349E6C, 0, 0);
}

uint64_t sub_1B6349E6C()
{
  v43 = v0[63];
  v44 = v0[64];
  v41 = v0[62];
  v42 = v0[61];
  v1 = v0[59];
  v2 = v0[60];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B63C4B80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1B6281318();
  *(inited + 64) = v6;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v7 = sub_1B628E52C(0xD00000000000001ALL, 0x80000001B63CA370, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  *(v3 + 32) = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1B63C3D50;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = v1;
  *(v8 + 40) = v2;

  v9 = sub_1B628E52C(0xD00000000000001BLL, 0x80000001B63C81C0, v8);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v8 + 32));
  *(v3 + 40) = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1B63C3D50;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v1;
  *(v10 + 40) = v2;

  v11 = sub_1B628E52C(0xD00000000000001ELL, 0x80000001B63C81E0, v10);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v10 + 32));
  *(v3 + 48) = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1B63C3D50;
  *(v12 + 56) = v5;
  *(v12 + 64) = v6;
  *(v12 + 32) = v1;
  *(v12 + 40) = v2;

  v13 = sub_1B628E52C(0xD00000000000001FLL, 0x80000001B63C8200, v12);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v12 + 32));
  *(v3 + 56) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1B63C3D50;
  *(v14 + 56) = v5;
  *(v14 + 64) = v6;
  *(v14 + 32) = v1;
  *(v14 + 40) = v2;

  v15 = sub_1B628E52C(0xD00000000000001DLL, 0x80000001B63C81A0, v14);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v14 + 32));
  *(v3 + 64) = v15;
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v17 = objc_allocWithZone(Predicate);
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v18 = sub_1B63BEC94();

  v19 = [v17 initWithType:2 subpredicates:v18];
  v0[65] = v19;

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1B63C3D50;
  v21 = MEMORY[0x1E69E72E8];
  *(v20 + 56) = MEMORY[0x1E69E7290];
  *(v20 + 64) = v21;
  *(v20 + 32) = 6;
  v22 = (v20 + 32);
  v23 = sub_1B628E52C(0xD00000000000002ELL, 0x80000001B63CA390, v20);
  v0[66] = v23;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B63C4B90;
  *(v24 + 32) = v19;
  *(v24 + 40) = v23;
  v25 = objc_allocWithZone(Predicate);
  v26 = v19;
  v27 = v23;
  v28 = sub_1B63BEC94();

  v29 = [v25 initWithType:1 subpredicates:v28];
  v0[67] = v29;

  v30 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v31 = v41;
  v32 = v29;

  v33 = sub_1B62895F4(v29, v42, v41);
  v0[68] = v33;

  v34 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  v33[v34] = 1;
  v35 = v33;
  v0[69] = sub_1B62835B4();
  v36 = swift_allocObject();
  v0[70] = v36;
  v36[2] = v43;
  v36[3] = v33;
  v36[4] = v44;
  v37 = v35;
  v38 = v43;
  v39 = swift_task_alloc();
  v0[71] = v39;
  *v39 = v0;
  v39[1] = sub_1B634A3F4;

  return sub_1B62857BC(sub_1B6283660, v36);
}

uint64_t sub_1B634A3F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v9 = *v2;
  v3[72] = a1;
  v3[73] = v1;

  if (v1)
  {
    v5 = sub_1B634A700;
  }

  else
  {
    v6 = v3[70];
    v7 = v3[69];

    v5 = sub_1B634A520;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B634A520()
{
  v1 = *(v0 + 576);

  v19 = MEMORY[0x1E69E7CC0];
  if (!(v1 >> 62))
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_19:
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (*(v0 + 576) < 0)
  {
    v11 = *(v0 + 576);
  }

  v3 = sub_1B63BF044();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = *(v0 + 576) + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1B8C92830](v7, *(v0 + 576));
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v7);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CollectionPlaceItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v19;
  }

  while (v4 != v3);
LABEL_23:
  v12 = *(v0 + 576);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  v16 = *(v0 + 520);

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_1B634A700()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];

  v7 = v0[1];
  v8 = v0[73];

  return v7();
}

uint64_t sub_1B634A94C(int a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_1B63BEBD4();
  v11 = v10;
  v5[5] = v10;
  if (a2)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    a2 = sub_1B63BECA4();
  }

  v5[6] = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1B634AA70;

  return CollectionPlaceItemRequest.fetch(searchTerm:sortDescriptors:range:)(v9, v11, a2, a3);
}

uint64_t sub_1B634AA70()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 48);

  if (v2)
  {
    v11 = sub_1B63BE814();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    type metadata accessor for CollectionPlaceItem();
    v11 = sub_1B63BEC94();

    v13 = v11;
    v12 = 0;
  }

  v14 = *(v4 + 32);
  (v14)[2](v14, v13, v12);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_1B634AC54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B628E340;

  return sub_1B634A94C(v2, v3, v4, v5, v6);
}

uint64_t sub_1B634AD1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B634AD60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B634ADA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCollectionItem();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B634ADE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

id sub_1B634AE84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B634AEB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedContactHandle();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

id sub_1B634AF54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedAnonymousCredential();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B634AFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B634B034(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1B634B1B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t getEnumTagSinglePayload for MSRelationChangeType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MSRelationChangeType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B634B58C()
{
  result = qword_1EB9433C0;
  if (!qword_1EB9433C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9433C0);
  }

  return result;
}

uint64_t sub_1B634B5F8()
{
  v1 = *v0;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v1);
  return sub_1B63BF494();
}

uint64_t sub_1B634B66C()
{
  v1 = *v0;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v1);
  return sub_1B63BF494();
}

id sub_1B634B738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedReviewedPlace();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B634B7AC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B634BAA0(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1B634B820()
{
  v1 = *v0;
  sub_1B63BF434();
  sub_1B63BF464();
  return sub_1B63BF494();
}

uint64_t sub_1B634B868()
{
  v1 = *v0;
  sub_1B63BF434();
  sub_1B63BF464();
  return sub_1B63BF494();
}

uint64_t sub_1B634B8AC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B6296B88(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t FavoriteItem.favoriteType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSFavoriteItem__type);
  [v1 unlock];
  LODWORD(result) = sub_1B6296B88(v2);
  if ((result & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t FavoriteItem.sourceType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSFavoriteItem__source);
  [v1 unlock];
  v4 = v2 <= 3 && v2 != 1 || v2 == 0xFFFF;
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v4;
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1B634BAA0(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 <= 2u)
  {
    if (a1 && a1 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1 == 3)
  {
LABEL_8:
    v2 = 0;
    return v1 | (v2 << 16);
  }

  if (a1 != 0xFFFF)
  {
LABEL_9:
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v2 = 0;
  v1 = 0xFFFF;
  return v1 | (v2 << 16);
}

unint64_t sub_1B634BB00()
{
  result = qword_1EB9433C8;
  if (!qword_1EB9433C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9433C8);
  }

  return result;
}

unint64_t sub_1B634BB58()
{
  result = qword_1EB9433D0;
  if (!qword_1EB9433D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9433D0);
  }

  return result;
}

id sub_1B634BC44(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1B634BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B63C3D80;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1B6281318();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;

  sub_1B63BEA14();
}

uint64_t sub_1B634BE88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B63C3D50;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B6281318();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  sub_1B63BEA14();
}

uint64_t sub_1B634BF8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

void sub_1B634C04C(unint64_t a1, char **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_20:
    v3 = sub_1B63BF044();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v22 = v2 & 0xFFFFFFFFFFFFFF8;
  v23 = v2;
  while (1)
  {
    if (v5)
    {
      v8 = MEMORY[0x1B8C92830](v4, v2);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_19;
      }

      v8 = *(v2 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = [v8 changedObjectID];
    v12 = [v11 entity];

    v13 = [v12 managedObjectClassName];
    if (!v13)
    {
      break;
    }

    v14 = v13;

    v15 = NSClassFromString(v14);
    if (v15)
    {
      swift_getObjCClassMetadata();
      sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
      if (swift_dynamicCastMetatype())
      {
        v16 = v3;
        v17 = v5;
        [swift_getObjCClassFromMetadata() wrapperClass];
        v18 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1B62B22B4(0, *(v18 + 2) + 1, 1, v18);
          *a2 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1B62B22B4((v20 > 1), v21 + 1, 1, v18);
          *a2 = v18;
        }

        ObjCClassMetadata = swift_getObjCClassMetadata();
        *(v18 + 2) = v21 + 1;
        *&v18[8 * v21 + 32] = ObjCClassMetadata;
        v5 = v17;
        v3 = v16;
        v6 = v22;
        v2 = v23;
      }
    }

    ++v4;
    if (v10 == v3)
    {
      return;
    }
  }

  __break(1u);
}

id *sub_1B634C288()
{
  v1 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_persistentStoreObserver;
  swift_beginAccess();
  sub_1B634C588(v0 + v1, &v6);
  if (v7)
  {
    sub_1B628E928(&v6, v8);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(v8, v9);
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1B6284EAC(&v6, &unk_1EB943740, &qword_1B63C5030);
  }

  v3 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyStartDate;
  v4 = sub_1B63BE994();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B6284EAC(v0 + v1, &unk_1EB943740, &qword_1B63C5030);

  return v0;
}

uint64_t sub_1B634C430()
{
  sub_1B634C288();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1B634C490(uint64_t a1)
{
  v2 = v1;
  sub_1B63BF114();
  MEMORY[0x1B8C92330](0xD000000000000027, 0x80000001B63CA660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433D8, &qword_1B63C5038);
  sub_1B63BF1B4();
  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0, 0xE000000000000000);

  v4 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock;
  [*(v2 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock) lock];
  [*(v2 + 16) removeObject_];
  return [*(v2 + v4) unlock];
}

uint64_t sub_1B634C588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943740, &qword_1B63C5030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B634C5F8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a1;
    v7 = a1;
  }

  else
  {
    swift_beginAccess();
    v9 = *(a3 + 16);
    *(a3 + 16) = a1;
    v10 = a1;
  }

  return sub_1B63BEE74();
}

uint64_t sub_1B634C690(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B63BEAF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B63BEB14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyQueue);
    v18 = v8;
    v17 = v14;

    aBlock[4] = sub_1B634DBB0;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B628D904;
    aBlock[3] = &block_descriptor_39;
    v15 = _Block_copy(aBlock);

    sub_1B63BEB04();
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
    sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
    sub_1B63BEFA4();
    v16 = v17;
    MEMORY[0x1B8C92510](0, v12, v7, v15);
    _Block_release(v15);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v18);
  }

  return result;
}

uint64_t sub_1B634C974()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B634C9CC();
  }

  return result;
}

uint64_t sub_1B634C9CC()
{
  v1 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_contextLock;
  v2 = *(v0 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_contextLock);

  [v2 lock];
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v3;
    v12[4] = sub_1B634DBC4;
    v12[5] = v4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1B628D904;
    v12[3] = &block_descriptor_45_0;
    v5 = _Block_copy(v12);
    v6 = v3;

    v7 = v6;

    [v7 performBlock_];

    _Block_release(v5);
    v8 = *(v0 + v1);
    [v8 unlock];
  }

  else
  {
    v10 = swift_retain_n();
    sub_1B6285C18(v10, v0, sub_1B634DBB8, v0);

    v11 = *(v0 + v1);
    [v11 unlock];
  }
}

uint64_t sub_1B634CB98(uint64_t a1)
{
  v2 = sub_1B63BE7C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1B63BE7A4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1B634CC8C(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_1B63BF114();
    MEMORY[0x1B8C92330](0xD00000000000002CLL, 0x80000001B63CA920);
    aBlock[6] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    sub_1B63BF1B4();
    sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B63C3D50;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B6281318();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_1B63BEA14();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a1;
    aBlock[4] = sub_1B634DE00;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B628D904;
    aBlock[3] = &block_descriptor_52;
    v7 = _Block_copy(aBlock);

    sub_1B62B1FC0(a1);

    [a1 performBlock_];
    _Block_release(v7);
  }
}

void sub_1B634CEB8(uint64_t a1, void *a2)
{
  v5 = sub_1B63BE7C4();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  v10 = sub_1B634D370(a2);
  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_35;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_36:

    return;
  }

  while (1)
  {
    v13 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
      __break(1u);
LABEL_40:
      v14 = MEMORY[0x1B8C92830](v13, v11);
      goto LABEL_8;
    }

    v2 = (v11 & 0xC000000000000001);
    if ((v11 & 0xC000000000000001) != 0)
    {
      goto LABEL_40;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v14 = *(v11 + 8 * v13 + 32);
LABEL_8:
    v15 = v14;
    v16 = [v14 token];

    if (!v16)
    {
      goto LABEL_36;
    }

    v17 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock;
    [*(a1 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock) lock];
    v18 = *(a1 + 40);
    *(a1 + 40) = v16;
    v36 = v16;

    [*(a1 + v17) unlock];
    if (![*(a1 + 16) count])
    {
      break;
    }

    v19 = sub_1B634DBCC(v11);
    a1 = sub_1B634D698(v19);

    if ((a1 & 1) == 0)
    {
      break;
    }

    v20 = 0;
    *&v37 = v11 & 0xFFFFFFFFFFFFFF8;
    v6 += 8;
    v38 = MEMORY[0x1E69E7CC0];
    while (v12 != v20)
    {
      if (v2)
      {
        v21 = MEMORY[0x1B8C92830](v20, v11);
      }

      else
      {
        if (v20 >= *(v37 + 16))
        {
          goto LABEL_34;
        }

        v21 = *(v11 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = [v21 objectIDNotification];
      sub_1B63BE7A4();

      a1 = sub_1B63BE7B4();
      (*v6)(v9, v5);
      ++v20;
      if (a1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1B62B2290(0, v38[2] + 1, 1, v38);
        }

        v26 = v38[2];
        v25 = v38[3];
        if (v26 >= v25 >> 1)
        {
          v38 = sub_1B62B2290((v25 > 1), v26 + 1, 1, v38);
        }

        v27 = v38;
        v38[2] = v26 + 1;
        v27[v26 + 4] = a1;
        v20 = v23;
      }
    }

    v6 = v38[2];
    if (!v6)
    {
LABEL_31:

      return;
    }

    v29 = 0;
    a1 = 0x1E695D628uLL;
    v30 = v38 + 4;
    v37 = xmmword_1B63C3D50;
    while (v29 < v38[2])
    {
      v31 = v29 + 1;
      v32 = v30[v29];
      v5 = objc_opt_self();

      v2 = sub_1B63BEB54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
      v11 = swift_allocObject();
      *(v11 + 16) = v37;
      *(v11 + 56) = sub_1B6281C60(0, &unk_1EDB0EF80, 0x1E695D628);
      v33 = v39;
      *(v11 + 32) = v39;
      v34 = v33;
      v9 = sub_1B63BEC94();

      [v5 _mergeChangesFromRemoteContextSave_intoContexts_];

      v29 = v31;
      if (v6 == v31)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v12 = sub_1B63BF044();
    if (!v12)
    {
      goto LABEL_36;
    }
  }

  v28 = v36;
}

uint64_t sub_1B634D370(void *a1)
{
  v2 = v1;
  v27 = *MEMORY[0x1E69E9840];
  v4 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock;
  [*(v1 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock) lock];
  v5 = *(v1 + 40);
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = [v6 fetchHistoryAfterToken_];
  }

  else
  {
    v8 = v6;
    v9 = sub_1B63BE954();
    v7 = [v8 fetchHistoryAfterDate_];
  }

  v10 = *(v2 + v4);
  v11 = v7;
  [v10 unlock];
  *&v26[0] = 0;
  v12 = [a1 executeRequest:v11 error:v26];

  v13 = *&v26[0];
  if (v12)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if ([v15 result])
      {
        sub_1B63BEF84();

        swift_unknownObjectRelease();
      }

      else
      {

        v24 = 0u;
        v25 = 0u;
      }

      v26[0] = v24;
      v26[1] = v25;
      if (*(&v25 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB943410, &qword_1B63C5078);
        if (swift_dynamicCast())
        {

          result = v23;
          goto LABEL_18;
        }
      }

      else
      {
        sub_1B6284EAC(v26, &unk_1EB943740, &qword_1B63C5030);
      }
    }

    else
    {
      v19 = v13;
    }
  }

  else
  {
    v17 = *&v26[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }

  sub_1B63BEDC4();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B63C3D50;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1B6281318();
  *(v21 + 32) = 0xD000000000000040;
  *(v21 + 40) = 0x80000001B63CA8D0;
  sub_1B63BEA14();

  result = MEMORY[0x1E69E7CC0];
LABEL_18:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B634D698(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock;
  [*(v1 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock) lock];
  v3 = [*(v1 + 16) allObjects];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433D8, &qword_1B63C5038);
  v5 = sub_1B63BECA4();

  [*(v1 + v2) unlock];
  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    v7 = 0;
    v8 = 0;
    v41 = i;
    v42 = v5 & 0xC000000000000001;
    v39 = v5 + 32;
    v40 = v5 & 0xFFFFFFFFFFFFFF8;
    v43 = *(a1 + 16);
    v36 = v5;
    v37 = v4;
    while (v42)
    {
      v9 = MEMORY[0x1B8C92830](v8, v5);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_30;
      }

LABEL_12:
      if (v43)
      {
        v11 = 0;
        while (2)
        {
          v12 = *(a1 + 32 + 8 * v11++);
          v13 = [v9 storeSubscriptionTypes];
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
          v15 = sub_1B63BECA4();

          v16 = *(v15 + 16);
          v17 = 32;
          while (v16)
          {
            v18 = *(v15 + v17);
            v17 += 8;
            --v16;
            if (v18 == v12)
            {

              sub_1B63BF114();
              MEMORY[0x1B8C92330](0xD000000000000029, 0x80000001B63CA870);
              sub_1B63BF1B4();
              MEMORY[0x1B8C92330](0x617274206F687720, 0xEC00000020736B63);
              v19 = [v9 storeSubscriptionTypes];
              v20 = sub_1B63BECA4();

              v21 = MEMORY[0x1B8C923A0](v20, v14);
              v23 = v22;

              MEMORY[0x1B8C92330](v21, v23);

              _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0, 0xE000000000000000);

              v24 = [v9 respondsToSelector_];
              if (v24)
              {
                swift_unknownObjectRetain();
                v25 = sub_1B63BEC94();
                [v9 storeDidChange_];
                swift_unknownObjectRelease();
              }

              if ([v9 respondsToSelector_])
              {
                v45 = MEMORY[0x1E69E7CC0];
                swift_unknownObjectRetain();
                v26 = v43;
                sub_1B639E7FC(0, v43, 0);
                v27 = (a1 + 32);
                do
                {
                  v44 = *v27;
                  v28 = sub_1B63BEBE4();
                  v30 = v29;
                  v32 = *(v45 + 16);
                  v31 = *(v45 + 24);
                  if (v32 >= v31 >> 1)
                  {
                    sub_1B639E7FC((v31 > 1), v32 + 1, 1);
                  }

                  *(v45 + 16) = v32 + 1;
                  v33 = v45 + 16 * v32;
                  *(v33 + 32) = v28;
                  *(v33 + 40) = v30;
                  ++v27;
                  --v26;
                }

                while (v26);
                v34 = sub_1B63BEC94();

                [v9 storeDidChangeWithTypes_];
                swift_unknownObjectRelease_n();

                v7 = 1;
                v5 = v36;
                v4 = v37;
                i = v41;
              }

              else
              {
                swift_unknownObjectRelease();
                v7 = 1;
                i = v41;
              }

              goto LABEL_5;
            }
          }

          if (v11 != v43)
          {
            continue;
          }

          break;
        }

        swift_unknownObjectRelease();
        i = v41;
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_5:
      if (v8 == i)
      {

        return v7 & 1;
      }
    }

    if (v8 >= *(v40 + 16))
    {
      goto LABEL_31;
    }

    v9 = *(v39 + 8 * v8);
    swift_unknownObjectRetain();
    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v7 = 0;
  return v7 & 1;
}

unint64_t sub_1B634DB54()
{
  result = qword_1EB942F40;
  if (!qword_1EB942F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F40);
  }

  return result;
}

unint64_t sub_1B634DBCC(unint64_t result)
{
  v1 = result;
  v12 = MEMORY[0x1E69E7CC0];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:
    sub_1B63BF114();

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
    v11 = MEMORY[0x1B8C923A0](v9, v10);
    MEMORY[0x1B8C92330](v11);

    _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000025, 0x80000001B63CA8A0);

    return v9;
  }

  result = sub_1B63BF044();
  v2 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8C92830](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      v6 = [v4 changes];
      if (v6)
      {
        v7 = v6;
        sub_1B6281C60(0, &qword_1EDB0EF78, 0x1E695D690);
        v8 = sub_1B63BECA4();

        sub_1B634C04C(v8, &v12);
      }
    }

    v9 = v12;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_41Tm_0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B634DE54@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 modificationTime];
  if (v3)
  {
    v4 = v3;
    sub_1B63BE974();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B63BE994();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B634DEF8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B628C510(a1, &v12 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v8 = *a2;
  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B63BE954();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setModificationTime_];
}

void sub_1B634E034(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1B63BF004();
    type metadata accessor for MapsSyncManagedVisit();
    sub_1B6349B8C();
    sub_1B63BED74();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1B628B9E4();
      return;
    }

    while (1)
    {
      sub_1B62CAC3C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B63BF074())
      {
        type metadata accessor for MapsSyncManagedVisit();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B634E224(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id))
{
  v8 = a3;
  v9 = a4;
  a6(v8, v9);

  return 1;
}

uint64_t sub_1B634E2E8()
{
  v1 = v0[11];
  v2 = sub_1B6346494();
  v0[12] = v2;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *(inited + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(inited + 64) = sub_1B634E7B8();
    *(inited + 32) = v2;
    v4 = v2;
    v5 = sub_1B628E52C(0x203D3D206469756DLL, 0xEA00000000004025, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v6 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v7 = sub_1B62895F4(v5, 0, 0);
    v0[13] = v7;

    v8 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v13 = v8;
      swift_once();
      v8 = v13;
    }

    v0[14] = [v8 initWithStore_];
    v9 = v7;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1B634E4F8;

    return sub_1B628B2B4(v7);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B634E4F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v8 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_1B634E73C;
  }

  else
  {
    v6 = *(v3 + 112);

    v5 = sub_1B634E618;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B634E618()
{
  v1 = v0[16];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[16];
    }

    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = v0[16];
    v11 = v0[12];
    v12 = v0[13];

    v6 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, v0[16]);
    v14 = v0[16];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[16] + 32);
  }

  v5 = v0[12];
  v4 = v0[13];

  v6 = sub_1B62D5984();
  v8 = v7;

LABEL_11:
  v13 = v0[1];

  return v13(v6, v8);
}

uint64_t sub_1B634E73C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

unint64_t sub_1B634E7B8()
{
  result = qword_1EB942B80;
  if (!qword_1EB942B80)
  {
    sub_1B6281C60(255, &qword_1EDB0F620, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942B80);
  }

  return result;
}

uint64_t sub_1B634E994(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B634EA3C;

  return VisitedLocation.note()();
}

uint64_t sub_1B634EA3C(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    a2 = sub_1B63BE814();

    v10 = a2;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v10 = 0;
    goto LABEL_3;
  }

  v12 = sub_1B63BEBC4();

  v11 = v12;
  v10 = 0;
  a2 = v12;
LABEL_6:
  v13 = *(v6 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t VisitedLocation.setNote(_:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B634ECB0, 0, 0);
}

uint64_t sub_1B634ECB0()
{
  v1 = v0[29];
  v2 = sub_1B6346494();
  v0[32] = v2;
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *(inited + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(inited + 64) = sub_1B634E7B8();
    *(inited + 32) = v3;
    v5 = v3;
    v6 = sub_1B628E52C(0x203D3D206469756DLL, 0xEA00000000004025, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v7 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v8 = sub_1B62895F4(v6, 0, 0);
    v0[33] = v8;

    v9 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v16 = v9;
      swift_once();
      v9 = v16;
    }

    v0[34] = qword_1EDB0F2A8;
    v0[35] = [v9 initWithStore_];
    v10 = v8;
    v11 = swift_task_alloc();
    v0[36] = v11;
    *v11 = v0;
    v11[1] = sub_1B634EED4;

    return sub_1B628B2B4(v8);
  }

  else
  {
    v14 = v0[30];
    v13 = v0[31];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1B634EED4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v8 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v5 = sub_1B634F834;
  }

  else
  {
    v6 = *(v3 + 280);

    v5 = sub_1B634EFF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B634EFF8()
{
  v1 = v0[37];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[37];
    }

    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = v0[37];
    v12 = v0[31];
    v13 = v0[29];
    v23 = v0[30];
    v24 = v0[28];
    v25 = v0[27];

    v14 = [objc_allocWithZone(type metadata accessor for CollectionPlaceItem()) init];
    v0[43] = v14;
    v15 = *(v13 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    v16 = v14;
    [v15 lock];
    v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
    swift_beginAccess();
    sub_1B628C510(v13 + v17, v12, &unk_1EB943210, &unk_1B63C3F50);
    [v15 unlock];
    sub_1B6396BEC(v12, 1);
    sub_1B6284EAC(v12, &unk_1EB943210, &unk_1B63C3F50);
    v18 = sub_1B6344B7C();
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    [*&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
    sub_1B62D67AC(*&v16[v19], v18, v16);
    [*&v16[v19] unlock];

    [v15 lock];
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B628C510(v13 + v20, v23, &unk_1EB943680, qword_1B63C4070);
    [v15 unlock];
    sub_1B62D50D4(v23);

    sub_1B62D5DB0(v25, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    v0[44] = inited;
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v16;
    v8 = swift_task_alloc();
    v0[45] = v8;
    *v8 = v0;
    v9 = sub_1B634F52C;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, v0[37]);
    v22 = v0[37];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[37] + 32);
  }

  v0[39] = v3;
  v5 = v0[27];
  v4 = v0[28];

  sub_1B62D5DB0(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  v0[40] = inited;
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v3;
  v7 = v3;
  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v9 = sub_1B634F374;
LABEL_11:
  v8[1] = v9;
  v21 = v0[34];

  return sub_1B637E4F8(inited);
}

uint64_t sub_1B634F374()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v8 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_1B634F8C0;
  }

  else
  {
    v5 = *(v2 + 320);
    swift_setDeallocating();
    v6 = *(v5 + 16);
    swift_arrayDestroy();
    v4 = sub_1B634F4AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B634F4AC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B634F52C()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v8 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_1B634F78C;
  }

  else
  {
    v5 = *(v2 + 352);
    swift_setDeallocating();
    v6 = *(v5 + 16);
    swift_arrayDestroy();
    v4 = sub_1B634F664;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B634F664()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[33];
  sub_1B63BF114();

  v4 = [v1 description];
  v5 = sub_1B63BEBD4();
  v7 = v6;

  MEMORY[0x1B8C92330](v5, v7);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000026, 0x80000001B63CA990);

  v9 = v0[30];
  v8 = v0[31];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B634F78C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 256);

  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();
  v5 = *(v0 + 368);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B634F834()
{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];

  v4 = v0[38];
  v6 = v0[30];
  v5 = v0[31];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B634F8C0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 256);

  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();
  v5 = *(v0 + 336);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B634FAF0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B634FBD4;

  return VisitedLocation.setNote(_:)(a1, v7);
}

uint64_t sub_1B634FBD4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_1B63BE814();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

char *sub_1B634FDFC(void *a1)
{
  v2 = sub_1B628E52C(0xD000000000000011, 0x80000001B63CAA90, MEMORY[0x1E69E7CC0]);
  v3 = sub_1B628EC4C(a1, v2, 0);

  return v3;
}

void sub_1B634FE60(void *a1, void *a2)
{
  v5 = type metadata accessor for Visit();
  sub_1B6393E40();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe())
    {
      sub_1B635072C(a1, a2);
      v6 = objc_allocWithZone(type metadata accessor for VisitRequest());
      *&v6[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v6[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v5;
      v10.receiver = v6;
      v10.super_class = type metadata accessor for MapsSyncRequest();
      v7 = a1;
      v8 = objc_msgSendSuper2(&v10, sel_init);
      v9 = a2;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v9, MEMORY[0x1E69E7CC0], v8, v9);
    }
  }
}

void sub_1B634FF84(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  *&v49 = 0xD000000000000011;
  *(&v49 + 1) = 0x80000001B63CA320;
  v4 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51[0] = v49;
  v51[1] = v50;
  if (!*(&v50 + 1))
  {
    sub_1B6284EAC(v51, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_55;
  }

  v5 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v7 = sub_1B63BEBC4();
    v8 = [v6 initWithEntityName_];

    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B63C3D80;
    *(v9 + 56) = v5;
    v10 = sub_1B6281318();
    *(v9 + 32) = 0xD000000000000011;
    *(v9 + 40) = 0x80000001B63CA320;
    *(v9 + 96) = v5;
    *(v9 + 104) = v10;
    *(v9 + 64) = v10;
    *(v9 + 72) = v47;
    *(v9 + 80) = v48;
    v11 = sub_1B63BED94();
    [v8 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v12 = swift_allocObject();
    *(v12 + 1) = xmmword_1B63C3D70;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    swift_getKeyPath();
    v12[4] = sub_1B63BEDE4();
    v13 = sub_1B63BEC94();

    [v8 setSortDescriptors_];

    type metadata accessor for MapsSyncManagedVisitedLocation();
    v14 = sub_1B63BEEA4();
    if (v2)
    {
      goto LABEL_54;
    }

    v15 = v14;
    v16 = v14 >> 62;
    if (v14 >> 62)
    {
      v17 = sub_1B63BF044();
      if (v17)
      {
LABEL_9:
        v44 = a2;
        v45 = v15 & 0xC000000000000001;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B8C92830](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v18 = *(v15 + 32);
        }

        v12 = &selRef_powerByConnector;
        v43 = v18;
        v19 = [v18 visits];
        if (v19)
        {
          v20 = v19;
          *&v51[0] = 0;
          type metadata accessor for MapsSyncManagedVisit();
          sub_1B6349B8C();
          sub_1B63BED54();
        }

        if (MEMORY[0x1E69E7CC0] >> 62)
        {
          goto LABEL_61;
        }

LABEL_15:

        if (v17 < 0)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
        }

        while (1)
        {
          if (v16)
          {
            if (sub_1B63BF044() < 1)
            {
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v21 = sub_1B63BF044();
          }

          else
          {
            v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v21)
            {
              goto LABEL_58;
            }
          }

          v46 = v16;
          if (v21 < v17)
          {
            goto LABEL_59;
          }

          if (v45)
          {

            if (v17 != 1)
            {
              v22 = 1;
              do
              {
                v23 = v22 + 1;
                sub_1B63BF134();
                v22 = v23;
              }

              while (v17 != v23);
            }
          }

          else
          {
          }

          v45 = v8;
          if (v46)
          {

            sub_1B63BF2C4();
            v27 = (v28 >> 1) - v25;
            v26 = (v28 >> 1) <= v25;
            if (v28 >> 1 == v25)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v24 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
            v25 = 1;
            v27 = v17 - 1;
            v26 = v17 <= 1;
            if (v17 == 1)
            {
              goto LABEL_33;
            }
          }

          if (v26)
          {
            goto LABEL_64;
          }

          v30 = MEMORY[0x1E69E7CC0] >> 62;
          v31 = (v24 + 8 * v25);
          do
          {
            v32 = *v31;
            v33 = [v32 v12[40]];
            if (v33)
            {
              v34 = v33;
              *&v51[0] = 0;
              type metadata accessor for MapsSyncManagedVisit();
              sub_1B6349B8C();
              sub_1B63BED54();
            }

            if (v30 && sub_1B63BF044())
            {
              sub_1B62B8F48(MEMORY[0x1E69E7CC0]);
              v35 = v38;
            }

            else
            {

              v35 = MEMORY[0x1E69E7CD0];
            }

            sub_1B634E034(v35);
            v36 = [v32 v12[40]];
            if (v36)
            {
              v37 = v36;
              [v32 removeVisits_];
            }

            ++v31;
            --v27;
          }

          while (v27);
LABEL_33:
          swift_unknownObjectRelease();
          type metadata accessor for MapsSyncManagedVisit();
          sub_1B6349B8C();
          v29 = sub_1B63BED44();

          v12 = v43;
          [v43 setVisits_];

          sub_1B63BF114();

          *&v51[0] = 0x20646567727550;
          *(&v51[0] + 1) = 0xE700000000000000;
          if (v46)
          {
            v17 = sub_1B63BF044();
          }

          else
          {
            v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = v44;
          v8 = v45;

          if (!__OFSUB__(v17, 1))
          {
            v39 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v39);

            MEMORY[0x1B8C92330](0xD000000000000014, 0x80000001B63CAA70);
            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v51[0], *(&v51[0] + 1));

            *&v51[0] = 0;
            if ([v44 save_])
            {
              v40 = *&v51[0];
            }

            else
            {
              v41 = *&v51[0];
              sub_1B63BE824();

              swift_willThrow();
            }

LABEL_54:
            goto LABEL_55;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          if (!sub_1B63BF044())
          {
            goto LABEL_15;
          }

          sub_1B62B8F48(MEMORY[0x1E69E7CC0]);

          if (v17 < 0)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_54;
  }

LABEL_55:
  v42 = *MEMORY[0x1E69E9840];
}

void sub_1B635072C(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for VisitedLocationRequest());
  v5 = type metadata accessor for VisitedLocation();
  *&v4[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v4[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v5;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for MapsSyncRequest();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  v8 = a2;
  sub_1B63B34E8(0xD000000000000011, 0x80000001B63CA320, v8, MEMORY[0x1E69E7CC0], v7, v8);
}

void sub_1B6350808(void *a1, void *a2)
{
  v5 = type metadata accessor for Visit();
  sub_1B6393E40();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe())
    {
      v6 = objc_allocWithZone(type metadata accessor for VisitedLocationRequest());
      v7 = type metadata accessor for VisitedLocation();
      *&v6[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v6[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v7;
      v8 = type metadata accessor for MapsSyncRequest();
      v17.receiver = v6;
      v17.super_class = v8;
      v9 = a1;
      v10 = objc_msgSendSuper2(&v17, sel_init);
      v11 = a2;
      sub_1B63B34E8(0xD000000000000011, 0x80000001B63CA320, v11, MEMORY[0x1E69E7CC0], v10, v11);

      v12 = objc_allocWithZone(type metadata accessor for VisitRequest());
      *&v12[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v9;
      *&v12[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v5;
      v16.receiver = v12;
      v16.super_class = v8;
      v13 = v9;
      v14 = objc_msgSendSuper2(&v16, sel_init);
      v15 = v11;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v15, MEMORY[0x1E69E7CC0], v14, v15);
    }
  }
}

uint64_t sub_1B63509C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B634FAF0(v2, v3, v4);
}

uint64_t sub_1B6350A78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628E340;

  return sub_1B634E994(v2, v3);
}

id sub_1B6350C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedIncidentReport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6350DFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedMixinMapItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6350E30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B6350F04()
{
  v1 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B6350FCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B6351024(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

char *MapsSyncStoreController.init(config:notifyForChanges:callbackQueue:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v50 = a3;
  v51 = a2;
  v57 = a1;
  v58 = sub_1B63BEAF4();
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B63BEE14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B63BEB14();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1B63BEE04();
  v18 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  *&v4[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__barrierQueue;
  v20 = sub_1B6351804();
  sub_1B63BEDF4();
  sub_1B63BEB04();
  v21 = *(v10 + 104);
  v46 = *MEMORY[0x1E69E8090];
  v49 = v9;
  v45 = v21;
  v21(v13);
  v47 = v20;
  *&v5[v19] = sub_1B63BEE34();
  v55 = a4;
  swift_unknownObjectWeakAssign();
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDB0F2A8;
  *&v5[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__store] = qword_1EDB0F2A8;
  v23 = v50;
  if (v50)
  {
    v24 = v22;
    v25 = v23;
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v27 = v22;
    sub_1B63BEB04();
    v26 = MEMORY[0x1E69E7CC0];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v44 = sub_1B6281CA8(&qword_1EDB0F660, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433F8, &unk_1B63C5220);
    sub_1B6281CF0(&qword_1EDB0F668, &qword_1EB9433F8, &unk_1B63C5220);
    sub_1B63BEFA4();
    v45(v13, v46, v49);
    v25 = sub_1B63BEE34();
    v23 = 0;
  }

  *&v5[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__callbackQueue] = v25;
  v28 = type metadata accessor for MapsSyncStoreController();
  v61.receiver = v5;
  v61.super_class = v28;
  v29 = v23;
  v30 = objc_msgSendSuper2(&v61, sel_init);
  v31 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  v32 = *&v30[v31];
  *&v30[v31] = v51;
  v33 = v30;

  v34 = *&v33[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__store];
  v35 = sub_1B62814B4();
  sub_1B6282674(v33, v35);

  v36 = sub_1B628276C();
  sub_1B6282674(v33, v36);

  v37 = *&v33[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__callbackQueue];
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  aBlock[4] = sub_1B6352384;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B628D904;
  aBlock[3] = &block_descriptor_25;
  v39 = _Block_copy(aBlock);
  v40 = v37;
  sub_1B63BEB04();
  v59 = v26;
  sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
  sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
  v41 = v54;
  v42 = v58;
  sub_1B63BEFA4();
  MEMORY[0x1B8C92510](0, v17, v41, v39);
  _Block_release(v39);
  swift_unknownObjectRelease();

  (*(v56 + 8))(v41, v42);
  (*(v52 + 8))(v17, v53);

  return v33;
}

unint64_t sub_1B6351804()
{
  result = qword_1EDB0F658;
  if (!qword_1EDB0F658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB0F658);
  }

  return result;
}

void *sub_1B6351850(uint64_t a1)
{
  dispatch_activate(*(a1 + OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__barrierQueue));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result storeControllerWithDidLoad_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id MapsSyncStoreController.__allocating_init(notifyForChanges:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = _s8MapsSync0aB11StoreConfigC07defaultcD0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v6 = sub_1B63BEC94();

  v7 = [v4 initWithConfig:v5 notifyForChanges:v6 callbackQueue:0 delegate:a2];

  swift_unknownObjectRelease();
  return v7;
}

id MapsSyncStoreController.init(notifyForChanges:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = _s8MapsSync0aB11StoreConfigC07defaultcD0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v5 = sub_1B63BEC94();

  v6 = [v2 initWithConfig:v4 notifyForChanges:v5 callbackQueue:0 delegate:a2];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B6351B28(uint64_t a1)
{
  v3 = sub_1B63BEAF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B63BEB14();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__barrierQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1B635238C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B628D904;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_1B63BEB04();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
  sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
  sub_1B63BEFA4();
  MEMORY[0x1B8C92510](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_1B6351DF0(char *a1, uint64_t a2)
{
  v4 = sub_1B63BEAF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B63BEB14();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&a1[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__callbackQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1B63524F8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B628D904;
  aBlock[3] = &block_descriptor_19_0;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_1B63BEB04();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
  sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
  sub_1B63BEFA4();
  MEMORY[0x1B8C92510](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

void *sub_1B63520BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong respondsToSelector_])
    {
      v2 = sub_1B63BEC94();
      [v1 storeControllerWithDataTypesChanged_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 storeControllerWithDataChanged_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id MapsSyncStoreController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncStoreController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStoreController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1B63524F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B63520BC();
}

uint64_t sub_1B6352510()
{
  result = sub_1B6352534();
  byte_1EB9455F0 = result & 1;
  return result;
}

uint64_t sub_1B6352534()
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v8, 0x288uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9434C0, &qword_1B63C5298);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B63C5270;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  v7 = 648;
  v1 = sysctl((v0 + 32), 4u, v8, &v7, 0, 0);

  if (v1)
  {
    sub_1B63BF114();

    MEMORY[0x1B8C921C0](v2);
    v3 = sub_1B63BF344();
    MEMORY[0x1B8C92330](v3);

    sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B63C3D50;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B6281318();
    *(v4 + 32) = 0x66206C7463737973;
    *(v4 + 40) = 0xEF203A64656C6961;
    sub_1B63BEA14();

    result = 0;
  }

  else
  {
    result = (v8[33] >> 3) & 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B6352764(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  error[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 32))
  {
    v7 = SecTaskCreateFromSelf(0);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B63BEDD4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B63C3D50;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1B6281318();
    *(v18 + 32) = 0xD000000000000018;
    *(v18 + 40) = 0x80000001B63CACB0;
    sub_1B63BEA14();
    goto LABEL_11;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v16 = *(a3 + 8);
  v17 = HIDWORD(*a3);
  token.val[0] = *a3;
  token.val[1] = v17;
  *&token.val[2] = v16;
  *&token.val[4] = v15;
  *&token.val[6] = v14;
  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  error[0] = 0;
  v8 = sub_1B63BEBC4();
  v9 = SecTaskCopyValueForEntitlement(v7, v8, error);

  v10 = error[0];
  if (error[0])
  {
    *token.val = 0;
    *&token.val[2] = 0xE000000000000000;
    sub_1B63BF114();
    MEMORY[0x1B8C92330](0xD00000000000001CLL, 0x80000001B63CACD0);
    MEMORY[0x1B8C92330](a1, a2);
    MEMORY[0x1B8C92330](8250, 0xE200000000000000);
    v22 = v10;
    type metadata accessor for CFError(0);
    sub_1B63BF1B4();
    v11 = *token.val;
    v12 = *&token.val[2];
    sub_1B63BEDD4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B63C3D50;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1B6281318();
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1B63BEA14();

    swift_unknownObjectRelease();
LABEL_11:

    *a4 = 0u;
    *(a4 + 16) = 0u;
    goto LABEL_16;
  }

  if (v9)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {

    ObjectType = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  *a4 = v9;
  *(a4 + 24) = ObjectType;
LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B6352AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AnalyticsIdentifierRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id AnalyticsIdentifierRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id AnalyticsIdentifierRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for AnalyticsIdentifier();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AnalyticsIdentifierRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for AnalyticsIdentifier();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6352EB4()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for AnalyticsIdentifier();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B6353110()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6353180, 0, 0);
}

uint64_t sub_1B6353180()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6353284;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6353284(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B63533A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63533A8()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AnalyticsIdentifier();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B635355C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1B635373C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63537E4;

  return sub_1B6353110();
}

uint64_t sub_1B63537E4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for AnalyticsIdentifier();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B6353970(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63539E0, 0, 0);
}

uint64_t sub_1B63539E0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6353AF0;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6353AF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B6353C14;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6353C14()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AnalyticsIdentifier();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6353DC8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1B6353FBC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B635407C;

  return sub_1B6353970(a1);
}

uint64_t sub_1B635407C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for AnalyticsIdentifier();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id AnalyticsIdentifierRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsIdentifierRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of AnalyticsIdentifierRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of AnalyticsIdentifierRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B635458C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6353FBC(v2, v3, v4);
}

uint64_t sub_1B6354640()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B635373C(v2, v3);
}

id AnonymousCredentialRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id AnonymousCredentialRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id AnonymousCredentialRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for AnonymousCredential();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AnonymousCredentialRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for AnonymousCredential();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6354A70()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for AnonymousCredential();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B6354CCC()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6354D3C, 0, 0);
}

uint64_t sub_1B6354D3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6354E40;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6354E40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B6354F64;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6354F64()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AnonymousCredential();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B635528C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6355334;

  return sub_1B6354CCC();
}

uint64_t sub_1B6355334()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for AnonymousCredential();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B63554C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6355530, 0, 0);
}