uint64_t sub_24EC961AC(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v5 = (v2 + v4[9]);

  *v5 = MEMORY[0x277D84F90];

  v6 = MEMORY[0x277D84F98];
  v5[1] = MEMORY[0x277D84F98];
  v7 = v4[10];

  *(v2 + v7) = v6;
  v8 = v4[11];

  *(v2 + v8) = v6;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v10 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v36 = i;
    v37 = a1;
    while (v39)
    {
      v11 = MEMORY[0x253052270](v10, a1);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_29;
      }

LABEL_9:
      sub_24E65864C(v11 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v42);
      if (!*(v5[1] + 16) || (sub_24E76DD40(v42), (v13 & 1) == 0))
      {
        a1 = *v5;
        v14 = *(*v5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40[0] = v5[1];
        v16 = *&v40[0];
        v17 = sub_24E76DD40(v42);
        v19 = *(v16 + 16);
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_31;
        }

        v23 = v18;
        if (*(v16 + 24) >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v26 = v17;
          sub_24E8AE134();
          v17 = v26;
          v25 = *&v40[0];
          if ((v23 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_17:
          *(v25[7] + 8 * v17) = v14;
        }

        else
        {
          sub_24E899B98(v22, isUniquelyReferenced_nonNull_native);
          v17 = sub_24E76DD40(v42);
          if ((v23 & 1) != (v24 & 1))
          {
            result = sub_24F92CF88();
            __break(1u);
            return result;
          }

LABEL_16:
          v25 = *&v40[0];
          if (v23)
          {
            goto LABEL_17;
          }

LABEL_22:
          v25[(v17 >> 6) + 8] |= 1 << v17;
          v27 = v17;
          sub_24E772724(v42, v25[6] + 40 * v17);
          *(v25[7] + 8 * v27) = v14;
          v28 = v25[2];
          v21 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v21)
          {
            goto LABEL_32;
          }

          v25[2] = v29;
        }

        v5[1] = v25;
        sub_24E772724(v42, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_24E616FEC(0, *(a1 + 2) + 1, 1, a1);
        }

        v31 = *(a1 + 2);
        v30 = *(a1 + 3);
        if (v31 >= v30 >> 1)
        {
          a1 = sub_24E616FEC((v30 > 1), v31 + 1, 1, a1);
        }

        sub_24E772780(v42);
        *(a1 + 2) = v31 + 1;
        v32 = &a1[40 * v31];
        v33 = v41;
        v34 = v40[1];
        *(v32 + 2) = v40[0];
        *(v32 + 3) = v34;
        *(v32 + 8) = v33;
        *v5 = a1;
        i = v36;
        a1 = v37;
        goto LABEL_5;
      }

      sub_24E772780(v42);
LABEL_5:
      sub_24EC96C6C(v11);

      ++v10;
      if (v12 == i)
      {
        return sub_24EC97180();
      }
    }

    if (v10 >= *(v38 + 16))
    {
      goto LABEL_30;
    }

    v11 = *&a1[8 * v10 + 32];

    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return sub_24EC97180();
}

uint64_t sub_24EC96504(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  (*(v5 + 16))(&v17 - v7, v2, v4, v6);
  sub_24F922DC8();
  v9 = *(v5 + 40);
  v19 = v4;
  result = v9(v2, v8, v4);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v18 = a1 + 32;
    while (1)
    {
      sub_24E772724(v18 + 40 * v12, v23);
      sub_24E65864C(v23, v21);
      sub_24E772780(v23);
      DiffablePageContentIdentifier.init(_:)(v21, v22);
      v13 = sub_24F922DD8();
      result = sub_24E772780(v22);
      v14 = *(v13 + 16);
      if (v14)
      {
        break;
      }

LABEL_3:
      ++v12;

      if (v12 == v11)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = v13 + 32;
    while (v15 < *(v13 + 16))
    {
      sub_24E772724(v16, v22);
      ++v15;
      sub_24E65864C(v22, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
      sub_24ED7D5A0(v21, v20);
      sub_24E6585F8(v21);
      result = sub_24E772780(v22);
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EC96774(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-v8];
  v10 = sub_24EC92A0C(a1, v4);
  (*(v7 + 16))(v9, v4, v6);
  a2(v10, v6);
  result = (*(v7 + 40))(v4, v9, v6);
  v12 = *(v10 + 2);
  if (!v12)
  {
  }

  v13 = 0;
  v14 = (v10 + 32);
  while (v13 < *(v10 + 2))
  {
    sub_24E772724(v14, v17);
    ++v13;
    sub_24E65864C(v17, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
    sub_24ED7D5A0(v16, v15);
    sub_24E6585F8(v16);
    result = sub_24E772780(v17);
    v14 += 40;
    if (v12 == v13)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EC96948(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9 - 8];
  (*(v7 + 16))(&v15[-v9 - 8], v4, v6, v8);
  a2(a1, v6);
  result = (*(v7 + 40))(v4, v10, v6);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + 32;
    do
    {
      sub_24E772724(v13, v17);
      sub_24E65864C(v17, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
      sub_24ED7D5A0(v16, v15);
      sub_24E6585F8(v16);
      result = sub_24E772780(v17);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EC96AC4()
{

  sub_24E96513C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ArticleDiffablePagePresenter()
{
  result = qword_27F22CE48;
  if (!qword_27F22CE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC96C6C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_24E65864C(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v76);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  if (!*(*(v1 + *(v4 + 36) + 8) + 16) || (v5 = v4, sub_24E76DD40(v76), (v6 & 1) == 0))
  {
    sub_24E772780(v76);
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_24E76DD40(v76);
    if (v10)
    {
      v57 = v7;
      v59 = v3;
      v11 = *(*(*(v8 + 56) + 8 * v9) + 24);
      v12 = *(v11 + 16);

      if (v12)
      {
        v13 = 0;
        v14 = v11 + 32;
        do
        {
          if (v13 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          sub_24E615E00(v14, &v61);
          sub_24E615E00(&v61, &v67);
          __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
          sub_24F928D68();
          __swift_destroy_boxed_opaque_existential_1(&v67);
          v15 = *(v5 + 44);
          v16 = sub_24E76DD40(v75);
          if (v17)
          {
            v18 = v16;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v20 = *(v2 + v15);
            v74[0] = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E8AE46C();
              v20 = v74[0];
            }

            sub_24E772780(*(v20 + 48) + 40 * v18);
            v21 = *(v20 + 56) + 88 * v18;
            v22 = *(v21 + 80);
            v23 = *(v21 + 64);
            v24 = *(v21 + 32);
            v70 = *(v21 + 48);
            v71 = v23;
            v72 = v22;
            v25 = *(v21 + 16);
            v67 = *v21;
            v68 = v25;
            v69 = v24;
            sub_24EB52FBC(v18, v20);
            *(v2 + v15) = v20;
          }

          else
          {
            v72 = 0;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v67 = 0u;
            v68 = 0u;
          }

          ++v13;
          sub_24E772780(v75);
          sub_24E601704(&v67, &qword_27F223230);
          __swift_destroy_boxed_opaque_existential_1(&v61);
          v14 += 40;
        }

        while (v12 != v13);
      }

      v7 = v57;
      v3 = v59;
    }
  }

  v27 = *(v3 + 24);
  LOBYTE(v67) = 104;
  v28 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v27, &v67, 1, 2);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v67 = *(v2 + v7);
  sub_24E81C838(v28, v76, v29);
  v30 = 0;
  *(v2 + v7) = v67;
  v31 = *(v27 + 16);
  v56 = v27 + 32;
  v58 = v27;
  while (1)
  {
    v32 = 0uLL;
    v33 = v31;
    v34 = 0uLL;
    v35 = 0uLL;
    if (v30 != v31)
    {
      if (v30 >= *(v58 + 16))
      {
        goto LABEL_35;
      }

      v33 = v30 + 1;
      *&v67 = v30;
      sub_24E615E00(v56 + 40 * v30, &v67 + 8);
      v32 = v67;
      v34 = v68;
      v35 = v69;
    }

    v75[0] = v32;
    v75[1] = v34;
    v75[2] = v35;
    if (!v35)
    {
      sub_24E772780(v76);
      return 1;
    }

    v60 = v32;
    sub_24E612C80((v75 + 8), v74);
    sub_24E615E00(v74, &v67);
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v67);
    sub_24E615E00(v74, &v67);
    sub_24E772724(v76, &v69 + 8);
    v72 = v60;
    v36 = *(v5 + 44);
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v60;
    v61 = v67;
    v62 = v68;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v2 + v36);
    v39 = sub_24E76DD40(v73);
    v41 = v38[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      break;
    }

    v45 = v40;
    if (v38[3] < v44)
    {
      sub_24E89A120(v44, v37);
      v39 = sub_24E76DD40(v73);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_38;
      }

LABEL_28:
      if (v45)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }

    if (v37)
    {
      goto LABEL_28;
    }

    v55 = v39;
    sub_24E8AE46C();
    v39 = v55;
    if (v45)
    {
LABEL_17:
      sub_24E61DA68(&v61, v38[7] + 88 * v39, &qword_27F21EC48);
      sub_24E772780(v73);
      __swift_destroy_boxed_opaque_existential_1(v74);
      goto LABEL_18;
    }

LABEL_29:
    v38[(v39 >> 6) + 8] |= 1 << v39;
    v47 = v39;
    sub_24E772724(v73, v38[6] + 40 * v39);
    v48 = v38[7] + 88 * v47;
    v49 = v66;
    v51 = v64;
    v50 = v65;
    *(v48 + 32) = v63;
    *(v48 + 48) = v51;
    *(v48 + 64) = v50;
    *(v48 + 80) = v49;
    v52 = v62;
    *v48 = v61;
    *(v48 + 16) = v52;
    sub_24E772780(v73);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v53 = v38[2];
    v43 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v43)
    {
      goto LABEL_36;
    }

    v38[2] = v54;
LABEL_18:
    *(v2 + v36) = v38;
    v30 = v33;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24EC97180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - v6;
  sub_24EBD5384();
  sub_24F922E28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v9 = (v0 + *(v8 + 36));
  v10 = *v9;
  v11 = v9[1];
  v41 = *(*v9 + 16);
  v33 = v0;
  v31[1] = v11;
  if (v41)
  {
    v12 = *(v0 + *(v8 + 40));
    v43 = v10 + 32;
    v37 = (v2 + 8);

    v14 = 0;
    v36 = xmmword_24F93DE60;
    v15 = v41;
    v35 = v1;
    v34 = v5;
    v40 = v4;
    v39 = v7;
    v38 = v10;
    while (v14 < *(v10 + 16))
    {
      sub_24E772724(v43 + 40 * v14, v50);
      if (*(v12 + 16) && (v16 = sub_24E76DD40(v50), (v17 & 1) != 0))
      {
        *&v46[0] = *(*(v12 + 56) + 8 * v16);
        v18 = *&v46[0];
        v19 = type metadata accessor for Shelf();
        v42 = v18;
        swift_retain_n();
        sub_24F928A78();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0);
        v20 = swift_allocObject();
        *(v20 + 16) = v36;
        sub_24E772724(v50, v20 + 32);
        sub_24F922DB8();

        MEMORY[0x28223BE20](v21);
        v31[-2] = v19;
        v31[-1] = sub_24EC97ED4(&qword_27F22CE68, type metadata accessor for Shelf);
        swift_getKeyPath();
        sub_24F928A48();

        v22 = v49;
        v23 = *(v49 + 16);
        if (v23)
        {
          v48 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v23, 0);
          v24 = v48;
          v25 = v22 + 32;
          do
          {
            sub_24E615E00(v25, v45);
            sub_24E615E00(v45, v44);
            __swift_project_boxed_opaque_existential_1(v44, v44[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(v45);
            __swift_destroy_boxed_opaque_existential_1(v44);
            v48 = v24;
            v27 = *(v24 + 16);
            v26 = *(v24 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_24F457E94((v26 > 1), v27 + 1, 1);
              v24 = v48;
            }

            *(v24 + 16) = v27 + 1;
            v28 = v24 + 40 * v27;
            v29 = v46[0];
            v30 = v46[1];
            *(v28 + 64) = v47;
            *(v28 + 32) = v29;
            *(v28 + 48) = v30;
            v25 += 40;
            --v23;
          }

          while (v23);

          v1 = v35;
          v5 = v34;
        }

        else
        {
        }

        sub_24E772724(v50, v46);
        v7 = v39;
        sub_24F922D88();

        sub_24E601704(v46, &qword_27F228658);
        (*v37)(v40, v1);
        result = sub_24E772780(v50);
        v10 = v38;
        v15 = v41;
      }

      else
      {
        result = sub_24E772780(v50);
      }

      if (++v14 == v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:

    return (*(v32 + 40))(v33, v7, v5);
  }

  return result;
}

void sub_24EC97704(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v40 = *(a1 + 16);
  if (v40)
  {
    v32 = v8;
    (*(v8 + 16))(v11, v1, v7, v9);
    v12 = 0;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 40);
    v33 = v1;
    v14 = *(v1 + v13);
    v35 = (v4 + 8);
    v15 = a1 + 32;
    v16 = v40;
    v34 = v3;
    v39 = v6;
    v38 = v7;
    v37 = v11;
    v36 = v15;
    do
    {
      sub_24E772724(v15 + 40 * v12, v48);
      if (*(v14 + 16) && (v17 = sub_24E76DD40(v48), (v18 & 1) != 0))
      {
        *&v44[0] = *(*(v14 + 56) + 8 * v17);
        v19 = *&v44[0];
        v20 = type metadata accessor for Shelf();
        v41 = v19;
        swift_retain_n();
        sub_24F928A78();
        sub_24F922DD8();
        sub_24F922D98();

        MEMORY[0x28223BE20](v21);
        *(&v31 - 2) = v20;
        *(&v31 - 1) = sub_24EC97ED4(&qword_27F22CE68, type metadata accessor for Shelf);
        swift_getKeyPath();
        sub_24F928A48();

        v22 = v47;
        v23 = *(v47 + 16);
        if (v23)
        {
          v46 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v23, 0);
          v24 = v46;
          v25 = v22 + 32;
          do
          {
            sub_24E615E00(v25, v43);
            sub_24E615E00(v43, v42);
            __swift_project_boxed_opaque_existential_1(v42, v42[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(v43);
            __swift_destroy_boxed_opaque_existential_1(v42);
            v46 = v24;
            v27 = *(v24 + 16);
            v26 = *(v24 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_24F457E94((v26 > 1), v27 + 1, 1);
              v24 = v46;
            }

            *(v24 + 16) = v27 + 1;
            v28 = v24 + 40 * v27;
            v29 = v44[0];
            v30 = v44[1];
            *(v28 + 64) = v45;
            *(v28 + 32) = v29;
            *(v28 + 48) = v30;
            v25 += 40;
            --v23;
          }

          while (v23);

          v3 = v34;
        }

        else
        {
        }

        sub_24E772724(v48, v44);
        v7 = v38;
        v11 = v37;
        sub_24F922D88();

        sub_24E601704(v44, &qword_27F228658);
        (*v35)(v39, v3);
        sub_24E772780(v48);
        v16 = v40;
        v15 = v36;
      }

      else
      {
        sub_24E772780(v48);
      }

      ++v12;
    }

    while (v12 != v16);
    (*(v32 + 40))(v33, v11, v7);
  }
}

uint64_t sub_24EC97BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E615E00(a1, &v18);
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v7 = *(a2 + *(v6 + 44));
  if (*(v7 + 16) && (v8 = v6, v9 = sub_24E76DD40(v22), (v10 & 1) != 0))
  {
    sub_24E60169C(*(v7 + 56) + 88 * v9, &v18, &qword_27F21EC48);
    sub_24E772780(v22);
    v24[0] = v20[0];
    v24[1] = v20[1];
    v24[2] = v20[2];
    v25 = v21;
    v23[0] = v18;
    v23[1] = v19;
    v11 = *(v8 + 40);
    if (*(*(a2 + v11) + 16))
    {
      sub_24E76DD40(v24 + 8);
      if (v12)
      {
        sub_24E615E00(a1, &v18);
        v26 = *&v20[0];
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));

        sub_24F928D68();
        __swift_destroy_boxed_opaque_existential_1(&v18);
        sub_24E615E00(a1, &v18);
        sub_24E772724(v24 + 8, v20 + 8);
        v21 = v25;
        sub_24E988B60(&v18, v22);

        v14 = sub_24EC92B68(v13, a2);

        LOBYTE(v18) = 104;
        v15 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v14, &v18, 1, 2);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v18 = *(a2 + v11);
        *(a2 + v11) = 0x8000000000000000;
        sub_24E81C838(v15, v24 + 8, isUniquelyReferenced_nonNull_native);
        *(a2 + v11) = v18;
        sub_24E615E00(a1, &v18);
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        sub_24F928D68();

        sub_24E601704(v23, &qword_27F21EC48);
        return __swift_destroy_boxed_opaque_existential_1(&v18);
      }
    }

    result = sub_24E601704(v23, &qword_27F21EC48);
  }

  else
  {
    result = sub_24E772780(v22);
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

__n128 sub_24EC97EC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EC97ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC97F1C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24EC98058(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EDEC7E0(a1, v4);
}

uint64_t sub_24EC98114()
{

  return swift_deallocObject();
}

uint64_t sub_24EC98174(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_24F91F648();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for LocalPlayerProvider();
  v5 = swift_task_alloc();
  v2[19] = v5;
  *v5 = v2;
  v5[1] = sub_24EC9829C;

  return MEMORY[0x28217F228](v2 + 10, v4, v4);
}

uint64_t sub_24EC9829C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24EC98A68;
  }

  else
  {
    v2 = sub_24EC983B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC983B0()
{
  v0[21] = v0[10];
  sub_24F92B7F8();
  v0[22] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EC9844C, v2, v1);
}

uint64_t sub_24EC9844C()
{
  v1 = v0[21];

  swift_getKeyPath();
  v0[11] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[23] = *v2;
  v0[24] = v2[1];

  return MEMORY[0x2822009F8](sub_24EC98538, 0, 0);
}

uint64_t sub_24EC98538()
{
  sub_24F91F638();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_24EC985F8;
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[13];

  return sub_24E649538((v0 + 2), v2, v3, 0, 0, v4);
}

uint64_t sub_24EC985F8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24EC98AE8;
  }

  else
  {
    v2 = sub_24EC98734;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC98734()
{
  v31 = v0[3];
  v32 = v0[2];
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = qword_27F2113B8;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v8 = v0[15];
  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E778);
  (*(v8 + 16))(v6, v5, v7);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[17];
  if (v12)
  {
    v30 = v11;
    v15 = v0[15];
    v14 = v0[16];
    v29 = v0[14];
    log = v10;
    v16 = v0[17];
    v17 = swift_slowAlloc();
    *v17 = 134218752;
    *(v17 + 4) = *(v3 + 16);
    *(v17 + 12) = 2048;
    *(v17 + 14) = *(v1 + 16);

    *(v17 + 22) = 2048;
    v18 = *(v2 + 16);

    *(v17 + 24) = v18;

    *(v17 + 32) = 2048;
    sub_24F91F638();
    sub_24F91F558();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v29);
    v21(v16, v29);
    *(v17 + 34) = v20;
    _os_log_impl(&dword_24E5DD000, log, v30, "PlayTogetherChallengesDataIntentImplementation returning %ld completed challenges, %ld active challenges, %ld invites\n took %fs", v17, 0x2Au);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  else
  {
    v22 = v0[14];
    v23 = v0[15];

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v21 = *(v23 + 8);
    v21(v13, v22);
  }

  v24 = v0[12];
  v21(v0[18], v0[14]);
  *v24 = v32;
  v24[1] = v31;
  v24[2] = v1;
  v24[3] = v2;
  v25 = MEMORY[0x277D84F90];
  v24[4] = v3;
  v24[5] = v25;
  v24[6] = v25;

  v26 = v0[1];

  return v26();
}

uint64_t sub_24EC98A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC98AE8()
{
  (*(v0[15] + 8))(v0[18], v0[14]);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PlayTogetherChallengesDataIntentImplementation failed: %@", v7, 0xCu);
    sub_24E6D44CC(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24EC98CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24E614970;

  return sub_24EC98174(a1, a3);
}

uint64_t sub_24EC98D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC98E20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayTogetherStartPlayingShelfIntent()
{
  result = qword_27F22CE80;
  if (!qword_27F22CE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC98F10()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EC98F94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v24);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE90);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v19 - v6;
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent();
  MEMORY[0x28223BE20](started);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC99438();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = started;
  v21 = a1;
  v11 = v23;
  LOBYTE(v26) = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v19[1] = v12;
  LOBYTE(v26) = 1;
  sub_24EC9948C();
  sub_24F92CC68();
  v13 = v20;
  sub_24E61C0A8(v5, v10 + *(v20 + 20));
  v29 = 2;
  sub_24EC994E4();
  sub_24F92CC68();
  v14 = v21;
  (*(v11 + 8))(v7, v25);
  v15 = v28;
  v16 = v10 + *(v13 + 24);
  v17 = v27;
  *v16 = v26;
  *(v16 + 1) = v17;
  *(v16 + 4) = v15;
  sub_24EC99538(v10, v22);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24EC9959C(v10, type metadata accessor for PlayTogetherStartPlayingShelfIntent);
}

uint64_t sub_24EC99308()
{
  v1 = 0x726579616C70;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24EC99360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EC99714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EC99388(uint64_t a1)
{
  v2 = sub_24EC99438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC993C4(uint64_t a1)
{
  v2 = sub_24EC99438();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EC99438()
{
  result = qword_27F22CE98;
  if (!qword_27F22CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CE98);
  }

  return result;
}

unint64_t sub_24EC9948C()
{
  result = qword_27F213E38;
  if (!qword_27F213E38)
  {
    type metadata accessor for Player(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213E38);
  }

  return result;
}

unint64_t sub_24EC994E4()
{
  result = qword_27F22CEA0;
  if (!qword_27F22CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEA0);
  }

  return result;
}

uint64_t sub_24EC99538(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_24EC9959C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EC99610()
{
  result = qword_27F22CEA8;
  if (!qword_27F22CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEA8);
  }

  return result;
}

unint64_t sub_24EC99668()
{
  result = qword_27F22CEB0;
  if (!qword_27F22CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEB0);
  }

  return result;
}

unint64_t sub_24EC996C0()
{
  result = qword_27F22CEB8;
  if (!qword_27F22CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEB8);
  }

  return result;
}

uint64_t sub_24EC99714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA58D10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t InstallPagePreInstallFreeLayout.init(metrics:iconView:titleText:parentTitleText:subtitleText:descriptionText:ageRatingView:offerButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x170uLL);
  sub_24E612C80(a2, a9);
  sub_24E612C80(a3, a9 + 40);
  sub_24E612C80(a4, a9 + 80);
  sub_24E612C80(a5, a9 + 120);
  sub_24E612C80(a6, a9 + 160);
  sub_24E612C80(a7, a9 + 200);

  return sub_24E612C80(a8, a9 + 240);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:parentTitleSpace:parentTitleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 *a12, uint64_t *a13, __int128 *a14, __int128 *a15)
{
  v20 = *a4;
  v21 = *a6;
  v22 = *a8;
  v23 = *a13;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_24E612C80(a1, a9 + 16);
  sub_24E612C80(a2, a9 + 56);
  sub_24E612C80(a3, a9 + 96);
  *(a9 + 136) = v20;
  sub_24E612C80(a5, a9 + 144);
  *(a9 + 184) = v21;
  sub_24E612C80(a7, a9 + 192);
  *(a9 + 232) = v22;
  sub_24E612C80(a12, a9 + 240);
  *(a9 + 280) = v23;
  sub_24E612C80(a14, a9 + 288);

  return sub_24E612C80(a15, a9 + 328);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.ageRatingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.ageRatingBaselineOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return sub_24E612C80(a1, v1 + 96);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.titleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.parentTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 144);

  return sub_24E612C80(a1, v1 + 144);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.parentTitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 184) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_24E612C80(a1, v1 + 192);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.subtitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 232) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.descriptionHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 280) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 288);

  return sub_24E612C80(a1, v1 + 288);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 328);

  return sub_24E612C80(a1, v1 + 328);
}

double InstallPagePreInstallFreeLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  sub_24F922298();
  __swift_project_boxed_opaque_existential_1(v3 + 37, v3[40]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v10 = *(v7 + 8);
  v10(v9, v6);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  sub_24F922238();
  v20 = v2[52];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v20 = v2[58];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v20 = v2[64];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v20 = v2[70];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v12 = v11;
  v10(v9, v6);

  v19[2] = a2 - (v12 + v12);
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  sub_24F922288();
  v14 = v13;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v2 + 47, v2[50]);
  sub_24F9223C8();
  v19[1] = v14 - v16 + v17;
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 53, v2[56]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 59, v2[62]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 20, v2[23]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 65, v2[68]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 71, v2[74]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v10(v9, v6);
  __swift_project_boxed_opaque_existential_1(v2 + 30, v2[33]);
  sub_24F922298();
  __swift_project_boxed_opaque_existential_1(v2 + 76, v2[79]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v10(v9, v6);
  return a2;
}

uint64_t InstallPagePreInstallFreeLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v103 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v6 + 296), *(v6 + 320));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v18 = v17;
  v19 = *(v14 + 8);
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_24F922298();
  v21 = v20;
  v94[2] = v22;
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  v23 = sub_24F922238();
  *&v94[3] = v21;
  if (v23)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v18 + v21;
  }

  v104 = v24;
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  Width = CGRectGetWidth(v110);
  v109[0] = *(v6 + 416);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v16);
  v27 = v26;
  v19(v16, v13);

  v96 = Width - (v27 + v27) - v24;
  v111.origin.x = a3;
  v111.origin.y = a4;
  v111.size.width = a5;
  v111.size.height = a6;
  MinX = CGRectGetWidth(v111);
  v109[0] = *(v6 + 464);
  v28 = *MEMORY[0x277D84688];
  v29 = *(v14 + 104);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v101 = v30;
  v19(v16, v13);

  v112.origin.x = a3;
  v112.origin.y = a4;
  v112.size.width = a5;
  v112.size.height = a6;
  v100 = CGRectGetWidth(v112);
  v109[0] = *(v6 + 512);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v99 = v31;
  v19(v16, v13);

  v32 = a3;
  v113.origin.x = a3;
  v113.origin.y = a4;
  v113.size.width = a5;
  v113.size.height = a6;
  v98 = CGRectGetWidth(v113);
  v109[0] = *(v6 + 560);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v97 = v33;
  v19(v16, v13);

  v114.origin.x = a3;
  v114.origin.y = a4;
  v114.size.width = a5;
  v114.size.height = a6;
  MinY = CGRectGetMinY(v114);
  v35 = *(v6 + 280);
  v36 = *(v6 + 288);
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_24F922268();
  v115.origin.x = a3;
  v115.origin.y = a4;
  v115.size.width = a5;
  v115.size.height = a6;
  v37 = floor(CGRectGetMidX(v115) - v35 * 0.5);
  __swift_project_boxed_opaque_existential_1(v109, v109[3]);
  sub_24F922228();
  v116.origin.x = v37;
  v116.origin.y = MinY;
  v116.size.width = v35;
  v116.size.height = v36;
  v95 = MinY + CGRectGetMaxY(v116);
  __swift_project_boxed_opaque_existential_1((v6 + 376), *(v6 + 400));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v39 = v38;
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v117.origin.x = v32;
  v117.origin.y = a4;
  v117.size.width = a5;
  v117.size.height = a6;
  CGRectGetHeight(v117);
  sub_24F922288();
  v41 = v40;
  v94[1] = v39;
  v108 = v39;
  v96 = v42;
  sub_24F9223C8();
  v44 = v43;
  v105 = v32;
  v118.origin.x = v32;
  v118.origin.y = a4;
  v45 = v95;
  y = v118.origin.y;
  v107 = a5;
  v118.size.width = a5;
  v104 = a6;
  v118.size.height = a6;
  CGRectGetMidX(v118);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  if ((sub_24F922238() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 336), *(v6 + 360));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v19(v16, v13);
    v119.origin.x = v105;
    v119.origin.y = y;
    v119.size.width = v107;
    v119.size.height = v104;
    CGRectGetMidX(v119);
  }

  v98 = v98 - (v97 + v97);
  v100 = v100 - (v99 + v99);
  v101 = MinX - (v101 + v101);
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  sub_24F922228();
  MinX = v45 + v41 - v96 + v44;
  __swift_project_boxed_opaque_existential_1((v6 + 424), *(v6 + 448));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v47 = v46;
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1((v6 + 80), *(v6 + 104));
  v48 = v105;
  v49 = y;
  v120.origin.x = v105;
  v120.origin.y = y;
  v50 = v107;
  v120.size.width = v107;
  v51 = v104;
  v120.size.height = v104;
  CGRectGetHeight(v120);
  sub_24F922288();
  v53 = v52;
  v55 = v54;
  v108 = v47;
  sub_24F9223C8();
  v57 = v56;
  v121.origin.x = v48;
  v121.origin.y = v49;
  v121.size.width = v50;
  v58 = v51;
  v121.size.height = v51;
  CGRectGetMidX(v121);
  v59 = MinX;
  __swift_project_boxed_opaque_existential_1((v6 + 80), *(v6 + 104));
  sub_24F922228();
  MinX = v59 + v53 - v55 + v57;
  __swift_project_boxed_opaque_existential_1((v6 + 120), *(v6 + 144));
  v61 = v105;
  v60 = y;
  v122.origin.x = v105;
  v122.origin.y = y;
  v62 = v107;
  v122.size.width = v107;
  v122.size.height = v58;
  CGRectGetHeight(v122);
  sub_24F922288();
  v64 = v63;
  v66 = v65;
  __swift_project_boxed_opaque_existential_1((v6 + 472), *(v6 + 496));
  sub_24F9223C8();
  v68 = v67;
  v123.origin.x = v61;
  v123.origin.y = v60;
  v123.size.width = v62;
  v123.size.height = v58;
  CGRectGetMidX(v123);
  v69 = MinX;
  __swift_project_boxed_opaque_existential_1((v6 + 120), *(v6 + 144));
  sub_24F922228();
  MinX = v69 + v64 - v66 + v68;
  __swift_project_boxed_opaque_existential_1((v6 + 160), *(v6 + 184));
  v71 = v105;
  v70 = y;
  v124.origin.x = v105;
  v124.origin.y = y;
  v72 = v107;
  v124.size.width = v107;
  v124.size.height = v58;
  CGRectGetHeight(v124);
  sub_24F922288();
  v74 = v73;
  v76 = v75;
  __swift_project_boxed_opaque_existential_1((v6 + 520), *(v6 + 544));
  sub_24F9223C8();
  v78 = v77;
  v125.origin.x = v71;
  v125.origin.y = v70;
  v125.size.width = v72;
  v125.size.height = v58;
  v79 = v58;
  CGRectGetMidX(v125);
  v80 = MinX;
  __swift_project_boxed_opaque_existential_1((v6 + 160), *(v6 + 184));
  sub_24F922228();
  MinX = v80 + v74 - v76 + v78;
  __swift_project_boxed_opaque_existential_1((v6 + 240), *(v6 + 264));
  v81 = v107;
  v82 = v79;
  sub_24F922298();
  v84 = v83;
  v86 = v85;
  v87 = v105;
  v88 = y;
  v126.origin.x = v105;
  v126.origin.y = y;
  v126.size.width = v81;
  v89 = v81;
  v126.size.height = v82;
  v101 = floor(CGRectGetMidX(v126) - v84 * 0.5);
  __swift_project_boxed_opaque_existential_1((v6 + 568), *(v6 + 592));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v91 = v90;
  v19(v16, v13);
  v92 = MinX + v91;
  __swift_project_boxed_opaque_existential_1((v6 + 240), *(v6 + 264));
  sub_24F922228();
  v127.origin.x = v87;
  v127.origin.y = v88;
  v127.size.width = v89;
  v127.size.height = v82;
  MinX = CGRectGetMinX(v127);
  v128.origin.x = v87;
  v128.origin.y = v88;
  v128.size.width = v89;
  v128.size.height = v82;
  CGRectGetMinY(v128);
  v129.origin.x = v87;
  v129.origin.y = v88;
  v129.size.width = v89;
  v129.size.height = v82;
  CGRectGetWidth(v129);
  v130.origin.x = v101;
  v130.origin.y = v92;
  v130.size.width = v84;
  v130.size.height = v86;
  CGRectGetMaxY(v130);
  __swift_project_boxed_opaque_existential_1((v6 + 608), *(v6 + 632));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19(v16, v13);
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t sub_24EC9B31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 648))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC9B364(uint64_t result, int a2, int a3)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 648) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 648) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC9B464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC9B4AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

