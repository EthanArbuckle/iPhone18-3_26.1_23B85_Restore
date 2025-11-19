uint64_t sub_24ED51FD8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_24ED57704(a1);
  if (v3)
  {
    v4 = *(v3 + 16);

    *a2 = v4;
  }

  else
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
    type metadata accessor for ProductPresenter();
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA5BEF0);
    v6 = sub_24F92CD88();
    MEMORY[0x253050C20](v6);

    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ED52118(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_24ED5216C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91FA18();
  v3 = sub_24ED57704(v2);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 24);

  v5 = sub_24F91FA08();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
    type metadata accessor for ProductPresenter();
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000022, 0x800000024FA5BF20);
    sub_24F91FA78();
    sub_24ED5EA84(&qword_27F22ECE0, MEMORY[0x277CC9AF8]);
    v7 = sub_24F92CD88();
    MEMORY[0x253050C20](v7);

    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  sub_24E615E00(v4 + 40 * v5 + 32, a1);
}

uint64_t sub_24ED52348(unint64_t a1)
{
  v2 = sub_24ED57704(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_24ED57704(a1);
    if (v4 && (v5 = *(v4 + 24), , , v6 = *(v5 + 16), , v6 == 1))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
    }

    return v7;
  }

  else
  {
    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ED5241C(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);

  return v2;
}

uint64_t sub_24ED52460(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);

    return v2;
  }

  else
  {
    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ED524E0(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

  v3 = MEMORY[0x253052270](a1, result);
LABEL_5:

  if (*(v3 + 16) == 3 && (v4 = sub_24ED57704(a1)) != 0 && (v5 = *(v4 + 24), , , v6 = *(v5 + 16), , v6) && sub_24ED57704(a1))
  {
    v7 = Shelf.seeAllAction.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_24ED525E0(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 112);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_24ED52714(unint64_t a1)
{
  v4 = sub_24ED570C8();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v5 = *(v4 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = MEMORY[0x253052270](a1, v4);
LABEL_5:

  v2 = *(v5 + 16);
  if (v2 != 3)
  {
    if (qword_27F2106C0 == -1)
    {
LABEL_10:
      v12 = sub_24F92AAE8();
      __swift_project_value_buffer(v12, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9479A0;
      sub_24F9283A8();
      if (v2)
      {
        if (v2 == 1)
        {
          v13 = 0xE900000000000070;
          v14 = 0x756B636F4C706F74;
        }

        else
        {
          v13 = 0xEB0000000073746FLL;
          v14 = 0x68736E6565726373;
        }
      }

      else
      {
        v13 = 0xEF74736575716552;
        v14 = 0x7975426F546B7361;
      }

      *(&v16 + 1) = MEMORY[0x277D837D0];
      *&v15 = v14;
      *(&v15 + 1) = v13;
      sub_24F928438();
      sub_24E601704(&v15, &qword_27F2129B0);
      sub_24F9283A8();
      sub_24F92A598();
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v6 = sub_24ED524E0(a1);
  if (v6)
  {
    v7 = v6;
    v8 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v15 = 0u;
      v16 = 0u;
      (*(*(*(v9 + 16) + 8) + 8))(v7, &v15, ObjectType);

      swift_unknownObjectRelease();
      return sub_24E601704(&v15, &qword_27F2129B0);
    }
  }
}

uint64_t sub_24ED52A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24ED570C8();
  v9 = sub_24EB9B734(a2, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24F93A400;
    *(v13 + 32) = v9;
    *(v13 + 40) = a1;
    MEMORY[0x253045350]();
    sub_24ED52BBC(v7);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_24ED52BBC(uint64_t a1)
{
  v4 = sub_24ED570C8();
  v5 = sub_24F91FA18();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v4 + 8 * v5 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  v6 = MEMORY[0x253052270](v5, v4);
LABEL_5:

  v2 = *(v6 + 16);
  if (v2 == 3)
  {
    sub_24ED5216C(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v27 = 0;
      memset(v26, 0, sizeof(v26));
      return sub_24E601704(v26, &qword_27F22CE30);
    }

    sub_24E612C80(v26, v29);
    v7 = v30;
    v8 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v9 = (*(v8 + 8))(v7, v8);
    if (v9)
    {
      v10 = v9;
      v11 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        v14 = v30;
        v15 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v15 + 16))(v28, v14, v15);
        (*(*(*(v12 + 16) + 8) + 8))(v10, v28, ObjectType);

        swift_unknownObjectRelease();
        sub_24E601704(v28, &qword_27F2129B0);
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }
    }

    else
    {
      v21 = v30;
      v22 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      if ((*(v22 + 24))(v21, v22))
      {
        v23 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v23 + 8);
          v25 = swift_getObjectType();
          (*(*(v24 + 16) + 56))(a1, v25);

          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v29);
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  if (qword_27F2106C0 != -1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v16 = sub_24F92AAE8();
  __swift_project_value_buffer(v16, qword_27F39C670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F942000;
  sub_24F9283A8();
  v17 = sub_24F91FA08();
  v30 = MEMORY[0x277D83B88];
  v29[0] = v17;
  sub_24F928438();
  sub_24E601704(v29, &qword_27F2129B0);
  sub_24F9283A8();
  if (v2)
  {
    if (v2 == 1)
    {
      v18 = 0xE900000000000070;
      v19 = 0x756B636F4C706F74;
    }

    else
    {
      v18 = 0xEB0000000073746FLL;
      v19 = 0x68736E6565726373;
    }
  }

  else
  {
    v18 = 0xEF74736575716552;
    v19 = 0x7975426F546B7361;
  }

  v30 = MEMORY[0x277D837D0];
  v29[0] = v19;
  v29[1] = v18;
  sub_24F928438();
  sub_24E601704(v29, &qword_27F2129B0);
  sub_24F9283A8();
  sub_24F92A598();
}

uint64_t sub_24ED530F8()
{
  v2 = sub_24F91FA78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24ED570C8();
  v7 = sub_24F91FA18();
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 8 * v7 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_28;
  }

  v8 = MEMORY[0x253052270](v7, v6);
LABEL_5:

  v1 = *(v8 + 16);
  if (v1 != 3)
  {
    if (qword_27F2106C0 == -1)
    {
LABEL_11:
      v17 = sub_24F92AAE8();
      __swift_project_value_buffer(v17, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F942000;
      sub_24F9283A8();
      v18 = sub_24F91FA08();
      v38 = MEMORY[0x277D83B88];
      v37[0] = v18;
      sub_24F928438();
      sub_24E601704(v37, &qword_27F2129B0);
      sub_24F9283A8();
      if (v1)
      {
        if (v1 == 1)
        {
          v19 = 0xE900000000000070;
          v20 = 0x756B636F4C706F74;
        }

        else
        {
          v19 = 0xEB0000000073746FLL;
          v20 = 0x68736E6565726373;
        }
      }

      else
      {
        v19 = 0xEF74736575716552;
        v20 = 0x7975426F546B7361;
      }

      v38 = MEMORY[0x277D837D0];
      v37[0] = v20;
      v37[1] = v19;
      sub_24F928438();
      sub_24E601704(v37, &qword_27F2129B0);
      sub_24F9283A8();
      sub_24F92A598();
    }

LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
  v9 = swift_allocObject();
  v31 = xmmword_24F93A400;
  *(v9 + 16) = xmmword_24F93A400;
  *(v9 + 32) = sub_24F91FA18();
  *(v9 + 40) = 0;
  MEMORY[0x253045350](v9);
  sub_24ED5216C(v35);
  v10 = *(v3 + 8);
  v10(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8);
  if (swift_dynamicCast())
  {
    v29 = v10;
    v30 = v2;
    sub_24E612C80(&v32, v37);
    v11 = v38;
    v12 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v13 = sub_24F91FA08();
    (*(v12 + 8))(&v32, v13, v11, v12);
    if (v32)
    {
      v35[0] = v32;
      v35[1] = v33;
      v36 = v34;
      v14 = v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        ObjectType = swift_getObjectType();
        (*(*(*(v15 + 16) + 8) + 8))(*&v35[0], v35 + 8, ObjectType);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_24E601704(v35, &qword_27F22CE40);
    }

    else
    {
      sub_24E601704(&v32, &qword_27F22ECF8);
      v22 = v38;
      v23 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v24 = sub_24F91FA08();
      if (((*(v23 + 16))(v24, v22, v23) & 1) != 0 && (v25 = v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
      {
        v26 = *(v25 + 8);
        v27 = swift_getObjectType();
        v28 = swift_allocObject();
        *(v28 + 16) = v31;
        *(v28 + 32) = sub_24F91FA18();
        *(v28 + 40) = 0;
        MEMORY[0x253045350](v28);
        (*(*(v26 + 16) + 56))(v5, v27);

        swift_unknownObjectRelease();
        v29(v5, v30);
      }

      else
      {
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {

    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    return sub_24E601704(&v32, &qword_27F22ECF0);
  }
}

uint64_t sub_24ED53768@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24ED57704(a1);
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
    v5 = *(result + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
    v6 = *(result + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
    v7 = *(result + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
    v8 = *(result + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
    sub_24E951F10(v4, v5, v6, v7, v8);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0x8000;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

double sub_24ED5380C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91FA18();
  v3 = sub_24ED570C8();
  if (v3 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < v4)
  {
    v5 = sub_24F91FA18();
    v6 = sub_24ED57704(v5);
    if (v6)
    {
      v7 = *(v6 + 24);

      v8 = *(v7 + 16);

      if (sub_24F91FA08() < v8)
      {
        sub_24ED5216C(v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED00);
        if (swift_dynamicCast())
        {
          sub_24E612C80(v12, v15);
          v9 = v16;
          v10 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          (*(v10 + 8))(v9, v10);
          __swift_destroy_boxed_opaque_existential_1(v15);
          return result;
        }

        v13 = 0;
        memset(v12, 0, sizeof(v12));
        sub_24E601704(v12, &qword_27F22ED08);
      }
    }

    else
    {
      sub_24F91FA08();
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x8000;
  return result;
}

uint64_t sub_24ED539CC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews);

  return v2;
}

uint64_t sub_24ED53A44()
{
  v1 = v0;
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v7)
    {
      return 0;
    }
  }

  sub_24ED58570(0);
  v9 = v8;
  v10 = sub_24ED546A4(v8);
  v11 = sub_24ED54C00();
  v12 = *(v0 + v6);
  v100 = v10;
  v99 = v11;
  v98 = v9;
  if (v12)
  {
    v96 = v2;
    v13 = v12;
    goto LABEL_9;
  }

  v13 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v13)
  {
    v19 = 0;
LABEL_60:
    v58 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction);
    if (v58)
    {
      v59 = *(v58 + 24);
      v97 = *(v58 + 16);
      v96 = v59;

      v60 = *(v1 + v6);
      if (v60)
      {
LABEL_62:
        v61 = v60;
        goto LABEL_66;
      }
    }

    else
    {
      v97 = 0;
      v96 = 0;
      v60 = *(v1 + v6);
      if (v60)
      {
        goto LABEL_62;
      }
    }

    v61 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v61)
    {
      v95 = MEMORY[0x277D84F90];
LABEL_67:
      LODWORD(v94) = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme);
      v40 = sub_24ED584B4();
      if (*(v1 + v6))
      {
        v62 = *(v1 + v6);
      }

      else
      {
        v62 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
        if (!v62)
        {
          v20 = 0;
LABEL_72:
          v38 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted + 8);
          v92 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
          v39 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
          v63 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
          v91 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
          v90 = v63;
          LODWORD(v1) = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete);
          v64 = *(v7 + 320);
          v102 = *(v7 + 312);
          type metadata accessor for ProductTopLockup();
          v18 = swift_allocObject();
          *(v18 + 216) = 0u;
          *(v18 + 232) = 0u;
          *(v18 + 248) = 0;
          v37 = v7;
          v65 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
          v66 = sub_24F929608();
          (*(*(v66 - 8) + 56))(v18 + v65, 1, 1, v66);
          v67 = qword_27F2106B8;

          v103 = v64;

          if (v67 != -1)
          {
            goto LABEL_101;
          }

          goto LABEL_73;
        }
      }

      v20 = *(v62 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails);

      goto LABEL_72;
    }

LABEL_66:

    v95 = sub_24ED5969C(v61);

    goto LABEL_67;
  }

  v96 = v2;

LABEL_9:
  v102 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle);

  v14 = *(v1 + v6);
  v93 = v7;
  v103 = v6;
  v95 = v3;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v15)
    {
      v16 = 0;
      goto LABEL_18;
    }
  }

  v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork);

  if (*(v1 + v6))
  {
    v17 = *(v1 + v6);
    goto LABEL_20;
  }

LABEL_18:
  v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v17)
  {
    v20 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v20 = *(v17 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay);

  if (*(v1 + v103))
  {
    v21 = *(v1 + v103);
    goto LABEL_25;
  }

LABEL_23:
  v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v21)
  {
    v22 = 0;
    v23 = v16;
    goto LABEL_28;
  }

LABEL_25:
  v22 = *(v21 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo);

  v23 = v16;
  if (*(v1 + v103))
  {
    v18 = *(v1 + v103);
LABEL_30:
    v24 = *(v18 + 48);

    goto LABEL_31;
  }

LABEL_28:
  v18 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v18)
  {

    goto LABEL_30;
  }

  v24 = 0;
LABEL_31:
  v94 = type metadata accessor for Uber();
  v19 = swift_allocObject();
  if (!v23)
  {
    v109 = 0;
    v110 = 0;
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_35:
    v27 = 0;
    v28 = 0;
    goto LABEL_36;
  }

  v25 = *(v23 + 16);

  v109 = v25;
  v110 = v26;
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_33:
  v27 = v20[2];

LABEL_36:
  v111 = v27;
  v112 = v28;
  v29 = *&aBackgrou_1[8 * v102 + 8];
  v113 = *&aAbove_5[8 * v102];
  v114 = v29;
  v101 = v24;
  if (v22)
  {
    v30 = v95;
    v18 = v5;
    v31 = v96;
    (*(v95 + 16))(v5, v22 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v96);
    v32 = sub_24F91F398();
    v34 = v33;
    (*(v30 + 8))(v18, v31);
    v24 = v101;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  LODWORD(v102) = v102;
  v115 = v32;
  v116 = v34;
  v117 = 0;
  v118 = 0;
  v97 = v23;
  if (v24)
  {
    v35 = *(v24 + 16);
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v37 = 0;
  v38 = v108;
  v119 = v35;
  v120 = v36;
  v121 = 0;
  v122 = 0;
  v39 = v108;
  v40 = MEMORY[0x277D84F90];
LABEL_43:
  if (v37 <= 7)
  {
    v41 = 7;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 + 1;
  v43 = 16 * v37 + 40;
  while (1)
  {
    if (v37 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
      swift_arrayDestroy();
      v52 = sub_24F92B708();

      v104 = v52;
      sub_24F92C7F8();
      v53 = v106;
      *(v19 + 80) = v105;
      *(v19 + 96) = v53;
      *(v19 + 112) = v107;
      *(v19 + 16) = v102;
      v54 = v97;
      *(v19 + 24) = v97;
      v55 = v20;
      if (!v20)
      {

        v55 = v54;
      }

      v56 = v22 != 0;
      *(v19 + 32) = v55;
      *(v19 + 40) = v22;
      *(v19 + 48) = v22;
      *(v19 + 56) = v24;
      *(v19 + 64) = 0;
      *(v19 + 72) = 0;
      v57 = v103;
      if (v22 | v54)
      {
        goto LABEL_58;
      }

      if (v24)
      {

        v74 = ASKDeviceTypeGetCurrent();
        v75 = sub_24F92B0D8();
        v77 = v76;
        if (v75 == sub_24F92B0D8() && v77 == v78)
        {

          v56 = 2;
LABEL_58:
          *(v19 + 17) = v56;

LABEL_59:
          v7 = v93;
          v6 = v57;

          goto LABEL_60;
        }

        v84 = sub_24F92CE08();

        if (v84)
        {
          v56 = 2;
          goto LABEL_58;
        }
      }

      sub_24E6585F8(v19 + 80);
      swift_deallocPartialClassInstance();
      v19 = 0;
      goto LABEL_59;
    }

    if (v42 == ++v37)
    {
      break;
    }

    v44 = v43 + 16;
    v18 = *&v108[v43];
    v43 += 16;
    if (v18)
    {
      v96 = v1;
      v45 = v19;
      v46 = v22;
      v47 = v20;
      v48 = *(&v106 + v44);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_24E615CF4(0, *(v40 + 16) + 1, 1, v40);
      }

      v50 = *(v40 + 16);
      v49 = *(v40 + 24);
      if (v50 >= v49 >> 1)
      {
        v40 = sub_24E615CF4((v49 > 1), v50 + 1, 1, v40);
      }

      *(v40 + 16) = v50 + 1;
      v51 = v40 + 16 * v50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v18;
      v20 = v47;
      v22 = v46;
      v19 = v45;
      v1 = v96;
      v24 = v101;
      v38 = v108;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_101:
  swift_once();
LABEL_73:
  sub_24E65864C(&unk_27F39C610, v18 + 176);
  *(v18 + 16) = v37;
  *(v18 + 24) = v19;
  v68 = v96;
  *(v18 + 32) = v97;
  *(v18 + 40) = v68;
  *(v18 + 48) = v95;
  *(v18 + 56) = v94;
  v69 = v98;
  *(v18 + 64) = v40;
  *(v18 + 72) = v69;
  *(v18 + 80) = 0;
  *(v18 + 120) = v20 != 0;
  LODWORD(v101) = v1 ^ 1;
  if (v20)
  {

    countAndFlagsBits = v20[2];
    object = v20[3];
    v73 = v20[4];
    v72 = v20[5];

    goto LABEL_75;
  }

  if (!v39)
  {
    goto LABEL_91;
  }

  if (v39[32] > 1u)
  {
    if (v39[32] == 2)
    {
      goto LABEL_89;
    }

LABEL_91:

LABEL_92:

    countAndFlagsBits = 0;
    v73 = 0;
    v72 = 0;
    object = 1;
    goto LABEL_93;
  }

  if (v39[32])
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_89:
    v79 = sub_24F92CE08();

    if ((v79 & 1) == 0)
    {

      goto LABEL_92;
    }
  }

  v85._object = 0x800000024FA5BF90;
  v85._countAndFlagsBits = 0xD000000000000027;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v87 = localizedString(_:comment:)(v85, v86);
  countAndFlagsBits = v87._countAndFlagsBits;
  object = v87._object;
  v73 = sub_24ED1BFF4(v37, v92, v38, v91, v90);
  v72 = v88;

LABEL_75:

LABEL_93:
  *(v18 + 88) = countAndFlagsBits;
  *(v18 + 96) = object;
  *(v18 + 104) = v73;
  *(v18 + 112) = v72;
  *(v18 + 57) = v101 & 1;
  v80 = v99;
  *(v18 + 144) = 0;
  *(v18 + 152) = v80;
  v81 = v100;
  *(v18 + 128) = 0;
  *(v18 + 136) = v81;
  v82 = v103;
  *(v18 + 160) = v102;
  *(v18 + 168) = v82;
  return v18;
}

uint64_t sub_24ED546A4(uint64_t a1)
{
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    goto LABEL_5;
  }

  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v7)
  {

LABEL_5:
    v8 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner);

    if (v8)
    {
      return v8;
    }
  }

  if (a1)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    if (*(a1 + 16) <= 1u || *(a1 + 16) == 2)
    {
      if (sub_24F92CE08())
      {
        v13 = 256;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 256;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v12 = 1;
  }

  v14 = sub_24F2D9238(v10, v9, v11, v13 | v12);

  if (!v14)
  {
    return v14;
  }

  if (v14 == 1)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v15._object = 0x800000024FA5C340;
    v15._countAndFlagsBits = 0xD000000000000017;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = localizedString(_:comment:)(v15, v16);
    type metadata accessor for Banner();
    v8 = swift_allocObject();
    sub_24E60169C(&v41, &v38, &qword_27F235830);
    if (*(&v39 + 1))
    {
      v18 = v39;
      *(v8 + 104) = v38;
      *(v8 + 120) = v18;
      *(v8 + 136) = v40;
    }

    else
    {
      sub_24F91F6A8();
      v27 = sub_24F91F668();
      v29 = v28;
      (*(v4 + 8))(v6, v3);
      v36 = v27;
      v37 = v29;
      sub_24F92C7F8();
      sub_24E601704(&v38, &qword_27F235830);
    }

    sub_24E601704(&v41, &qword_27F235830);
    v30 = MEMORY[0x277D84F90];
    *(v8 + 16) = v17;
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v19 = sub_24F91FE58();
    *(&v39 + 1) = v19;
    v40 = sub_24ED5EA84(&qword_27F22ED40, MEMORY[0x277D08040]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(*(v19 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v19);
    LOBYTE(v19) = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v21 = "com.apple.TestFlight";
    if (v19)
    {
      v21 = "OFFER_MANAGED_ID_BANNER";
      v22 = 0xD00000000000001FLL;
    }

    else
    {
      v22 = 0xD000000000000017;
    }

    v23 = v21 | 0x8000000000000000;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v25 = localizedString(_:comment:)(*&v22, v24);
    type metadata accessor for Banner();
    v8 = swift_allocObject();
    sub_24E60169C(&v41, &v38, &qword_27F235830);
    if (*(&v39 + 1))
    {
      v26 = v39;
      *(v8 + 104) = v38;
      *(v8 + 120) = v26;
      *(v8 + 136) = v40;
    }

    else
    {
      sub_24F91F6A8();
      v31 = sub_24F91F668();
      v33 = v32;
      (*(v4 + 8))(v6, v3);
      v36 = v31;
      v37 = v33;
      sub_24F92C7F8();
      sub_24E601704(&v38, &qword_27F235830);
    }

    sub_24E601704(&v41, &qword_27F235830);
    v30 = MEMORY[0x277D84F90];
    *(v8 + 16) = v25;
  }

  *(v8 + 32) = 0;
  *(v8 + 40) = v30;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = xmmword_24F9406F0;
  *(v8 + 96) = 2;
  return v8;
}

uint64_t sub_24ED54C00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28[-v2];
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-v9];
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v11 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v11)
    {
LABEL_6:
      v13 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
      if (!v13 || *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) != 1)
      {
        return 0;
      }

      v14 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24F93DE60;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_24E90A06C();
      *(v15 + 32) = v14;
      *(v15 + 40) = v13;

      v16 = sub_24F92B118();
      v18 = v17;
      sub_24F91F488();
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {

        sub_24E601704(v3, &qword_27F228530);
        return sub_24ED55958();
      }

      (*(v5 + 32))(v10, v3, v4);
      (*(v5 + 16))(v7, v10, v4);
      v20 = objc_allocWithZone(MEMORY[0x277CC1E98]);
      v21 = sub_24ED5BB24(v7);
      v22 = [v21 bundleRecord];
      v23 = [v22 bundleIdentifier];

      if (v23)
      {
        v24 = sub_24F92B0D8();
        v26 = v25;

        if (v24 == 0xD000000000000014 && 0x800000024FA5C2E0 == v26)
        {

LABEL_18:
          v12 = sub_24ED55028(v16, v18);

          (*(v5 + 8))(v10, v4);
          return v12;
        }

        v27 = sub_24F92CE08();

        if (v27)
        {
          goto LABEL_18;
        }
      }

      (*(v5 + 8))(v10, v4);
      return sub_24ED55958();
    }
  }

  v12 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);

  if (!v12)
  {
    goto LABEL_6;
  }

  return v12;
}

