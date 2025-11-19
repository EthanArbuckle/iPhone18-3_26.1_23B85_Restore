void sub_18BB39A48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_18BB3C1D0(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_18BB3C1D0(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_18BB39B24(double a1)
{
  v3 = *(*v1 + 1360);
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    return sub_18B8657E0();
  }

  return result;
}

uint64_t sub_18BB39B8C(double a1)
{
  v3 = *(*v1 + 1360);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_18BB39B24(v4);
}

void (*sub_18BB39BF0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(*v1 + 1360);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_18BB39C90;
}

uint64_t sub_18BB39CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 1368);
  swift_beginAccess();
  sub_18B8103B0();
  type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_18BB39DAC()
{
  v1 = *v0;
  result = (*(*v0 + 456))();
  if (result)
  {
    v3 = result;
    v4 = sub_18B812A74();

    if (v4)
    {
      v5 = *(v1 + 1320);
      swift_getExtendedExistentialTypeMetadata();
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BB39EE0(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[165];
  v6 = v4[166];
  v7 = v4[167];
  v8 = v4[168];
  v9 = sub_18B8103B0();
  *&v93 = v5;
  *(&v93 + 1) = v6;
  *&v94 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v94 + 1) = v7;
  *v95 = v8;
  *&v95[8] = v9;
  v74 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v86 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v69 - v10;
  *&v93 = v5;
  *(&v93 + 1) = v6;
  v83 = v7;
  v84 = v6;
  *&v94 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v94 + 1) = v7;
  v81 = v8;
  *v95 = v8;
  *&v95[8] = v9;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  v17 = v5;
  v85 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  v21 = v4[172];
  result = swift_beginAccess();
  v87 = v2;
  if (*(v2 + v21) != a1)
  {
    result = (*(*v87 + 432))(result);
    if (result)
    {
      v24 = v23;
      v82 = v9;
      v25 = result;
      ObjectType = swift_getObjectType();
      v27 = *(v24 + 16);
      v69 = v25;
      [v27(ObjectType v24)];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      v102 = sub_18BC20DE8();
      sub_18B810930(&v93);
      v77 = v93;
      v36 = *v95;
      v37 = *&v95[8];
      sub_18BC1E1A8();

      if (*(v37 + 16))
      {
        v38 = 0;
        *&v77 = v12 + 8;
        *(&v77 + 1) = v85 + 32;
        v70 = (v12 + 16);
        v71 = (v86 + 8);
        v79 = v36;
        v80 = v20;
        v78 = v37;
        v75 = v11;
        v76 = v16;
        while (1)
        {
          result = sub_18BC21C08();
          if (__OFADD__(v38, 1))
          {
            break;
          }

          v85 = v38;
          v86 = v38 + 1;
          (**(&v77 + 1))(v16, v20, v17);
          swift_storeEnumTagMultiPayload();
          sub_18B810930(&v93);
          v90 = v93;
          v91 = v94;
          v92[0] = *v95;
          v96 = v17;
          v97 = v84;
          v98 = &type metadata for SFFluidTabOverviewSupplementary;
          v99 = v83;
          v40 = v81;
          v100 = v81;
          v101 = v82;
          v41 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
          v42 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v16, v41);

          *v95 = 0;
          v93 = 0u;
          v94 = 0u;
          v43 = sub_18B85CEA8(&v93, v42);

          sub_18B833D9C(&v93);
          if (v43)
          {
            sub_18B81D198(&v90);
            v89 = 0;
            memset(v88, 0, sizeof(v88));
            v96 = v17;
            v97 = v84;
            v98 = &type metadata for SFFluidTabOverviewSupplementary;
            v99 = v83;
            v100 = v40;
            v101 = v82;
            v44 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
            v45 = v73;
            v16 = v76;
            SFFluidCollectionView.LayoutSnapshot.layoutAttributesForSupplementary(_:reference:)(v88, v76, v44, v73);
            sub_18B833D9C(v88);
            v93 = v90;
            v94 = v91;
            *v95 = v92[0];
            *&v95[9] = *(v92 + 9);
            (*(*(v44 - 1) + 8))(&v93, v44);
            v46 = v74;
            v47 = SFFluidCollectionView.LayoutAttributes.frame.getter(v74);
            v49 = v48;
            v51 = v50;
            v53 = v52;
            (*v71)(v45, v46);
            v103.origin.x = v47;
            v103.origin.y = v49;
            v103.size.width = v51;
            v103.size.height = v53;
            v106.origin.x = v29;
            v106.origin.y = v31;
            v106.size.width = v33;
            v106.size.height = v35;
            v54 = CGRectIntersectsRect(v103, v106);
            v55 = v75;
            if (v54)
            {
              (*v70)(v72, v16, v75);
              sub_18BC20E78();
              sub_18BC20E38();
            }

            v104.origin.x = v47;
            v104.origin.y = v49;
            v104.size.width = v51;
            v104.size.height = v53;
            MaxY = CGRectGetMaxY(v104);
            v105.origin.x = v29;
            v105.origin.y = v31;
            v105.size.width = v33;
            v105.size.height = v35;
            v57 = CGRectGetMaxY(v105);
            (*v77)(v16, v55);
            v20 = v80;
            v39 = v78;
            if (v57 <= MaxY)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v16 = v76;
            (*v77)(v76, v75);
            v20 = v80;
            v39 = v78;
          }

          v38 = v85 + 1;
          if (v86 == *(v39 + 16))
          {
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_13:

        v58 = v81;
        v59 = v102;
        *&v93 = v102;
        sub_18BC20E78();
        swift_getWitnessTable();
        if (sub_18BC21198())
        {

          return swift_unknownObjectRelease();
        }

        else
        {
          v60 = v17;
          v62 = v83;
          v61 = v84;
          SFFluidCollectionView.LayoutInvalidationContext.init()(&v90);
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9D99E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18BC3E410;
          *(inited + 48) = 0u;
          *(inited + 64) = 0;
          *(inited + 32) = 0u;
          v64 = inited + 32;
          v65 = v58;
          v66 = v62;
          v67 = sub_18BA2A6A4(inited);
          swift_setDeallocating();
          sub_18B833D9C(v64);
          *&v93 = v60;
          *(&v93 + 1) = v61;
          *&v94 = &type metadata for SFFluidTabOverviewSupplementary;
          *(&v94 + 1) = v66;
          *v95 = v65;
          *&v95[8] = v82;
          v68 = type metadata accessor for SFFluidCollectionView.LayoutInvalidationContext();
          SFFluidCollectionView.LayoutInvalidationContext.invalidateSupplementaries(_:for:)(v67, v59, v68);

          *&v93 = v90;
          WORD4(v93) = WORD4(v90);
          BYTE10(v93) = BYTE10(v90);
          sub_18B82F6F4(&v93);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_18BB3A76C(double a1)
{
  v3 = *(*v1 + 1376);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_18BB39EE0(v4);
}

void (*sub_18BB3A7D0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(*v1 + 1376);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_18BB3A870;
}

void sub_18BB3A888(uint64_t a1, uint64_t a2, void (*a3)(double))
{
  v3 = *a1;
  a3(*(*a1 + 24));

  free(v3);
}

uint64_t sub_18BB3A8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v85 = a1;
  v82 = a2;
  v4 = *v2;
  v5 = v4[166];
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v64 - v6;
  v7 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v83 = &v64 - v8;
  v84 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = v4[165];
  v17 = v4[167];
  v18 = v4[168];
  v19 = sub_18B8103B0();
  v78 = v16;
  *&v88 = v16;
  *(&v88 + 1) = v5;
  *&v89 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v89 + 1) = v17;
  v79 = v17;
  v80 = v18;
  *v90 = v18;
  *&v90[8] = v19;
  v77 = v19;
  v20 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v21 = sub_18BC21848();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - v23;
  v25 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  sub_18BB39CA8(v24);
  if ((*(v25 + 48))(v24, 1, v20) != 1)
  {
    v67 = v25;
    v32 = *(v25 + 32);
    v69 = v28;
    v70 = v20;
    v66 = v25 + 32;
    v65 = v32;
    v32(v28, v24, v20);
    v33 = v76;
    (*(v76 + 16))(v15, v85, v5);
    v34 = (*(v33 + 56))(v15, 0, 1, v5);
    v35 = v15;
    v36 = v5;
    v37 = v81;
    (*(*v3 + 1384))(v34);
    v38 = *(TupleTypeMetadata2 + 48);
    v39 = v74;
    v40 = *(v74 + 16);
    v41 = v83;
    v68 = v35;
    v42 = v35;
    v43 = v84;
    (v40)(v83, v42, v84);
    v44 = v37;
    v5 = v36;
    (v40)(&v41[v38], v44, v43);
    v45 = *(v33 + 48);
    if (v45(v41, 1, v36) == 1)
    {
      v46 = *(v39 + 8);
      v47 = v84;
      v46(v81, v84);
      v46(v68, v47);
      v48 = v83;
      v49 = v45(&v83[v38], 1, v36) == 1;
      v31 = v82;
      v50 = v48;
      if (!v49)
      {
        goto LABEL_9;
      }

      v46(v48, v84);
      v51 = v69;
    }

    else
    {
      v52 = v72;
      v53 = v83;
      v40();
      if (v45(&v53[v38], 1, v5) == 1)
      {
        v54 = *(v39 + 8);
        v55 = v84;
        v54(v81, v84);
        v54(v68, v55);
        (*(v76 + 8))(v52, v5);
        v31 = v82;
        v50 = v83;
LABEL_9:
        (*(v73 + 8))(v50, TupleTypeMetadata2);
        v29 = v85;
        v30 = v80;
        v51 = v69;
LABEL_10:
        (*(v67 + 8))(v51, v70);
        goto LABEL_11;
      }

      v58 = v76;
      v59 = v83;
      v60 = v71;
      (*(v76 + 32))(v71, &v83[v38], v5);
      v30 = v80;
      LODWORD(TupleTypeMetadata2) = sub_18BC20AE8();
      v61 = *(v58 + 8);
      v61(v60, v5);
      v62 = *(v39 + 8);
      v63 = v84;
      v62(v81, v84);
      v62(v68, v63);
      v61(v52, v5);
      v62(v59, v63);
      v31 = v82;
      v29 = v85;
      v51 = v69;
      if ((TupleTypeMetadata2 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return v65(v31, v51, v70);
  }

  (*(v22 + 8))(v24, v21);
  v29 = v85;
  v30 = v80;
  v31 = v82;
LABEL_11:
  sub_18B81D198(v86);
  *&v88 = v78;
  *(&v88 + 1) = v5;
  *&v89 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v89 + 1) = v79;
  *v90 = v30;
  *&v90[8] = v77;
  v56 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v29, v56, v31);
  v88 = v86[0];
  v89 = v86[1];
  *v90 = v87[0];
  *&v90[9] = *(v87 + 9);
  return (*(*(v56 - 1) + 8))(&v88, v56);
}

uint64_t sub_18BB3B168(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 1320);
  v68 = *(*&v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v61 - v6;
  v8 = v7[166];
  v9 = v7[167];
  v10 = v7[168];
  *&v11 = COERCE_DOUBLE(sub_18B8103B0());
  v73 = v5;
  v89.a = v5;
  v89.b = v8;
  *&v89.c = &type metadata for SFFluidTabOverviewSupplementary;
  v89.d = v9;
  v72 = v9;
  v71 = v10;
  v89.tx = v10;
  *&v89.ty = v11;
  v70 = *&v11;
  v12 = type metadata accessor for SFFluidCollectionView.Element();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v16 = *(*&v8 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - v19;
  result = (*(v4 + 432))(v18);
  if (result)
  {
    v23 = v22;
    v69 = v8;
    v24 = result;
    v25 = (*(*v2 + 456))();
    if (v25)
    {
      v26 = v25;
      (*(v13 + 16))(v15, a1, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v65 = v26;
        v63 = v16;
        v27 = *(v16 + 32);
        v66 = v20;
        v28 = v69;
        v27(v20, v15, *&v69);
        ObjectType = swift_getObjectType();
        v30 = *(v23 + 16);
        v64 = v24;
        [v30(ObjectType v23)];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        swift_unknownObjectRelease();
        v90.origin.x = v32;
        v90.origin.y = v34;
        v90.size.width = v36;
        v90.size.height = v38;
        MidX = CGRectGetMidX(v90);
        v91.origin.x = v32;
        v91.origin.y = v34;
        v91.size.width = v36;
        v91.size.height = v38;
        MidY = CGRectGetMidY(v91);
        v89.a = v73;
        v89.b = v28;
        v41 = v72;
        *&v89.c = &type metadata for SFFluidTabOverviewSupplementary;
        v89.d = v72;
        v42 = v71;
        v43 = v70;
        v89.tx = v71;
        v89.ty = v70;
        v44 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
        SFFluidCollectionView.LayoutAttributes.center.setter(v44, MidX, MidY);
        v92.origin.x = v32;
        v92.origin.y = v34;
        v92.size.width = v36;
        v92.size.height = v38;
        Width = CGRectGetWidth(v92);
        v46 = v44[19];
        v47 = Width / *(a1 + v46);
        CGAffineTransformMakeScale(&v89, v47, v47);
        SFFluidCollectionView.LayoutAttributes.transform.setter(&v89, v44);
        SFFluidCollectionView.LayoutAttributes.size.setter(v44, *(a1 + v46), v38 * (*(a1 + v46) / v36));
        *(a1 + v44[21]) = 0x4000000000000000;
        v48 = v44[22];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = *(a1 + v48);
        sub_18B84E858(0xD000000000000014, 0x800000018BC65620, isUniquelyReferenced_nonNull_native, 1.0);
        *(a1 + v48) = v85[0];
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = *(a1 + v48);
        sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, v50, 0.0);
        *(a1 + v48) = v85[0];
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = *(a1 + v48);
        sub_18B84E858(0xD000000000000012, 0x800000018BC65640, v51, 0.0);
        *(a1 + v48) = v85[0];
        if (sub_18BB39DAC())
        {
          v53 = v43;
          v62 = a1;
          v54 = v52;
          v61 = swift_getObjectType();
          sub_18B810930(v85);
          v80 = v85[0];
          v81 = v85[1];
          v82 = v86;
          v83 = v87;
          v84 = v88;
          v55 = v73;
          v74 = v73;
          v75 = v69;
          v76 = &type metadata for SFFluidTabOverviewSupplementary;
          v77 = v41;
          v78 = v42;
          v79 = v53;
          type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
          v56 = v67;
          SFFluidCollectionView.DataSource.Snapshot.section(for:)();
          v72 = v83;

          v57 = v65;
          v58 = (*(v54 + 16))(v65, v2, v56, v61, v54);
          (*(v68 + 8))(v56, COERCE_CGFLOAT(*&v55));
          v59 = v62;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = *(v59 + v48);
          sub_18B84E858(0xD000000000000018, 0x800000018BC655F0, v60, v58 / v47);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          result = (*(v63 + 8))(v66, COERCE_DOUBLE(*&v69));
          *(v59 + v48) = v85[0];
        }

        else
        {
          swift_unknownObjectRelease();

          return (*(v63 + 8))(v66, COERCE_DOUBLE(*&v69));
        }
      }

      else
      {
        swift_unknownObjectRelease();

        return (*(v13 + 8))(v15, v12);
      }
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_18BB3B934(uint64_t a1)
{
  v3 = *v1;
  v4 = (*(*v1 + 456))();
  if (v4)
  {
    v5 = v4;
    v6 = v3[165];
    v7 = v3[166];
    v8 = v3[167];
    v9 = v3[168];
    v10 = sub_18B8103B0();
    static SFFluidTabOverviewLayoutSupport.applyTransform<A, B, C>(to:forZPosition:in:)(a1, v5, v6, v7, &type metadata for SFFluidTabOverviewSupplementary, v8, v9, v10, -150.0);
    v11 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
    *(a1 + *(v11 + 68)) = 0;
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 20.0;
    }

    v13 = *(v11 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + v13);
    sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native, v12);

    *(a1 + v13) = v15;
  }
}

uint64_t sub_18BB3BAAC(uint64_t a1)
{
  result = (*(*v1 + 432))();
  if (result)
  {
    v5 = v4;
    v6 = (*v1 + 1464);
    v7 = *v6;
    if ((*v6)() <= 0.0)
    {
      sub_18B8103B0();
      v23 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() + 92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(a1 + v23);
      v25 = 1.0;
    }

    else
    {
      ObjectType = swift_getObjectType();
      [(*(v5 + 16))(ObjectType v5)];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      v27.origin.x = v10;
      v27.origin.y = v12;
      v27.size.width = v14;
      v27.size.height = v16;
      MinY = CGRectGetMinY(v27);
      v18 = MinY + v7();
      sub_18B8103B0();
      v19 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
      v28.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v19);
      v20 = CGRectGetMinY(v28);
      v29.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v19);
      MaxY = CGRectGetMaxY(v29);
      v22 = 1.0 - _SFClampPercent(v18, v20, MaxY);
      v23 = *(v19 + 92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(a1 + v23);
      v25 = v22;
    }

    sub_18B84E858(0xD000000000000018, 0x800000018BC65660, isUniquelyReferenced_nonNull_native, v25);
    result = swift_unknownObjectRelease();
    *(a1 + v23) = v26;
  }

  return result;
}

uint64_t SFFluidCollectionView.TabOverviewZoomableGridLayout.init()()
{
  (*(*(*(*v0 + 1328) - 8) + 56))(v0 + *(*v0 + 1352), 1, 1, *(*v0 + 1328));
  *(v0 + *(*v0 + 1360)) = 0;
  v1 = *(*v0 + 1368);
  sub_18B8103B0();
  v2 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + *(*v0 + 1376)) = 0;
  return SFFluidCollectionView.TabOverviewGridLayout.init()();
}

uint64_t sub_18BB3BEC0()
{
  v1 = *(*v0 + 1352);
  v2 = sub_18BC21848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 1368);
  sub_18B8103B0();
  type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

uint64_t SFFluidCollectionView.TabOverviewZoomableGridLayout.deinit()
{
  v0 = SFFluidCollectionView.TabOverviewGridLayout.deinit();
  v1 = *(*v0 + 1352);
  v2 = sub_18BC21848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 1368);
  sub_18B8103B0();
  type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SFFluidCollectionView.TabOverviewZoomableGridLayout.__deallocating_deinit()
{
  SFFluidCollectionView.TabOverviewZoomableGridLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_18BB3C1D0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 1352);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  sub_18BB39468(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18BB3C51C()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = sub_18B7C34FC();
  [v4 setClipsToBounds_];

  v5 = *((*v2 & *v0) + 0x80);
  [*(v0 + v5) setDelegate_];
  [v0 addSubview_];
  v6 = *(v0 + *((*v2 & *v0) + 0xA0));
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = *((v3 & v1) + 0x50);
  v8[3] = *((v3 & v1) + 0x58);
  v8[4] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18BB3F104;
  *(v9 + 24) = v8;
  swift_beginAccess();
  v10 = *(v6 + 16);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_18B7C358C(0, v10[2] + 1, 1, v10);
    *(v6 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_18B7C358C((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  v14 = &v10[2 * v13];
  v14[4] = sub_18B7FCC4C;
  v14[5] = v9;
  *(v6 + 16) = v10;
  swift_endAccess();
}

id sub_18BB3C754(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18[-1] - v7;
  v9 = *(v1 + *((v4 & v3) + 0x60));
  v10 = sub_18BC1E1A8();
  v9(v10);

  [a1 contentOffset];
  v12 = v11;
  v14 = v13;
  sub_18B7F4870(v8);
  (*(*((v4 & v3) + 0x58) + 72))(v18, v5);
  result = (*(v6 + 8))(v8, v5);
  if (v12 != *&v18[4] || v14 != *&v18[5])
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_18BB3C8F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  sub_18B7F4870(&v9 - v6);
  (*(*((v3 & v2) + 0x58) + 48))(v4);
  return (*(v5 + 8))(v7, v4);
}

void *sub_18BB3CA4C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = sub_18B7C34FC();
    type metadata accessor for ScrollAnimator();
    swift_allocObject();
    v2 = sub_18B7E195C(v3);

    *(v0 + v1) = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

uint64_t sub_18BB3CB04(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  sub_18BB3F544(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_18BB3CB80(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  type metadata accessor for CollectionView.SizeTransitionInfo();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

double sub_18BB3CC78@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_18BB3CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_18BC21098();
  if ((result & 1) == 0)
  {
    v12 = sub_18B7F5A78();
    MEMORY[0x1EEE9AC00](v12);
    sub_18BC1E3F8();
    v11 = sub_18BC21068();
    sub_18BC113A8(v11, a1, a2, v9, v8, v13);

    sub_18B7F5044(a1, a2, v13, a4, 0);

    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return result;
}

uint64_t sub_18BB3CE3C()
{
  v0 = sub_18B7C34FC();
  [v0 stopScrollingAndZooming];

  v1 = sub_18BB3CA4C();
  type metadata accessor for Assertion();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  v1[5] = v2;

  [v1[6] contentOffset];
  v4 = v3;
  v6 = v5;
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v6;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18BA5AAC4;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B9D53AC;
  *(v10 + 24) = v9;
  v13[4] = sub_18B9D53B0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_18B7E3BF4;
  v13[3] = &block_descriptor_61_0;
  v11 = _Block_copy(v13);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_18BB3D060(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = *(v2 + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - v5;
  if (*(*(v1 + *((v8 & v7) + 0xA0)) + 24) >= 1)
  {
    sub_18B7F4870(v6);
    v9 = *(*(v2 + 88) + 56);
    v25 = *(v2 + 88);
    v10 = v9(v3);
    v13 = *(v4 + 8);
    v12 = v4 + 8;
    v11 = v13;
    v13(v6, v3);
    v21 = v10;
    v14 = *(v10 + 16);
    if (v14)
    {
      v22 = *(v25 + 128);
      v23 = v25 + 128;
      v15 = (v21 + 40);
      v24 = v11;
      do
      {
        v16 = v12;
        v17 = *(v15 - 1);
        v18 = *v15;
        sub_18BC1E3F8();
        sub_18B7F5A78();
        sub_18B7F4870(v6);
        v22(v17, v18, v3, v25);
        v12 = v16;
        v19 = v24;

        v19(v6, v3);
        sub_18BB936C4();

        v15 += 2;
        --v14;
      }

      while (v14);
    }
  }
}

uint64_t sub_18BB3D308(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  v12 = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  sub_18BB3CB80(&v12);
  sub_18B7F4870(v7);
  v8 = (*(*((v3 & v2) + 0x58) + 56))(v4);
  (*(v5 + 8))(v7, v4);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 40;
    do
    {
      sub_18BC1E3F8();
      sub_18B7F5A78();

      sub_18BB9379C();

      v10 += 16;
      --v9;
    }

    while (v9);
  }
}

void *sub_18BB3D4A0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = &v2[*((*MEMORY[0x1E69E7D40] & v4) + 0x60)];
  *v7 = CGRectMake;
  *(v7 + 1) = 0;
  v8 = *((v6 & v4) + 0x50);
  (*(*(v8 - 8) + 56))(&v2[*((*v5 & *v2) + 0x68)], 1, 1, v8);
  v9 = &v2[*((*v5 & *v2) + 0x70)];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = *((v6 & v4) + 0x58);
  *v9 = CGRectMake;
  *(v9 + 1) = v10;
  *&v2[*((*v5 & *v2) + 0x78)] = 0;
  *&v2[*((*v5 & *v2) + 0x80)] = 0;
  v11 = &v2[*((*v5 & *v2) + 0x88)];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *((*v5 & *v2) + 0x98);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for CollectionItemViewManager();
  swift_getTupleTypeMetadata2();
  v16 = sub_18BC20DE8();
  v17 = sub_18B7C2900();
  v18 = sub_18B7C29AC(v16, &type metadata for LayoutItemType, v15, v17);

  *&v2[v14] = v18;
  v19 = *((*v5 & *v2) + 0xA0);
  type metadata accessor for Assertion();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  *(v20 + 24) = 0;
  *&v2[v19] = v20;
  v21 = &v2[*((*v5 & *v2) + 0xA8)];
  *v21 = 1;
  v22 = type metadata accessor for CollectionView();
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0u;
  *(v21 + 7) = 0;
  v28.receiver = v2;
  v28.super_class = v22;
  v23 = objc_msgSendSuper2(&v28, sel_initWithCoder_, a1);
  v24 = v23;
  if (v23)
  {
    v25 = *((*v5 & *v23) + 0x200);
    v26 = v23;
    v25();
  }

  return v24;
}

void sub_18BB3D8C0(char a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong;
  if (a1)
  {
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1F0))(v4);
    sub_18BB3CB80(v4);
  }

  else
  {
    sub_18BB3D308(Strong);
  }
}

void sub_18BB3D968(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BB3C754(v4);
}

void sub_18BB3D9D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BB3F110();
}

void sub_18BB3DA30(void *a1, uint64_t a2, void *a3, double *a4)
{
  v6 = a3;
  v7 = a1;
  sub_18BB3F31C(a4);
}

uint64_t sub_18BB3DA9C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v15 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x58);
  v13 = (*(v15 + 56))(v4);
  v5 = *(v13 + 16);
  if (v5)
  {
    v14 = *(v15 + 128);
    v6 = (v13 + 40);
    do
    {
      v7 = a3;
      v8 = *(v6 - 1);
      v9 = *v6;
      sub_18BC1E3F8();
      v10 = v14(v8, v9, v4, v15);
      v11 = v8;
      a3 = v7;
      sub_18BB3CC88(v11, v9, v10, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

id sub_18BB3DBE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BB3DC58(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  sub_18B7F61D4(&a1[*((*v2 & *a1) + 0x88)]);
  v5 = *((*v2 & *a1) + 0x90);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v5], AssociatedTypeWitness);

  v7 = *((*v2 & *a1) + 0xA8);
  type metadata accessor for CollectionView.SizeTransitionInfo();
  v8 = sub_18BC21848();
  v9 = *(*(v8 - 8) + 8);

  return v9(&a1[v7], v8);
}

uint64_t sub_18BB3DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v85 = a5;
  v82 = a4;
  v14 = _s4ItemVMa_4();
  v84 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - v17;
  v81 = sub_18BC1EDD8();
  v94 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v88 = &v77 - v22;
  v102 = a7;
  v103 = a8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v101);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0Tm, a3, a7);
  v24 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v25 = *(a6 + v24);
  if (*(v25 + 16))
  {
    v89 = v20;
    sub_18BC1E3F8();
    v26 = sub_18B7C4104(a1, a2);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      sub_18BC1E1A8();

      v29 = __swift_project_boxed_opaque_existential_1Tm(v101, v102);
      MEMORY[0x1EEE9AC00](v29);
      (*(v31 + 16))(&v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v98);
      sub_18BC20CC8();
      v95 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
      swift_beginAccess();
      v96 = v28;
      swift_beginAccess();
      v86 = (v94 + 32);
      v87 = (v94 + 48);
      v83 = (v94 + 8);
      v32 = v81;
      v33 = v82;
      v35 = v88;
      v34 = v89;
      v80 = a6;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v98, AssociatedTypeWitness);
        sub_18BC21868();
        if ((*v87)(v35, 1, v32) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v98);
          return __swift_destroy_boxed_opaque_existential_1Tm(v101);
        }

        (*v86)(v34, v35, v32);
        v55 = *(v33 + v95);
        v56 = sub_18BC1EDE8();
        if ((v56 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v56 >= *(v55 + 16))
        {
          goto LABEL_25;
        }

        v94 = *(v84 + 80);
        sub_18B80EBD8(v55 + ((v94 + 32) & ~v94) + *(v84 + 72) * v56, v18, _s4ItemVMa_4);
        v57 = sub_18BC1EDE8();
        sub_18B9F0388(v57, v85, v104);
        v58 = v96;
        if (*(v96[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BB8B258(v18);
          v60 = v59;

          v58 = v96;
        }

        else
        {
          v60 = 0;
        }

        v110 = v104[0];
        v111 = v104[1];
        v112[0] = (v60 | v105) & 1;
        *&v112[1] = v106;
        *&v112[64] = *&v109[15];
        *&v112[49] = *v109;
        *&v112[33] = v108;
        *&v112[17] = v107;
        if (v106 & 1) != 0 || *(v58[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B258(v18), v62 = v61, , , v58 = v96, (v62) || (v63 = v58[15], v64 = v58[16], __swift_project_boxed_opaque_existential_1Tm(v58 + 12, v63), v65 = v96[2], sub_18BC1E1A8(), v65(v97, v18), v35 = v88, , v34 = v89, v66 = sub_18B814A2C(v97, v63, v64), __swift_destroy_boxed_opaque_existential_1Tm(v97), v58 = v96, (v66))
        {
          v67 = sub_18BC09958(v18, v33 + v95, v58);
          v93 = v68;
          v70 = v69;
          v71 = sub_18B7C2E68(v67);
          v72 = [v67 superview];
          if (!v72 || (v73 = v72, sub_18B7F4394(), v74 = v71, v75 = sub_18BC215C8(), v73, v74, (v75 & 1) == 0))
          {
            [v71 addSubview_];
          }

          v36 = v94;
          v37 = 0x8000000000000010;
          v90 = v70 & 1;
          if ((v70 & 1) == 0)
          {
            v37 = 0x8000000000000008;
          }

          v91 = v37;
          v38 = v18;
          v39 = v18;
          v40 = v78;
          sub_18B80EBD8(v38, v78, _s4ItemVMa_4);
          v41 = (v36 + 152) & ~v36;
          v42 = (v41 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
          v92 = v71;
          v43 = (v41 + v79 + 23) & 0xFFFFFFFFFFFFFFF8;
          v44 = swift_allocObject();
          v45 = v93;
          *(v44 + 16) = v67;
          *(v44 + 24) = v45;
          v46 = *&v112[48];
          *(v44 + 96) = *&v112[32];
          *(v44 + 112) = v46;
          *(v44 + 128) = *&v112[64];
          v47 = v111;
          *(v44 + 32) = v110;
          *(v44 + 48) = v47;
          v48 = *&v112[16];
          *(v44 + 64) = *v112;
          *(v44 + 80) = v48;
          *(v44 + 144) = v96;
          v49 = v40;
          v18 = v39;
          sub_18B80EC40(v49, v44 + v41, _s4ItemVMa_4);
          v50 = v44 + v42;
          v33 = v82;
          *v50 = v82;
          *(v50 + 8) = v90;
          v51 = v80;
          *(v44 + v43) = v80;
          sub_18BC1E1A8();
          v52 = v67;
          sub_18BC1E1A8();
          v53 = v51;
          v54 = v91;
          sub_18B80ECB4(sub_18BB3F5B4, v44, v91);

          sub_18B7EBAE8(v54);

          v32 = v81;
          v35 = v88;
          v34 = v89;
        }

        else
        {
          sub_18B7F4620(&v110);
          sub_18BBF2D58(v18);
        }

        sub_18B812EDC(v18, _s4ItemVMa_4);
        (*v83)(v34, v32);
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BB3E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v87 = a5;
  v15 = _s4ItemVMa_1();
  v86 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v79 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v92 = sub_18BC1EDD8();
  v20 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v90 = &v78 - v23;
  v105 = a7;
  v106 = a8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v104);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0Tm, a3, a7);
  v25 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v26 = *(a6 + v25);
  if (*(v26 + 16))
  {
    v97 = v20;
    sub_18BC1E3F8();
    v81 = a1;
    v27 = sub_18B7C4104(a1, a2);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      sub_18BC1E1A8();

      v30 = __swift_project_boxed_opaque_existential_1Tm(v104, v105);
      v99 = &v78;
      v31 = MEMORY[0x1EEE9AC00](v30);
      (*(v33 + 16))(&v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v101);
      sub_18BC20CC8();
      v98 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content;
      swift_beginAccess();
      v99 = v29;
      swift_beginAccess();
      v88 = (v97 + 32);
      v89 = (v97 + 48);
      v84 = a6;
      v85 = (v97 + 8);
      v35 = v91;
      v34 = v92;
      v82 = a2;
      v83 = a4;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v101, AssociatedTypeWitness);
        v55 = v90;
        sub_18BC21868();
        if ((*v89)(v55, 1, v34) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          return __swift_destroy_boxed_opaque_existential_1Tm(v104);
        }

        (*v88)(v35, v55, v34);
        v56 = *(a4 + v98);
        v57 = sub_18BC1EDE8();
        if ((v57 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v57 >= *(v56 + 16))
        {
          goto LABEL_25;
        }

        v97 = *(v86 + 80);
        sub_18B80EBD8(v56 + ((v97 + 32) & ~v97) + *(v86 + 72) * v57, v19, _s4ItemVMa_1);
        v58 = sub_18BC1EDE8();
        sub_18BAD4D08(v58, v87, v107);
        v59 = v99;
        if (*(v99[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BB8B5B0(v19);
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        v113 = v107[0];
        v114 = v107[1];
        v115[0] = (v61 | v108) & 1;
        *&v115[1] = v109;
        *&v115[64] = *&v112[15];
        *&v115[49] = *v112;
        *&v115[33] = v111;
        *&v115[17] = v110;
        if (v109 & 1) != 0 || *(v59[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B5B0(v19), v63 = v62, , , (v63) || (v64 = v59[15], v65 = v59[16], __swift_project_boxed_opaque_existential_1Tm(v59 + 12, v64), v66 = v99[2], sub_18BC1E1A8(), v66(v100, v19), v59 = v99, , v67 = sub_18B814A2C(v100, v64, v65), __swift_destroy_boxed_opaque_existential_1Tm(v100), (v67))
        {
          v68 = sub_18BC0A910(v19, a4 + v98, v59);
          v96 = v69;
          v71 = v70;
          v72 = (*((*MEMORY[0x1E69E7D40] & *a6) + 0x210))(v19, v81, a2);
          v73 = [v68 superview];
          if (!v73 || (v74 = v73, sub_18B7F4394(), v75 = v72, v76 = sub_18BC215C8(), v74, v75, (v76 & 1) == 0))
          {
            [v72 addSubview_];
          }

          v36 = v97;
          v37 = 0x8000000000000010;
          v93 = v71 & 1;
          if ((v71 & 1) == 0)
          {
            v37 = 0x8000000000000008;
          }

          v94 = v37;
          v38 = v19;
          v39 = v19;
          v40 = v79;
          sub_18B80EBD8(v38, v79, _s4ItemVMa_1);
          v41 = (v36 + 152) & ~v36;
          v95 = v72;
          v42 = (v41 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
          v43 = (v41 + v80 + 23) & 0xFFFFFFFFFFFFFFF8;
          v44 = swift_allocObject();
          v45 = v96;
          *(v44 + 16) = v68;
          *(v44 + 24) = v45;
          v46 = *&v115[48];
          *(v44 + 96) = *&v115[32];
          *(v44 + 112) = v46;
          *(v44 + 128) = *&v115[64];
          v47 = v114;
          *(v44 + 32) = v113;
          *(v44 + 48) = v47;
          v48 = *&v115[16];
          *(v44 + 64) = *v115;
          *(v44 + 80) = v48;
          *(v44 + 144) = v99;
          v49 = v40;
          v19 = v39;
          sub_18B80EC40(v49, v44 + v41, _s4ItemVMa_1);
          v50 = v44 + v42;
          a4 = v83;
          *v50 = v83;
          *(v50 + 8) = v93;
          v51 = v84;
          *(v44 + v43) = v84;
          a6 = v51;
          sub_18BC1E1A8();
          v52 = v68;
          sub_18BC1E1A8();
          v53 = a6;
          v54 = v94;
          sub_18B80ECB4(sub_18BB3F0D8, v44, v94);

          sub_18B7EBAE8(v54);

          a2 = v82;
        }

        else
        {
          sub_18B7F4620(&v113);
          sub_18BBF2FCC(v19);
        }

        sub_18B812EDC(v19, _s4ItemVMa_1);
        v35 = v91;
        v34 = v92;
        (*v85)(v91, v92);
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BB3F110()
{
  v0 = sub_18BB3CA4C();
  type metadata accessor for Assertion();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  v0[5] = v1;

  [v0[6] contentOffset];
  v3 = v2;
  v5 = v4;
  v6 = swift_allocObject();
  v6[2] = v0;
  v6[3] = v3;
  v6[4] = v5;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18B840544;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18B7D1EC4;
  *(v9 + 24) = v8;
  v12[4] = sub_18B7D1E94;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_18B7E3BF4;
  v12[3] = &block_descriptor_48;
  v10 = _Block_copy(v12);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BB3F31C(double *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  sub_18B7F4870(&v13 - v7);
  v9 = (*(*(*((v4 & v3) + 0x58) + 8) + 24))(v5, *a1, a1[1]);
  v11 = v10;
  result = (*(v6 + 8))(v8, v5);
  *a1 = v9;
  *(a1 + 1) = v11;
  return result;
}

uint64_t sub_18BB3F450()
{
  v1 = *(*(*(v0 + 16) - 8) + 80);
  v2 = (v1 + 32) & ~v1;
  v3 = (*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_18BB3DA9C(v0 + v2, *(v0 + v3), v0 + ((v1 + v3 + 8) & ~v1));
}

BOOL sub_18BB3F504()
{
  v0 = sub_18BB93608();
  v1 = v0;
  if (v0)
  {
  }

  return v1 == 0;
}

uint64_t sub_18BB3F544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D53A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFFluidCollectionView.Update.previousFluidCollectionViewLayout.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SFFluidCollectionView.Update.previousLayoutSnapshot.getter@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[3];
  v10[0] = v2[2];
  v10[1] = v3;
  v11[0] = v2[4];
  v4 = v11[0];
  *(v11 + 9) = *(v2 + 73);
  v5 = *(v11 + 9);
  *a2 = v10[0];
  a2[1] = v3;
  a2[2] = v4;
  *(a2 + 41) = v5;
  v6 = a1[2];
  v9[0] = a1[1];
  v9[1] = v6;
  v9[2] = a1[3];
  v7 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

double SFFluidCollectionView.Update.previousLayoutSnapshot.setter(__int128 *a1)
{
  v5 = *a1;
  v6 = a1[1];
  *v7 = a1[2];
  *&v7[9] = *(a1 + 41);
  v2 = v1[3];
  v8[0] = v1[2];
  v8[1] = v2;
  v9[0] = v1[4];
  *(v9 + 9) = *(v1 + 73);
  v3 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  (*(*(v3 - 8) + 8))(v8, v3);
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = *v7;
  result = *&v7[9];
  *(v1 + 73) = *&v7[9];
  return result;
}

void SFFluidCollectionView.Update.previousBounds.setter(double a1, double a2, double a3, double a4)
{
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = a4;
}

uint64_t SFFluidCollectionView.Update.transaction.getter@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[17];
  v4 = v2[15];
  v28 = v2[16];
  v29 = v3;
  v5 = v2[17];
  v30[0] = v2[18];
  v6 = v2[13];
  v8 = v2[11];
  v24 = v2[12];
  v7 = v24;
  v25 = v6;
  v9 = v2[13];
  v10 = v2[15];
  v26 = v2[14];
  v11 = v26;
  v27 = v10;
  v12 = v2[9];
  v21[0] = v2[8];
  v21[1] = v12;
  v13 = v2[11];
  v15 = v2[8];
  v14 = v2[9];
  v22 = v2[10];
  v16 = v22;
  v23 = v13;
  *(v30 + 9) = *(v2 + 297);
  a2[8] = v28;
  a2[9] = v5;
  a2[10] = v2[18];
  *(a2 + 169) = *(v2 + 297);
  a2[4] = v7;
  a2[5] = v9;
  a2[6] = v11;
  a2[7] = v4;
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v8;
  v17 = a1[2];
  v20[0] = a1[1];
  v20[1] = v17;
  v20[2] = a1[3];
  v18 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction();
  return (*(*(v18 - 8) + 16))(v20, v21, v18);
}

double SFFluidCollectionView.Update.transaction.setter(__int128 *a1)
{
  v17 = a1[8];
  v18 = a1[9];
  *v19 = a1[10];
  *&v19[9] = *(a1 + 169);
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v2 = v1[17];
  v20[8] = v1[16];
  v20[9] = v2;
  v21[0] = v1[18];
  *(v21 + 9) = *(v1 + 297);
  v3 = v1[13];
  v20[4] = v1[12];
  v20[5] = v3;
  v4 = v1[15];
  v20[6] = v1[14];
  v20[7] = v4;
  v5 = v1[9];
  v20[0] = v1[8];
  v20[1] = v5;
  v6 = v1[11];
  v20[2] = v1[10];
  v20[3] = v6;
  v7 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction();
  (*(*(v7 - 8) + 8))(v20, v7);
  v1[16] = v17;
  v1[17] = v18;
  v1[18] = *v19;
  *(v1 + 297) = *&v19[9];
  v1[12] = v13;
  v1[13] = v14;
  v1[14] = v15;
  v1[15] = v16;
  v1[8] = v9;
  v1[9] = v10;
  result = *&v11;
  v1[10] = v11;
  v1[11] = v12;
  return result;
}

uint64_t sub_18BB3FA48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18BB3FA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_18BB3FB20@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v11 = a5[1];
  *(a7 + 32) = *a5;
  *(a7 + 48) = v11;
  *(a7 + 64) = a5[2];
  *(a7 + 73) = *(a5 + 41);
  *(a7 + 96) = a8;
  *(a7 + 104) = a9;
  *(a7 + 112) = a10;
  *(a7 + 120) = a11;
  v12 = *a6;
  v13 = a6[1];
  v14 = a6[3];
  *(a7 + 160) = a6[2];
  *(a7 + 176) = v14;
  *(a7 + 128) = v12;
  *(a7 + 144) = v13;
  v15 = a6[4];
  v16 = a6[5];
  v17 = a6[7];
  *(a7 + 224) = a6[6];
  *(a7 + 240) = v17;
  *(a7 + 192) = v15;
  *(a7 + 208) = v16;
  result = a6[8];
  v19 = a6[9];
  v20 = a6[10];
  *(a7 + 297) = *(a6 + 169);
  *(a7 + 272) = v19;
  *(a7 + 288) = v20;
  *(a7 + 256) = result;
  return result;
}

uint64_t sub_18BB3FB8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BB3FBE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_18BB3FC44(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6964615272756C62;
    v6 = 0x7372657665527369;
    if (a1 != 2)
    {
      v6 = 0x65736E496B73616DLL;
    }

    if (a1)
    {
      v5 = 0x615272656E726F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x754F656372756F73;
    v2 = 0x6854656372756F73;
    if (a1 != 7)
    {
      v2 = 0x73656E6B63696874;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696461526B73616DLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_18BB3FD88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9BA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BB41614();
  sub_18BC221F8();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_18B992D74();
  sub_18BC21F28();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v3[1];
  HIBYTE(v10) = 1;
  sub_18BC21F28();
  LOBYTE(v11) = 2;
  sub_18BC21F08();
  v11 = v3[3];
  HIBYTE(v10) = 3;
  sub_18BC21F28();
  v11 = v3[4];
  HIBYTE(v10) = 4;
  sub_18BC21F28();
  LOBYTE(v11) = 5;
  sub_18BC21F18();
  v11 = v3[6];
  HIBYTE(v10) = 6;
  sub_18BC21F28();
  v11 = v3[7];
  HIBYTE(v10) = 7;
  sub_18BC21F28();
  v11 = v3[8];
  HIBYTE(v10) = 8;
  sub_18BC21F28();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18BB4007C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v2);
  sub_18BC22178();
  v3 = *(v0 + 24);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v3);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v4);
  MEMORY[0x18CFFD660](*(v0 + 40));
  v5 = *(v0 + 48);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v5);
  v6 = *(v0 + 56);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v6);
  v7 = *(v0 + 64);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return MEMORY[0x18CFFD690](*&v7);
}

uint64_t sub_18BB40154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18BB40F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18BB40188(uint64_t a1)
{
  v2 = sub_18BB41614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB401C4(uint64_t a1)
{
  v2 = sub_18BB41614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_18BB40200@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18BB41278(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_18BB4026C()
{
  sub_18BC22158();
  sub_18BB4007C();
  return sub_18BC221A8();
}

uint64_t sub_18BB402B0()
{
  sub_18BC22158();
  sub_18BB4007C();
  return sub_18BC221A8();
}

BOOL sub_18BB402EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BB4041C(v7, v9);
}

unint64_t sub_18BB4034C()
{
  result = qword_1EA9D9B80;
  if (!qword_1EA9D9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9B80);
  }

  return result;
}

unint64_t sub_18BB403A0(uint64_t a1)
{
  result = sub_18BB403C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BB403C8()
{
  result = qword_1EA9D9B88;
  if (!qword_1EA9D9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9B88);
  }

  return result;
}

void sub_18BB404B8(uint64_t a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69793F8]) init];
  v7 = _SFOnePixel();
  v8 = *(a1 + 8);
  v9 = *(a1 + 56);
  v10 = v8 - *(a1 + 64);
  v11 = *(a1 + 16);
  v12 = *(a1 + 48);
  v13 = v8 + v12;
  v14 = v8 + v12 + v9;
  if (v11)
  {
    v14 = v10 - v12;
    v13 = v10 - v12 - v9;
  }

  v15 = *(a1 + 40);
  v16 = v8 + v9 + v12;
  if (v11)
  {
    v16 = v8;
  }

  if (v15 < 0)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v15)
  {
    v17 = 0;
    v18 = v10 - v7;
    v19 = v18 / a2;
    v20 = v18 / a3;
    v21 = v7 + v8;
    v22 = v13 / a3;
    v23 = v13 / a2;
    v24 = v14 / a2;
    v25 = v14 / a3;
    v26 = v16 / a3;
    v99 = v16 / a2;
    v100 = v21 / a3;
    v103 = v19;
    v104 = 1.0 - v16 / a2;
    v101 = v21 / a2;
    v102 = v20;
    v114 = v25;
    v115 = v24;
    if (v11)
    {
      v27 = v21 / a2;
    }

    else
    {
      v27 = v24;
    }

    if (v11)
    {
      v28 = v21 / a3;
    }

    else
    {
      v28 = v25;
    }

    v112 = v28;
    v113 = v27;
    v116 = v23;
    v117 = v22;
    if (v11)
    {
      v29 = v19;
    }

    else
    {
      v29 = v23;
    }

    if (v11)
    {
      v30 = v20;
    }

    else
    {
      v30 = v22;
    }

    v110 = v30;
    v111 = v29;
    v109 = 3.14159265 / (v15 + v15);
    while (1)
    {
      v31 = v17 + 1;
      v32 = v109 * (v17 + 1) + 0.0;
      v33 = __sincos_stret(v109 * v17 + 0.0);
      v34 = __sincos_stret(v32);
      v35 = v116;
      v36 = v117;
      v37 = v114;
      v38 = v115;
      if ((v11 & 1) == 0)
      {
        v36 = v102;
        v35 = v103;
        v37 = v100;
        v38 = v101;
      }

      v39 = v104 + v33.__cosval * v35;
      v40 = v26 - v33.__sinval * v36;
      v41 = v104 + v34.__cosval * v35;
      v42 = v26 - v34.__sinval * v36;
      v105 = v104 + v34.__cosval * v38;
      *&v118 = v104 + v111 * v33.__cosval;
      *(&v118 + 1) = v26 - v110 * v33.__sinval;
      v43 = v26 - v34.__sinval * v37;
      *&v119 = v104 + v33.__cosval * v38;
      *(&v119 + 1) = v26 - v33.__sinval * v37;
      v120 = 0;
      [v6 addVertex_];
      *&v118 = v104 + v113 * v33.__cosval;
      *(&v118 + 1) = v26 - v112 * v33.__sinval;
      *&v119 = v39;
      *(&v119 + 1) = v40;
      v120 = 0;
      [v6 addVertex_];
      *&v118 = v104 + v113 * v34.__cosval;
      *(&v118 + 1) = v26 - v112 * v34.__sinval;
      *&v119 = v41;
      *(&v119 + 1) = v42;
      v120 = 0;
      [v6 addVertex_];
      *&v118 = v104 + v111 * v34.__cosval;
      *(&v118 + 1) = v26 - v110 * v34.__sinval;
      *&v119 = v105;
      *(&v119 + 1) = v43;
      v120 = 0;
      [v6 addVertex_];
      v44 = [v6 vertexCount];
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (HIDWORD(v44))
      {
        goto LABEL_68;
      }

      if (v44 < 4)
      {
        goto LABEL_69;
      }

      LODWORD(v118) = v44 - 4;
      *(&v118 + 4) = vadd_s32(vdup_n_s32(v44), 0xFFFFFFFEFFFFFFFDLL);
      HIDWORD(v118) = v44 - 1;
      v119 = 0uLL;
      [v6 addFace_];
      v17 = v31;
      if (v15 == v31)
      {
        v45 = 0;
        while (1)
        {
          v46 = v45 + 1;
          v47 = v109 * (v45 + 1) + 1.57079633;
          v48 = __sincos_stret(v109 * v45 + 1.57079633);
          v49 = __sincos_stret(v47);
          v50 = v116;
          v51 = v117;
          v52 = v114;
          v53 = v115;
          if ((v11 & 1) == 0)
          {
            v51 = v102;
            v50 = v103;
            v52 = v100;
            v53 = v101;
          }

          v54 = v99 + v48.__cosval * v50;
          v55 = v26 - v48.__sinval * v51;
          v56 = v99 + v49.__cosval * v50;
          v57 = v26 - v49.__sinval * v51;
          v106 = v99 + v49.__cosval * v53;
          *&v118 = v99 + v111 * v48.__cosval;
          *(&v118 + 1) = v26 - v110 * v48.__sinval;
          v58 = v26 - v49.__sinval * v52;
          *&v119 = v99 + v48.__cosval * v53;
          *(&v119 + 1) = v26 - v48.__sinval * v52;
          v120 = 0;
          [v6 addVertex_];
          *&v118 = v99 + v113 * v48.__cosval;
          *(&v118 + 1) = v26 - v112 * v48.__sinval;
          *&v119 = v54;
          *(&v119 + 1) = v55;
          v120 = 0;
          [v6 addVertex_];
          *&v118 = v99 + v113 * v49.__cosval;
          *(&v118 + 1) = v26 - v112 * v49.__sinval;
          *&v119 = v56;
          *(&v119 + 1) = v57;
          v120 = 0;
          [v6 addVertex_];
          *&v118 = v99 + v111 * v49.__cosval;
          *(&v118 + 1) = v26 - v110 * v49.__sinval;
          *&v119 = v106;
          *(&v119 + 1) = v58;
          v120 = 0;
          [v6 addVertex_];
          v59 = [v6 vertexCount];
          if ((v59 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (HIDWORD(v59))
          {
            goto LABEL_71;
          }

          if (v59 < 4)
          {
            goto LABEL_72;
          }

          LODWORD(v118) = v59 - 4;
          *(&v118 + 4) = vadd_s32(vdup_n_s32(v59), 0xFFFFFFFEFFFFFFFDLL);
          HIDWORD(v118) = v59 - 1;
          v119 = 0uLL;
          [v6 addFace_];
          v45 = v46;
          if (v15 == v46)
          {
            v60 = 0;
            v61 = 1.0 - v26;
            while (1)
            {
              v62 = v60 + 1;
              v63 = v109 * (v60 + 1) + 3.14159265;
              v64 = __sincos_stret(v109 * v60 + 3.14159265);
              v65 = __sincos_stret(v63);
              v66 = v116;
              v67 = v117;
              v68 = v114;
              v69 = v115;
              if ((v11 & 1) == 0)
              {
                v67 = v102;
                v66 = v103;
                v68 = v100;
                v69 = v101;
              }

              v70 = v99 + v64.__cosval * v66;
              v71 = v61 - v64.__sinval * v67;
              v72 = v99 + v65.__cosval * v66;
              v73 = v61 - v65.__sinval * v67;
              v107 = v99 + v65.__cosval * v69;
              *&v118 = v99 + v111 * v64.__cosval;
              *(&v118 + 1) = v61 - v110 * v64.__sinval;
              v74 = v61 - v65.__sinval * v68;
              *&v119 = v99 + v64.__cosval * v69;
              *(&v119 + 1) = v61 - v64.__sinval * v68;
              v120 = 0;
              [v6 addVertex_];
              *&v118 = v99 + v113 * v64.__cosval;
              *(&v118 + 1) = v61 - v112 * v64.__sinval;
              *&v119 = v70;
              *(&v119 + 1) = v71;
              v120 = 0;
              [v6 addVertex_];
              *&v118 = v99 + v113 * v65.__cosval;
              *(&v118 + 1) = v61 - v112 * v65.__sinval;
              *&v119 = v72;
              *(&v119 + 1) = v73;
              v120 = 0;
              [v6 addVertex_];
              *&v118 = v99 + v111 * v65.__cosval;
              *(&v118 + 1) = v61 - v110 * v65.__sinval;
              *&v119 = v107;
              *(&v119 + 1) = v74;
              v120 = 0;
              [v6 addVertex_];
              v75 = [v6 vertexCount];
              if ((v75 & 0x8000000000000000) != 0)
              {
                goto LABEL_73;
              }

              if (HIDWORD(v75))
              {
                goto LABEL_74;
              }

              if (v75 < 4)
              {
                goto LABEL_75;
              }

              LODWORD(v118) = v75 - 4;
              *(&v118 + 4) = vadd_s32(vdup_n_s32(v75), 0xFFFFFFFEFFFFFFFDLL);
              HIDWORD(v118) = v75 - 1;
              v119 = 0uLL;
              [v6 addFace_];
              v60 = v62;
              if (v15 == v62)
              {
                v76 = 0;
                while (1)
                {
                  v77 = v76 + 1;
                  v78 = v109 * (v76 + 1) + 4.71238898;
                  v79 = __sincos_stret(v109 * v76 + 4.71238898);
                  v80 = __sincos_stret(v78);
                  v81 = v116;
                  v82 = v117;
                  v83 = v114;
                  v84 = v115;
                  if ((v11 & 1) == 0)
                  {
                    v82 = v102;
                    v81 = v103;
                    v83 = v100;
                    v84 = v101;
                  }

                  v85 = v104 + v79.__cosval * v81;
                  v86 = v61 - v79.__sinval * v82;
                  v87 = v104 + v80.__cosval * v81;
                  v88 = v61 - v80.__sinval * v82;
                  v108 = v104 + v80.__cosval * v84;
                  *&v118 = v104 + v111 * v79.__cosval;
                  *(&v118 + 1) = v61 - v110 * v79.__sinval;
                  v89 = v61 - v80.__sinval * v83;
                  *&v119 = v104 + v79.__cosval * v84;
                  *(&v119 + 1) = v61 - v79.__sinval * v83;
                  v120 = 0;
                  [v6 addVertex_];
                  *&v118 = v104 + v113 * v79.__cosval;
                  *(&v118 + 1) = v61 - v112 * v79.__sinval;
                  *&v119 = v85;
                  *(&v119 + 1) = v86;
                  v120 = 0;
                  [v6 addVertex_];
                  *&v118 = v104 + v113 * v80.__cosval;
                  *(&v118 + 1) = v61 - v112 * v80.__sinval;
                  *&v119 = v87;
                  *(&v119 + 1) = v88;
                  v120 = 0;
                  [v6 addVertex_];
                  *&v118 = v104 + v111 * v80.__cosval;
                  *(&v118 + 1) = v61 - v110 * v80.__sinval;
                  *&v119 = v108;
                  *(&v119 + 1) = v89;
                  v120 = 0;
                  [v6 addVertex_];
                  v90 = [v6 vertexCount];
                  if ((v90 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_76;
                  }

                  if (HIDWORD(v90))
                  {
                    goto LABEL_77;
                  }

                  if (v90 < 4)
                  {
                    goto LABEL_78;
                  }

                  LODWORD(v118) = v90 - 4;
                  *(&v118 + 4) = vadd_s32(vdup_n_s32(v90), 0xFFFFFFFEFFFFFFFDLL);
                  HIDWORD(v118) = v90 - 1;
                  v119 = 0uLL;
                  [v6 addFace_];
                  v76 = v77;
                  if (v15 == v77)
                  {
                    if (v15 > 0xFFFFFFFFLL)
                    {
                      goto LABEL_80;
                    }

                    if (!(v15 >> 30))
                    {
                      v91 = 4 * v15;
                      goto LABEL_51;
                    }

                    goto LABEL_81;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v91 = 0;
LABEL_51:
  v92 = v6;
  v93 = [v92 vertexCount];
  if ((v93 & 0x8000000000000000) != 0)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v94 = v93;
  if (HIDWORD(v93))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v93)
  {
    v95 = -3;
    v96 = v91;
    while (v96 >= 2)
    {
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      v97 = [v92 vertexCount];
      if ((v97 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      if (HIDWORD(v97))
      {
        goto LABEL_65;
      }

      if (v97 < 4)
      {
        goto LABEL_66;
      }

      LODWORD(v118) = v97 - 4;
      *(&v118 + 4) = vadd_s32(vdup_n_s32(v97), 0xFFFFFFFEFFFFFFFDLL);
      HIDWORD(v118) = v97 - 1;
      v119 = 0uLL;
      [v92 addFace_];
      if (!v95)
      {
        goto LABEL_62;
      }

      v98 = v91 * (v95 + 5);
      v96 += v91;
      ++v95;
      if ((v98 & 0xFFFFFFFF00000000) != 0)
      {
        __break(1u);
LABEL_62:

        return;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
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
    goto LABEL_79;
  }

LABEL_84:
  __break(1u);
}

uint64_t sub_18BB40F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6964615272756C62 && a2 == 0xEA00000000007375;
  if (v4 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372657665527369 && a2 == 0xEA00000000006465 || (sub_18BC21FD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736E496B73616DLL && a2 == 0xE900000000000074 || (sub_18BC21FD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696461526B73616DLL && a2 == 0xEA00000000007375 || (sub_18BC21FD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018BC6D890 == a2 || (sub_18BC21FD8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754F656372756F73 && a2 == 0xEC00000074657374 || (sub_18BC21FD8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6854656372756F73 && a2 == 0xEF7373656E6B6369 || (sub_18BC21FD8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656E6B63696874 && a2 == 0xE900000000000073)
  {

    return 8;
  }

  else
  {
    v6 = sub_18BC21FD8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_18BB41278@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9B90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  _SFOnePixel();
  _SFOnePixel();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BB41614();
  sub_18BC221D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  sub_18B992B4C();
  sub_18BC21EA8();
  v9 = v21;
  v20 = 1;
  sub_18BC21EA8();
  v10 = v21;
  LOBYTE(v21) = 2;
  v11 = sub_18BC21E88();
  v20 = 3;
  sub_18BC21EA8();
  v12 = v21;
  v20 = 4;
  sub_18BC21EA8();
  v13 = v21;
  LOBYTE(v21) = 5;
  v19 = sub_18BC21E98();
  v20 = 6;
  sub_18BC21EA8();
  v14 = v21;
  v20 = 7;
  sub_18BC21EA8();
  v15 = v21;
  v20 = 8;
  sub_18BC21EA8();
  (*(v6 + 8))(v8, v5);
  v16 = v21;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v19;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  return result;
}

unint64_t sub_18BB41614()
{
  result = qword_1EA9D9B98;
  if (!qword_1EA9D9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedRectangleReflection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoundedRectangleReflection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18BB417BC()
{
  result = qword_1EA9D9BA8;
  if (!qword_1EA9D9BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9BA8);
  }

  return result;
}

unint64_t sub_18BB41814()
{
  result = qword_1EA9D9BB0;
  if (!qword_1EA9D9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9BB0);
  }

  return result;
}

unint64_t sub_18BB4186C()
{
  result = qword_1EA9D9BB8;
  if (!qword_1EA9D9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9BB8);
  }

  return result;
}

uint64_t sub_18BB418C0()
{
  v25 = sub_18BC20B08();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_18BC1E8B8();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC1E8D8();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F82E0);
  v21 = __swift_project_value_buffer(v12, qword_1EA9F82E0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_18BC1E8F8();
  sub_18BC20B58();
  sub_18BC20B48();
  v15 = v24;
  v16 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x1E6969D68], v25);
  sub_18BC20B28();
  (*(v0 + 8))(v15, v16);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v8, v13, v20);
  v17 = v26;
  sub_18BC1E8F8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_18BC1E4E8();
}

uint64_t sub_18BB41D78@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_18BC1E8B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC1E8D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v8 + 104))(v10, *MEMORY[0x1E6968DF0], v7);
  sub_18BC1E8F8();
  (*(v14 + 56))(v6, 1, 1, v13);
  v15 = sub_18BC1E398();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  return sub_18BC1E3A8();
}

uint64_t sub_18BB420D0(uint64_t a1)
{
  v2 = sub_18BB43488(&qword_1EA9D9C68, type metadata accessor for PrivateTabEntity);

  return MEMORY[0x1EEDB29C0](a1, v2);
}

uint64_t sub_18BB4214C()
{
  sub_18BB43488(&qword_1EA9D9C68, type metadata accessor for PrivateTabEntity);

  return sub_18BC1DE28();
}

uint64_t sub_18BB42200(uint64_t a1)
{
  v2 = sub_18BB43488(&qword_1EA9D9BC8, type metadata accessor for PrivateTabEntity);

  return MEMORY[0x1EEDB2C50](a1, v2);
}

uint64_t sub_18BB4227C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18BC1E3B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_18BB422E4(uint64_t a1)
{
  v2 = sub_18BB43488(&qword_1EA9D9C10, type metadata accessor for PrivateTabEntity);

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BB42360()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F82F8);
  __swift_project_value_buffer(v6, qword_1EA9F82F8);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

id sub_18BB42558(void *a1)
{
  result = [a1 canCreateNewPrivateTab];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18BB43488(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_18BB426A0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for PrivateTabEntity();
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18BB42734, 0, 0);
}

uint64_t sub_18BB42734()
{
  v1 = *(v0 + 32);
  sub_18BB41D78(v1);
  sub_18BB43488(&qword_1EA9D9C08, type metadata accessor for PrivateTabEntity);
  sub_18BC1DF88();
  sub_18BB4342C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SFSiriLinkCoordinator.createNewPrivateTabInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4F098;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808924();
  return sub_18BC1F028();
}

uint64_t sub_18BB428B0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for PrivateTabEntity();
  v2[8] = swift_task_alloc();
  sub_18BC20F28();
  v2[9] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB42978, v4, v3);
}

uint64_t sub_18BB42978()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "New Private Tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[8];
    v9 = v0[5];

    [v3 createNewPrivateTab];
    sub_18BB41D78(v8);
    v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9C60);
    v9[4] = sub_18B7B0B08(&unk_1EA9D9C70, &qword_1EA9D9C60);
    __swift_allocate_boxed_opaque_existential_0Tm(v9);
    sub_18BB43488(&qword_1EA9D9C08, type metadata accessor for PrivateTabEntity);
    sub_18BC1DF88();
    swift_unknownObjectRelease();
    sub_18BB4342C(v8);

    v10 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = sub_18BC1DE48();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
    sub_18BB43488(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    swift_willThrow();

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_18BB42CB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B7B6968;

  return sub_18BB428B0(a1, v1);
}

uint64_t sub_18BB42D54(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_18B987B10;

  return v7(a1);
}

uint64_t sub_18BB42E4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB42D54(a1, a2, v6);
}

uint64_t type metadata accessor for PrivateTabEntity()
{
  result = qword_1EA9D9C48;
  if (!qword_1EA9D9C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18BB431E4()
{
  result = qword_1EA9D9C30;
  if (!qword_1EA9D9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9C30);
  }

  return result;
}

uint64_t sub_18BB432E8()
{
  result = sub_18BC1E3B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18BB43364(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BB42D54(a1, a2, v6);
}

uint64_t sub_18BB4342C(uint64_t a1)
{
  v2 = type metadata accessor for PrivateTabEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BB43488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BB434DC()
{
  v1 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  sub_18B7CA054(v0, &v21 - v11, &unk_1EA9D92F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
      v16 = swift_projectBox();
      v17 = *(v15 + 48);
      sub_18B833990(v16, &v24);
      sub_18B7CA054(v16 + v17, v10, &unk_1EA9D92F0);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_18BC21AD8();
      MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC64120);
      sub_18BC21C58();
      v18 = MEMORY[0x18CFFC150](0x657265666572202CLL, 0xEE00203A7365636ELL);
      v19 = sub_18BB434DC(v18);
      MEMORY[0x18CFFC150](v19);

      MEMORY[0x18CFFC150](32032, 0xE200000000000000);
      v14 = v22;
      sub_18B988BAC(v10, &unk_1EA9D92F0);
      sub_18B833D9C(&v24);
    }

    else
    {
      return 0x63656C6C6F63207BLL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_18B85A83C(v12, v6, _s4ItemVMa_2);
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x203A6D657469207BLL, 0xE800000000000000);
    sub_18BC21C58();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v14 = v24;
    sub_18BB69570(v6, _s4ItemVMa_2);
  }

  else
  {
    sub_18B85A83C(v12, v3, _s7SectionVMa_1);
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x6F6974636573207BLL, 0xEB00000000203A6ELL);
    sub_18BC21C58();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v14 = v24;
    sub_18BB69570(v3, _s7SectionVMa_1);
  }

  return v14;
}

uint64_t sub_18BB438EC(_OWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5048);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v50 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v50 - v10;
  swift_beginAccess();
  v11 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v11;
  *(v1 + 48) = a1[2];

  *(v1 + 91) = 1;
  swift_beginAccess();
  if (*(v1 + 72) == 1)
  {
    sub_18B7CA054(a1, &v64, &unk_1EA9D4F90);
    v12 = MEMORY[0x1E69E7CC0];
    v13 = sub_18B8509C8(MEMORY[0x1E69E7CC0]);
    v14 = sub_18B850C4C(v12);
    v58 = xmmword_18BC4F4B0;
    v15 = sub_18B850C04(v12);
    v16 = 1;
    v17 = 0;
    v18 = 1024.0;
  }

  else
  {
    swift_beginAccess();
    *(v66 + 9) = *(v1 + 137);
    v19 = *(v1 + 128);
    v65 = *(v1 + 112);
    v66[0] = v19;
    v64 = *(v1 + 96);
    v16 = BYTE8(v66[1]);
    v17 = *&v66[1];
    v18 = *(&v65 + 1);
    v58 = v19;
    v14 = *(&v64 + 1);
    v15 = v65;
    v13 = v64;
    sub_18B7CA054(a1, v63, &unk_1EA9D4F90);
    sub_18B7CA054(&v64, v63, &unk_1EA9D50C0);
  }

  *&v67 = v13;
  *(&v67 + 1) = v14;
  *&v68 = v15;
  *(&v68 + 1) = v18;
  *v69 = v58;
  *&v69[16] = v17;
  v69[24] = v16;
  if (*(v1 + 72))
  {
LABEL_28:
    (*(*v1 + 392))(&v67);
    swift_beginAccess();
    v48 = *(v1 + 112);
    v64 = *(v1 + 96);
    v65 = v48;
    v66[0] = *(v1 + 128);
    *(v66 + 9) = *(v1 + 137);
    v49 = v68;
    *(v1 + 96) = v67;
    *(v1 + 112) = v49;
    *(v1 + 128) = *v69;
    *(v1 + 137) = *&v69[9];
    sub_18B988BAC(&v64, &unk_1EA9D50C0);
    return sub_18BB440F8();
  }

  else
  {
    v50 = v1;
    v51 = v15;
    v20 = *(v1 + 64);
    v23 = *(v20 + 56);
    v22 = v20 + 56;
    v21 = v23;
    v24 = 1 << *(*(v1 + 64) + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v28 = v57;
    v59 = *(v1 + 64);
    v60 = (v57 + 56);
    result = sub_18BC1E3F8();
    v30 = 0;
    v31 = v56;
    while (v26)
    {
LABEL_15:
      v33 = *(v28 + 72);
      sub_18B7CA054(*(v59 + 48) + v33 * (__clz(__rbit64(v26)) | (v30 << 6)), v31, &unk_1EA9D92F0);
      v34 = v67;
      if (*(v67 + 16))
      {
        v35 = sub_18B83B1C8(v31);
        if (v36)
        {
          sub_18B7CA054(*(v34 + 56) + *(v52 + 72) * v35, v62, &unk_1EA9D4F40);
          v37 = v54;
          sub_18BB5A168(v31, v54);
          sub_18B988BAC(v37, &unk_1EA9D9300);
          v38 = sub_18B83B1C8(v31);
          if (v39)
          {
            v40 = v38;
            v41 = v68;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v64 = v41;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_18BB2B488();
              v41 = v64;
            }

            sub_18B988BAC(*(v41 + 48) + v40 * v33, &unk_1EA9D92F0);

            sub_18BB5C6F4(v40, v41);

            v51 = v41;
            *&v68 = v41;
          }

          sub_18B86B4C4(v18, *&v58, *(v62 + *(v53 + 96)), *(v62 + *(v53 + 96) + 8), *(v62 + *(v53 + 96) + 16), *(v62 + *(v53 + 96) + 24));
          v55 = v43;
          v44 = *(v43 + 16);
          if (v44)
          {
            v45 = (v55 + 56);
            do
            {
              v46 = sub_18BB59810(&v64, *(v45 - 3), *(v45 - 2), *(v45 - 1), *v45);
              if (*v47)
              {
                sub_18B9CE534(v62, v5);
                sub_18B988BAC(v5, &qword_1EA9D5048);
                (v46)(&v64, 0);
              }

              else
              {
                (v46)(&v64, 0);
                (*v60)(v5, 1, 1, v61);
                sub_18B988BAC(v5, &qword_1EA9D5048);
              }

              v45 += 4;
              --v44;
            }

            while (v44);
          }

          sub_18B988BAC(v62, &unk_1EA9D4F40);
          v31 = v56;
          v28 = v57;
        }
      }

      v26 &= v26 - 1;
      result = sub_18B988BAC(v31, &unk_1EA9D92F0);
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v27)
      {

        v1 = v50;
        goto LABEL_28;
      }

      v26 = *(v22 + 8 * v32);
      ++v30;
      if (v26)
      {
        v30 = v32;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18BB44000()
{
  sub_18B81F588(__src);
  swift_beginAccess();
  memcpy(__dst, (v0 + 168), 0x139uLL);
  memcpy((v0 + 168), __src, 0x139uLL);
  sub_18B988BAC(__dst, &qword_1EA9D5100);
  swift_beginAccess();
  *(v0 + 64) = MEMORY[0x1E69E7CD0];
  *(v0 + 72) = 0;
  *(v0 + 74) = 0;

  *(v0 + 91) = 0;
  result = swift_beginAccess();
  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = *(v0 + 88) | (*(v0 + 90) << 16);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 90) = 0;
    sub_18B8487D0(v2, v3 & 0x1010101);
  }

  return result;
}

uint64_t sub_18BB440F8()
{
  v1 = v0;
  v2 = _s4ItemVMa_2();
  v121 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v129 = v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = v115 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v130 = v115 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v115 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v128 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v115 - v15;
  v17 = _s7SectionVMa_1();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v141 = v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v137 = v115 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v140 = v115 - v23;
  v24 = sub_18B850D54(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v1 + 160) = v24;

  result = swift_beginAccess();
  v26 = *(v1 + 56);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v1 + 48);
    v120 = v18;
    v119 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v118 = v26 + v119;
    v115[1] = v28;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v29 = 0;
    v124 = v6;
    v133 = v16;
    v30 = v140;
    v132 = v4;
    v126 = v14;
    v117 = v17;
    v116 = v26;
    v123 = v1;
    while (1)
    {
      if (v29 >= v27)
      {
        goto LABEL_61;
      }

      v32 = *(v120 + 72);
      v122 = v29;
      v135 = v32;
      sub_18B85A52C(v118 + v32 * v29, v30, _s7SectionVMa_1);
      v33 = *(v1 + 24);
      v139 = *(v1 + 16);
      v138.size.width = v33;
      v34 = *(v1 + 32);
      v138.origin.x = *(v1 + 40);
      v36 = *(v1 + 48);
      v35 = *(v1 + 56);
      v37 = v35 + v119;
      v38 = *(v35 + 16);
      v131 = v36;
      v136 = v34;
      v127 = v35;
      if (!v36)
      {
        sub_18BC1E1A8();
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v42 = v137;
        if (v38)
        {
          v39 = 0;
          while (1)
          {
            sub_18B85A52C(v37, v42, _s7SectionVMa_1);
            v43 = v140;
            if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
            {
              v44 = *(v137 + *(v17 + 20));
              sub_18BB69570(v137, _s7SectionVMa_1);
              v45 = v44 == *(v43 + *(v17 + 20));
              v42 = v137;
              if (v45)
              {
                goto LABEL_16;
              }
            }

            else
            {
              sub_18BB69570(v42, _s7SectionVMa_1);
            }

            ++v39;
            v37 += v135;
            if (v38 == v39)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_67;
      }

      sub_18BC1E1A8();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      swift_retain_n();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v39 = sub_18B9D0D54(v140, v37, v38, (v36 + 16), v36 + 32);
      v41 = v40;

      if (v41)
      {
        goto LABEL_67;
      }

      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

LABEL_16:
      if (v39 >= *(v139 + 16))
      {
        goto LABEL_63;
      }

      v46 = v139 + 16 * v39;
      v47 = *(v46 + 32);
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v48 = v136;
      v49 = *(v136 + 16);
      if (v49 < v47)
      {
        goto LABEL_65;
      }

      v50 = *(v46 + 40);
      if (v49 < v50)
      {
        goto LABEL_65;
      }

      if (v50 < 0)
      {
        goto LABEL_66;
      }

      sub_18BC1E1A8();
      v51 = v48;
      if (v49 != v50 - v47)
      {
        sub_18BB59AB8(v48, v48 + ((*(v121 + 80) + 32) & ~*(v121 + 80)), v47, (2 * v50) | 1, &unk_1EA9D4FB0, &unk_18BC42888, _s4ItemVMa_2);
        v51 = v114;
      }

      v52 = *(v51 + 16);
      v53 = v126;
      if (v52)
      {
        break;
      }

LABEL_3:
      v31 = v122 + 1;
      v30 = v140;
      sub_18BB69570(v140, _s7SectionVMa_1);

      v29 = v31;
      v27 = *(v116 + 16);
      v17 = v117;
      if (v29 == v27)
      {
      }
    }

    v54 = *(v121 + 80);
    swift_beginAccess();
    if (*(v51 + 16))
    {
      v55 = 0;
      v56 = v51 + ((v54 + 32) & ~v54);
      v127 = *(v121 + 72);
      v131 = v52 - 1;
      v125 = v51;
      do
      {
        v139 = v55;
        v57 = *(v1 + 112);
        v144[0] = *(v1 + 96);
        v144[1] = v57;
        *v145 = *(v1 + 128);
        *&v145[9] = *(v1 + 137);
        v136 = v56;
        sub_18B85A52C(v56, v13, _s4ItemVMa_2);
        swift_storeEnumTagMultiPayload();
        v58 = v130;
        sub_18B7CA054(v13, v130, &unk_1EA9D92F0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
          v61 = swift_projectBox();
          v62 = *(v60 + 48);
          sub_18B833990(v61, &v143);
          v63 = v134;
          sub_18B7CA054(v61 + v62, v134, &unk_1EA9D92F0);
          v64 = *&v144[0];
          v65 = swift_allocBox();
          v67 = v66;
          v68 = *(v60 + 48);
          sub_18B833990(&v143, v66);
          v69 = v67 + v68;
          v70 = v124;
          sub_18B7CA054(v63, v69, &unk_1EA9D92F0);
          *v70 = v65;
          swift_storeEnumTagMultiPayload();
          if (!*(v64 + 16))
          {
            goto LABEL_57;
          }

          sub_18B7CA054(v144, v142, &unk_1EA9D50C0);
          v71 = sub_18B83B1C8(v70);
          if ((v72 & 1) == 0)
          {
            goto LABEL_58;
          }

          v73 = *(v64 + 56) + *(v128 + 72) * v71;
          v74 = v133;
          sub_18B7CA054(v73, v133, &unk_1EA9D4F40);
          sub_18B988BAC(v144, &unk_1EA9D50C0);
          v75 = v70;
          v16 = v74;
          sub_18B988BAC(v75, &unk_1EA9D92F0);
          sub_18B988BAC(v134, &unk_1EA9D92F0);
          sub_18B833D9C(&v143);
          sub_18B988BAC(v13, &unk_1EA9D92F0);

          v1 = v123;
          v53 = v126;
        }

        else
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_68;
          }

          v76 = v129;
          sub_18B85A83C(v58, v129, _s4ItemVMa_2);
          v77 = *&v144[0];
          v78 = v76;
          v79 = v134;
          sub_18B85A52C(v78, v134, _s4ItemVMa_2);
          swift_storeEnumTagMultiPayload();
          if (!*(v77 + 16))
          {
            goto LABEL_56;
          }

          sub_18B7CA054(v144, v142, &unk_1EA9D50C0);
          v80 = sub_18B83B1C8(v79);
          if ((v81 & 1) == 0)
          {
            goto LABEL_59;
          }

          sub_18B7CA054(*(v77 + 56) + *(v128 + 72) * v80, v16, &unk_1EA9D4F40);
          sub_18B988BAC(v144, &unk_1EA9D50C0);
          sub_18B988BAC(v79, &unk_1EA9D92F0);
          sub_18BB69570(v129, _s4ItemVMa_2);
          sub_18B988BAC(v13, &unk_1EA9D92F0);
          v51 = v125;
        }

        v82 = *(v1 + 160);
        v83 = v140;
        if (*(v82 + 16))
        {
          sub_18BC1E3F8();
          v84 = sub_18BB8B3DC(v83);
          if (v85)
          {
            v86 = *(v82 + 56) + 32 * v84;
            v87 = *v86;
            v138.size = *(v86 + 16);
            v138.origin = v87;

            goto LABEL_39;
          }
        }

        v88 = &v16[*(v53 + 96)];
        v89 = *v88;
        v138.size = *(v88 + 1);
        v138.origin = v89;
LABEL_39:
        v90 = v83;
        v91 = v141;
        sub_18B85A52C(v90, v141, _s7SectionVMa_1);
        v146 = CGRectUnion(v138, *&v16[*(v53 + 96)]);
        x = v146.origin.x;
        y = v146.origin.y;
        width = v146.size.width;
        height = v146.size.height;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = *(v1 + 160);
        v97 = v143;
        *(v1 + 160) = 0x8000000000000000;
        v98 = sub_18BB8B3DC(v91);
        v100 = v97[2];
        v101 = (v99 & 1) == 0;
        v102 = __OFADD__(v100, v101);
        v103 = v100 + v101;
        if (v102)
        {
          goto LABEL_55;
        }

        v104 = v99;
        if (v97[3] >= v103)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v113 = v98;
            sub_18BB2BA04();
            v98 = v113;
          }
        }

        else
        {
          sub_18BB30030(v103, isUniquelyReferenced_nonNull_native);
          v98 = sub_18BB8B3DC(v141);
          if ((v104 & 1) != (v105 & 1))
          {
            goto LABEL_69;
          }
        }

        v16 = v133;
        v106 = v143;
        if (v104)
        {
          v107 = (v143[7] + 32 * v98);
          *v107 = x;
          v107[1] = y;
          v107[2] = width;
          v107[3] = height;
          sub_18BB69570(v141, _s7SectionVMa_1);
        }

        else
        {
          v143[(v98 >> 6) + 8] |= 1 << v98;
          v108 = v98;
          v109 = v141;
          sub_18B85A52C(v141, v106[6] + v98 * v135, _s7SectionVMa_1);
          v110 = (v106[7] + 32 * v108);
          *v110 = x;
          v110[1] = y;
          v110[2] = width;
          v110[3] = height;
          sub_18BB69570(v109, _s7SectionVMa_1);
          v111 = v106[2];
          v102 = __OFADD__(v111, 1);
          v112 = v111 + 1;
          if (v102)
          {
            goto LABEL_60;
          }

          v106[2] = v112;
        }

        *(v1 + 160) = v106;

        swift_endAccess();
        sub_18B988BAC(v16, &unk_1EA9D4F40);
        if (v131 == v139)
        {
          goto LABEL_3;
        }

        v55 = v139 + 1;
        v56 = v136 + v127;
      }

      while ((v139 + 1) < *(v51 + 16));
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    sub_18BC21CF8();
    __break(1u);
LABEL_69:
    result = sub_18BC22078();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BB44F94(uint64_t a1)
{
  v55 = a1;
  v51 = _s7SectionVMa_1();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v2 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - v4;
  v6 = _s4ItemVMa_2();
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  sub_18B7CA054(v55, &v51 - v16, &unk_1EA9D92F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = v54[4];
      v19 = v54[5];
      sub_18B85A83C(v17, v5, _s7SectionVMa_1);
      v21 = v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v22 = *(v19 + 16);
      if (v20)
      {
        sub_18BC1E1A8();
        sub_18B9D0D54(v5, v21, v22, (v20 + 16), v20 + 32);
        v24 = v23;

        v25 = v24 ^ 1;
        v26 = _s7SectionVMa_1;
        v27 = v5;
LABEL_11:
        sub_18BB69570(v27, v26);
        return v25 & 1;
      }

      v41 = v51;
      if (v22)
      {
        v42 = *(v53 + 72);
        do
        {
          sub_18B85A52C(v21, v2, _s7SectionVMa_1);
          if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
          {
            v43 = v2[*(v41 + 20)];
            sub_18BB69570(v2, _s7SectionVMa_1);
            if (v43 == v5[*(v41 + 20)])
            {
              v44 = _s7SectionVMa_1;
              v45 = v5;
              goto LABEL_29;
            }
          }

          else
          {
            sub_18BB69570(v2, _s7SectionVMa_1);
          }

          v21 += v42;
          --v22;
        }

        while (v22);
      }

      v48 = _s7SectionVMa_1;
      v49 = v5;
LABEL_27:
      sub_18BB69570(v49, v48);
      v25 = 0;
      return v25 & 1;
    }

    v36 = v54[1];
    v35 = v54[2];
    sub_18B85A83C(v17, v11, _s4ItemVMa_2);
    v37 = v35 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v38 = *(v35 + 16);
    if (v36)
    {
      sub_18BC1E1A8();
      sub_18B9D0B20(v11, v37, v38, (v36 + 16), v36 + 32);
      v40 = v39;

      v25 = v40 ^ 1;
      v26 = _s4ItemVMa_2;
      v27 = v11;
      goto LABEL_11;
    }

    if (!v38)
    {
LABEL_25:
      v48 = _s4ItemVMa_2;
      v49 = v11;
      goto LABEL_27;
    }

    v46 = *(v52 + 72);
    while (1)
    {
      sub_18B85A52C(v37, v8, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v8, _s4ItemVMa_2);
      if (updated)
      {
        break;
      }

      v37 += v46;
      if (!--v38)
      {
        goto LABEL_25;
      }
    }

    v44 = _s4ItemVMa_2;
    v45 = v11;
LABEL_29:
    sub_18BB69570(v45, v44);
LABEL_30:
    v25 = 1;
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_30;
  }

  v28 = v54[3];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
  v30 = swift_projectBox();
  v31 = *(v29 + 48);
  sub_18B833990(v30, v56);
  sub_18B7CA054(v30 + v31, v14, &unk_1EA9D92F0);
  if (*(v28 + 16) && (v32 = sub_18B83B1C8(v14), (v33 & 1) != 0))
  {
    v34 = *(*(v28 + 56) + 8 * v32);
    sub_18BC1E3F8();
    v25 = sub_18B85CEA8(v56, v34);
  }

  else
  {
    v25 = 0;
  }

  sub_18B988BAC(v14, &unk_1EA9D92F0);
  sub_18B833D9C(v56);

  return v25 & 1;
}

uint64_t sub_18BB45524()
{
  result = sub_18BC20B98();
  qword_1EA9D9C80 = result;
  return result;
}

uint64_t sub_18BB45580()
{
  result = sub_18BC20B98();
  qword_1EA9D9C88 = result;
  return result;
}

uint64_t sub_18BB455DC()
{
  result = sub_18BC20B98();
  qword_1EA9D9C90 = result;
  return result;
}

id sub_18BB45638(void *a1, void **a2)
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

void SFFluidCollectionView.init(frame:layout:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*MEMORY[0x1E69E7D40] & *v5);
  v13 = v12[11];
  v14 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v15 = sub_18BB32DD8(v14, v13, *(v12[14] + 8));
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x80)) = v15;
  *(v6 + *((*v11 & *v6) + 0x88) + 8) = 0;
  swift_unknownObjectWeakInit();
  v16 = *((*v11 & *v6) + 0x90);
  v17 = v12[10];
  v18 = v12[12];
  v19 = v12[13];
  v21 = v12[14];
  v20 = v12[15];
  *&__src[0] = v17;
  *(&__src[0] + 1) = v13;
  *&__src[1] = v18;
  *(&__src[1] + 1) = v19;
  *&__src[2] = v21;
  *(&__src[2] + 1) = v20;
  type metadata accessor for SFFluidCollectionView.DataSource();
  *(v6 + v16) = SFFluidCollectionView.DataSource.__allocating_init()();
  v22 = v17;
  *(v6 + *((*v11 & *v6) + 0x98)) = 1;
  v23 = (v6 + *((*v11 & *v6) + 0xA0));
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + *((*v11 & *v6) + 0xA8));
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + *((*v11 & *v6) + 0xB0));
  *v25 = 0;
  v25[1] = 0;
  *(v6 + *((*v11 & *v6) + 0xB8) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + *((*v11 & *v6) + 0xC0) + 8) = 0;
  swift_unknownObjectWeakInit();
  v26 = (*(v13 - 8) + 56);
  v89 = *v26;
  (*v26)(v6 + *((*v11 & *v6) + 0xC8), 1, 1, v13);
  *(v6 + *((*v11 & *v6) + 0xD0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + *((*v11 & *v6) + 0xD8)) = 0;
  *(v6 + *((*v11 & *v6) + 0xE0)) = 0;
  *&__src[0] = v22;
  *(&__src[0] + 1) = v13;
  v92 = v19;
  v93 = v18;
  *&__src[1] = v18;
  *(&__src[1] + 1) = v19;
  v91 = v21;
  *&__src[2] = v21;
  *(&__src[2] + 1) = v20;
  v27 = v20;
  v28 = type metadata accessor for SFFluidCollectionView.Element();
  v29 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v31 = sub_18BB32DD8(v29, v28, WitnessTable);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0xE8)) = v31;
  *(v6 + *((*v11 & *v6) + 0xF0)) = 0;
  *(v6 + *((*v11 & *v6) + 0xF8)) = 0;
  v32 = v22;
  *&__src[0] = v22;
  *(&__src[0] + 1) = v13;
  *&__src[1] = v93;
  *(&__src[1] + 1) = v92;
  *&__src[2] = v91;
  *(&__src[2] + 1) = v27;
  v33 = _s8ItemInfoCMa();
  v34 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v35 = swift_getWitnessTable();
    v36 = sub_18BB32DD8(v34, v33, v35);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x100)) = v36;
  *(v6 + *((*v11 & *v6) + 0x108)) = 0;
  *(v6 + *((*v11 & *v6) + 0x110)) = 0;
  v89(v6 + *((*v11 & *v6) + 0x118), 1, 1, v13);
  v37 = *((*v11 & *v6) + 0x120);
  *&__src[0] = v32;
  *(&__src[0] + 1) = v13;
  *&__src[1] = v93;
  *(&__src[1] + 1) = v92;
  *&__src[2] = v91;
  *(&__src[2] + 1) = v27;
  type metadata accessor for SFFluidCollectionView.Interaction();
  *(v6 + v37) = sub_18BC20DE8();
  *(v6 + *((*v11 & *v6) + 0x128)) = 0;
  *(v6 + *((*v11 & *v6) + 0x130)) = 0;
  *(v6 + *((*v11 & *v6) + 0x138)) = 0;
  *(v6 + *((*v11 & *v6) + 0x140)) = 0;
  v38 = *((*v11 & *v6) + 0x148);
  type metadata accessor for Assertion();
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E7CC0];
  *(v39 + 16) = MEMORY[0x1E69E7CC0];
  *(v39 + 24) = 0;
  *(v6 + v38) = v39;
  v41 = *((*v11 & *v6) + 0x150);
  swift_getTupleTypeMetadata2();
  v42 = sub_18BC20DE8();
  v43 = swift_getWitnessTable();
  v44 = sub_18B7C29AC(v42, v28, v33, v43);

  *(v6 + v41) = v44;
  v45 = (v6 + *((*v11 & *v6) + 0x158));
  v46 = *(MEMORY[0x1E695F050] + 16);
  *v45 = *MEMORY[0x1E695F050];
  v45[1] = v46;
  v47 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v48 = sub_18BB32DD8(v47, v28, v43);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x160)) = v48;
  v49 = v6 + *((*v11 & *v6) + 0x168);
  *v49 = 0;
  v49[10] = 0;
  *(v49 + 4) = 0;
  v50 = (v6 + *((*v11 & *v6) + 0x170));
  v51 = *(MEMORY[0x1E69DDCE0] + 16);
  *v50 = *MEMORY[0x1E69DDCE0];
  v50[1] = v51;
  v52 = (v6 + *((*v11 & *v6) + 0x178));
  *v52 = 0;
  v52[1] = 0;
  *(v6 + *((*v11 & *v6) + 0x180)) = 0;
  *(v6 + *((*v11 & *v6) + 0x188)) = v40;
  *(v6 + *((*v11 & *v6) + 0x190)) = 0;
  v53 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v54 = sub_18BB32DD8(v53, v13, *(v91 + 8));
  }

  else
  {
    v54 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x198)) = v54;
  *(v6 + *((*v11 & *v6) + 0x1A0)) = 0;
  v55 = *((*v11 & *v6) + 0x1A8);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  (*(*(updated - 8) + 56))(v6 + v55, 1, 1, updated);
  v57 = *((*v11 & *v6) + 0x1B0);
  sub_18B81F588(__src);
  memcpy(v6 + v57, __src, 0x139uLL);
  *(v6 + *((*v11 & *v6) + 0x1C8)) = 0;
  sub_18B84A364(v6 + *((*v11 & *v6) + 0x1D0));
  *(v6 + *((*v11 & *v6) + 0x1D8)) = a1;
  v58 = objc_opt_self();
  sub_18BC1E1A8();
  v59 = [v58 behaviorWithDampingRatio:1.0 response:0.3];
  if (v59)
  {
    v60 = v59;
    [v59 setTrackingDampingRatio:1.0 response:0.08 dampingRatioSmoothing:0.08 responseSmoothing:0.08];
    *(v6 + *((*v11 & *v6) + 0x1B8)) = v60;
    v61 = v6 + *((*v11 & *v6) + 0x1C0);
    *v61 = 0;
    v61[2] = 0;
    v88 = v60;
    v94.receiver = v6;
    v94.super_class = type metadata accessor for SFFluidCollectionView();
    v62 = objc_msgSendSuper2(&v94, sel_initWithFrame_, a2, a3, a4, a5);
    v63 = v62;
    sub_18BB2431C();
    v64 = *((*v11 & *v63) + 0x1D8);
    swift_beginAccess();
    v65 = *(v63 + v64);
    v66 = swift_getWitnessTable();
    v67 = *(*v65 + 440);
    v68 = v63;
    sub_18BC1E1A8();
    v67(v62, v66);

    v69 = *(**(v63 + v64) + 464);
    v70 = v68;
    v71 = MEMORY[0x1E69E7D40];
    v72 = v70;
    sub_18BC1E1A8();
    v69(v62);

    _s33SFFluidCollectionViewReuseManagerCMa();
    v73 = v72;
    v74 = sub_18BAC47C8();

    *(v73 + *((*v71 & *v73) + 0x190)) = v74;

    sub_18B7B0AC0(0, &qword_1EA9D5C30);
    v75 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];

    v76 = *((*v71 & *v73) + 0xF0);
    v77 = *(v73 + v76);
    *(v73 + v76) = v75;
    v78 = v75;

    if (v78)
    {
      [v73 addInteraction_];

      _s15DragCoordinatorCMa();
      v79 = v73;
      v80 = sub_18BA1EDE0(v79);
      v81 = MEMORY[0x1E69E7D40];
      v82 = *((*MEMORY[0x1E69E7D40] & *v79) + 0x108);
      v83 = *(v79 + v82);
      *(v79 + v82) = v80;

      _s15DropCoordinatorCMa();
      v84 = sub_18BAD9B70(v79);
      v85 = *((*v81 & *v79) + 0x110);
      v86 = *(v79 + v85);
      *(v79 + v85) = v84;

      v87 = sub_18BB48194();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SFFluidCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_18BB465B8()
{
  sub_18BB23214(&v1);
  sub_18BC1E1A8();

  sub_18BC1F0E8();
  swift_getWitnessTable();
  return sub_18BC20D28();
}

uint64_t sub_18BB466F4()
{
  sub_18BC1E3F8();
  v0 = sub_18BC210B8();

  return v0 & 1;
}

uint64_t sub_18BB467A4(uint64_t a1, uint64_t a2)
{
  sub_18BB66844(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_18BB467DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB4689C;
}

uint64_t sub_18BB468CC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BB4692C(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_18BB46A14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v12 = *(a1 + a2 - 32);
  v13 = *(a1 + a2 - 48);
  v11 = *(a1 + a2 - 16);
  v4 = sub_18BB65E00();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v4 = v6;
    *(v8 + 16) = v13;
    *(v8 + 32) = v12;
    *(v8 + 48) = v11;
    *(v8 + 64) = v6;
    *(v8 + 72) = v7;
    v9 = sub_18BB696F0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a3 = v9;
  a3[1] = v8;

  return sub_18B824D48(v4);
}

uint64_t sub_18BB46AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    v8 = *(v6 - 32);
    *(v7 + 16) = *(v6 - 48);
    *(v7 + 32) = v8;
    *(v7 + 48) = *(v6 - 16);
    *(v7 + 64) = v4;
    *(v7 + 72) = v5;
    v9 = sub_18BB696B8;
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  sub_18B824D48(v4);
  return sub_18BB46BAC(v9, v7);
}

uint64_t sub_18BB46B78()
{
  v0 = sub_18BB65E00();
  sub_18B824D48(v0);
  return v0;
}

uint64_t sub_18BB46BAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6);
}

uint64_t sub_18BB46CA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v12 = *(a1 + a2 - 32);
  v13 = *(a1 + a2 - 48);
  v11 = *(a1 + a2 - 16);
  v4 = sub_18BB668C4();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v4 = v6;
    *(v8 + 16) = v13;
    *(v8 + 32) = v12;
    *(v8 + 48) = v11;
    *(v8 + 64) = v6;
    *(v8 + 72) = v7;
    v9 = sub_18BB69684;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a3 = v9;
  a3[1] = v8;

  return sub_18B824D48(v4);
}

uint64_t sub_18BB46D64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18BB69644;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_18B824D48(v1);
  return sub_18BB46E28(v4, v3);
}

uint64_t sub_18BB46DF4()
{
  v0 = sub_18BB668C4();
  sub_18B824D48(v0);
  return v0;
}

uint64_t sub_18BB46E28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6);
}

uint64_t sub_18BB46F20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v12 = *(a1 + a2 - 32);
  v13 = *(a1 + a2 - 48);
  v11 = *(a1 + a2 - 16);
  v4 = sub_18BB66928();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v4 = v6;
    *(v8 + 16) = v13;
    *(v8 + 32) = v12;
    *(v8 + 48) = v11;
    *(v8 + 64) = v6;
    *(v8 + 72) = v7;
    v9 = sub_18BB69610;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a3 = v9;
  a3[1] = v8;

  return sub_18B824D48(v4);
}