UIImage *sub_24EC9B5C4(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

uint64_t sub_24EC9B6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v33 = a4;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v36 = v11;
  v37 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = sub_24F924E38();
  v32 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  if (v30)
  {
    sub_24F9265A8();
    v36 = a2;
    v37 = a3;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_24E7896B8(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v24 = *(v14 + 8);
    v24(v16, OpaqueTypeMetadata2);
    sub_24E7896B8(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_24ECCCBA0(v16, OpaqueTypeMetadata2);
    v24(v16, OpaqueTypeMetadata2);
    v24(v19, OpaqueTypeMetadata2);
  }

  else
  {
    sub_24E7896B8(v31, a2, a3);
    sub_24E7896B8(v10, a2, a3);
    v36 = a2;
    v37 = a3;
    swift_getOpaqueTypeConformance2();
    sub_24ECCCC98(v7, OpaqueTypeMetadata2, a2);
    v25 = *(v29 + 8);
    v25(v7, a2);
    v25(v10, a2);
  }

  v36 = a2;
  v37 = a3;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = a3;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v22, v20, WitnessTable);
  return (*(v32 + 8))(v22, v20);
}

uint64_t Placeholder.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Placeholder.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Placeholder.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  if (v15)
  {
    v27 = v14;
    v28 = v15;
    sub_24F92C7F8();
    v16 = sub_24F9285B8();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v25 = a2;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v27 = v17;
    v28 = v19;
    sub_24F92C7F8();
    v20 = sub_24F9285B8();
    (*(*(v20 - 8) + 8))(v25, v20);
  }

  v21 = *(v11 + 8);
  v21(v26, v10);
  v21(v13, v10);
  v22 = v30;
  *(v3 + 16) = v29;
  *(v3 + 32) = v22;
  *(v3 + 48) = v31;
  return v3;
}

uint64_t _s12GameStoreKit11PlaceholderC16headingTitleTextSSvgZ_0()
{
  sub_24F92B228();

  return sub_24F92B388();
}

uint64_t _s12GameStoreKit11PlaceholderC9titleTextSSvgZ_0()
{
  sub_24F92B228();

  return sub_24F92B388();
}

uint64_t _s12GameStoreKit11PlaceholderC12subtitleTextSSvgZ_0()
{
  sub_24F92B228();

  return sub_24F92B388();
}

id static Placeholder.appPromotionTitleText.getter()
{
  sub_24F92B388();
  v0 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v1 = sub_24F92B098();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t Placeholder.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_24EC9BFC0()
{
  result = qword_27F22CEC0;
  if (!qword_27F22CEC0)
  {
    type metadata accessor for Placeholder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEC0);
  }

  return result;
}

uint64_t sub_24EC9C048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Placeholder();
  v7 = swift_allocObject();
  result = Placeholder.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EC9C1C8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC9C234(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24EC9C334()
{
  result = sub_24F01DD24();
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment))
  {
    v2 = v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      swift_getObjectType();

      sub_24EC9C664();
      (*(*(v3 + 16) + 32))();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24EC9C404()
{
  v17 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_24E65864C(v7, v15);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_5:
      ++v8;
      sub_24E6585F8(v15);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v9 & 1) == 0)
    {

      goto LABEL_5;
    }

    v10 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v10);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v16;
  }

  while (v4 - 1 != v8);
LABEL_12:

  if (v3 >> 62)
  {
LABEL_21:
    result = sub_24F92C738();
    v12 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](i, v3);
        }

        else
        {
          v14 = *(v3 + 8 * i + 32);
        }

        sub_24ED7E294(v15, *(v14 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v17;
  }

  return result;
}

uint64_t sub_24EC9C664()
{
  v17 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_24E65864C(v7, v15);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_5:
      ++v8;
      sub_24E6585F8(v15);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v9 & 1) == 0)
    {

      goto LABEL_5;
    }

    v10 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v10);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v16;
  }

  while (v4 - 1 != v8);
LABEL_12:

  if (v3 >> 62)
  {
LABEL_21:
    result = sub_24F92C738();
    v12 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](i, v3);
        }

        else
        {
          v14 = *(v3 + 8 * i + 32);
        }

        sub_24ED7E294(v15, *(v14 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v17;
  }

  return result;
}

unint64_t sub_24EC9C8C4()
{
  v6 = MEMORY[0x277D84FA0];
  result = sub_24EC4064C();
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84FA0];
  }

  result = sub_24F92C738();
  v2 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x253052270](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      sub_24ED7E294(&v5, *(v4 + 16));
    }

    return v6;
  }

  return result;
}

uint64_t sub_24EC9C9BC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EC9CA00(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    if (a1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v8 + 8) + 8))(ObjectType);
    }

    else
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v10 = *(v7 + 8);
      v11 = swift_getObjectType();
      (*(*(v10 + 8) + 16))(v11);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_24EC9CAF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_24EC9CB88;
}

void sub_24EC9CB88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    sub_24EC9CA00(v3);
    goto LABEL_10;
  }

  v5 = v2[9];
  v4 = v2[10];
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    v7 = v2[9] + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    if (v3)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 8) + 8);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v11 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v11 + 8) + 16);
    }

    (*v10)(ObjectType);
    swift_unknownObjectRelease();
  }

LABEL_10:

  free(v2);
}

BOOL sub_24EC9CC8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v1)
  {
    return 0;
  }

  sub_24E94E17C(v1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, v4);
  v2 = v4[3] != 0;
  sub_24E601704(v4, &qword_27F2129B0);
  return v2;
}

void sub_24EC9CD08()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (v1)
  {
    sub_24E94E17C(v1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, v16);
    if (v17)
    {
      sub_24E612B0C(v16, v20);
      v2 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
      swift_beginAccess();
      v3 = *(v0 + v2);
      *(v0 + v2) = 1;
      if (v3 == 1 || (v4 = v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view, swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = *(v7 + 8);

        v8(ObjectType, v7);
        swift_unknownObjectRelease();
      }

      type metadata accessor for JSIntentDispatcher();
      v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
      sub_24F928FD8();
      sub_24F92A758();
      sub_24E643A9C(v20, v19);
      v10 = v9;
      v11 = v0;
      sub_24EB48270(v19, v10, "GameStoreKit/TopChartSegmentPresenter.swift", 43, 2);
      v17 = sub_24F929638();
      v18 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v16);
      sub_24F929628();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEC8);
      sub_24F92A938();

      __swift_destroy_boxed_opaque_existential_1(v16);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v1;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_24EC9E5B4;
      *(v13 + 24) = v12;
      v14 = sub_24E74EC40();
      swift_retain_n();

      v15 = sub_24F92BEF8();
      v17 = v14;
      v18 = MEMORY[0x277D225C0];
      v16[0] = v15;
      sub_24F92A958();

      sub_24EC9E62C(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_24E601704(v16, &qword_27F2129B0);
    }
  }
}

uint64_t sub_24EC9D02C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  result = sub_24EC9C664();
  a2[1] = result;
  return result;
}

uint64_t sub_24EC9D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v7 + 16) + 32))(a2, ObjectType);
    swift_unknownObjectRelease();
  }

  v9 = TopChartSegment.mergingWith(_:)(a1);
  v10 = *(a3 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  *(a3 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = v9;

  sub_24EC9D2DC(v10);

  v11 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  v13 = *(a3 + v11);
  *(a3 + v11) = 0;
  if (v13)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v6 + 8);
      v15 = swift_getObjectType();
      (*(*(v14 + 8) + 16))(v15);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24EC9D1C4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = 0;
  if (v5)
  {
    v6 = a2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v7 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v9 = a2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 24))(a1, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EC9D2DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 88;
  v8 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment;
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (v9)
  {
    v10 = type metadata accessor for TopChartSegment();
    v11 = sub_24EC9EA94(&qword_27F22CEE8, type metadata accessor for TopChartSegment);
    v12 = &protocol witness table for BasePage;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v25[1] = 0;
    v25[2] = 0;
  }

  v25[0] = v9;
  v26 = v10;
  v27 = v12;
  v28 = v11;
  swift_beginAccess();

  sub_24EA095A4(v25, v2 + 40);
  swift_endAccess();
  sub_24EC832DC();
  result = sub_24E601704(v25, &qword_27F224F98);
  v14 = *(v2 + v8);
  if (v14)
  {
    if (a1)
    {
    }

    else
    {
      v15 = v2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        swift_getObjectType();
        v24 = v4;

        sub_24EC9C664();
        v4 = v24;
        (*(*(v16 + 16) + 32))();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(*(*(v17 + 16) + 16) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (*(v2 + 16))
    {
      v26 = type metadata accessor for TopChartSegment();
      v27 = &protocol witness table for BasePage;
      v28 = sub_24EC9EA94(&qword_27F22CEE8, type metadata accessor for TopChartSegment);
      v25[0] = v14;

      PendingPageRender.use(pageRenderEventFrom:)(v25);

      sub_24E601704(v25, &qword_27F224F98);
      v19 = *(v2 + 16);
      if (v19)
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v21 = v20;
        (*(v5 + 8))(v7, v4);
        v22 = v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v22 = v21;
        *(v22 + 8) = 0;
        v23 = *(v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
        swift_beginAccess();
        *(v23 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EC9D6F0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + *a1);

  return v3;
}

uint64_t sub_24EC9D744()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v1)
  {
    return v1;
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  v6 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = 0;
  do
  {
    v8 = v3 + 32 + 40 * v7;
    v9 = v7;
    while (1)
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_24E65864C(v8, v13);
      if (*(*(v1 + v6) + 16))
      {
        break;
      }

LABEL_5:
      ++v9;
      sub_24E6585F8(v13);
      v8 += 40;
      if (v5 == v9)
      {
        goto LABEL_13;
      }
    }

    sub_24E76D934(v13);
    if ((v10 & 1) == 0)
    {

      goto LABEL_5;
    }

    v11 = sub_24E6585F8(v13);
    MEMORY[0x253050F00](v11);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v7 = v9 + 1;
    sub_24F92B638();
    v4 = v14;
  }

  while (v5 - 1 != v9);
LABEL_13:

  if (v4 >> 62)
  {
LABEL_18:
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

uint64_t sub_24EC9D950(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = result;
  v4 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  v8 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = v5 + 32;
  do
  {
    v11 = v10 + 40 * v9;
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_24E65864C(v11, v16);
      if (*(*(v2 + v8) + 16))
      {
        break;
      }

LABEL_5:
      ++v12;
      sub_24E6585F8(v16);
      v11 += 40;
      if (v7 == v12)
      {
        goto LABEL_13;
      }
    }

    sub_24E76D934(v16);
    if ((v13 & 1) == 0)
    {

      goto LABEL_5;
    }

    v14 = sub_24E6585F8(v16);
    MEMORY[0x253050F00](v14);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v9 = v12 + 1;
    sub_24F92B638();
    v6 = v17;
    v10 = v5 + 32;
  }

  while (v7 - 1 != v12);
LABEL_13:

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v15 = MEMORY[0x253052270](v3, v6);
LABEL_17:

    return v15;
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v3)
    {
      v15 = *(v6 + 8 * v3 + 32);

      goto LABEL_17;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

BOOL sub_24EC9DB80(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  v8 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = v5 + 32;
  do
  {
    v11 = v10 + 40 * v9;
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_24E65864C(v11, v17);
      if (*(*(v2 + v8) + 16))
      {
        break;
      }

LABEL_5:
      ++v12;
      sub_24E6585F8(v17);
      v11 += 40;
      if (v7 == v12)
      {
        goto LABEL_13;
      }
    }

    sub_24E76D934(v17);
    if ((v13 & 1) == 0)
    {

      goto LABEL_5;
    }

    v14 = sub_24E6585F8(v17);
    MEMORY[0x253050F00](v14);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v9 = v12 + 1;
    sub_24F92B638();
    v6 = v18;
    v10 = v5 + 32;
  }

  while (v7 - 1 != v12);
LABEL_13:

  if (v6 >> 62)
  {
LABEL_18:
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v15 > a1;
}

uint64_t sub_24EC9DD98()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment;
  if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment))
  {
    return 0;
  }

  v2 = sub_24F91FA18();
  v3 = *(v0 + v1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v31 = v0;
  v5 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v6 = *(v3 + v5);
  v7 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (v8)
  {
    v10 = 0;
    v11 = v6 + 32;
    v12 = MEMORY[0x277D84F90];
    v32 = v4;
    while (1)
    {
      v4 = v11 + 40 * v10;
      v7 = v10;
      while (1)
      {
        if (v7 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        sub_24E65864C(v4, v35);
        if (!*(*(v3 + v9) + 16))
        {
          goto LABEL_6;
        }

        sub_24E76D934(v35);
        if (v13)
        {
          break;
        }

LABEL_6:
        ++v7;
        sub_24E6585F8(v35);
        v4 += 40;
        if (v8 == v7)
        {
          v7 = MEMORY[0x277D84F90];
          v4 = v32;
          goto LABEL_18;
        }
      }

      v14 = sub_24E6585F8(v35);
      MEMORY[0x253050F00](v14);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v10 = v7 + 1;
      sub_24F92B638();
      v12 = v34;
      v11 = v6 + 32;
      v15 = v8 - 1 == v7;
      v7 = MEMORY[0x277D84F90];
      v4 = v32;
      if (v15)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = v7;
LABEL_18:

  if (v12 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    if (v4 >= i)
    {
      return 0;
    }

    result = sub_24F91FA18();
    v18 = *(v31 + v1);
    if (!v18)
    {
      goto LABEL_46;
    }

    v19 = result;
    v20 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
    swift_beginAccess();
    v21 = *(v18 + v20);
    v33 = v7;
    v22 = *(v21 + 16);
    v23 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

    swift_beginAccess();
    if (!v22)
    {
      break;
    }

    v4 = 0;
    v24 = v21 + 32;
    v31 = v22 - 1;
LABEL_24:
    v25 = v24 + 40 * v4;
    v1 = v4;
    while (v1 < *(v21 + 16))
    {
      sub_24E65864C(v25, v35);
      if (*(*(v18 + v23) + 16))
      {

        sub_24E76D934(v35);
        if (v26)
        {

          v27 = sub_24E6585F8(v35);
          MEMORY[0x253050F00](v27);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v4 = v1 + 1;
          sub_24F92B638();
          v7 = v33;
          v24 = v21 + 32;
          if (v31 != v1)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

      ++v1;
      sub_24E6585F8(v35);
      v25 += 40;
      if (v22 == v1)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_35:

  if ((v7 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x253052270](v19, v7);
    goto LABEL_39;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v7 + 8 * v19 + 32);

LABEL_39:

    v29 = *(v28 + 24);

    v30 = *(v29 + 16);

    return sub_24F91FA08() < v30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t TopChartSegmentPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v9 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t TopChartSegmentPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v9 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_24EC9E3E8()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view);
}

uint64_t TopChartSegmentPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view);

  return v0;
}

uint64_t TopChartSegmentPresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;

  sub_24E883630(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC9E574()
{

  return swift_deallocObject();
}

uint64_t sub_24EC9E5BC()
{

  return swift_deallocObject();
}

uint64_t sub_24EC9E680(uint64_t a1)
{
  result = sub_24EC9EA94(&qword_27F22CED0, type metadata accessor for TopChartSegmentPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for TopChartSegmentPresenter()
{
  result = qword_27F22CED8;
  if (!qword_27F22CED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC9E724@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC9E780(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EC9E7E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EC9EA94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC9EB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EC9EBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for GameMediaPreviewPlatformAccessoryView()
{
  result = qword_27F22CEF8;
  if (!qword_27F22CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC9ECF0()
{
  sub_24EC9ED74();
  if (v0 <= 0x3F)
  {
    sub_24E62A0F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EC9ED74()
{
  if (!qword_27F22CF08)
  {
    type metadata accessor for GameMediaPreviewPlatformOptionProvider();
    v0 = sub_24F927398();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22CF08);
    }
  }
}

uint64_t sub_24EC9EDE8@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  v2 = sub_24F924B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF10);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46[0] = v46 - v5;
  v52 = v1;
  v51 = v1;
  v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF28);
  v7 = sub_24EC9FF34();
  v8 = sub_24EC9FF88();
  v53 = &type metadata for PickerLabel;
  v54 = &type metadata for ActionLabelStyle;
  v55 = v7;
  v56 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v6;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF48);
  v12 = sub_24F9248E8();
  v13 = sub_24E602068(&qword_27F22CF50, &qword_27F22CF48);
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v56 = MEMORY[0x277CDDDA0];
  v14 = swift_getOpaqueTypeConformance2();
  v53 = v10;
  v54 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24F925AB8();
  v56 = sub_24F9271D8();
  v57 = sub_24EC9FFEC(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v16 = *(v3 + 104);
  v16(boxed_opaque_existential_1, *MEMORY[0x277CE0118], v2);
  __swift_project_boxed_opaque_existential_1(&v53, v56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = (v46 - v19);
  v21 = v47;
  (v16)(v47, *MEMORY[0x277CE0128], v2, v18);
  v22 = v46[0];
  LOBYTE(v10) = sub_24F924B28();
  v23 = v3;
  v24 = v49;
  (*(v23 + 8))(v21, v2);
  *v20 = ((v10 & 1) == 0) | 0x3FF0000000000000;
  swift_getAssociatedConformanceWitness();
  v25 = v48;
  v26 = v50;
  v27 = sub_24F927348();
  v28 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF58);
  (*(v25 + 16))(v24 + v29[9], v22, v26);
  *v24 = v27;
  v24[1] = v28;
  v24[2] = 0x4000000000000000;
  v30 = v24 + v29[10];

  *v30 = sub_24F923398() & 1;
  *(v30 + 1) = v31;
  v30[16] = v32 & 1;
  v33 = v24 + v29[11];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = qword_27F24E488;
  v35 = sub_24F923398();
  v37 = v36;
  v39 = v38;
  v40 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF60) + 36);
  *v40 = v34;
  v40[8] = v35 & 1;
  *(v40 + 2) = v37;
  v40[24] = v39 & 1;
  LOBYTE(v34) = sub_24F923398();
  v42 = v41;
  LOBYTE(v37) = v43;

  (*(v25 + 8))(v22, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF68);
  v45 = v24 + *(result + 36);
  *v45 = v34 & 1;
  *(v45 + 1) = v42;
  v45[16] = v37 & 1;
  return result;
}

uint64_t sub_24EC9F40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_24F9248E8();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF48);
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF40);
  v15 = *(v14 - 8);
  v26 = v14;
  v27 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18._object = 0x800000024FA58DF0;
  v18._countAndFlagsBits = 0xD000000000000026;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v37 = localizedString(_:comment:)(v18, v19);
  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v8 + 8))(v10, v7);
  v35 = v32;
  v36 = v33;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF70);
  sub_24ECA003C();
  sub_24E600AEC();
  sub_24F927098();
  sub_24F9248D8();
  v20 = sub_24E602068(&qword_27F22CF50, &qword_27F22CF48);
  v21 = MEMORY[0x277CDDDA0];
  v22 = v28;
  sub_24F9261F8();
  (*(v29 + 8))(v6, v22);
  (*(v25 + 8))(v13, v11);
  *&v32 = v11;
  *(&v32 + 1) = v22;
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_24F926298();
  return (*(v27 + 8))(v17, v23);
}

uint64_t sub_24EC9F840(uint64_t a1)
{
  v2 = type metadata accessor for GameMediaPreviewPlatformAccessoryView();
  sub_24F406F84(*(a1 + *(v2 + 20)));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF88);
  sub_24E602068(&qword_27F22CF90, &qword_27F22CF80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EC9F9CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *a1;
  v9 = a1[2];
  v12[0] = a1[1];
  v12[1] = v9;
  sub_24E600AEC();

  sub_24F926EB8();
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B60);
  v11 = a2 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_24EC9FB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9248C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF28);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = v31 - v8;
  v9 = *(a1 + *(type metadata accessor for GameMediaPreviewPlatformAccessoryView() + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0);
  sub_24F927358();
  v10 = v39;
  swift_getKeyPath();
  v39 = v10;
  sub_24EC9FFEC(&qword_27F224068, type metadata accessor for GameMediaPreviewPlatformOptionProvider);
  sub_24F91FD88();

  Description = v10[1].Description;

  if ((Description & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (Description >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v31[1] = a2;
  v32 = v5;
  v33 = v4;
  v13 = v9 + 32 + 32 * Description;
  v14 = *(v13 + 8);
  v39 = *v13;
  v40 = v14;
  sub_24E600AEC();

  v15 = sub_24F925E18();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_24F927358();
  v22 = v39;
  swift_getKeyPath();
  v39 = v22;
  sub_24F91FD88();

  v23 = v22[1].Description;

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < *(v9 + 16))
  {

    v24 = sub_24F926DF8();
    v39 = v15;
    v40 = v17;
    v25 = v19 & 1;
    LOBYTE(v41) = v19 & 1;
    v42 = v21;
    v43 = v24;
    v38 = 1;
    v26 = sub_24EC9FF34();
    v27 = sub_24EC9FF88();
    v28 = v34;
    sub_24F9260E8();
    sub_24E600B40(v15, v17, v25);

    v29 = v37;
    sub_24F9248B8();
    v39 = &type metadata for PickerLabel;
    v40 = &type metadata for ActionLabelStyle;
    v41 = v26;
    v42 = v27;
    swift_getOpaqueTypeConformance2();
    v30 = v36;
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v32 + 8))(v29, v33);
    return (*(v35 + 8))(v28, v30);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_24EC9FF34()
{
  result = qword_27F22CF30;
  if (!qword_27F22CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF30);
  }

  return result;
}

unint64_t sub_24EC9FF88()
{
  result = qword_27F22CF38;
  if (!qword_27F22CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF38);
  }

  return result;
}

uint64_t sub_24EC9FFEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ECA003C()
{
  result = qword_27F22CF78;
  if (!qword_27F22CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58);
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF78);
  }

  return result;
}

unint64_t sub_24ECA0148()
{
  result = qword_27F22CF98;
  if (!qword_27F22CF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF68);
    sub_24ECA01D4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF98);
  }

  return result;
}