uint64_t sub_24ED55028(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v61 = a1;
  v57 = sub_24F91F6B8();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v66 = sub_24F91F4A8();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v56 - v16;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x800000024FA5C1E0;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v17, v18);
  countAndFlagsBits = v19._countAndFlagsBits;
  v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  object = v19._object;
  if (v20)
  {
    v65 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);

    v21._countAndFlagsBits = 0x5050415F41544542;
    v21._object = 0xEF52454E4E41425FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v64 = localizedString(_:comment:)(v21, v22)._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F93A400;
    v24 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    v25 = sub_24E90A06C();
    *(v23 + 32) = v65;
    *(v23 + 40) = v20;
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    v26 = countAndFlagsBits;
    *(v23 + 64) = v25;
    *(v23 + 72) = v26;
    *(v23 + 80) = v19._object;
  }

  else
  {
    v27._object = 0x800000024FA5C200;
    v27._countAndFlagsBits = 0xD000000000000019;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    localizedString(_:comment:)(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_24F93DE60;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_24E90A06C();
    *(v29 + 32) = countAndFlagsBits;
    *(v29 + 40) = v19._object;
  }

  v65 = sub_24F92B0A8();
  v64 = v30;

  v31 = v67;
  sub_24F928A98();
  type metadata accessor for ExternalUrlAction();
  v32 = swift_allocObject();
  sub_24F91F488();
  v33 = v66;
  if ((*(v9 + 48))(v8, 1, v66) == 1)
  {
    (*(v12 + 8))(v31, v11);

    sub_24E601704(v8, &qword_27F228530);
    swift_deallocPartialClassInstance();
    v32 = 0;
  }

  else
  {
    v34 = v59;
    (*(v9 + 32))(v59, v8, v33);
    v62 = v9;
    (*(v9 + 16))(v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v34, v33);
    *(v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = 1;
    *(v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
    v35 = v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v35 = 0;
    v35[8] = 1;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    (*(v12 + 16))(v14, v31, v11);
    v36 = sub_24F929608();
    (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
    v37 = (v32 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v37 = 0u;
    v37[1] = 0u;
    sub_24E60169C(&v77, &v71, &qword_27F235830);
    if (*(&v72 + 1))
    {
      v38 = v33;
      v74 = v71;
      v75 = v72;
      v76 = v73;
    }

    else
    {
      v39 = v56;
      sub_24F91F6A8();
      v40 = sub_24F91F668();
      v42 = v41;
      (*(v58 + 8))(v39, v57);
      v69 = v40;
      v70 = v42;
      v34 = v59;
      v38 = v66;
      sub_24F92C7F8();
      sub_24E601704(&v71, &qword_27F235830);
    }

    v43 = object;
    v44 = countAndFlagsBits;
    sub_24E601704(&v77, &qword_27F235830);
    (*(v62 + 8))(v34, v38);
    (*(v12 + 8))(v67, v11);
    v45 = v32 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v46 = v75;
    *v45 = v74;
    *(v45 + 1) = v46;
    *(v45 + 4) = v76;
    sub_24E6009C8(v60, v32 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
    v32[2] = v44;
    v32[3] = v43;
    v32[4] = 0;
    v32[5] = 0;
    (*(v12 + 32))(v32 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v14, v11);
  }

  type metadata accessor for Banner();
  v77 = 0u;
  v78 = 0u;
  v79 = 0;
  v47 = swift_allocObject();
  sub_24E60169C(&v77, &v74, &qword_27F235830);
  if (*(&v75 + 1))
  {
    v48 = v75;
    *(v47 + 104) = v74;
    *(v47 + 120) = v48;
    *(v47 + 136) = v76;
  }

  else
  {
    v49 = v56;
    sub_24F91F6A8();
    v50 = sub_24F91F668();
    v52 = v51;
    (*(v58 + 8))(v49, v57);
    *&v71 = v50;
    *(&v71 + 1) = v52;
    sub_24F92C7F8();
    sub_24E601704(&v74, &qword_27F235830);
  }

  sub_24E601704(&v77, &qword_27F235830);
  v53 = v64;
  *(v47 + 16) = v65;
  *(v47 + 24) = v53;
  v54 = MEMORY[0x277D84F90];
  *(v47 + 32) = v32;
  *(v47 + 40) = v54;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 48) = 0;
  *(v47 + 72) = 0;
  *(v47 + 80) = xmmword_24F9406F0;
  *(v47 + 96) = 2;
  return v47;
}

uint64_t sub_24ED55958()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);

    v7._object = 0x800000024FA5C1C0;
    v7._countAndFlagsBits = 0xD000000000000017;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    localizedString(_:comment:)(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_24E90A06C();
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
    countAndFlagsBits = sub_24F92B0A8();
    object = v11;
  }

  else
  {
    v13._countAndFlagsBits = 0xD000000000000021;
    v13._object = 0x800000024FA5C190;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = localizedString(_:comment:)(v13, v14);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
  }

  type metadata accessor for Banner();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v16 = swift_allocObject();
  sub_24E60169C(v27, &v24, &qword_27F235830);
  if (*(&v25 + 1))
  {
    v17 = v25;
    *(v16 + 104) = v24;
    *(v16 + 120) = v17;
    *(v16 + 136) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v2 + 8))(v4, v1);
    v23[1] = v18;
    v23[2] = v20;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830);
  }

  sub_24E601704(v27, &qword_27F235830);
  *(v16 + 16) = countAndFlagsBits;
  *(v16 + 24) = object;
  v21 = MEMORY[0x277D84F90];
  *(v16 + 32) = 0;
  *(v16 + 40) = v21;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 48) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = xmmword_24F9406F0;
  *(v16 + 96) = 2;
  return v16;
}

uint64_t sub_24ED55C14()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return v1;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction);

  if (!v2)
  {
    return 0;
  }

  v1 = *(v2 + 16);

  return v1;
}

uint64_t sub_24ED55CCC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v2 || (v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct)) != 0)
  {
    v3 = *(v2 + 24);
    *a1 = *(v2 + 16);
    a1[1] = v3;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_24ED55D00()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
LABEL_8:
      v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (!v4)
      {
        v3 = 0;
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties);

  if (v3)
  {
    goto LABEL_13;
  }

  if (!*(v0 + v1))
  {
    goto LABEL_8;
  }

  v4 = *(v0 + v1);
LABEL_10:
  v3 = *(v4 + 240);

  if (v3)
  {
    v64 = *(v3 + 16);
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v60 = *(v3 + 40);
    v62 = *(v3 + 24);
    v58 = *(v3 + 56);
    v54 = *(v3 + 64);
    v48 = *(v3 + 80);
    v50 = *(v3 + 72);
    v44 = *(v3 + 88);
    v7 = *(v3 + 104);
    v8 = *(v3 + 112);
    v74 = *(v3 + 120);
    v70 = *(v3 + 122);
    v72 = *(v3 + 121);
    v66 = *(v3 + 124);
    v68 = *(v3 + 123);
    v80 = *(v3 + 126);
    v78 = *(v3 + 128);
    v76 = *(v3 + 136);
    sub_24E60169C(v3 + 144, &v82, &qword_27F2129B0);

    v9 = v5;

    v10 = v6;

    v11 = v7;
    v12 = v8;
    sub_24E9534EC(v7, v8);
    v13 = *(v3 + 240);
    v56 = *(v3 + 232);
    v14 = *(v3 + 224);
    v52 = *(v3 + 216);
    v15 = *(v3 + 200);
    v46 = *(v3 + 192);
    v16 = *(v3 + 184);
    v42 = *(v3 + 176);

    type metadata accessor for OfferDisplayProperties();
    v3 = swift_allocObject();
    *(v3 + 16) = v64;
    *(v3 + 24) = v62;
    *(v3 + 32) = v9;
    *(v3 + 40) = v60;
    *(v3 + 48) = v10;
    *(v3 + 56) = v58;
    *(v3 + 64) = v54;
    *(v3 + 72) = v50;
    *(v3 + 80) = v48;
    *(v3 + 88) = v44;
    *(v3 + 96) = 770;
    *(v3 + 104) = v11;
    *(v3 + 112) = v12;
    *(v3 + 120) = v74;
    *(v3 + 121) = v72;
    *(v3 + 122) = v70;
    *(v3 + 123) = v68;
    *(v3 + 124) = v66;
    *(v3 + 125) = 0;
    *(v3 + 126) = v80;
    *(v3 + 128) = v78;
    *(v3 + 136) = v76;
    v17 = v83;
    *(v3 + 144) = v82;
    *(v3 + 160) = v17;
    *(v3 + 176) = v42;
    *(v3 + 184) = v16;
    *(v3 + 192) = v46;
    *(v3 + 200) = v15;
    *(v3 + 208) = 0;
    *(v3 + 216) = v52;
    *(v3 + 224) = v14;
    *(v3 + 232) = v56;
    *(v3 + 240) = v13;
  }

LABEL_13:
  v18 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
  if (!v18)
  {
    return v3;
  }

  v19 = *(v18 + 24);
  if (!v19)
  {
    return v3;
  }

  if (!v3)
  {
    v21 = 16;
    goto LABEL_17;
  }

  v20 = *(v3 + 96);
  v21 = *(v3 + 97);
  if (v20 == 7)
  {
LABEL_17:
    LOBYTE(v20) = *(v19 + 96);
  }

  v81 = v20;
  v79 = *(v19 + 16);
  v22 = *(v19 + 32);
  v23 = *(v19 + 48);
  v75 = *(v19 + 40);
  v77 = *(v19 + 24);
  v24 = *(v19 + 64);
  v73 = *(v19 + 56);
  v25 = *(v19 + 72);
  v26 = *(v19 + 80);
  v27 = *(v19 + 88);
  if (v21 == 16)
  {
    LOBYTE(v21) = *(v19 + 97);
  }

  v55 = v21;
  v28 = *(v19 + 104);
  v29 = *(v19 + 112);
  v43 = v29;
  v45 = v28;
  v63 = *(v19 + 121);
  v61 = *(v19 + 122);
  v57 = *(v19 + 124);
  v59 = *(v19 + 123);
  v71 = *(v19 + 126);
  v69 = *(v19 + 128);
  v65 = *(v19 + 120);
  v67 = *(v19 + 136);
  sub_24E60169C(v19 + 144, &v82, &qword_27F2129B0);

  sub_24E9534EC(v28, v29);
  v40 = v27;
  v41 = v26;
  v30 = *(v19 + 240);
  v53 = *(v19 + 232);
  v31 = v23;
  v32 = *(v19 + 224);
  v33 = v24;
  v34 = *(v19 + 200);
  v49 = *(v19 + 192);
  v51 = *(v19 + 216);
  v35 = v25;
  v36 = *(v19 + 184);
  v47 = *(v19 + 176);

  type metadata accessor for OfferDisplayProperties();
  v37 = swift_allocObject();
  *(v37 + 16) = v79;
  *(v37 + 24) = v77;
  *(v37 + 32) = v22;
  *(v37 + 40) = v75;
  *(v37 + 48) = v31;
  *(v37 + 56) = v73;
  *(v37 + 64) = v33;
  *(v37 + 72) = v35;
  *(v37 + 80) = v41;
  *(v37 + 88) = v40;
  *(v37 + 96) = v81;
  *(v37 + 97) = v55;
  *(v37 + 104) = v45;
  *(v37 + 112) = v43;
  *(v37 + 120) = v65;
  *(v37 + 121) = v63;
  *(v37 + 122) = v61;
  *(v37 + 123) = v59;
  *(v37 + 124) = v57;
  *(v37 + 125) = 0;
  *(v37 + 126) = v71;
  *(v37 + 128) = v69;
  *(v37 + 136) = v67;
  v38 = v83;
  *(v37 + 144) = v82;
  *(v37 + 160) = v38;

  *(v37 + 176) = v47;
  *(v37 + 184) = v36;
  *(v37 + 192) = v49;
  *(v37 + 200) = v34;
  *(v37 + 208) = 0;
  *(v37 + 216) = v51;
  *(v37 + 224) = v32;
  *(v37 + 232) = v53;
  v3 = v37;
  *(v37 + 240) = v30;
  return v3;
}

