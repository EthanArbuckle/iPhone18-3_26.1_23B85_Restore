uint64_t sub_1B62CCA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(void))
{
  v11 = v6;
  v12 = *v6;

  v13 = sub_1B63BF044();
  v14 = swift_unknownObjectRetain();
  v15 = sub_1B62CAEDC(v14, v13, a3, a4, a5);
  v25 = v15;
  v16 = *(v15 + 40);

  v17 = sub_1B63BEF14();
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    a6(0);
    while (1)
    {
      v21 = *(*(v15 + 48) + 8 * v19);
      v22 = sub_1B63BEF24();

      if (v22)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v23 = *(*(v15 + 48) + 8 * v19);
  sub_1B62CCD44(v19);
  result = sub_1B63BEF24();
  if (result)
  {
    *v11 = v25;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B62CCB80(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B63BEFC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B63BF434();

        sub_1B63BEC24();
        v15 = sub_1B63BF494();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B62CCD44(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B63BEFC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1B63BEF14();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1B62CCEE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__image);
  v8 = *(v3 + OBJC_IVAR___MSCollection__image);
  v9 = *(v3 + OBJC_IVAR___MSCollection__image + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62CD670;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

id CollectionItem.__allocating_init(positionIndex:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  if (qword_1EDB0F2A0 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1EDB0F2A8;

  return [v3 initWithStore:v4 positionIndex:a1];
}

id CollectionItem.init(positionIndex:)(uint64_t a1)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB0F2A8;

  return [v1 initWithStore:v3 positionIndex:a1];
}

char *CollectionItem.init(store:positionIndex:)(void *a1, uint64_t a2)
{
  v5 = [v2 initWithStore_];
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v7 = *&v5[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v8 = v5;
  [v7 lock];
  v9 = *&v5[v6];
  *&v8[OBJC_IVAR___MSCollectionItem__positionIndex] = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_1B6282B88();
  v11 = *&v5[v6];
  if (sub_1B63BEF24())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1B62CE798;
    *(v12 + 24) = v10;
    v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v14 = *&v8[v13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v13] = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1B629A8E8(0, v14[2] + 1, 1, v14);
      *&v8[v13] = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1B629A8E8((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v18 = &v14[2 * v17];
    v18[4] = sub_1B62B8188;
    v18[5] = v12;
    *&v8[v13] = v14;
    swift_endAccess();
  }

  [*&v5[v6] unlock];

  return v8;
}

uint64_t sub_1B62CDBD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollectionItem__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62CDC84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionItem__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62CE5B0;
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

id sub_1B62CDE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollectionItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B62CDE84(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionItem__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62CDF08;
}

id sub_1B62CDF2C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = a1;
  sub_1B628FD50(&v17, v5);
  v6 = v17;
  swift_endAccess();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1B6282B88();
  v8 = v5;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62CE5CC;
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

id sub_1B62CE16C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1B62CC35C(a1);
  swift_endAccess();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1B6282B88();
  v7 = a1;
  if (sub_1B63BEF24())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1B62CE5F0;
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

void sub_1B62CE338(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for MapsSyncManagedCollectionItem();
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
      type metadata accessor for MapsSyncManagedCollection();
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

id CollectionItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CollectionPlaceItem.__allocating_init(customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20)
{
  v21 = v20;
  v69 = a6;
  v70 = a7;
  LODWORD(v68) = a5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v60 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v60 - v31;
  v66 = objc_allocWithZone(v21);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v64 = qword_1EDB0F2A8;
  if (a2)
  {
    v65 = sub_1B63BEBC4();
  }

  else
  {
    v65 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v63 = 0;
    v33 = a11;
    v34 = a12;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_11:
    v35 = 0;
    v72 = a4;
    if (v33)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_1B629119C(a3, a4);
  v63 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v33 = a11;
  v34 = a12;
  if (!a9)
  {
    goto LABEL_11;
  }

LABEL_8:
  v35 = sub_1B63BEBC4();

  v72 = a4;
  if (v33)
  {
LABEL_9:
    v61 = sub_1B63BEBC4();

    goto LABEL_13;
  }

LABEL_12:
  v61 = 0;
LABEL_13:
  sub_1B628C510(v34, v32, &unk_1EB943210, &unk_1B63C3F50);
  v36 = sub_1B63BE994();
  v37 = *(v36 - 8);
  v38 = 0;
  if ((*(v37 + 48))(v32, 1, v36) != 1)
  {
    v38 = sub_1B63BE954();
    (*(v37 + 8))(v32, v36);
  }

  v71 = a3;
  if (a14)
  {
    v39 = sub_1B63BEBC4();
  }

  else
  {
    v39 = 0;
  }

  v67 = v34;
  sub_1B628C510(a17, v28, &unk_1EB943680, qword_1B63C4070);
  v40 = sub_1B63BEA04();
  v41 = *(v40 - 8);
  v42 = 0;
  if ((*(v41 + 48))(v28, 1, v40) != 1)
  {
    v42 = sub_1B63BE9C4();
    (*(v41 + 8))(v28, v40);
  }

  v62 = a17;
  if (a19)
  {
    v43 = sub_1B63BEBC4();
  }

  else
  {
    v43 = 0;
  }

  LOWORD(v59) = a20;
  v58 = v42;
  LOWORD(v57) = a16;
  v56 = v39;
  v55 = v38;
  v44 = v38;
  v45 = v61;
  v54 = v35;
  v47 = v65;
  v46 = v66;
  v66 = v42;
  v48 = v39;
  v49 = v35;
  v50 = v63;
  v52 = v69;
  v51 = v70;
  v68 = [v46 initWithStore:v64 customName:v65 droppedPinCoordinate:v63 droppedPinFloorOrdinal:v68 latitude:v69 longitude:v70 mapItemAddress:v54 mapItemCategory:v61 mapItemLastRefreshed:v55 mapItemName:v56 muid:a15 origin:v57 originalIdentifier:v58 placeItemNote:v43 type:v59];

  sub_1B6284F64(v71, v72);
  sub_1B6284EAC(v62, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v67, &unk_1EB943210, &unk_1B63C3F50);
  return v68;
}

id CollectionPlaceItem.init(customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20)
{
  v24 = sub_1B62D78C4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);

  sub_1B6284F64(a3, a4);
  return v24;
}

char *CollectionPlaceItem.__allocating_init(store:customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, unsigned __int16 a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21)
{
  v22 = v21;
  v115 = a8;
  v116 = a7;
  v105 = a6;
  v132 = a4;
  v133 = a5;
  v118 = a3;
  v102 = a2;
  v124 = a21;
  v122 = a20;
  v128 = a19;
  v127 = a17;
  v119 = a16;
  v117 = a15;
  v130 = a18;
  v131 = a13;
  v126 = a14;
  v113 = a12;
  v125 = a11;
  v114 = a10;
  v104 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v110 = *(v26 - 8);
  v109 = *(v110 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v120 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v102 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v108 = *(v31 - 8);
  v32 = *(v108 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v123 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v102 - v34;
  v36 = objc_allocWithZone(v22);
  v112 = a1;
  v37 = [v36 initWithStore_];
  v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v39 = *&v37[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v121 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v40 = v37;
  v129 = v37;
  v41 = v40;
  [v39 lock];
  v111 = *&v37[v38];
  v42 = &v41[OBJC_IVAR___MSCollectionPlaceItem__customName];
  v43 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__customName + 8];
  v44 = v118;
  *v42 = a2;
  *(v42 + 1) = v44;

  v45 = &v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v47 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v46 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8];
  v48 = v132;
  v49 = v133;
  *v45 = v132;
  *(v45 + 1) = v49;
  sub_1B6291034(v48, v49);
  sub_1B6284F64(v47, v46);
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal] = a6;
  v50 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__latitude];
  v51 = v116;
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__latitude] = v116;
  v107 = v51;

  v52 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__longitude];
  v53 = v115;
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__longitude] = v115;
  v106 = v53;

  v54 = &v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
  v55 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8];
  v56 = v114;
  *v54 = a9;
  *(v54 + 1) = v56;

  v57 = &v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
  v58 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8];
  v59 = v113;
  *v57 = v125;
  *(v57 + 1) = v59;

  v60 = v131;
  sub_1B628C510(v131, v35, &unk_1EB943210, &unk_1B63C3F50);
  v61 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v35, &v41[v61], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v62 = &v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
  v63 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8];
  v64 = v117;
  *v62 = v126;
  *(v62 + 1) = v64;

  v65 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__muid];
  v66 = v119;
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__muid] = v119;
  v103 = v66;

  *&v41[OBJC_IVAR___MSCollectionPlaceItem__origin] = v127;
  v67 = v130;
  sub_1B628C510(v130, v30, &unk_1EB943680, qword_1B63C4070);
  v68 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6282DFC(v30, &v41[v68], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v69 = &v41[OBJC_IVAR___MSCollectionPlaceItem__placeItemNote];
  v70 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__placeItemNote + 8];
  v71 = v122;
  *v69 = v128;
  *(v69 + 1) = v71;

  *&v41[OBJC_IVAR___MSCollectionPlaceItem__type] = v124;
  sub_1B628C510(v60, v123, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v67, v120, &unk_1EB943680, qword_1B63C4070);
  v72 = (*(v108 + 80) + 104) & ~*(v108 + 80);
  v73 = (v32 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 9) & 0xFFFFFFFFFFFFFFF8;
  v76 = (*(v110 + 80) + v75 + 2) & ~*(v110 + 80);
  v77 = (v109 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v77 + 17) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v118;
  *(v78 + 16) = v102;
  *(v78 + 24) = v79;
  v81 = v132;
  v80 = v133;
  *(v78 + 32) = v132;
  *(v78 + 40) = v80;
  *(v78 + 48) = v105;
  v82 = v115;
  *(v78 + 56) = v116;
  *(v78 + 64) = v82;
  v83 = v114;
  *(v78 + 72) = v104;
  *(v78 + 80) = v83;
  v84 = v113;
  *(v78 + 88) = v125;
  *(v78 + 96) = v84;
  sub_1B628A128(v123, v78 + v72, &unk_1EB943210, &unk_1B63C3F50);
  v85 = (v78 + v73);
  v86 = v117;
  *v85 = v126;
  v85[1] = v86;
  v87 = v120;
  *(v78 + v74) = v119;
  *(v78 + v75) = v127;
  sub_1B628A128(v87, v78 + v76, &unk_1EB943680, qword_1B63C4070);
  v88 = (v78 + v77);
  v89 = v122;
  *v88 = v128;
  v88[1] = v89;
  *(v78 + v110) = v124;
  sub_1B6282B88();
  v90 = *&v129[v121];
  sub_1B6291034(v81, v80);
  v91 = v107;
  v92 = v106;
  v93 = v103;
  if (sub_1B63BEF24())
  {
    v94 = swift_allocObject();
    *(v94 + 16) = sub_1B62D7CF0;
    *(v94 + 24) = v78;
    v95 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v96 = *&v41[v95];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41[v95] = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = sub_1B629A8E8(0, v96[2] + 1, 1, v96);
      *&v41[v95] = v96;
    }

    v99 = v96[2];
    v98 = v96[3];
    if (v99 >= v98 >> 1)
    {
      v96 = sub_1B629A8E8((v98 > 1), v99 + 1, 1, v96);
    }

    v96[2] = v99 + 1;
    v100 = &v96[2 * v99];
    v100[4] = sub_1B62B8188;
    v100[5] = v94;
    *&v41[v95] = v96;
    swift_endAccess();
  }

  [*&v129[v121] unlock];

  sub_1B6284F64(v132, v133);
  sub_1B6284EAC(v130, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v131, &unk_1EB943210, &unk_1B63C3F50);

  return v41;
}