unint64_t sub_24ECA01D4()
{
  result = qword_27F22CFA0;
  if (!qword_27F22CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF60);
    sub_24E602068(&qword_27F22CFA8, &qword_27F22CF58);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CFA0);
  }

  return result;
}

uint64_t sub_24ECA028C()
{
  result = sub_24F92B098();
  qword_27F22CFB0 = result;
  return result;
}

id static NSNotificationName.searchActionImplementationDidRun.getter()
{
  if (qword_27F210510 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22CFB0;

  return v1;
}

unint64_t sub_24ECA033C()
{
  result = qword_27F22D038;
  if (!qword_27F22D038)
  {
    type metadata accessor for SearchAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D038);
  }

  return result;
}

uint64_t sub_24ECA03A0(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_27F210510 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_27F22CFB0 object:a1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

double MetadataRibbonItemView.layoutContext.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 160))(&v12);
  if (*(&v13 + 1))
  {
    v15[0] = v12;
    v15[1] = v13;
    v16 = v14;
    sub_24E65864C(v15, a3);
    v7 = MEMORY[0x277D22A58];
    *(a3 + 64) = a1;
    *(a3 + 72) = v7;
    *(a3 + 40) = v3;
    v8 = *(a2 + 40);
    v9 = v3;
    *(a3 + 80) = v8(a1, a2) & 1;
    v10 = (*(a2 + 48))(a1, a2);
    sub_24E6585F8(v15);
    *(a3 + 81) = v10 & 1;
  }

  else
  {
    sub_24E9BBAA8(&v12);
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t MetadataRibbonItemView.searchLayoutContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 160))(&v14);
  if (!*(&v15 + 1))
  {
    result = sub_24E9BBAA8(&v14);
    goto LABEL_5;
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  (*(a2 + 56))(&v14, a1, a2);
  v7 = v14;
  if (v14 == 10)
  {
    result = sub_24E6585F8(v17);
LABEL_5:
    *(a3 + 112) = 0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  sub_24E65864C(v17, a3);
  v9 = MEMORY[0x277D22A58];
  *(a3 + 64) = a1;
  *(a3 + 72) = v9;
  *(a3 + 40) = v3;
  v10 = *(a2 + 48);
  v3;
  *(a3 + 80) = v10(a1, a2) & 1;
  *(a3 + 81) = v7;
  *(a3 + 88) = (*(a2 + 80))(a1, a2);
  *(a3 + 96) = v11 & 1;
  *(a3 + 104) = (*(a2 + 104))(a1, a2);
  *(a3 + 112) = v12 & 1;
  v13 = (*(a2 + 136))(a1, a2);
  result = sub_24E6585F8(v17);
  *(a3 + 113) = v13;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24ECA0A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ECA0A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECA0AB8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_24F922C28();
  MEMORY[0x28223BE20](v9 - 8);
  sub_24E90E558(v4 + 64, &v15);
  if (v16)
  {
    sub_24E612E28(&v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    sub_24F9223C8();
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    if (*v4)
    {
      CGRectGetMaxY(*&v10);
    }

    else
    {
      CGRectGetMinY(*&v10);
    }

    __swift_project_boxed_opaque_existential_1(v17, v18);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetMinX(v19);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922218();
    CGRectGetMinY(v20);
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    CGRectGetHeight(v21);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922218();
    CGRectGetMaxY(v22);
    sub_24F922C08();
    sub_24F922188();
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E90ED10(&v15);
    sub_24ECA0D9C();
    return sub_24F922138();
  }
}

double sub_24ECA0D9C()
{
  v1 = v0;
  v2 = sub_24F92CDB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E90E558(v0 + 64, v13);
  if (!v14)
  {
    sub_24E90ED10(v13);
    v10 = *(v0 + 8);
    v8 = *(v0 + 16);
    [*(v1 + 16) ascender];
    v7 = 0.0;
    if (v10 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_24F922288();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = *(v0 + 8);
  v8 = *(v0 + 16);
  if (v9 >= 1)
  {
LABEL_3:
    [v8 lineHeight];
    [v8 leading];
  }

LABEL_5:
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_24ECA0FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ECA1010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24ECA1084()
{
  result = qword_27F22D040;
  if (!qword_27F22D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D040);
  }

  return result;
}

uint64_t sub_24ECA10EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA1230, 0, 0);
}

uint64_t sub_24ECA1230()
{
  v1 = *(v0[19] + 16);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_24ECA12E0;
  v3 = v0[20];

  return sub_24E64793C(v1, v3);
}

uint64_t sub_24ECA12E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 232) = a1;

    return MEMORY[0x2822009F8](sub_24ECA1440, 0, 0);
  }
}

uint64_t sub_24ECA1440()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v20 = *(v0 + 192);
  v21 = *(v0 + 208);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v19 = *(v0 + 168);
  v7 = *(v0 + 152);
  v22 = *(v0 + 144);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  sub_24ECA1D9C(v7, v0 + 16);
  v9 = swift_allocObject();
  v10 = *(v0 + 96);
  *(v9 + 88) = *(v0 + 80);
  *(v9 + 104) = v10;
  v11 = *(v0 + 128);
  *(v9 + 120) = *(v0 + 112);
  *(v9 + 136) = v11;
  v12 = *(v0 + 32);
  *(v9 + 24) = *(v0 + 16);
  *(v9 + 40) = v12;
  v13 = *(v0 + 64);
  *(v9 + 56) = *(v0 + 48);
  *(v9 + 16) = v8;
  *(v9 + 72) = v13;
  *(v9 + 152) = v1;
  *(v9 + 160) = v6;

  v14 = sub_24E802CE0(&unk_2861C0938);
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = &unk_24F993430;
  *(v15 + 32) = v9;
  *(v15 + 40) = 257;
  type metadata accessor for GSKShelf();
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v19);
  sub_24F92B928();

  (*(v3 + 16))(v21, v2, v20);
  sub_24E613678();
  sub_24F9280F8();
  (*(v3 + 8))(v2, v20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v16 - 8) + 56))(v22, 0, 1, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24ECA16E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[41] = a6;
  v7[42] = a7;
  v7[39] = a4;
  v7[40] = a5;
  v7[37] = a1;
  v7[38] = a3;
  return MEMORY[0x2822009F8](sub_24ECA1710, 0, 0);
}

uint64_t sub_24ECA1710()
{
  v0[29] = 0xD000000000000019;
  v1 = v0[38];
  v0[30] = 0x800000024FA58E50;
  sub_24F92C7F8();
  if (*(v1 + 16) && (v2 = sub_24E76D934((v0 + 2)), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v0[38] + 56) + 32 * v2, (v0 + 12));
    sub_24E6585F8((v0 + 2));
    if (swift_dynamicCast())
    {
      v4 = v0[39];
      v5 = v0[35];
      v6 = v0[36];
      swift_beginAccess();
      v7 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v0[39];
        v7 = sub_24E615CF4(0, *(v7 + 2) + 1, 1, v7);
        *(v35 + 16) = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v40 = v9 + 1;
        v36 = v7;
        v37 = *(v7 + 2);
        v38 = sub_24E615CF4((v10 > 1), v9 + 1, 1, v36);
        v9 = v37;
        v11 = v40;
        v7 = v38;
      }

      v12 = v0[39];
      *(v7 + 2) = v11;
      v13 = &v7[16 * v9];
      *(v13 + 4) = v5;
      *(v13 + 5) = v6;
      *(v12 + 16) = v7;
      swift_endAccess();
    }
  }

  else
  {
    sub_24E6585F8((v0 + 2));
  }

  v0[31] = 0xD000000000000013;
  v0[32] = 0x800000024FA58E70;
  sub_24F92C7F8();
  if (*(v1 + 16) && (v14 = sub_24E76D934((v0 + 7)), (v15 & 1) != 0))
  {
    sub_24E643A9C(*(v0[38] + 56) + 32 * v14, (v0 + 16));
    sub_24E6585F8((v0 + 7));
    if (swift_dynamicCast())
    {
      v16 = v0[39];
      v17 = v0[33];
      v18 = v0[34];
      swift_beginAccess();
      v19 = *(v16 + 16);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 16) = v19;
      if ((v20 & 1) == 0)
      {
        v39 = v0[39];
        v19 = sub_24E615CF4(0, *(v19 + 2) + 1, 1, v19);
        *(v39 + 16) = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_24E615CF4((v21 > 1), v22 + 1, 1, v19);
      }

      v23 = v0[39];
      *(v19 + 2) = v22 + 1;
      v24 = &v19[16 * v22];
      *(v24 + 4) = v17;
      *(v24 + 5) = v18;
      *(v23 + 16) = v19;
      swift_endAccess();
    }
  }

  else
  {
    sub_24E6585F8((v0 + 7));
  }

  v25 = v0[40];
  v26 = v0[39];
  v27 = *v25;
  v28 = v25[1];
  v0[43] = v28;
  swift_beginAccess();
  v29 = *(v26 + 16);
  v0[44] = v29;

  v30 = swift_task_alloc();
  v0[45] = v30;
  *v30 = v0;
  v30[1] = sub_24ECA1AE8;
  v31 = v0[41];
  v32 = v0[42];
  v33 = v0[37];

  return sub_24E6497E4(v33, v27, v28, v31, v29, v32);
}

uint64_t sub_24ECA1AE8()
{
  v2 = *v1;
  *(v2 + 368) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECA1C3C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24ECA1C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA1CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24ECA10EC(a1, a2, a3);
}

uint64_t sub_24ECA1D64()
{

  return swift_deallocObject();
}

uint64_t sub_24ECA1DF8()
{

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_24ECA1E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[19];
  v10 = v3[20];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24E614970;

  return sub_24ECA16E8(a1, a2, a3, v8, (v3 + 3), v9, v10);
}