uint64_t sub_24ED5622C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
LABEL_7:
    v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
      v10 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
      v11 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
      v12 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
      sub_24E901B80(v12, v9, v10, v11);
      sub_24E901BD0(v5, v6, v7, 0);
      if (v11)
      {
        sub_24E901BD0(v12, v9, v10, v11);
        return 1;
      }
    }

    else
    {
      sub_24E901BD0(v5, v6, v7, 0);
    }

    return 0;
  }

  v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  if (!v4[3])
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_24ED563A8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
    if (v4[3])
    {
      return 1;
    }

    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
    v10 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
    v11 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
    v12 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
    sub_24E901B80(v12, v9, v10, v11);
    sub_24E901BD0(v5, v6, v7, 0);
    if (v11)
    {
      sub_24E901BD0(v12, v9, v10, v11);
      return 1;
    }
  }

  else
  {
    sub_24E901BD0(v5, v6, v7, 0);
  }

  return 0;
}

void sub_24ED56528(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer;
  v10 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer);
  if (v10 == 2)
  {
    return;
  }

  v28 = v6;
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 16);
  v12(v35, ObjectType, a2);
  if (v38 >> 60)
  {
    if (v38 >> 60 != 8 || ((v13 = v37 | v39, v14 = v35[3] | v35[2] | v35[1], v38 != 0x8000000000000000) || v13 | v35[0] | v36 | v14) && (v38 != 0x8000000000000000 || v35[0] != 4 || v13 | v36 | v14))
    {
      sub_24E88D2AC(v35);
      if (v10)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (LOBYTE(v35[0]) == 1)
  {
LABEL_12:
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v10)
  {
    return;
  }

LABEL_15:
  v12(v30, ObjectType, a2);
  if (v33 >> 60)
  {
    if (v33 >> 60 != 8)
    {
LABEL_22:
      sub_24E88D2AC(v30);
LABEL_25:
      LOBYTE(v17) = 1;
      goto LABEL_26;
    }

    v15 = v32 | v34;
    v16 = v30[3] | v30[2] | v30[1];
    if (v33 != 0x8000000000000000 || v15 | v30[0] | v31 | v16)
    {
      if (v33 == 0x8000000000000000 && v30[0] == 4)
      {
        v17 = v15 | v31 | v16;
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_22;
    }
  }

  else if (LOBYTE(v30[0]) != 1)
  {
    goto LABEL_25;
  }

  LOBYTE(v17) = 0;
LABEL_26:
  *(v2 + v9) = v17;
  sub_24F91F958();
  v18 = sub_24ED570C8();
  if (v18 >> 62)
  {
    v19 = sub_24F92C738();

    if (v19 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    for (i = 0; v19 != i; ++i)
    {
      v21 = sub_24ED57704(i);
      if (!v21)
      {
        continue;
      }

      v29 = *(v21 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0xD000000000000010 && 0x800000024FA3F2E0 == v22)
      {
      }

      else
      {
        v23 = sub_24F92CE08();

        if ((v23 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_24F91F8F8();
LABEL_32:
    }
  }

  if (sub_24F91F8E8() >= 1)
  {
    v24 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      v26 = swift_getObjectType();
      (*(*(v25 + 16) + 48))(v8, v26);
      swift_unknownObjectRelease();
    }
  }

  (*(v5 + 8))(v8, v28);
}

uint64_t sub_24ED568F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v9 = 1;
  (*(a2 + 40))(v26, 1, ObjectType, a2);
  v10 = v29 >> 60;
  if (v29 >> 60 != 2 && v10 != 7)
  {
    if (v10 != 8 || v30 || v29 != 0x8000000000000000 || v26[0] != 1 || (v12 = vorrq_s8(v27, v28), *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v26[1]))
    {
      v9 = 0;
    }
  }

  result = sub_24E88D2AC(v26);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents);
  if (v14 != 2 && ((v9 ^ v14) & 1) != 0)
  {
    *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = v9;
    sub_24F91F958();
    v15 = sub_24ED570C8();
    v24 = v4;
    if (v15 >> 62)
    {
      v16 = sub_24F92C738();

      if (v16 < 0)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      for (i = 0; v16 != i; ++i)
      {
        v18 = sub_24ED57704(i);
        if (!v18)
        {
          continue;
        }

        v25 = *(v18 + 16);
        if (Shelf.ContentType.rawValue.getter() == 0x6F6D6F7250707061 && v19 == 0xEC0000006E6F6974)
        {
        }

        else
        {
          v20 = sub_24F92CE08();

          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_24F91F8F8();
LABEL_19:
      }
    }

    if (sub_24F91F8E8() >= 1)
    {
      v21 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 8);
        v23 = swift_getObjectType();
        (*(*(v22 + 16) + 48))(v7, v23);
        swift_unknownObjectRelease();
      }
    }

    return (*(v5 + 8))(v7, v24);
  }

  return result;
}

uint64_t sub_24ED56BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_24ED56C1C, 0, 0);
}

uint64_t sub_24ED56C1C()
{
  v1 = v0[8];
  v2 = *(v0[6] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
  ObjectType = swift_getObjectType();
  v0[9] = swift_getObjectType();
  (*(v1 + 8))();
  v4 = v0[3];
  v0[4] = v0[2];
  v0[5] = v4;
  v7 = (*(v2 + 104) + **(v2 + 104));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24ED56D98;

  return v7(v0 + 4, ObjectType, v2);
}

uint64_t sub_24ED56D98(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x2822009F8](sub_24ED56EB8, 0, 0);
}

uint64_t sub_24ED56EB8()
{
  v1 = v0[6];
  v2 = (*(v0[8] + 24))(v0[9]) & 1;
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner;
  v4 = v0[6];
  if (v2 != *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner))
  {
    goto LABEL_2;
  }

  v8 = v0[12];
  v9 = *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  if (v8)
  {
    if (v9)
    {
      v10 = v0[11] == *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion) && v8 == v9;
      if (v10 || (sub_24F92CE08() & 1) != 0)
      {

        goto LABEL_3;
      }

      v4 = v0[6];
    }

LABEL_2:
    v5 = *(v0 + 11);
    *(v1 + v3) = v2;
    *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion) = v5;

    ProductPresenter.reloadTopLockup()();
    goto LABEL_3;
  }

  if (v9)
  {
    goto LABEL_2;
  }

LABEL_3:
  v6 = v0[1];

  return v6();
}

uint64_t sub_24ED56FD4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED57018(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24ED570C8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v4 = *(v1 + *v3);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v4;
}

uint64_t sub_24ED571A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_24F91F968();
  v8 = MEMORY[0x277D84F90];
  v21[1] = MEMORY[0x277D84F90];
  sub_24ED5EA84(&qword_27F22E100, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
  sub_24E9723D4(&qword_27F22E108, &qword_27F218050);
  v20[4] = a3;
  sub_24F92C6A8();
  v9 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v4 + v9))
  {
    v10 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v11 = *v10;
  if (*(a1 + v11))
  {
    v12 = *(a1 + v11);
  }

  else
  {
    v12 = v8;
  }

  if (*(a2 + v11))
  {
    v13 = *(a2 + v11);
  }

  else
  {
    v13 = v8;
  }

  if (v13 >> 62)
  {
LABEL_25:
    v14 = sub_24F92C738();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x253052270](v15, v13);
        v16 = v17;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_22;
        }
      }

      v21[0] = v16;
      MEMORY[0x28223BE20](v17);
      v20[2] = v21;
      if (sub_24E615B10(sub_24ED5F4C4, v20, v12))
      {
        sub_24F91F8F8();
      }

      ++v15;
    }

    while (v18 != v14);
  }
}

char *sub_24ED57414(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  if (a2)
  {
    v5 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
    swift_beginAccess();
    if (*(v2 + v5))
    {
      v7 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
    }

    else
    {
      v7 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
    }

    v8 = *v7;
    if (*(a1 + v8))
    {
      v9 = *(a1 + v8);
    }

    else
    {
      v9 = v4;
    }

    if (*(a2 + v8))
    {
      v10 = *(a2 + v8);
    }

    else
    {
      v10 = v4;
    }

    if (v10 >> 62)
    {
LABEL_43:
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12 = sub_24F92C738();
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v4 = MEMORY[0x277D84F90];
      do
      {
        v15 = v13;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x253052270](v15, v10);
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v15 >= *(v11 + 16))
            {
              goto LABEL_42;
            }

            v16 = *&v10[8 * v15 + 32];

            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }
          }

          v17 = sub_24EB9B734(v16, v9);
          if ((v18 & 1) == 0 && v15 != v17)
          {
            break;
          }

          ++v15;
          if (v13 == v12)
          {
            goto LABEL_39;
          }
        }

        v31 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_24E615EC4(0, *(v4 + 2) + 1, 1, v4);
        }

        v21 = *(v4 + 2);
        v20 = *(v4 + 3);
        v22 = v21 + 1;
        v23 = v31;
        if (v21 >= v20 >> 1)
        {
          v29 = sub_24E615EC4((v20 > 1), v21 + 1, 1, v4);
          v22 = v21 + 1;
          v23 = v31;
          v4 = v29;
        }

        *(v4 + 2) = v22;
        *&v4[8 * v21 + 32] = v23;
        v24 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_24E615EC4(0, *(v32 + 2) + 1, 1, v32);
        }

        v25 = v24;
        v26 = *(v24 + 2);
        v33 = v25;
        v27 = *(v25 + 3);
        if (v26 >= v27 >> 1)
        {
          v33 = sub_24E615EC4((v27 > 1), v26 + 1, 1, v33);
        }

        *(v33 + 2) = v26 + 1;
        v28 = &v33[8 * v26];
        v14 = v33;
        *(v28 + 4) = v15;
      }

      while (v13 != v12);
    }

LABEL_39:
  }

  return v4;
}

uint64_t sub_24ED57704(unint64_t a1)
{
  v3 = sub_24ED570C8();
  if (v3 >> 62)
  {
    v4 = sub_24F92C738();

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      v6 = MEMORY[0x253052270](a1, v4);
LABEL_7:

      if (*(v6 + 16) > 2u)
      {

        v8 = *(v6 + 32);
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v7 = sub_24F92CE08();

        if ((v7 & 1) == 0)
        {
          goto LABEL_20;
        }

        v8 = *(v6 + 32);
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      v9 = *(v6 + 24);
      if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
      {
        v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
LABEL_16:
        v11 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
        swift_beginAccess();
        v12 = *(v10 + v11);
        v13 = *(v12 + 16);

        if (v13)
        {

          v14 = sub_24E76D644(v9, v8);
          v16 = v15;

          if (v16)
          {
            v17 = *(*(v12 + 56) + 8 * v14);

            return v17;
          }

          return 0;
        }

        goto LABEL_20;
      }

      v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (v10)
      {

        goto LABEL_16;
      }

LABEL_20:

      return 0;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 <= a1)
  {
    return 0;
  }

  result = sub_24ED570C8();
  v4 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(result + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED57998()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo);

  if (!v3)
  {
LABEL_8:
    v4 = 0;
    v5 = *(v0 + v1);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v4 = 1;
  v5 = *(v0 + v1);
  if (v5)
  {
LABEL_7:
    v6 = v5;
    goto LABEL_11;
  }

LABEL_9:
  v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v6)
  {
    return v4 != 0;
  }

LABEL_11:
  v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork);

  if (v7)
  {

    if (*(v0 + v1))
    {
      v8 = *(v0 + v1);
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (!v8)
      {
        return (v4 & 1) != 0;
      }
    }

    v9 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay);

    if (v9)
    {

      return 1;
    }

    return (v4 & 1) != 0;
  }

  return v4 != 0;
}

uint64_t sub_24ED57B3C@<X0>(char *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v4)
    {
      v5 = 3;
      goto LABEL_6;
    }
  }

  v5 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle);

LABEL_6:
  *a1 = v5;
  return result;
}

uint64_t sub_24ED57BC0()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 2;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle);

  return v2;
}

void *sub_24ED57C50(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      return 0;
    }

    v3 = a1;

    a1 = v3;
  }

  v4 = *(v2 + *a1);
  v5 = v4;

  return v4;
}

uint64_t sub_24ED57CF0()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v4 = *(v1 + *v3);
  if (!v4)
  {

LABEL_13:

    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_10;
    }

LABEL_14:
    v5 = sub_24F92C738();
    goto LABEL_11;
  }

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

LABEL_10:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  return v5;
}

uint64_t sub_24ED57DFC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_24ED57E7C@<X0>(uint64_t a1@<X8>)
{
  if (sub_24F92CE08())
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_24ED570C8();
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        if (*(v7 + 16) <= 1u && *(v7 + 16))
        {

LABEL_18:

          MEMORY[0x253045380](0, v6);
          v2 = 0;
          goto LABEL_19;
        }

        v8 = sub_24F92CE08();

        if (v8)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_15:

    v2 = 1;
  }

LABEL_19:
  v10 = sub_24F91FA78();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v2, 1, v10);
}

unint64_t sub_24ED580CC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
LABEL_5:

    v2 = sub_24ED5969C(v1);

    return v2;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v1)
  {

    goto LABEL_5;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_24ED58144()
{
  if ((sub_24F92CE08() & 1) == 0)
  {
    v0 = sub_24ED570C8();
    v1 = v0;
    if (v0 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        if (*(v4 + 16) > 1u && *(v4 + 16) != 3)
        {

LABEL_19:

          return v3;
        }

        v5 = sub_24F92CE08();

        if (v5)
        {
          goto LABEL_19;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_14:
  }

  return 0;
}

uint64_t sub_24ED58334(uint64_t a1)
{
  v2 = sub_24ED570C8();
  v3 = sub_24EB9B734(a1, v2);

  return v3;
}

uint64_t sub_24ED58388(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x253052270](a1, result);

    v5 = *(v7 + 16);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = *(result + 8 * a1 + 32);

  v5 = *(v4 + 16);

LABEL_5:
  if ((v5 - 2) < 2)
  {
    return 0;
  }

  if (v5)
  {
    if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
    {
      if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct))
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    v6 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
    swift_beginAccess();
    return *(v1 + v6);
  }
}

uint64_t sub_24ED584B4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      return 0;
    }
  }

  v2 = *(v3 + 232);

  if (!v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (v4)
    {
      v2 = *(v4 + 232);
LABEL_10:

      return v2;
    }

    return 0;
  }

  return v2;
}