uint64_t sub_18BB46FE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18BB695D0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_18B824D48(v1);
  return sub_18BB470A4(v4, v3);
}

uint64_t sub_18BB47070()
{
  v0 = sub_18BB66928();
  sub_18B824D48(v0);
  return v0;
}

uint64_t sub_18BB470A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6);
}

uint64_t sub_18BB47208(uint64_t a1, uint64_t a2)
{
  sub_18BB6698C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_18BB47240(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB69910;
}

uint64_t sub_18BB4736C(uint64_t a1, uint64_t a2)
{
  sub_18BB66A0C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_18BB473A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB69910;
}

uint64_t sub_18BB47464(uint64_t a1)
{
  v2 = sub_18BC21848();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_18BB475F4(v5);
}

uint64_t sub_18BB47534@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_18BB475F4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_18BB477A4(uint64_t a1, uint64_t a2)
{
  sub_18BB66A8C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_18BB477DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB69910;
}

void sub_18BB4789C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_18BB47924()
{
  v0 = sub_18BB48194();
  v1 = *&v0[qword_1EA9D4750];

  return v1;
}

void sub_18BB47968(char a1)
{
  v2 = a1 & 1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18B8657E0();

    if ((*(v1 + v3) & 1) == 0)
    {
      v4 = sub_18BB48194();
      sub_18B9A45D8();
    }
  }
}