char *CollectionPlaceItem.init(store:customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, unsigned __int16 a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21)
{
  v22 = v21;
  v112 = a8;
  v113 = a7;
  v101 = a6;
  v129 = a4;
  v130 = a5;
  v115 = a3;
  v102 = a2;
  v121 = a21;
  v119 = a20;
  v125 = a19;
  v124 = a17;
  v116 = a16;
  v114 = a15;
  v127 = a18;
  v128 = a13;
  v123 = a14;
  v110 = a12;
  v122 = a11;
  v111 = a10;
  v100 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v107 = *(v26 - 8);
  v106 = *(v107 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v120 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v99 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v105 = *(v31 - 8);
  v32 = *(v105 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v117 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v99 - v34;
  v109 = a1;
  v36 = [v22 initWithStore_];
  v37 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v38 = *&v36[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v118 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v39 = v36;
  v126 = v36;
  v40 = v39;
  [v38 lock];
  v108 = *&v36[v37];
  v41 = &v40[OBJC_IVAR___MSCollectionPlaceItem__customName];
  v42 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__customName + 8];
  v43 = v115;
  *v41 = a2;
  *(v41 + 1) = v43;

  v44 = &v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v46 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v45 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8];
  v47 = v129;
  v48 = v130;
  *v44 = v129;
  *(v44 + 1) = v48;
  sub_1B6291034(v47, v48);
  sub_1B6284F64(v46, v45);
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal] = a6;
  v49 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__latitude];
  v50 = v113;
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__latitude] = v113;
  v104 = v50;

  v51 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__longitude];
  v52 = v112;
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__longitude] = v112;
  v103 = v52;

  v53 = &v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
  v54 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8];
  v55 = v111;
  *v53 = a9;
  *(v53 + 1) = v55;

  v56 = &v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
  v57 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8];
  v58 = v110;
  *v56 = v122;
  *(v56 + 1) = v58;

  v59 = v128;
  sub_1B628C510(v128, v35, &unk_1EB943210, &unk_1B63C3F50);
  v60 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v35, &v40[v60], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v61 = &v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
  v62 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8];
  v63 = v114;
  *v61 = v123;
  *(v61 + 1) = v63;

  v64 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__muid];
  v65 = v116;
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__muid] = v116;
  v99 = v65;

  *&v40[OBJC_IVAR___MSCollectionPlaceItem__origin] = v124;
  v66 = v127;
  sub_1B628C510(v127, v30, &unk_1EB943680, qword_1B63C4070);
  v67 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6282DFC(v30, &v40[v67], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v68 = &v40[OBJC_IVAR___MSCollectionPlaceItem__placeItemNote];
  v69 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__placeItemNote + 8];
  v70 = v119;
  *v68 = v125;
  *(v68 + 1) = v70;

  *&v40[OBJC_IVAR___MSCollectionPlaceItem__type] = v121;
  sub_1B628C510(v59, v117, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v66, v120, &unk_1EB943680, qword_1B63C4070);
  v71 = (*(v105 + 80) + 104) & ~*(v105 + 80);
  v72 = (v32 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v105 + 9) & 0xFFFFFFFFFFFFFFF8;
  v74 = (*(v107 + 80) + v73 + 2) & ~*(v107 + 80);
  v75 = (v106 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v115;
  *(v76 + 16) = v102;
  *(v76 + 24) = v77;
  v79 = v129;
  v78 = v130;
  *(v76 + 32) = v129;
  *(v76 + 40) = v78;
  *(v76 + 48) = v101;
  v80 = v112;
  *(v76 + 56) = v113;
  *(v76 + 64) = v80;
  v81 = v111;
  *(v76 + 72) = v100;
  *(v76 + 80) = v81;
  v82 = v110;
  *(v76 + 88) = v122;
  *(v76 + 96) = v82;
  sub_1B628A128(v117, v76 + v71, &unk_1EB943210, &unk_1B63C3F50);
  v83 = (v76 + v72);
  v84 = v114;
  *v83 = v123;
  v83[1] = v84;
  *(v76 + v105) = v116;
  *(v76 + v73) = v124;
  sub_1B628A128(v120, v76 + v74, &unk_1EB943680, qword_1B63C4070);
  v85 = (v76 + v75);
  v86 = v119;
  *v85 = v125;
  v85[1] = v86;
  *(v76 + ((v75 + 17) & 0xFFFFFFFFFFFFFFF8)) = v121;
  sub_1B6282B88();
  v87 = *&v126[v118];
  sub_1B6291034(v79, v78);
  v88 = v104;
  v89 = v103;
  v90 = v99;
  if (sub_1B63BEF24())
  {
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1B62D9538;
    *(v91 + 24) = v76;
    v92 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v93 = *&v40[v92];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[v92] = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = sub_1B629A8E8(0, v93[2] + 1, 1, v93);
      *&v40[v92] = v93;
    }

    v96 = v93[2];
    v95 = v93[3];
    if (v96 >= v95 >> 1)
    {
      v93 = sub_1B629A8E8((v95 > 1), v96 + 1, 1, v93);
    }

    v93[2] = v96 + 1;
    v97 = &v93[2 * v96];
    v97[4] = sub_1B62B9488;
    v97[5] = v91;
    *&v40[v92] = v93;
    swift_endAccess();
  }

  [*&v126[v118] unlock];

  sub_1B6284F64(v129, v130);
  sub_1B6284EAC(v127, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v128, &unk_1EB943210, &unk_1B63C3F50);

  return v40;
}

void sub_1B62D0074(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v50 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v50 - v33;
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v51 = a2;
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = v35;
    v37 = v51;
    if (a4)
    {
      v38 = sub_1B63BEBC4();
    }

    else
    {
      v38 = 0;
    }

    [v36 setCustomName_];

    if (a6 >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_1B63BE904();
    }

    [v36 setDroppedPinCoordinate_];

    [v36 setDroppedPinFloorOrdinal_];
    [v36 setLatitude_];
    [v36 setLongitude_];
    if (a11)
    {
      v40 = sub_1B63BEBC4();
    }

    else
    {
      v40 = 0;
    }

    [v36 setMapItemAddress_];

    if (a13)
    {
      v41 = sub_1B63BEBC4();
    }

    else
    {
      v41 = 0;
    }

    [v36 setMapItemCategory_];

    sub_1B628C510(a14, v34, &unk_1EB943210, &unk_1B63C3F50);
    v42 = sub_1B63BE994();
    v43 = *(v42 - 8);
    v44 = 0;
    if ((*(v43 + 48))(v34, 1, v42) != 1)
    {
      v44 = sub_1B63BE954();
      (*(v43 + 8))(v34, v42);
    }

    [v36 setMapItemLastRefreshed_];

    if (a16)
    {
      v45 = sub_1B63BEBC4();
    }

    else
    {
      v45 = 0;
    }

    [v36 setMapItemName_];

    [v36 setMuid_];
    [v36 setOrigin_];
    sub_1B628C510(a19, v30, &unk_1EB943680, qword_1B63C4070);
    v46 = sub_1B63BEA04();
    v47 = *(v46 - 8);
    v48 = 0;
    if ((*(v47 + 48))(v30, 1, v46) != 1)
    {
      v48 = sub_1B63BE9C4();
      (*(v47 + 8))(v30, v46);
    }

    [v36 setOriginalIdentifier_];

    if (a21)
    {
      v49 = sub_1B63BEBC4();
    }

    else
    {
      v49 = 0;
    }

    [v36 setPlaceItemNote_];

    [v36 setType_];
  }
}

id sub_1B62D0934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__customName);
  v8 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__customName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62D7EBC;
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

uint64_t (*sub_1B62D0AEC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6294630();
  a1[1] = v3;
  return sub_1B62D0B34;
}

uint64_t sub_1B62D0BD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate);
  v5 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B62D7EE0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_34_1;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B62D7EE0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62D101C(uint64_t a1, unint64_t a2)
{
  sub_1B62D7EEC(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62D1064(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B62D7EEC(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B62D10C0(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 droppedPinCoordinate]) != 0)
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

void sub_1B62D11E4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setDroppedPinCoordinate_];
  }
}

uint64_t (*sub_1B62D12A4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62D0BD0();
  a1[1] = v3;
  return sub_1B62D12EC;
}

uint64_t sub_1B62D12EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B62D7EEC(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62D7EEC(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B62D13D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal);
  [v1 unlock];
  return v2;
}

id sub_1B62D1480(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62D80BC;
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

id sub_1B62D161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setDroppedPinFloorOrdinal_];
  }

  return result;
}

id (*sub_1B62D1680(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62D1704;
}

uint64_t sub_1B62D1770()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__latitude);
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
  *(v19 + 16) = sub_1B62D80C4;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_51_0;
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
    v14 = sub_1B62D80C4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D1B30(void *a1)
{
  sub_1B62D80EC(a1);
}

void (*sub_1B62D1B68(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62D1770();
  return sub_1B62D1BB0;
}

uint64_t sub_1B62D1C0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__longitude);
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
  *(v19 + 16) = sub_1B62D829C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_61;
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
    v14 = sub_1B62D829C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D1FCC(void *a1)
{
  sub_1B62D82C4(a1);
}

void (*sub_1B62D2004(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62D1C0C();
  return sub_1B62D204C;
}

void sub_1B62D2064(id *a1, char a2, void (*a3)(id))
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

uint64_t sub_1B62D20FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress);
  v4 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8);
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
  *(v18 + 16) = sub_1B62D8474;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_72;
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

    v13 = sub_1B62D8474;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62D24A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress);
  v8 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62D849C;
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

uint64_t (*sub_1B62D2658(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62D20FC();
  a1[1] = v3;
  return sub_1B62D26A0;
}

uint64_t sub_1B62D26D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory);
  v4 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8);
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
  *(v18 + 16) = sub_1B62D84C0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_90;
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

    v13 = sub_1B62D84C0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62D2A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory);
  v8 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62D84E8;
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

uint64_t (*sub_1B62D2C2C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62D26D0();
  a1[1] = v3;
  return sub_1B62D2C74;
}

uint64_t sub_1B62D2DB4@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
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
  *(v26 + 16) = sub_1B62D850C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_108;
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

uint64_t sub_1B62D33B4(uint64_t a1)
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
  v12 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B62D8518;
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

void sub_1B62D3684(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BE994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  v26[0] = 0;
  v14 = [a1 existingObjectWithID:a2 error:v26];
  v15 = v26[0];
  if (v14)
  {
    v16 = v14;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 mapItemLastRefreshed]) != 0)
    {
      v20 = v19;
      sub_1B63BE974();

      v21 = *(v7 + 32);
      v21(v13, v11, v6);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v21(a3, v13, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v22 = v26[0];
    v23 = sub_1B63BE824();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1B62D38B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
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

void (*sub_1B62D3A20(void *a1))(uint64_t *a1, char a2)
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
  sub_1B62D2DB4(v4);
  return sub_1B62D3ADC;
}

uint64_t sub_1B62D3B1C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName);
  v4 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8);
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
  *(v18 + 16) = sub_1B62D8540;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_125_0;
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

    v13 = sub_1B62D8540;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62D3EC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName);
  v8 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62D8568;
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

uint64_t (*sub_1B62D4078(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62D3B1C();
  a1[1] = v3;
  return sub_1B62D40C0;
}

uint64_t sub_1B62D411C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__muid);
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
  *(v19 + 16) = sub_1B62D858C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_143;
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
    v14 = sub_1B62D858C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D44DC(void *a1)
{
  sub_1B62D85B4(a1);
}