double sub_24ED58570(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v5)
    {
      return result;
    }
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v1 + v6))
  {

    goto LABEL_7;
  }

  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v9)
  {
    v10 = (v9 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
    if (v10[3])
    {

      goto LABEL_13;
    }

    v87 = v5;
    v89 = v3;
    v85 = a1;
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[2];
    if (!v4)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v87 = v5;
    v89 = v3;
    v85 = a1;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (!v4)
    {
LABEL_49:
      sub_24E901BD0(v20, v21, v22, 0);
      a1 = v85;
      v5 = v87;
      v3 = v89;
LABEL_7:
      v7 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
      if (v7)
      {
        v8 = *(v7 + 24);
        if (v8)
        {

LABEL_18:
          if (*(v7 + 32) <= 1u)
          {
            v12 = sub_24F92CE08();

            if ((v12 & 1) == 0)
            {

              v13 = 0;
              goto LABEL_31;
            }

LABEL_23:
            v14 = *(v8 + 121);

            if (v14 == 1)
            {
              v15 = *(v8 + 72);

              v16._object = 0x800000024FA5C360;
              v16._countAndFlagsBits = 0xD000000000000021;
              v17._countAndFlagsBits = 0;
              v17._object = 0xE000000000000000;
              v18 = localizedString(_:comment:)(v16, v17);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v93[0] = v15;
              sub_24E81F154(v18._countAndFlagsBits, v18._object, 0, isUniquelyReferenced_nonNull_native);
              v13 = 1;
              goto LABEL_32;
            }

            v13 = 1;
LABEL_31:
            v15 = *(v8 + 72);

LABEL_32:
            v90 = v15;
            if (*(v1 + v6))
            {

              if (((*(v8 + 16) & 0xFE) != 2) | a1 & 1)
              {
                v30 = 3;
              }

              else
              {
                v30 = 8;
              }

              v88 = v30;
LABEL_59:
              v42 = 5;
              goto LABEL_60;
            }

            v31 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
            if (v31)
            {
              v32 = (v31 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
              if (v32[3])
              {
LABEL_55:

                if (((*(v8 + 16) & 0xFE) != 2) | a1 & 1)
                {
                  v45 = 3;
                }

                else
                {
                  v45 = 8;
                }

                v88 = v45;
                if (v13)
                {
                  goto LABEL_59;
                }

LABEL_47:
                v42 = *(v8 + 96);
LABEL_60:
                v86 = v42;

                v83 = *(v8 + 16);
                v46 = *(v8 + 32);
                v47 = *(v8 + 48);
                v79 = *(v8 + 40);
                v81 = *(v8 + 24);
                v48 = *(v8 + 64);
                v74 = *(v8 + 56);
                v49 = *(v8 + 80);
                v50 = *(v8 + 88);
                v51 = *(v8 + 104);
                v52 = *(v8 + 112);
                v67 = *(v8 + 121);
                v68 = *(v8 + 120);
                v65 = *(v8 + 123);
                v66 = *(v8 + 122);
                v64 = *(v8 + 124);
                v72 = *(v8 + 126);
                v70 = *(v8 + 128);
                v69 = *(v8 + 136);
                v91 = 0u;
                v92 = 0u;
                sub_24E60169C(v8 + 144, v93, &qword_27F2129B0);
                v76 = v48;

                v84 = v46;

                v53 = v47;

                sub_24E9534EC(v51, v52);
                v54 = *(v8 + 184);
                v55 = *(v8 + 200);
                v60 = *(v8 + 192);
                v61 = *(v8 + 176);
                v56 = *(v8 + 224);
                v63 = *(v8 + 216);
                v62 = *(v8 + 232);
                v57 = *(v8 + 240);

                type metadata accessor for OfferDisplayProperties();
                v58 = swift_allocObject();
                *(v58 + 16) = v83;
                *(v58 + 24) = v81;
                *(v58 + 32) = v84;
                *(v58 + 40) = v79;
                *(v58 + 48) = v53;
                *(v58 + 56) = v74;
                *(v58 + 64) = v76;
                *(v58 + 72) = v90;
                *(v58 + 80) = v49;
                *(v58 + 88) = v50;
                *(v58 + 96) = v86;
                *(v58 + 97) = v88;
                *(v58 + 104) = v51;
                *(v58 + 112) = v52;
                *(v58 + 120) = v68;
                *(v58 + 121) = v67;
                *(v58 + 122) = v66;
                *(v58 + 123) = v65;
                *(v58 + 124) = v64;
                *(v58 + 125) = 0;
                *(v58 + 126) = v72;
                *(v58 + 128) = v70;
                *(v58 + 136) = v69;
                result = *v93;
                v59 = v93[1];
                *(v58 + 144) = v93[0];
                *(v58 + 160) = v59;
                *(v58 + 176) = v61;
                *(v58 + 184) = v54;
                *(v58 + 192) = v60;
                *(v58 + 200) = v55;
                *(v58 + 208) = 0;
                *(v58 + 216) = v63;
                *(v58 + 224) = v56;
                *(v58 + 232) = v62;
                *(v58 + 240) = v57;
                return result;
              }

              v44 = v3;
              v34 = *v32;
              v35 = v32[1];
              v36 = v32[2];
              v37 = *(v1 + v44);
              if (!v37)
              {
LABEL_54:
                sub_24E901BD0(v34, v35, v36, 0);
                goto LABEL_55;
              }
            }

            else
            {
              v33 = v3;
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v37 = *(v1 + v33);
              if (!v37)
              {
                goto LABEL_54;
              }
            }

            v38 = (v37 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
            v39 = v38[3];
            v80 = v38[1];
            v82 = *v38;
            v40 = v36;
            v78 = v38[2];
            sub_24E901B80(*v38, v80, v78, v39);
            sub_24E901BD0(v34, v35, v40, 0);

            if (v39)
            {
              sub_24E901BD0(v82, v80, v78, v39);
            }

            if (((*(v8 + 16) & 0xFE) != 2) | a1 & 1)
            {
              v41 = 3;
            }

            else
            {
              v41 = 8;
            }

            v88 = v41;
            if (v13)
            {
              goto LABEL_59;
            }

            goto LABEL_47;
          }

          if (*(v7 + 32) == 2)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_23;
          }

LABEL_25:
          v13 = 0;
          goto LABEL_31;
        }
      }

      v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties);
      if (v8 && (a1 & 1) != 0 || (v8 = *(v5 + 240)) != 0 || (v43 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct)) != 0 && (v8 = *(v43 + 240)) != 0)
      {

        if (!v7)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

LABEL_13:

      return result;
    }
  }

  v23 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v24 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
  v26 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
  v25 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
  v75 = v20;
  v77 = v22;
  v27 = v21;

  v71 = v26;
  v73 = v23;
  v28 = v23;
  v29 = v24;
  sub_24E901B80(v28, v24, v26, v25);
  sub_24E901BD0(v75, v27, v77, 0);
  a1 = v85;
  v5 = v87;
  v3 = v89;
  if (!v25)
  {
    goto LABEL_7;
  }

  sub_24E901BD0(v73, v29, v71, v25);
  return result;
}

unint64_t sub_24ED58CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_24ED570C8();
  result = sub_24F91FA18();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 8 * result + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_27;
  }

  v7 = MEMORY[0x253052270](result, v5);
LABEL_5:

  if (*(v7 + 16) > 1u)
  {
    if (*(v7 + 16) != 2)
    {
      v8 = sub_24F91FA18();
      v9 = sub_24ED57704(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(*(v9 + 24) + 16);
        if (!v11)
        {
          sub_24E60169C(v9 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v4, &qword_27F228530);
          v12 = sub_24F91F4A8();
          if ((*(*(v12 - 8) + 48))(v4, 1, v12) != 1)
          {

            sub_24E601704(v4, &qword_27F228530);
            v16 = *(v10 + 16);

            *a1 = v16;
            *(a1 + 41) = 3;
            return result;
          }

          sub_24E601704(v4, &qword_27F228530);
          v11 = *(*(v10 + 24) + 16);
        }

        if (sub_24F91FA08() < v11)
        {
          v13 = *(v10 + 24);

          result = sub_24F91FA08();
          if ((result & 0x8000000000000000) == 0)
          {
            if (result < *(v13 + 16))
            {
              sub_24E615E00(v13 + 40 * result + 32, a1);

              v14 = *(v10 + 16);

              *(a1 + 40) = v14;
              *(a1 + 41) = 2;
              return result;
            }

            goto LABEL_28;
          }

LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }
      }
    }

LABEL_18:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -256;
    return result;
  }

  if (!*(v7 + 16))
  {

    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 41) = 4;
    return result;
  }

  v15 = sub_24ED53A44();

  if (!v15)
  {
    goto LABEL_18;
  }

  *a1 = v15;
  *(a1 + 41) = 0;
  return result;
}

uint64_t sub_24ED58FC8(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_24ED590FC(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_24ED59224(uint64_t a1)
{
  v5 = sub_24ED570C8();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v6 = *(v5 + 8 * a1 + 32);

      v7 = *(v6 + 16);

      if (v7 != 2)
      {
        if (v7 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_14:
      if (ProductPresenter.numberOfNonShelfRows(for:)(a1) < 1)
      {
        return 0;
      }

      v3 = a1 - 1;
      if (a1 < 1)
      {
LABEL_20:
        if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
        {
          v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
        }

        else
        {
          v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
          if (!v21)
          {
            return 0;
          }
        }

        v22 = *(v21 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);

        return v22;
      }

      result = sub_24ED570C8();
      v2 = result;
      if ((result & 0xC000000000000001) == 0)
      {
        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
        {
          __break(1u);
          return result;
        }

        v15 = *(result + 8 * v3 + 32);

LABEL_19:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F96E2B0;
        type metadata accessor for ProductPageSection();
        v17 = swift_allocObject();
        *(v17 + 16) = 1;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(inited + 32) = v17;
        v18 = swift_allocObject();
        *(v18 + 16) = 3;
        *(v18 + 24) = 0xD000000000000012;
        *(v18 + 32) = 0x800000024FA3F690;
        *(inited + 40) = v18;
        v19 = swift_allocObject();
        *(v19 + 16) = 3;
        *(v19 + 24) = 0xD000000000000011;
        *(v19 + 32) = 0x800000024FA3F670;
        *(inited + 48) = v19;
        v24 = v15;
        MEMORY[0x28223BE20](v19);
        v23[2] = &v24;
        v20 = sub_24E615B10(sub_24ED5CAAC, v23, inited);

        if (v20)
        {
          return 0;
        }

        goto LABEL_20;
      }

LABEL_29:
      v15 = MEMORY[0x253052270](v3, v2);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_29;
  }

  v13 = MEMORY[0x253052270](a1, v5);

  v14 = *(v13 + 16);
  swift_unknownObjectRelease();
  if (v14 != 3)
  {
    if (v14 != 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

LABEL_6:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v9 = *(result + 24);

  v10 = *(v9 + 16);

  if (v10)
  {
    result = sub_24ED57704(a1);
    if (!result)
    {
      return result;
    }

    v11 = *(result + 40);
    if (v11)
    {
      v12 = *(v11 + 72);

      return v12;
    }
  }

  return 0;
}

uint64_t sub_24ED59574(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

unint64_t sub_24ED5969C(uint64_t a1)
{
  v2 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges;
  v3 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v4 || ((v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct)) != 0 ? (v6 = v5 == a1) : (v6 = 0), !v6))
  {

    return v3;
  }

  v8 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    v10 = -i;
    v11 = 4;
    v24 = v8;
LABEL_11:
    if (v10 + v11 == 4)
    {

      return v3;
    }

    v12 = v11 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v12 < *(v8 + 16))
    {
      v13 = *(v3 + 8 * v11);

      goto LABEL_15;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v13 = MEMORY[0x253052270](v11 - 4, v3);
LABEL_15:
  switch(*(v13 + 16))
  {
    case 2:

      goto LABEL_23;
    default:
      v8 = sub_24F92CE08();

      if ((v8 & 1) == 0)
      {
        ++v11;
        v8 = v24;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_48;
        }

        goto LABEL_11;
      }

LABEL_23:
      v14 = *(v4 + *v2);
      v22 = *v2;
      v23 = v4;
      if (v14 >> 62)
      {
        v15 = sub_24F92C738();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = -v15;
      v16 = 4;
      while (v4 + v16 != 4)
      {
        v17 = v16 - 4;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x253052270](v16 - 4, v14);
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v2 = *(v14 + 8 * v16);
        }

        switch(*(v2 + 16))
        {
          case 2:

            goto LABEL_37;
          default:
            v8 = sub_24F92CE08();

            if (v8)
            {
LABEL_37:

              v18 = *(v23 + v22);
              if ((v18 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x253052270](v16 - 4);
                goto LABEL_40;
              }

              if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v19 = *(v18 + 8 * v16);

LABEL_40:
                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                if (v3 >> 62 || !isUniquelyReferenced_nonNull_bridgeObject)
                {
                  v3 = sub_24ECDE964(v3);

                  v21 = v3 & 0xFFFFFFFFFFFFFF8;
                }

                else
                {

                  v21 = v24;
                }

                if (v12 < *(v21 + 16))
                {
                  *(v21 + 8 * v11) = v19;

                  return v3;
                }

                __break(1u);
              }

              __break(1u);
              JUMPOUT(0x24ED59D24);
            }

            ++v16;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_50;
            }

            break;
        }
      }

      return v3;
  }
}

uint64_t sub_24ED59D9C(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](a1, result);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v3 = *(result + 8 * a1 + 32);

LABEL_5:

    return v3;
  }

  __break(1u);
  return result;
}

double sub_24ED59E20(char *a1)
{
  v2 = *a1;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      return dbl_24F99AEF0[v2];
    }
  }

  v4 = *(v3 + 48);

  if (v4)
  {
  }

  return dbl_24F99AEF0[v2];
}

uint64_t sub_24ED59F04(uint64_t a1)
{
  v2 = sub_24ED570C8();
  if (v2 >> 62)
  {
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = __OFADD__(a1, 1);
  v6 = a1 + 1;
  if (v5)
  {
    __break(1u);
  }

  else if (v6 >= v3)
  {
    return 0;
  }

  else
  {
    result = sub_24ED57704(v6);
    if (result)
    {

      sub_24ED51FD8(v6, &v7);
      return v7 != 36;
    }
  }

  return result;
}

uint64_t sub_24ED59FB4()
{
  v1 = sub_24F91FA78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0xEB0000000073746FLL;
  result = sub_24F92CE08();
  if (result)
  {
    return result;
  }

  v26 = v1;
  v6 = sub_24ED570C8();
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_44:
    v8 = sub_24F92C738();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_19:
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_5:
  v25 = v0;
  v9 = 0;
  v0 = v4;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x253052270](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    if (*(v10 + 16) > 1u)
    {
      break;
    }

    if (*(v10 + 16))
    {
      v4 = 0xE900000000000070;
    }

    else
    {
      v4 = 0xEF74736575716552;
    }

LABEL_16:
    v11 = sub_24F92CE08();

    if (v11)
    {
      goto LABEL_24;
    }

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_19;
    }
  }

  if (*(v10 + 16) == 3)
  {
    v4 = 0xE500000000000000;
    goto LABEL_16;
  }