uint64_t sub_18BB47A44()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BB47AA4(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_18BB47968(v4);
}

void (*sub_18BB47B18(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_18BB47BC8;
}

void sub_18BB47BC8(uint64_t a1)
{
  v1 = *a1;
  sub_18BB47AA4(*(*a1 + 32));

  free(v1);
}

void *sub_18BB47C08()
{
  v0 = sub_18BB65B38();
  v1 = v0;
  return v0;
}

void sub_18BB47C34(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18BB47CDC(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_18BB47D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  swift_beginAccess();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_18BB47DCC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  swift_beginAccess();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_18BB47E94(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_18BB47EC4(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x130);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_18BB47FD8(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x158));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_18BB48040@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x168);
  v3 = *v2;
  v4 = *(v2 + 4);
  LOBYTE(v2) = v2[10];
  *a1 = v3;
  *(a1 + 10) = v2;
  *(a1 + 8) = v4;
  return sub_18BC1E3F8();
}

uint64_t sub_18BB48084(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 10);
  v4 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x168);
  *v4 = *a1;
  v4[10] = v3;
  *(v4 + 4) = v2;
}

void sub_18BB48100(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x170));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_18BB48164(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x178));
  *v3 = a1;
  v3[1] = a2;
}

char *sub_18BB48194()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x180);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    _s21MultiSelectControllerCMa();
    v4 = v0;
    v5 = sub_18B9A3C38(v0);
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_18BB4826C()
{
  swift_beginAccess();
  sub_18BC1E3F8();
  v0 = sub_18BC21028();

  if ((v0 & 1) == 0)
  {
    sub_18BB542F0();
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18B8657E0();
  }

  return result;
}