uint64_t sub_24ECA1F58()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_24F92B5A8();

    v4 = sub_24E9E2340(v3);

    if (v4)
    {
      if (v4[2])
      {
        v5 = v4[4];
        v6 = v4[5];

        LOBYTE(v5) = sub_24E908B94(v5, v6);

        if (v5)
        {
          return 0;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24ECA2090()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_24F92B5A8();

    v4 = sub_24E9E2340(v3);

    if (v4)
    {
      if (v4[2])
      {
        v5 = v4[4];
        v6 = v4[5];

        LOBYTE(v5) = sub_24E908B94(v5, v6);

        if (v5)
        {
          return 0;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return 0;
}

GameStoreKit::BagOfflinePolicy __swiftcall BagOfflinePolicy.init(defaultMaxAge:offlineMaxAge:)(Swift::Double defaultMaxAge, Swift::Double offlineMaxAge)
{
  *v2 = defaultMaxAge;
  v2[1] = offlineMaxAge;
  result._offlineMaxAge = offlineMaxAge;
  result._defaultMaxAge = defaultMaxAge;
  return result;
}

BOOL BagOfflinePolicy.isWithinDefaultMaxAge(bagExpirationDate:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  sub_24E728A00(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E728998(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_24F91F5C8();
    v14 = v13;
    *v19 = v10;
    v19[1] = v11;
    *&v15 = COERCE_DOUBLE(sub_24ECA1F58());
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = *&v15;
    if (v17)
    {
      v18 = v10;
    }

    return v18 > -v14;
  }
}

double sub_24ECA2394()
{
  result = 86400.0;
  xmmword_27F22D048 = xmmword_24F993440;
  return result;
}

double static BagOfflinePolicy.standard.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27F210518 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27F22D048;
  *a1 = xmmword_27F22D048;
  return result;
}

uint64_t sub_24ECA2424@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_24F9289E8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_24F928AD8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F9294C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PresentPromptAction();
  v28[3] = v10;
  v28[4] = sub_24ECA39A0(&qword_27F216300, type metadata accessor for PresentPromptAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_24F9294B8();
  (*(v7 + 16))(boxed_opaque_existential_1 + *(v10 + 20), v9, v6);
  sub_24F928A98();
  (*(v7 + 8))(v9, v6);
  *boxed_opaque_existential_1 = 0x6E65697246646461;
  boxed_opaque_existential_1[1] = 0xE900000000000064;
  sub_24F928A98();
  v12 = sub_24F92A628();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13._object = 0x800000024FA58E90;
  v13._countAndFlagsBits = 0xD00000000000002ELL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  localizedString(_:comment:)(v13, v14);
  v15._countAndFlagsBits = 0xD000000000000030;
  v15._object = 0x800000024FA58EC0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v17._countAndFlagsBits = 0xD000000000000032;
  v17._object = 0x800000024FA58F00;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_24F92A608();
  sub_24F9289D8();
  *(&v26 + 1) = sub_24F92A638();
  v27 = MEMORY[0x277D223B8];
  __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_24F92A5E8();
  v19 = type metadata accessor for AddFriendAction();
  v20 = v24;
  v24[3] = v19;
  v20[4] = sub_24ECA39A0(&qword_27F216208, type metadata accessor for AddFriendAction);
  v21 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_24F928A98();
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *v21 = 0u;
  *(v21 + 48) = 2;
  *(v21 + 9) = 0u;
  v21[11] = 0;
  *(v21 + 7) = 0u;
  sub_24E61DA68(v28, (v21 + 7), qword_27F21B590);
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  v21 += 12;
  v21[4] = 0;
  return sub_24E61DA68(&v25, v21, qword_27F21B590);
}

uint64_t sub_24ECA2910(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 32) = 0x6554686372616573;
  v6 = inited + 32;
  *(inited + 16) = xmmword_24F93DE60;
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v8 = a2;
  }

  *(inited + 40) = 0xEA00000000006D72;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  v9 = sub_24E6086DC(v5);
  swift_setDeallocating();
  sub_24E601704(v6, &qword_27F219F90);
  v10._object = 0x800000024FA58FF0;
  v10._countAndFlagsBits = 0xD000000000000035;
  countAndFlagsBits = localizedString(_:with:)(v10, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_24ECA2A14()
{
  v1 = 0xD00000000000001DLL;
  v2 = *v0;
  v3 = 0xD000000000000018;
  if (v2 != 4)
  {
    v3 = 0xD000000000000023;
  }

  if (v2 == 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ECA2ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ECA3F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ECA2AE4(uint64_t a1)
{
  v2 = sub_24ECA2E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECA2B20(uint64_t a1)
{
  v2 = sub_24ECA2E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InviteFriendsSearchShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D058);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECA2E18();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8);
  sub_24E7D414C(&qword_27F21D9D0);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for InviteFriendsSearchShelfIntent();
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    sub_24E641F68(&qword_27F21BE88);
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24ECA2E18()
{
  result = qword_27F22D060;
  if (!qword_27F22D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D060);
  }

  return result;
}

uint64_t type metadata accessor for InviteFriendsSearchShelfIntent()
{
  result = qword_27F22D070;
  if (!qword_27F22D070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InviteFriendsSearchShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v57 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = &v56 - v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D068);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v69 = &v56 - v3;
  v4 = sub_24F9289E8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - v6;
  v8 = sub_24F928AD8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24F9294C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InviteFriendsSearchShelfIntent();
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16._object = 0x800000024FA47680;
  v16._countAndFlagsBits = 0xD000000000000032;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  object = localizedString(_:comment:)(v16, v17)._object;
  v18._countAndFlagsBits = 0xD000000000000020;
  v18._object = 0x800000024FA476C0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v68 = localizedString(_:comment:)(v18, v19)._object;
  v58 = v13;
  v20 = *(v13 + 32);
  v59 = v15;
  v75 = &v15[v20];
  v21 = type metadata accessor for PresentPromptAction();
  v71[3] = v21;
  v71[4] = sub_24ECA39A0(&qword_27F216300, type metadata accessor for PresentPromptAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  sub_24F9294B8();
  (*(v10 + 16))(boxed_opaque_existential_1 + *(v21 + 20), v12, v9);
  sub_24F928A98();
  (*(v10 + 8))(v12, v9);
  *boxed_opaque_existential_1 = 0x6E65697246646461;
  boxed_opaque_existential_1[1] = 0xE900000000000064;
  sub_24F928A98();
  v23 = sub_24F92A628();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24._countAndFlagsBits = 0xD00000000000002ELL;
  v24._object = 0x800000024FA58E90;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  localizedString(_:comment:)(v24, v25);
  v26._countAndFlagsBits = 0xD000000000000030;
  v26._object = 0x800000024FA58EC0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  localizedString(_:comment:)(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v28._object = 0x800000024FA58F00;
  v28._countAndFlagsBits = 0xD000000000000032;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  localizedString(_:comment:)(v28, v29);
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  sub_24F92A608();
  sub_24F9289D8();
  v70[3] = sub_24F92A638();
  v70[4] = MEMORY[0x277D223B8];
  __swift_allocate_boxed_opaque_existential_1(v70);
  v30 = v75;
  v31 = v65;
  sub_24F92A5E8();
  *(&v73 + 1) = type metadata accessor for AddFriendAction();
  v74 = sub_24ECA39A0(&qword_27F216208, type metadata accessor for AddFriendAction);
  v32 = __swift_allocate_boxed_opaque_existential_1(&v72);
  sub_24F928A98();
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *v32 = 0u;
  *(v32 + 48) = 2;
  *(v32 + 9) = 0u;
  v32[11] = 0;
  *(v32 + 7) = 0u;
  sub_24E61DA68(v71, (v32 + 7), qword_27F21B590);
  *(v32 + 6) = 0u;
  *(v32 + 7) = 0u;
  v32 += 12;
  v32[4] = 0;
  sub_24E61DA68(v70, v32, qword_27F21B590);
  *(v30 + 32) = 0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  sub_24E61DA68(&v72, v30, qword_27F21B590);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_24ECA2E18();
  v33 = v67;
  sub_24F92D108();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);

    return sub_24E601704(v30, &qword_27F213EA8);
  }

  else
  {
    v34 = v60;
    v35 = v61;
    LOBYTE(v72) = 0;
    sub_24E7D414C(&qword_27F21D9E0);
    v36 = v63;
    sub_24F92CC68();
    v37 = v59;
    (*(v35 + 32))(v59, v64, v36);
    LOBYTE(v72) = 1;
    v38 = sub_24F92CC28();
    v40 = v39;

    v41 = &v37[v58[5]];
    *v41 = v38;
    v41[1] = v40;
    LOBYTE(v72) = 2;
    v42 = sub_24F92CBC8();
    object = v40;
    v43 = v58;
    v44 = &v37[v58[6]];
    *v44 = v42;
    v44[1] = v45;
    v67 = v45;
    LOBYTE(v72) = 3;
    v46 = sub_24F92CBC8();
    v48 = v47;

    v49 = &v37[v43[7]];
    *v49 = v46;
    v49[1] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    LOBYTE(v71[0]) = 4;
    sub_24E641F68(&qword_27F21BEE8);
    sub_24F92CC68();
    sub_24E61DA68(&v72, v75, &qword_27F213EA8);
    LOBYTE(v72) = 5;
    v50 = sub_24F92CBC8();
    v52 = v51;
    v53 = v59;
    v54 = &v59[v58[9]];
    (*(v34 + 8))(v69, v62);
    *v54 = v50;
    v54[1] = v52;
    sub_24E7D5980(v53, v57);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_24E7D59E4(v53);
  }
}

uint64_t sub_24ECA39A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ECA3A38(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_24ECA3A70(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_24ECA3AC0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

double sub_24ECA3AF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24ECA4180(v2 + *(a1 + 32), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24ECA3B44(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_24ECA3B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24ECA3C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24ECA3D38()
{
  sub_24ECA3E18(319, &qword_27F21D9F8, MEMORY[0x277D21AC8]);
  if (v0 <= 0x3F)
  {
    sub_24ECA3E18(319, &qword_27F254DE0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E7CA5E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24ECA3E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24ECA3E80()
{
  result = qword_27F22D080;
  if (!qword_27F22D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D080);
  }

  return result;
}

unint64_t sub_24ECA3ED8()
{
  result = qword_27F22D088;
  if (!qword_27F22D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D088);
  }

  return result;
}

unint64_t sub_24ECA3F30()
{
  result = qword_27F22D090;
  if (!qword_27F22D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D090);
  }

  return result;
}

uint64_t sub_24ECA3F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000024FA47660 == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA58F40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA58FA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA58FC0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24ECA4180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ECA4200@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  if (v3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x444965676170;
    v5 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v5;
    v6 = *v1;
    v7 = v1[1];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    *(inited + 88) = 0x737265746C6966;
    *(inited + 96) = 0xE700000000000000;
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8);
    *(inited + 136) = sub_24ECA5030(&qword_27F22D0D8, sub_24ECA50A8);
    *(inited + 104) = v3;

    v8 = sub_24E607D0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
    swift_arrayDestroy();
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 32) = 0x444965676170;
    v10 = MEMORY[0x277D22580];
    *(v9 + 72) = MEMORY[0x277D837D0];
    *(v9 + 80) = v10;
    v12 = *v1;
    v11 = v1[1];
    *(v9 + 40) = 0xE600000000000000;
    *(v9 + 48) = v12;
    *(v9 + 56) = v11;

    v8 = sub_24E607D0C(v9);
    swift_setDeallocating();
    sub_24E601704(v9 + 32, &qword_27F212F18);
  }

  v13 = sub_24E80FFAC(v8);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[3] = v14;
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24ECA442C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECA4F04();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8);
    sub_24ECA5030(&qword_27F22D0C8, sub_24ECA4FDC);
    sub_24F92CCF8();
    v10[14] = 2;
    sub_24F92CCA8();
    v10[13] = 3;
    sub_24F92CD08();
    v10[12] = 4;
    sub_24F92CCA8();
    v10[11] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    sub_24E641F68(&qword_27F21BE88);
    sub_24F92CD48();
    v10[10] = 6;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ECA46F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D098);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  sub_24E61DA68(v20, v23, qword_27F21B590);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECA4F04();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E601704(v23, &qword_27F213EA8);
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v22[0] = sub_24F92CC28();
    v22[1] = v9;
    v27 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8);
    v19 = 1;
    sub_24ECA5030(&qword_27F22D0B0, sub_24ECA4F58);
    sub_24F92CC18();
    v22[2] = *&v20[0];
    LOBYTE(v20[0]) = 2;
    v22[3] = sub_24F92CBC8();
    v22[4] = v10;
    LOBYTE(v20[0]) = 3;
    v22[5] = sub_24F92CC28();
    v22[6] = v11;
    LOBYTE(v20[0]) = 4;
    v22[7] = sub_24F92CBC8();
    v22[8] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    v19 = 5;
    sub_24E641F68(&qword_27F21BEE8);
    sub_24F92CC68();
    sub_24E61DA68(v20, v23, &qword_27F213EA8);
    LOBYTE(v20[0]) = 6;
    v13 = sub_24F92CBC8();
    v14 = v8;
    v16 = v15;
    (*(v6 + 8))(v14, v5);
    v25 = v13;
    v26 = v16;
    sub_24ECA1D9C(v22, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24ECA4FAC(v22);
  }
}

uint64_t sub_24ECA4BE8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x737265746C6966;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001DLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x444965676170;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    if (v1 != 5)
    {
      v2 = 0xD000000000000023;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24ECA4CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ECA5214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ECA4CF8(uint64_t a1)
{
  v2 = sub_24ECA4F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECA4D34(uint64_t a1)
{
  v2 = sub_24ECA4F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ECA4DD8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24ECA4E08()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24ECA4E38()
{
  v0._object = 0x800000024FA59030;
  v0._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

uint64_t sub_24ECA4E5C()
{
  v1 = *(v0 + 56);

  return v1;
}

double sub_24ECA4E8C@<D0>(uint64_t a1@<X8>)
{
  sub_24ECA4180(v1 + 72, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24ECA4ED4()
{
  v1 = *(v0 + 112);

  return v1;
}

unint64_t sub_24ECA4F04()
{
  result = qword_27F22D0A0;
  if (!qword_27F22D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0A0);
  }

  return result;
}

unint64_t sub_24ECA4F58()
{
  result = qword_27F22D0B8;
  if (!qword_27F22D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0B8);
  }

  return result;
}

unint64_t sub_24ECA4FDC()
{
  result = qword_27F22D0D0;
  if (!qword_27F22D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0D0);
  }

  return result;
}

uint64_t sub_24ECA5030(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D0A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ECA50A8()
{
  result = qword_27F22D0E0;
  if (!qword_27F22D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0E0);
  }

  return result;
}

unint64_t sub_24ECA5110()
{
  result = qword_27F22D0E8;
  if (!qword_27F22D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0E8);
  }

  return result;
}

unint64_t sub_24ECA5168()
{
  result = qword_27F22D0F0;
  if (!qword_27F22D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0F0);
  }

  return result;
}

unint64_t sub_24ECA51C0()
{
  result = qword_27F22D0F8;
  if (!qword_27F22D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0F8);
  }

  return result;
}

uint64_t sub_24ECA5214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA58F40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA58FA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA58FC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t InviteFriendsSearchShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA55A0, 0, 0);
}

uint64_t sub_24ECA55A0()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v13 = v0[7];
  v5 = v0[4];
  v14 = v0[5];
  v15 = v0[10];
  v6 = v0[3];
  v16 = v0[2];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  v9[5] = v5;
  type metadata accessor for GSKShelf();
  (*(v4 + 104))(v13, *MEMORY[0x277D85778], v14);
  sub_24F92B928();

  (*(v2 + 16))(v15, v1, v3);
  sub_24E613678();
  sub_24F9280F8();
  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v10 - 8) + 56))(v16, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ECA57CC()
{

  return swift_deallocObject();
}

uint64_t sub_24ECA5804()
{

  return swift_deallocObject();
}

uint64_t sub_24ECA583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v52 = a3;
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v38 = v7;
  v8 = *(v7 - 8);
  v42 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v39 = &v37 - v9;
  v11 = type metadata accessor for InviteFriendsSearchShelfIntent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v51 = &v37 - v16;
  v47 = sub_24F92B858();
  v18 = *(v47 - 8);
  v46 = *(v18 + 56);
  v48 = v18 + 56;
  v46(v17, 1, 1, v47);
  sub_24ECAA340(a2, v14, type metadata accessor for InviteFriendsSearchShelfIntent);
  v19 = v8;
  v20 = *(v8 + 16);
  v41 = v8 + 16;
  v44 = v20;
  v20(v10, a1, v7);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v8 + 80);
  v26 = (v25 + v24 + 8) & ~v25;
  v43 = v25 | 7;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_24ECAA250(v14, v27 + v21, type metadata accessor for InviteFriendsSearchShelfIntent);
  *(v27 + v22) = v52;
  v29 = v49;
  v28 = v50;
  *(v27 + v23) = v49;
  *(v27 + v24) = v28;
  v40 = *(v19 + 32);
  v31 = v38;
  v30 = v39;
  v40(v27 + v26, v39, v38);

  v32 = v28;

  v33 = v51;
  sub_24F1D3DA4(0, 0, v51, &unk_24F993A20, v27);

  v46(v33, 1, 1, v47);
  v44(v30, v45, v31);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v35 = v52;
  v34[4] = v29;
  v34[5] = v35;
  v34[6] = v32;
  v40(v34 + ((v25 + 56) & ~v25), v30, v31);

  sub_24EA998B8(0, 0, v51, &unk_24F993A30, v34);
}