LABEL_24:

  v13 = v25;
  v14 = v26;
  if (*&v25[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct])
  {
    v15 = *&v25[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct];
  }

  else
  {
    v15 = *&v25[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct];
    if (!v15)
    {
      return result;
    }
  }

  v16 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v17 = *(v15 + v16);

  if (v17 >> 62)
  {
    v7 = sub_24F92C738();
  }

  else
  {
    v7 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= 1)
  {
    v13[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded] = 1;
    v18 = MEMORY[0x277D84F90];
    if (v7 != 1)
    {
      v28 = MEMORY[0x277D84F90];
      sub_24F458948(0, v7 - 1, 0);
      v0 = v27;
      v18 = v28;
      v4 = 1;
      while (1)
      {
        MEMORY[0x253045380](v4, v9);
        v28 = v18;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24F458948(v19 > 1, v20 + 1, 1);
          v0 = v27;
          v18 = v28;
        }

        *(v18 + 16) = v20 + 1;
        (*(v2 + 32))(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v0, v14);
        if (v7 == v4)
        {
          goto LABEL_42;
        }

        if (v7 == ++v4)
        {
          v13 = v25;
          break;
        }
      }
    }

    v21 = &v13[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view];
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    v22 = *(v21 + 1);
    ObjectType = swift_getObjectType();
    (*(v22 + 40))(v18, ObjectType, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24ED5A450()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v1 && *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction))
  {
    v2 = v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      memset(v8, 0, sizeof(v8));
      v5 = *(*(v3 + 16) + 8);
      v6 = *(v5 + 8);

      v6(v7, v8, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_24E601704(v8, &qword_27F2129B0);
    }
  }
}

double sub_24ED5A544@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v3)
  {
    v6 = 0;
    v5 = 0;
    v8 = 0;
LABEL_7:
    v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
      v15 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
      v17 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
      v16 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
      v19 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40);
      v20 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
      v18 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48);
      sub_24E901B80(v14, v15, v17, v16);
      sub_24E901BD0(v6, v5, v8, 0);
      *a1 = v14;
      a1[1] = v15;
      a1[2] = v17;
      a1[3] = v16;
      a1[4] = v20;
      a1[5] = v19;
      a1[6] = v18;
    }

    else
    {
      sub_24E901BD0(v6, v5, v8, 0);
      a1[6] = 0;
      result = 0.0;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
    }

    return result;
  }

  v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
  v8 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
  v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
  v10 = v4[4];
  v9 = v4[5];
  v11 = v4[6];
  if (!v7)
  {
    goto LABEL_7;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = v9;
  a1[6] = v11;

  return result;
}

uint64_t sub_24ED5A6DC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED5A720()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  result = swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    *(v1 + v2) = 1;
    v4 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
    if (sub_24F92CE08())
    {
      goto LABEL_22;
    }

    v5 = sub_24ED570C8();
    v6 = v5;
    if (v5 >> 62)
    {
LABEL_20:
      v7 = sub_24F92C738();
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v4 = (v6 & 0xC000000000000001);
        while (1)
        {
          if (v4)
          {
            v9 = MEMORY[0x253052270](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          if (!*(v9 + 16))
          {
            break;
          }

          v10 = sub_24F92CE08();

          if (v10)
          {
            goto LABEL_16;
          }

          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          ++v8;
          if (v11 == v7)
          {

            v4 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
            goto LABEL_22;
          }
        }

LABEL_16:

        v4 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        v12 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 8);
          ObjectType = swift_getObjectType();
          (*(v13 + 24))(v8, ObjectType, v13);
          swift_unknownObjectRelease();
        }

LABEL_22:
        ProductPresenter.reloadTopLockup()();
        v15 = v1 + v4[209];
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        v16 = *(v15 + 8);
        if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
        {
          v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
        }

        else
        {
          v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
          if (!v17)
          {
            v18 = 0;
            goto LABEL_28;
          }
        }

        v18 = *(v17 + 232);

LABEL_28:
        v19 = swift_getObjectType();
        v20 = sub_24ED58570(1);
        (*(v16 + 56))(v18, v21, v19, v16, v20);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_22;
  }

  return result;
}

void sub_24ED5AA94()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 0;
    if ((sub_24F92CE08() & 1) == 0)
    {
      v12 = v0;
      v2 = sub_24ED570C8();
      v3 = v2;
      if (v2 >> 62)
      {
LABEL_22:
        v4 = sub_24F92C738();
        v0 = v12;
        if (v4)
        {
LABEL_5:
          v5 = 0;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x253052270](v5, v3);
            }

            else
            {
              if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v6 = *(v3 + 8 * v5 + 32);
            }

            if (!*(v6 + 16))
            {
              break;
            }

            v7 = sub_24F92CE08();

            if (v7)
            {
              goto LABEL_16;
            }

            v8 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            ++v5;
            if (v8 == v4)
            {
              goto LABEL_15;
            }
          }

LABEL_16:

          v9 = v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v9 + 8);
            ObjectType = swift_getObjectType();
            (*(v10 + 24))(v5, ObjectType, v10);
            swift_unknownObjectRelease();
          }

          goto LABEL_18;
        }
      }

      else
      {
        v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_5;
        }
      }

LABEL_15:
    }

LABEL_18:
    ProductPresenter.reloadTopLockup()();
  }
}

uint64_t sub_24ED5AD74()
{
  v51 = v0;
  v1 = v0[10].i64[0];
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (!v2)
    {
      v3 = 0;
      v5 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
      v8 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
      v7 = *v8;
      goto LABEL_13;
    }
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  v8 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
  v7 = *v8;

  if (!v4)
  {
LABEL_13:
    if (!v7)
    {
      goto LABEL_55;
    }

    v11 = 0;
    v10 = 1;
    goto LABEL_15;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = v4;
LABEL_15:

    v12 = *v8;
    if (!*v8)
    {
      if (v10)
      {
        goto LABEL_54;
      }

      goto LABEL_35;
    }

    v13 = *v5;
    if (v10)
    {

      v14 = 1;
      goto LABEL_30;
    }

    v4 = v11;
LABEL_24:
    if (v13 == v3 && v12 == v11)
    {
    }

    else
    {
      v16 = sub_24F92CE08();

      if ((v16 & 1) == 0)
      {
        v14 = 0;
LABEL_30:
        v47 = v14;
        v17 = v0[10].i64[0];
        v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
        ObjectType = swift_getObjectType();
        v49 = v13;
        v50 = v12;
        (*(v18 + 56))(&v49, ObjectType, v18);
        v21 = v20;

        v22 = swift_getObjectType();
        (*(v21 + 80))(v17, v22, v21);
        swift_unknownObjectRelease();
        if (v47)
        {
          goto LABEL_54;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_36;
  }

  v9 = v3 == v6 && v7 == v4;
  if (v9 || (sub_24F92CE08() & 1) != 0)
  {
    goto LABEL_55;
  }

  v12 = *v8;
  if (*v8)
  {
    v13 = *v5;
    v11 = v4;
    goto LABEL_24;
  }

  v11 = v4;
LABEL_35:
  v4 = v11;
LABEL_36:
  v0[12].i64[0] = v8;
  v0[12].i64[1] = v4;
  v0[11].i64[0] = v11;
  v0[11].i64[1] = v5;
  v0[10].i64[1] = v3;
  if (*v8)
  {
    if (v3 == *v5 && v11 == *v8)
    {

LABEL_53:

LABEL_54:
      *v5 = v3;
      *v8 = v11;
LABEL_55:

      v38 = v0->i64[1];

      return v38();
    }

    v24 = sub_24F92CE08();

    if (v24)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v25 = *(v0[10].i64[0] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
  v26 = swift_getObjectType();
  v49 = v3;
  v50 = v4;
  v27 = (*(v25 + 56))(&v49, v26, v25);
  v29 = v28;
  v0[13].i64[0] = v27;
  v0[13].i64[1] = v28;
  v30 = swift_getObjectType();
  v0[14].i64[0] = v30;
  (*(v29 + 16))();
  v31 = v0[1].i64[0];
  v32 = v0[4].u64[0];
  v48 = v26;
  if (!(v32 >> 60))
  {
    if (v0[1].i64[0] != 1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v32 >> 60 == 8)
  {
    v34 = v0[2].i64[0];
    v33 = v0[2].i64[1];
    v35 = v0[1].i64[1];
    v36 = v0[3].i64[0] | v0[3].i64[1] | v0[4].i64[1];
    if (v32 != 0x8000000000000000 || v36 | v31 | v33 | v34 | v35)
    {
      if (v32 == 0x8000000000000000 && v31 == 4)
      {
        v37 = v36 | v33 | v34 | v35;
        if (!v37)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_51;
    }

LABEL_59:
    LOBYTE(v37) = 0;
    goto LABEL_61;
  }

LABEL_51:
  sub_24E88D2AC(v0[1].i64);
LABEL_60:
  LOBYTE(v37) = 1;
LABEL_61:
  *(v0[10].i64[0] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = v37;
  v40 = 1;
  (*(v29 + 40))(1, v30, v29);
  v41 = v0[8].u64[0];
  v42 = v41 >> 60;
  if (v41 >> 60 != 2 && v42 != 7)
  {
    if (v42 != 8 || v0[8].i64[1] || v41 != 0x8000000000000000 || v0[5].i64[0] != 1 || (v43 = vorrq_s8(v0[6], v0[7]), *&vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL)) | v0[5].i64[1]))
    {
      v40 = 0;
    }
  }

  v44 = v0[10].i64[0];
  sub_24E88D2AC(v0[5].i64);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = v40;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) = (*(v29 + 24))(v30, v29) & 1;
  v0[9].i64[0] = v3;
  v0[9].i64[1] = v4;
  v46 = (*(v25 + 104) + **(v25 + 104));
  v45 = swift_task_alloc();
  v0[14].i64[1] = v45;
  *v45 = v0;
  v45[1] = sub_24ED5B35C;

  return v46(v0 + 9, v48, v25);
}

uint64_t sub_24ED5B35C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;

  return MEMORY[0x2822009F8](sub_24ED5B45C, 0, 0);
}

uint64_t sub_24ED5B45C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion) = *(v0 + 240);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v8 = *(v2 + 72);

  v8(v4, sub_24ED5ED24, v7, v1, v2);

  swift_unknownObjectRelease();
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  **(v0 + 184) = *(v0 + 168);
  *v9 = v10;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24ED5B5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
    swift_beginAccess();
    if (*(v13 + v14) == 1)
    {
      ObjectType = swift_getObjectType();
      (*(a2 + 16))(v25, ObjectType, a2);
      v16 = v28 >> 60;
      if ((v28 >> 60) - 5 < 2 || v16 == 2 || v16 == 7 || v16 == 8 && !v29 && v28 == 0x8000000000000000 && v25[0] == 1 && (v24 = vorrq_s8(v26, v27), !(*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v25[1])))
      {
        sub_24ED5AA94();
      }

      sub_24E88D2AC(v25);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24ED56528(a1, a2);
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (v18)
    {
    }

    else
    {
      v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = v18[2] == a4 && v18[3] == a5;
    if (v19 || (sub_24F92CE08() & 1) != 0)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24ED4EE5C(v18);
      }
    }
  }

LABEL_21:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24ED568F0(a1, a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = sub_24F92B858();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v21;
    v23[5] = a1;
    v23[6] = a2;
    swift_unknownObjectRetain();
    sub_24EA998B8(0, 0, v11, &unk_24F99AEB0, v23);
  }

  return result;
}

uint64_t sub_24ED5B9CC(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      return 0;
    }

    v3 = a1;

    a1 = v3;
  }

  v4 = *(v2 + *a1);

  return v4;
}

uint64_t sub_24ED5BA90()
{
  v0 = sub_24ED570C8();
  if (v0 >> 62)
  {
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

id sub_24ED5BB24(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24F91F3B8();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_24F91F278();

    swift_willThrow();
    v11 = sub_24F91F4A8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

BOOL sub_24ED5BC70(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF74736575716552;
  v4 = 0x7975426F546B7361;
  v5 = *(a1 + 16);
  v6 = 0x68736E6565726373;
  v7 = 0xEB0000000073746FLL;
  if (v5 != 2)
  {
    v6 = 0x666C656873;
    v7 = 0xE500000000000000;
  }

  v8 = 0x756B636F4C706F74;
  v9 = 0xE900000000000070;
  if (!*(a1 + 16))
  {
    v8 = 0x7975426F546B7361;
    v9 = 0xEF74736575716552;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x68736E6565726373;
  v13 = 0xEB0000000073746FLL;
  if (*(a2 + 16) != 2)
  {
    v12 = 0x666C656873;
    v13 = 0xE500000000000000;
  }

  if (*(a2 + 16))
  {
    v4 = 0x756B636F4C706F74;
    v3 = 0xE900000000000070;
  }

  if (*(a2 + 16) <= 1u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v12;
  }

  if (*(a2 + 16) <= 1u)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_24F92CE08();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    if (*(a1 + 24) == *(a2 + 24) && v19 == v20)
    {
      return 1;
    }

    else
    {
      return sub_24F92CE08() & 1;
    }
  }

  return result;
}

uint64_t sub_24ED5BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
    return sub_24E601704(&v11, &qword_27F2129B0);
  }

  sub_24E60169C(v4 + 144, &v11, &qword_27F2129B0);
  if (!*(&v12 + 1))
  {
    return sub_24E601704(&v11, &qword_27F2129B0);
  }

  sub_24E612B0C(&v11, v13);
  v9 = sub_24ED5BF5C(a1, a2, a3);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      sub_24ED5C240(a1, v13, a2, a3, a4);
    }

    else
    {
      sub_24ED5C668(0, a1, a2, a3, a4);
    }
  }

  else if (v9)
  {
    sub_24ED5C454(a1, v13, a2, a3, a4);
  }

  else
  {
    sub_24ED5C014(a1, v13, a2, a3, a4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_24ED5BF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 121) != 1)
  {
    return 0;
  }

  v5 = Lockup.numberOfPurchasedChildren(using:)(a2, a3);
  if (v6)
  {
    return 3;
  }

  v7 = *(a1 + 304);
  if (!v7)
  {
    return 3;
  }

  if (v7 >> 62)
  {
    v11 = v5;
    v12 = sub_24F92C738();
    v5 = v11;
    v9 = v11 < v12;
    if (v11 == v12)
    {
      return 1;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v5 < v8;
    if (v5 == v8)
    {
      return 1;
    }
  }

  if (!v9 || v5 <= 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_24ED5C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[3] = type metadata accessor for ProductPage();
  v21[4] = &off_2861DE828;
  v21[0] = a1;
  type metadata accessor for JSIntentDispatcher();
  v10 = *(a5 + 16);
  sub_24F928FD8();

  sub_24F92A758();
  sub_24E643A9C(a2, &v20);
  v19[0] = 0xD00000000000001ELL;
  v19[1] = 0x800000024FA48C90;
  sub_24EB45E00(v19, v10, "GameStoreKit/CompleteMyBundleController.swift", 45, 2);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_24E615E00(v21, &v16);
  v12 = swift_allocObject();
  v12[2] = v11;
  sub_24E612C80(&v16, (v12 + 3));
  v12[8] = a3;
  v12[9] = a4;
  swift_allocObject();
  swift_weakInit();
  v13 = sub_24E74EC40();
  swift_unknownObjectRetain();

  v14 = sub_24F92BEF8();
  v17 = v13;
  v18 = MEMORY[0x277D225C0];
  *&v16 = v14;
  sub_24F92A958();

  sub_24E8E6460(v19);
  __swift_destroy_boxed_opaque_existential_1(&v16);

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_24ED5C240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 232) && ((type metadata accessor for OfferConfirmationAction(), (v9 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(), (v9 = swift_dynamicCastClass()) != 0)))
  {
    v10 = v9;
    v11 = *(a1 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 1;

    swift_retain_n();
    sub_24ED5C668(v12, a1, a3, a4, a5);
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A598();

    *(a5 + 40) = 0;
  }
}

uint64_t sub_24ED5C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 232) && ((type metadata accessor for OfferConfirmationAction(), (v9 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(), (v9 = swift_dynamicCastClass()) != 0)))
  {
    v10 = v9;
    v11 = *(a1 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 2;

    swift_retain_n();
    sub_24ED5C668(v12, a1, a3, a4, a5);
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A598();

    *(a5 + 40) = 0;
  }
}