void sub_1B62D4514(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
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

id sub_1B62D4628(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62D4698(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62D411C();
  return sub_1B62D46E0;
}

id sub_1B62D4764(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__origin) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62D8764;
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

id (*sub_1B62D4900(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__origin);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62D4984;
}

uint64_t sub_1B62D4AD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BEA04();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
  sub_1B628C510(v2 + v13, v9, &unk_1EB943680, qword_1B63C4070);
  [v12 unlock];
  if (*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  sub_1B628C510(v9, v7, &unk_1EB943680, qword_1B63C4070);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943680, qword_1B63C4070);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
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
    return sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
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
  *(v26 + 16) = sub_1B62D8788;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_161;
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
    sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  return result;
}

uint64_t sub_1B62D50D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943680, qword_1B63C4070);
  v12 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943680, qword_1B63C4070);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B62D8794;
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
  return sub_1B6284EAC(a1, &unk_1EB943680, qword_1B63C4070);
}

uint64_t sub_1B62D53A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  sub_1B628C510(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

void sub_1B62D5450(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BEA04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  v26[0] = 0;
  v14 = [a1 existingObjectWithID:a2 error:v26];
  v15 = v26[0];
  if (v14)
  {
    v16 = v14;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 originalIdentifier]) != 0)
    {
      v20 = v19;
      sub_1B63BE9E4();

      v21 = *(v7 + 32);
      v21(v13, v11, v6);
      sub_1B6284EAC(a3, &unk_1EB943680, qword_1B63C4070);
      v21(a3, v13, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v22 = v26[0];
    v23 = sub_1B63BE824();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1B62D5680(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    sub_1B628C510(a3, v8, &unk_1EB943680, qword_1B63C4070);
    v11 = sub_1B63BEA04();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    v14 = a2;
    v15 = 0;
    if (v13 != 1)
    {
      v15 = sub_1B63BE9C4();
      (*(v12 + 8))(v8, v11);
    }

    [v10 setOriginalIdentifier_];
  }
}

void (*sub_1B62D57EC(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64);
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
  sub_1B62D4AD4(v4);
  return sub_1B62D58A8;
}

void sub_1B62D58D0(uint64_t *a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  if (a2)
  {
    sub_1B628C510(v7, v6, a4, a5);
    a3(v6);
    sub_1B6284EAC(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

uint64_t sub_1B62D5984()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote);
  v4 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote + 8);
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
  *(v18 + 16) = sub_1B62D8854;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_178;
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

    v13 = sub_1B62D8854;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D5D28(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B62D5DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote);
  v8 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62D887C;
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

void sub_1B62D5F68(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
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

void sub_1B62D608C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
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

uint64_t (*sub_1B62D6150(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62D5984();
  a1[1] = v3;
  return sub_1B62D6198;
}

uint64_t sub_1B62D61B0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
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

id sub_1B62D6290(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62D88A0;
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

id sub_1B62D642C(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62D649C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62D6520;
}

void sub_1B62D65E8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62D67AC(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62D6664(void *a1, uint64_t a2, uint64_t *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v20];
  v5 = v20[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItem]) != 0 && (v10 = v9, v11 = objc_msgSend(v9, sel_mapItemStorage), v10, v11))
    {
      v12 = sub_1B63BE924();
      v14 = v13;

      v15 = *a3;
      v16 = a3[1];
      *a3 = v12;
      a3[1] = v14;
      sub_1B6284F64(v15, v16);
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

uint64_t sub_1B62D67AC(uint64_t a1, void *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v92 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  sub_1B63BE984();
  v95 = a1;
  v96 = v11;
  if (a2)
  {
    v92 = v10;
    v93 = a2;
    v16 = v15;
    v17 = a2;
    [v17 coordinate];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v20 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude] = v19;

    [v17 coordinate];
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v23 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude] = v22;

    v24 = [v17 _muid];
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v26 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid] = v25;

    v27 = [v17 addressObject];
    if (v27 && (v28 = v27, v29 = [v27 fullAddressWithMultiline_], v28, v29))
    {
      v30 = sub_1B63BEBD4();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
    v34 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8];
    *v33 = v30;
    v33[1] = v32;

    v35 = [v17 name];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1B63BEBD4();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v54 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
    v55 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8];
    *v54 = v37;
    v54[1] = v39;

    v56 = v17;
    v57 = sub_1B6347B3C(v56);
    v59 = v58;

    v60 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
    v61 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8];
    *v60 = v57;
    *(v60 + 1) = v59;

    v62 = [v56 data];
    if (v62)
    {
      v63 = v62;
      v64 = sub_1B63BE924();
      v66 = v65;

      v67 = v56;
    }

    else
    {
      v67 = v56;

      v64 = 0;
      v66 = 0xF000000000000000;
    }

    v68 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage];
    v69 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage];
    v70 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage + 8];
    *v68 = v64;
    v68[1] = v66;
    sub_1B6284F64(v69, v70);
    v11 = v96;
    v52 = *(v96 + 16);
    v71 = v9;
    v72 = v9;
    v73 = v16;
    v74 = v16;
    v10 = v92;
    v52(v72, v74, v92);
    (*(v11 + 56))(v71, 0, 1, v10);
    v75 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    v76 = &a3[v75];
    v15 = v73;
    sub_1B6282DFC(v71, v76, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    a2 = v93;
    v53 = v67;
  }

  else
  {
    v40 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude] = 0;

    v41 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude] = 0;

    v42 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid] = 0;

    v43 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
    v44 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8];
    *v43 = 0;
    *(v43 + 1) = 0;

    v45 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
    v46 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8];
    *v45 = 0;
    *(v45 + 1) = 0;

    v47 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
    v48 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8];
    *v47 = 0;
    *(v47 + 1) = 0;

    v49 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage];
    v50 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v49, v50);
    (*(v11 + 56))(v9, 1, 1, v10);
    v51 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v9, &a3[v51], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v52 = *(v11 + 16);
    v53 = 0;
  }

  v77 = v94;
  v52(v94, v15, v10);
  v78 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v79 = (v12 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  *(v80 + 16) = a2;
  (*(v11 + 32))(v80 + v78, v77, v10);
  *(v80 + v79) = a3;
  sub_1B6282B88();
  v81 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v82 = v53;
  v83 = a3;
  if (sub_1B63BEF24())
  {
    v84 = swift_allocObject();
    *(v84 + 16) = sub_1B62D93BC;
    *(v84 + 24) = v80;
    v85 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v86 = *&v83[v85];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v83[v85] = v86;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v86 = sub_1B629A8E8(0, v86[2] + 1, 1, v86);
      *&v83[v85] = v86;
    }

    v89 = v86[2];
    v88 = v86[3];
    if (v89 >= v88 >> 1)
    {
      v86 = sub_1B629A8E8((v88 > 1), v89 + 1, 1, v86);
    }

    v86[2] = v89 + 1;
    v90 = &v86[2 * v89];
    v90[4] = sub_1B62B9488;
    v90[5] = v84;
    *&v83[v85] = v86;
    swift_endAccess();
  }

  return (*(v96 + 8))(v15, v10);
}

void sub_1B62D6E8C(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (!a3)
  {
    v42 = a2;
    v43 = [v6 mapItem];
    if (v43)
    {
      v44 = v43;
      [v43 setMapItemStorage_];
    }

    [v6 setLatitude_];
    [v6 setLongitude_];
    [v6 setMuid_];
    v48 = v42;
    v45 = sub_1B63BE954();
    [v6 setModificationTime_];

    [v6 setMapItemAddress_];
    [v6 setMapItemName_];
    [v6 setMapItemCategory_];
    [v6 setMapItemLastRefreshed_];
    goto LABEL_24;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  v48 = a2;
  v8 = a3;
  v9 = [ObjCClassFromObject strippedMapItemWith_];
  v10 = [v6 managedObjectContext];
  if (v10)
  {
    v11 = v10;
    [v9 coordinate];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v6 setLatitude_];

    [v9 coordinate];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v6 setLongitude_];

    v16 = [v9 _muid];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v6 setMuid_];

    v18 = [v9 addressObject];
    if (!v18 || (v19 = v18, v20 = [v18 fullAddressWithMultiline_], v19, !v20))
    {
      v20 = 0;
    }

    [v6 setMapItemAddress_];

    v21 = [v9 name];
    [v6 setMapItemName_];

    v22 = v9;
    sub_1B6347B3C(v22);

    v23 = sub_1B63BEBC4();

    [v6 setMapItemCategory_];

    v24 = sub_1B63BE954();
    [v6 setMapItemLastRefreshed_];

    v25 = [v6 mapItem];
    if (!v25)
    {
      type metadata accessor for MapsSyncManagedMixinMapItem();
      v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v6 setMapItem_];

      v27 = [v6 mapItem];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B63BE954();
        [v28 setCreateTime_];
      }

      v30 = [v6 mapItem];
      if (!v30)
      {
        goto LABEL_13;
      }

      v31 = v30;
      v32 = sub_1B63BE954();
      [v31 setModificationTime_];

      v25 = v32;
    }

LABEL_13:
    v33 = [v6 mapItem];
    if (v33)
    {
      v34 = v33;
      [v22 coordinate];
      [v34 setLatitude_];
      [v22 coordinate];
      [v34 setLongitude_];
      v36 = [v22 data];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1B63BE924();
        v40 = v39;

        v41 = sub_1B63BE904();
        sub_1B628BAC0(v38, v40);
      }

      else
      {
        v41 = 0;
      }

      [v34 setMapItemStorage_];

      v47 = sub_1B63BE954();
      [v34 setModificationTime_];
    }

LABEL_24:
    v46 = v48;
    goto LABEL_25;
  }

  v46 = v9;
LABEL_25:
}

void (*sub_1B62D7444(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6290B60();
  return sub_1B62D748C;
}

void sub_1B62D748C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62D67AC(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62D67AC(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

void *sub_1B62D755C(void *a1, void *a2, int a3, int a4)
{
  v9 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__customName);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate) = xmmword_1B63C3E40;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__latitude) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__longitude) = 0;
  v10 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  v13 = sub_1B63BE994();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  v14 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName);
  *v14 = 0;
  v14[1] = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__muid) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__origin) = 0;
  v15 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  v16 = sub_1B63BEA04();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  v17 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__type) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage) = xmmword_1B63C3E40;

  return sub_1B628F5D4(a1, a2, a3, a4);
}

uint64_t sub_1B62D7770()
{
  v1 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__customName + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate), *(v0 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8));

  v2 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8);

  v3 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);
  v4 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier, &unk_1EB943680, qword_1B63C4070);
  v5 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote + 8);

  v6 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage);
  v7 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage + 8);

  return sub_1B6284F64(v6, v7);
}

id CollectionPlaceItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionPlaceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B62D78C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20)
{
  v56 = a6;
  v57 = a7;
  v55 = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v49 - v29;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDB0F2A8;
  if (a2)
  {
    v51 = sub_1B63BEBC4();
  }

  else
  {
    v51 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v50 = 0;
    v31 = a11;
    v32 = a12;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_11:
    v49 = 0;
    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_1B629119C(a3, a4);
  v50 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v31 = a11;
  v32 = a12;
  if (!a9)
  {
    goto LABEL_11;
  }

LABEL_8:
  v49 = sub_1B63BEBC4();

  if (v31)
  {
LABEL_9:
    v33 = sub_1B63BEBC4();

    goto LABEL_13;
  }

LABEL_12:
  v33 = 0;
LABEL_13:
  v52 = v32;
  sub_1B628C510(v32, v30, &unk_1EB943210, &unk_1B63C3F50);
  v34 = sub_1B63BE994();
  v35 = *(v34 - 8);
  v36 = 0;
  if ((*(v35 + 48))(v30, 1, v34) != 1)
  {
    v36 = sub_1B63BE954();
    (*(v35 + 8))(v30, v34);
  }

  if (a14)
  {
    v37 = sub_1B63BEBC4();
  }

  else
  {
    v37 = 0;
  }

  sub_1B628C510(a17, v26, &unk_1EB943680, qword_1B63C4070);
  v38 = sub_1B63BEA04();
  v39 = *(v38 - 8);
  v40 = 0;
  if ((*(v39 + 48))(v26, 1, v38) != 1)
  {
    v40 = sub_1B63BE9C4();
    (*(v39 + 8))(v26, v38);
  }

  if (a19)
  {
    v41 = sub_1B63BEBC4();
  }

  else
  {
    v41 = 0;
  }

  LOWORD(v48) = a20;
  LOWORD(v47) = a16;
  v42 = v49;
  v44 = v50;
  v43 = v51;
  v45 = [v54 initWithStore:v53 customName:v51 droppedPinCoordinate:v50 droppedPinFloorOrdinal:v55 latitude:v56 longitude:v57 mapItemAddress:v49 mapItemCategory:v33 mapItemLastRefreshed:v36 mapItemName:v37 muid:a15 origin:v47 originalIdentifier:v40 placeItemNote:v41 type:v48];

  sub_1B6284EAC(a17, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v52, &unk_1EB943210, &unk_1B63C3F50);
  return v45;
}

void sub_1B62D7CF4(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 9) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8);
  v11 = (*(v10 + 80) + v9 + 2) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62D0074(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v9), v2 + v11, *(v2 + v12), *(v2 + v12 + 8), *(v2 + ((v12 + 17) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B62D7EEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate);
  v8 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate);
  v9 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62D94D8;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B62D80EC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__latitude);
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D94B4;
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

id sub_1B62D82C4(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__longitude);
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D9490;
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

id sub_1B62D85B4(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__muid);
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D946C;
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

uint64_t sub_1B62D87BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t keypath_setTm_1(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

void sub_1B62D93BC(uint64_t a1, void *a2)
{
  v5 = *(sub_1B63BE994() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);

  sub_1B62D6E8C(a1, a2, v7);
}

id CollectionTransitItem.__allocating_init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v9 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    sub_1B629119C(a2, a3);
    v10 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    v8 = v11;
  }

  v12 = [v8 initWithStore:v9 muid:a1 transitLineStorage:v10];
  sub_1B6284F64(a2, a3);

  return v12;
}

id CollectionTransitItem.init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    sub_1B629119C(a2, a3);
    v9 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
  }

  v10 = [v4 initWithStore:v8 muid:a1 transitLineStorage:v9];
  sub_1B6284F64(a2, a3);

  return v10;
}

char *CollectionTransitItem.init(store:muid:transitLineStorage:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  v14 = *&v10[v11];
  *&v13[OBJC_IVAR___MSCollectionTransitItem__muid] = a2;
  v15 = &v13[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage];
  v16 = *&v13[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage];
  v17 = *&v13[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8];
  *v15 = a3;
  v15[1] = a4;
  sub_1B6291034(a3, a4);
  sub_1B6284F64(v16, v17);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  sub_1B6282B88();
  v19 = *&v10[v11];
  sub_1B6291034(a3, a4);
  if (sub_1B63BEF24())
  {
    v29 = v9;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B62DAFF0;
    *(v20 + 24) = v18;
    v28 = v20;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v13[v21];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v21] = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v13[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B8188;
    v26[5] = v28;
    *&v13[v21] = v22;
    swift_endAccess();

    v9 = v29;
  }

  else
  {
  }

  [*&v10[v11] unlock];
  sub_1B6284F64(a3, a4);

  return v13;
}

void sub_1B62D9B24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    [v9 setMuid_];
    if (a5 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 setTransitLineStorage_];
  }
}

uint64_t sub_1B62D9CB4(void *a1, uint64_t a2, char a3)
{
  v4 = a2;
  sub_1B6289B44(a1, a2, a3);
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    v8 = a1;
    v9 = [v7 muid];
    *(v3 + OBJC_IVAR___MSCollectionTransitItem__muid) = v9;
    if ((v4 & 1) != 0 || (v10 = [v7 transitLineStorage]) == 0)
    {

      v12 = 0;
      v14 = 0xF000000000000000;
    }

    else
    {
      v11 = v10;
      v12 = sub_1B63BE924();
      v14 = v13;
    }

    v15 = (v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
    v16 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
    v17 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8);
    *v15 = v12;
    v15[1] = v14;

    return sub_1B6284F64(v16, v17);
  }

  return result;
}

uint64_t sub_1B62D9E94()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollectionTransitItem__muid);
  [v1 unlock];
  return v2;
}

id sub_1B62D9F40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionTransitItem__muid) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DAFFC;
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

id sub_1B62DA0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setMuid_];
  }

  return result;
}

id (*sub_1B62DA140(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionTransitItem__muid);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DA1C4;
}

uint64_t sub_1B62DA26C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
  v5 = *(v1 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B62DB004;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_5;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B62DB004;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62DA6B8(uint64_t a1, unint64_t a2)
{
  sub_1B62DB010(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62DA700(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B62DB010(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B62DA75C(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollectionTransitItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 transitLineStorage]) != 0)
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

void sub_1B62DA880(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setTransitLineStorage_];
  }
}

uint64_t (*sub_1B62DA940(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62DA26C();
  a1[1] = v3;
  return sub_1B62DA988;
}

uint64_t sub_1B62DA988(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B62DB010(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62DB010(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

void *sub_1B62DAA00(void *a1, void *a2, int a3, int a4)
{
  v51 = a4;
  v52 = a3;
  v53 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  *&v4[OBJC_IVAR___MSCollectionTransitItem__muid] = 0;
  *&v4[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSCollectionItem__positionIndex] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v50 = &v46 - v12;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B7B68(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR___MSCollectionItem__collections] = v13;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v11;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v16 = type metadata accessor for MapsSyncHashing();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v18 = sub_1B63BEA04();
  v19 = *(*(v18 - 8) + 56);
  v19(&v4[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v21 = sub_1B63BE994();
  v22 = *(*(v21 - 8) + 56);
  v22(&v4[v20], 1, 1, v21);
  v22(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v21);
  v23 = v53;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v53;
  v24 = v52 & 1;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v52 & 1;
  v25 = type metadata accessor for MapsSyncObject();
  v54.receiver = v4;
  v54.super_class = v25;
  v26 = v23;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = v27;
  if (a1)
  {
    v29 = v27;
    v30 = [a1 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(a1, v24, v51 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v50;
    sub_1B63BE9F4();
    v19(v33, 0, 1, v18);
    v34 = v47;
    sub_1B62B2C0C(v33, v47);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v49;
    sub_1B62B2C0C(v33, v49);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

id CollectionTransitItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionTransitItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B62DB010(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
  v8 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
  v9 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62DB360;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id CommunityID.__allocating_init(communityIdentifier:expired:positionIndex:usedCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  if (qword_1EDB0F2A0 != -1)
  {
    v17 = v11;
    swift_once();
    v11 = v17;
  }

  v12 = qword_1EDB0F2A8;
  if (a2)
  {
    v13 = v11;
    v14 = sub_1B63BEBC4();

    v11 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v11 initWithStore:v12 communityIdentifier:v14 expired:a3 & 1 positionIndex:a4 usedCount:a5];

  return v15;
}

id CommunityID.init(communityIdentifier:expired:positionIndex:usedCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDB0F2A0 != -1)
  {
    v14 = a2;
    swift_once();
    a2 = v14;
  }

  v10 = qword_1EDB0F2A8;
  if (a2)
  {
    v11 = sub_1B63BEBC4();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithStore:v10 communityIdentifier:v11 expired:a3 & 1 positionIndex:a4 usedCount:a5];

  return v12;
}

char *CommunityID.__allocating_init(store:communityIdentifier:expired:positionIndex:usedCount:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [objc_allocWithZone(v7) initWithStore_];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v15 = *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v16 = v13;
  [v15 lock];
  v17 = *&v13[v14];
  v18 = &v16[OBJC_IVAR___MSCommunityID__communityIdentifier];
  v19 = *&v16[OBJC_IVAR___MSCommunityID__communityIdentifier + 8];
  *v18 = a2;
  *(v18 + 1) = a3;

  v16[OBJC_IVAR___MSCommunityID__expired] = a4;
  *&v16[OBJC_IVAR___MSCommunityID__positionIndex] = a5;
  *&v16[OBJC_IVAR___MSCommunityID__usedCount] = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  sub_1B6282B88();
  v21 = *&v13[v14];
  if (sub_1B63BEF24())
  {
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1B62DEA80;
    *(v22 + 24) = v20;
    v23 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v24 = *&v16[v23];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[v23] = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B629A8E8(0, v24[2] + 1, 1, v24);
      *&v16[v23] = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1B629A8E8((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    v28 = &v24[2 * v27];
    v28[4] = sub_1B62B8188;
    v28[5] = v22;
    *&v16[v23] = v24;
    swift_endAccess();
  }

  [*&v13[v14] unlock];

  return v16;
}

char *CommunityID.init(store:communityIdentifier:expired:positionIndex:usedCount:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [v7 initWithStore_];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v15 = *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v16 = v13;
  [v15 lock];
  v17 = *&v13[v14];
  v18 = &v16[OBJC_IVAR___MSCommunityID__communityIdentifier];
  v19 = *&v16[OBJC_IVAR___MSCommunityID__communityIdentifier + 8];
  *v18 = a2;
  *(v18 + 1) = a3;

  v16[OBJC_IVAR___MSCommunityID__expired] = a4;
  *&v16[OBJC_IVAR___MSCommunityID__positionIndex] = a5;
  *&v16[OBJC_IVAR___MSCommunityID__usedCount] = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  sub_1B6282B88();
  v21 = *&v13[v14];
  if (sub_1B63BEF24())
  {
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1B62DF3F8;
    *(v22 + 24) = v20;
    v23 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v24 = *&v16[v23];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[v23] = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B629A8E8(0, v24[2] + 1, 1, v24);
      *&v16[v23] = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1B629A8E8((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    v28 = &v24[2 * v27];
    v28[4] = sub_1B62B9488;
    v28[5] = v22;
    *&v16[v23] = v24;
    swift_endAccess();
  }

  [*&v13[v14] unlock];

  return v16;
}

void sub_1B62DBA98(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v12 setCommunityIdentifier_];

    [v12 setExpired_];
    [v12 setPositionIndex_];
    [v12 setUsedCount_];
  }
}

uint64_t sub_1B62DBC30()
{
  v1 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = MEMORY[0x1E69E7CC0];

  v4 = OBJC_IVAR___MSCommunityID__rapRecordChanges;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = v3;

  v6 = OBJC_IVAR___MSCommunityID__reviewedPlaceChanges;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *(v0 + v6) = v3;
}

uint64_t sub_1B62DBEC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCommunityID__communityIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSCommunityID__communityIdentifier + 8);
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
  *(v18 + 16) = sub_1B62DEA94;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_6;
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

    v13 = sub_1B62DEA94;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62DC2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCommunityID__communityIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSCommunityID__communityIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62DEAA0;
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

void sub_1B62DC484(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCommunityID();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 communityIdentifier]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;

      v14 = a3[1];
      *a3 = v11;
      a3[1] = v13;
    }

    else
    {
    }
  }

  else
  {
    v15 = v18[0];
    v16 = sub_1B63BE824();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B62DC5A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4)
    {
      v9 = sub_1B63BEBC4();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v7 setCommunityIdentifier_];
  }
}

id (*sub_1B62DC660(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62DBEC0();
  a1[1] = v3;
  return sub_1B62DC6A8;
}

id sub_1B62DC6A8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B62DC2CC(*a1, v2);
  }

  v5 = a1[1];

  sub_1B62DC2CC(v3, v2);
}

uint64_t sub_1B62DC78C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCommunityID__expired);
  [v1 unlock];
  return v2;
}

id sub_1B62DC838(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCommunityID__expired) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DEAA8;
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

id sub_1B62DC9D4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setExpired_];
  }

  return result;
}

id (*sub_1B62DCA38(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCommunityID__expired);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62DCABC;
}

id sub_1B62DCB50(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCommunityID__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DEAB0;
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

id (*sub_1B62DCCEC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCommunityID__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DCD70;
}

id sub_1B62DCE00(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCommunityID__usedCount) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DEAD4;
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

id sub_1B62DCF9C(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62DD00C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCommunityID__usedCount);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DD090;
}

char *sub_1B62DD0B4()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B8F20(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v10 = v1;
  sub_1B629821C();
  v2 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v4 = v0;
  v5 = v2;
  sub_1B6382218(inited);

  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  v7 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v7 lock];
  sub_1B62DED5C(v4, &v10, &OBJC_IVAR___MSCommunityID__rapRecordChanges, sub_1B62CAAB0, sub_1B62CC52C);
  [v7 unlock];
  v8 = sub_1B62B7A50(v10);

  return v8;
}

void sub_1B62DD248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B629E3F0(a1, v27);
  type metadata accessor for MapsSyncManagedRAPRecord();
  if (swift_dynamicCast())
  {
    v4 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    v5 = v27[5];
    v25 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
    v6 = objc_allocWithZone(type metadata accessor for RAPRecord());
    *&v6[OBJC_IVAR___MSRAPRecord__clientRevision] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__contentData] = xmmword_1B63C3E40;
    v7 = &v6[OBJC_IVAR___MSRAPRecord__countryCode];
    *v7 = 0;
    v7[1] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__positionIndex] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__rapResponse] = xmmword_1B63C3E40;
    v8 = &v6[OBJC_IVAR___MSRAPRecord__reportId];
    *v8 = 0;
    v8[1] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__status] = 0;
    v9 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
    v10 = sub_1B63BE994();
    v11 = *(*(v10 - 8) + 56);
    v11(&v6[v9], 1, 1, v10);
    v12 = &v6[OBJC_IVAR___MSRAPRecord__summary];
    *v12 = 0;
    v12[1] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__type] = 0;
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
    v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    v14 = objc_allocWithZone(MEMORY[0x1E696AD10]);
    v15 = v5;
    v16 = v4;
    *&v6[v13] = [v14 init];
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
    v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
    v18 = type metadata accessor for MapsSyncHashing();
    (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    v20 = sub_1B63BEA04();
    (*(*(v20 - 8) + 56))(&v6[v19], 1, 1, v20);
    v11(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v10);
    v11(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v10);
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v16;
    v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v25;
    v26.receiver = v6;
    v26.super_class = type metadata accessor for MapsSyncObject();
    v21 = v16;
    v22 = objc_msgSendSuper2(&v26, sel_init);
    v23 = [v15 objectID];
    v24 = *(v22 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v22 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v23;

    (*((*MEMORY[0x1E69E7D40] & *v22) + 0x218))(v15, v25, 1);
    sub_1B62CAAB0(v27, v22);
  }
}