uint64_t sub_18BB4838C()
{
  sub_18BB65A78();

  return sub_18BC1E3F8();
}

uint64_t sub_18BB483B4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_18BB4826C();
}

void (*sub_18BB48434(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_18BC1E3F8();
  return sub_18BB484EC;
}

void sub_18BB484EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = sub_18BC1E3F8();
    sub_18BB483B4(v4);
  }

  else
  {
    sub_18BB483B4(v3);
  }

  free(v2);
}

uint64_t sub_18BB48550@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
  swift_beginAccess();
  return sub_18B7CA054(v1 + v3, a1, &unk_1EA9D9CA0);
}

uint64_t sub_18BB485D4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
  swift_beginAccess();
  sub_18B7FD070(a1, v1 + v3, &unk_1EA9D9CA0);
  return swift_endAccess();
}

uint64_t sub_18BB486DC()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0);
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t sub_18BB48734(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8);
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    return sub_18BB55208();
  }

  return result;
}

id sub_18BB487AC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *(v5 + 0x1D8);
  result = swift_beginAccess();
  v8 = *&v1[v6];
  if (v8 != a1)
  {
    v16 = *(v5 + 80);
    v17 = *(v5 + 96);
    v18 = *(v5 + 112);
    type metadata accessor for SFFluidCollectionView();
    WitnessTable = swift_getWitnessTable();
    v10 = *(*v8 + 440);
    sub_18BC1E1A8();
    v11 = v2;
    v10(v2, WitnessTable);

    v12 = *(**&v2[v6] + 464);
    v13 = v11;
    sub_18BC1E1A8();
    v12(v2);

    sub_18BC1E1A8();
    sub_18B8657E0();

    v14 = &v13[*((*v4 & *v13) + 0x158)];
    v15 = *(MEMORY[0x1E695F050] + 16);
    *v14 = *MEMORY[0x1E695F050];
    *(v14 + 1) = v15;
    return [v13 setNeedsLayout];
  }

  return result;
}