uint64_t sub_24ED5C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[3] = type metadata accessor for ProductPage();
  v26[4] = &off_2861DE828;
  v26[0] = a2;
  *(a5 + 40) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_24E615E00(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221018);
    if (swift_dynamicCast())
    {
      v11 = v10 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = a4;
        v13 = *(v11 + 8);
        swift_getObjectType();
        sub_24EA80068();
        v14 = *(v13 + 16);
        a4 = v12;
        (*(v14 + 32))();

        swift_unknownObjectRelease();
      }

      ProductPresenter.reloadTopLockup()();
    }

    swift_unknownObjectRelease();
  }

  if (a1)
  {
    if (*(a1 + 32) <= 1u)
    {
      v15 = sub_24F92CE08();

      if ((v15 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }

      v16 = *(a2 + 240);
      if (!v16)
      {
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }

LABEL_14:
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      ObjectType = swift_getObjectType();
      v25[0] = v17;
      v25[1] = v18;
      v20 = *(a4 + 56);

      v20(v25, ObjectType, a4);
      v22 = v21;

      v23 = swift_getObjectType();
      v25[0] = 0;
      v25[6] = 0x1000000000000000;
      (*(v22 + 64))(v25, v23, v22);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v26);
    }

    if (*(a1 + 32) == 2)
    {
      swift_bridgeObjectRelease_n();
      v16 = *(a2 + 240);
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_24ED5C928(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_24ED5C964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24ED5AD54(a1, v4, v5, v6);
}

uint64_t sub_24ED5CA18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for ProductPresenter()
{
  result = qword_27F22ED28;
  if (!qword_27F22ED28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ED5CAD8()
{
  result = qword_27F22ED10;
  if (!qword_27F22ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED10);
  }

  return result;
}

unint64_t sub_24ED5CB30()
{
  result = qword_27F22ED18;
  if (!qword_27F22ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED18);
  }

  return result;
}

uint64_t sub_24ED5CB84(uint64_t a1)
{
  result = sub_24ED5EA84(&qword_27F22ED20, type metadata accessor for ProductPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24ED5CBDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ED5CC38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit11ProductDataO(uint64_t a1)
{
  if ((*(a1 + 41) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 41) & 7;
  }
}

uint64_t sub_24ED5CD08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ED5CD44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_24ED5CD90(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_24ED5CE84()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_76Tm_0()
{
  v1 = sub_24F929158();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F928738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  v9 = (v3 + 96) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_24ED5DE6C()
{

  return swift_deallocObject();
}

uint64_t sub_24ED5DEB4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24ED5DEEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED5DF3C(uint64_t a1)
{
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

  return sub_24ED4F120(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24ED5E068()
{

  return swift_deallocObject();
}

uint64_t sub_24ED5E544(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    goto LABEL_21;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    if (!sub_24F92C738())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (v7 >> 62)
  {
    if (!sub_24F92C738())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v8 = *(a1 + v4);
  if (v8 >> 62)
  {
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = *(a2 + v6);
  if (!(v10 >> 62))
  {
    if (v9 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_21:
    v14 = 0;
    return v14 & 1;
  }

  if (v9 != sub_24F92C738())
  {
    goto LABEL_21;
  }

LABEL_10:
  v11 = *(a1 + v4);
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v11 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x253052270](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v13 = *(v11 + 32);
  }

LABEL_25:
  v15 = *(a2 + v6);
  if (v15 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_27;
    }

LABEL_33:
    if (v13)
    {
      goto LABEL_34;
    }

LABEL_40:
    v14 = 1;
    return v14 & 1;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_27:
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x253052270](0, v15);

    if (v13)
    {
LABEL_30:
      if (v16)
      {
        v14 = _s12GameStoreKit12ProductMediaC2eeoiySbAC_ACtFZ_0(v13, v16);

LABEL_39:

        return v14 & 1;
      }

LABEL_34:
      v14 = 0;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);

    if (v13)
    {
      goto LABEL_30;
    }

LABEL_37:
    if (v16)
    {
      v14 = 0;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_24ED5E7D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) = a1;

  v8 = sub_24F92B858();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_24EA998B8(0, 0, v6, &unk_24F99AE98, v9);

  v10 = *(v2 + v7);
  if (v10)
  {
    v11 = type metadata accessor for ProductPage();
    v12 = &off_2861DE828;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v18[1] = 0;
    v18[2] = 0;
  }

  v18[0] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v13 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController;
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
  v15 = *(v13 + 8);

  sub_24E8E49A8(v18, v14, v15);
  return sub_24E601704(v18, &qword_27F221020);
}

uint64_t sub_24ED5E988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24ED5AD54(a1, v4, v5, v6);
}

uint64_t sub_24ED5EA3C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED5EA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED5EACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED5EB2C(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 && *(v2 + 121) == 1)
  {
    v3 = a1;
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (v4 && (v5 = *(v4 + 304)) != 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        v8 = sub_24F92C738();
        v3 = a1;
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v8 = *(v6 + 16);
      }
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }

    v10 = *(v3 + 304);
    v11 = v10 == 0;
    if (v10)
    {
      if (v10 >> 62)
      {
        v22 = *(v3 + 304);
        v23 = v8;
        v21 = v7;
        v19 = sub_24F92C738();
        v7 = v21;
        v12 = v19;
        v10 = v22;
        v8 = v23;
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v8 == v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v7)
    {
      v14 = v11;
    }

    v9 = v14 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v15 && (v16 = *(v15 + 240)) != 0)
  {
    sub_24E60169C(v16 + 144, &v24, &qword_27F2129B0);
    v17 = (*(&v25 + 1) == 0) | v9;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v17 = 1;
  }

  sub_24E601704(&v24, &qword_27F2129B0);
  return v17 & 1;
}

uint64_t objectdestroyTm_36(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_24ED5ED30()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED5ED78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24ED56BF8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_67Tm()
{
  v1 = sub_24F9287F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F929158();
  v6 = *(v5 - 8);
  v7 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24ED5F168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, unint64_t, void, void, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(sub_24F9287F8() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_24F929158() - 8);
  return a5(a1, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v5 + ((v13 + 39) & 0xFFFFFFFFFFFFFFF8)), v5 + ((((v13 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 8) & ~*(v14 + 80)), a2, a3, a4);
}

uint64_t sub_24ED5F2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, void, uint64_t, unint64_t, unint64_t, void, uint64_t, uint64_t))
{
  v7 = *(sub_24F929158() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24F928738() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  return a3(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + 56, v3 + v8, v3 + v11, *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

double ShelfBasedProductPageIntent.init(deserializing:using:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v5 = sub_24F9285B8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  *a3 = 0xD00000000000001BLL;
  a3[1] = 0x800000024F99AF20;
  v59 = a1;
  sub_24F928398();
  sub_24F928268();
  v22 = v18;
  v48 = *(v11 + 8);
  v49 = v10;
  v23 = v11 + 8;
  v48(v22, v10);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_24E601704(v9, &qword_27F228530);
    v24 = sub_24F92AC38();
    sub_24ED60220(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for ShelfBasedProductPageIntent();
    *v26 = 7107189;
    v26[1] = 0xE300000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v48(v59, v49);
  }

  else
  {
    v29 = v50;
    (*(v20 + 32))(v50, v9, v19);
    sub_24F928398();
    v30 = sub_24F928278();
    v31 = v48;
    v32 = v49;
    v44 = v23;
    v48(v15, v49);
    v33 = type metadata accessor for ShelfBasedProductPageIntent();
    v34 = *(v33 + 20);
    v35 = v33;
    v45 = v33;
    v36 = v51;
    (*(v20 + 16))(v51 + v34, v29, v19);
    *(v36 + *(v35 + 24)) = v30 & 1;
    sub_24F928398();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    (*(v52 + 16))(v47, v54, v53);
    sub_24EC55728();
    sub_24F929548();
    (*(v37 + 8))(v39, v38);
    v31(v59, v32);
    (*(v20 + 8))(v50, v19);
    v40 = v57;
    v41 = v58;
    v42 = v51 + *(v45 + 28);
    result = *&v55;
    v43 = v56;
    *v42 = v55;
    *(v42 + 1) = v43;
    *(v42 + 4) = v40;
    v42[40] = v41;
  }

  return result;
}

uint64_t type metadata accessor for ShelfBasedProductPageIntent()
{
  result = qword_27F22ED60;
  if (!qword_27F22ED60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ShelfBasedProductPageIntent.init(url:preloading:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  *a4 = 0xD00000000000001BLL;
  *(a4 + 1) = 0x800000024F99AF20;
  v10 = type metadata accessor for ShelfBasedProductPageIntent();
  v11 = v10[5];
  v12 = sub_24F91F4A8();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(&a4[v11], a1, v12);
  a4[v10[6]] = a2;
  v13 = &a4[v10[7]];
  result = v16;
  *v13 = v16;
  *(v13 + 1) = v15;
  *(v13 + 4) = v8;
  v13[40] = v9;
  return result;
}

uint64_t ShelfBasedProductPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShelfBasedProductPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfBasedProductPageIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void ShelfBasedProductPageIntent.referrerData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfBasedProductPageIntent() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  sub_24EA145F0(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ShelfBasedProductPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ShelfBasedProductPageIntent();
  v8 = isa;
  sub_24F91F398();
  v9 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_24F92C328();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_24EDC3010();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v12 = sub_24F92CDE8();
    sub_24E601704(&v15, &qword_27F251730);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_24F92C328();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24ED60220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED60280(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ED60340(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24ED603E4()
{
  sub_24F91F4A8();
  if (v0 <= 0x3F)
  {
    sub_24ED60480();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ED60480()
{
  if (!qword_27F22ED70)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22ED70);
    }
  }
}

uint64_t PrivacyFooterLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PrivacyFooterLayout.Metrics.actionButtonLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PrivacyFooterLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t PrivacyFooterLayout.Metrics.init(bodyTopSpace:actionButtonLeadingMargin:maxTextWidth:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 112) = 0;
  *(a5 + 96) = 0u;
  *(a5 + 80) = 0u;
  v9 = a5 + 80;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24EA63A70(a3, v9);

  return sub_24E612C80(a4, a5 + 120);
}

uint64_t PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[7];
  *(a4 + 96) = a1[6];
  *(a4 + 112) = v6;
  v7 = a1[9];
  *(a4 + 128) = a1[8];
  *(a4 + 144) = v7;
  v8 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v8;
  v9 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v9;
  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  result = sub_24E612C80(a2, a4 + 160);
  *(a4 + 200) = a3;
  return result;
}

double static PrivacyFooterLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1)
{
  v2 = sub_24F9225E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_24F922618();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v5, *MEMORY[0x277D22788], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, v18);
  v12 = sub_24F9229A8();
  v13 = MEMORY[0x277D228E0];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 120, v18);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t PrivacyFooterLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v8 = v7;
  v9 = *(v4 + 8);
  v34 = v3;
  v35 = v9;
  v9(v6, v3);
  v10 = v1[25];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    v13 = 0.0;
    v14 = a1;
    do
    {
      sub_24E615E00(v12, v38);
      __swift_project_boxed_opaque_existential_1(v38, v39);
      sub_24F922288();
      v16 = v15;
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v38);
      v14 = v14 - v16 - v8;
      if (v13 <= v18)
      {
        v13 = v18;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
    v14 = a1;
  }

  sub_24E930DFC((v1 + 10), v38);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v20 = v19;
    v21 = v34;
    v35(v6, v34);
    __swift_destroy_boxed_opaque_existential_1(v38);
    if (v20 < v14)
    {
      v14 = v20;
    }
  }

  else
  {
    sub_24E930E6C(v38);
    v21 = v34;
  }

  v43 = 0;
  v42 = 0u;
  *&v41[40] = 0u;
  sub_24E615E00((v1 + 20), v38);
  sub_24E615E00(v1, v41);
  v40 = 0;
  v44 = 8;
  sub_24E9D682C(v38, v36);
  v22 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_24E617A24((v23 > 1), v24 + 1, 1, v22);
  }

  sub_24E9D6888(v38);
  *(v22 + 2) = v24 + 1;
  v25 = &v22[136 * v24];
  v26 = v36[4];
  v27 = v36[2];
  v28 = v36[1];
  *(v25 + 5) = v36[3];
  *(v25 + 6) = v26;
  *(v25 + 3) = v28;
  *(v25 + 4) = v27;
  v29 = v36[7];
  v30 = v36[6];
  v31 = v36[5];
  *(v25 + 20) = v37;
  *(v25 + 8) = v30;
  *(v25 + 9) = v29;
  *(v25 + 7) = v31;
  *(v25 + 2) = v36[0];
  LOBYTE(v38[0]) = 0;
  v38[1] = v22;
  _VerticalFlowLayout.measurements(fitting:in:)(v14);

  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  return (v35)(v6, v21);
}

uint64_t PrivacyFooterLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v51 = a1;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v15 = v14;
  v49 = *(v11 + 8);
  v50 = v10;
  v49(v13, v10);
  v63.origin.x = a2;
  v63.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  v63.size.width = a4;
  v63.size.height = a5;
  MaxX = CGRectGetMaxX(v63);
  v17 = v5[25];
  v18 = *(v17 + 16);
  v52.origin.x = a2;
  v52.origin.y = a3;
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_24E615E00(v19, v56);
      __swift_project_boxed_opaque_existential_1(v56, v57);
      width = v52.size.width;
      height = v52.size.height;
      sub_24F922288();
      v53 = v22;
      v24 = MaxX - v23;
      v64.origin.x = v52.origin.x;
      v64.origin.y = v52.origin.y;
      v64.size.width = width;
      v64.size.height = height;
      CGRectGetMinY(v64);
      __swift_project_boxed_opaque_existential_1(v56, v57);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(v56);
      MaxX = v24 - v15;
      v19 += 40;
      --v18;
    }

    while (v18);
  }

  x = v52.origin.x;
  y = v52.origin.y;
  v28 = v52.size.width;
  v27 = v52.size.height;
  CGRectGetMaxX(v52);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = v28;
  v65.size.height = v27;
  CGRectGetWidth(v65);
  sub_24E930DFC((v5 + 10), v56);
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v49(v13, v50);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v28 = v52.size.width;
    v27 = v52.size.height;
  }

  else
  {
    sub_24E930E6C(v56);
  }

  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = v28;
  v66.size.height = v27;
  CGRectGetMinX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = v28;
  v67.size.height = v27;
  CGRectGetMinY(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = v28;
  v68.size.height = v27;
  CGRectGetHeight(v68);
  sub_24F92C1D8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v61 = 0;
  v60 = 0u;
  *&v59[40] = 0u;
  sub_24E615E00((v5 + 20), v56);
  sub_24E615E00(v5, v59);
  v58 = 0;
  v62 = 8;
  sub_24E9D682C(v56, v54);
  v37 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_24E617A24((v38 > 1), v39 + 1, 1, v37);
  }

  sub_24E9D6888(v56);
  *(v37 + 2) = v39 + 1;
  v40 = &v37[136 * v39];
  v41 = v54[4];
  v42 = v54[2];
  v43 = v54[1];
  *(v40 + 5) = v54[3];
  *(v40 + 6) = v41;
  *(v40 + 3) = v43;
  *(v40 + 4) = v42;
  v44 = v54[7];
  v45 = v54[6];
  v46 = v54[5];
  *(v40 + 20) = v55;
  *(v40 + 8) = v45;
  *(v40 + 9) = v44;
  *(v40 + 7) = v46;
  *(v40 + 2) = v54[0];
  LOBYTE(v56[0]) = 0;
  v56[1] = v37;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v51, v30, v32, v34, v36);
}

uint64_t sub_24ED61334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928AD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED61444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928AD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for UpdateCrossUseConsentAction()
{
  result = qword_27F22ED78;
  if (!qword_27F22ED78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED61598()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24ED61624(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED61DA0();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E6BD740(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for UpdateCrossUseConsentAction();
    v8[14] = 1;
    sub_24F92CD38();
    v8[13] = 2;
    sub_24F928AD8();
    sub_24E6BD740(&qword_27F216080, MEMORY[0x277D21C88]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24ED61854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_24F928AD8();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v24 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED88);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v24 - v8;
  updated = type metadata accessor for UpdateCrossUseConsentAction();
  MEMORY[0x28223BE20](updated);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED61DA0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v13 = v12;
  v15 = v28;
  v14 = v29;
  type metadata accessor for Player(0);
  v34 = 0;
  sub_24E6BD740(&qword_27F213E38, type metadata accessor for Player);
  v16 = v30;
  sub_24F92CC18();
  v17 = v16;
  v18 = v13;
  sub_24E6365D4(v17, v13);
  v33 = 1;
  v19 = updated;
  *(v18 + *(updated + 20)) = sub_24F92CC58();
  v32 = 2;
  sub_24E6BD740(&qword_27F254CB0, MEMORY[0x277D21C88]);
  v30 = v5;
  v20 = v14;
  v21 = v31;
  sub_24F92CC68();
  (*(v15 + 8))(v9, v21);
  v22 = v25;
  (*(v26 + 32))(v18 + *(v19 + 24), v30, v20);
  sub_24ED61DF4(v18, v27);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_24ED61E58(v18);
}

uint64_t sub_24ED61C68()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24ED61CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ED61FCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ED61CF8(uint64_t a1)
{
  v2 = sub_24ED61DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED61D34(uint64_t a1)
{
  v2 = sub_24ED61DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ED61DA0()
{
  result = qword_27F22ED90;
  if (!qword_27F22ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED90);
  }

  return result;
}

uint64_t sub_24ED61DF4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateCrossUseConsentAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24ED61E58(uint64_t a1)
{
  updated = type metadata accessor for UpdateCrossUseConsentAction();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_24ED61EC8()
{
  result = qword_27F22EDA0;
  if (!qword_27F22EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDA0);
  }

  return result;
}

unint64_t sub_24ED61F20()
{
  result = qword_27F22EDA8;
  if (!qword_27F22EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDA8);
  }

  return result;
}

unint64_t sub_24ED61F78()
{
  result = qword_27F22EDB0;
  if (!qword_27F22EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDB0);
  }

  return result;
}

uint64_t sub_24ED61FCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x800000024FA5C390 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24ED620F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v0 - 8);
  v49 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v51 = &v46 - v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  memset(v57, 0, sizeof(v57));
  sub_24F928808();
  v17 = sub_24F9285B8();
  v55 = *(v17 - 8);
  (*(v55 + 56))(v9, 1, 1, v17);
  type metadata accessor for GenericPage();
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = sub_24EEF0A68(MEMORY[0x277D84F90]);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v20;
  v21 = (v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v21 = 0;
  v21[1] = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(v57, v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v18 + v19) = 0;

  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v52 = v11;
  v22 = *(v11 + 16);
  v54 = v16;
  v23 = v16;
  v24 = v10;
  v22(v13, v23, v10);
  v53 = v9;
  sub_24E60169C(v9, v6, &qword_27F2218B0);
  *(v18 + 16) = 0;
  v25 = v13;
  v22((v18 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v13, v24);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = 0;
  v26 = v51;
  sub_24E60169C(v6, v51, &qword_27F2218B0);
  v27 = *(v55 + 48);
  v50 = v17;
  if (v27(v26, 1, v17) == 1)
  {
    sub_24E601704(v6, &qword_27F2218B0);
    v28 = *(v52 + 8);
    v28(v25, v24);
    sub_24E601704(v53, &qword_27F2218B0);
    v28(v54, v24);
    sub_24E601704(v57, &qword_27F2129B0);
    v29 = v26;
    v30 = &qword_27F2218B0;
  }

  else
  {
    v31 = v26;
    v47 = v25;
    v48 = v6;
    v32 = v52;
    v33 = v24;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v34, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v35 = v56;
    v36 = v48;
    if (v56)
    {
    }

    v37 = v55 + 8;
    v38 = v31;
    v39 = v50;
    v40 = *(v55 + 8);
    v40(v38, v50);
    if (v35)
    {
      v55 = v37;
      v41 = v49;
      sub_24E60169C(v36, v49, &qword_27F2218B0);
      if (v27(v41, 1, v39) != 1)
      {
        sub_24ECDF110();
        sub_24E601704(v36, &qword_27F2218B0);
        v45 = *(v32 + 8);
        v45(v47, v33);
        sub_24E601704(v53, &qword_27F2218B0);
        v45(v54, v33);
        sub_24E601704(v57, &qword_27F2129B0);
        result = (v40)(v41, v39);
        goto LABEL_12;
      }

      sub_24E601704(v36, &qword_27F2218B0);
      v42 = *(v32 + 8);
      v42(v47, v33);
      sub_24E601704(v53, &qword_27F2218B0);
      v42(v54, v33);
      sub_24E601704(v57, &qword_27F2129B0);
      v29 = v41;
      v30 = &qword_27F2218B0;
    }

    else
    {
      sub_24E601704(v36, &qword_27F2218B0);
      v43 = *(v32 + 8);
      v43(v47, v33);
      sub_24E601704(v53, &qword_27F2218B0);
      v43(v54, v33);
      v30 = &qword_27F2129B0;
      v29 = v57;
    }
  }

  result = sub_24E601704(v29, v30);
LABEL_12:
  qword_27F22EDB8 = v18;
  return result;
}

uint64_t TVPurchasesDetailsPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24ED63C04(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t TVPurchasesDetailsPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24ED63C04(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_24ED628BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_24ED6297C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_24ED62A3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_24ED63968();
}

uint64_t sub_24ED62AF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_24ED63968();
}

uint64_t (*sub_24ED62B60(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ED62BC4;
}

uint64_t sub_24ED62BC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24ED63968();
  }

  return result;
}

uint64_t sub_24ED62BFC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(v4 + 16);
  v7 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = 0;
  do
  {
    v9 = v4 + 32 + 40 * v8;
    v10 = v8;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      sub_24E65864C(v9, v15);
      if (*(*(v2 + v7) + 16))
      {
        break;
      }

LABEL_4:
      ++v10;
      sub_24E6585F8(v15);
      v9 += 40;
      if (v6 == v10)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v11 & 1) == 0)
    {

      goto LABEL_4;
    }

    v12 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v12);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v8 = v10 + 1;
    sub_24F92B638();
    v5 = v16;
  }

  while (v6 - 1 != v10);