id sub_1B62DD7A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v9 lock];
  v10 = OBJC_IVAR___MSCommunityID__rapRecordChanges;
  swift_beginAccess();
  v11 = *&v4[v10];
  v12 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v10] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B62B1FF0(0, v11[2] + 1, 1, v11);
    *&v4[v10] = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1B62B1FF0((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[2 * v15];
  *(v16 + 32) = a2 & 1;
  v16[5] = v12;
  *&v4[v10] = v11;
  swift_endAccess();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  sub_1B6282B88();
  v18 = v12;
  v19 = v4;

  if (sub_1B63BEF24())
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B62DF3BC;
    *(v20 + 24) = v17;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v19[v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v21] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v19[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B9488;
    v26[5] = v20;
    *&v19[v21] = v22;
    swift_endAccess();
  }

  return [v9 unlock];
}

char *sub_1B62DDA28()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B8734(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v10 = v1;
  sub_1B629821C();
  v2 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v4 = v0;
  v5 = v2;
  sub_1B6382298(inited);

  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  v7 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v7 lock];
  sub_1B62DED5C(v4, &v10, &OBJC_IVAR___MSCommunityID__reviewedPlaceChanges, sub_1B62CAA74, sub_1B62CBFBC);
  [v7 unlock];
  v8 = sub_1B62B7A24(v10);

  return v8;
}

void sub_1B62DDBBC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, SEL *a5, id a6)
{
  if (!a1 && a2)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v23 = a6;
      v17 = a3;
      v18 = a4;
      v19 = a5;
      v20 = a2;
      v21 = sub_1B63BF044();
      a2 = v20;
      a5 = v19;
      a4 = v18;
      a3 = v17;
      a6 = v23;
      if (!v21)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = a5;
      v8 = a4;
      v9 = a3;
      v10 = a6;
      v11 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v6 + 16))
      {
        __break(1u);
        return;
      }

      v7 = a5;
      v8 = a4;
      v9 = a3;
      v10 = a6;
      v11 = *(a2 + 32);
    }

    v22 = v11;
    type metadata accessor for MapsSyncManagedCommunityID();
    v12 = swift_dynamicCastClass();
    if (v12 && (v13 = [v12 *v7]) != 0)
    {
      v14 = v13;
      v15 = v8;
      sub_1B62DEC08(v14, v9, v15, v10);

      v16 = v15;
    }

    else
    {
      v16 = v22;
    }
  }
}

id sub_1B62DDD4C(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v6 = a1;
  a3();

  a4(0);
  v7 = sub_1B63BEC94();

  return v7;
}

id sub_1B62DDF10(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v9 lock];
  v10 = OBJC_IVAR___MSCommunityID__reviewedPlaceChanges;
  swift_beginAccess();
  v11 = *&v4[v10];
  v12 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v10] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B62B1FCC(0, v11[2] + 1, 1, v11);
    *&v4[v10] = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1B62B1FCC((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[2 * v15];
  *(v16 + 32) = a2 & 1;
  v16[5] = v12;
  *&v4[v10] = v11;
  swift_endAccess();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  sub_1B6282B88();
  v18 = v12;
  v19 = v4;

  if (sub_1B63BEF24())
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B62DF340;
    *(v20 + 24) = v17;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v19[v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v21] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v19[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B9488;
    v26[5] = v20;
    *&v19[v21] = v22;
    swift_endAccess();
  }

  return [v9 unlock];
}

uint64_t sub_1B62DE178(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, id, uint64_t, uint64_t))
{
  v12 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = a4;
  v14 = a2;

  v15 = v12;
  v16 = a4;
  a7(inited, v14, a5, a6);

  swift_setDeallocating();
  v17 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_1B62DE284(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, void (*a6)(void))
{
  if (!a1)
  {
    type metadata accessor for MapsSyncManagedCommunityID();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      if (a2)
      {
        v11 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 >> 62)
        {
          v21 = v10;
          v17 = sub_1B63BF044();
          v11 = a2 & 0xFFFFFFFFFFFFFF8;
          v18 = v17;
          v10 = v21;
          if (!v18)
          {
            return;
          }
        }

        else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v12 = v10;
          v19 = a3;
          v15 = MEMORY[0x1B8C92830](0, a2);
        }

        else
        {
          if (!*(v11 + 16))
          {
            __break(1u);
            return;
          }

          v12 = v10;
          v13 = *(a2 + 32);
          v14 = a3;
          v15 = v13;
        }

        v20 = v15;
        a6(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          a4(v12, v16);
        }
      }
    }
  }
}

