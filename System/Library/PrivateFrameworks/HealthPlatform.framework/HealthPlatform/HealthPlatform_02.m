void sub_2284200C4(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2284273B0(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_22855DAEC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_22845F958(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 identifier];
        v15 = sub_22855D1AC();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2284273B0((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_22855DB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_22842BEC4();
          v7 = sub_22855D54C();
          sub_22855DBBC();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_228416CB8(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_228416CB8(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_228416CB8(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          v2 = v34;
          if (v6 == v34)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void (*FeedItem.associatedHKTypes.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = [v2 dataTypes];
  v5[2] = type metadata accessor for DataType();
  v5[3] = sub_228428BB0(&qword_280DED538, type metadata accessor for DataType);
  v7 = sub_22855D51C();

  sub_22841F19C(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_228429F58(v9, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8, sub_228481E58);

  *v5 = v10;
  return sub_22842057C;
}

void sub_22842057C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v15 = [(*a1)[1] managedObjectContext];
    if (v15)
    {
      v17 = v2[3];
      v16 = v2[4];
      v18 = v2[1];
      v19 = v2[2];
      v20 = v15;
      v21 = sub_228428C28(v3, v20);

      sub_228429950(v21, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

      v22 = sub_22855D50C();

      [v18 setDataTypes_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = **a1;

  v6 = [v4 managedObjectContext];
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[1];
  v10 = v2[2];
  v11 = v6;
  v12 = sub_228428C28(v3, v11);

  sub_228429950(v12, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

  v13 = sub_22855D50C();

  [v9 setDataTypes_];

  v14 = *v2;

LABEL_6:

  free(v2);
}

uint64_t FeedItem.associatedMeasureIdentifiers.getter()
{
  v1 = [v0 measureIdentifiers];
  type metadata accessor for MeasureIdentifierManagedObject();
  sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
  v2 = sub_22855D51C();

  v3 = sub_22841F8B0(v2);

  v4 = sub_2284291F0(v3);

  return v4;
}

uint64_t sub_2284208B8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 measureIdentifiers];
  type metadata accessor for MeasureIdentifierManagedObject();
  sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
  v4 = sub_22855D51C();

  v5 = sub_22841F8B0(v4);

  v6 = sub_2284291F0(v5);

  *a2 = v6;
  return result;
}

void sub_22842098C(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22842A0C4(v2, v5);

    sub_228429950(v6, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

    type metadata accessor for MeasureIdentifierManagedObject();
    sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
    v7 = sub_22855D50C();

    [v3 setMeasureIdentifiers_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedMeasureIdentifiers.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22842A0C4(a1, v4);

    sub_228429950(v5, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

    type metadata accessor for MeasureIdentifierManagedObject();
    sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
    v6 = sub_22855D50C();

    [v1 setMeasureIdentifiers_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedMeasureIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = [v2 measureIdentifiers];
  v5[2] = type metadata accessor for MeasureIdentifierManagedObject();
  v5[3] = sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
  v7 = sub_22855D51C();

  v8 = sub_22841F8B0(v7);
  v5[4] = 0;

  v9 = sub_2284291F0(v8);

  *v5 = v9;
  return sub_228420DF4;
}

void sub_228420DF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v15 = [(*a1)[1] managedObjectContext];
    if (v15)
    {
      v17 = v2[3];
      v16 = v2[4];
      v18 = v2[1];
      v19 = v2[2];
      v20 = v15;
      v21 = sub_22842A0C4(v3, v20);

      sub_228429950(v21, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

      v22 = sub_22855D50C();

      [v18 setMeasureIdentifiers_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = **a1;

  v6 = [v4 managedObjectContext];
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[1];
  v10 = v2[2];
  v11 = v6;
  v12 = sub_22842A0C4(v3, v11);

  sub_228429950(v12, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

  v13 = sub_22855D50C();

  [v9 setMeasureIdentifiers_];

  v14 = *v2;

LABEL_6:

  free(v2);
}

uint64_t sub_228421060@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 keywords];
  type metadata accessor for Keyword();
  sub_228428BB0(qword_280DED548, type metadata accessor for Keyword);
  v4 = sub_22855D51C();

  sub_22841F558(v4);
  v6 = v5;

  v7 = sub_228406280(v6);

  *a2 = v7;
  return result;
}

void sub_228421134(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  FeedItem.associatedKeywords.setter(v4);
}

void FeedItem.associatedKeywords.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v6 = v3;
    v4 = sub_22842A4E8(a1, v6);

    sub_228429950(v4, type metadata accessor for Keyword, qword_280DED548, type metadata accessor for Keyword, sub_228482918);

    type metadata accessor for Keyword();
    sub_228428BB0(qword_280DED548, type metadata accessor for Keyword);
    v5 = sub_22855D50C();

    [v1 setKeywords_];

    sub_22841E13C();
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedKeywords.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = [v2 keywords];
  v5[2] = type metadata accessor for Keyword();
  v5[3] = sub_228428BB0(qword_280DED548, type metadata accessor for Keyword);
  v7 = sub_22855D51C();

  sub_22841F558(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_228406280(v9);

  *v5 = v10;
  return sub_228421438;
}

void sub_228421438(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v15 = [(*a1)[1] managedObjectContext];
    if (v15)
    {
      v17 = v2[3];
      v16 = v2[4];
      v18 = v2[1];
      v19 = v2[2];
      v20 = v15;
      v21 = sub_22842A4E8(v3, v20);

      sub_228429950(v21, type metadata accessor for Keyword, qword_280DED548, type metadata accessor for Keyword, sub_228482918);

      v22 = sub_22855D50C();

      [v18 setKeywords_];

      sub_22841E13C();
      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = **a1;

  v6 = [v4 managedObjectContext];
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[1];
  v10 = v2[2];
  v11 = v6;
  v12 = sub_22842A4E8(v3, v11);

  sub_228429950(v12, type metadata accessor for Keyword, qword_280DED548, type metadata accessor for Keyword, sub_228482918);

  v13 = sub_22855D50C();

  [v9 setKeywords_];

  sub_22841E13C();
  v14 = *v2;

LABEL_6:

  free(v2);
}

uint64_t FeedItem.associatedProfiles.getter()
{
  v1 = [v0 profiles];
  type metadata accessor for Profile();
  sub_228428BB0(&qword_280DED540, type metadata accessor for Profile);
  v2 = sub_22855D51C();

  v3 = sub_22841FCB4(v2);

  v4 = sub_22842941C(v3);

  return v4;
}

uint64_t sub_228421784@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 profiles];
  type metadata accessor for Profile();
  sub_228428BB0(&qword_280DED540, type metadata accessor for Profile);
  v4 = sub_22855D51C();

  v5 = sub_22841FCB4(v4);

  v6 = sub_22842941C(v5);

  *a2 = v6;
  return result;
}

void sub_228421858(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22842A950(v2, v5);

    sub_228429950(v6, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

    type metadata accessor for Profile();
    sub_228428BB0(&qword_280DED540, type metadata accessor for Profile);
    v7 = sub_22855D50C();

    [v3 setProfiles_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedProfiles.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22842A950(a1, v4);

    sub_228429950(v5, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

    type metadata accessor for Profile();
    sub_228428BB0(&qword_280DED540, type metadata accessor for Profile);
    v6 = sub_22855D50C();

    [v1 setProfiles_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedProfiles.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = [v2 profiles];
  v5[2] = type metadata accessor for Profile();
  v5[3] = sub_228428BB0(&qword_280DED540, type metadata accessor for Profile);
  v7 = sub_22855D51C();

  v8 = sub_22841FCB4(v7);
  v5[4] = 0;

  v9 = sub_22842941C(v8);

  *v5 = v9;
  return sub_228421CC0;
}

void sub_228421CC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v15 = [(*a1)[1] managedObjectContext];
    if (v15)
    {
      v17 = v2[3];
      v16 = v2[4];
      v18 = v2[1];
      v19 = v2[2];
      v20 = v15;
      v21 = sub_22842A950(v3, v20);

      sub_228429950(v21, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

      v22 = sub_22855D50C();

      [v18 setProfiles_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = **a1;

  v6 = [v4 managedObjectContext];
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[1];
  v10 = v2[2];
  v11 = v6;
  v12 = sub_22842A950(v3, v11);

  sub_228429950(v12, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

  v13 = sub_22855D50C();

  [v9 setProfiles_];

  v14 = *v2;

LABEL_6:

  free(v2);
}

uint64_t FeedItem.associatedSharableModelReferences.getter()
{
  v1 = [v0 sharableModelReferences];
  type metadata accessor for SharableModelReference();
  sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference);
  v2 = sub_22855D51C();

  sub_2284200C4(v2);
  v4 = v3;

  v5 = sub_228429AB8(v4);

  return v5;
}

uint64_t sub_228421FFC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sharableModelReferences];
  type metadata accessor for SharableModelReference();
  sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference);
  v4 = sub_22855D51C();

  sub_2284200C4(v4);
  v6 = v5;

  v7 = sub_228429AB8(v6);

  *a2 = v7;
  return result;
}

void sub_2284220D0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_22842AFCC(v2, v5, v6);

    sub_228429950(v7, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

    type metadata accessor for SharableModelReference();
    sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference);
    v8 = sub_22855D50C();

    [v6 setSharableModelReferences_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedSharableModelReferences.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    v6 = sub_22842AFCC(a1, v4, v5);

    sub_228429950(v6, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

    type metadata accessor for SharableModelReference();
    sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference);
    v7 = sub_22855D50C();

    [v5 setSharableModelReferences_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedSharableModelReferences.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = [v2 sharableModelReferences];
  v5[2] = type metadata accessor for SharableModelReference();
  v5[3] = sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference);
  v7 = sub_22855D51C();

  sub_2284200C4(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_228429AB8(v9);

  *v5 = v10;
  return sub_228422558;
}

void sub_228422558(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v16 = [(*a1)[1] managedObjectContext];
    if (v16)
    {
      v18 = v2[3];
      v17 = v2[4];
      v19 = v2[1];
      v20 = v2[2];
      v21 = v16;
      v22 = v19;
      v23 = sub_22842AFCC(v3, v21, v22);

      sub_228429950(v23, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

      v24 = sub_22855D50C();

      [v22 setSharableModelReferences_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = **a1;

  v6 = [v4 managedObjectContext];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v9 = v2[3];
  v8 = v2[4];
  v10 = v2[2];
  v11 = v2[1];
  v12 = v7;
  v13 = sub_22842AFCC(v3, v12, v11);

  sub_228429950(v13, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

  v14 = sub_22855D50C();

  [v11 setSharableModelReferences_];

  v15 = *v2;

LABEL_6:

  free(v2);
}

uint64_t sub_22842280C(uint64_t a1, uint64_t *a2)
{
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_22842B288(a1, &v10 - v6, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v8 = *a2;
  return FeedItem.relevantDateInterval.setter(v7);
}

uint64_t FeedItem.relevantDateInterval.setter(uint64_t a1)
{
  v2 = sub_22855BE1C();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v41 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = sub_22855C16C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - v22;
  v48 = a1;
  sub_22842B288(a1, v16, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v24 = type metadata accessor for RelevantDateInterval();
  v49 = *(*(v24 - 8) + 48);
  v25 = v49(v16, 1, v24);
  v43 = v18;
  v44 = v2;
  if (v25 == 1)
  {
    sub_22842B308(v16, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v26 = 0;
  }

  else
  {
    v27 = v46;
    (*(v46 + 16))(v5, v16, v2);
    sub_22842C018(v16, type metadata accessor for RelevantDateInterval);
    sub_22855BE0C();
    (*(v27 + 8))(v5, v2);
    v26 = sub_22855C10C();
    (*(v18 + 8))(v23, v17);
  }

  v28 = v50;
  [v50 setRelevantStartDate_];

  v29 = v48;
  sub_22842B288(v48, v14, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v30 = v49;
  if (v49(v14, 1, v24) == 1)
  {
    sub_22842B308(v14, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v31 = 0;
  }

  else
  {
    v32 = v46;
    v33 = v44;
    (*(v46 + 16))(v5, v14, v44);
    sub_22842C018(v14, type metadata accessor for RelevantDateInterval);
    v34 = v42;
    sub_22855BDEC();
    (*(v32 + 8))(v5, v33);
    v30 = v49;
    v35 = sub_22855C10C();
    v28 = v50;
    v31 = v35;
    (*(v43 + 8))(v34, v17);
  }

  [v28 setRelevantEndDate_];

  v36 = v45;
  sub_22842B288(v29, v45, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  if (v30(v36, 1, v24) == 1)
  {
    sub_22842B308(v36, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v37 = 0.0;
  }

  else
  {
    v37 = *(v36 + *(v24 + 20));
    sub_22842C018(v36, type metadata accessor for RelevantDateInterval);
  }

  v38 = v47;
  [v28 setRelevantRampUpTime_];
  sub_22842B288(v29, v38, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  if (v30(v38, 1, v24) == 1)
  {
    sub_22842B308(v38, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v39 = 0.0;
  }

  else
  {
    v39 = *(v38 + *(v24 + 24));
    sub_22842C018(v38, type metadata accessor for RelevantDateInterval);
  }

  [v28 setRelevantRampDownTime_];
  return sub_22842B308(v29, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
}

void (*FeedItem.relevantDateInterval.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  FeedItem.relevantDateInterval.getter(v5);
  return sub_228422FF8;
}

void sub_228422FF8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_22842B288(a1[2], v2, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    FeedItem.relevantDateInterval.setter(v2);
    sub_22842B308(v3, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  }

  else
  {
    FeedItem.relevantDateInterval.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

id FeedItem.userInterface.getter()
{
  v1 = [v0 legacyUserInterfaceKind];
  if (v1 <= 5)
  {
    v2 = v1;
    result = [v0 legacyUserInterfaceClassName];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = sub_22855D1AC();

    if (v2)
    {
      return v5;
    }
  }

  return 0;
}

void FeedItem.userInterface.setter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [v4 setLegacyUserInterfaceKind_];
        v10 = sub_22855D17C();
        [v4 setLegacyUserInterfaceClassName_];
        v7 = a1;
        v8 = a2;
        v9 = 1;
      }

      else
      {
        [v4 setLegacyUserInterfaceKind_];
        v10 = sub_22855D17C();
        [v4 setLegacyUserInterfaceClassName_];
        v7 = a1;
        v8 = a2;
        v9 = 2;
      }
    }

    else
    {
      [v4 setLegacyUserInterfaceKind_];
      v10 = sub_22855D17C();
      [v4 setLegacyUserInterfaceClassName_];
      v7 = a1;
      v8 = a2;
      v9 = 0;
    }

LABEL_11:
    sub_22842B20C(v7, v8, v9);

    return;
  }

  if (a3 == 3)
  {
    [v4 setLegacyUserInterfaceKind_];
    v10 = sub_22855D17C();
    [v4 setLegacyUserInterfaceClassName_];
    v7 = a1;
    v8 = a2;
    v9 = 3;
    goto LABEL_11;
  }

  if (a3 == 4)
  {
    [v4 setLegacyUserInterfaceKind_];
    v10 = sub_22855D17C();
    [v4 setLegacyUserInterfaceClassName_];
    v7 = a1;
    v8 = a2;
    v9 = 4;
    goto LABEL_11;
  }

  [v4 setLegacyUserInterfaceKind_];

  [v4 setLegacyUserInterfaceClassName_];
}

void (*FeedItem.userInterface.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  *a1 = FeedItem.userInterface.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2284233E0;
}

void sub_2284233E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (a2)
  {
    sub_22840A934(*a1, v3, v4);
    FeedItem.userInterface.setter(v2, v3, v4);

    sub_22842B20C(v2, v3, v4);
  }

  else
  {
    FeedItem.userInterface.setter(*a1, v3, v4);
  }
}

void FeedItem.hostViewStyle.getter(char *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 hostViewStyleRawValue];
  v4 = sub_22855D1AC();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [v1 hostViewStyleRawValue];
  sub_22855D1AC();

  v9 = sub_22855DFBC();

  if (!v9)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (v9 != 1)
  {
LABEL_7:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v11 = sub_22855CABC();
    __swift_project_value_buffer(v11, qword_280DEEC98);
    v12 = v1;
    v13 = sub_22855CA8C();
    v14 = sub_22855D69C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446722;
      v17 = sub_22855E34C();
      v19 = sub_2283F8938(v17, v18, &v30);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = [v12 hostViewStyleRawValue];
      v21 = sub_22855D1AC();
      v23 = v22;

      v24 = sub_2283F8938(v21, v23, &v30);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2080;
      v25 = [v12 description];
      v26 = sub_22855D1AC();
      v28 = v27;

      v29 = sub_2283F8938(v26, v28, &v30);

      *(v15 + 24) = v29;
      _os_log_impl(&dword_2283ED000, v13, v14, "%{public}s Unexpected host view style raw value %{public}s for feed item: %s, privacy: .private)", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v16, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    goto LABEL_12;
  }

  v10 = 1;
LABEL_13:
  *a1 = v10;
}

void sub_228423744(_BYTE *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  v4 = sub_22855D17C();

  [v2 setHostViewStyleRawValue_];
}

void FeedItem.hostViewStyle.setter(_BYTE *a1)
{
  v2 = *a1 == 0;
  v3 = sub_22855D17C();

  [v1 setHostViewStyleRawValue_];
}

void (*FeedItem.hostViewStyle.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  FeedItem.hostViewStyle.getter((a1 + 8));
  return sub_2284238C4;
}

void sub_2284238C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) == 0;
  v3 = sub_22855D17C();

  [v1 setHostViewStyleRawValue_];
}

uint64_t FeedItem.__allocating_init(context:uniqueIdentifier:userInterface:pluginPackage:userData:dateSubmitted:relevantDateRange:contentKind:searchSectionHint:)(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 a14)
{
  v70 = a7;
  v69 = a6;
  v67 = a4;
  v68 = a5;
  v66 = a2;
  v15 = type metadata accessor for RelevantDateInterval();
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15);
  v63 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v62 = &v60 - v21;
  sub_22842B224(0, &qword_280DEE798, MEMORY[0x277CC88A8], v18);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v60 - v24;
  v26 = sub_22855BE1C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v61 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v60 - v31;
  v71 = *a13;
  v33 = objc_opt_self();
  v34 = sub_22855D17C();
  v35 = [v33 entityForName:v34 inManagedObjectContext:a1];

  if (v35)
  {
    v74 = a12;
    v75 = a11;
    v36 = a10;
    v37 = objc_allocWithZone(v73);
    v72 = v35;
    v73 = a1;
    v38 = [v37 initWithEntity:v35 insertIntoManagedObjectContext:a1];
    v39 = sub_22855D17C();

    [v38 setUniqueIdentifier_];

    FeedItem.userInterface.setter(v67, v68, v69);
    v40 = sub_22855D17C();

    [v38 setPluginPackage_];

    if (a10 >> 60 == 15)
    {
      v41 = 0;
    }

    else
    {
      sub_22842B3E0(a9, a10);
      v41 = sub_22855C08C();
      sub_22842B378(a9, a10);
    }

    v42 = a14;
    [v38 setUserData_];

    v43 = sub_22855C10C();
    [v38 setDateSubmitted_];

    sub_22842B288(v74, v25, &qword_280DEE798, MEMORY[0x277CC88A8]);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_22842B308(v25, &qword_280DEE798, MEMORY[0x277CC88A8]);
    }

    else
    {
      v44 = *(v27 + 32);
      v44(v32, v25, v26);
      v45 = *(v27 + 16);
      v70 = a10;
      v46 = v61;
      v45(v61, v32, v26);
      v47 = v63;
      v48 = v46;
      v42 = a14;
      v44(v63, v48, v26);
      v49 = v65;
      *&v47[*(v65 + 20)] = 0;
      *&v47[*(v49 + 24)] = 0;
      v50 = v47;
      v51 = v62;
      sub_22842C078(v50, v62, type metadata accessor for RelevantDateInterval);
      (*(v64 + 56))(v51, 0, 1, v49);
      FeedItem.relevantDateInterval.setter(v51);
      v36 = v70;
      (*(v27 + 8))(v32, v26);
    }

    v53 = v72;
    v52 = v73;
    v76 = v71;
    ContentKind.rawValue.getter();
    v54 = sub_22855D17C();

    [v38 setContentKindRawValue_];

    sub_22841E13C();
    if (v42 == 13)
    {
      v55 = 0xFFFFFFFFLL;
    }

    else
    {
      v55 = v42;
    }

    [v38 setSearchSectionHintRawValue_];
    sub_22841E13C();
    v56 = sub_22855D17C();
    [v38 setFavoriteStatusRawValue_];

    v57 = sub_22855D17C();
    [v38 setHostViewStyleRawValue_];

    sub_22842B378(a9, v36);
    sub_22842B308(v74, &qword_280DEE798, MEMORY[0x277CC88A8]);
    v58 = sub_22855C16C();
    (*(*(v58 - 8) + 8))(v75, v58);
    return v38;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t FeedItem.addFeatureTag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getDynamicType();
  v9 = (*(*(a3 + 8) + 16))(a2);
  v11 = v10;
  v12 = (*(a4 + 16))(a2, a4);
  v14 = v13;
  v15 = [v5 managedObjectContext];
  if (v15)
  {
    v16 = v15;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v9, v11);
    type metadata accessor for EncodedFeatureTag();
    v17 = v16;
    sub_22842B3E0(v12, v14);
    v18 = EncodedFeatureTag.__allocating_init(context:name:data:)(v17, v9, v11, v12, v14);
    [v5 addFeatureTagsObject_];

    return sub_22842B38C(v12, v14);
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void FeedItem.addFeatureTag(name:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = [v4 managedObjectContext];
  if (v9)
  {
    v10 = v9;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(a1, a2);
    type metadata accessor for EncodedFeatureTag();
    v11 = v10;

    sub_22842B3E0(a3, a4);
    v12 = EncodedFeatureTag.__allocating_init(context:name:data:)(v11, a1, a2, a3, a4);
    [v4 addFeatureTagsObject_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.featureTag<A>(kind:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = [v4 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
  v6 = sub_22855D51C();

  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_22855D56C();
    v7 = v27[1];
    v8 = v27[2];
    v9 = v27[3];
    v10 = v27[4];
    v11 = v27[5];
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = (v6 + 56);
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = (v14 & *(v6 + 56));

    v10 = 0;
    v7 = v6;
  }

  v15 = (v9 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (v20)
    {
      while (1)
      {
        v27[0] = v20;
        if (sub_228424600(v27, a1, a2, a3))
        {
          break;
        }

        v10 = v18;
        v11 = v19;
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22855DB8C())
        {
          swift_dynamicCast();
          v20 = v27[0];
          v18 = v10;
          v19 = v11;
          if (v27[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_228407958();

      (*(a3 + 16))(v20);

      v21 = 0;
      v22 = a4;
    }

    else
    {
LABEL_19:
      sub_228407958();

      v21 = 1;
      v22 = a4;
    }

    (*(*(a2 - 8) + 56))(v22, v21, 1);
  }

  else
  {
    while (1)
    {
      v18 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_19;
      }

      v17 = v8[v18];
      ++v16;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_228424600(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*a1 name];
  v7 = sub_22855D1AC();
  v9 = v8;

  if (v7 == (*(*(a4 + 8) + 16))(a3) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22855E15C();
  }

  return v12 & 1;
}

void _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [v2 managedObjectContext];
  if (!v4)
  {
LABEL_28:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v2 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
  v7 = sub_22855D51C();

  v33 = v5;
  v32 = v3;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_22855D56C();
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v14 = ~v13;
    v15 = -v13;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(v7 + 56);

    v10 = v14;
    v11 = 0;
    v8 = v7;
  }

  v17 = (v10 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v18 = v11;
  v19 = v12;
  v20 = v11;
  if (!v12)
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_24;
      }

      v19 = *(v9 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_13:
  v21 = (v19 - 1) & v19;
  v22 = *(*(v8 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
  if (v22)
  {
    while (1)
    {
      v23 = v8;
      v36 = v22;
      v24 = [v22 name];
      v25 = sub_22855D1AC();
      v27 = v26;

      if (v25 == a1 && v27 == a2)
      {
        break;
      }

      v29 = sub_22855E15C();

      if (v29)
      {
        goto LABEL_26;
      }

      v11 = v20;
      v12 = v21;
      v8 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      if (sub_22855DB8C())
      {
        swift_dynamicCast();
        v22 = v37;
        v20 = v11;
        v21 = v12;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

LABEL_26:
    sub_228407958();

    v30 = [v32 featureTags];
    sub_22855D51C();

    v31 = sub_22855D50C();

    [v32 setFeatureTags_];

    [v33 deleteObject_];
  }

  else
  {
LABEL_24:
    sub_228407958();
  }
}

uint64_t FeedItem.numberOfTags.getter()
{
  v1 = [v0 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
  v2 = sub_22855D51C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_22855DB4C();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3;
}

Swift::Void __swiftcall FeedItem.removeAllTags()()
{
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v20 = v0;
    v3 = [v0 featureTags];
    type metadata accessor for EncodedFeatureTag();
    sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
    v4 = sub_22855D51C();

    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_22855DAFC();
      sub_22855D56C();
      v4 = v22;
      v5 = v23;
      v6 = v24;
      v7 = v25;
      v8 = v26;
    }

    else
    {
      v7 = 0;
      v9 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v6 = ~v9;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v8 = v11 & *(v4 + 56);
    }

    v12 = (v6 + 64) >> 6;
    if (v4 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v7;
      v14 = v8;
      v15 = v7;
      if (!v8)
      {
        break;
      }

LABEL_13:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v17)
      {
LABEL_19:
        sub_228407958();
        v18 = sub_22855D17C();
        v19 = [v20 mutableSetValueForKeyPath_];

        [v19 removeAllObjects];
        return;
      }

      while (1)
      {
        [v2 deleteObject_];

        v7 = v15;
        v8 = v16;
        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_22855DB8C())
        {
          swift_dynamicCast();
          v17 = v21;
          v15 = v7;
          v16 = v8;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  sub_22855DEDC();
  __break(1u);
}

uint64_t FeedItem.FeedItemCreationError.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t sub_228424EE4()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t sub_228424F28()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t static FeedItem.existingFeedItem(with:in:)(uint64_t a1, id a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = [a2 existingObjectWithID:a1 error:v10];
  v4 = v10[0];
  if (!v3)
  {
    v7 = v10[0];
    sub_22855BF3C();

    goto LABEL_5;
  }

  v5 = v3;
  type metadata accessor for FeedItem();
  v2 = swift_dynamicCastClass();
  v6 = v4;
  if (!v2)
  {

    sub_22842B434();
    swift_allocError();
LABEL_5:
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t FeedItem.description.getter()
{
  v31 = sub_22855E2CC();
  v30 = *(v31 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228406280(&unk_283B7ECB0);
  swift_arrayDestroy();
  v34[3] = type metadata accessor for FeedItem();
  v34[0] = v0;
  v28[1] = v0;
  sub_22855E28C();
  v29 = v3;
  v28[0] = sub_22855E2BC();
  sub_22855DDCC();
  sub_22855DF8C();
  if (*(&v39 + 1))
  {
    v5 = v4 + 56;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v35 = v37;
      v36[0] = v38;
      v36[1] = v39;
      v7 = *(&v37 + 1);
      if (*(&v37 + 1))
      {
        v8 = v35;
        if (!*(v4 + 16) || (v9 = *(v4 + 40), sub_22855E22C(), sub_22855D20C(), v10 = sub_22855E27C(), v11 = -1 << *(v4 + 32), v12 = v10 & ~v11, ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0))
        {
LABEL_15:
          v32 = v8;
          v33 = v7;

          MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
          sub_2283F6E48(v36, v34);
          v16 = sub_22855D1BC();
          MEMORY[0x22AAB92A0](v16);

          v17 = v32;
          v18 = v33;
          sub_22842C018(&v35, sub_22842B4D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2283F7678(0, *(v6 + 2) + 1, 1, v6);
          }

          v20 = *(v6 + 2);
          v19 = *(v6 + 3);
          if (v20 >= v19 >> 1)
          {
            v6 = sub_2283F7678((v19 > 1), v20 + 1, 1, v6);
          }

          *(v6 + 2) = v20 + 1;
          v21 = &v6[16 * v20];
          *(v21 + 4) = v17;
          *(v21 + 5) = v18;
          goto LABEL_4;
        }

        v13 = ~v11;
        while (1)
        {
          v14 = (*(v4 + 48) + 16 * v12);
          v15 = *v14 == v8 && v7 == v14[1];
          if (v15 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      sub_22842C018(&v35, sub_22842B4D0);

LABEL_4:
      sub_22855DF8C();
      if (!*(&v39 + 1))
      {
        goto LABEL_21;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:

  v34[0] = v6;
  sub_2283F779C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2283F7928();
  v22 = sub_22855D15C();
  v24 = v23;

  v34[0] = 60;
  v34[1] = 0xE100000000000000;
  *&v37 = swift_getObjectType();
  sub_22842B488();
  v25 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v25);

  MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v22, v24);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  v26 = v34[0];
  (*(v30 + 8))(v29, v31);
  return v26;
}

uint64_t sub_228425550(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_22855E22C();
    ContentKind.rawValue.getter();
    sub_22855D20C();

    v5 = sub_22855E27C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE500000000000000;
        v10 = 0x7472656C61;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            break;
          case 2:
            v9 = 0xE300000000000000;
            v10 = 7368801;
            break;
          case 3:
            v9 = 0xE700000000000000;
            v10 = 0x656C6369747261;
            break;
          case 4:
            v9 = 0xE800000000000000;
            v10 = 0x79726F6765746163;
            break;
          case 5:
            v9 = 0xE400000000000000;
            v10 = 1635017060;
            break;
          case 6:
            v10 = 0x67676F4C61746164;
            v9 = 0xEB00000000676E69;
            break;
          case 7:
            v10 = 0x6D6D755361746164;
            v9 = 0xEB00000000797261;
            break;
          case 8:
            v10 = 0xD000000000000010;
            v9 = 0x800000022856CF30;
            break;
          case 9:
            v10 = 0xD000000000000010;
            v9 = 0x800000022856CF50;
            break;
          case 0xA:
            v10 = 0xD000000000000010;
            v9 = 0x800000022856CF70;
            break;
          case 0xB:
            v10 = 0x5365727574616566;
            v9 = 0xED00007375746174;
            break;
          case 0xC:
            v9 = 0xE900000000000074;
            goto LABEL_22;
          case 0xD:
            v9 = 0xEF68637261655374;
LABEL_22:
            v10 = 0x6867696C68676968;
            break;
          case 0xE:
            v10 = 0x697461676976616ELL;
            v9 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v9 = 0xE600000000000000;
            v10 = 0x617461446F6ELL;
            break;
          case 0x10:
            v10 = 0x726568746FLL;
            break;
          case 0x11:
            v10 = 0x6D726F6674616C70;
            v9 = 0xED00007472656C41;
            break;
          case 0x12:
            v10 = 0x6F69746F6D6F7270;
            v9 = 0xE90000000000006ELL;
            break;
          case 0x13:
            v9 = 0xE600000000000000;
            v10 = 0x74706D6F7270;
            break;
          case 0x14:
            v9 = 0xE700000000000000;
            v10 = 0x656C69666F7270;
            break;
          case 0x15:
            v10 = 0x6E6F6974616C6572;
            v9 = 0xEC00000070696873;
            break;
          case 0x16:
            v9 = 0xE800000000000000;
            v10 = 0x73676E6974746573;
            break;
          case 0x17:
            v9 = 0xE600000000000000;
            v10 = 0x657461647075;
            break;
          case 0x18:
            v9 = 0xE700000000000000;
            v10 = 0x72616265646973;
            break;
          default:
            v10 = 0xD000000000000011;
            v9 = 0x800000022856CEE0;
            break;
        }

        v11 = 0xE500000000000000;
        v12 = 0x7472656C61;
        switch(a1)
        {
          case 1:
            goto LABEL_76;
          case 2:
            v11 = 0xE300000000000000;
            if (v10 != 7368801)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 3:
            v11 = 0xE700000000000000;
            v15 = 0x6C6369747261;
            goto LABEL_55;
          case 4:
            v11 = 0xE800000000000000;
            if (v10 != 0x79726F6765746163)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 5:
            v11 = 0xE400000000000000;
            if (v10 != 1635017060)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 6:
            v16 = 0x67676F4C61746164;
            v17 = 6778473;
            goto LABEL_65;
          case 7:
            v16 = 0x6D6D755361746164;
            v17 = 7959137;
LABEL_65:
            v11 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v10 != v16)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 8:
            v11 = 0x800000022856CF30;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 9:
            v11 = 0x800000022856CF50;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 10:
            v11 = 0x800000022856CF70;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 11:
            v13 = 0x5365727574616566;
            v14 = 0x7375746174;
            goto LABEL_52;
          case 12:
            v11 = 0xE900000000000074;
            goto LABEL_62;
          case 13:
            v11 = 0xEF68637261655374;
LABEL_62:
            if (v10 != 0x6867696C68676968)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 14:
            v11 = 0xEA00000000006E6FLL;
            if (v10 != 0x697461676976616ELL)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 15:
            v11 = 0xE600000000000000;
            if (v10 != 0x617461446F6ELL)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 16:
            if (v10 != 0x726568746FLL)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 17:
            v13 = 0x6D726F6674616C70;
            v14 = 0x7472656C41;
LABEL_52:
            v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v10 != v13)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 18:
            v11 = 0xE90000000000006ELL;
            if (v10 != 0x6F69746F6D6F7270)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 19:
            v11 = 0xE600000000000000;
            v12 = 0x74706D6F7270;
LABEL_76:
            if (v10 == v12)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          case 20:
            v11 = 0xE700000000000000;
            v15 = 0x6C69666F7270;
LABEL_55:
            if (v10 != (v15 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 21:
            v11 = 0xEC00000070696873;
            if (v10 != 0x6E6F6974616C6572)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 22:
            v11 = 0xE800000000000000;
            if (v10 != 0x73676E6974746573)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 23:
            v11 = 0xE600000000000000;
            if (v10 != 0x657461647075)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 24:
            v11 = 0xE700000000000000;
            if (v10 != 0x72616265646973)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          default:
            v11 = 0x800000022856CEE0;
            if (v10 != 0xD000000000000011)
            {
              goto LABEL_78;
            }

LABEL_77:
            if (v9 == v11)
            {

              v18 = 1;
              return v18 & 1;
            }

LABEL_78:
            v18 = sub_22855E15C();

            if (v18)
            {
              return v18 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v18 & 1;
            }

            break;
        }
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t FeedItem.isLoggingItem.getter()
{
  v1 = [v0 pinnedContentDomain];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22855D1AC();
    v5 = v4;

    if (v3 == 0xD000000000000026 && 0x800000022856D1B0 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_22855E15C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t FeedItem.isSummaryItem.getter()
{
  v1 = [v0 pinnedContentDomain];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22855D1AC();
    v5 = v4;

    if (v3 == 0xD000000000000026 && 0x800000022856D180 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_22855E15C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_228425D94(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE500000000000000;
    v9 = 0x7472656C61;
    switch(*v4)
    {
      case 1:
        break;
      case 2:
        v8 = 0xE300000000000000;
        v9 = 7368801;
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = 0x656C6369747261;
        break;
      case 4:
        v8 = 0xE800000000000000;
        v9 = 0x79726F6765746163;
        break;
      case 5:
        v8 = 0xE400000000000000;
        v9 = 1635017060;
        break;
      case 6:
        v9 = 0x67676F4C61746164;
        v8 = 0xEB00000000676E69;
        break;
      case 7:
        v9 = 0x6D6D755361746164;
        v8 = 0xEB00000000797261;
        break;
      case 8:
        v9 = 0xD000000000000010;
        v8 = 0x800000022856CF30;
        break;
      case 9:
        v9 = 0xD000000000000010;
        v8 = 0x800000022856CF50;
        break;
      case 0xA:
        v9 = 0xD000000000000010;
        v8 = 0x800000022856CF70;
        break;
      case 0xB:
        v9 = 0x5365727574616566;
        v8 = 0xED00007375746174;
        break;
      case 0xC:
        v8 = 0xE900000000000074;
        goto LABEL_23;
      case 0xD:
        v8 = 0xEF68637261655374;
LABEL_23:
        v9 = 0x6867696C68676968;
        break;
      case 0xE:
        v9 = 0x697461676976616ELL;
        v8 = 0xEA00000000006E6FLL;
        break;
      case 0xF:
        v8 = 0xE600000000000000;
        v9 = 0x617461446F6ELL;
        break;
      case 0x10:
        v9 = 0x726568746FLL;
        break;
      case 0x11:
        v9 = 0x6D726F6674616C70;
        v8 = 0xED00007472656C41;
        break;
      case 0x12:
        v9 = 0x6F69746F6D6F7270;
        v8 = 0xE90000000000006ELL;
        break;
      case 0x13:
        v8 = 0xE600000000000000;
        v9 = 0x74706D6F7270;
        break;
      case 0x14:
        v8 = 0xE700000000000000;
        v9 = 0x656C69666F7270;
        break;
      case 0x15:
        v9 = 0x6E6F6974616C6572;
        v8 = 0xEC00000070696873;
        break;
      case 0x16:
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746573;
        break;
      case 0x17:
        v8 = 0xE600000000000000;
        v9 = 0x657461647075;
        break;
      case 0x18:
        v8 = 0xE700000000000000;
        v9 = 0x72616265646973;
        break;
      default:
        v9 = 0xD000000000000011;
        v8 = 0x800000022856CEE0;
        break;
    }

    v10 = 0xE500000000000000;
    v11 = 0x7472656C61;
    switch(a1)
    {
      case 1:
        goto LABEL_77;
      case 2:
        v10 = 0xE300000000000000;
        if (v9 != 7368801)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 3:
        v10 = 0xE700000000000000;
        v14 = 0x6C6369747261;
        goto LABEL_56;
      case 4:
        v10 = 0xE800000000000000;
        if (v9 != 0x79726F6765746163)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 5:
        v10 = 0xE400000000000000;
        if (v9 != 1635017060)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 6:
        v15 = 0x67676F4C61746164;
        v16 = 6778473;
        goto LABEL_66;
      case 7:
        v15 = 0x6D6D755361746164;
        v16 = 7959137;
LABEL_66:
        v10 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v15)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 8:
        v10 = 0x800000022856CF30;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 9:
        v10 = 0x800000022856CF50;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 10:
        v10 = 0x800000022856CF70;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 11:
        v12 = 0x5365727574616566;
        v13 = 0x7375746174;
        goto LABEL_53;
      case 12:
        v10 = 0xE900000000000074;
        goto LABEL_63;
      case 13:
        v10 = 0xEF68637261655374;
LABEL_63:
        if (v9 != 0x6867696C68676968)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 14:
        v10 = 0xEA00000000006E6FLL;
        if (v9 != 0x697461676976616ELL)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 15:
        v10 = 0xE600000000000000;
        if (v9 != 0x617461446F6ELL)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 16:
        if (v9 != 0x726568746FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 17:
        v12 = 0x6D726F6674616C70;
        v13 = 0x7472656C41;
LABEL_53:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v9 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 18:
        v10 = 0xE90000000000006ELL;
        if (v9 != 0x6F69746F6D6F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 19:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
LABEL_77:
        if (v9 == v11)
        {
          goto LABEL_78;
        }

        goto LABEL_2;
      case 20:
        v10 = 0xE700000000000000;
        v14 = 0x6C69666F7270;
LABEL_56:
        if (v9 != (v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 21:
        v10 = 0xEC00000070696873;
        if (v9 != 0x6E6F6974616C6572)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 22:
        v10 = 0xE800000000000000;
        if (v9 != 0x73676E6974746573)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 23:
        v10 = 0xE600000000000000;
        if (v9 != 0x657461647075)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 24:
        v10 = 0xE700000000000000;
        if (v9 != 0x72616265646973)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      default:
        v10 = 0x800000022856CEE0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

LABEL_78:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_22855E15C();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

char *sub_2284263F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8F00, sub_22842B828, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_228426540(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2283F779C(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_228426664(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8EF0, sub_22842B740, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2284267E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284269A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228426B00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22840CB74(0, &qword_27D83F488, &qword_27D83F480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842BFBC(0, &qword_27D83F480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228426CC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DE8FB0, &type metadata for PluginSharableModelChange, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_228426E38(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22842B224(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22842702C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE3B0, &type metadata for FeedItemContextChange, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228427160(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22840CB74(0, &qword_280DE8F78, &qword_280DE9F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842BFBC(0, &qword_280DE9F60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284272C0(char *a1, int64_t a2, char a3)
{
  result = sub_228427870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284272E0(char *a1, int64_t a2, char a3)
{
  result = sub_228427E50(a1, a2, a3, *v3, &qword_280DE8F90, &type metadata for Feed.Kind);
  *v3 = result;
  return result;
}

size_t sub_228427310(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F4A0, MEMORY[0x277D10C20], MEMORY[0x277D10C20]);
  *v3 = result;
  return result;
}

size_t sub_228427360(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DED028, type metadata accessor for UserProfile, type metadata accessor for UserProfile);
  *v3 = result;
  return result;
}

char *sub_2284273B0(char *a1, int64_t a2, char a3)
{
  result = sub_228427994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284273D0(char *a1, int64_t a2, char a3)
{
  result = sub_228427AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2284273F0(void *a1, int64_t a2, char a3)
{
  result = sub_228427BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427410(char *a1, int64_t a2, char a3)
{
  result = sub_228427D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427430(char *a1, int64_t a2, char a3)
{
  result = sub_228427E50(a1, a2, a3, *v3, &qword_280DEEC88, &type metadata for ContentKind);
  *v3 = result;
  return result;
}

size_t sub_228427460(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8F30, sub_22842BC38, sub_22842BC38);
  *v3 = result;
  return result;
}

size_t sub_2284274B0(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DED040, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

size_t sub_228427500(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F450, type metadata accessor for UnprotectedNotificationContentState, type metadata accessor for UnprotectedNotificationContentState);
  *v3 = result;
  return result;
}

size_t sub_228427550(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8FC8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_2284275A0(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F458, type metadata accessor for ProtectedNotificationContentState, type metadata accessor for ProtectedNotificationContentState);
  *v3 = result;
  return result;
}

size_t sub_2284275F0(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F448, MEMORY[0x277CC9578], MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

size_t sub_228427640(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DEE3B8, type metadata accessor for PluginFeedItem, type metadata accessor for PluginFeedItem);
  *v3 = result;
  return result;
}

void *sub_228427690(void *a1, int64_t a2, char a3)
{
  result = sub_228427F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284276B0(char *a1, int64_t a2, char a3)
{
  result = sub_2284280B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284276D0(char *a1, int64_t a2, char a3)
{
  result = sub_2284281F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284276F0(char *a1, int64_t a2, char a3)
{
  result = sub_228428318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_228427710(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8FB8, type metadata accessor for PluginSharableModel, type metadata accessor for PluginSharableModel);
  *v3 = result;
  return result;
}

void *sub_228427760(void *a1, int64_t a2, char a3)
{
  result = sub_228428450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427780(char *a1, int64_t a2, char a3)
{
  result = sub_2284285AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284277A0(char *a1, int64_t a2, char a3)
{
  result = sub_2284286D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2284277C0(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8F58, MEMORY[0x277D11C20], MEMORY[0x277D11C20]);
  *v3 = result;
  return result;
}

void *sub_228427810(void *a1, int64_t a2, char a3)
{
  result = sub_2284287FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427830(char *a1, int64_t a2, char a3)
{
  result = sub_228428948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_228427850(void *a1, int64_t a2, char a3)
{
  result = sub_228428A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427870(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228427994(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DED020, &type metadata for PluginFeedItem.SharableModelReference, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228427AB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F490, &type metadata for CachingSharedSummaryTransactionBuilder.SummaryIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228427BDC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22842B224(0, &qword_280DE8EC8, sub_2283FBB5C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2283FBB5C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228427D28(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8F08, sub_22842BE10, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_228427E50(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2283F779C(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_228427F54(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22840CB74(0, &qword_27D83F438, &qword_27D83F440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842BFBC(0, &qword_27D83F440);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284280B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284281F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228428318(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE3C0, &type metadata for ContentKind.Group, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228428450(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22842BBCC(0, &qword_280DE8F70, &qword_280DE9F40, MEMORY[0x277D11BA0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842BFBC(0, &qword_280DE9F40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284285AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8EF0, sub_22842B740, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2284286D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8EF8, type metadata accessor for _HKDataTypeCode, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2284287FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22842B224(0, &qword_280DE8F28, sub_22842B6A8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842B6A8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228428948(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F418, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_228428A64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22842B224(0, &qword_27D83F408, sub_22842B70C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842B70C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_228428BB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228428C28(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = (a1 & 0xFFFFFFFFFFFFFF8);
    v7 = sub_22855DB4C();
    result = MEMORY[0x277D84F90];
    if (!v7)
    {
      return result;
    }

    v49 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v46 = sub_22855DAEC();
    v47 = v9;
    v48 = 1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v7 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (!v7)
  {
    return result;
  }

  v49 = MEMORY[0x277D84F90];
  sub_22855DD4C();
  v10 = -1 << *(v5 + 32);
  v11 = sub_22855DAAC();
  v12 = *(v5 + 36);
  v46 = v11;
  v47 = v12;
  v48 = 0;
  v6 = (v5 & 0xFFFFFFFFFFFFFF8);
LABEL_7:
  type metadata accessor for DataType();
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v13 = 0;
  v39 = v5 + 56;
  v38 = v5 + 64;
  v40 = v7;
  v41 = v5;
  while (v13 < v7)
  {
    v15 = __OFADD__(v13, 1);
    v16 = v13 + 1;
    if (v15)
    {
      goto LABEL_35;
    }

    v44 = v16;
    v17 = v46;
    v18 = v48;
    v19 = v47;
    sub_22845F448(v46, v47, v48, v5);
    v21 = v20;
    v22 = [v20 code];
    sub_22840CB74(0, &qword_280DED008, &qword_280DEEB20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_228560570;
    *(v23 + 56) = MEMORY[0x277D83B88];
    *(v23 + 64) = MEMORY[0x277D83C10];
    *(v23 + 32) = v22;
    *(v23 + 96) = MEMORY[0x277D837D0];
    *(v23 + 104) = sub_22840A7C8();
    *(v23 + 72) = 0x77615265646F63;
    *(v23 + 80) = 0xE700000000000000;
    v6 = sub_22855D62C();
    v24 = sub_22843A288(a2, v6, 1);
    v3 = v4;
    if (v4)
    {
      goto LABEL_41;
    }

    v25 = v24;
    if (v24)
    {
    }

    else
    {
      v26 = objc_opt_self();
      v27 = sub_22855D17C();
      v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:a2];

      v25 = swift_dynamicCastClassUnconditional();
    }

    [v25 setCodeRaw_];

    sub_22855DD1C();
    v29 = *(v49 + 16);
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
    if (v42)
    {
      if (!v18)
      {
        goto LABEL_39;
      }

      v4 = 0;
      v5 = v41;
      if (sub_22855DB0C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v7 = v40;
      v13 = v44;
      sub_22842C208();
      v14 = sub_22855D54C();
      sub_22855DBBC();
      v14(v45, 0);
      if (v44 == v40)
      {
LABEL_32:
        sub_228416CB8(v46, v47, v48);
        return v49;
      }
    }

    else
    {
      if (v18)
      {
        goto LABEL_40;
      }

      v5 = v41;
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v30 = 1 << *(v41 + 32);
      if (v17 >= v30)
      {
        goto LABEL_36;
      }

      v31 = v17 >> 6;
      v32 = *(v39 + 8 * (v17 >> 6));
      if (((v32 >> v17) & 1) == 0)
      {
        goto LABEL_37;
      }

      v4 = 0;
      v3 = v19;
      if (*(v41 + 36) != v19)
      {
        goto LABEL_38;
      }

      v33 = v32 & (-2 << (v17 & 0x3F));
      if (v33)
      {
        v30 = __clz(__rbit64(v33)) | v17 & 0x7FFFFFFFFFFFFFC0;
        v7 = v40;
        v13 = v44;
      }

      else
      {
        v34 = v31 << 6;
        v35 = v31 + 1;
        v36 = (v38 + 8 * v31);
        v7 = v40;
        v13 = v44;
        while (v35 < (v30 + 63) >> 6)
        {
          v37 = *v36++;
          v6 = v37;
          v34 += 64;
          ++v35;
          if (v37)
          {
            sub_228416CB8(v17, v3, 0);
            v30 = __clz(__rbit64(v6)) + v34;
            goto LABEL_31;
          }
        }

        sub_228416CB8(v17, v3, 0);
      }

LABEL_31:
      v46 = v30;
      v47 = v3;
      v48 = 0;
      if (v13 == v7)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:

  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000024, 0x800000022856DE00);
  v45[4] = v3;
  sub_22842BFBC(0, &qword_280DECFE0);
  sub_22855DDDC();
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2284291F0(uint64_t a1)
{
  v2 = sub_22855C33C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_228428BB0(&qword_280DEE360, MEMORY[0x277D10C20]);
  result = MEMORY[0x22AAB95B0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_228482394(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22842941C(uint64_t a1)
{
  v2 = type metadata accessor for UserProfile();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v45 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = *(a1 + 16);
  v17 = sub_228428BB0(qword_280DEDB78, type metadata accessor for UserProfile);
  v50 = v2;
  v18 = MEMORY[0x22AAB95B0](v16, v2, v17);
  v46 = v16;
  if (!v16)
  {
    return v18;
  }

  v19 = 0;
  v45 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v20 = *(v3 + 72);
  while (1)
  {
    v49 = v19;
    sub_22842BF58(v45 + v20 * v19, v15);
    v21 = *(v18 + 40);
    sub_22855E22C();
    v22 = sub_22855C1DC();
    v47 = sub_228428BB0(&qword_280DEE378, MEMORY[0x277CC95F0]);
    v48 = v22;
    sub_22855D14C();
    v23 = sub_22855E27C();
    v24 = -1 << *(v18 + 32);
    v25 = v23 & ~v24;
    if ((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      while (1)
      {
        sub_22842BF58(*(v18 + 48) + v25 * v20, v7);
        if (sub_22855C1AC())
        {
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          v27 = *(v50 + 20);
          v28 = *&v7[v27];
          v29 = *&v15[v27];
          if (sub_22855D9AC())
          {
            break;
          }
        }

        sub_22842C018(v7, type metadata accessor for UserProfile);
        v25 = (v25 + 1) & v26;
        if (((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_22842C018(v7, type metadata accessor for UserProfile);
      goto LABEL_3;
    }

LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22842BF58(v15, v13);
    v51 = v18;
    v31 = *(v18 + 16);
    if (*(v18 + 24) <= v31)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_228489990();
    }

LABEL_22:
    v18 = v51;
    *(v51 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v25;
    sub_22842C078(v13, *(v18 + 48) + v25 * v20, type metadata accessor for UserProfile);
    v41 = *(v18 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      __break(1u);
      goto LABEL_26;
    }

    *(v18 + 16) = v43;
LABEL_3:
    sub_22842C018(v15, type metadata accessor for UserProfile);
    v19 = v49 + 1;
    if (v49 + 1 == v46)
    {
      return v18;
    }
  }

  v32 = v31 + 1;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_228485E64(v32);
  }

  else
  {
    sub_22848B028(v32);
  }

  v33 = v51;
  v34 = *(v51 + 40);
  sub_22855E22C();
  sub_22855D14C();
  v35 = sub_22855E27C();
  v36 = -1 << *(v33 + 32);
  v25 = v35 & ~v36;
  if (((*(v33 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
    goto LABEL_22;
  }

  v37 = ~v36;
  while (1)
  {
    sub_22842BF58(*(v33 + 48) + v25 * v20, v10);
    if (sub_22855C1AC())
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      v38 = *(v50 + 20);
      v39 = *&v10[v38];
      v40 = *&v13[v38];
      if (sub_22855D9AC())
      {
        break;
      }
    }

    sub_22842C018(v10, type metadata accessor for UserProfile);
    v25 = (v25 + 1) & v37;
    if (((*(v33 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  sub_22842C018(v10, type metadata accessor for UserProfile);
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

uint64_t sub_228429950(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_228428BB0(a3, a4);
    result = MEMORY[0x22AAB95B0](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AAB9D20](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_22855DB4C();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_22855DB4C();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_228429AB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842BE70();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for PluginFeedItem.SharableModelReference, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_228482E60(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_228429B98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842BA18();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for ContentKind, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_228483930(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_228429C3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842B968();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for PluginFeedItem.NotificationIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v10[2] = *(v5 + 32);
      v11 = *(v5 + 48);
      sub_22842B9BC(v10, v8);
      sub_2284842E4(v8, v10);
      v7 = v8[0];

      v5 += 56;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_228429D08(uint64_t a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_228428BB0(&qword_280DEE378, MEMORY[0x277CC95F0]);
  result = MEMORY[0x22AAB95B0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_228484698(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_228429EA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842B914();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for SourceProfile, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_228484978(&v8, v6);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_228429F58(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22855DB4C())
  {
    v12 = sub_2283EF310(0, a2, a3);
    v13 = sub_22842B880(a4, a2, a3);
    result = MEMORY[0x22AAB95B0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AAB9D20](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22855DB4C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22842A0C4(uint64_t a1, unint64_t a2)
{
  v37 = a2;
  v4 = sub_22855C33C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v40 = v2;
    v36 = v8;
    v45 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v11 = -1 << *(a1 + 32);
    v39 = a1 + 56;
    v12 = sub_22855DAAC();
    v41 = *(a1 + 36);
    v13 = type metadata accessor for MeasureIdentifierManagedObject();
    v14 = 0;
    v34 = v5 + 16;
    v35 = v13;
    v32 = v9;
    v33 = (v5 + 8);
    v31 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v39 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v41 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v38 = v14;
      v18 = v36;
      (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v12, v4);
      v19 = v40;
      sub_228491868(v18, v37, 1);
      v40 = v19;
      if (v19)
      {
        goto LABEL_28;
      }

      v20 = v18;
      v21 = v4;
      (*v33)(v20, v4);
      sub_22855DD1C();
      v22 = *(v45 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_25;
      }

      v23 = *(v39 + 8 * v17);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      if (v41 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v15 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v4 = v21;
        v16 = v32;
      }

      else
      {
        v25 = a1;
        v26 = v17 << 6;
        v27 = v17 + 1;
        v28 = (v31 + 8 * v17);
        v4 = v21;
        v16 = v32;
        while (v27 < (v15 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_228416CB8(v12, v41, 0);
            v15 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        sub_228416CB8(v12, v41, 0);
LABEL_19:
        a1 = v25;
      }

      v14 = v38 + 1;
      v12 = v15;
      if (v38 + 1 == v16)
      {
        return v45;
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
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001ALL, 0x800000022856DD90);
    MEMORY[0x22AAB92A0](0xD000000000000011, 0x800000022856DDB0);
    MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
    v42 = v40;
    sub_22842BFBC(0, &qword_280DECFE0);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22842A4E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v40 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v7 = v4 + 56;
    v8 = -1 << *(v4 + 32);
    v9 = sub_22855DAAC();
    v10 = *(v4 + 36);
    type metadata accessor for Keyword();
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v11 = 0;
    v34 = v4 + 64;
    v35 = v5;
    v36 = v10;
    v37 = v4 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v4 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v10 != *(v4 + 36))
      {
        goto LABEL_25;
      }

      v39 = v11;
      v14 = v4;
      v15 = (*(v4 + 48) + 16 * v9);
      v16 = *v15;
      v17 = v15[1];
      sub_22840CB74(0, &qword_280DED008, &qword_280DEEB20);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_228560580;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_22840A7C8();
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;
      swift_bridgeObjectRetain_n();
      v19 = sub_22855D62C();
      v20 = sub_22843ABBC(a2, v19, 1);
      if (v3)
      {
        goto LABEL_29;
      }

      v21 = v20;
      if (!v20)
      {
        v22 = objc_opt_self();
        v23 = sub_22855D17C();
        v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:a2];

        v21 = swift_dynamicCastClassUnconditional();
      }

      v25 = sub_22855D17C();
      [v21 setIdentifier_];

      sub_22855DD1C();
      v26 = *(v40 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      v12 = 1 << *(v14 + 32);
      if (v9 >= v12)
      {
        goto LABEL_26;
      }

      v4 = v14;
      v7 = v37;
      v27 = *(v37 + 8 * v13);
      if ((v27 & (1 << v9)) == 0)
      {
        goto LABEL_27;
      }

      LODWORD(v10) = v36;
      if (v36 != *(v4 + 36))
      {
        goto LABEL_28;
      }

      v28 = v27 & (-2 << (v9 & 0x3F));
      if (v28)
      {
        v12 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
      }

      else
      {
        v29 = v13 << 6;
        v30 = v13 + 1;
        v31 = (v34 + 8 * v13);
        v3 = 0;
        while (v30 < (v12 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_228416CB8(v9, v36, 0);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_228416CB8(v9, v36, 0);
      }

LABEL_4:
      v11 = v39 + 1;
      v9 = v12;
      if (v39 + 1 == v35)
      {
        return v40;
      }
    }

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
LABEL_29:
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
    sub_22842BFBC(0, &qword_280DECFE0);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22842A950(uint64_t a1, unint64_t a2)
{
  v53 = a2;
  v49 = sub_22855C1DC();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserProfile();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v57 = v2;
    v62 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v13 = -1 << *(a1 + 32);
    v56 = a1 + 56;
    v14 = sub_22855DAAC();
    v58 = *(a1 + 36);
    v52 = type metadata accessor for Profile();
    v15 = 0;
    v47 = 0x800000022856DA90;
    v44 = (v4 + 8);
    v42 = a1 + 64;
    v46 = xmmword_228560570;
    v45 = a1;
    v43 = v11;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v56 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      if (v58 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v54 = v15;
      v55 = 1 << v14;
      sub_22842BF58(*(a1 + 48) + *(v50 + 72) * v14, v10);
      v19 = v10;
      v20 = *&v10[*(v51 + 20)];
      sub_22840CB74(0, &qword_280DED008, &qword_280DEEB20);
      v21 = swift_allocObject();
      *(v21 + 16) = v46;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_22840A7C8();
      *(v21 + 32) = 0xD000000000000010;
      *(v21 + 40) = v47;
      v22 = [v20 identifier];
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = v22;
      sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
      *(v21 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
      *(v21 + 104) = sub_22842B880(&qword_280DED0B8, &unk_280DED0C0, 0x277CCAD78);
      *(v21 + 72) = v23;
      v24 = sub_22855D62C();
      v25 = v57;
      v26 = sub_22843BE20(v53, v24, 1);
      v57 = v25;
      if (v25)
      {
        goto LABEL_31;
      }

      v27 = v26;
      if (!v26)
      {
        v28 = objc_opt_self();
        v29 = sub_22855D17C();
        v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v53];

        v27 = swift_dynamicCastClassUnconditional();
      }

      v31 = [v20 identifier];
      v32 = v48;
      sub_22855C1BC();

      v33 = sub_22855C19C();
      (*v44)(v32, v49);
      [v27 setUniqueIdentifier_];

      Profile.hkProfileIdentifier.setter(v20);
      v10 = v19;
      sub_22842C018(v19, type metadata accessor for UserProfile);
      sub_22855DD1C();
      v34 = *(v62 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      a1 = v45;
      v16 = 1 << *(v45 + 32);
      if (v14 >= v16)
      {
        goto LABEL_27;
      }

      v35 = *(v56 + 8 * v18);
      if ((v35 & v55) == 0)
      {
        goto LABEL_28;
      }

      if (v58 != *(v45 + 36))
      {
        goto LABEL_29;
      }

      v36 = v35 & (-2 << (v14 & 0x3F));
      if (v36)
      {
        v16 = __clz(__rbit64(v36)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v43;
      }

      else
      {
        v37 = v18 << 6;
        v38 = v18 + 1;
        v17 = v43;
        v39 = (v42 + 8 * v18);
        while (v38 < (v16 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_228416CB8(v14, v58, 0);
            v16 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        sub_228416CB8(v14, v58, 0);
      }

LABEL_4:
      v15 = v54 + 1;
      v14 = v16;
      if (v54 + 1 == v17)
      {
        return v62;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
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
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
    v59 = v57;
    sub_22842BFBC(0, &qword_280DECFE0);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22842AFCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v6 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v7 = sub_22855DAAC();
    v24 = *(a1 + 36);
    result = type metadata accessor for SharableModelReference();
    v8 = 0;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v23 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v11 = (*(a1 + 48) + 16 * v7);
      v12 = v11[1];
      v25[0] = *v11;
      v25[1] = v12;

      static SharableModelReference.findOrCreate(pluginSharableModelReference:in:for:)(v25, a2, a3);

      sub_22855DD1C();
      v13 = *(v26 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      result = sub_22855DD2C();
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v14 = *(v23 + 8 * v10);
      if ((v14 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v15 = v14 & (-2 << (v7 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (a1 + 64 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_228416CB8(v7, v24, 0);
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_228416CB8(v7, v24, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v4)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22842B20C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_22842B224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22842B288(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22842B224(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22842B308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22842B224(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22842B378(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22842B38C(a1, a2);
  }

  return a1;
}

uint64_t sub_22842B38C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22842B3E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22842B434()
{
  result = qword_27D83F3F0;
  if (!qword_27D83F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F3F0);
  }

  return result;
}

unint64_t sub_22842B488()
{
  result = qword_280DE9FC0;
  if (!qword_280DE9FC0)
  {
    type metadata accessor for FeedItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE9FC0);
  }

  return result;
}

void sub_22842B4D0()
{
  if (!qword_280DEE3E8)
  {
    sub_2283F779C(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DEE3E8);
    }
  }
}

unint64_t sub_22842B568()
{
  result = qword_27D83F3F8;
  if (!qword_27D83F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F3F8);
  }

  return result;
}

uint64_t _s21FeedItemCreationErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s21FeedItemCreationErrorOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_22842B6A8()
{
  if (!qword_280DE9678)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9678);
    }
  }
}

void sub_22842B740()
{
  if (!qword_280DE9430)
  {
    type metadata accessor for _HKDataTypeCode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9430);
    }
  }
}

unint64_t sub_22842B7A8()
{
  result = qword_280DECA88;
  if (!qword_280DECA88)
  {
    sub_22842B224(255, &qword_280DECA90, type metadata accessor for HealthAppOrchestrationServer, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DECA88);
  }

  return result;
}

void sub_22842B828()
{
  if (!qword_280DE9508)
  {
    v0 = sub_22855D61C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9508);
    }
  }
}

uint64_t sub_22842B880(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22842B8C4()
{
  result = qword_27D83F428;
  if (!qword_27D83F428)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27D83F428);
  }

  return result;
}

unint64_t sub_22842B914()
{
  result = qword_280DEC170;
  if (!qword_280DEC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC170);
  }

  return result;
}

unint64_t sub_22842B968()
{
  result = qword_27D83F460;
  if (!qword_27D83F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F460);
  }

  return result;
}

unint64_t sub_22842BA18()
{
  result = qword_280DEC180[0];
  if (!qword_280DEC180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEC180);
  }

  return result;
}

unint64_t sub_22842BA6C()
{
  result = qword_280DE8E88;
  if (!qword_280DE8E88)
  {
    sub_22842BACC();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_280DE8E88);
  }

  return result;
}

void sub_22842BACC()
{
  if (!qword_280DE8E98)
  {
    type metadata accessor for CachingSharedSummaryTransactionBuilder();
    sub_22842BFBC(255, &qword_280DECFE0);
    v0 = sub_22855E2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE8E98);
    }
  }
}

unint64_t sub_22842BB50()
{
  result = qword_27D83F470;
  if (!qword_27D83F470)
  {
    sub_22842BBCC(255, &qword_27D83F478, &qword_27D83F480, &protocol descriptor for DiskHealthExperienceStoreObserver, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27D83F470);
  }

  return result;
}

void sub_22842BBCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22842BFBC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22842BC38()
{
  if (!qword_280DE9D18)
  {
    sub_22842BCE4();
    type metadata accessor for PluginFeedItem();
    sub_228428BB0(&qword_280DE9B18, sub_22842BCE4);
    v0 = sub_22855CB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9D18);
    }
  }
}

void sub_22842BCE4()
{
  if (!qword_280DE9B10)
  {
    sub_22842BD78();
    sub_228428BB0(&qword_280DE9950, sub_22842BD78);
    v0 = sub_22855CBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B10);
    }
  }
}

void sub_22842BD78()
{
  if (!qword_280DE9948)
  {
    sub_22842B224(255, &qword_280DEE728, type metadata accessor for PluginFeedItem, MEMORY[0x277D83D88]);
    v0 = sub_22855CCCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9948);
    }
  }
}

void sub_22842BE10()
{
  if (!qword_280DE9510)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9510);
    }
  }
}

unint64_t sub_22842BE70()
{
  result = qword_280DEDAC8;
  if (!qword_280DEDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEDAC8);
  }

  return result;
}

void sub_22842BEC4()
{
  if (!qword_280DED220)
  {
    type metadata accessor for SharableModelReference();
    sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference);
    v0 = sub_22855D55C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED220);
    }
  }
}

uint64_t sub_22842BF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserProfile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22842BFBC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22842C018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22842C078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22842C0E0()
{
  if (!qword_280DED210)
  {
    type metadata accessor for Profile();
    sub_228428BB0(&qword_280DED540, type metadata accessor for Profile);
    v0 = sub_22855D55C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED210);
    }
  }
}

void sub_22842C174()
{
  if (!qword_27D83F498)
  {
    type metadata accessor for MeasureIdentifierManagedObject();
    sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
    v0 = sub_22855D55C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F498);
    }
  }
}

void sub_22842C208()
{
  if (!qword_27D83F4A8)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    sub_22842B880(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720);
    v0 = sub_22855D55C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F4A8);
    }
  }
}

void sub_22842C2B0()
{
  if (!qword_280DED218)
  {
    type metadata accessor for Keyword();
    sub_228428BB0(qword_280DED548, type metadata accessor for Keyword);
    v0 = sub_22855D55C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED218);
    }
  }
}

uint64_t sub_22842C344(unint64_t a1, unint64_t a2)
{
  v85 = sub_22855BE9C();
  v5 = *(v85 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v85);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v88 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v88)
    {
      v73 = a2;
      v74 = v2;
      v95 = MEMORY[0x277D84FA0];
      v96 = MEMORY[0x277D84FA0];
LABEL_4:
      v8 = objc_opt_self();
      v9 = 0;
      v89 = 0;
      v10 = 0;
      v86 = v8;
      v87 = a1 & 0xC000000000000001;
      v78 = a1 & 0xFFFFFFFFFFFFFF8;
      v82 = (v5 + 1);
      v83 = 0;
      v81 = *MEMORY[0x277CBE180];
      v80 = *MEMORY[0x277CBE148];
      v79 = *MEMORY[0x277CBE308];
      v76 = MEMORY[0x277D84FA0];
      v77 = MEMORY[0x277D84FA0];
      v75 = MEMORY[0x277D84FA0];
      while (1)
      {
        v2 = v10;
        if (v87)
        {
          v11 = MEMORY[0x22AAB9D20](v9, a1);
        }

        else
        {
          if (v9 >= *(v78 + 16))
          {
            goto LABEL_51;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        v12 = v11;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v90 = v9 + 1;
        v10 = [v11 token];

        v13 = [v12 bundleID];
        a2 = sub_22855D1AC();
        v2 = v14;

        v15 = [v86 mainBundle];
        v16 = [v15 bundleIdentifier];

        if (v16)
        {
          v17 = a1;
          v18 = v10;
          v19 = sub_22855D1AC();
          v5 = v20;

          if (a2 == v19 && v2 == v5)
          {

            v10 = v18;
            a1 = v17;
            goto LABEL_7;
          }

          a2 = sub_22855E15C();

          v10 = v18;
          a1 = v17;
          if (a2)
          {

            goto LABEL_7;
          }
        }

        else
        {
        }

        v5 = (v89 + 1);
        if (__OFADD__(v89, 1))
        {
          goto LABEL_50;
        }

        a2 = [v12 objectIDNotification];
        v21 = v84;
        sub_22855BE3C();
        v22 = sub_22855BE7C();
        result = (*v82)(v21, v85);
        if (!v22)
        {
          __break(1u);
          return result;
        }

        v91 = sub_22855D1AC();
        v92 = v24;
        sub_22855DBEC();
        if (*(v22 + 16) && (v25 = sub_228443C14(v93), (v26 & 1) != 0))
        {
          sub_2283F6E48(*(v22 + 56) + 32 * v25, v94);
          sub_22842D0B4(v93);
          sub_22842D1C4();
          if (swift_dynamicCast())
          {
            a2 = v91;
            if ((v91 & 0xC000000000000001) != 0)
            {
              if (!sub_22855DB4C())
              {
                goto LABEL_44;
              }
            }

            else if (!*(v91 + 16))
            {
LABEL_44:

              goto LABEL_29;
            }

            sub_2284E206C(a2, v75);
            v75 = v27;
            v96 = v27;
          }
        }

        else
        {
          sub_22842D0B4(v93);
        }

LABEL_29:
        v91 = sub_22855D1AC();
        v92 = v28;
        sub_22855DBEC();
        if (*(v22 + 16) && (v29 = sub_228443C14(v93), (v30 & 1) != 0))
        {
          sub_2283F6E48(*(v22 + 56) + 32 * v29, v94);
          sub_22842D0B4(v93);
          sub_22842D1C4();
          if (swift_dynamicCast())
          {
            a2 = v91;
            if ((v91 & 0xC000000000000001) != 0)
            {
              if (!sub_22855DB4C())
              {
                goto LABEL_46;
              }
            }

            else if (!*(v91 + 16))
            {
LABEL_46:

              goto LABEL_36;
            }

            sub_2284E206C(a2, v77);
            v77 = v31;
          }
        }

        else
        {
          sub_22842D0B4(v93);
        }

LABEL_36:
        v91 = sub_22855D1AC();
        v92 = v32;
        sub_22855DBEC();
        v33 = *(v22 + 16);
        v83 = v5;
        if (v33 && (v34 = sub_228443C14(v93), (v35 & 1) != 0))
        {
          sub_2283F6E48(*(v22 + 56) + 32 * v34, v94);
          sub_22842D0B4(v93);

          sub_22842D1C4();
          if (swift_dynamicCast())
          {
            v36 = v91;
            if ((v91 & 0xC000000000000001) != 0)
            {
              if (!sub_22855DB4C())
              {
                goto LABEL_48;
              }
            }

            else if (!*(v91 + 16))
            {
LABEL_48:

              goto LABEL_6;
            }

            sub_2284E206C(v36, v76);
            v38 = v37;

            v76 = v38;
            v95 = v38;
          }

          else
          {
          }
        }

        else
        {

          sub_22842D0B4(v93);
        }

LABEL_6:
        v89 = v5;
LABEL_7:
        ++v9;
        if (v90 == v88)
        {
          goto LABEL_55;
        }
      }
    }

    return 0;
  }

LABEL_52:
  if (sub_22855DB4C() <= 0)
  {
    return 0;
  }

  v73 = a2;
  v74 = v2;
  a2 = MEMORY[0x277D84FA0];
  v95 = MEMORY[0x277D84FA0];
  v96 = MEMORY[0x277D84FA0];
  v88 = sub_22855DB4C();
  if (v88)
  {
    goto LABEL_4;
  }

  v77 = a2;
  v83 = 0;
  v10 = 0;
LABEL_55:
  v39 = v77;
  sub_22852546C(v77);

  sub_22852546C(v40);
  v41 = v95;
  v42 = v96;

  sub_2284E206C(v41, v42);
  sub_2284E206C(v39, v43);
  if ((v44 & 0xC000000000000001) != 0)
  {
    v90 = sub_22855DB4C();
  }

  else
  {
    v90 = *(v44 + 16);
  }

  v45 = v10;

  sub_22842D108();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560670;
  v47 = *MEMORY[0x277CBE180];
  *(inited + 32) = sub_22855D1AC();
  *(inited + 40) = v48;
  sub_22842D1C4();
  v50 = v49;
  *(inited + 72) = v49;
  *(inited + 48) = v42;
  v51 = *MEMORY[0x277CBE148];
  *(inited + 80) = sub_22855D1AC();
  *(inited + 88) = v52;
  *(inited + 120) = v50;
  *(inited + 96) = v77;
  v53 = *MEMORY[0x277CBE308];
  *(inited + 128) = sub_22855D1AC();
  *(inited + 136) = v54;
  *(inited + 168) = v50;
  *(inited + 144) = v41;

  v55 = sub_22847C614(inited);
  swift_setDeallocating();
  sub_22842D160();
  swift_arrayDestroy();
  v56 = objc_opt_self();
  sub_22842CDF8(v55);

  v57 = sub_22855D0DC();

  sub_2283EF310(0, &qword_280DED110, 0x277CBE440);
  v58 = sub_22855D39C();
  [v56 mergeChangesFromRemoteContextSave:v57 intoContexts:v58];

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v59 = sub_22855CABC();
  __swift_project_value_buffer(v59, qword_280DEEC98);

  v60 = v74;
  v61 = sub_22855CA8C();
  v62 = sub_22855D6AC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v93[0] = v89;
    *v63 = 136316418;
    v64 = [v60 debugDescription];
    v65 = sub_22855D1AC();
    v67 = v66;

    v68 = sub_2283F8938(v65, v67, v93);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2048;
    *(v63 + 14) = v83;
    *(v63 + 22) = 2048;
    if ((v42 & 0xC000000000000001) != 0)
    {
      v69 = sub_22855DB4C();
    }

    else
    {
      v69 = *(v42 + 16);
    }

    *(v63 + 24) = v69;

    *(v63 + 32) = 2048;
    if ((v77 & 0xC000000000000001) != 0)
    {
      v70 = sub_22855DB4C();
    }

    else
    {
      v70 = *(v77 + 16);
    }

    *(v63 + 34) = v70;

    *(v63 + 42) = 2048;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v71 = sub_22855DB4C();
    }

    else
    {
      v71 = *(v41 + 16);
    }

    *(v63 + 44) = v71;

    *(v63 + 52) = 2048;
    *(v63 + 54) = v90;
    _os_log_impl(&dword_2283ED000, v61, v62, "%s mergeExternalChanges() merged transactions count: %ld, allInsertedObjectIDs count: %ld, allDeletedObjectIDs count: %ld, allUpdatedObjectIDs count: %ld, total objectsIDs count: %ld", v63, 0x3Eu);
    v72 = v89;
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x22AABAD40](v72, -1, -1);
    MEMORY[0x22AABAD40](v63, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v45;
}

uint64_t sub_22842CDF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22842D2A0();
    v2 = sub_22855DF6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2283F6E48(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_228400400(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_228400400(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_228400400(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22855DBCC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_228400400(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22842D108()
{
  if (!qword_280DED018)
  {
    sub_22842D160();
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED018);
    }
  }
}

void sub_22842D160()
{
  if (!qword_280DED278)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DED278);
    }
  }
}

void sub_22842D1C4()
{
  if (!qword_280DED1E8)
  {
    sub_2283EF310(255, &qword_280DED160, 0x277CBE448);
    sub_22842D238();
    v0 = sub_22855D57C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED1E8);
    }
  }
}

unint64_t sub_22842D238()
{
  result = qword_280DED158;
  if (!qword_280DED158)
  {
    sub_2283EF310(255, &qword_280DED160, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED158);
  }

  return result;
}

void sub_22842D2A0()
{
  if (!qword_280DED048)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED048);
    }
  }
}

uint64_t sub_22842D304()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22842D368()
{
  type metadata accessor for LegacyGenerationExecutor.Planner();

  return swift_allocObject();
}

uint64_t sub_22842D3BC(uint64_t a1)
{
  v2 = sub_22842E10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22842D3F8(uint64_t a1)
{
  v2 = sub_22842E10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22842D440@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = swift_allocObject();
  *a2 = result;
  return result;
}

uint64_t sub_22842D480(void *a1)
{
  sub_22842E0B0();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22842E10C();
  sub_22855E31C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22842D700(uint64_t (*a1)(void), uint64_t a2)
{
  v43[1] = a2;
  v44 = a1;
  v43[0] = sub_22855CABC();
  v3 = *(v43[0] - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v43[0]);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v43 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v43 - v11;
  v13 = v2[2];
  v14 = *(v13 + 16);
  os_unfair_lock_lock((v14 + 104));
  if (*(v14 + 16) != 1 || *(v14 + 40) && (*(v14 + 48) & 1) != 0)
  {
    v15 = *(v14 + 40);
    v16 = *(v14 + 56);
    v17 = *(v14 + 88);
    v53[2] = *(v14 + 72);
    v53[3] = v17;
    v53[0] = v15;
    v53[1] = v16;
    v52 = *(v14 + 24);
    v18 = *(v14 + 40);
    v19 = *(v14 + 56);
    v57 = *(v14 + 72);
    v58 = v17;
    v55 = v18;
    v56 = v19;
    v54 = *(v14 + 24);
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 72) = 0u;
    sub_22842DBD4(&v52, v59);
    sub_22842DC5C(&v54);
    v59[2] = v53[1];
    v59[3] = v53[2];
    v59[4] = v53[3];
    v59[0] = v52;
    v59[1] = v53[0];
    v20 = *&v53[0];
  }

  else
  {
    v20 = 0;
    memset(v59, 0, 80);
  }

  os_unfair_lock_unlock((v14 + 104));
  v51 = v59[0];
  v47 = *(&v59[1] + 8);
  v48 = *(&v59[2] + 8);
  v49 = *(&v59[3] + 8);
  v50 = *(&v59[4] + 1);
  if (v20)
  {
    v22 = v2[3];
    v21 = v2[4];
    swift_getObjectType();
    v23 = *(*(v21 + 16) + 8);
    sub_22855C59C();
    v56 = v59[2];
    v57 = v59[3];
    v58 = v59[4];
    v54 = v59[0];
    v55 = v59[1];
    sub_22842DCDC(&v54, &v52);
    v24 = sub_22855CA8C();
    v25 = sub_22855D6AC();
    sub_22842DC5C(v59);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315138;
      v52 = v51;
      *(v53 + 8) = v47;
      v46 = v27;
      *(&v53[1] + 8) = v48;
      *(&v53[2] + 8) = v49;
      *&v53[0] = v20;
      *(&v53[3] + 1) = v50;
      sub_22842DCDC(&v54, &v45);
      v28 = sub_22855D1BC();
      v30 = sub_2283F8938(v28, v29, &v46);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2283ED000, v24, v25, "[Legacy Generation Orchestration] Beginning background work request %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AABAD40](v27, -1, -1);
      MEMORY[0x22AABAD40](v26, -1, -1);

      sub_22842DC5C(v59);
    }

    else
    {
      sub_22842DC5C(v59);
    }

    (*(v3 + 8))(v12, v43[0]);
  }

  else
  {
    v31 = *(v13 + 16);
    os_unfair_lock_lock((v31 + 104));
    v32 = *(v31 + 16);
    os_unfair_lock_unlock((v31 + 104));
    v34 = v2[3];
    v33 = v2[4];
    swift_getObjectType();
    v35 = *(*(v33 + 16) + 8);
    if (v32 == 1)
    {
      sub_22855C59C();
      v36 = sub_22855CA8C();
      v37 = sub_22855D6AC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2283ED000, v36, v37, "[Legacy Generation Orchestration] Foreground generation.", v38, 2u);
        MEMORY[0x22AABAD40](v38, -1, -1);
      }

      (*(v3 + 8))(v10, v43[0]);
    }

    else
    {
      sub_22855C59C();
      v39 = sub_22855CA8C();
      v40 = sub_22855D6AC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2283ED000, v39, v40, "[Legacy Generation Orchestration] Idle.", v41, 2u);
        MEMORY[0x22AABAD40](v41, -1, -1);
      }

      (*(v3 + 8))(v7, v43[0]);
    }
  }

  return v44(0);
}

uint64_t sub_22842DBD4(uint64_t a1, uint64_t a2)
{
  sub_2283F88E8(0, &qword_280DEBC00, &type metadata for GenerationWorkRequest, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22842DC5C(uint64_t a1)
{
  sub_2283F88E8(0, &qword_280DEBC00, &type metadata for GenerationWorkRequest, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22842DD38(void (*a1)(uint64_t))
{
  v2 = sub_22855C85C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22855C5CC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2283F8E08(0, &qword_280DE8F58, MEMORY[0x277D11C20]);
  v6 = *(sub_22855C7DC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228560580;
  sub_22855C5AC();
  sub_2283F8E08(0, &qword_280DE8F50, sub_22842DFA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228560580;
  *(v10 + 56) = sub_22855C83C();
  *(v10 + 64) = sub_22842E004(&qword_280DE9F08, 255, MEMORY[0x277D11C38]);
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_22855C84C();
  sub_22855C82C();
  sub_22855C7BC();
  a1(v9);
}

unint64_t sub_22842DFA0()
{
  result = qword_280DE9E80;
  if (!qword_280DE9E80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9E80);
  }

  return result;
}

uint64_t sub_22842E004(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_22842E0B0()
{
  if (!qword_27D83F4B8)
  {
    sub_22842E10C();
    v0 = sub_22855E0EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F4B8);
    }
  }
}

unint64_t sub_22842E10C()
{
  result = qword_27D83F4C0;
  if (!qword_27D83F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4C0);
  }

  return result;
}

unint64_t sub_22842E174()
{
  result = qword_27D83F4C8;
  if (!qword_27D83F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4C8);
  }

  return result;
}

unint64_t sub_22842E1CC()
{
  result = qword_27D83F4D0;
  if (!qword_27D83F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4D0);
  }

  return result;
}

uint64_t sub_22842E258()
{
  result = swift_getKeyPath();
  qword_280DEBC38 = result;
  return result;
}

uint64_t static ContentKindFeatureTag.keyPath.getter()
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ContentKindFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBC38 = a1;
}

uint64_t (*static ContentKindFeatureTag.keyPath.modify())()
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22842E404()
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t getEnumTagSinglePayload for ContentKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22842E620()
{
  result = sub_22855D17C();
  qword_280DE93A0 = result;
  return result;
}

id static NSNotificationName.cachedSharedSummaryTransactionCompleted.getter()
{
  if (qword_280DE9398 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93A0;

  return v1;
}

void sub_22842E6B4()
{
  v1 = [*(v0 + 16) transactionUUID];
  sub_22855C1BC();
}

void *CachingSharedSummaryTransactionBuilder.__allocating_init(transactionBuilder:fallbackTransactionFilter:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_228434304(a1, a2, a3);

  return v6;
}

void *CachingSharedSummaryTransactionBuilder.init(transactionBuilder:fallbackTransactionFilter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_228434304(a1, a2, a3);

  return v4;
}

uint64_t sub_22842E7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228434624(&v9[4], &v12);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v12;
  if (v12)
  {
    v12();
    sub_228416CF8(v10);
  }
}

void sub_22842E900(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_2284350D8((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22842E9E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(v2 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v7 + 16);
  sub_228435484(&v7[4], &v10);
  os_unfair_lock_unlock(v7 + 16);
  v8 = v10;
  if (v10)
  {
    v10();
    sub_228416CF8(v8);
  }
}

void sub_22842EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v9[4] = sub_228435038;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2284A72DC;
  v9[3] = &block_descriptor_143;
  v8 = _Block_copy(v9);

  [v6 discardWithCompletion_];
  _Block_release(v8);
}

void sub_22842EBE8(int a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v9 = [objc_opt_self() defaultCenter];
    if (qword_280DE9398 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_280DE93A0 object:a5];

    v10 = *(a5 + 40);
    os_unfair_lock_lock((v10 + 64));
    v11 = sub_22847C760(MEMORY[0x277D84F90]);
    v12 = *(v10 + 16);
    *(v10 + 16) = v11;

    os_unfair_lock_unlock((v10 + 64));
    a3(0);
  }
}

uint64_t sub_22842ED08(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228435484(&v9[4], &v12);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v12;
  if (v12)
  {
    v12();
    sub_228416CF8(v10);
  }
}

void sub_22842EE1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = a4;
  v11[4] = sub_228434FDC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22842F0A4;
  v11[3] = &block_descriptor_137;
  v10 = _Block_copy(v11);

  [v8 commitAsUrgent:a2 & 1 completion:v10];
  _Block_release(v10);
}

void sub_22842EF20(void *a1, id a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = a1;
    v9 = [v7 defaultCenter];
    if (qword_280DE9398 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_280DE93A0 object:a3];

    v14 = v8;
    a4(a1, 0);

    v10 = v14;
  }

  else
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v12 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a2 = 0;
      v11 = v12;
    }

    v13 = a2;
    a4(v11, 1);
    v10 = v11;
  }
}

void sub_22842F0A4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22842F160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228435484(&v9[4], &v12);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v12;
  if (v12)
  {
    v12();
    sub_228416CF8(v10);
  }
}

void sub_22842F278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = sub_22855D0DC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_228434F70;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2284A72DC;
  v10[3] = &block_descriptor_131;
  v9 = _Block_copy(v10);

  [v6 addMetadata:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_22842F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = *(v4 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v11 + 16);
  sub_228435484(&v11[4], &v14);
  os_unfair_lock_unlock(v11 + 16);
  v12 = v14;
  if (v14)
  {
    v14();
    sub_228416CF8(v12);
  }
}

void sub_22842F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v11 = sub_22855D17C();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v14[4] = sub_228434F44;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2284A72DC;
  v14[3] = &block_descriptor_125;
  v13 = _Block_copy(v14);

  [v10 removeAllSummariesWithPackage:v11 completion:v13];
  _Block_release(v13);
}

void sub_22842F5E8(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_228434F54((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22842F6C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v3 + 48) + ((v10 << 11) | (32 * v13)));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[3];
    v41 = v14[2];
    if (*v14 == a2 && v16 == a3)
    {
      v15 = a2;
      goto LABEL_16;
    }

    result = sub_22855E15C();
    if (result)
    {
LABEL_16:

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2284273D0(0, v11[2] + 1, 1);
      }

      v20 = v11[2];
      v19 = v11[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v38 = v11[2];
        v39 = v20 + 1;
        result = sub_2284273D0((v19 > 1), v20 + 1, 1);
        v20 = v38;
        v21 = v39;
      }

      v11[2] = v21;
      v22 = &v11[4 * v20];
      v22[4] = v15;
      v22[5] = v16;
      v22[6] = v41;
      v22[7] = v17;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  v23 = v11[2];
  if (v23)
  {
    v24 = v11 + 7;
    do
    {
      v28 = *(v24 - 3);
      v29 = *(v24 - 2);
      v30 = *(v24 - 1);
      v31 = *v24;

      v32 = sub_228443C58(v28, v29, v30, v31);
      v34 = v33;

      if (v34)
      {
        v35 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *a1;
        v44 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_228447E0C();
          v37 = v44;
        }

        v25 = *(v37 + 48) + 32 * v32;
        v26 = *(v25 + 8);
        v27 = *(v25 + 24);

        sub_2284D24AC(v32, v37);
        *a1 = v37;
      }

      v24 += 4;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_22842F948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(v6 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v14 + 16);
  sub_228435484(&v14[4], &v17);
  os_unfair_lock_unlock(v14 + 16);
  v15 = v17;
  if (v17)
  {
    v17();
    sub_228416CF8(v15);
  }
}

void sub_22842FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 16);
  v13 = sub_22855D17C();
  v14 = sub_22855D39C();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v17[4] = sub_228434F14;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2284A72DC;
  v17[3] = &block_descriptor_118;
  v16 = _Block_copy(v17);

  [v12 removeSummariesWithPackage:v13 names:v14 completion:v16];
  _Block_release(v16);
}

void sub_22842FBE0(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_228434F24((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22842FCC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v6 = *a1;
  v7 = *(*a1 + 64);
  v45 = *a1 + 64;
  v46 = a1;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v47 = MEMORY[0x277D84F90];
  v48 = a3;
  v51 = a2;
  while (v10)
  {
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (*(v6 + 48) + ((v13 << 11) | (32 * v16)));
    result = *v17;
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = *v17 == a2 && v18 == a3;
    v50 = *v17;
    if (!v21)
    {
      result = sub_22855E15C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v53[0] = v19;
    v53[1] = v20;
    MEMORY[0x28223BE20](result);
    v43[2] = v53;

    v22 = v52;
    v23 = sub_2284C6D9C(sub_228435468, v43, v49);
    v52 = v22;
    if (v23)
    {
      v44 = v19;
      v24 = v47;
      result = swift_isUniquelyReferenced_nonNull_native();
      v54 = v24;
      if ((result & 1) == 0)
      {
        result = sub_2284273D0(0, *(v24 + 16) + 1, 1);
        v24 = v54;
      }

      v25 = v50;
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_2284273D0((v26 > 1), v27 + 1, 1);
        v25 = v50;
        v24 = v54;
      }

      *(v24 + 16) = v27 + 1;
      v47 = v24;
      v28 = (v24 + 32 * v27);
      v28[4] = v25;
      v28[5] = v18;
      v28[6] = v44;
      v28[7] = v20;
    }

    else
    {
    }

    a3 = v48;
    a2 = v51;
  }

  v14 = v46;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v45 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      a2 = v51;
      goto LABEL_10;
    }
  }

  v29 = *(v47 + 16);
  if (v29)
  {
    v30 = (v47 + 56);
    do
    {
      v34 = *(v30 - 3);
      v35 = *(v30 - 2);
      v36 = *(v30 - 1);
      v37 = *v30;

      v38 = sub_228443C58(v34, v35, v36, v37);
      LOBYTE(v36) = v39;

      if (v36)
      {
        v40 = *v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *v14;
        v53[0] = *v14;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_228447E0C();
          v42 = v53[0];
        }

        v31 = *(v42 + 48) + 32 * v38;
        v32 = *(v31 + 8);
        v33 = *(v31 + 24);

        sub_2284D24AC(v38, v42);
        *v14 = v42;
      }

      v30 += 4;
      --v29;
    }

    while (v29);
  }
}

uint64_t sub_228430004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228435484(&v9[4], &v12);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v12;
  if (v12)
  {
    v12();
    sub_228416CF8(v10);
  }
}

void sub_228430144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 16);
  sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
  v14 = sub_22855D39C();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v17[4] = a6;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2284A72DC;
  v17[3] = a7;
  v16 = _Block_copy(v17);

  [v13 addSummaries:v14 completion:v16];
  _Block_release(v16);
}

void sub_22843027C(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_228435450((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22843035C(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (result >= 1)
    {
      v4 = 0;
      v32 = a2;
      v33 = a2 & 0xC000000000000001;
      v30 = result;
      v31 = a1;
      while (1)
      {
        v7 = v33 ? MEMORY[0x22AAB9D20](v4) : *(a2 + 8 * v4 + 32);
        v8 = v7;
        v9 = [v7 package];
        v10 = sub_22855D1AC();
        v12 = v11;

        v34 = v8;
        v13 = [v8 name];
        v14 = sub_22855D1AC();
        v16 = v15;

        v17 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *a1;
        v35 = *a1;
        v20 = sub_228443C58(v10, v12, v14, v16);
        v21 = *(v19 + 16);
        v22 = (a2 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          break;
        }

        a1 = a2;
        if (*(v19 + 24) >= v23)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_228447E0C();
          }
        }

        else
        {
          sub_228444708(v23, isUniquelyReferenced_nonNull_native);
          v24 = sub_228443C58(v10, v12, v14, v16);
          if ((a1 & 1) != (a2 & 1))
          {
            goto LABEL_24;
          }

          v20 = v24;
        }

        if (a1)
        {
          v5 = v35[7];
          v6 = *(v5 + 8 * v20);
          *(v5 + 8 * v20) = v34;
        }

        else
        {
          v35[(v20 >> 6) + 8] |= 1 << v20;
          v25 = (v35[6] + 32 * v20);
          *v25 = v10;
          v25[1] = v12;
          v25[2] = v14;
          v25[3] = v16;
          *(v35[7] + 8 * v20) = v34;
          v26 = v35[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_20;
          }

          v35[2] = v28;
        }

        ++v4;
        result = v30;
        a1 = v31;
        *v31 = v35;
        a2 = v32;
        if (v30 == v4)
        {
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v29 = a2;
      result = sub_22855DB4C();
      a2 = v29;
      if (!result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_24:
    result = sub_22855E1BC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2284305B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v6;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(v6 + 40);

  swift_retain_n();

  os_unfair_lock_lock(v14 + 16);
  sub_22843471C(&v14[4]);
  os_unfair_lock_unlock(v14 + 16);
}

uint64_t sub_2284306CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v133 = a7;
  v132 = a6;
  v131 = a5;
  v143 = a2;
  v10 = sub_22855CFBC();
  v138 = *(v10 - 8);
  v139 = v10;
  v11 = *(v138 + 64);
  MEMORY[0x28223BE20](v10);
  v137 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855CFEC();
  v135 = *(v13 - 8);
  v136 = v13;
  v14 = *(v135 + 64);
  MEMORY[0x28223BE20](v13);
  v134 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22847C760(MEMORY[0x277D84F90]);
  v140 = a1;
  v141 = v16;
  v17 = *(a1 + 8);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(a1 + 8) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v142 = *(a1 + 8);

  v25 = 0;
  v144 = a3;
  v145 = a4;
  while (v23)
  {
LABEL_9:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = *(*(v142 + 56) + ((v25 << 9) | (8 * v27)));
    v29 = v28;
    if (a3)
    {
      v30 = [v28 package];
      v31 = sub_22855D1AC();
      v33 = v32;

      v34 = v31;
      a3 = v144;
      if (v34 == v143 && v33 == v144)
      {
      }

      else
      {
        v36 = sub_22855E15C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v37 = [v29 name];
    v38 = sub_22855D1AC();
    v40 = v39;

    aBlock = v38;
    v148 = v40;
    MEMORY[0x28223BE20](v41);
    *(&v125 - 2) = &aBlock;
    LOBYTE(v37) = sub_2284C6D9C(sub_228434EDC, (&v125 - 4), v145);
    a3 = v144;

    a4 = v145;
    if (v37)
    {
LABEL_20:
      v42 = [v29 package];
      v129 = sub_22855D1AC();
      v130 = v43;

      v44 = [v29 name];
      v45 = sub_22855D1AC();
      v128 = v46;

      v127 = v29;
      v47 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v47;
      v126 = v45;
      v49 = v45;
      v50 = v128;
      v52 = sub_228443C58(v129, v130, v49, v128);
      v53 = v47[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_64;
      }

      v56 = v51;
      if (v47[3] >= v55)
      {
        a4 = v145;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228447E0C();
          goto LABEL_24;
        }

        a3 = v144;
        if (v51)
        {
          goto LABEL_29;
        }

LABEL_25:
        v59 = aBlock;
        aBlock[(v52 >> 6) + 8] |= 1 << v52;
        v60 = (v59[6] + 32 * v52);
        v61 = v130;
        *v60 = v129;
        v60[1] = v61;
        v60[2] = v126;
        v60[3] = v50;
        v62 = v127;
        *(v59[7] + 8 * v52) = v127;

        v63 = v59[2];
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          goto LABEL_66;
        }

        v141 = v59;
        v59[2] = v65;
      }

      else
      {
        sub_228444708(v55, isUniquelyReferenced_nonNull_native);
        v57 = sub_228443C58(v129, v130, v126, v50);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_68;
        }

        v52 = v57;
LABEL_24:
        a4 = v145;
        a3 = v144;
        if ((v56 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_29:

        v141 = aBlock;
        v66 = aBlock[7];
        v67 = *(v66 + 8 * v52);
        v68 = v127;
        *(v66 + 8 * v52) = v127;
      }
    }

    else
    {
LABEL_19:
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  v69 = *v140 + 64;
  v70 = 1 << *(*v140 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(*v140 + 64);
  v73 = (v70 + 63) >> 6;
  v142 = *v140;

  v74 = 0;
  while (2)
  {
    if (v72)
    {
LABEL_39:
      v76 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v77 = *(*(v142 + 56) + ((v74 << 9) | (8 * v76)));
      v78 = v77;
      if (a3)
      {
        v79 = [v77 package];
        v80 = sub_22855D1AC();
        v82 = v81;

        if (v80 == v143 && v82 == v144)
        {
        }

        else
        {
          v84 = sub_22855E15C();

          if ((v84 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      if (a4)
      {
        v85 = [v78 name];
        v86 = sub_22855D1AC();
        v88 = v87;

        aBlock = v86;
        v148 = v88;
        MEMORY[0x28223BE20](v89);
        *(&v125 - 2) = &aBlock;
        LOBYTE(v85) = sub_2284C6D9C(sub_228435468, (&v125 - 4), v145);

        a4 = v145;
        if ((v85 & 1) == 0)
        {
LABEL_49:

          a3 = v144;
          continue;
        }
      }

      v90 = [v78 package];
      v130 = sub_22855D1AC();
      v140 = v91;

      v92 = [v78 name];
      v93 = sub_22855D1AC();
      v129 = v94;

      v128 = v78;
      v95 = v141;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v95;
      v127 = v93;
      v97 = v93;
      v98 = v129;
      v100 = sub_228443C58(v130, v140, v97, v129);
      v101 = v95[2];
      v102 = (v99 & 1) == 0;
      v103 = v101 + v102;
      if (__OFADD__(v101, v102))
      {
        goto LABEL_65;
      }

      v104 = v99;
      if (v95[3] >= v103)
      {
        a4 = v145;
        if (v96)
        {
          a3 = v144;
          if (v99)
          {
LABEL_59:

            v141 = aBlock;
            v113 = aBlock[7];
            v114 = *(v113 + 8 * v100);
            v115 = v128;
            *(v113 + 8 * v100) = v128;

            continue;
          }

          goto LABEL_55;
        }

        sub_228447E0C();
      }

      else
      {
        sub_228444708(v103, v96);
        v105 = sub_228443C58(v130, v140, v127, v98);
        if ((v104 & 1) != (v106 & 1))
        {
          goto LABEL_68;
        }

        v100 = v105;
      }

      a4 = v145;
      a3 = v144;
      if (v104)
      {
        goto LABEL_59;
      }

LABEL_55:
      v107 = aBlock;
      aBlock[(v100 >> 6) + 8] |= 1 << v100;
      v108 = (v107[6] + 32 * v100);
      v109 = v140;
      *v108 = v130;
      v108[1] = v109;
      v108[2] = v127;
      v108[3] = v98;
      v110 = v128;
      *(v107[7] + 8 * v100) = v128;

      v111 = v107[2];
      v64 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v64)
      {
        goto LABEL_67;
      }

      v141 = v107;
      v107[2] = v112;
      continue;
    }

    break;
  }

  while (1)
  {
    v75 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v75 >= v73)
    {

      v116 = *(v131 + 48);
      v117 = swift_allocObject();
      v118 = v133;
      v117[2] = v132;
      v117[3] = v118;
      v117[4] = v141;
      v151 = sub_228434EFC;
      v152 = v117;
      aBlock = MEMORY[0x277D85DD0];
      v148 = 1107296256;
      v149 = sub_228401F54;
      v150 = &block_descriptor_106;
      v119 = _Block_copy(&aBlock);

      v120 = v134;
      sub_22855CFDC();
      v146 = MEMORY[0x277D84F90];
      sub_228435154(&qword_280DED2D0, MEMORY[0x277D85198]);
      v121 = MEMORY[0x277D85198];
      sub_2283FA2E8(0, &qword_280DED270, MEMORY[0x277D85198]);
      sub_2283F461C(&qword_280DED260, &qword_280DED270, v121);
      v122 = v137;
      v123 = v139;
      sub_22855DA9C();
      MEMORY[0x22AAB98B0](0, v120, v122, v119);
      _Block_release(v119);
      (*(v138 + 8))(v122, v123);
      (*(v135 + 8))(v120, v136);
    }

    v72 = *(v69 + 8 * v75);
    ++v74;
    if (v72)
    {
      v74 = v75;
      goto LABEL_39;
    }
  }

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
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_228431144(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = sub_2284630BC(v4, 0);
    v8 = sub_228462534(&v11, (v7 + 32), v4, a3);

    sub_228407958();
    if (v8 != v4)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v3 = a1;
  }

  v11 = sub_228434270(v9);
  sub_228432F98(&v11);

  v3(v11, 0);
}

uint64_t sub_22843127C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 package];
  v5 = sub_22855D1AC();
  v7 = v6;

  v8 = [v3 package];
  v9 = sub_22855D1AC();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = 1;
    v14 = sub_22855E15C();

    if (v14)
    {
      return v13 & 1;
    }
  }

  v15 = [v2 package];
  v16 = sub_22855D1AC();
  v18 = v17;

  v19 = [v3 package];
  v20 = sub_22855D1AC();
  v22 = v21;

  if (v20 == v16 && v22 == v18)
  {
  }

  else
  {
    v23 = sub_22855E15C();

    if (v23)
    {
      v13 = 0;
      return v13 & 1;
    }
  }

  v24 = [v2 name];
  v25 = sub_22855D1AC();
  v27 = v26;

  v28 = [v3 name];
  v29 = sub_22855D1AC();
  v31 = v30;

  if (v25 == v29 && v27 == v31)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_22855E15C();
  }

  return v13 & 1;
}

uint64_t sub_2284314B8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22855E15C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22855E15C();
    }
  }

  return result;
}

uint64_t sub_22843155C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22855E22C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284315C4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t sub_228431614()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22855E22C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

void sub_228431678()
{
  v1 = *v0;
  v2 = v0[5];
  os_unfair_lock_lock((v2 + 64));
  if (*(v2 + 32))
  {

    os_unfair_lock_unlock((v2 + 64));
  }

  else
  {
    *(v2 + 32) = 1;
    os_unfair_lock_unlock((v2 + 64));
    v3 = v0[2];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v1;
    v6[4] = sub_228434D6C;
    v6[5] = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_228431D38;
    v6[3] = &block_descriptor_72;
    v5 = _Block_copy(v6);

    [v3 addedSummariesWithPackage:0 names:0 resultsHandler:v5];
    _Block_release(v5);
  }
}

void sub_2284317D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  os_unfair_lock_lock((v4 + 64));
  sub_228434D74((v4 + 16), &v11);
  os_unfair_lock_unlock((v4 + 64));
  v5 = v11;
  if (v11)
  {
    if (v11 != 1)
    {
      v6 = *(v11 + 16);
      if (v6)
      {
        v7 = (v11 + 40);
        do
        {
          v9 = *(v7 - 1);
          v8 = *v7;

          v9(v10);

          v7 += 2;
          --v6;
        }

        while (v6);
      }

      sub_228434D9C(v5);
    }
  }

  else
  {
    sub_228431678();
  }
}