LABEL_12:

  if (v5 >> 62)
  {
LABEL_16:
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13;
}

uint64_t sub_24ED62E18(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_24E65864C(v12, v18);
      if (*(*(v4 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_24E6585F8(v18);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v18);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_24E6585F8(v18);
    MEMORY[0x253050F00](v15);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v10 = v13 + 1;
    sub_24F92B638();
    v7 = v19;
    v11 = v6 + 32;
  }

  while (v8 - 1 != v13);
LABEL_12:

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v17 = MEMORY[0x253052270](a1, v7);
LABEL_16:

    return v17;
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v17 = *(v7 + 8 * a1 + 32);

      goto LABEL_16;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ED63054()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED63098(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_24ED63148(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      sub_24E65864C(v12, v18);
      if (*(*(v4 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_24E6585F8(v18);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v18);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_24E6585F8(v18);
    MEMORY[0x253050F00](v15);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v10 = v13 + 1;
    sub_24F92B638();
    v7 = v19;
    v11 = v6 + 32;
  }

  while (v8 - 1 != v13);
LABEL_12:

  if (v7 >> 62)
  {
LABEL_16:
    v16 = sub_24F92C738();
  }

  else
  {
    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v16 > a1;
}

uint64_t sub_24ED6336C()
{
  v1 = v0;
  v2 = sub_24F91FA18();
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v33 = v3;
  v34 = v1;
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (v8)
  {
    v10 = 0;
    v11 = v6 + 32;
    v12 = MEMORY[0x277D84F90];
    v35 = v2;
    while (1)
    {
      v13 = v11 + 40 * v10;
      v2 = v10;
      while (1)
      {
        if (v2 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        sub_24E65864C(v13, v38);
        if (!*(*(v4 + v9) + 16))
        {
          goto LABEL_4;
        }

        sub_24E76D934(v38);
        if (v14)
        {
          break;
        }

LABEL_4:
        ++v2;
        sub_24E6585F8(v38);
        v13 += 40;
        if (v8 == v2)
        {
          v2 = v35;
          goto LABEL_16;
        }
      }

      v15 = sub_24E6585F8(v38);
      MEMORY[0x253050F00](v15);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v10 = v2 + 1;
      sub_24F92B638();
      v12 = v37;
      v11 = v6 + 32;
      v16 = v8 - 1 == v2;
      v2 = v35;
      if (v16)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = v7;
LABEL_16:

  if (v12 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    if (v2 >= i)
    {
      return 0;
    }

    v18 = sub_24F91FA18();
    v2 = *(v34 + v33);
    v19 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v20 = *(v2 + v19);
    v36 = v7;
    v21 = *(v20 + 16);
    v22 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (!v21)
    {
      break;
    }

    v23 = 0;
    v24 = v20 + 32;
    v34 = v21 - 1;
    v7 = MEMORY[0x277D84F90];
LABEL_21:
    v25 = v24 + 40 * v23;
    v26 = v23;
    while (v26 < *(v20 + 16))
    {
      sub_24E65864C(v25, v38);
      if (*(*(v2 + v22) + 16))
      {

        sub_24E76D934(v38);
        if (v27)
        {

          v28 = sub_24E6585F8(v38);
          MEMORY[0x253050F00](v28);
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v23 = v26 + 1;
          sub_24F92B638();
          v7 = v36;
          v24 = v20 + 32;
          if (v34 != v26)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }
      }

      ++v26;
      sub_24E6585F8(v38);
      v25 += 40;
      if (v21 == v26)
      {
        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_32:

  if ((v7 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x253052270](v18, v7);
    goto LABEL_36;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v7 + 8 * v18 + 32);

LABEL_36:

    v31 = *(v30 + 24);

    v32 = *(v31 + 16);

    return sub_24F91FA08() < v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED637DC()
{
  swift_unknownObjectRelease();
}

uint64_t TVPurchasesDetailsPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t TVPurchasesDetailsPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED63968()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  swift_beginAccess();
  if (*v5)
  {
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    swift_unknownObjectRetain();

    v8 = sub_24EC9C404();

    (*(v6 + 32))(v8, ObjectType, v6);

    swift_unknownObjectRelease();
    if (*v5)
    {
      v9 = v5[1];
      v10 = swift_getObjectType();
      v11 = *(v9 + 16);
      v12 = *(v11 + 8);
      swift_unknownObjectRetain();
      v12(v10, v11);
      swift_unknownObjectRelease();
    }
  }

  result = swift_beginAccess();
  v14 = *(v0 + 16);
  if (v14)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v16 = v15;
    (*(v2 + 8))(v4, v1);
    v17 = v14 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v17 = v16;
    *(v17 + 8) = 0;
    v18 = *(v14 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v18 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  return result;
}

uint64_t sub_24ED63C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage) = 0;
  if (qword_27F2106C8 != -1)
  {
    swift_once();
  }

  *(v4 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page) = qword_27F22EDB8;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  return sub_24EC8415C(a1, a2, a3, a4);
}

unint64_t sub_24ED63D04(uint64_t a1)
{
  result = sub_24ED63D2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24ED63D2C()
{
  result = qword_27F22EDC0;
  if (!qword_27F22EDC0)
  {
    type metadata accessor for TVPurchasesDetailsPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDC0);
  }

  return result;
}

uint64_t type metadata accessor for TVPurchasesDetailsPresenter()
{
  result = qword_27F22EDC8;
  if (!qword_27F22EDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED63DD0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_24ED63E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24ED63E94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED63EEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t PageRefreshPolicy.__allocating_init(strategy:updateDelayInterval:shouldSendEventsForPageExit:refreshForDeviceDrivenContentChange:)(uint64_t a1, char a2, char a3, double a4)
{
  v8 = swift_allocObject();
  sub_24E6009C8(a1, v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = a2;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = a3;
  return v8;
}

uint64_t PageRefreshPolicy.init(strategy:updateDelayInterval:shouldSendEventsForPageExit:refreshForDeviceDrivenContentChange:)(uint64_t a1, char a2, char a3, double a4)
{
  sub_24E6009C8(a1, v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = a4;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = a2;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = a3;
  return v4;
}

uint64_t PageRefreshPolicy.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v78 - v4;
  v5 = sub_24F91F648();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9288E8();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v78 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578);
  MEMORY[0x28223BE20](v25 - 8);
  v87 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v78 - v28);
  v96 = a1;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v33 = *(v10 + 8);
  v33(v24, v9);
  v34 = MEMORY[0x277D21C40];
  v95 = v9;
  v91 = v10 + 8;
  v92 = v33;
  if (v32)
  {
    if (v30 == 0xD000000000000011 && 0x800000024FA5C450 == v32 || (sub_24F92CE08() & 1) != 0)
    {

      v35 = 0x800000024FA5C490;
      sub_24F928398();
      v37 = v93;
      v36 = v94;
      v38 = v90;
      (*(v93 + 104))(v90, *v34, v94);
      v39 = sub_24F928228();
      v41 = v40;
      v42 = *(v37 + 8);
      v33 = v92;
      v42(v38, v36);
      v43 = v95;
      v33(v21, v95);
      if (v41)
      {
        v44 = MEMORY[0x277D22530];
        v45 = 0xD000000000000019;
LABEL_7:
        v46 = sub_24F92AC38();
        sub_24E8F2E6C();
        swift_allocError();
        *v47 = v45;
        v47[1] = v35;
        v47[2] = v85;
        (*(*(v46 - 8) + 104))(v47, *v44, v46);
        swift_willThrow();
        v48 = sub_24F9285B8();
        (*(*(v48 - 8) + 8))(v89, v48);
        return (v33)(v96, v43);
      }

      *v29 = v39;
      refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    }

    else
    {
      if (v30 == 0x694C6F54656D6974 && v32 == 0xEA00000000006576)
      {
      }

      else
      {
        v70 = sub_24F92CE08();

        if ((v70 & 1) == 0)
        {
          v44 = MEMORY[0x277D22520];
          v35 = 0xE800000000000000;
          v45 = 0x7967657461727473;
          v43 = v95;
          goto LABEL_7;
        }
      }

      v79 = 0x800000024FA5C470;
      sub_24F928398();
      v71 = v81;
      sub_24F928288();
      v72 = v71;
      v43 = v95;
      v33(v18, v95);
      v73 = v83;
      v74 = v84;
      if ((*(v83 + 48))(v72, 1, v84) == 1)
      {
        sub_24E601704(v72, &unk_27F22EC30);
        v44 = MEMORY[0x277D22530];
        v45 = 0xD000000000000011;
        v35 = v79;
        goto LABEL_7;
      }

      v75 = v43;
      v85 = *(v73 + 32);
      v85(v82, v72, v74);
      v76 = v80;
      sub_24F928398();
      LODWORD(v83) = sub_24F928278();
      v33(v76, v75);
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226580) + 48);
      v85(v29, v82, v74);
      *(v29 + v77) = v83 & 1;
      refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(refreshed - 8) + 56))(v29, 0, 1, refreshed);
    v51 = v96;
    v34 = MEMORY[0x277D21C40];
  }

  else
  {
    v50 = type metadata accessor for PageRefreshPolicy.Strategy(0);
    (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
    v51 = v96;
  }

  sub_24F928398();
  v54 = v93;
  v53 = v94;
  v55 = v90;
  (*(v93 + 104))(v90, *v34, v94);
  v56 = COERCE_DOUBLE(sub_24F928228());
  v58 = v57;
  (*(v54 + 8))(v55, v53);
  v59 = v21;
  v60 = v95;
  v61 = v92;
  v92(v59, v95);
  if (v58)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v56;
  }

  v63 = v86;
  sub_24F928398();
  v64 = sub_24F928278();
  v61(v63, v60);
  v65 = v88;
  sub_24F928398();
  v66 = sub_24F928278();
  v67 = sub_24F9285B8();
  (*(*(v67 - 8) + 8))(v89, v67);
  v61(v51, v60);
  v61(v65, v60);
  v68 = v87;
  sub_24E6009C8(v29, v87, &qword_27F226578);
  type metadata accessor for PageRefreshPolicy(0);
  v69 = swift_allocObject();
  sub_24E6009C8(v68, v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578);
  result = v69;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = v62;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v64 & 1;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v66 & 1;
  return result;
}

uint64_t sub_24ED64D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED64DBC(uint64_t a1)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EDD8);
  MEMORY[0x28223BE20](v10);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578);
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v57 - v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = (v57 - v18);
  MEMORY[0x28223BE20](v20);
  v26 = v57 - v25;
  if (!a1)
  {

    return v1;
  }

  v63 = v21;
  v64 = v24;
  v59 = v23;
  v60 = v22;
  v61 = v9;
  v62 = v6;
  v67 = v4;
  v68 = v3;
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  v28 = *(refreshed - 8);
  (*(v28 + 56))(v26, 1, 1, refreshed);
  v29 = OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy;
  v57[1] = v10;
  v30 = *(v10 + 48);
  sub_24ED64D1C(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v12);
  sub_24ED64D1C(a1 + v29, &v12[v30]);
  v31 = *(v28 + 48);
  if (v31(v12, 1, refreshed) == 1)
  {

    sub_24E601704(v26, &qword_27F226578);
    sub_24ED64D1C(a1 + v29, v26);

    v32 = &v12[v30];
LABEL_4:
    sub_24E601704(v32, &qword_27F226578);
LABEL_12:
    sub_24E601704(v12, &qword_27F226578);
    v38 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
    v39 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit);
    v40 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange);
    type metadata accessor for PageRefreshPolicy(0);
    v1 = swift_allocObject();
    sub_24E6009C8(v26, v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578);
    *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = v38;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v39;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v40;
    return v1;
  }

  v58 = v29;
  v65 = v26;
  v66 = v30;
  v69 = a1;
  sub_24ED64D1C(v12, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v66;
    if (v31(&v12[v66], 1, refreshed) == 1)
    {
      v34 = *(v67 + 8);

      v34(v19, v68);
      v35 = v66;
      goto LABEL_10;
    }

    v42 = v63;
    sub_24ED64D1C(&v12[v33], v63);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v53 = v69;

      v26 = v65;
      sub_24E601704(v65, &qword_27F226578);
      sub_24ED64D1C(v53 + v58, v26);

      (*(v67 + 8))(v19, v68);
      v32 = &v12[v33];
      goto LABEL_4;
    }

    v44 = v67;
    v43 = v68;
    v45 = *(v67 + 32);
    v46 = v61;
    v45(v61, v19, v68);
    v47 = v62;
    v45(v62, v42, v43);
    v48 = v69;

    v49 = sub_24F91F598();
    v50 = *(v44 + 8);
    v50(v47, v43);
    v50(v46, v43);
    sub_24E601704(v65, &qword_27F226578);
    if (v49)
    {
      v51 = v60;
      sub_24ED64D1C(v48 + v58, v60);
    }

    else
    {

      v51 = v60;
      sub_24ED64D1C(v1 + v58, v60);
    }

    v56 = v51;
LABEL_26:
    v26 = v65;
    sub_24E6009C8(v56, v65, &qword_27F226578);
    v32 = &v12[v66];
    goto LABEL_4;
  }

  v36 = *v19;
  v35 = v66;
  v37 = v31(&v12[v66], 1, refreshed);

  if (v37 != 1)
  {
    v26 = v65;
    sub_24E601704(v65, &qword_27F226578);
    v52 = v64;
    sub_24ED64D1C(&v12[v35], v64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24ED64D1C(v69 + v58, v26);

      (*(v67 + 8))(v52, v68);
      v32 = &v12[v35];
      goto LABEL_4;
    }

    v54 = v58;
    if (*v52 >= v36)
    {

      v55 = v59;
      sub_24ED64D1C(v1 + v54, v59);
    }

    else
    {
      v55 = v59;
      sub_24ED64D1C(v69 + v58, v59);
    }

    v56 = v55;
    goto LABEL_26;
  }

LABEL_10:
  if (v31(&v12[v35], 1, refreshed) == 1)
  {

    v26 = v65;
    sub_24E601704(v65, &qword_27F226578);
    sub_24ED64D1C(v1 + v58, v26);
    goto LABEL_12;
  }

  result = sub_24F92CDF8();
  __break(1u);
  return result;
}

uint64_t sub_24ED6555C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  v14 = sub_24F91F648();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v72 = a1;
  v30 = *(a1 + 2);
  if (!v30)
  {
    return 0;
  }

  v68 = v6;
  v69 = &v61 - v27;
  v66 = v29;
  v67 = v1;
  v70 = v28;
  sub_24ED64D1C(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v13);
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  v65 = *(refreshed - 8);
  if ((*(v65 + 48))(v13, 1, refreshed) == 1)
  {
    sub_24E601704(v13, &qword_27F226578);
    return 0;
  }

  v76 = refreshed;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24EA69CC8(v13);
    return 0;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226580);
  v62 = v13[*(v61 + 48)];
  v32 = v69;
  v77 = *(v15 + 32);
  v78 = v15 + 32;
  v77(v69, v13, v14);
  v74 = *(v15 + 16);
  v75 = v15 + 16;
  v74(v26, v32, v14);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_24E616878(0, v30 + 1, 1, v72);
  }

  v35 = *(v72 + 2);
  v34 = *(v72 + 3);
  v63 = v11;
  if (v35 >= v34 >> 1)
  {
    v72 = sub_24E616878(v34 > 1, v35 + 1, 1, v72);
  }

  v36 = v72;
  *(v72 + 2) = v35 + 1;
  v73 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v37 = &v36[v73];
  v38 = *(v64 + 72);
  v77(&v36[v73 + v38 * v35], v26, v14);
  v39 = sub_24F91F638();
  v40 = *(v36 + 2);
  if (v40)
  {
    v41 = MEMORY[0x277D84F90];
    v42 = v77;
    do
    {
      v74(v22, v37, v14);
      v42(v18, v22, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_24E616878(0, v41[2] + 1, 1, v41);
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        v41 = sub_24E616878(v43 > 1, v44 + 1, 1, v41);
      }

      v41[2] = v44 + 1;
      v42 = v77;
      v39 = (v77)(v41 + v73 + v44 * v38, v18, v14);
      v37 += v38;
      --v40;
      v45 = v76;
    }

    while (v40);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
    v45 = v76;
  }

  MEMORY[0x28223BE20](v39);
  v46 = v70;
  *(&v61 - 2) = v70;
  v47 = sub_24ED75E50(sub_24ED65D78, (&v61 - 4), v41);

  v48 = v71;
  sub_24ED78CC4(v47, v71);

  v49 = v64;
  v50 = *(v64 + 8);
  v50(v69, v14);
  v51 = v68;
  sub_24E6009C8(v48, v68, &unk_27F22EC30);
  if ((*(v49 + 48))(v51, 1, v14) == 1)
  {
    sub_24E601704(v51, &unk_27F22EC30);
    v50(v46, v14);
    return 0;
  }

  v53 = v66;
  v54 = v77;
  v77(v66, v51, v14);
  v55 = *(v61 + 48);
  v56 = v63;
  v54(v63, v53, v14);
  *(v56 + v55) = v62;
  swift_storeEnumTagMultiPayload();
  (*(v65 + 56))(v56, 0, 1, v45);
  v57 = *(v67 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
  v58 = *(v67 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit);
  v59 = *(v67 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange);
  type metadata accessor for PageRefreshPolicy(0);
  v60 = swift_allocObject();
  sub_24E6009C8(v56, v60 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578);
  *(v60 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = v57;
  *(v60 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v58;
  *(v60 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v59;
  v50(v46, v14);
  return v60;
}

uint64_t PageRefreshPolicy.__deallocating_deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED65D4C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PageRefreshPolicy.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24ED65DB0()
{
  sub_24ED65EF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24ED65EF4()
{
  if (!qword_27F22EDF0)
  {
    type metadata accessor for PageRefreshPolicy.Strategy(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22EDF0);
    }
  }
}

void sub_24ED65F4C()
{
  sub_24ED65FC0();
  if (v0 <= 0x3F)
  {
    sub_24ED65FF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24ED65FC0()
{
  result = qword_27F22EE08;
  if (!qword_27F22EE08)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27F22EE08);
  }

  return result;
}

void sub_24ED65FF0()
{
  if (!qword_27F22EE10)
  {
    sub_24F91F648();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F22EE10);
    }
  }
}

uint64_t sub_24ED6605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
LABEL_44:
    swift_beginAccess();

    sub_24F92A9C8();
  }

  v3 = 0;
  v39 = a1 + 32;
  while (1)
  {
    v5 = (v39 + 56 * v3);
    v6 = v5[1];
    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = *v5;
    v8 = v5[5];
    v9 = v5[6];
    if (!*(v8 + 16))
    {

LABEL_19:
      v16 = 0;
      goto LABEL_21;
    }

    sub_24F92D068();

    sub_24F92B218();
    v10 = sub_24F92D0B8();
    v11 = -1 << *(v8 + 32);
    v12 = v10 & ~v11;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_19;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = (*(v8 + 48) + 16 * v12);
      v15 = *v14 == v7 && v6 == v14[1];
      if (v15 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v16 = 1;
LABEL_21:
    if (*(v9 + 16))
    {
      sub_24F92D068();

      sub_24F92B218();
      v17 = sub_24F92D0B8();
      v18 = -1 << *(v9 + 32);
      v19 = v17 & ~v18;
      if ((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(v9 + 48) + 16 * v19);
          v22 = *v21 == v7 && v6 == v21[1];
          if (v22 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(a3 + 16);
        *(a3 + 16) = 0x8000000000000000;
        sub_24E81D1F0(1, v7, v6, isUniquelyReferenced_nonNull_native);
        *(a3 + 16) = v41;
        goto LABEL_4;
      }

LABEL_30:
    }

    if (!v16)
    {
      goto LABEL_5;
    }

    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    v26 = sub_24E76D644(v7, v6);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (v23)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_24E8AEFBC();
        if ((v30 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      sub_24E89B4DC(v29, v23);
      v31 = sub_24E76D644(v7, v6);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_47;
      }

      v26 = v31;
      if ((v30 & 1) == 0)
      {
LABEL_36:
        v24[(v26 >> 6) + 8] |= 1 << v26;
        v33 = (v24[6] + 16 * v26);
        *v33 = v7;
        v33[1] = v6;
        *(v24[7] + v26) = 0;
        v34 = v24[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_46;
        }

        v24[2] = v36;

        goto LABEL_41;
      }
    }

    *(v24[7] + v26) = 0;
LABEL_41:
    *(a3 + 16) = v24;
LABEL_4:
    swift_endAccess();
LABEL_5:
    sub_24ED66F88(v7, v6);
LABEL_6:
    if (++v3 == v40)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24ED664BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((sub_24F92A928() & 1) == 0)
  {
    if (a4)
    {
      v5 = a4;
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v6 = sub_24F92AAE8();
      __swift_project_value_buffer(v6, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v9[3] = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
      sub_24F928438();
      sub_24E857CC8(v9);
      sub_24F92A5A8();

      sub_24F92A9A8();
    }

    else
    {

      sub_24F92A9C8();
    }
  }
}

void sub_24ED66748(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F93DE60;
    v11 = a4;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000031, 0x800000024FA5C540);
    v83 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    sub_24F92CA38();
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_24F92D038();

    sub_24F92A9A8();

    return;
  }

  v12 = a6;
  v76 = a7;
  v71 = a8;
  v72 = a5;
  v14 = *(isUniquelyReferenced_nonNull_native + 16);
  v73 = isUniquelyReferenced_nonNull_native;
  v74 = a3;
  v79 = a6;
  if (!v14)
  {
    v17 = MEMORY[0x277D84F90];
    v26 = *(a6 + 16);
    if (!v26)
    {
      goto LABEL_29;
    }

LABEL_19:
    v27 = (v12 + 40);
    v28 = v73;
    do
    {
      v29 = v17;
      v31 = *(v27 - 1);
      v30 = *v27;
      v81 = v31;
      v82 = v30;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v70 = &v81;

      if (sub_24E6159B8(sub_24E7FAFB0, v69, v28))
      {

        v17 = v29;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v17 = v29;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = sub_24E615CF4(0, *(v29 + 16) + 1, 1, v29);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        v33 = *(v17 + 16);
        v32 = *(v17 + 24);
        if (v33 >= v32 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_24E615CF4((v32 > 1), v33 + 1, 1, v17);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        *(v17 + 16) = v33 + 1;
        v34 = v17 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v30;
      }

      v27 += 2;
      --v26;
    }

    while (v26);
LABEL_29:
    v78 = *(v17 + 16);
    if (!v78)
    {
      v75 = MEMORY[0x277D84F90];
LABEL_62:

      v59 = v75;
      v83 = v75;
      v60 = v73;
      if (a9)
      {
        v61 = v71;
        v81 = v71;
        v82 = a9;
        MEMORY[0x28223BE20](v58);
        v70 = &v81;

        v62 = sub_24E6159B8(sub_24E7FAFB0, v69, v79);
        if (v62 & 1) != 0 || (v81 = v61, v82 = a9, MEMORY[0x28223BE20](v62), v70 = &v81, (sub_24E6159B8(sub_24E7FAFB0, v69, v60)))
        {
          v63 = *(v59 + 2);
          if (v63)
          {
            v64 = 0;
            v65 = v59 + 40;
            while (1)
            {
              v66 = *(v65 - 1) == v61 && *v65 == a9;
              if (v66 || (sub_24F92CE08() & 1) != 0)
              {
                break;
              }

              ++v64;
              v65 += 2;
              if (v63 == v64)
              {
                goto LABEL_76;
              }
            }

            sub_24EA0E6F4(v64);

            v59 = v83;
          }

LABEL_76:
          v67 = *(v59 + 2);
          v68 = swift_isUniquelyReferenced_nonNull_native();
          if (!v68 || v67 >= *(v59 + 3) >> 1)
          {
            v59 = sub_24E615CF4(v68, v67 + 1, 1, v59);
            v83 = v59;
          }

          sub_24EDAB2A8(0, 0, 1, v61, a9);
        }
      }

      v81 = v59;
      sub_24F92A9C8();

      return;
    }

    v35 = 0;
    v77 = v17 + 32;
    v36 = a2 + 56;
    v37 = v74;
    v38 = v74 + 56;
    v75 = MEMORY[0x277D84F90];
    v80 = v17;
    while (1)
    {
      if (v35 >= *(v17 + 16))
      {
        goto LABEL_84;
      }

      v39 = (v77 + 16 * v35);
      v41 = *v39;
      v40 = v39[1];
      ++v35;
      if (*(a2 + 16))
      {
        sub_24F92D068();

        sub_24F92B218();
        v42 = sub_24F92D0B8();
        v43 = -1 << *(a2 + 32);
        v44 = v42 & ~v43;
        if ((*(v36 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
        {
          v45 = ~v43;
          do
          {
            v46 = (*(a2 + 48) + 16 * v44);
            if (*v46 == v41 && v46[1] == v40)
            {
              goto LABEL_32;
            }

            v42 = sub_24F92CE08();
            if (v42)
            {
              goto LABEL_32;
            }

            v44 = (v44 + 1) & v45;
          }

          while (((*(v36 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
        }
      }

      else
      {
      }

      if (*(v37 + 16))
      {
        sub_24F92D068();
        sub_24F92B218();
        v42 = sub_24F92D0B8();
        v48 = -1 << *(v37 + 32);
        v49 = v42 & ~v48;
        if ((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          break;
        }
      }

LABEL_31:
      v81 = v41;
      v82 = v40;
      MEMORY[0x28223BE20](v42);
      v70 = &v81;
      if (sub_24E6159B8(sub_24E7FAFB0, v69, v76))
      {
LABEL_55:
        v53 = v75;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v53;
        if ((v54 & 1) == 0)
        {
          sub_24F4578E0(0, *(v53 + 2) + 1, 1);
          v53 = v83;
        }

        v17 = v80;
        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        if (v56 >= v55 >> 1)
        {
          sub_24F4578E0((v55 > 1), v56 + 1, 1);
          v17 = v80;
          v53 = v83;
        }

        *(v53 + 2) = v56 + 1;
        v75 = v53;
        v57 = &v53[16 * v56];
        *(v57 + 4) = v41;
        *(v57 + 5) = v40;
        v37 = v74;
        if (v35 == v78)
        {
          goto LABEL_62;
        }
      }

      else
      {
LABEL_32:

        v17 = v80;
        if (v35 == v78)
        {
          goto LABEL_62;
        }
      }
    }

    v50 = ~v48;
    while (1)
    {
      v51 = (*(v37 + 48) + 16 * v49);
      if (*v51 == v41 && v51[1] == v40)
      {
        goto LABEL_55;
      }

      v42 = sub_24F92CE08();
      if (v42)
      {
        goto LABEL_55;
      }

      v49 = (v49 + 1) & v50;
      if (((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  v15 = 0;
  v16 = isUniquelyReferenced_nonNull_native + 40;
  v17 = MEMORY[0x277D84F90];
  v78 = isUniquelyReferenced_nonNull_native + 40;
LABEL_5:
  v80 = v17;
  v18 = (v16 + 16 * v15);
  v19 = v15;
  while (v19 < v14)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_83;
    }

    v21 = *(v18 - 1);
    v20 = *v18;
    v81 = v21;
    v82 = v20;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v70 = &v81;

    v12 = v79;
    if (sub_24E6159B8(sub_24E7FA94C, v69, v79))
    {
      v22 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v22;
      v83 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_24F4578E0(0, *(v22 + 16) + 1, 1);
        v12 = v79;
        v17 = v83;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_24F4578E0((v23 > 1), v24 + 1, 1);
        v12 = v79;
        v17 = v83;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v20;
      v16 = v78;
      if (v15 == v14)
      {
LABEL_16:
        v26 = *(v12 + 16);
        if (!v26)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      goto LABEL_5;
    }

    ++v19;
    v18 += 2;
    if (v15 == v14)
    {
      v17 = v80;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t sub_24ED66F88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t AskToBuy.init(promptString:isException:isInAppPurchase:approveClosure:declineClosure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t AskToBuy.promptString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AskToBuy.approveClosure.getter()
{
  v1 = *(v0 + 24);

  return v1;
}