void *sub_1B62DE420(void *a1, void *a2, int a3, int a4)
{
  v50 = a4;
  v52 = a3;
  v51 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - v11;
  v12 = &v4[OBJC_IVAR___MSCommunityID__communityIdentifier];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR___MSCommunityID__expired] = 0;
  *&v4[OBJC_IVAR___MSCommunityID__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSCommunityID__usedCount] = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MSCommunityID__rapRecordChanges] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MSCommunityID__reviewedPlaceChanges] = v13;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v13;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v16 = type metadata accessor for MapsSyncHashing();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v18 = sub_1B63BEA04();
  v19 = *(*(v18 - 8) + 56);
  v19(&v4[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v21 = sub_1B63BE994();
  v22 = *(*(v21 - 8) + 56);
  v22(&v4[v20], 1, 1, v21);
  v22(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v21);
  v23 = v52;
  v24 = v51;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v25 = type metadata accessor for MapsSyncObject();
  v53.receiver = v4;
  v53.super_class = v25;
  v26 = a2;
  v27 = objc_msgSendSuper2(&v53, sel_init);
  v28 = v27;
  if (v24)
  {
    v29 = v27;
    v30 = [v24 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(v24, v23 & 1, v50 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v49;
    sub_1B63BE9F4();
    v19(v33, 0, 1, v18);
    v34 = v46;
    sub_1B62B2C0C(v33, v46);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v48;
    sub_1B62B2C0C(v33, v48);
    v37 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

uint64_t sub_1B62DE994()
{
  v1 = *(v0 + OBJC_IVAR___MSCommunityID__communityIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR___MSCommunityID__rapRecordChanges);

  v3 = *(v0 + OBJC_IVAR___MSCommunityID__reviewedPlaceChanges);
}

id CommunityID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunityID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62DEAF8(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCommunityID();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ((a2 & 1) != 0 || (v8 = [v6 communityIdentifier]) == 0)
    {
      v10 = 0;
      v12 = 0;
    }

    else
    {
      v9 = v8;
      v10 = sub_1B63BEBD4();
      v12 = v11;
    }

    v13 = (v2 + OBJC_IVAR___MSCommunityID__communityIdentifier);
    v14 = *(v2 + OBJC_IVAR___MSCommunityID__communityIdentifier + 8);
    *v13 = v10;
    v13[1] = v12;

    v15 = [v6 expired];
    *(v2 + OBJC_IVAR___MSCommunityID__expired) = v15;
    v16 = [v6 positionIndex];
    *(v2 + OBJC_IVAR___MSCommunityID__positionIndex) = v16;
    v17 = [v6 usedCount];

    *(v2 + OBJC_IVAR___MSCommunityID__usedCount) = v17;
  }
}

uint64_t sub_1B62DEC08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v8 = sub_1B63BE844();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B63BEEC4();
  sub_1B62B9380();
  while (1)
  {
    sub_1B63BEF64();
    if (!v16)
    {
      break;
    }

    sub_1B628E928(&v15, v14);
    a4(v14, a2, a3);
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      return (*(v9 + 8))(v12, v8);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B62DED5C(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(id *, void *), uint64_t (*a5)(void))
{
  v8 = *a3;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      v15 = *v12;
      if (*(v12 - 1))
      {
        v13 = v15;
        v14 = a5();
      }

      else
      {
        a4(&v16, v15);
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t type metadata accessor for CommunityID()
{
  result = qword_1EB9431F8;
  if (!qword_1EB9431F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_107Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id CuratedCollection.__allocating_init(curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v11 = v8;
    swift_once();
    v8 = v11;
  }

  v9 = qword_1EDB0F2A8;

  return [v8 initWithStore:v9 curatedCollectionIdentifier:a1 positionIndex:a2 resultProviderIdentifier:a3];
}

id CuratedCollection.init(curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;

  return [v4 initWithStore:v8 curatedCollectionIdentifier:a1 positionIndex:a2 resultProviderIdentifier:a3];
}

char *CuratedCollection.__allocating_init(store:curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(v5) initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  v14 = *&v10[v11];
  *&v13[OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier] = a2;
  *&v13[OBJC_IVAR___MSCuratedCollection__positionIndex] = a3;
  *&v13[OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier] = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  sub_1B6282B88();
  v16 = *&v10[v11];
  if (sub_1B63BEF24())
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1B62E0AF0;
    *(v17 + 24) = v15;
    v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v19 = *&v13[v18];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v18] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1B629A8E8(0, v19[2] + 1, 1, v19);
      *&v13[v18] = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1B629A8E8((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_1B62B8188;
    v23[5] = v17;
    *&v13[v18] = v19;
    swift_endAccess();
  }

  [*&v10[v11] unlock];

  return v13;
}

char *CuratedCollection.init(store:curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = [v4 initWithStore_];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v11 = *&v9[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v12 = v9;
  [v11 lock];
  v13 = *&v9[v10];
  *&v12[OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier] = a2;
  *&v12[OBJC_IVAR___MSCuratedCollection__positionIndex] = a3;
  *&v12[OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier] = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  sub_1B6282B88();
  v15 = *&v9[v10];
  if (sub_1B63BEF24())
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1B62E0E30;
    *(v16 + 24) = v14;
    v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v18 = *&v12[v17];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v17] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1B629A8E8(0, v18[2] + 1, 1, v18);
      *&v12[v17] = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1B629A8E8((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    v22 = &v18[2 * v21];
    v22[4] = sub_1B62B9488;
    v22[5] = v16;
    *&v12[v17] = v18;
    swift_endAccess();
  }

  [*&v9[v10] unlock];

  return v12;
}

void sub_1B62DF9C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    [v10 setCuratedCollectionIdentifier_];
    [v10 setPositionIndex_];
    [v10 setResultProviderIdentifier_];
  }
}

id sub_1B62DFBE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E0AFC;
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

id (*sub_1B62DFD84(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DFE08;
}

id sub_1B62DFE98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCuratedCollection__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E0B20;
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

id sub_1B62E0034(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62E00A4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCuratedCollection__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62E0128;
}

uint64_t sub_1B62E01BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier);
  [v1 unlock];
  return v2;
}

id sub_1B62E0268(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E0B44;
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

id sub_1B62E0404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setResultProviderIdentifier_];
  }

  return result;
}

id (*sub_1B62E0468(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E04EC;
}

void *sub_1B62E0570(void *a1, void *a2, int a3, int a4)
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
  *&v4[OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier] = 0;
  *&v4[OBJC_IVAR___MSCuratedCollection__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v14 = type metadata accessor for MapsSyncHashing();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v16 = sub_1B63BEA04();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v19 = sub_1B63BE994();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v51;
  v20(v21, 1, 1, v19);
  v20(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v19);
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
    v17(v32, 0, 1, v16);
    v33 = v46;
    sub_1B62B2C0C(v32, v46);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v33, &v31[v34]);
    swift_endAccess();
    v35 = v48;
    sub_1B62B2C0C(v32, v48);
    v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v37 = swift_allocObject();
    sub_1B62B2CEC(v35, v37 + v36);
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

    sub_1B62B2DF0(v32);
  }

  return v27;
}

id CuratedCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62E0D80(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCuratedCollection();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 curatedCollectionIdentifier];
    *(v1 + OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier) = v6;
    v7 = [v4 positionIndex];
    *(v1 + OBJC_IVAR___MSCuratedCollection__positionIndex) = v7;
    LODWORD(v4) = [v4 resultProviderIdentifier];

    *(v1 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier) = v4;
  }
}

id FavoriteItem.__allocating_init(customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20)
{
  v21 = v20;
  v55 = a4;
  v56 = a5;
  LODWORD(v54) = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v48 - v26;
  v52 = objc_allocWithZone(v21);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDB0F2A8;
  if (a2)
  {
    v51 = sub_1B63BEBC4();

    v28 = a9;
    v29 = a10;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v49 = 0;
    if (v28)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v51 = 0;
  v28 = a9;
  v29 = a10;
  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v49 = sub_1B63BEBC4();

  if (v28)
  {
LABEL_6:
    v48 = sub_1B63BEBC4();

    goto LABEL_10;
  }

LABEL_9:
  v48 = 0;
LABEL_10:
  v53 = v29;
  sub_1B628C510(v29, v27, &unk_1EB943210, &unk_1B63C3F50);
  v30 = sub_1B63BE994();
  v31 = *(v30 - 8);
  v32 = 0;
  if ((*(v31 + 48))(v27, 1, v30) != 1)
  {
    v32 = sub_1B63BE954();
    (*(v31 + 8))(v27, v30);
  }

  if (a12)
  {
    v33 = sub_1B63BEBC4();

    v34 = a18;
    if (a15)
    {
LABEL_14:
      v35 = sub_1B63BEBC4();

      goto LABEL_17;
    }
  }

  else
  {
    v33 = 0;
    v34 = a18;
    if (a15)
    {
      goto LABEL_14;
    }
  }

  v35 = 0;
LABEL_17:
  if (v34)
  {
    v36 = sub_1B63BEBC4();
  }

  else
  {
    v36 = 0;
  }

  WORD2(v47) = a20;
  LODWORD(v47) = a19;
  v46 = v35;
  v45 = v33;
  v37 = v35;
  v38 = v33;
  v39 = v48;
  v40 = v51;
  v41 = v49;
  v43 = v55;
  v42 = v56;
  v54 = [v52 initWithStore:v50 customName:v51 hidden:v54 & 1 latitude:v55 longitude:v56 mapItemAddress:v49 mapItemCategory:v48 mapItemLastRefreshed:v32 mapItemName:v45 muid:a13 originatingAddressString:v46 positionIndex:a16 shortcutIdentifier:v36 source:v47 type:? version:?];

  sub_1B6284EAC(v53, &unk_1EB943210, &unk_1B63C3F50);
  return v54;
}

id FavoriteItem.init(customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int16 a19, unsigned __int16 a20, __int16 a21)
{
  v23 = sub_1B62E88B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, __SPAIR32__(a20, a19), a21);

  return v23;
}

char *FavoriteItem.__allocating_init(store:customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int16 a20, unsigned __int16 a21, unsigned __int16 a22)
{
  v23 = v22;
  v113 = a8;
  v114 = a6;
  v121 = a7;
  v116 = a5;
  v24 = a4;
  v101 = a4;
  v103 = a2;
  v120 = a22;
  LODWORD(v127) = a21;
  LODWORD(v126) = a20;
  v124 = a17;
  v125 = a18;
  v118 = a16;
  v119 = a19;
  v117 = a14;
  v115 = a13;
  v128 = a11;
  v122 = a12;
  v123 = a15;
  v112 = a10;
  v100 = a9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v107 = *(v28 - 8);
  v29 = *(v107 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v104 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v99 - v31;
  v33 = objc_allocWithZone(v23);
  v111 = a1;
  v34 = [v33 initWithStore_];
  v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v36 = *&v34[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v108 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v37 = v34;
  v109 = v34;
  v38 = v37;
  [v36 lock];
  v110 = *&v34[v35];
  v39 = &v38[OBJC_IVAR___MSFavoriteItem__customName];
  v40 = *&v38[OBJC_IVAR___MSFavoriteItem__customName + 8];
  *v39 = a2;
  *(v39 + 1) = a3;
  v102 = a3;

  v38[OBJC_IVAR___MSFavoriteItem__hidden] = v24;
  v41 = *&v38[OBJC_IVAR___MSFavoriteItem__latitude];
  v42 = v116;
  *&v38[OBJC_IVAR___MSFavoriteItem__latitude] = v116;
  v106 = v42;

  v43 = *&v38[OBJC_IVAR___MSFavoriteItem__longitude];
  v44 = v114;
  *&v38[OBJC_IVAR___MSFavoriteItem__longitude] = v114;
  v105 = v44;

  v45 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
  v46 = *&v38[OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8];
  v47 = v113;
  *v45 = v121;
  *(v45 + 1) = v47;

  v48 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
  v49 = *&v38[OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8];
  v50 = v112;
  *v48 = a9;
  *(v48 + 1) = v50;

  v51 = v128;
  sub_1B628C510(v128, v32, &unk_1EB943210, &unk_1B63C3F50);
  v52 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v38[v52], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v53 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemName];
  v54 = *&v38[OBJC_IVAR___MSFavoriteItem__mapItemName + 8];
  v55 = v115;
  *v53 = v122;
  *(v53 + 1) = v55;

  v56 = *&v38[OBJC_IVAR___MSFavoriteItem__muid];
  v57 = v117;
  *&v38[OBJC_IVAR___MSFavoriteItem__muid] = v117;
  v99 = v57;

  v58 = &v38[OBJC_IVAR___MSFavoriteItem__originatingAddressString];
  v59 = *&v38[OBJC_IVAR___MSFavoriteItem__originatingAddressString + 8];
  v60 = v118;
  *v58 = v123;
  *(v58 + 1) = v60;

  v61 = v125;
  *&v38[OBJC_IVAR___MSFavoriteItem__positionIndex] = v124;
  v62 = &v38[OBJC_IVAR___MSFavoriteItem__shortcutIdentifier];
  v63 = *&v38[OBJC_IVAR___MSFavoriteItem__shortcutIdentifier + 8];
  v64 = v119;
  *v62 = v61;
  *(v62 + 1) = v64;

  *&v38[OBJC_IVAR___MSFavoriteItem__source] = v126;
  *&v38[OBJC_IVAR___MSFavoriteItem__type] = v127;
  *&v38[OBJC_IVAR___MSFavoriteItem__version] = v120;
  v65 = v104;
  sub_1B628C510(v51, v104, &unk_1EB943210, &unk_1B63C3F50);
  v66 = (*(v107 + 80) + 88) & ~*(v107 + 80);
  v67 = (v29 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v102;
  *(v72 + 16) = v103;
  *(v72 + 24) = v73;
  *(v72 + 32) = v101;
  v74 = v114;
  *(v72 + 40) = v116;
  *(v72 + 48) = v74;
  v75 = v113;
  *(v72 + 56) = v121;
  *(v72 + 64) = v75;
  v76 = v112;
  *(v72 + 72) = v100;
  *(v72 + 80) = v76;
  sub_1B628A128(v65, v72 + v66, &unk_1EB943210, &unk_1B63C3F50);
  v77 = (v72 + v67);
  v78 = v115;
  *v77 = v122;
  v77[1] = v78;
  *(v72 + v68) = v117;
  v79 = (v72 + v69);
  v80 = v118;
  *v79 = v123;
  v79[1] = v80;
  v81 = v125;
  *(v72 + v70) = v124;
  v82 = (v72 + v71);
  v83 = v119;
  *v82 = v81;
  v82[1] = v83;
  v84 = (v72 + ((v71 + 17) & 0xFFFFFFFFFFFFFFF8));
  *v84 = v126;
  v84[1] = v127;
  v84[2] = v120;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v85 = v108;
  v86 = v109;
  v87 = *&v109[v108];
  v88 = v106;
  v89 = v105;
  v90 = v99;
  if (sub_1B63BEF24())
  {
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1B62E8BD4;
    *(v91 + 24) = v72;
    v92 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v93 = *&v38[v92];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[v92] = v93;
    v126 = v89;
    v127 = v88;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = sub_1B629A8E8(0, v93[2] + 1, 1, v93);
      *&v38[v92] = v93;
    }

    v96 = v93[2];
    v95 = v93[3];
    if (v96 >= v95 >> 1)
    {
      v93 = sub_1B629A8E8((v95 > 1), v96 + 1, 1, v93);
    }

    v93[2] = v96 + 1;
    v97 = &v93[2 * v96];
    v97[4] = sub_1B62B8188;
    v97[5] = v91;
    *&v38[v92] = v93;
    swift_endAccess();
    v89 = v126;
    v88 = v127;
  }

  [*&v86[v85] unlock];

  sub_1B6284EAC(v128, &unk_1EB943210, &unk_1B63C3F50);
  return v38;
}

char *FavoriteItem.init(store:customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int16 a20, unsigned __int16 a21, unsigned __int16 a22)
{
  v23 = v22;
  v115 = a8;
  v116 = a6;
  v122 = a7;
  v25 = a4;
  v102 = a4;
  v104 = a2;
  v121 = a22;
  LODWORD(v128) = a21;
  LODWORD(v127) = a20;
  v125 = a17;
  v126 = a18;
  v119 = a16;
  v120 = a19;
  v117 = a13;
  v118 = a14;
  v129 = a11;
  v123 = a12;
  v124 = a15;
  v114 = a10;
  v100 = a9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v109 = *(v29 - 8);
  v106 = *(v109 + 64);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v105 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v98 - v32;
  v113 = a1;
  v34 = [v23 initWithStore_];
  v35 = *&v34[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v111 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v37 = v34;
  v110 = v34;
  v38 = v37;
  [v35 lock];
  v112 = *&v34[v36];
  v39 = &v38[OBJC_IVAR___MSFavoriteItem__customName];
  v40 = *&v38[OBJC_IVAR___MSFavoriteItem__customName + 8];
  *v39 = a2;
  *(v39 + 1) = a3;
  v103 = a3;

  v38[OBJC_IVAR___MSFavoriteItem__hidden] = v25;
  v41 = *&v38[OBJC_IVAR___MSFavoriteItem__latitude];
  v101 = a5;
  *&v38[OBJC_IVAR___MSFavoriteItem__latitude] = a5;
  v108 = a5;

  v42 = *&v38[OBJC_IVAR___MSFavoriteItem__longitude];
  v43 = v116;
  *&v38[OBJC_IVAR___MSFavoriteItem__longitude] = v116;
  v107 = v43;

  v44 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
  v45 = *&v38[OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8];
  v46 = v115;
  *v44 = v122;
  *(v44 + 1) = v46;

  v47 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
  v48 = *&v38[OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8];
  v49 = v114;
  *v47 = a9;
  *(v47 + 1) = v49;

  v50 = v129;
  sub_1B628C510(v129, v33, &unk_1EB943210, &unk_1B63C3F50);
  v51 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v33, &v38[v51], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v52 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemName];
  v53 = *&v38[OBJC_IVAR___MSFavoriteItem__mapItemName + 8];
  v54 = v117;
  *v52 = v123;
  *(v52 + 1) = v54;

  v55 = *&v38[OBJC_IVAR___MSFavoriteItem__muid];
  v56 = v118;
  *&v38[OBJC_IVAR___MSFavoriteItem__muid] = v118;
  v99 = v56;

  v57 = &v38[OBJC_IVAR___MSFavoriteItem__originatingAddressString];
  v58 = *&v38[OBJC_IVAR___MSFavoriteItem__originatingAddressString + 8];
  v59 = v119;
  *v57 = v124;
  *(v57 + 1) = v59;

  v60 = v126;
  *&v38[OBJC_IVAR___MSFavoriteItem__positionIndex] = v125;
  v61 = &v38[OBJC_IVAR___MSFavoriteItem__shortcutIdentifier];
  v62 = *&v38[OBJC_IVAR___MSFavoriteItem__shortcutIdentifier + 8];
  v63 = v120;
  *v61 = v60;
  *(v61 + 1) = v63;

  *&v38[OBJC_IVAR___MSFavoriteItem__source] = v127;
  *&v38[OBJC_IVAR___MSFavoriteItem__type] = v128;
  *&v38[OBJC_IVAR___MSFavoriteItem__version] = v121;
  v64 = v105;
  sub_1B628C510(v50, v105, &unk_1EB943210, &unk_1B63C3F50);
  v65 = (*(v109 + 80) + 88) & ~*(v109 + 80);
  v66 = (v106 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v103;
  *(v71 + 16) = v104;
  *(v71 + 24) = v72;
  *(v71 + 32) = v102;
  v73 = v116;
  *(v71 + 40) = v101;
  *(v71 + 48) = v73;
  v74 = v115;
  *(v71 + 56) = v122;
  *(v71 + 64) = v74;
  v75 = v114;
  *(v71 + 72) = v100;
  *(v71 + 80) = v75;
  sub_1B628A128(v64, v71 + v65, &unk_1EB943210, &unk_1B63C3F50);
  v76 = (v71 + v66);
  v77 = v117;
  *v76 = v123;
  v76[1] = v77;
  *(v71 + v67) = v118;
  v78 = (v71 + v68);
  v79 = v119;
  *v78 = v124;
  v78[1] = v79;
  v80 = v126;
  *(v71 + v69) = v125;
  v81 = (v71 + v70);
  v82 = v120;
  *v81 = v80;
  v81[1] = v82;
  v83 = (v71 + ((v70 + 17) & 0xFFFFFFFFFFFFFFF8));
  v84 = v110;
  *v83 = v127;
  v83[1] = v128;
  v83[2] = v121;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v85 = v111;
  v86 = *&v84[v111];
  v87 = v108;
  v88 = v107;
  v89 = v99;
  if (sub_1B63BEF24())
  {
    v90 = swift_allocObject();
    *(v90 + 16) = sub_1B62EA1D8;
    *(v90 + 24) = v71;
    v91 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v92 = *&v38[v91];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[v91] = v92;
    v127 = v88;
    v128 = v87;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v92 = sub_1B629A8E8(0, v92[2] + 1, 1, v92);
      *&v38[v91] = v92;
    }

    v95 = v92[2];
    v94 = v92[3];
    if (v95 >= v94 >> 1)
    {
      v92 = sub_1B629A8E8((v94 > 1), v95 + 1, 1, v92);
    }

    v92[2] = v95 + 1;
    v96 = &v92[2 * v95];
    v96[4] = sub_1B62B9488;
    v96[5] = v90;
    *&v38[v91] = v92;
    swift_endAccess();
    v88 = v127;
    v87 = v128;
  }

  [*&v84[v85] unlock];

  sub_1B6284EAC(v129, &unk_1EB943210, &unk_1B63C3F50);
  return v38;
}

void sub_1B62E2278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21, __int16 a22, __int16 a23)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v44 - v30;
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    v45 = a2;
    v34 = a2;
    if (a4)
    {
      v35 = sub_1B63BEBC4();
    }

    else
    {
      v35 = 0;
    }

    [v33 setCustomName_];

    [v33 setHidden_];
    [v33 setLatitude_];
    [v33 setLongitude_];
    if (a9)
    {
      v36 = sub_1B63BEBC4();
    }

    else
    {
      v36 = 0;
    }

    [v33 setMapItemAddress_];

    if (a11)
    {
      v37 = sub_1B63BEBC4();
    }

    else
    {
      v37 = 0;
    }

    [v33 setMapItemCategory_];

    sub_1B628C510(a12, v31, &unk_1EB943210, &unk_1B63C3F50);
    v38 = sub_1B63BE994();
    v39 = *(v38 - 8);
    v40 = 0;
    if ((*(v39 + 48))(v31, 1, v38) != 1)
    {
      v40 = sub_1B63BE954();
      (*(v39 + 8))(v31, v38);
    }

    [v33 setMapItemLastRefreshed_];

    if (a14)
    {
      v41 = sub_1B63BEBC4();
    }

    else
    {
      v41 = 0;
    }

    [v33 setMapItemName_];

    [v33 setMuid_];
    if (a17)
    {
      v42 = sub_1B63BEBC4();
    }

    else
    {
      v42 = 0;
    }

    [v33 setOriginatingAddressString_];

    [v33 setPositionIndex_];
    if (a20)
    {
      v43 = sub_1B63BEBC4();
    }

    else
    {
      v43 = 0;
    }

    [v33 setShortcutIdentifier_];

    [v33 setSource_];
    [v33 setType_];
    [v33 setVersion_];
  }
}