uint64_t sub_18BB489A0()
{
  sub_18BB65AD8();

  return sub_18BC1E1A8();
}

uint64_t sub_18BB489C8(uint64_t a1)
{
  sub_18BB66B0C(a1);
}

void (*sub_18BB48A00(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_18BC1E1A8();
  return sub_18BB48AB8;
}

void sub_18BB48AB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = sub_18BC1E1A8();
    sub_18BB66B0C(v4);
  }

  else
  {
    sub_18BB66B0C(v3);
  }

  free(v2);
}

uint64_t sub_18BB48B2C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & *v1);
  v6 = v5[6];
  v19[0] = v5[5];
  v19[1] = v6;
  v19[2] = v5[7];
  v20.receiver = v1;
  v20.super_class = type metadata accessor for SFFluidCollectionView();
  objc_msgSendSuper2(&v20, sel_traitCollectionDidChange_, a1);
  v7 = *((*v4 & *v1) + 0x1D8);
  result = swift_beginAccess();
  if (a1)
  {
    v9 = *(**(v2 + v7) + 544);
    sub_18BC1E1A8();
    LOBYTE(v9) = v9(a1);

    if (v9)
    {
      v10 = *((*v4 & *v2) + 0x1D8);
      swift_beginAccess();
      v11 = *(**(v2 + v10) + 552);
      sub_18BC1E1A8();
      v11(v19, a1);

      v12 = *&v19[0];
      v13 = BYTE8(v19[0]);
      LOBYTE(v11) = BYTE9(v19[0]);
      v14 = BYTE10(v19[0]);
      swift_beginAccess();
      v15 = v12;
      v16 = v13;
      v17 = v11;
      v18 = v14;
      sub_18BC1E1A8();
      sub_18B82F6F4(&v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BB48D54(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_18BB48B2C(a3);
}

uint64_t sub_18BB48DC0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  v4 = v3[6];
  v30[0] = v3[5];
  v30[1] = v4;
  v30[2] = v3[7];
  v31.receiver = v0;
  v31.super_class = type metadata accessor for SFFluidCollectionView();
  objc_msgSendSuper2(&v31, sel_safeAreaInsetsDidChange);
  v5 = *((*v2 & *v0) + 0x1D8);
  swift_beginAccess();
  v6 = (v1 + *((*v2 & *v1) + 0x170));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = *(**(v1 + v5) + 560);
  v12 = sub_18BC1E1A8();
  v13 = v11(v12, v7, v8, v9, v10);

  if (v13)
  {
    v15 = *((*v2 & *v1) + 0x1D8);
    swift_beginAccess();
    v16 = (v1 + *((*v2 & *v1) + 0x170));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(**(v1 + v15) + 568);
    v22 = sub_18BC1E1A8();
    v21(v30, v22, v17, v18, v19, v20);

    v23 = *&v30[0];
    LOBYTE(v21) = BYTE8(v30[0]);
    v24 = BYTE9(v30[0]);
    v25 = BYTE10(v30[0]);
    swift_beginAccess();
    v26 = v23;
    v27 = v21;
    v28 = v24;
    v29 = v25;
    sub_18BC1E1A8();
    sub_18B82F6F4(&v26);
  }

  return result;
}

void sub_18BB4905C(void *a1)
{
  v1 = a1;
  sub_18BB48DC0();
}

uint64_t sub_18BB490A4(void *a1)
{
  v1 = a1;
  v2 = sub_18BB490D8();

  return v2 & 1;
}

uint64_t sub_18BB490D8()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 adjustedContentInset];
  v12 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v0 contentSize];
  v20 = v19;
  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  Width = CGRectGetWidth(v31);
  if (v20 > Width)
  {
    Width = v20;
  }

  v22 = _SFRoundFloatToPixels(Width);
  [v0 contentSize];
  v24 = v23;
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  Height = CGRectGetHeight(v32);
  if (v24 > Height)
  {
    Height = v24;
  }

  v33.size.height = _SFRoundFloatToPixels(Height);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v22;
  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = v16;
  v34.size.height = v18;
  if (!CGRectContainsRect(v33, v34))
  {
    return 1;
  }

  v27 = v1[5];
  v28 = v1[6];
  v29 = v1[7];
  v30.receiver = v0;
  v30.super_class = type metadata accessor for SFFluidCollectionView();
  return objc_msgSendSuper2(&v30, sel_tracksImmediatelyWhileDecelerating, v27, v28, v29);
}

uint64_t sub_18BB49280(uint64_t a1, double a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  if (!*(v3 + *(v8 + 0x128)))
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
    v10 = *((*v7 & *v3) + 0x128);
    v11 = *(v3 + v10);
    *(v3 + v10) = v9;
    v12 = v9;

    v13 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
    v14 = *((*v7 & *v3) + 0x130);
    v15 = *(v3 + v14);
    *(v3 + v14) = v13;
    v16 = v13;

    v17 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18BC41E60;
    *(v18 + 32) = v12;
    *(v18 + 40) = v16;
    sub_18B7B0AC0(0, &qword_1EA9D50B0);
    v19 = v12;
    v20 = v16;
    v21 = sub_18BC20D88();

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = *(v8 + 80);
    *(v23 + 32) = *(v8 + 96);
    *(v23 + 40) = *(v8 + 104);
    *(v23 + 56) = *(v8 + 120);
    *(v23 + 64) = v22;
    v62 = sub_18BB694F4;
    v63 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_18B7B0DB0;
    v61 = &block_descriptor_100;
    v24 = _Block_copy(&aBlock);

    [v17 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
    _Block_release(v24);

    v25 = swift_allocObject();
    v25[2] = v3;
    v25[3] = v19;
    v25[4] = v20;
    v62 = sub_18B9D4EAC;
    v63 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_18B7B0DB0;
    v61 = &block_descriptor_106_0;
    v26 = _Block_copy(&aBlock);
    v27 = v19;
    v28 = v20;
    v29 = v3;
    v7 = MEMORY[0x1E69E7D40];

    [v17 _performWithoutRetargetingAnimations_];
    _Block_release(v26);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v3;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = *(v8 + 80);
  *(v32 + 32) = *(v8 + 96);
  *(v32 + 40) = *(v8 + 104);
  *(v32 + 56) = *(v8 + 120);
  *(v32 + 64) = v31;
  sub_18B7CA054(a1, &v56, &unk_1EA9D5060);
  if (v57)
  {
    sub_18B7C3FA4(&v56, &aBlock);
    v33 = *__swift_project_boxed_opaque_existential_1Tm(&aBlock, v61);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_18B9D4F1C;
    *(v34 + 24) = v30;
    swift_beginAccess();
    v35 = *(v33 + 24);
    v36 = v3;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_18B9B5814(0, v35[2] + 1, 1, v35);
      *(v33 + 24) = v35;
    }

    v39 = v35[2];
    v38 = v35[3];
    if (v39 >= v38 >> 1)
    {
      v35 = sub_18B9B5814((v38 > 1), v39 + 1, 1, v35);
    }

    v35[2] = v39 + 1;
    v40 = &v35[2 * v39];
    v40[4] = sub_18B7D1E94;
    v40[5] = v34;
    *(v33 + 24) = v35;
    swift_endAccess();
    v41 = __swift_project_boxed_opaque_existential_1Tm(&aBlock, v61);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_18BB6950C;
    *(v42 + 24) = v32;
    v43 = *v41;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_18BB69540;
    *(v44 + 24) = v42;
    swift_beginAccess();
    v45 = *(v43 + 32);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 32) = v45;
    if ((v46 & 1) == 0)
    {
      v45 = sub_18B9B5814(0, v45[2] + 1, 1, v45);
      *(v43 + 32) = v45;
    }

    v48 = v45[2];
    v47 = v45[3];
    if (v48 >= v47 >> 1)
    {
      v45 = sub_18B9B5814((v47 > 1), v48 + 1, 1, v45);
    }

    v45[2] = v48 + 1;
    v49 = &v45[2 * v48];
    v49[4] = sub_18B9D53B0;
    v49[5] = v44;
    *(v43 + 32) = v45;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  else
  {
    v51 = v3;
    sub_18B988BAC(&v56, &unk_1EA9D5060);
    v52 = objc_opt_self();
    v53 = *(v51 + *((*v7 & *v51) + 0x1B8));
    v62 = sub_18B9D4F1C;
    v63 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_18B7B0DB0;
    v61 = &block_descriptor_116;
    v54 = _Block_copy(&aBlock);
    sub_18BC1E1A8();
    swift_unknownObjectRetain();

    v62 = sub_18BB6950C;
    v63 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_18B8043A0;
    v61 = &block_descriptor_119;
    v55 = _Block_copy(&aBlock);
    sub_18BC1E1A8();

    [v52 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v55);
    _Block_release(v54);
    return swift_unknownObjectRelease();
  }
}

void sub_18BB49A44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18BB49B28();
  }
}

void sub_18BB49A98(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_18B82A0C0();
    }
  }
}

void sub_18BB49B28()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x128));
  if (v2)
  {
    v13 = v2;
    if (([v13 isInvalidated] & 1) != 0 || (v3 = *(v0 + *((*v1 & *v0) + 0x130))) == 0)
    {
      v4 = v13;
    }

    else
    {
      v12 = v3;
      if (([v12 isInvalidated] & 1) == 0)
      {
        *(v0 + *((*v1 & *v0) + 0x138)) = 1;
        v5 = objc_opt_self();
        v6 = swift_allocObject();
        v6[2] = v0;
        v6[3] = v13;
        v6[4] = v12;
        v7 = swift_allocObject();
        *(v7 + 16) = sub_18B9D4F80;
        *(v7 + 24) = v6;
        aBlock[4] = sub_18B7D1E94;
        aBlock[5] = v7;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_18B7E3BF4;
        aBlock[3] = &block_descriptor_91;
        v8 = _Block_copy(aBlock);
        v9 = v13;
        v10 = v12;
        v11 = v0;
        sub_18BC1E1A8();

        [v5 performWithoutAnimation_];

        _Block_release(v8);
        LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

        if (v5)
        {
          __break(1u);
        }

        else
        {
          *(v11 + *((*v1 & *v11) + 0x138)) = 0;
        }

        return;
      }

      v4 = v12;
    }
  }
}

uint64_t sub_18BB49DC8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0);
  if (*v3 == 1)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0);
    swift_beginAccess();
    memcpy(__dst, v1 + v4, 0x139uLL);
    memcpy(__src, v1 + v4, 0x139uLL);
    if (sub_18B81CA10(__src) != 1)
    {
      v5 = *((*v2 & *v1) + 0x1D8);
      swift_beginAccess();
      v6 = *(v1 + v5);
      memcpy(v18, __src, 0x139uLL);
      v7 = *(*v6 + 416);
      sub_18B7CA054(__dst, v17, &qword_1EA9D5100);
      sub_18BC1E1A8();
      v7(v18);

      sub_18B988BAC(__dst, &qword_1EA9D5100);
      v3[2] = 1;
    }

    *v3 = 0;
    swift_beginAccess();
    v8 = (*(v1 + *((*v2 & *v1) + 0x90)) + qword_1EA9D95C0);
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[2];
    v18[1] = v8[1];
    v18[2] = v10;
    v18[0] = v9;
    sub_18BC1E1A8();
    sub_18B7CA054(v18, v17, &unk_1EA9D4F90);
    sub_18BB438EC(v18);

    sub_18B988BAC(v18, &unk_1EA9D4F90);
    [v1 safeAreaInsets];
    v11 = (v1 + *((*v2 & *v1) + 0x170));
    *v11 = v12;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v3[1] = 1;
    return sub_18BB4A0D0(v1);
  }

  else
  {

    return sub_18BB4A0D0(v0);
  }
}

uint64_t sub_18BB4A0D0(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1D8);
  swift_beginAccess();
  v4 = *(a1 + v3);
  swift_beginAccess();
  v5 = v4[7];
  v15 = v4[6];
  v16 = v5;
  v17[0] = v4[8];
  *(v17 + 9) = *(v4 + 137);
  v6 = a1 + *((*v2 & *a1) + 0x1D0);
  swift_beginAccess();
  v7 = *(v6 + 1);
  v18[0] = *v6;
  v18[1] = v7;
  v19[0] = *(v6 + 2);
  *(v19 + 9) = *(v6 + 41);
  v8 = v16;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v17[0];
  *(v6 + 41) = *(v17 + 9);
  sub_18B7CA054(&v15, v14, &unk_1EA9D50C0);
  sub_18B988BAC(v18, &unk_1EA9D50C0);
  v9 = *((*v2 & *a1) + 0xE0);
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11)
  {
    swift_beginAccess();
    v12 = v11;
    v13 = sub_18BC1E3F8();
    sub_18BBA6EF8(v13, v6, v12);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_18BB4A2A8(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & *a2);
  v6 = v5[6];
  v13[0] = v5[5];
  v13[1] = v6;
  v13[2] = v5[7];
  v7 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  (*(v8 + 32))(v13 - v10, a1, v7, v9);
  (*((*v4 & *a2) + 0xB0))(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_18BB4A40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  sub_18B81FB48(__src);
  memcpy(__dst, __src, 0x139uLL);
  if (sub_18B81CA10(__dst) == 1)
  {
    memcpy(v30, __src, 0x139uLL);
    v6 = v5[10];
    v7 = v5[11];
    v8 = v5[12];
    v9 = v5[13];
    v11 = v5[14];
    v10 = v5[15];
    *&v31 = v6;
    *(&v31 + 1) = v7;
    *&v32 = v8;
    *(&v32 + 1) = v9;
    *&v33[0] = v11;
    *(&v33[0] + 1) = v10;
    type metadata accessor for SFFluidCollectionView.Update();
    v12 = sub_18BC21848();
    (*(*(v12 - 8) + 8))(v30, v12);
    *&v31 = v6;
    *(&v31 + 1) = v7;
    *&v32 = v8;
    *(&v32 + 1) = v9;
    *&v33[0] = v11;
    *(&v33[0] + 1) = v10;
    v13 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    v27 = __src[2];
    v28 = __src[3];
    v29[0] = __src[4];
    *(v29 + 9) = *(&__src[4] + 9);
    memcpy(v30, __src, 0x139uLL);
    v16 = v5[11];
    v17 = v5[12];
    v18 = v5[13];
    v20 = v5[14];
    v19 = v5[15];
    *&v31 = v5[10];
    v15 = v31;
    *(&v31 + 1) = v16;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    *&v33[0] = v20;
    *(&v33[0] + 1) = v19;
    v21 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
    v22 = *(v21 - 1);
    (*(v22 + 16))(&v31, &v27, v21);
    *&v31 = v15;
    *(&v31 + 1) = v16;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    *&v33[0] = v20;
    *(&v33[0] + 1) = v19;
    type metadata accessor for SFFluidCollectionView.Update();
    v23 = sub_18BC21848();
    (*(*(v23 - 8) + 8))(v30, v23);
    v24 = v27;
    v25 = v28;
    *v26 = v29[0];
    *&v26[9] = *(v29 + 9);
    sub_18BBA56B0(a1, v21, a2);
    v31 = v24;
    v32 = v25;
    v33[0] = *v26;
    *(v33 + 9) = *&v26[9];
    return (*(v22 + 8))(&v31, v21);
  }
}

uint64_t sub_18BB4A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  sub_18B7CA054(a1, &v17 - v6, &unk_1EA9D92F0);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  else
  {
    v8 = *v2;
    sub_18B988BAC(v7, &unk_1EA9D92F0);
    if (*(v8 + 16) && (v9 = sub_18B83B1C8(a1), (v10 & 1) != 0))
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
      v14 = *(v13 - 8);
      sub_18B7CA054(v12 + *(v14 + 72) * v11, a2, &unk_1EA9D4F40);
      return (*(v14 + 56))(a2, 0, 1, v13);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
      return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  return result;
}

uint64_t sub_18BB4A908()
{
  v1 = v0;
  v2 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v164 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v165 = &v157 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v157 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v190 = &v157 - v13;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v176);
  v15 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v157 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v191 = &v157 - v21;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v182 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v23 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v157 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v157 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v157 - v31;
  *&v34 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
  v179 = &v157 - v35;
  [v1 bounds];
  v36 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x158));
  result = CGRectEqualToRect(v202, *v36);
  if (result)
  {
    return result;
  }

  v166 = v26;
  v171 = v15;
  v168 = v6;
  if (qword_1EA9D2280 == -1)
  {
    goto LABEL_3;
  }