uint64_t sub_24ECA5C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D180);
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA5E24, 0, 0);
}

uint64_t sub_24ECA5E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8);
  sub_24F928118();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_24ECA5F0C;
  v2 = *(v0 + 176);

  return MEMORY[0x28217E8F8](v0 + 72, 0, 0, v2);
}

uint64_t sub_24ECA5F0C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ECA6400;
  }

  else
  {
    v2 = sub_24ECA6020;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA6020()
{
  v3 = v0[9];
  v2 = v0[10];
  v1 = v0 + 9;
  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = v0[21];
      v28 = v0[20];
      v24 = v0[19];
      v25 = v5;
      v6 = v0[16];
      v7 = v0[17];
      v22 = v6;
      v23 = v0[15];
      v27 = v0[14];
      v8 = v0[12];
      v26 = v0[13];
      *(v8 + 16) = v3;
      *(v8 + 24) = v2;

      v9 = sub_24F92B858();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v5, 1, 1, v9);
      (*(v7 + 16))(v24, v23, v6);
      v11 = (*(v7 + 80) + 72) & ~*(v7 + 80);
      v12 = swift_allocObject();
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = v3;
      *(v12 + 5) = v2;
      *(v12 + 6) = v26;
      *(v12 + 7) = v27;
      *(v12 + 8) = v8;
      (*(v7 + 32))(&v12[v11], v24, v22);
      sub_24ECAA62C(v25, v28);
      LODWORD(v7) = (*(v10 + 48))(v28, 1, v9);

      v13 = v0[20];
      if (v7 == 1)
      {
        sub_24E601704(v0[20], &unk_27F21B570);
      }

      else
      {
        sub_24F92B848();
        (*(v10 + 8))(v13, v9);
      }

      v16 = *(v12 + 2);
      swift_unknownObjectRetain();

      v1 = v0 + 9;
      if (v16)
      {
        swift_getObjectType();
        v17 = sub_24F92B778();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      sub_24E601704(v0[21], &unk_27F21B570);
      if (v19 | v17)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v17;
        v0[5] = v19;
      }

      swift_task_create();
    }

    else
    {
    }

    v20 = swift_task_alloc();
    v0[25] = v20;
    *v20 = v0;
    v20[1] = sub_24ECA5F0C;
    v21 = v0[22];

    return MEMORY[0x28217E8F8](v1, 0, 0, v21);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24ECA6400()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECA64A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v12;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA65B8, 0, 0);
}

uint64_t sub_24ECA65B8()
{
  v1 = v0[15];
  swift_beginAccess();
  v0[24] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_24ECA668C;
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];

  return sub_24E649BA4(v5, v4, v3);
}

uint64_t sub_24ECA668C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ECA6940, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[28] = v6;
    *v6 = v5;
    v6[1] = sub_24ECA6818;
    v7 = v4[16];

    return sub_24ECA80C4(a1, v7);
  }
}

uint64_t sub_24ECA6818(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {

    v4 = sub_24ECA6BE4;
  }

  else
  {
    v4 = sub_24ECA69C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECA6940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA69C0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[14];
  v0[2] = v0[13];
  v0[3] = v4;
  v0[4] = v2;
  v0[5] = v1;
  v0[6] = v3;

  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_24ECA6A9C;
  v6 = v0[23];
  v7 = v0[16];

  return sub_24E649FCC(v6, (v0 + 2), v7);
}

uint64_t sub_24ECA6A9C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ECA6DAC;
  }

  else
  {

    v2 = sub_24ECA6C64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA6BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA6C64()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  swift_beginAccess();
  v4 = *(v1 + 16) == v3 && *(v1 + 24) == v2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    sub_24ECAA340(v0[23], v0[22], type metadata accessor for GSKShelf);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
    sub_24F92B8C8();
    (*(v6 + 8))(v5, v7);
  }

  sub_24ECAA3A8(v0[23], type metadata accessor for GSKShelf);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ECA6DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA6E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v10 = type metadata accessor for GSKShelf();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D150);
  v7[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D158);
  v7[17] = v11;
  v7[18] = *(v11 - 8);
  v7[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D160);
  v7[20] = v12;
  v7[21] = *(v12 - 8);
  v7[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D168);
  v7[23] = v13;
  v7[24] = *(v13 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA7168, 0, 0);
}

uint64_t sub_24ECA7168()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;

  v8 = sub_24E802CE0(&unk_2861C0960);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = &unk_24F993A60;
  *(v9 + 32) = v7;
  *(v9 + 40) = 256;
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24F92B928();

  sub_24F92B8F8();
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_24ECA7330;
  v11 = v0[16];
  v12 = v0[17];

  return MEMORY[0x2822003E8](v11, 0, 0, v12);
}

uint64_t sub_24ECA7330()
{

  return MEMORY[0x2822009F8](sub_24ECA742C, 0, 0);
}

uint64_t sub_24ECA742C()
{
  v1 = v0[16];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    (*(v0[18] + 8))(v0[19], v0[17]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[11];
    sub_24ECAA1E0(v1, v9);
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_24E601704(v0[11], &qword_27F21E5E8);
    }

    else
    {
      v11 = v0[14];
      v10 = v0[15];
      v13 = v0[7];
      v12 = v0[8];
      v14 = v0[6];
      sub_24ECAA250(v0[11], v10, type metadata accessor for GSKShelf);
      sub_24ECAA340(v10, v11, type metadata accessor for GSKShelf);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
      sub_24F92B8C8();
      (*(v13 + 8))(v12, v14);
      sub_24ECAA3A8(v10, type metadata accessor for GSKShelf);
    }

    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_24ECA7330;
    v16 = v0[16];
    v17 = v0[17];

    return MEMORY[0x2822003E8](v16, 0, 0, v17);
  }
}

uint64_t sub_24ECA76DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a1;
  return MEMORY[0x2822009F8](sub_24ECA7704, 0, 0);
}

uint64_t sub_24ECA7704()
{
  v0[22] = 0xD000000000000019;
  v1 = v0[27];
  v0[23] = 0x800000024FA58E50;
  sub_24F92C7F8();
  if (*(v1 + 16) && (v2 = sub_24E76D934((v0 + 7)), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v0[27] + 56) + 32 * v2, (v0 + 12));
    sub_24E6585F8((v0 + 7));
    if (swift_dynamicCast())
    {
      v4 = v0[28];
      v5 = v0[24];
      v6 = v0[25];
      swift_beginAccess();
      v7 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = v0[28];
        v7 = sub_24E615CF4(0, *(v7 + 2) + 1, 1, v7);
        *(v23 + 16) = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v24 = v7;
        v25 = *(v7 + 2);
        v26 = sub_24E615CF4((v10 > 1), v9 + 1, 1, v24);
        v9 = v25;
        v7 = v26;
      }

      v0[31] = v7;
      v12 = v0[28];
      v13 = v0[29];
      *(v7 + 2) = v11;
      v14 = &v7[16 * v9];
      *(v14 + 4) = v5;
      *(v14 + 5) = v6;
      *(v12 + 16) = v7;
      swift_endAccess();
      swift_beginAccess();
      v15 = *(v13 + 16);
      v0[32] = v15;
      v16 = *(v13 + 24);
      v0[33] = v16;

      v17 = swift_task_alloc();
      v0[34] = v17;
      *v17 = v0;
      v17[1] = sub_24ECA79E4;
      v18 = v0[30];

      return (sub_24E649BA4)(v15, v16, v18);
    }
  }

  else
  {
    sub_24E6585F8((v0 + 7));
  }

  v20 = v0[26];
  v21 = type metadata accessor for GSKShelf();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = v0[1];

  return v22();
}

uint64_t sub_24ECA79E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ECA7C98, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[37] = v6;
    *v6 = v5;
    v6[1] = sub_24ECA7B70;
    v7 = v4[30];

    return sub_24ECA80C4(a1, v7);
  }
}

uint64_t sub_24ECA7B70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {

    v4 = sub_24ECA7F20;
  }

  else
  {
    v4 = sub_24ECA7CFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECA7C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA7CFC()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[31];
  v0[2] = v0[32];
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  v0[6] = v4;

  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_24ECA7DD8;
  v6 = v0[30];
  v7 = v0[26];

  return sub_24E649FCC(v7, (v0 + 2), v6);
}

uint64_t sub_24ECA7DD8()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24ECA802C;
  }

  else
  {

    v2 = sub_24ECA7F84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA7F20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA7F84()
{

  v1 = *(v0 + 208);
  v2 = type metadata accessor for GSKShelf();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24ECA802C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA80C4(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  type metadata accessor for FriendsDataIntent();
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for Player(0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA81F4, 0, 0);
}

uint64_t sub_24ECA81F4()
{
  if (qword_27F210520 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = v0[15];
    v2 = off_27F22D100;
    v0[23] = off_27F22D100;
    os_unfair_lock_lock(v2 + 6);
    v3 = *&v2[4]._os_unfair_lock_opaque;
    v0[24] = v3;

    os_unfair_lock_unlock(v2 + 6);
    v4 = *(v1 + 16);
    v5 = MEMORY[0x277D84F90];
    v45 = v0;
    if (v4)
    {
      v6 = v0[15];
      v53 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v4, 0);
      v7 = *(v53 + 16);
      v8 = 16 * v7;
      v9 = (v6 + 40);
      do
      {
        v10 = v7;
        v12 = *(v9 - 1);
        v11 = *v9;
        v13 = *(v53 + 24);
        ++v7;

        if (v10 >= v13 >> 1)
        {
          sub_24F4578E0((v13 > 1), v7, 1);
        }

        *(v53 + 16) = v7;
        v14 = v53 + v8;
        *(v14 + 32) = v12;
        *(v14 + 40) = v11;
        v8 += 16;
        v9 += 11;
        --v4;
      }

      while (v4);
      v5 = v53;
    }

    else
    {
      v7 = *(MEMORY[0x277D84F90] + 16);
    }

    v0[25] = v5;
    v15 = MEMORY[0x277D84F90];
    if (!v7)
    {
      break;
    }

    v44 = MEMORY[0x277D84F90];
    v16 = 0;
    v17 = 0;
    v46 = v0 + 5;
    v47 = v7;
    v48 = v5 + 32;
    v49 = v5;
    while (v16 < *(v49 + 16))
    {
      v50 = v17;
      v51 = v16;
      v18 = (v48 + 16 * v16);
      v19 = v18[1];
      v52 = *v18;
      if (v3 >> 62)
      {
        v20 = sub_24F92C738();
        if (!v20)
        {
LABEL_24:
          v31 = v19;

          goto LABEL_25;
        }
      }

      else
      {
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_24;
        }
      }

      sub_24F4578E0(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        goto LABEL_38;
      }

      v21 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x253052270](v21, v3);
        }

        else
        {
          v22 = *(v3 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = [v23 identifier];
        v25 = sub_24F92B0D8();
        v27 = v26;

        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24F4578E0((v28 > 1), v29 + 1, 1);
        }

        ++v21;
        *(v15 + 16) = v29 + 1;
        v30 = v15 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v20 != v21);
      v0 = v45;
      v31 = v19;
LABEL_25:
      v16 = v51 + 1;
      v0[5] = v52;
      v0[6] = v31;
      v32 = swift_task_alloc();
      *(v32 + 16) = v46;
      v17 = v50;
      v33 = sub_24E6159B8(sub_24E7FA94C, v32, v15);

      if (v33)
      {

        v34 = v47;
      }

      else
      {
        v35 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F4578E0(0, *(v44 + 16) + 1, 1);
          v35 = v44;
        }

        v34 = v47;
        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_24F4578E0((v36 > 1), v37 + 1, 1);
          v34 = v47;
          v35 = v44;
        }

        *(v35 + 16) = v37 + 1;
        v44 = v35;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v52;
        *(v38 + 40) = v31;
      }

      v15 = MEMORY[0x277D84F90];
      if (v16 == v34)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_34:
  v39 = objc_opt_self();
  v40 = sub_24F92B588();

  v0[26] = [v39 predicateForContactsWithIdentifiers_];

  v41 = sub_24E69A5C4(0, &qword_27F22D170);
  v42 = swift_task_alloc();
  v0[27] = v42;
  *v42 = v0;
  v42[1] = sub_24ECA86F0;

  return MEMORY[0x28217F228](v0 + 11, v41, v41);
}

uint64_t sub_24ECA86F0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_24ECA9628;
  }

  else
  {
    v2 = sub_24ECA8848;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24ECA8848()
{
  v30 = v0;
  v29[2] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v0[29] = v1;
  if (qword_27F210528 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = v0[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
    v3 = sub_24F92B588();
    v0[12] = 0;
    v4 = [v1 unifiedContactsMatchingPredicate:v2 keysToFetch:v3 error:v0 + 12];

    v5 = v0[12];
    if (!v4)
    {
      v22 = v0[26];
      v23 = v5;

      sub_24F91F278();

      swift_willThrow();

      v24 = v0[1];

      v24();
      return;
    }

    v1 = v0[24];
    sub_24E69A5C4(0, &qword_27F223450);
    v6 = sub_24F92B5A8();
    v7 = v5;

    v29[0] = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      break;
    }

    v8 = *((v0[24] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_23;
    }

LABEL_5:
    v28 = v6;
    v9 = 0;
    v10 = v0[28];
    while (1)
    {
      v11 = v0[24];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x253052270](v9);
      }

      else
      {
        if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v11 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v15 = v0[25];
      v16 = [v12 identifier];
      v17 = sub_24F92B0D8();
      v19 = v18;

      v0[7] = v17;
      v0[8] = v19;
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 7;
      v1 = sub_24E6159B8(sub_24E7FAFB0, v20, v15);

      if (v1)
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        v1 = v29;
        sub_24F92C958();
      }

      else
      {
      }

      ++v9;
      if (v14 == v8)
      {
        v21 = v29[0];
        v6 = v28;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v8 = sub_24F92C738();
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_23:
  v10 = v0[28];
  v21 = MEMORY[0x277D84F90];
LABEL_24:
  v25 = v0[23];

  v29[0] = v6;

  sub_24EA0B0D8(v21);
  v0[30] = v29[0];
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock(v25 + 6);
  sub_24ECAA2B8();
  os_unfair_lock_unlock(v25 + 6);
  if (!v10)
  {

    v26 = type metadata accessor for LocalPlayerProvider();
    v27 = swift_task_alloc();
    v0[31] = v27;
    *v27 = v0;
    v27[1] = sub_24ECA8D00;

    MEMORY[0x28217F228](v0 + 13, v26, v26);
  }
}

uint64_t sub_24ECA8D00()
{
  *(*v1 + 256) = v0;

  if (v0)
  {

    v2 = sub_24ECA96F0;
  }

  else
  {
    v2 = sub_24ECA8E50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA8E50()
{
  v0[33] = v0[13];
  sub_24F92B7F8();
  v0[34] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECA8F20, v2, v1);
}

uint64_t sub_24ECA8F20()
{
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[17];

  swift_getKeyPath();
  v0[14] = v1;
  sub_24ECAA2F8(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24ECAA340(v1 + v4, v2, type metadata accessor for Player);
  sub_24ECAA340(v2, v3, type metadata accessor for Player);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_24ECA90D4;
  v6 = v0[16];
  v7 = v0[17];

  return sub_24E6480C8(v7, v6);
}

uint64_t sub_24ECA90D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_24ECA97C0;
  }

  else
  {
    v4 = sub_24ECA9224;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECA9224()
{
  v1 = v0[30];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[30];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v33 = MEMORY[0x277D84F98];
    goto LABEL_25;
  }

LABEL_23:
  v2 = sub_24F92C738();
  v3 = v0[30];
  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_3:
  v37 = v0[18];
  v38 = v0[36];
  v39 = v0[19];
  v4 = *(v38 + 16);
  v35 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v1 = 0;
  v31 = v3 + 32;
  v32 = v5;
  v33 = MEMORY[0x277D84F98];
  v34 = v2;
  while (1)
  {
LABEL_5:
    if (v35)
    {
      v6 = MEMORY[0x253052270](v1, v0[30]);
    }

    else
    {
      if (v1 >= *(v32 + 16))
      {
        goto LABEL_22;
      }

      v6 = *(v31 + 8 * v1);
    }

    v7 = v6;
    if (__OFADD__(v1++, 1))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v4)
    {
      break;
    }

    if (v1 == v2)
    {
      goto LABEL_25;
    }
  }

  v36 = v1;
  v1 = 0;
  v9 = v0[36] + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  do
  {
    if (v1 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = v0[21];
    sub_24ECAA340(v9 + *(v39 + 72) * v1, v10, type metadata accessor for Player);
    v11 = (v10 + *(v37 + 40));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      v14 = [v7 handles];
      v15 = sub_24F92B5A8();

      v0[9] = v13;
      v0[10] = v12;
      v16 = swift_task_alloc();
      *(v16 + 16) = v0 + 9;
      v17 = sub_24E6159B8(sub_24E7FAFB0, v16, v15);

      if (v17)
      {
        v19 = v0[20];
        v18 = v0[21];
        v20 = [v7 identifier];
        v21 = sub_24F92B0D8();
        v23 = v22;

        sub_24ECAA340(v18, v19, type metadata accessor for Player);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_24E81FB14(v19, v21, v23, isUniquelyReferenced_nonNull_native);

        sub_24ECAA3A8(v18, type metadata accessor for Player);
        goto LABEL_18;
      }
    }

    ++v1;
    sub_24ECAA3A8(v0[21], type metadata accessor for Player);
  }

  while (v4 != v1);

LABEL_18:
  v2 = v34;
  v1 = v36;
  if (v36 != v34)
  {
    goto LABEL_5;
  }

LABEL_25:
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[22];
  v28 = v0[17];

  sub_24ECAA3A8(v28, type metadata accessor for FriendsDataIntent);
  sub_24ECAA3A8(v27, type metadata accessor for Player);

  v29 = v0[1];

  return v29(v33);
}

uint64_t sub_24ECA9628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA96F0()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ECA97C0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);

  sub_24ECAA3A8(v3, type metadata accessor for FriendsDataIntent);
  sub_24ECAA3A8(v2, type metadata accessor for Player);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24ECA98DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D178);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F90];
  off_27F22D100 = result;
  return result;
}