uint64_t sub_1B62E28E8()
{
  v1 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = MEMORY[0x1E69E7CC0];

  v4 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = v3;
}

id sub_1B62E2ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__customName);
  v8 = *(v3 + OBJC_IVAR___MSFavoriteItem__customName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62E8D3C;
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

uint64_t (*sub_1B62E2C84(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6296C10();
  a1[1] = v3;
  return sub_1B62E2CCC;
}

id sub_1B62E2D38(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSFavoriteItem__hidden) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E8D60;
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

id sub_1B62E2EE4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id (*sub_1B62E2F48(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__hidden);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E2FCC;
}

void sub_1B62E3094(void *a1)
{
  sub_1B62E8D90(a1);
}

void (*sub_1B62E30CC(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62A00E0();
  return sub_1B62E3114;
}

void sub_1B62E31CC(void *a1)
{
  sub_1B62E8F78(a1);
}

void (*sub_1B62E3204(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62A0488();
  return sub_1B62E324C;
}

uint64_t sub_1B62E327C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemAddress);
  v4 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8);
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
  *(v18 + 16) = sub_1B62E9138;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_62;
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

    v13 = sub_1B62E9138;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62E3620(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B62E36A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__mapItemAddress);
  v8 = *(v3 + OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62E9160;
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

uint64_t (*sub_1B62E3870(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62E327C();
  a1[1] = v3;
  return sub_1B62E38B8;
}

uint64_t sub_1B62E38D0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
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

uint64_t sub_1B62E3968()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemCategory);
  v4 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8);
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
  *(v18 + 16) = sub_1B62E9184;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_80;
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

    v13 = sub_1B62E9184;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62E3D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__mapItemCategory);
  v8 = *(v3 + OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62E91AC;
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

uint64_t (*sub_1B62E3ED4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62E3968();
  a1[1] = v3;
  return sub_1B62E3F1C;
}

uint64_t sub_1B62E405C@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
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
  *(v26 + 16) = sub_1B62E91D0;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_98;
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

uint64_t sub_1B62E465C(uint64_t a1)
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
  v12 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
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
    *(v15 + 16) = sub_1B62E91DC;
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

uint64_t sub_1B62E493C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B628C510(a1, &v10 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v8 = *a2;
  return sub_1B62E465C(v7);
}

void sub_1B62E49E8(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BE994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  v26[0] = 0;
  v14 = [a1 existingObjectWithID:a2 error:v26];
  v15 = v26[0];
  if (v14)
  {
    v16 = v14;
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 mapItemLastRefreshed]) != 0)
    {
      v20 = v19;
      sub_1B63BE974();

      v21 = *(v7 + 32);
      v21(v13, v11, v6);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v21(a3, v13, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v22 = v26[0];
    v23 = sub_1B63BE824();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1B62E4C18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedFavoriteItem();
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

void (*sub_1B62E4D84(void *a1))(uint64_t *a1, char a2)
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
  sub_1B62E405C(v4);
  return sub_1B62E4E40;
}

void sub_1B62E4E40(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1B628C510(a1[2], v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B62E465C(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B62E465C(a1[2]);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1B62E4EF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemName);
  v4 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemName + 8);
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
  *(v18 + 16) = sub_1B62E9268;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_115;
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

    v13 = sub_1B62E9268;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62E5298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__mapItemName);
  v8 = *(v3 + OBJC_IVAR___MSFavoriteItem__mapItemName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62E9290;
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

uint64_t (*sub_1B62E5460(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62E4EF4();
  a1[1] = v3;
  return sub_1B62E54A8;
}

uint64_t sub_1B62E5504()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__muid);
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
  *(v19 + 16) = sub_1B62E92B4;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_133;
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
    v14 = sub_1B62E92B4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62E58C4(void *a1)
{
  sub_1B62E92DC(a1);
}

void sub_1B62E58FC(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedFavoriteItem();
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

id sub_1B62E5A10(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62E5A80(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62E5504();
  return sub_1B62E5AC8;
}

void sub_1B62E5AE0(id *a1, char a2, void (*a3)(id))
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

id sub_1B62E5B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__originatingAddressString);
  v8 = *(v3 + OBJC_IVAR___MSFavoriteItem__originatingAddressString + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62E94C4;
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

uint64_t (*sub_1B62E5D40(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B629700C();
  a1[1] = v3;
  return sub_1B62E5D88;
}

uint64_t sub_1B62E5E10()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSFavoriteItem__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62E5EBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSFavoriteItem__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E94E8;
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

id sub_1B62E6068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B62E60CC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62E6150;
}

void sub_1B62E618C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedFavoriteItem();
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

void sub_1B62E62B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
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

uint64_t (*sub_1B62E6374(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6295E78();
  a1[1] = v3;
  return sub_1B62E63BC;
}

id (*sub_1B62E6434(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__source);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E64B8;
}

id (*sub_1B62E6534(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E65B8;
}

id sub_1B62E664C(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSFavoriteItem__version) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E9584;
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

id sub_1B62E67F8(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62E6868(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__version);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E68EC;
}

void sub_1B62E69B4(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62E6B74(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62E6A2C(void *a1, uint64_t a2, uint64_t *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v20];
  v5 = v20[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItem]) != 0 && (v10 = v9, v11 = objc_msgSend(v9, sel_mapItemStorage), v10, v11))
    {
      v12 = sub_1B63BE924();
      v14 = v13;

      v15 = *a3;
      v16 = a3[1];
      *a3 = v12;
      a3[1] = v14;
      sub_1B6284F64(v15, v16);
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

uint64_t sub_1B62E6B74(uint64_t a1, void *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v92 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  sub_1B63BE984();
  v95 = a1;
  v96 = v11;
  if (a2)
  {
    v92 = v10;
    v93 = a2;
    v16 = v15;
    v17 = a2;
    [v17 coordinate];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v20 = *&a3[OBJC_IVAR___MSFavoriteItem__latitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__latitude] = v19;

    [v17 coordinate];
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v23 = *&a3[OBJC_IVAR___MSFavoriteItem__longitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__longitude] = v22;

    v24 = [v17 _muid];
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v26 = *&a3[OBJC_IVAR___MSFavoriteItem__muid];
    *&a3[OBJC_IVAR___MSFavoriteItem__muid] = v25;

    v27 = [v17 addressObject];
    if (v27 && (v28 = v27, v29 = [v27 fullAddressWithMultiline_], v28, v29))
    {
      v30 = sub_1B63BEBD4();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
    v34 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8];
    *v33 = v30;
    v33[1] = v32;

    v35 = [v17 name];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1B63BEBD4();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v54 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemName];
    v55 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemName + 8];
    *v54 = v37;
    v54[1] = v39;

    v56 = v17;
    v57 = sub_1B6347B3C(v56);
    v59 = v58;

    v60 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
    v61 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8];
    *v60 = v57;
    *(v60 + 1) = v59;

    v62 = [v56 data];
    if (v62)
    {
      v63 = v62;
      v64 = sub_1B63BE924();
      v66 = v65;

      v67 = v56;
    }

    else
    {
      v67 = v56;

      v64 = 0;
      v66 = 0xF000000000000000;
    }

    v68 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage];
    v69 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage];
    v70 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage + 8];
    *v68 = v64;
    v68[1] = v66;
    sub_1B6284F64(v69, v70);
    v11 = v96;
    v52 = *(v96 + 16);
    v71 = v9;
    v72 = v9;
    v73 = v16;
    v74 = v16;
    v10 = v92;
    v52(v72, v74, v92);
    (*(v11 + 56))(v71, 0, 1, v10);
    v75 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
    swift_beginAccess();
    v76 = &a3[v75];
    v15 = v73;
    sub_1B6282DFC(v71, v76, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    a2 = v93;
    v53 = v67;
  }

  else
  {
    v40 = *&a3[OBJC_IVAR___MSFavoriteItem__latitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__latitude] = 0;

    v41 = *&a3[OBJC_IVAR___MSFavoriteItem__longitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__longitude] = 0;

    v42 = *&a3[OBJC_IVAR___MSFavoriteItem__muid];
    *&a3[OBJC_IVAR___MSFavoriteItem__muid] = 0;

    v43 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
    v44 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8];
    *v43 = 0;
    *(v43 + 1) = 0;

    v45 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemName];
    v46 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemName + 8];
    *v45 = 0;
    *(v45 + 1) = 0;

    v47 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
    v48 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8];
    *v47 = 0;
    *(v47 + 1) = 0;

    v49 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage];
    v50 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v49, v50);
    (*(v11 + 56))(v9, 1, 1, v10);
    v51 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v9, &a3[v51], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v52 = *(v11 + 16);
    v53 = 0;
  }

  v77 = v94;
  v52(v94, v15, v10);
  v78 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v79 = (v12 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  *(v80 + 16) = a2;
  (*(v11 + 32))(v80 + v78, v77, v10);
  *(v80 + v79) = a3;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v81 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v82 = v53;
  v83 = a3;
  if (sub_1B63BEF24())
  {
    v84 = swift_allocObject();
    *(v84 + 16) = sub_1B62EA024;
    *(v84 + 24) = v80;
    v85 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v86 = *&v83[v85];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v83[v85] = v86;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v86 = sub_1B629A8E8(0, v86[2] + 1, 1, v86);
      *&v83[v85] = v86;
    }

    v89 = v86[2];
    v88 = v86[3];
    if (v89 >= v88 >> 1)
    {
      v86 = sub_1B629A8E8((v88 > 1), v89 + 1, 1, v86);
    }

    v86[2] = v89 + 1;
    v90 = &v86[2 * v89];
    v90[4] = sub_1B62B9488;
    v90[5] = v84;
    *&v83[v85] = v86;
    swift_endAccess();
  }

  return (*(v96 + 8))(v15, v10);
}