LABEL_63:
  swift_once();
LABEL_3:
  v38 = sub_18BC1F2C8();
  v39 = __swift_project_value_buffer(v38, qword_1EA9F7E38);
  v40 = v1;
  v172 = v39;
  v41 = sub_18BC1F2A8();
  v42 = sub_18BC21228();

  v43 = os_log_type_enabled(v41, v42);
  v181 = v40;
  v167 = v23;
  v160 = v29;
  v158 = v36;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v195[0] = v45;
    *v44 = 136446210;
    [v40 bounds];
    v196[0] = v46;
    v196[1] = v47;
    v196[2] = v48;
    v196[3] = v49;
    type metadata accessor for CGRect(0);
    v50 = sub_18BC20BF8();
    v52 = sub_18B7EA850(v50, v51, v195);

    *(v44 + 4) = v52;
    v40 = v181;
    _os_log_impl(&dword_18B7AC000, v41, v42, "Getting layout attributes for elements in %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v53 = v45;
    v54 = &selRef_accessoryButtonAlpha;
    MEMORY[0x18CFFEEE0](v53, -1, -1);
    MEMORY[0x18CFFEEE0](v44, -1, -1);
  }

  else
  {

    v54 = &selRef_accessoryButtonAlpha;
  }

  v197 = MEMORY[0x1E69E7CD0];
  v55 = MEMORY[0x1E69E7D40];
  v56 = (v40 + *((*MEMORY[0x1E69E7D40] & *v40) + 0x1D0));
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  v59 = v56[2];
  *(v201 + 9) = *(v56 + 41);
  v200[1] = v58;
  v201[0] = v59;
  v200[0] = v57;
  sub_18B7CA054(v200, v196, &unk_1EA9D50C0);
  [v40 v54[265]];
  v64 = sub_18B86A664(v60, v61, v62, v63);
  sub_18B988BAC(v200, &unk_1EA9D50C0);
  v36 = (v64 + 56);
  v65 = *(v64 + 56);
  v178 = v64;
  v66 = 1 << *(v64 + 32);
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  else
  {
    v67 = -1;
  }

  v23 = v67 & v65;
  v68 = *v55;
  v69 = *((*v55 & *v40) + 0x150);
  v70 = *((*v55 & *v40) + 0x100);
  v71 = *((v68 & *v40) + 0x1B0);
  v72 = v68 & *v40;
  v159 = v1;
  v73 = *(v72 + 472);
  v188 = v69;
  swift_beginAccess();
  v173 = v71;
  swift_beginAccess();
  v170 = v73;
  swift_beginAccess();
  v177 = v70;
  swift_beginAccess();
  v1 = 0;
  v74 = (v66 + 63) >> 6;
  v183 = (v182 + 48);
  v169 = (v182 + 56);
  v29 = &unk_18BC42E70;
  *&v75 = 136446210;
  v161 = v75;
  v174 = v74;
  v175 = v36;
  v184 = v11;
  v187 = v32;
  if (v23)
  {
    while (1)
    {
      v80 = v40;
      v81 = v32;
      v82 = v11;
LABEL_18:
      v84 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v85 = v179;
      sub_18B7CA054(*(v178 + 48) + *(v182 + 72) * (v84 | (v1 << 6)), v179, &unk_1EA9D4F40);
      sub_18B7CF39C(v85, v81, &unk_1EA9D4F40);
      v86 = v191;
      sub_18B7CA054(v81, v191, &unk_1EA9D92F0);
      v87 = v180;
      sub_18B7CA054(v86, v180, &unk_1EA9D92F0);
      v88 = v186;
      sub_18B842590(v186, v87);
      sub_18B988BAC(v88, &unk_1EA9D92F0);
      v89 = v189;
      v40 = v80;
      v90 = *(v80 + v188);
      v11 = v82;
      if (!*(v90 + 16))
      {
        goto LABEL_31;
      }

      sub_18BC1E3F8();
      v91 = sub_18B83B1C8(v191);
      if ((v92 & 1) == 0)
      {

        goto LABEL_31;
      }

      v93 = *(*(v90 + 56) + 8 * v91);
      sub_18BC1E1A8();

      v94 = *(v40 + v177);
      if ((v94 & 0xC000000000000001) != 0)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v95 = sub_18BC219E8();

        if ((v95 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_22:
        sub_18B988BAC(v191, &unk_1EA9D92F0);
        v32 = v187;
        v29 = &unk_18BC42E70;
        sub_18B988BAC(v187, &unk_1EA9D4F40);
        v74 = v174;
        v36 = v175;
        if (!v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (*(v94 + 16))
        {
          sub_18BC22158();
          MEMORY[0x18CFFD660](v93);
          v96 = sub_18BC221A8();
          v97 = -1 << *(v94 + 32);
          v98 = v96 & ~v97;
          if ((*(v94 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
          {
            v99 = ~v97;
            while (*(*(v94 + 48) + 8 * v98) != v93)
            {
              v98 = (v98 + 1) & v99;
              if (((*(v94 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_22;
          }
        }

LABEL_30:

LABEL_31:
        memcpy(v195, v40 + v173, 0x139uLL);
        memcpy(v194, v40 + v173, 0x139uLL);
        memcpy(v196, v40 + v173, 0x139uLL);
        if (sub_18B81CA10(v196) == 1)
        {
          memcpy(v193, v194, 0x139uLL);
          sub_18B7CA054(v195, v192, &qword_1EA9D5100);
          sub_18B988BAC(v193, &qword_1EA9D5100);
          (*v169)(v82, 1, 1, v89);
        }

        else
        {
          v198[0] = v194[2];
          v198[1] = v194[3];
          v199[0] = v194[4];
          *(v199 + 9) = *(&v194[4] + 9);
          memcpy(v193, v194, 0x139uLL);
          sub_18B7CA054(v195, v192, &qword_1EA9D5100);
          sub_18B7CA054(v198, v192, &unk_1EA9D50C0);
          sub_18B988BAC(v193, &qword_1EA9D5100);
          sub_18BB4A6CC(v191, v82);
          sub_18B988BAC(v198, &unk_1EA9D50C0);
          v100 = *v183;
          if ((*v183)(v82, 1, v89) != 1)
          {
            v185 = v100;
            v114 = v190;
            sub_18B7CF39C(v82, v190, &unk_1EA9D4F40);
            (*v169)(v114, 0, 1, v89);
            v113 = v187;
            goto LABEL_42;
          }
        }

        v101 = v171;
        v102 = *(v40 + v170);
        sub_18B7CA054(v191, v171, &unk_1EA9D92F0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
          v105 = swift_projectBox();
          v106 = *(v104 + 48);
          sub_18B833990(v105, v194);
          v107 = v186;
          sub_18B7CA054(v105 + v106, v186, &unk_1EA9D92F0);
          v108 = *(*v102 + 496);
          sub_18BC1E1A8();
          v108(v194, v107);

          sub_18B988BAC(v107, &unk_1EA9D92F0);
          sub_18B833D9C(v194);
        }

        else
        {
          if (EnumCaseMultiPayload != 1)
          {
            result = sub_18BC21CF8();
            __break(1u);
            return result;
          }

          v109 = v164;
          sub_18B85A83C(v101, v164, _s4ItemVMa_2);
          v110 = *(*v102 + 488);
          sub_18BC1E1A8();
          v110(v109);

          sub_18BB69570(v109, _s4ItemVMa_2);
        }

        v111 = v184;
        v89 = v189;
        v185 = *v183;
        v112 = v185(v184, 1, v189);
        v113 = v187;
        if (v112 != 1)
        {
          sub_18B988BAC(v111, &unk_1EA9D9300);
        }

        v40 = v181;
LABEL_42:
        v115 = *(v40 + v188);
        if (!*(v115 + 16))
        {
          goto LABEL_48;
        }

        sub_18BC1E3F8();
        v116 = sub_18B83B1C8(v191);
        if ((v117 & 1) == 0)
        {

LABEL_48:
          v123 = v113;
          v124 = v166;
          sub_18B7CA054(v123, v166, &unk_1EA9D4F40);
          v125 = sub_18BC1F2A8();
          v126 = sub_18BC21228();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v162 = v125;
            v163 = v128;
            *&v194[0] = v128;
            *v127 = v161;
            v129 = v186;
            sub_18B7CA054(v124, v186, &unk_1EA9D92F0);
            sub_18B988BAC(v124, &unk_1EA9D4F40);
            v130 = sub_18BB434DC();
            v132 = v131;
            sub_18B988BAC(v129, &unk_1EA9D92F0);
            v133 = v189;
            v134 = sub_18B7EA850(v130, v132, v194);
            v40 = v181;

            *(v127 + 4) = v134;
            v135 = v162;
            _os_log_impl(&dword_18B7AC000, v162, v126, "Creating info for %{public}s", v127, 0xCu);
            v136 = v163;
            __swift_destroy_boxed_opaque_existential_1Tm(v163);
            MEMORY[0x18CFFEEE0](v136, -1, -1);
            MEMORY[0x18CFFEEE0](v127, -1, -1);

            v137 = v168;
          }

          else
          {
            sub_18B988BAC(v124, &unk_1EA9D4F40);

            v137 = v168;
            v133 = v189;
          }

          sub_18B7CA054(v190, v137, &unk_1EA9D9300);
          v138 = v185;
          v139 = v185(v137, 1, v133) == 1;
          v140 = v167;
          if (v139)
          {
            v76 = v187;
            sub_18B7CA054(v187, v167, &unk_1EA9D4F40);
            v141 = v138(v137, 1, v133);
            v36 = v175;
            if (v141 != 1)
            {
              sub_18B988BAC(v137, &unk_1EA9D9300);
            }
          }

          else
          {
            v76 = v187;
            sub_18B7CF39C(v137, v167, &unk_1EA9D4F40);
            v36 = v175;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0);
          swift_allocObject();
          v77 = sub_18BB65BC4(v140);
          v78 = v188;
          swift_beginAccess();
          swift_retain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v193[0] = *(v40 + v78);
          *(v40 + v78) = 0x8000000000000000;
          sub_18BAA7FE0(v77, v191, isUniquelyReferenced_nonNull_native);
          *(v40 + v78) = v193[0];
          swift_endAccess();
          v32 = v76;
          v11 = v184;
          goto LABEL_12;
        }

        v77 = *(*(v115 + 56) + 8 * v116);
        sub_18BC1E1A8();

        v118 = v165;
        sub_18B7CA054(v190, v165, &unk_1EA9D9300);
        v119 = v185;
        if (v185(v118, 1, v89) == 1)
        {
          v120 = v113;
          v121 = v160;
          v185 = v119;
          sub_18B7CA054(v120, v160, &unk_1EA9D4F40);
          v122 = v185(v118, 1, v89);
          sub_18BC1E1A8();
          v36 = v175;
          if (v122 != 1)
          {
            sub_18B988BAC(v165, &unk_1EA9D9300);
          }
        }

        else
        {
          v121 = v160;
          sub_18B7CF39C(v118, v160, &unk_1EA9D4F40);
          sub_18BC1E1A8();
          v36 = v175;
        }

        v142 = *(*v77 + 184);
        swift_beginAccess();
        sub_18B7FD070(v121, &v77[v142], &unk_1EA9D4F40);
        swift_endAccess();
        v11 = v184;
        v32 = v187;
LABEL_12:
        swift_beginAccess();
        sub_18BB5E9EC(v193, v77);
        swift_endAccess();

        sub_18B988BAC(v190, &unk_1EA9D9300);
        sub_18B988BAC(v191, &unk_1EA9D92F0);
        v29 = &unk_18BC42E70;
        sub_18B988BAC(v32, &unk_1EA9D4F40);
        v74 = v174;
        if (!v23)
        {
          goto LABEL_14;
        }
      }
    }
  }

  while (1)
  {
LABEL_14:
    v83 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v83 >= v74)
    {
      break;
    }

    v23 = *(&v36->origin.x + v83);
    v1 = (v1 + 1);
    if (v23)
    {
      v80 = v40;
      v81 = v32;
      v82 = v11;
      v1 = v83;
      goto LABEL_18;
    }
  }

  v143 = sub_18BC1F2A8();
  v144 = sub_18BC21228();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v196[0] = v146;
    *v145 = 136315138;
    swift_beginAccess();
    sub_18B8441B4();
    sub_18BC1E3F8();
    v147 = sub_18BC20FE8();
    v149 = v148;

    v150 = sub_18B7EA850(v147, v149, v196);

    *(v145 + 4) = v150;
    _os_log_impl(&dword_18B7AC000, v143, v144, "Elements in bounds: %s", v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v146);
    MEMORY[0x18CFFEEE0](v146, -1, -1);
    MEMORY[0x18CFFEEE0](v145, -1, -1);
  }

  p_x = &v158->origin.x;
  swift_beginAccess();
  v152 = v181;
  *(v181 + *((*MEMORY[0x1E69E7D40] & *v181) + 0x160)) = v197;
  sub_18BC1E3F8();

  [v152 bounds];
  *p_x = v153;
  p_x[1] = v154;
  p_x[2] = v155;
  p_x[3] = v156;
}

uint64_t sub_18BB4BD08(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    result = sub_18BC210A8();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    result = sub_18BC1E3F8();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_13:
    v14 = (v11 - 1) & v11;
    v15 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    sub_18BC1E1A8();
    if (!v15)
    {
      return sub_18B7D2E34();
    }

    while (1)
    {
      v16 = *(*v15 + 208);
      v17 = *(v15 + v16);
      *(v15 + v16) = 0;

      sub_18BAC0220();
      sub_18BABFFF0();

      v5 = v12;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_18BC219D8())
      {
        _s8ItemInfoCMa();
        sub_18BC21FA8();
        swift_unknownObjectRelease();
        v15 = v18;
        v12 = v5;
        v14 = v6;
        if (v18)
        {
          continue;
        }
      }

      return sub_18B7D2E34();
    }
  }

  v13 = v5;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      return sub_18B7D2E34();
    }

    v11 = *(v3 + 8 * v12);
    ++v13;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_18BB4BF4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8));
  swift_beginAccess();
  v8 = *v7;
  if (!*v7)
  {
    return 0;
  }

  sub_18B824D48(v8);
  v9 = v8(v3, a1);
  sub_18B7B171C(v8);
  v10 = (v3 + *((*v6 & *v3) + 0xA0));
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    sub_18B824D48(v11);
    v11(a1, v9);
    sub_18B7B171C(v11);
  }

  swift_beginAccess();
  sub_18BC1E3F8();
  v12 = sub_18BC210B8();

  (*((*v6 & *v9) + 0xB0))(v12 & 1);
  (*((*v6 & *v9) + 0xC8))(0);
  v13 = v9;
  sub_18BB4F0C8(a2, v9, a1);

  return v9;
}

BOOL sub_18BB4C190(uint64_t a1)
{
  v2 = v1;
  v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v19 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v4 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  if (*(a1 + *(v4 + 68)) == 0.0)
  {
    return 0;
  }

  v6 = v4;
  [v2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v22.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v6);
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  return CGRectIntersectsRect(v21, v22);
}

void sub_18BB4C28C(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v85 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  aBlock = v85;
  v92 = v4;
  v84 = v4;
  v83 = v5;
  v93 = v5;
  v94 = v6;
  v82 = v6;
  v81 = v7;
  v95 = v7;
  v96 = v8;
  v80 = v8;
  v79 = type metadata accessor for SFFluidCollectionView.Element();
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v68 - v9;
  v90 = a1;
  v76 = (v10 + 16);
  v75 = (v10 + 8);
  v72 = &v93;
  v71 = *MEMORY[0x1E695DA28];
  sub_18BC1E3F8();
  v86 = 0;
  *&v11 = 134218242;
  v68 = v11;
  v73 = v1;
  while (1)
  {
LABEL_3:
    v89 = a1;
    sub_18BC1E3F8();
    aBlock = v85;
    v92 = v84;
    v93 = v83;
    v94 = v82;
    v95 = v81;
    v96 = v80;
    v12 = _s8ItemInfoCMa();
    WitnessTable = swift_getWitnessTable();
    v14 = sub_18BC210E8();
    v15 = swift_getWitnessTable();
    sub_18BC21188();
    v16 = v88;

    if (!v16)
    {

      return;
    }

    v78 = v15;
    v17 = *(*v16 + 184);
    swift_beginAccess();
    v18 = v16 + v17;
    v19 = v77;
    v20 = v79;
    (*v76)(v77, v18, v79);
    sub_18BC1E3F8();
    swift_getWitnessTable();
    v21 = sub_18BC210B8();

    (*v75)(v19, v20);
    v22 = sub_18BB4EC98(v16);
    v24 = v23;
    v25 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
    *(&v68 - 4) = v16;
    *(&v68 - 3) = v2;
    v26 = v21 & 1;
    v27 = WitnessTable;
    *(&v68 - 16) = v26;
    *(&v68 - 1) = v25;
    sub_18BC1E3F8();
    v87 = v12;
    v28 = v86;
    v29 = sub_18BC21068();
    v86 = v28;
    sub_18BC210C8();
    if (v24 > 0.0)
    {
      break;
    }

    sub_18BB4CC10(v29, 0, v26, v2);

    a1 = v90;
  }

  v74 = v16;
  if (qword_1EA9D2280 != -1)
  {
    swift_once();
  }

  v30 = sub_18BC1F2C8();
  __swift_project_value_buffer(v30, qword_1EA9F7E38);
  sub_18BC1E3F8();
  v31 = sub_18BC1F2A8();
  v32 = sub_18BC21228();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = v32;
    v34 = v33;
    v35 = swift_slowAlloc();
    aBlock = v35;
    v70 = v27;
    v36 = v35;
    *v34 = v68;
    *(v34 + 4) = v24;
    *(v34 + 12) = 2082;
    v89 = v29;
    MEMORY[0x1EEE9AC00](v35);
    v37 = v84;
    *(&v68 - 6) = v85;
    *(&v68 - 5) = v37;
    v38 = v82;
    *(&v68 - 4) = v83;
    *(&v68 - 3) = v38;
    v39 = v80;
    *(&v68 - 2) = v81;
    *(&v68 - 1) = v39;
    v40 = v86;
    sub_18B82DECC(sub_18BB697AC, (&v68 - 4), v14, v79, MEMORY[0x1E69E73E0], v78, MEMORY[0x1E69E7410], v41);
    v86 = v40;
    v2 = v73;
    v42 = MEMORY[0x18CFFC2A0]();
    v44 = v43;

    v45 = sub_18B7EA850(v42, v44, &aBlock);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_18B7AC000, v31, v69, "Animating after %fs delay:     %{public}s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x18CFFEEE0](v36, -1, -1);
    MEMORY[0x18CFFEEE0](v34, -1, -1);
  }

  else
  {
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v2;
  *(v46 + 24) = v29;
  *(v46 + 32) = v26;
  v95 = sub_18BB6979C;
  v96 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v92 = 1107296256;
  v93 = sub_18B8370D4;
  v94 = &block_descriptor_159;
  v47 = _Block_copy(&aBlock);
  v48 = objc_opt_self();
  sub_18BC1E3F8();
  v49 = v2;
  v50 = [v48 timerWithTimeInterval:0 repeats:v47 block:v24];
  _Block_release(v47);

  v51 = [objc_opt_self() mainRunLoop];
  [v51 addTimer:v50 forMode:v71];

  if ((v29 & 0xC000000000000001) != 0)
  {
    sub_18BC21958();
    sub_18BC210A8();
    v29 = v97;
    v52 = v98;
    v53 = v99;
    v54 = v100;
    v55 = v101;
  }

  else
  {
    v54 = 0;
    v56 = -1 << *(v29 + 32);
    v52 = v29 + 56;
    v53 = ~v56;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v55 = v58 & *(v29 + 56);
  }

  v59 = (v53 + 64) >> 6;
  if (v29 < 0)
  {
    goto LABEL_19;
  }

  while (v55)
  {
    v60 = v55;
    v61 = v54;
LABEL_26:
    v63 = (v60 - 1) & v60;
    v62 = *(*(v29 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v60)))));
    sub_18BC1E1A8();
    if (!v62)
    {
LABEL_29:
      sub_18B7D2E34();

      v2 = v73;
      a1 = v90;
      goto LABEL_3;
    }

    while (1)
    {
      v65 = *(*v62 + 208);
      v66 = *(v62 + v65);
      *(v62 + v65) = v50;
      v67 = v50;

      v54 = v61;
      v55 = v63;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      if (sub_18BC219D8())
      {
        sub_18BC21FA8();
        swift_unknownObjectRelease();
        v62 = aBlock;
        v61 = v54;
        v63 = v55;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  v64 = v54;
  while (1)
  {
    v61 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v61 >= v59)
    {
      goto LABEL_29;
    }

    v60 = *(v52 + 8 * v61);
    ++v64;
    if (v60)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_18BB4CC10(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = (*MEMORY[0x1E69E7D40] & *a4);
  v47 = a4;
  v8 = v7;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = a1;
  if (a2)
  {
    v45[2] = v45;
    MEMORY[0x1EEE9AC00](v9);
    v45[1] = &v37;
    v12 = v8[11];
    v38 = v8[10];
    v11 = v38;
    v39 = v12;
    v13 = v8[13];
    v40 = v8[12];
    v14 = v40;
    v41 = v13;
    v46 = v10;
    v15 = a3;
    v17 = v8[15];
    v42 = v8[14];
    v16 = v42;
    v43 = v17;
    v44 = a2;
    swift_bridgeObjectRetain_n();
    v18 = a2;
    aBlock = v11;
    v49 = v12;
    v50 = v14;
    v51 = v13;
    v52 = v16;
    v53 = v17;
    v10 = v46;
    a3 = v15;
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    v19 = sub_18BC21068();

    v10[2] = v19;
  }

  else
  {
    sub_18BC1E3F8();
  }

  v20 = v8[10];
  v21 = v8[11];
  v23 = v8[12];
  v22 = v8[13];
  v25 = v8[14];
  v24 = v8[15];
  sub_18BC1E3F8();
  aBlock = v20;
  v49 = v21;
  v50 = v23;
  v51 = v22;
  v52 = v25;
  v53 = v24;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  v26 = sub_18BC21098();

  if (v26)
  {
  }

  v28 = sub_18BC1E3F8();
  v29 = v10;
  v30 = v47;
  sub_18BB4D8E0(v28);

  v46 = objc_opt_self();
  v31 = *(v30 + *((*MEMORY[0x1E69E7D40] & *v30) + 0x1B8));
  v32 = swift_allocObject();
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v23;
  v32[5] = v22;
  v32[6] = v25;
  v32[7] = v24;
  v32[8] = v29;
  v52 = sub_18BB697D4;
  v53 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_18B7B0DB0;
  v51 = &block_descriptor_168;
  v33 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  sub_18BC1E1A8();

  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *(v34 + 24) = v29;
  v52 = sub_18BB69864;
  v53 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_18B8043A0;
  v51 = &block_descriptor_174;
  v35 = _Block_copy(&aBlock);
  sub_18BC1E1A8();
  v36 = v30;

  [v46 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v35);
  _Block_release(v33);

  return swift_unknownObjectRelease();
}

uint64_t sub_18BB4CFF4(uint64_t a1, void *a2)
{
  v2 = *(*a1 + *(**a1 + 208));
  if (!v2)
  {
    return 0;
  }

  sub_18B7B0AC0(0, &unk_1EA9D9FF0);
  v4 = v2;
  v5 = a2;
  v6 = sub_18BC215C8();

  return v6 & 1;
}

uint64_t sub_18BB4D094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1 + 16;
  v14 = objc_opt_self();
  sub_18BC21288();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = v13;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_18BB69898;
  *(v22 + 24) = v21;
  v28[4] = sub_18B9D53B0;
  v28[5] = v22;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_18B7E3BF4;
  v28[3] = &block_descriptor_184;
  v23 = _Block_copy(v28);
  sub_18BC1E1A8();

  LODWORD(v24) = v16;
  LODWORD(v25) = v18;
  LODWORD(v26) = v20;
  [v14 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BB4D27C(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    sub_18BC1E3F8();
    sub_18BC21958();
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    result = sub_18BC210A8();
    v2 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    result = sub_18BC1E3F8();
    v6 = 0;
  }

  v21 = v5;
  v11 = (v5 + 64) >> 6;
  while (v2 < 0)
  {
    if (!sub_18BC219D8())
    {
      return sub_18B7D2E34();
    }

    _s8ItemInfoCMa();
    sub_18BC21FA8();
    swift_unknownObjectRelease();
    v16 = v22;
    v13 = v6;
    v15 = v7;
    if (!v22)
    {
      return sub_18B7D2E34();
    }

LABEL_19:
    v17 = *(*v16 + 208);
    [*(v16 + v17) invalidate];
    v18 = *(v16 + v17);
    *(v16 + v17) = 0;

    sub_18BAC0220();
    sub_18BABFFF0();
    v19 = sub_18BAC12A8();
    if (v19)
    {
      v20 = v19;
      [v20 layoutIfNeeded];
    }

    v6 = v13;
    v7 = v15;
  }

  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v12 - 1) & v12;
    v16 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    sub_18BC1E1A8();
    if (!v16)
    {
      return sub_18B7D2E34();
    }

    goto LABEL_19;
  }

  v14 = v6;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      return sub_18B7D2E34();
    }

    v12 = *(v4 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BB4D514()
{
  swift_beginAccess();
  v0 = sub_18BC1E3F8();
  sub_18BB4DF3C(v0);
}

uint64_t sub_18BB4D56C(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5)
{
  v28 = a4;
  v27 = a3;
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 104);
  v10 = *(*a2 + 112);
  v11 = *(*a2 + 120);
  v12 = *(*a2 + 128);
  v29 = *(*a2 + 88);
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v13 = type metadata accessor for SFFluidCollectionView.Element();
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *a1;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  _s8ItemInfoCMa();
  if (sub_18BAC05B0(v16, a2))
  {
    return 1;
  }

  v18 = *(*v16 + 184);
  swift_beginAccess();
  v19 = v25;
  v20 = v16 + v18;
  v21 = v26;
  (*(v25 + 16))(v15, v20, v26);
  sub_18BC1E3F8();
  swift_getWitnessTable();
  v22 = sub_18BC210B8();

  (*(v19 + 8))(v15, v21);
  sub_18BB4EC98(v16);
  return (v23 == a5) & ~(v22 ^ v28);
}