void sub_24ECA9928()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F96E2B0;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v1 = *MEMORY[0x277CBD098];
  v2 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v3 = v1;
  v4 = [v2 initWithString_];

  *(v0 + 40) = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = v5;
  v8 = [v6 initWithString_];

  *(v0 + 48) = v8;
  qword_27F22D108 = v0;
}

uint64_t sub_24ECA9A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return InviteFriendsSearchShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24ECA9AF4()
{
  v1 = type metadata accessor for InviteFriendsSearchShelfIntent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);

  v9 = v0 + v3 + *(v1 + 32);
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  (*(v6 + 8))(v0 + ((v7 + ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_24ECA9D18(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InviteFriendsSearchShelfIntent() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v7);
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_24E614970;

  return sub_24ECA5C9C(a1, v12, v13, v1 + v6, v14, v15, v16, v1 + v11);
}

uint64_t sub_24ECA9EB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECA9FA0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24ECA6E58(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24ECAA0B8()
{

  return swift_deallocObject();
}

uint64_t sub_24ECAA100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24E6541E4;

  return sub_24ECA76DC(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_24ECAA1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECAA250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECAA2F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ECAA340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECAA3A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ECAA408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECAA4F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24ECA64A4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24ECAA62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *GameCenterDashboardAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(a7, &qword_27F213E68);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830);
  sub_24E601704(v39, &qword_27F235830);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *GameCenterDashboardAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830);
  }

  sub_24E601704(v22, &qword_27F213E68);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830);
  sub_24E601704(v52, &qword_27F235830);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *GameCenterDashboardAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *GameCenterDashboardAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t GameCenterDashboardAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t GameCenterDashboardAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterDashboardAction()
{
  result = qword_27F22D190;
  if (!qword_27F22D190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UnhideAppAction.appAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
  a1[1] = v2;
}

uint64_t UnhideAppAction.isHidden.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UnhideAppAction.isHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *UnhideAppAction.__allocating_init(title:appAdamId:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a3;
  v14 = a3[1];
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
  v15 = (v12 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
  *v15 = v13;
  v15[1] = v14;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_offerAction) = a4;
  v30 = 0;
  memset(v29, 0, sizeof(v29));

  sub_24F928A98();
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 1) = v20;
    *(v19 + 4) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v25[1] = v21;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830);
  }

  sub_24E601704(v29, &qword_27F235830);
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = 0;
  v12[5] = 0;
  return v12;
}

void *UnhideAppAction.init(title:appAdamId:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a3[1];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
  v22 = (v5 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
  *v22 = v20;
  v22[1] = v21;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_offerAction) = a4;
  v46 = 0;
  memset(v45, 0, sizeof(v45));

  sub_24F928A98();
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v45, &v39);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v34 = v15;
    v26 = v16;
    v27 = a1;
    v28 = a2;
    v30 = v29;
    (*(v35 + 8))(v12, v36);
    v37 = v25;
    v38 = v30;
    a2 = v28;
    a1 = v27;
    v16 = v26;
    v15 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(v45, &qword_27F235830);
  v31 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v31 + 4) = v44;
  v32 = v43;
  *v31 = v42;
  *(v31 + 1) = v32;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

void UnhideAppAction.init(deserializing:using:)()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
  sub_24F92CA88();
  __break(1u);
}

uint64_t sub_24ECABB30()
{
}

uint64_t UnhideAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t UnhideAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnhideAppAction()
{
  result = qword_27F22D1A0;
  if (!qword_27F22D1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECABEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24EA2DAEC;

  return sub_24ECABF5C(a3);
}

uint64_t sub_24ECABF5C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED20);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v1[23] = swift_task_alloc();
  v3 = sub_24F920A18();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for LocalPlayerProvider();
  v5 = swift_task_alloc();
  v1[27] = v5;
  *v5 = v1;
  v5[1] = sub_24ECAC10C;

  return MEMORY[0x28217F228](v1 + 15, v4, v4);
}

uint64_t sub_24ECAC10C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24ECACCD8;
  }

  else
  {
    v2 = sub_24ECAC220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECAC220()
{
  v0[29] = v0[15];
  v0[30] = sub_24F92B7F8();
  v0[31] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECAC2C0, v2, v1);
}

uint64_t sub_24ECAC2C0()
{
  v1 = v0[29];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24ECACE88(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[32] = *v2;
  v0[33] = v2[1];

  return MEMORY[0x2822009F8](sub_24ECAC3E0, 0, 0);
}

uint64_t sub_24ECAC3E0()
{
  v1 = type metadata accessor for NetworkConnectionMonitor();
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_24ECAC490;

  return MEMORY[0x28217F228](v0 + 136, v1, v1);
}

uint64_t sub_24ECAC490()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_24ECACD58;
  }

  else
  {
    v2 = sub_24ECAC5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECAC5AC()
{
  v0[36] = v0[17];
  v0[37] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECAC640, v2, v1);
}

uint64_t sub_24ECAC640()
{
  v1 = *(v0 + 288);

  swift_getKeyPath();
  *(v0 + 144) = v1;
  sub_24ECACE88(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  *(v0 + 336) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24ECAC730, 0, 0);
}

uint64_t sub_24ECAC730()
{
  sub_24F920FC8();
  sub_24F9209F8();
  sub_24F9209D8();
  sub_24F9209B8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_24ECAC834;

  return MEMORY[0x28217F228](v0 + 56, v1, v1);
}

uint64_t sub_24ECAC834()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_24ECACB48;
  }

  else
  {
    v2 = sub_24ECAC948;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECAC948()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_24ECACA34;
  v4 = v0[26];
  v5 = v0[22];

  return MEMORY[0x282164940](v5, v4, v1, v2);
}

uint64_t sub_24ECACA34()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24ECACDD8;
  }

  else
  {
    v2 = sub_24ECACBE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECACB48()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECACBE0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v7 = sub_24F921028();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *(v7 + 16);

  v9 = v0[1];

  return v9(v8 != 0);
}

uint64_t sub_24ECACCD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECACD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECACDD8()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECACE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SignOutAction.__allocating_init()()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_24F928AD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_24F928A98();
  v12 = sub_24F929608();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = (v11 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v13 = 0u;
  v13[1] = 0u;
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v1 + 8))(v3, v0);
    v20[1] = v14;
    v20[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830);
  }

  sub_24E601704(v27, &qword_27F235830);
  v17 = v11 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v18 = v25;
  *v17 = v24;
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  sub_24E65E0D4(v6, v11 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v11 + 16) = xmmword_24F993CD0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v10, v7);
  return v11;
}