void sub_1B62E7264(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (!a3)
  {
    v47 = a2;
    v42 = [v6 mapItem];
    if (v42)
    {
      v43 = v42;
      [v42 setMapItemStorage_];
    }

    [v6 setLatitude_];
    [v6 setLongitude_];
    [v6 setMuid_];
    v44 = sub_1B63BE954();
    [v6 setModificationTime_];

    [v6 setMapItemAddress_];
    [v6 setMapItemName_];
    [v6 setMapItemCategory_];
    [v6 setMapItemLastRefreshed_];
    goto LABEL_24;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  v47 = a2;
  v8 = a3;
  v9 = [ObjCClassFromObject strippedMapItemWith_];
  v10 = [v6 managedObjectContext];
  if (v10)
  {
    v11 = v10;
    [v9 coordinate];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v6 setLatitude_];

    [v9 coordinate];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v6 setLongitude_];

    v16 = [v9 _muid];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v6 setMuid_];

    v18 = [v9 addressObject];
    if (!v18 || (v19 = v18, v20 = [v18 fullAddressWithMultiline_], v19, !v20))
    {
      v20 = 0;
    }

    [v6 setMapItemAddress_];

    v21 = [v9 name];
    [v6 setMapItemName_];

    v22 = v9;
    sub_1B6347B3C(v22);

    v23 = sub_1B63BEBC4();

    [v6 setMapItemCategory_];

    v24 = sub_1B63BE954();
    [v6 setMapItemLastRefreshed_];

    v25 = [v6 mapItem];
    if (!v25)
    {
      type metadata accessor for MapsSyncManagedMixinMapItem();
      v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v6 setMapItem_];

      v27 = [v6 mapItem];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B63BE954();
        [v28 setCreateTime_];
      }

      v30 = [v6 mapItem];
      if (!v30)
      {
        goto LABEL_13;
      }

      v31 = v30;
      v32 = sub_1B63BE954();
      [v31 setModificationTime_];

      v25 = v32;
    }

LABEL_13:
    v33 = [v6 mapItem];
    if (v33)
    {
      v34 = v33;
      [v22 coordinate];
      [v34 setLatitude_];
      [v22 coordinate];
      [v34 setLongitude_];
      v36 = [v22 data];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1B63BE924();
        v40 = v39;

        v41 = sub_1B63BE904();
        sub_1B628BAC0(v38, v40);
      }

      else
      {
        v41 = 0;
      }

      [v34 setMapItemStorage_];

      v46 = sub_1B63BE954();
      [v34 setModificationTime_];
    }

LABEL_24:
    v45 = v47;
    goto LABEL_25;
  }

  v45 = v9;
LABEL_25:
}

void (*sub_1B62E780C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6296250();
  return sub_1B62E7854;
}

void sub_1B62E7854(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62E6B74(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62E6B74(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

id sub_1B62E7924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  v8 = *(v3 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B62B2148(0, v8[2] + 1, 1, v8);
    *(v3 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B62B2148((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  *(v12 + 32) = 0;
  v12[5] = a1;
  v12[6] = a2;
  *(v3 + v7) = v8;
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);

  if (sub_1B63BEF24())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B62E95B4;
    *(v14 + 24) = v13;
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v16 = *(v3 + v15);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v15) = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
      *(v3 + v15) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1B62B9488;
    v20[5] = v14;
    *(v3 + v15) = v16;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B62E7B80(uint64_t a1, void *a2)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v10 = a2;
    v5 = [v10 managedObjectContext];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for MapsSyncManagedContactHandle();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v8 = sub_1B63BEBC4();
      [v7 setHandle_];

      [v4 addContactHandlesObject_];
      v9 = v7;
    }

    else
    {
      v9 = v10;
    }
  }
}

id sub_1B62E7CB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  v8 = *(v3 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B62B2148(0, v8[2] + 1, 1, v8);
    *(v3 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B62B2148((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  *(v12 + 32) = 1;
  v12[5] = a1;
  v12[6] = a2;
  *(v3 + v7) = v8;
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);

  if (sub_1B63BEF24())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B62E95BC;
    *(v14 + 24) = v13;
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v16 = *(v3 + v15);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v15) = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
      *(v3 + v15) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1B62B9488;
    v20[5] = v14;
    *(v3 + v15) = v16;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B62E7F18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v20 = a2;
  v9 = [v20 managedObjectContext];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MapsSyncManagedContactHandle();
    v11 = [swift_getObjCClassFromMetadata() fetchRequest];
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B63C3D50;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1B6281318();
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;

    v13 = sub_1B63BED94();
    [v11 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
    v14 = sub_1B63BEEA4();
    v15 = sub_1B63A2E3C(v14);

    if (!v15)
    {
      goto LABEL_16;
    }

    if (v15 >> 62)
    {
      v16 = sub_1B63BF044();
      if (v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_8:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        v17 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1B8C92830](v17, v15);
          }

          else
          {
            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          ++v17;
          [v8 removeContactHandlesObject_];
          [v10 deleteObject_];
        }

        while (v16 != v17);
      }
    }

LABEL_16:
  }
}

uint64_t sub_1B62E81C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B63BEBD4();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1B62E8230()
{
  v1 = *(v0 + OBJC_IVAR___MSFavoriteItem__customName + 8);

  v2 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8);

  v3 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);
  v4 = *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemName + 8);

  v5 = *(v0 + OBJC_IVAR___MSFavoriteItem__originatingAddressString + 8);

  v6 = *(v0 + OBJC_IVAR___MSFavoriteItem__shortcutIdentifier + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSFavoriteItem__mapItemStorage), *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemStorage + 8));
  v7 = *(v0 + OBJC_IVAR___MSFavoriteItem__handleChanges);
}

id FavoriteItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoriteItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B62E8374(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1B62E83F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1B62E84B4(void *result, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_1B63BF004();
  a5(0);
  sub_1B62EA140(a6, a7);
  result = sub_1B63BED74();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_1B63BF074())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_1B62E8724(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}