uint64_t sub_18BB4D800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 184);
  swift_beginAccess();
  v5 = type metadata accessor for SFFluidCollectionView.Element();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_18BB4D8E0(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v63 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v64 = v3;
  v67 = v3;
  v68 = v4;
  v69 = v63;
  v70 = v5;
  v61 = v7;
  v62 = v5;
  v71 = v6;
  v72 = v7;
  v8 = type metadata accessor for SFFluidCollectionView.Element();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v47 = v1;
  v16 = sub_18B812A74();
  v59 = v16;
  if (v16)
  {
    v18 = v16;
    v19 = v17;
    v16 = swift_allocObject();
    *(v16 + 16) = v18;
    *(v16 + 24) = v19;
    v57 = sub_18BB69484;
  }

  else
  {
    v57 = 0;
  }

  v58 = v16;
  v53 = v15;
  v54 = v11;
  v55 = v8;
  v65 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    v67 = v64;
    v68 = v4;
    v69 = v63;
    v70 = v62;
    v71 = v6;
    v72 = v61;
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    result = sub_18BC210A8();
    a1 = v73;
    v21 = v74;
    v22 = v75;
    v23 = v76;
    v24 = v77;
  }

  else
  {
    v25 = -1 << *(a1 + 32);
    v21 = a1 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(a1 + 56);
    result = sub_18BC1E3F8();
    v23 = 0;
  }

  v56 = v22;
  v28 = (v22 + 64) >> 6;
  v52 = (v9 + 16);
  v51 = (v9 + 8);
  v50 = (v12 + 32);
  v60 = v6;
  v49 = v6 + 24;
  v48 = (v12 + 8);
LABEL_11:
  v29 = v59;
  while (a1 < 0)
  {
    if (!sub_18BC219D8() || (v67 = v64, v68 = v65, v69 = v63, v70 = v62, v71 = v60, v72 = v61, _s8ItemInfoCMa(), sub_18BC21FA8(), swift_unknownObjectRelease(), v34 = v66, v31 = v23, v33 = v24, !v66))
    {
LABEL_33:
      sub_18B7D2E34();
      return sub_18B7B171C(v57);
    }

LABEL_23:
    v35 = sub_18BAC01FC();
    sub_18BAC04F0();
    if (v29 && !v35 && (*(v34 + *(*v34 + 200)) & 1) == 0)
    {
      v36 = *(*v34 + 184);
      swift_beginAccess();
      v37 = v34 + v36;
      v38 = v54;
      v39 = v55;
      (*v52)(v54, v37, v55);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v65;
        (*v50)(v53, v38, v65);
        v41 = v60;
        v46 = *(v60 + 24);
        sub_18BC1E1A8();
        if (v46(v40, v41))
        {
          sub_18B7B171C(v57);

          v42 = *v48;
          v43 = v53;
        }

        else
        {
          v44 = v53;
          v45 = v57;
          v57(v47, v53);
          sub_18B7B171C(v45);

          v42 = *v48;
          v43 = v44;
        }

        result = v42(v43, v65);
      }

      else
      {

        result = (*v51)(v38, v39);
      }

      v23 = v31;
      v24 = v33;
      goto LABEL_11;
    }

    v23 = v31;
    v24 = v33;
  }

  v30 = v24;
  v31 = v23;
  if (v24)
  {
LABEL_19:
    v33 = (v30 - 1) & v30;
    v34 = *(*(a1 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    sub_18BC1E1A8();
    if (!v34)
    {
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  v32 = v23;
  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_33;
    }

    v30 = *(v21 + 8 * v31);
    ++v32;
    if (v30)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BB4DF3C(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v77 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = v77;
  v78 = v4;
  v79 = v5;
  v80 = v6;
  v81 = v7;
  v82 = v8;
  v68 = type metadata accessor for SFFluidCollectionView.Element();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v60 - v9;
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = v60 - v11;
  v64 = (a1 & 0xC000000000000001);
  v70 = v3;
  v75 = v7;
  v74 = v4;
  v73 = v5;
  v72 = v6;
  v71 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    v77 = v3;
    v78 = v4;
    v79 = v5;
    v80 = v6;
    v81 = v7;
    v82 = v8;
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    result = sub_18BC210A8();
    v14 = v83;
    v13 = v84;
    v16 = v85;
    v15 = v86;
    v17 = v87;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v16 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);
    result = sub_18BC1E3F8();
    v15 = 0;
    v14 = a1;
  }

  if (v14 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v21 = v17;
    v22 = v15;
    if (!v17)
    {
      break;
    }

LABEL_13:
    v24 = (v21 - 1) & v21;
    v25 = *(*(v14 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    sub_18BC1E1A8();
    if (!v25)
    {
      goto LABEL_19;
    }

    while (1)
    {
      sub_18BAC051C();

      v15 = v22;
      v17 = v24;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_18BC219D8())
      {
        v77 = v70;
        v78 = v74;
        v79 = v73;
        v80 = v72;
        v81 = v75;
        v82 = v71;
        _s8ItemInfoCMa();
        sub_18BC21FA8();
        swift_unknownObjectRelease();
        v22 = v15;
        v24 = v17;
        if (v88)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  v23 = v15;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v22 >= ((v16 + 64) >> 6))
    {
      break;
    }

    v21 = *(v13 + 8 * v22);
    ++v23;
    if (v21)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  sub_18B7D2E34();
  v26 = sub_18B812A74();
  if (!v26)
  {
    return sub_18B826338(v26);
  }

  v28 = v26;
  v29 = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  v63 = v30;
  if (v64)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    v31 = v70;
    v77 = v70;
    v78 = v74;
    v79 = v73;
    v32 = v75;
    v80 = v72;
    v81 = v75;
    v82 = v71;
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    result = sub_18BC210A8();
    a1 = v88;
    v33 = v89;
    v34 = v90;
    v35 = v91;
    v36 = v92;
  }

  else
  {
    v37 = -1 << *(a1 + 32);
    v33 = a1 + 56;
    v34 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v36 = v39 & *(a1 + 56);
    result = sub_18BC1E3F8();
    v35 = 0;
    v31 = v70;
    v32 = v75;
  }

  v40 = v66;
  v41 = v65;
  v65 = v34;
  v42 = (v34 + 64) >> 6;
  v66 += 2;
  v64 = (v40 + 1);
  v61 = (v41 + 32);
  v60[1] = v32 + 24;
  v60[0] = v41 + 8;
  v43 = v31;
  while (a1 < 0)
  {
    if (!sub_18BC219D8() || (v77 = v43, v78 = v74, v79 = v73, v80 = v72, v81 = v75, v82 = v71, _s8ItemInfoCMa(), sub_18BC21FA8(), swift_unknownObjectRelease(), v48 = v76, v45 = v35, v47 = v36, !v76))
    {
LABEL_46:
      sub_18B7D2E34();

      return sub_18B826338(v26);
    }

LABEL_37:
    if (sub_18BAC01FC() || (*(v48 + *(*v48 + 200)) & 1) != 0)
    {

      goto LABEL_40;
    }

    v49 = *(*v48 + 184);
    swift_beginAccess();
    v50 = v48 + v49;
    v51 = v67;
    v52 = v68;
    (*v66)(v67, v50, v68);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = v62;
      v54 = v74;
      (*v61)(v62, v51, v74);
      v55 = (*(v75 + 24))(v54);
      v43 = v70;
      if (v55)
      {

        result = (*v60[0])(v53, v54);
      }

      else
      {
        v56 = v53;
        v57 = *(v63 + 24);
        ObjectType = swift_getObjectType();
        (*(v57 + 144))(v69, v56, ObjectType, v57);

        v59 = v56;
        v43 = v70;
        result = (*v60[0])(v59, v54);
      }

LABEL_40:
      v35 = v45;
      v36 = v47;
    }

    else
    {

      result = (*v64)(v51, v52);
      v35 = v45;
      v36 = v47;
      v43 = v70;
    }
  }

  v44 = v36;
  v45 = v35;
  if (v36)
  {
LABEL_33:
    v47 = (v44 - 1) & v44;
    v48 = *(*(a1 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
    sub_18BC1E1A8();
    if (!v48)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v46 = v35;
  while (1)
  {
    v45 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v45 >= v42)
    {
      goto LABEL_46;
    }

    v44 = *(v33 + 8 * v45);
    ++v46;
    if (v44)
    {
      goto LABEL_33;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

id sub_18BB4E7C4(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v43 - v5;
  v8 = *((v7 & v6) + 0x58);
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v14 = *((v13 & v12) + 0x50);
  v46 = v15;
  v16 = *((v13 & v12) + 0x78);
  v47 = v14;
  v48 = v8;
  v49 = v4;
  v50 = *(v17 + 104);
  v51 = v16;
  v18 = type metadata accessor for SFFluidCollectionView.Element();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v26 = *(v19 + 16);
  v26(&v43 - v24, a1, v18, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v34 = swift_projectBox();
    v35 = *(TupleTypeMetadata2 + 48);
    (*(v45 + 16))(v44, v34, v4);
    (v26)(v21, v34 + v35, v18);
    if (sub_18B812A74())
    {
      v37 = v36;
      ObjectType = swift_getObjectType();
      v39 = v44;
      v32 = (*(v37 + 160))(v46, v44, v21, ObjectType, v37);
      swift_unknownObjectRelease();
      (*(v19 + 8))(v21, v18);
      (*(v45 + 8))(v39, v4);

      return v32;
    }

    (*(v19 + 8))(v21, v18);
    (*(v45 + 8))(v44, v4);
    v42 = v46;

    return v42;
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v43;
      (*(v43 + 32))(v11, v25, v8);
      if (sub_18B812A74())
      {
        v30 = v29;
        v31 = swift_getObjectType();
        v32 = (*(v30 + 152))(v46, v11, v31, v30);
        swift_unknownObjectRelease();
        (*(v28 + 8))(v11, v8);
        return v32;
      }

      (*(v28 + 8))(v11, v8);
    }

    else
    {
      (*(v19 + 8))(v25, v18);
    }

    v41 = v46;

    return v41;
  }
}

uint64_t sub_18BB4EC98(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v30 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v31 = v3;
  v34[0] = v3;
  v34[1] = v4;
  v34[2] = v30;
  v28 = v6;
  v29 = v5;
  v34[3] = v5;
  v34[4] = v6;
  v27 = v7;
  v34[5] = v7;
  v8 = type metadata accessor for SFFluidCollectionView.Element();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(*a1 + 184);
  swift_beginAccess();
  (*(v9 + 16))(v11, a1 + v16, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v12 + 32))(v15, v11, v4);
  sub_18B81FB48(v32);
  memcpy(v33, v32, 0x139uLL);
  if (sub_18B81CA10(v33) != 1)
  {
    v17 = sub_18B812A74();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      memcpy(v34, v33, 0x139uLL);
      ObjectType = swift_getObjectType();
      (*(v20 + 72))(v1, v15, v34, ObjectType, v20);

      (*(v12 + 8))(v15, v4);
      v34[0] = v31;
      v34[1] = v4;
      v34[2] = v30;
      v34[3] = v29;
      v34[4] = v28;
      v34[5] = v27;
      type metadata accessor for SFFluidCollectionView.Update();
      v23 = sub_18BC21848();
      return (*(*(v23 - 8) + 8))(v32, v23);
    }

    v34[0] = v31;
    v34[1] = v4;
    v34[2] = v30;
    v34[3] = v29;
    v34[4] = v28;
    v34[5] = v27;
    type metadata accessor for SFFluidCollectionView.Update();
    v25 = sub_18BC21848();
    (*(*(v25 - 8) + 8))(v32, v25);
  }

  return (*(v12 + 8))(v15, v4);
}

void sub_18BB4F0C8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    if (a1)
    {
      type metadata accessor for SFFluidCollectionReusableView();
      v8 = a2;
      v9 = a1;
      v10 = sub_18BC215C8();

      if (v10)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v11 = sub_18B812A74();
  v12 = v11;
  v14 = v13;
  if (a1 && v11)
  {
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 128);
    v17 = a1;
    swift_unknownObjectRetain();
    v16(v4, v17, a3, ObjectType, v14);

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    if (v12)
    {
      v18 = swift_getObjectType();
      v19 = *(v14 + 120);
      v20 = a2;
      swift_unknownObjectRetain();
      v19(v4, v20, a3, v18, v14);

      swift_unknownObjectRelease_n();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BB4F250(void *a1, uint64_t a2, double *a3, CGFloat a4, CGFloat a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v78 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v78 - v13;
  v85 = _s4ItemVMa_2();
  v14 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v78 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v19 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v78 - v20;
  v21 = MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  result = swift_beginAccess();
  v95 = a1;
  if (*(a1 + v22) == 1)
  {
    v82 = a3;
    v83 = a2;
    v24 = v95;
    v25 = *((*v21 & *v95) + 0x150);
    swift_beginAccess();
    v26 = *(*(v24 + v25) + 16);
    v81 = v12;
    if (!v26)
    {
      v27 = v95;
      sub_18BB49DC8();
      sub_18BB4A908();
      v28 = v27 + *((*v21 & *v27) + 0x1C0);
      if (v28[2] == 1)
      {
        v29 = *((*v21 & *v27) + 0x1D8);
        v30 = v95;
        swift_beginAccess();
        v31 = *(**(v30 + v29) + 424);
        v32 = sub_18BC1E1A8();
        v31(v32);

        v28[2] = 0;
      }

      if (v28[1] == 1)
      {
        swift_beginAccess();
        sub_18BC1E1A8();
        sub_18BB44000();

        v28[1] = 0;
      }
    }

    v33 = *(v95 + v25);
    v34 = *(v33 + 64);
    v86 = v33 + 64;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v84 = *((*v21 & *v95) + 0x90);
    v38 = (v35 + 63) >> 6;
    v39 = (v19 + 48);
    v79 = (v14 + 56);
    v80 = (v14 + 48);
    result = sub_18BC1E3F8();
    v40 = 0;
    v93 = v18;
    v87 = (v19 + 48);
    v88 = result;
    while (v37)
    {
LABEL_17:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = *(*(result + 56) + ((v40 << 9) | (8 * v44)));
      v96 = v45[3];
      if (v96)
      {
        v46 = *(*v45 + 176);
        swift_beginAccess();
        sub_18B7CA054(v45 + v46, v18, &unk_1EA9D9300);
        v47 = *v39;
        v48 = v90;
        if ((*v39)(v18, 1, v90) == 1)
        {
          v49 = *(*v45 + 184);
          swift_beginAccess();
          v50 = v45 + v49;
          v51 = v93;
          v52 = v89;
          sub_18B7CA054(v50, v89, &unk_1EA9D4F40);
          v53 = v47(v51, 1, v48);
          sub_18BC1E1A8();
          v54 = v96;
          if (v53 != 1)
          {
            sub_18B988BAC(v51, &unk_1EA9D9300);
          }
        }

        else
        {
          v52 = v89;
          sub_18B7CF39C(v18, v89, &unk_1EA9D4F40);
          sub_18BC1E1A8();
          v55 = v96;
        }

        v56 = v91;
        sub_18B7CA054(v52, v91, &unk_1EA9D92F0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v58 = v94;
        if (EnumCaseMultiPayload == 1)
        {
          sub_18B85A83C(v56, v94, _s4ItemVMa_2);
          v59 = *(v95 + v84) + qword_1EA9D95C8;
          swift_beginAccess();
          v60 = *v59;
          v61 = *(v59 + 32);
          v98[1] = *(v59 + 16);
          v98[2] = v61;
          v98[0] = v60;
          sub_18B7CA054(v98, &v97, &unk_1EA9D4F90);
          LOBYTE(v59) = sub_18BB44F94(v52);
          sub_18B988BAC(v98, &unk_1EA9D4F90);
          if (v59)
          {
            v62 = v96;
            [v62 frame];
            v64 = v63;
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v71 = [v62 layer];

            [v71 zPosition];
            v73 = v72;

            v100.origin.x = v64;
            v100.origin.y = v66;
            v100.size.width = v68;
            v100.size.height = v70;
            v99.x = a4;
            v99.y = a5;
            if (CGRectContainsPoint(v100, v99))
            {
              v74 = v81;
              sub_18B7CA054(v83, v81, &unk_1EA9D4F30);
              v75 = (*v80)(v74, 1, v85);
              sub_18B988BAC(v74, &unk_1EA9D4F30);
              if (v75 == 1 || *v82 < v73)
              {
                v76 = v83;
                sub_18B988BAC(v83, &unk_1EA9D4F30);
                sub_18B85A52C(v94, v76, _s4ItemVMa_2);
                (*v79)(v76, 0, 1, v85);
                *v82 = v73;
              }
            }

            v77 = v94;
          }

          else
          {

            v77 = v58;
          }

          sub_18BB69570(v77, _s4ItemVMa_2);
          v41 = v52;
          v42 = &unk_1EA9D4F40;
        }

        else
        {
          sub_18B988BAC(v52, &unk_1EA9D4F40);

          v41 = v56;
          v42 = &unk_1EA9D92F0;
        }

        sub_18B988BAC(v41, v42);
        v18 = v93;
        v39 = v87;
        result = v88;
      }
    }

    while (1)
    {
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v43 >= v38)
      {
      }

      v37 = *(v86 + 8 * v43);
      ++v40;
      if (v37)
      {
        v40 = v43;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_18BB4FB78(void (*a1)(char *, double, double, double, double, double), uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v68 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & v4) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & v4) + 0x60);
  v9 = *((*MEMORY[0x1E69E7D40] & v4) + 0x68);
  v10 = *((*MEMORY[0x1E69E7D40] & v4) + 0x70);
  v11 = *((*MEMORY[0x1E69E7D40] & v4) + 0x78);
  v91 = *((*MEMORY[0x1E69E7D40] & v4) + 0x50);
  v6 = v91;
  v92 = v7;
  *&v93 = v8;
  *(&v93 + 1) = v9;
  v94 = v10;
  v95 = v11;
  v12 = type metadata accessor for SFFluidCollectionView.Element();
  v78 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v56 - v13;
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v56 - v15;
  v91 = v6;
  v92 = v7;
  *&v93 = v8;
  *(&v93 + 1) = v9;
  v94 = v10;
  v95 = v11;
  v74 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v71 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v56 - v16;
  v17 = *((v5 & v4) + 0x98);
  result = swift_beginAccess();
  if (*(v3 + v17) == 1)
  {
    v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x150);
    swift_beginAccess();
    v20 = *(v3 + v19);
    sub_18BC1E3F8();
    v65 = v6;
    v91 = v6;
    v92 = v7;
    v75 = v7;
    *&v93 = v8;
    *(&v93 + 1) = v9;
    v63 = v9;
    v62 = v10;
    v94 = v10;
    v95 = v11;
    v61 = v11;
    v21 = _s8ItemInfoCMa();
    WitnessTable = swift_getWitnessTable();
    v73 = v12;
    LOBYTE(v21) = MEMORY[0x18CFFBED0](v20, v12, v21, WitnessTable);

    v64 = v8;
    if (v21)
    {
      sub_18B81C6D0();
      sub_18B821348();
      sub_18B825434();
    }

    v23 = MEMORY[0x1E69E7D40];
    v24 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x150);
    swift_beginAccess();
    v25 = *(v3 + v24);
    v26 = v25 + 64;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v25 + 64);
    v60 = *((*v23 & *v3) + 0x90);
    v30 = (v27 + 63) >> 6;
    v72 = (v78 + 16);
    ++v71;
    v59 = (v78 + 8);
    v58 = (v70 + 32);
    v57 = v70 + 8;
    v78 = v25;
    result = sub_18BC1E3F8();
    v31 = 0;
    v32 = v75;
    v33 = v79;
    while (v29)
    {
LABEL_13:
      v29 &= v29 - 1;
      result = sub_18BAC12A8();
      if (result)
      {
        v36 = result;
        sub_18BC1E1A8();
        sub_18BABE7E4(v33);
        v37 = v33;
        v38 = v77;
        v39 = v73;
        (*v72)(v77, v37, v73);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v70 = v36;
          (*v58)(v76, v38, v32);
          sub_18BB23214(&v91);
          v86 = v91;
          v87 = v92;
          v88 = v93;
          v89 = v94;
          v90 = v95;
          v80 = v65;
          v81 = v32;
          v82 = v64;
          v83 = v63;
          v84 = v62;
          v85 = v61;
          v40 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
          v67 = SFFluidCollectionView.DataSource.Snapshot.contains(_:)(v79, v40);
          v66 = v89;

          if (v67)
          {
            v41 = v70;
            [v41 frame];
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v50 = [v41 layer];

            [v50 zPosition];
            v52 = v51;

            v53 = v76;
            v68(v76, v43, v45, v47, v49, v52);

            v54 = *v57;
            v55 = v53;
          }

          else
          {

            v54 = *v57;
            v55 = v76;
          }

          v32 = v75;
          v54(v55, v75);
          v33 = v79;
          result = (*v71)(v79, v74);
        }

        else
        {
          v34 = v79;
          (*v71)(v79, v74);

          result = (*v59)(v38, v39);
          v33 = v34;
          v32 = v75;
        }
      }
    }

    while (1)
    {
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v35 >= v30)
      {
      }

      v29 = *(v26 + 8 * v35);
      ++v31;
      if (v29)
      {
        v31 = v35;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_18BB503F4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v10 = *(v9 + 0x58);
  (*(*(*((v8 & v7) + 0x58) - 8) + 56))(a1, 1, 1, *((v8 & v7) + 0x58));
  v20 = 0x10000000000000;
  v13[2] = *((v8 & v7) + 0x50);
  v13[3] = v10;
  v11 = *(v9 + 112);
  v14 = *(v9 + 96);
  v15 = v11;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v19 = &v20;
  return sub_18BB4FB78(sub_18BB66BE4, v13);
}

uint64_t sub_18BB50510(uint64_t a1, char *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, CGFloat a9, CGFloat a10, uint64_t a11, uint64_t a12)
{
  v23 = sub_18BC21848();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v31 - v25;
  v33.origin.x = a4;
  v33.origin.y = a5;
  v33.size.width = a6;
  v33.size.height = a7;
  v32.x = a9;
  v32.y = a10;
  result = CGRectContainsPoint(v33, v32);
  if (result)
  {
    (*(v24 + 16))(v26, a2, v23);
    v28 = *(a12 - 8);
    v29 = (*(v28 + 48))(v26, 1, a12);
    v30 = *(v24 + 8);
    result = v30(v26, v23);
    if (v29 == 1 || *a3 < a8)
    {
      v30(a2, v23);
      (*(v28 + 16))(a2, a1, a12);
      result = (*(v28 + 56))(a2, 0, 1, a12);
      *a3 = a8;
    }
  }

  return result;
}

void *sub_18BB50724@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v10 = *(v9 + 0x58);
  (*(*(*((v8 & v7) + 0x58) - 8) + 56))(a1, 1, 1, *((v8 & v7) + 0x58));
  v21 = 0x10000000000000;
  v22 = 0x7FEFFFFFFFFFFFFFLL;
  v13[2] = *((v8 & v7) + 0x50);
  v13[3] = v10;
  v11 = *(v9 + 112);
  v14 = *(v9 + 96);
  v15 = v11;
  v16 = a2;
  v17 = a3;
  v18 = &v22;
  v19 = &v21;
  v20 = a1;
  return sub_18BB4FB78(sub_18BB66C1C, v13);
}

uint64_t sub_18BB5084C(uint64_t a1, double *a2, double *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  result = UIDistanceBetweenPointAndRect();
  v19 = v18;
  if (v18 < *a2 || v18 == *a2 && *a3 < a9)
  {
    v20 = sub_18BC21848();
    (*(*(v20 - 8) + 8))(a4, v20);
    v21 = *(a11 - 8);
    (*(v21 + 16))(a4, a1, a11);
    result = (*(v21 + 56))(a4, 0, 1, a11);
    *a2 = v19;
    *a3 = a9;
  }

  return result;
}

void *sub_18BB50984(uint64_t a1)
{
  v18 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((v3 & v2) + 0x58);
  v5 = *((v3 & v2) + 0x60);
  v6 = *((v3 & v2) + 0x68);
  v7 = *((v3 & v2) + 0x70);
  v8 = *((v3 & v2) + 0x78);
  v20 = v19;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v9 = type metadata accessor for SFFluidCollectionView.Element();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(*(v4 - 8) + 16))(&v17 - v12, v18, v4, v11);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_18BC1E3F8();
  v20 = v19;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  sub_18BC20A28();

  (*(v10 + 8))(v13, v9);
  if (!v20)
  {
    return 0;
  }

  v14 = sub_18BAC12A8();
  v15 = v14;

  return v14;
}

void *sub_18BB50BFC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v24 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v23 = *((v4 & v3) + 0x58);
  v5 = *((v4 & v3) + 0x60);
  v22 = *((v4 & v3) + 0x68);
  v6 = *((v4 & v3) + 0x70);
  v7 = *((v4 & v3) + 0x78);
  v25 = v24;
  v26 = v23;
  v27 = v5;
  v28 = v22;
  v29 = v6;
  v30 = v7;
  v8 = type metadata accessor for SFFluidCollectionView.Element();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(TupleTypeMetadata2 + 48);
  (*(*(v5 - 8) + 16))(v14, v20, v5);
  (*(v9 + 16))(v15 + v16, v21, v8);
  *v11 = v13;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_18BC1E3F8();
  v25 = v24;
  v26 = v23;
  v27 = v5;
  v28 = v22;
  v29 = v6;
  v30 = v7;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  sub_18BC20A28();

  (*(v9 + 8))(v11, v8);
  if (!v25)
  {
    return 0;
  }

  v17 = sub_18BAC12A8();
  v18 = v17;

  return v17;
}

uint64_t sub_18BB50EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v56 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v41 = v56;
  v10 = v5;
  v40 = v5;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v57 = v10;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v61 = v9;
  v42 = _s8ItemInfoCMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = sub_18BC21848();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v33 - v13;
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v35 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v34 = &v33 - v20;
  v21 = *((v4 & v3) + 0x150);
  swift_beginAccess();
  v55 = *(v2 + v21);
  v54 = v43;
  v22 = v40;
  v45 = v41;
  v46 = v40;
  v47 = v6;
  v48 = v7;
  v49 = v8;
  v50 = v9;
  v51 = sub_18BB66C58;
  v52 = &v53;
  sub_18BC1E3F8();
  swift_getWitnessTable();
  sub_18BC209F8();
  swift_getWitnessTable();
  sub_18BC20D18();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
  {
    (*(v36 + 8))(v14, v37);
LABEL_6:
    v30 = v44;
    v28 = *(v22 - 8);
    v31 = 1;
    return (*(v28 + 56))(v30, v31, 1, v22);
  }

  v23 = v38;
  v24 = *(v38 + 32);
  v25 = v35;
  v24(v35, v14, v11);
  v26 = v34;
  v24(v34, v25, v11);
  v27 = v39;
  v24(v39, v26, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v23 + 8))(v27, v11);
    goto LABEL_6;
  }

  v28 = *(v22 - 8);
  v29 = v44;
  (*(v28 + 32))(v44, v27, v22);
  v30 = v29;
  v31 = 0;
  return (*(v28 + 56))(v30, v31, 1, v22);
}