uint64_t SignOutAction.init()()
{
  v1 = v0;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24F928A98();
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_24E65E064(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  sub_24E601704(v28, &qword_27F235830);
  v18 = v1 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_24E65E0D4(v8, v1 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v1 + 16) = xmmword_24F993CD0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

char *SignOutAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *SignOutAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t SignOutAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t SignOutAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignOutAction()
{
  result = qword_27F22D1B0;
  if (!qword_27F22D1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24ECADC6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

uint64_t sub_24ECADD04(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_24ECADD4C(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 48);
  return swift_endAccess();
}

uint64_t sub_24ECADE10(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t ImageButton.__allocating_init(id:title:artwork:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = sub_24F91F6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 65) = 0u;
  sub_24E60169C(a1, &v24, &qword_27F235830);
  if (*(&v25 + 1))
  {
    v14 = v25;
    *(v13 + 88) = v24;
    *(v13 + 104) = v14;
    *(v13 + 120) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v20 = a3;
    v17 = v16;
    (*(v10 + 8))(v12, v9);
    v22 = v15;
    v23 = v17;
    a3 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  swift_beginAccess();
  *(v13 + 40) = v21;
  return v13;
}

uint64_t ImageButton.init(id:title:artwork:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a5;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 40) = 0u;
  *(v6 + 65) = 0u;
  *(v6 + 56) = 0u;
  sub_24E60169C(a1, &v25, &qword_27F235830);
  if (*(&v26 + 1))
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v21 = a3;
    v17 = v16;
    (*(v12 + 8))(v14, v11);
    v23 = v15;
    v24 = v17;
    a3 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v25, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v18 = v29;
  *(v6 + 88) = v28;
  *(v6 + 104) = v18;
  *(v6 + 120) = v30;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  swift_beginAccess();
  *(v6 + 40) = v22;

  return v6;
}

uint64_t ImageButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImageButton.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ImageButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v65 = a2;
  v6 = *v4;
  v61 = v3;
  v62 = v6;
  v73 = sub_24F9285B8();
  v67 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v60 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = v57 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v57 - v21;
  *(v4 + 5) = 0u;
  v57[1] = v4 + 5;
  *(v4 + 65) = 0u;
  *(v4 + 7) = 0u;
  v66 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  if (v24)
  {
    v68 = v23;
    v69 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = v9;
    v28 = v27;
    (*(v26 + 8))(v11, v8);
    v68 = v25;
    v69 = v28;
  }

  sub_24F92C7F8();
  v29 = *(v13 + 8);
  v30 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v22, v12);
  v31 = v71;
  *(v4 + 11) = v70;
  *(v4 + 13) = v31;
  v4[15] = v72;
  v32 = v66;
  sub_24F928398();
  v33 = sub_24F928348();
  v35 = v34;
  v29(v19, v12);
  if (v35)
  {
    v57[2] = v30;
    v58 = v29;
    v59 = v12;
    type metadata accessor for Artwork();
    sub_24F928398();
    v36 = v67;
    v37 = v65;
    (*(v67 + 16))(v64, v65, v73);
    sub_24ECAEB08(&qword_27F219660, 255, type metadata accessor for Artwork);
    sub_24F929548();
    v38 = v32;
    v39 = v70;
    if (v70)
    {
      v4[2] = v33;
      v4[3] = v35;
      type metadata accessor for Action();
      v40 = v60;
      sub_24F928398();
      v41 = v61;
      v42 = static Action.makeInstance(byDeserializing:using:)(v40, v37);
      if (!v41)
      {
        v53 = v42;
        (*(v67 + 8))(v37, v73);
        v54 = v38;
        v56 = v58;
        v55 = v59;
        v58(v54, v59);
        v56(v40, v55);
        swift_beginAccess();
        v4[5] = v53;

        v4[4] = v39;
        return v4;
      }

      (*(v67 + 8))(v37, v73);
      v44 = v58;
      v43 = v59;
      v58(v38, v59);
      v44(v40, v43);
    }

    else
    {

      v49 = sub_24F92AC38();
      sub_24ECAEB08(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
      swift_allocError();
      *v50 = 0x6B726F77747261;
      v51 = v62;
      v50[1] = 0xE700000000000000;
      v50[2] = v51;
      (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D22530], v49);
      swift_willThrow();
      (*(v36 + 8))(v37, v73);
      v58(v38, v59);
    }
  }

  else
  {
    v45 = v32;
    v46 = sub_24F92AC38();
    sub_24ECAEB08(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v47 = 0x656C746974;
    v48 = v62;
    v47[1] = 0xE500000000000000;
    v47[2] = v48;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    (*(v67 + 8))(v65, v73);
    v29(v45, v12);
  }

  sub_24E601704((v4 + 6), &qword_27F2129B0);
  sub_24E6585F8((v4 + 11));
  type metadata accessor for ImageButton();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ImageButton.deinit()
{

  sub_24E601704(v0 + 48, &qword_27F2129B0);
  sub_24E6585F8(v0 + 88);
  return v0;
}

uint64_t ImageButton.__deallocating_deinit()
{

  sub_24E601704(v0 + 48, &qword_27F2129B0);
  sub_24E6585F8(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECAEB08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *sub_24ECAEB60@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ImageButton();
  v7 = swift_allocObject();
  result = ImageButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24ECAEC0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 48, a1, &qword_27F2129B0);
}

uint64_t sub_24ECAEC78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_24ECAECC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 48, a2, &qword_27F2129B0);
}

uint64_t sub_24ECAED28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_24ECAED70(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

unint64_t sub_24ECAEF74()
{
  result = qword_27F22D1C8;
  if (!qword_27F22D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D1C8);
  }

  return result;
}

void sub_24ECAEFC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24ECAF030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_allocate_value_buffer(v0, qword_27F22D1D0);
  __swift_project_value_buffer(v0, qword_27F22D1D0);
  return sub_24F928C68();
}

uint64_t static SearchLandingDiffablePagePresenter.useTestLandingPageKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210530 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  v3 = __swift_project_value_buffer(v2, qword_27F22D1D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t SearchLandingDiffablePagePresenter.TestParameters.rawValue.getter()
{
  v1 = 0x416564756C636E69;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

GameStoreKit::SearchLandingDiffablePagePresenter::TestParameters_optional __swiftcall SearchLandingDiffablePagePresenter.TestParameters.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ECAF2F0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ECAF3C4()
{
  sub_24F92B218();
}

uint64_t sub_24ECAF484()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24ECAF560(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007364;
  v3 = 0x416564756C636E69;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000017;
    v2 = 0x800000024FA430D0;
  }

  v4 = 0xD000000000000010;
  v5 = 0x800000024FA43090;
  if (*v1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x800000024FA430B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24ECAF600@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91EC58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v44 - v6;
  v58 = sub_24F91EB98();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v60 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = v44 - v11;
  v12 = sub_24F91F4A8();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = v44 - v18;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210530 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27F22D1D0);
  sub_24F928868();

  v59 = v5;
  v19 = v53;
  v20 = v51;
  sub_24F91F488();
  sub_24E60169C(v20, v16, &qword_27F228530);
  v21 = v52;
  if ((*(v52 + 48))(v16, 1, v19) == 1)
  {
    sub_24E601704(v20, &qword_27F228530);
    sub_24E601704(v16, &qword_27F228530);
    return (*(v21 + 56))(a1, 1, 1, v19);
  }

  else
  {
    (*(v21 + 32))(v49, v16, v19);
    v23 = v50;
    sub_24F91EBE8();
    v45 = v3;
    v44[0] = *(v3 + 48);
    v24 = (v44[0])(v23, 1, v2);
    v46 = v2;
    v47 = a1;
    v44[1] = v3 + 48;
    if (v24 || (v26 = sub_24F91EBC8()) == 0)
    {

      v25 = MEMORY[0x277D84F90];
    }

    else
    {
      v25 = v26;
    }

    v27 = 0;
    v56 = 0x800000024FA430B0;
    v57 = 0x800000024FA430D0;
    v28 = (v54 + 8);
    v54 = v8 + 32;
    v55 = 0x800000024FA43090;
    do
    {
      ++v27;
      v62 = 0;
      v63 = 0xE000000000000000;
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      sub_24F928C68();
      sub_24F928868();

      (*v28)(v7, v59);
      if (v61 == 2 || (v61 & 1) == 0)
      {
        v29 = 0xE500000000000000;
        v30 = 0x65736C6166;
      }

      else
      {
        v29 = 0xE400000000000000;
        v30 = 1702195828;
      }

      MEMORY[0x253050C20](v30, v29);

      sub_24F91EB68();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_24E618F30(0, v25[2] + 1, 1, v25);
      }

      v32 = v25[2];
      v31 = v25[3];
      if (v32 >= v31 >> 1)
      {
        v25 = sub_24E618F30(v31 > 1, v32 + 1, 1, v25);
      }

      v25[2] = v32 + 1;
      (*(v8 + 32))(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32, v60, v58);
    }

    while (v27 != 4);
    v33 = v50;
    v34 = v46;
    v35 = v44[0];
    v36 = (v44[0])(v50, 1, v46);
    v37 = v47;
    if (v36)
    {
    }

    else
    {
      sub_24F91EBD8();
    }

    v39 = v51;
    v38 = v52;
    v40 = v35(v33, 1, v34);
    v41 = v45;
    v42 = v53;
    if (v40)
    {
      (*(v38 + 8))(v49, v53);
      sub_24E601704(v39, &qword_27F228530);
      (*(v38 + 56))(v37, 1, 1, v42);
    }

    else
    {
      v43 = v48;
      (*(v45 + 16))(v48, v33, v34);
      sub_24F91EBF8();
      (*(v41 + 8))(v43, v34);
      (*(v38 + 8))(v49, v42);
      sub_24E601704(v39, &qword_27F228530);
    }

    return sub_24E601704(v33, &qword_27F219F98);
  }
}

uint64_t SearchLandingDiffablePagePresenter.init(objectGraph:supportsFastImpressions:advertLifecycleMetricsReporter:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v101 = a3;
  LODWORD(v92) = a2;
  v98 = sub_24F92BEE8();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_24F92BE88();
  MEMORY[0x28223BE20](v93);
  v95 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v94 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v90 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v86 - v14;
  v16 = sub_24F9288E8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v3 + qword_27F39C308);
  *v20 = 0;
  v20[1] = 0;
  v21 = v3 + qword_27F39C310;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v3 + qword_27F39C318) = 0;
  v22 = qword_27F39C320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D1E8);
  swift_allocObject();
  *(v3 + v22) = sub_24F92ADA8();
  v23 = qword_27F22D1F0;
  *(v4 + v23) = [objc_opt_self() defaultCenter];
  v24 = (v4 + qword_27F22D1F8);
  *v24 = 0u;
  v24[1] = 0u;
  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_24F928F28();
  *(v4 + qword_27F22D200) = v105[0];
  v99 = v12;
  v100 = a1;
  if (v92)
  {
    type metadata accessor for ASKBagContract();
    sub_24F928FD8();
    sub_24F92A758();
    v25 = v105[0];
    v92 = "";
    v26 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v27 = *(v17 + 104);
    v89 = *MEMORY[0x277D21C38];
    v88 = v27;
    v27(v19);
    v86[1] = v26;
    sub_24F92A368();
    v87 = *(v17 + 8);
    v87(v19, v16);
    sub_24F92A408();
    v86[0] = v16;
    v90 = *(v90 + 8);
    (v90)(v15, v13);
    v28 = v105[0];
    type metadata accessor for FastImpressionsTracker();
    v29 = swift_allocObject();
    *(v29 + 3) = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    v91 = v25;
    swift_allocObject();
    *(v29 + 5) = sub_24F929E98();
    swift_allocObject();
    *(v29 + 6) = sub_24F929E98();
    v92 = v29;
    *(v29 + 4) = v28;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v30 = v86[0];
    v88(v19, v89, v86[0]);
    sub_24F92A368();
    v87(v19, v30);
    sub_24F92A408();
    (v90)(v15, v13);
    v31 = v105[0];
    type metadata accessor for FastImpressionFlushGate();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32[4] = 0;
    v32[5] = 0;
    v32[2] = v31;
    *(v4 + qword_27F22D208) = v32;

    sub_24ECAF600(v99);
    sub_24E615E00(v101, v105);
    v90 = sub_24ECB2128(&qword_27F22D210, type metadata accessor for FastImpressionsTracker);
    *(v4 + qword_27F39CC00) = 0;
    v33 = MEMORY[0x277D84F90];
    *(v4 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v4 + qword_27F2326C8) = 0;
    v34 = *(*v4 + 640);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE50);
    v36 = *(*(v35 - 8) + 56);
    v36(v4 + v34, 1, 1, v35);
    v37 = *(*v4 + 648);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
    (*(*(v38 - 8) + 56))(v4 + v37, 1, 1, v38);
    v39 = *(*v4 + 656);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE48);
    (*(*(v40 - 8) + 56))(v4 + v39, 1, 1, v40);
    v36(v4 + *(*v4 + 664), 1, 1, v35);
    v41 = *(*v4 + 672);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
    (*(*(v42 - 8) + 56))(v4 + v41, 1, 1, v42);
    v43 = *(*v4 + 680);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
    (*(*(v44 - 8) + 56))(v4 + v43, 1, 1, v44);
    v45 = *(*v4 + 688);
    sub_24E74EC40();

    sub_24F927DA8();
    v103 = v33;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
    sub_24F92C6A8();
    (*(v96 + 104))(v97, *MEMORY[0x277D85260], v98);
    *(v4 + v45) = sub_24F92BF38();
    sub_24EBD3128(v4 + *(*v4 + 696));
    v46 = (v4 + *(*v4 + 704));
    *v46 = 0u;
    v46[1] = 0u;
    *(v46 + 25) = 0u;
    v47 = *(*v4 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
    swift_allocObject();
    *(v4 + v47) = sub_24F92ADA8();
    v48 = *(*v4 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
    swift_allocObject();
    *(v4 + v48) = sub_24F92ADA8();
    v49 = *(*v4 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    swift_allocObject();
    *(v4 + v49) = sub_24F92ADA8();
    *(v4 + *(*v4 + 736)) = 0;
    v50 = (v4 + *(*v4 + 752));
    *v50 = 0;
    v50[1] = 0;
    v51 = v99;
    sub_24E60169C(v99, v4 + qword_27F39CBF8, &qword_27F228530);
    sub_24E60169C(v105, v4 + *(*v4 + 744), &qword_27F229490);
    v52 = type metadata accessor for InlineUnifiedMessagePresenter();
    v102.receiver = objc_allocWithZone(v52);
    v102.super_class = v52;
    *(v4 + qword_27F39CC08) = objc_msgSendSuper2(&v102, sel_init);
    v53 = v100;

    v54 = v92;

    v55 = sub_24EBBA130(v53, v54, v90, 0);
    v56 = *(*v55 + 1112);

    *(v55 + qword_27F39CC00) = v56(0);

    sub_24EBC80D0(0);

    __swift_destroy_boxed_opaque_existential_1(v101);
    sub_24E601704(v105, &qword_27F229490);
    v57 = v51;
  }

  else
  {
    *(v4 + qword_27F22D208) = 0;

    sub_24ECAF600(v12);
    sub_24E615E00(v101, v105);
    *(v4 + qword_27F39CC00) = 0;
    v58 = MEMORY[0x277D84F90];
    *(v4 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v4 + qword_27F2326C8) = 0;
    v59 = *(*v4 + 640);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE50);
    v61 = *(*(v60 - 8) + 56);
    v61(v4 + v59, 1, 1, v60);
    v62 = *(*v4 + 648);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
    (*(*(v63 - 8) + 56))(v4 + v62, 1, 1, v63);
    v64 = *(*v4 + 656);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE48);
    (*(*(v65 - 8) + 56))(v4 + v64, 1, 1, v65);
    v61(v4 + *(*v4 + 664), 1, 1, v60);
    v66 = *(*v4 + 672);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
    (*(*(v67 - 8) + 56))(v4 + v66, 1, 1, v67);
    v68 = *(*v4 + 680);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
    (*(*(v69 - 8) + 56))(v4 + v68, 1, 1, v69);
    v70 = *(*v4 + 688);
    sub_24E74EC40();
    sub_24F927DA8();
    v103 = v58;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
    sub_24F92C6A8();
    (*(v96 + 104))(v97, *MEMORY[0x277D85260], v98);
    *(v4 + v70) = sub_24F92BF38();
    sub_24EBD3128(v4 + *(*v4 + 696));
    v71 = (v4 + *(*v4 + 704));
    *v71 = 0u;
    v71[1] = 0u;
    *(v71 + 25) = 0u;
    v72 = *(*v4 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
    swift_allocObject();
    *(v4 + v72) = sub_24F92ADA8();
    v73 = *(*v4 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
    swift_allocObject();
    *(v4 + v73) = sub_24F92ADA8();
    v74 = *(*v4 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    swift_allocObject();
    *(v4 + v74) = sub_24F92ADA8();
    *(v4 + *(*v4 + 736)) = 0;
    v75 = (v4 + *(*v4 + 752));
    *v75 = 0;
    v75[1] = 0;
    v76 = v99;
    sub_24E60169C(v99, v4 + qword_27F39CBF8, &qword_27F228530);
    sub_24E60169C(v105, v4 + *(*v4 + 744), &qword_27F229490);
    v77 = type metadata accessor for InlineUnifiedMessagePresenter();
    v104.receiver = objc_allocWithZone(v77);
    v104.super_class = v77;
    *(v4 + qword_27F39CC08) = objc_msgSendSuper2(&v104, sel_init);

    v55 = sub_24EBBA130(v78, 0, 0, 0);
    v79 = *(*v55 + 1112);

    *(v55 + qword_27F39CC00) = v79(0);

    sub_24EBC80D0(0);

    __swift_destroy_boxed_opaque_existential_1(v101);
    sub_24E601704(v105, &qword_27F229490);
    v57 = v76;
  }

  sub_24E601704(v57, &qword_27F228530);
  type metadata accessor for FastImpressionsTracker();
  v80 = swift_dynamicCastClass();
  if (v80)
  {
    v81 = v80;
    swift_beginAccess();
    *(v81 + 24) = &protocol witness table for SearchLandingDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v82 = *(v55 + qword_27F22D208);
    if (v82)
    {
      v83 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v84 = *(v82 + 32);
      *(v82 + 32) = sub_24ECB2120;
      *(v82 + 40) = v83;

      sub_24E824448(v84);
    }
  }

  return v55;
}

uint64_t sub_24ECB1380()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9287F8();
    v2 = __swift_project_value_buffer(v1, qword_27F2230A0);
    sub_24ED47ED4(v2);
  }

  return result;
}

uint64_t sub_24ECB141C()
{

  return sub_24E601704(v0 + qword_27F22D1F8, &qword_27F2129B0);
}

uint64_t SearchLandingDiffablePagePresenter.deinit()
{
  sub_24E60169C(v0 + qword_27F22D1F8, &v5, &qword_27F2129B0);
  if (v6)
  {
    sub_24E612B0C(&v5, &v7);
    v1 = *(v0 + qword_27F22D1F0);
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    v2 = v1;
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_24E601704(&v5, &qword_27F2129B0);
  }

  v3 = sub_24EBBF0D0();

  sub_24E601704(v3 + qword_27F22D1F8, &qword_27F2129B0);
  return v3;
}

uint64_t SearchLandingDiffablePagePresenter.__deallocating_deinit()
{
  SearchLandingDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t SearchLandingDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39C308);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchLandingDiffablePagePresenter.maxShelfRowCount.getter()
{
  v1 = v0 + qword_27F39C310;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchLandingDiffablePagePresenter.prefersSmallShelfTitles.getter()
{
  v1 = qword_27F39C318;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ECB1750(uint64_t a1)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v51 - v9, &qword_27F228530);
  swift_beginAccess();
  v60 = v1[3];
  swift_beginAccess();
  v12 = v1[4];
  type metadata accessor for SearchLandingDiffablePageContentPresenter();
  v13 = swift_allocObject();
  v52 = v10;
  sub_24E60169C(v10, v7, &qword_27F228530);
  v14 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_24E911D90(v7, v16 + v14);
  *(v16 + v15) = v11;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v12;
  v18 = v11;
  v51 = v11;
  v19 = v17;
  sub_24E60169C(v10, v4, &qword_27F228530);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24ECB2574;
  *(v20 + 24) = v18;
  v54 = v20;
  *(v13 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v13 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;

  swift_retain_n();
  v58 = v12;
  swift_retain_n();
  v23 = v16;

  *(v13 + v22) = sub_24E60986C(v21);
  v24 = (v13 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v13 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v56 = v25;
  v26 = (v13 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v13 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v55 = v27;
  v28 = (v13 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v53 = v28;
  v29 = (v13 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v13 + qword_27F39C790) = 0;
  *(v13 + qword_27F22F1D0) = 0;
  *(v13 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v13 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58);
  swift_allocObject();
  *(v13 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v13 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70);
  swift_allocObject();
  *(v13 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v13 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v13 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v36 = sub_24F92ADA8();

  v37 = v19;

  v38 = v51;

  sub_24E601704(v52, &qword_27F228530);
  *(v13 + v35) = v36;
  v39 = qword_27F22F1E0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v41 = *(*(v40 - 8) + 56);
  v41(v13 + v39, 1, 1, v40);
  v42 = v40;
  v43 = v59;
  v41(v13 + qword_27F22F1E8, 1, 1, v42);
  *(v13 + 16) = v38;
  sub_24E911D90(v57, v13 + qword_27F39C7D0);
  *v24 = sub_24ECB2478;
  v24[1] = v23;
  *v26 = 0;
  v26[1] = 0;
  if (v43)
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v45 = sub_24E965688;
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  v46 = v55;
  v47 = v56;
  *v56 = v45;
  v47[1] = v44;
  *v46 = sub_24ECB256C;
  v46[1] = v37;
  v49 = v53;
  v48 = v54;
  *v53 = sub_24ECB25B4;
  v49[1] = v48;
  *(v13 + qword_27F22F1F0) = v60;
  *(v13 + qword_27F39C7D8) = v58;
  return v13;
}

uint64_t sub_24ECB1D9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  result = sub_24F2F44C8(*a1, *(a1 + 8), *(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {

    if (*&v1[OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage])
    {

      sub_24F92AD88();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24ECB1E54(uint64_t a1, char a2)
{
  v3 = a1;
  sub_24F2F6D5C(a1, a2);
  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount + 8);
  v6 = v2 + qword_27F39C310;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  LOBYTE(v3) = *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles);
  v7 = qword_27F39C318;
  result = swift_beginAccess();
  *(v2 + v7) = v3;
  return result;
}

Swift::Void __swiftcall SearchLandingDiffablePagePresenter.impressionsTrackerDidRecordFastImpression()()
{
  v1 = *(v0 + qword_27F22D208);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_24ECB2170;
      v9[5] = v4;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_24ECAEFC8;
      v9[3] = &block_descriptor_66;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_24ECB20E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ECB2128(unint64_t *a1, void (*a2)(uint64_t))
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