uint64_t sub_18BB51444(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_18BAC12A8();
  if (result)
  {
    v5 = result;
    type metadata accessor for SFFluidCollectionReusableView();
    v6 = v5;
    v7 = a3;
    LOBYTE(v5) = sub_18BC215C8();

    return v5 & 1;
  }

  return result;
}

uint64_t sub_18BB514B8(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  type metadata accessor for SFFluidCollectionView.Element();
  _s8ItemInfoCMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

BOOL sub_18BB5158C(uint64_t a1)
{
  v16 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((v3 & v2) + 0x58);
  v5 = *((v3 & v2) + 0x60);
  v6 = *((v3 & v2) + 0x68);
  v7 = *((v3 & v2) + 0x70);
  v8 = *((v3 & v2) + 0x78);
  v19 = v17;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v9 = type metadata accessor for SFFluidCollectionView.Element();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(*(v4 - 8) + 16))(&v16 - v12, v16, v4, v11);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_18BC1E3F8();
  v19 = v17;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  sub_18BC20A28();

  (*(v10 + 8))(v13, v9);
  if (v18)
  {
    v14 = sub_18BAC01FC();
  }

  else
  {
    return 0;
  }

  return v14;
}

void sub_18BB51800(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = *(v6 + 0x58);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v30 - v8;
  v9 = sub_18BC21848();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  sub_18B7B0AC0(0, &qword_1EA9D4FE0);
  sub_18BAAA034();
  v34 = a1;
  v15 = sub_18BC20FC8();
  v16 = v5 & v4;
  v17 = MEMORY[0x1E69E7D40];
  v36 = *(v16 + 80);
  v37 = v7;
  v18 = *(v6 + 112);
  v38 = *(v6 + 96);
  v39 = v18;
  v19 = type metadata accessor for SFFluidCollectionView();
  v40.receiver = v2;
  v40.super_class = v19;
  objc_msgSendSuper2(&v40, sel_touchesBegan_withEvent_, v15, v35);

  sub_18BB52C14();
  if (*(*(v2 + *((*v17 & *v2) + 0x148)) + 24) <= 0)
  {
    v20 = v11;
    v22 = v31;
    v21 = v32;
    v23 = v33;
    v24 = sub_18BA61AC4(v34);
    v25 = *((*v17 & *v2) + 0xF8);
    v26 = *(v2 + v25);
    *(v2 + v25) = v24;

    v27 = *(v2 + *((*v17 & *v2) + 0xF8));
    if (v27)
    {
      [v27 locationInView_];
      sub_18BB503F4(v14, v28, v29);
      sub_18BB47DCC(v14);
      sub_18BB47D0C(v20);
      if ((*(v23 + 48))(v20, 1, v7) == 1)
      {
        (*(v22 + 8))(v20, v9);
      }

      else
      {
        (*(v23 + 32))(v21, v20, v7);
        sub_18BB52EA0(v21);
        (*(v23 + 8))(v21, v7);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_18BB51B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  *&v85 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & v4;
  v7 = *(v6 + 0x58);
  v8 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v80 = &v69 - v9;
  v84 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  sub_18B7B0AC0(0, &qword_1EA9D4FE0);
  sub_18BAAA034();
  v25 = sub_18BC20FC8();
  v26 = v5 & v4;
  v27 = v7;
  v87 = *(v26 + 80);
  v88 = v7;
  v28 = *(v6 + 112);
  v89 = *(v6 + 96);
  v85 = v28;
  v90 = v28;
  v29 = type metadata accessor for SFFluidCollectionView();
  v91.receiver = v3;
  v91.super_class = v29;
  objc_msgSendSuper2(&v91, sel_touchesMoved_withEvent_, v25, v86);

  sub_18BB47D0C(v18);
  v30 = v19;
  v31 = *(v19 + 48);
  if (v31(v18, 1, v27) == 1)
  {
    return (*(v84 + 8))(v18, v8);
  }

  v77 = v8;
  v33 = *(v19 + 32);
  v33(v24, v18, v27);
  v34 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xF8));
  if (!v34)
  {
    return (*(v30 + 8))(v24, v27);
  }

  v70 = v33;
  v71 = v30 + 32;
  [v34 locationInView_];
  v36 = v35;
  v38 = v37;
  v39 = *(v30 + 16);
  v40 = v83;
  v75 = v24;
  v39(v83, v24, v27);
  (*(v30 + 56))(v40, 0, 1, v27);
  v41 = v81;
  v73 = v30;
  sub_18BB503F4(v81, v36, v38);
  v42 = *(TupleTypeMetadata2 + 48);
  v72 = v31;
  v43 = v84;
  v44 = *(v84 + 16);
  v45 = v80;
  v46 = v40;
  v47 = v77;
  v44(v80, v46, v77);
  v74 = v42;
  v44(&v45[v42], v41, v47);
  v86 = v27;
  v48 = v27;
  v49 = v72;
  if (v72(v45, 1, v48) == 1)
  {
    v50 = v73;
    v51 = *(v43 + 8);
    v52 = v77;
    v51(v41, v77);
    v51(v83, v52);
    v53 = v49(&v45[v74], 1, v86);
    v54 = v45;
    if (v53 == 1)
    {
      v51(v45, v52);
LABEL_13:
      v62 = v75;
      sub_18BB52EA0(v75);
      return (*(v50 + 8))(v62, v86);
    }

    goto LABEL_10;
  }

  v55 = v77;
  v56 = v78;
  v44(v78, v45, v77);
  v57 = v74;
  v58 = v86;
  v59 = v49(&v45[v74], 1, v86);
  v50 = v73;
  v60 = (v73 + 8);
  v54 = v45;
  if (v59 == 1)
  {
    v61 = *(v84 + 8);
    v61(v81, v55);
    v61(v83, v55);
    (*v60)(v56, v58);
LABEL_10:
    (*(v79 + 8))(v54, TupleTypeMetadata2);
    goto LABEL_11;
  }

  v63 = &v45[v57];
  v64 = v55;
  v65 = v76;
  v70(v76, v63, v58);
  LODWORD(v85) = sub_18BC20AE8();
  v66 = *v60;
  (*v60)(v65, v58);
  v67 = v58;
  v68 = *(v84 + 8);
  v68(v81, v64);
  v68(v83, v64);
  v66(v56, v67);
  v68(v54, v64);
  if (v85)
  {
    goto LABEL_13;
  }

LABEL_11:
  v62 = v75;
  sub_18BB5329C(v75);
  return (*(v50 + 8))(v62, v86);
}

uint64_t sub_18BB52310(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_18B7B0AC0(0, &qword_1EA9D4FE0);
  sub_18BAAA034();
  v8 = sub_18BC20FD8();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_18BB523C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v61 = v4;
  v62 = v5;
  v63 = v6;
  v64 = v7;
  v65 = v8;
  v66 = v9;
  v10 = type metadata accessor for SFFluidCollectionView.Element();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v46 - v11;
  v47 = sub_18BC21848();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v46 - v17;
  sub_18B7B0AC0(0, &qword_1EA9D4FE0);
  sub_18BAAA034();
  v18 = sub_18BC20FC8();
  v52 = v4;
  v61 = v4;
  v62 = v5;
  v50 = v6;
  v63 = v6;
  v64 = v7;
  v49 = v7;
  v19 = v9;
  v56 = v8;
  v65 = v8;
  v20 = MEMORY[0x1E69E7D40];
  v66 = v9;
  v21 = type metadata accessor for SFFluidCollectionView();
  v60.receiver = v3;
  v60.super_class = v21;
  objc_msgSendSuper2(&v60, sel_touchesEnded_withEvent_, v18, v58);

  v22 = *v20 & *v3;
  v23 = *(v22 + 0xF8);
  v24 = *(v3 + v23);
  if (v24)
  {
    [*(v3 + v23) locationInView_];
    v26 = v25;
    v28 = v27;
    v22 = *v20 & *v3;
  }

  else
  {
    v26 = 0.0;
    v28 = 0.0;
  }

  v29 = *(v22 + 248);
  v30 = *(v3 + v29);
  *(v3 + v29) = 0;

  if ([v3 isDecelerating])
  {
    if (qword_1EA9D2280 != -1)
    {
      swift_once();
    }

    v31 = sub_18BC1F2C8();
    __swift_project_value_buffer(v31, qword_1EA9F7E38);
    v32 = sub_18BC1F2A8();
    v33 = sub_18BC21258();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_18B7AC000, v32, v33, "Ignoring touch during deceleration", v34, 2u);
      MEMORY[0x18CFFEEE0](v34, -1, -1);
    }
  }

  else
  {
    sub_18BB47D0C(v15);
    v35 = v57;
    if ((*(v57 + 48))(v15, 1, v5) == 1)
    {
      (*(v46 + 8))(v15, v47);
      if (v24 && sub_18B812A74())
      {
        v37 = v36;
        ObjectType = swift_getObjectType();
        (*(v37 + 64))(v3, ObjectType, v37, v26, v28);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v39 = v55;
      (*(v35 + 32))(v55, v15, v5);
      v40 = v48;
      (*(v35 + 56))(v48, 1, 1, v5);
      sub_18BB47DCC(v40);
      v41 = v51;
      (*(v35 + 16))(v51, v39, v5);
      v42 = v54;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_18BC1E3F8();
      v61 = v52;
      v62 = v5;
      v63 = v50;
      v64 = v49;
      v65 = v56;
      v66 = v19;
      _s8ItemInfoCMa();
      swift_getWitnessTable();
      sub_18BC20A28();

      (*(v53 + 8))(v41, v42);
      if (v59)
      {
        v43 = sub_18BAC12A8();
        v44 = v43;

        if (v43)
        {

          swift_beginAccess();
          sub_18BC1E3F8();
          v45 = sub_18BC210B8();

          if (v45)
          {
            sub_18BB53E54(v39);
          }

          else
          {
            sub_18BB535E0(v39);
          }

          sub_18BB5329C(v39);
        }
      }

      (*(v57 + 8))(v39, v5);
    }
  }
}

void sub_18BB52B14(uint64_t a1, uint64_t a2)
{
  v4 = (*MEMORY[0x1E69E7D40] & *v2);
  sub_18B7B0AC0(0, &qword_1EA9D4FE0);
  sub_18BAAA034();
  v5 = sub_18BC20FC8();
  v6 = v4[5];
  v7 = v4[6];
  v8 = v4[7];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SFFluidCollectionView();
  objc_msgSendSuper2(&v9, sel_touchesCancelled_withEvent_, v5, a2, v6, v7, v8);

  sub_18BB52C14();
}

void sub_18BB52C14()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  v15 = *((v2 & v1) + 0xF8);
  v16 = *(v0 + v15);
  if (v16)
  {
    *(v0 + v15) = 0;

    sub_18BB47D0C(v10);
    if ((*(v11 + 48))(v10, 1, v3) == 1)
    {
      (*(v5 + 8))(v10, v4);
    }

    else
    {
      (*(v11 + 32))(v14, v10, v3);
      sub_18BB5329C(v14);
      (*(v11 + 56))(v7, 1, 1, v3);
      sub_18BB47DCC(v7);
      (*(v11 + 8))(v14, v3);
    }
  }
}

void sub_18BB52E58()
{
  v0 = sub_18BB48194();
  sub_18B9A45D8();
}

void sub_18BB52EA0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *((v5 & v4) + 0x58);
  v7 = *((v5 & v4) + 0x60);
  v8 = *((v5 & v4) + 0x68);
  v9 = *((v5 & v4) + 0x70);
  v10 = *((v5 & v4) + 0x78);
  v31 = v29;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *(*(v6 - 8) + 16);
  v28 = a1;
  v16(v15, a1, v6, v13);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_18BC1E3F8();
  v31 = v29;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  sub_18BC20A28();

  (*(v12 + 8))(v15, v11);
  if (v30)
  {
    v17 = sub_18BAC12A8();
    v18 = v17;

    if (v17)
    {
      if (((*((*MEMORY[0x1E69E7D40] & *v18) + 0xC0))(v19) & 1) == 0)
      {
        if (sub_18B812A74())
        {
          v21 = v20;
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 16);
          swift_unknownObjectRetain();
          v24 = v28;
          v25 = v23(v2, v28, ObjectType, v21);
          swift_unknownObjectRelease();
          if (v25)
          {
            (*((*MEMORY[0x1E69E7D40] & *v18) + 0xC8))(1);
            v26 = swift_getObjectType();
            v27 = *(v21 + 24);
            swift_unknownObjectRetain();
            v27(v2, v24, v26, v21);

            swift_unknownObjectRelease_n();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          return;
        }

        (*((*MEMORY[0x1E69E7D40] & *v18) + 0xC8))(1);
      }
    }
  }
}

void sub_18BB5329C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *((v5 & v4) + 0x58);
  v7 = *((v5 & v4) + 0x60);
  v8 = *((v5 & v4) + 0x68);
  v9 = *((v5 & v4) + 0x70);
  v10 = *((v5 & v4) + 0x78);
  v27 = v25;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = *(*(v6 - 8) + 16);
  v24 = a1;
  v16(v15, a1, v6, v13);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_18BC1E3F8();
  v27 = v25;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  _s8ItemInfoCMa();
  swift_getWitnessTable();
  sub_18BC20A28();

  (*(v12 + 8))(v15, v11);
  if (v26)
  {
    v17 = sub_18BAC12A8();
    v18 = v17;

    if (v17)
    {
      v20 = MEMORY[0x1E69E7D40];
      if (((*((*MEMORY[0x1E69E7D40] & *v18) + 0xC0))(v19) & 1) != 0 && ((*((*v20 & *v18) + 0xC8))(0), sub_18B812A74()))
      {
        v22 = v21;
        ObjectType = swift_getObjectType();
        (*(v22 + 32))(v2, v24, ObjectType, v22);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}