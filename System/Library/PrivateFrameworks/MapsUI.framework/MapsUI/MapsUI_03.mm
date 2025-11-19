void sub_1C5660288(void *a1, id a2, void *a3)
{
  v41 = v3[1];
  v42 = *v3;
  if ([a2 supportsHours] && (WatchPlaceHoursViewModel.init(mapItem:)(a1, &v43), (v7 = *(&v43 + 1)) != 0))
  {
    v40 = a3;
    v8 = v43;
    v9 = v44;
    v10 = v45;
    v11 = sub_1C565F000(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1C565F000((v12 > 1), v13 + 1, 1, v11);
    }

    *(&v44 + 1) = &type metadata for WatchPlaceHoursViewModel;
    v45 = &protocol witness table for WatchPlaceHoursViewModel;
    v14 = swift_allocObject();
    *&v43 = v14;
    *(v14 + 16) = v8;
    *(v14 + 24) = v7;
    *(v14 + 32) = v9;
    *(v14 + 48) = v10;
    v11[2] = v13 + 1;
    sub_1C5632F90(&v43, &v11[5 * v13 + 4]);
    a3 = v40;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  static WatchPlaceRatingRowViewModel.overallRatingViewModel(for:mapItem:)(a2, a1, &v43);
  v15 = BYTE8(v44);
  if (BYTE8(v44) != 255)
  {
    v16 = v43;
    v17 = v44;
    v18 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
    }

    v20 = v11[2];
    v19 = v11[3];
    if (v20 >= v19 >> 1)
    {
      v11 = sub_1C565F000((v19 > 1), v20 + 1, 1, v11);
    }

    *(&v44 + 1) = &type metadata for WatchPlaceRatingRowViewModel;
    v45 = &protocol witness table for WatchPlaceRatingRowViewModel;
    v21 = swift_allocObject();
    *&v43 = v21;
    *(v21 + 16) = v16;
    *(v21 + 32) = v17;
    *(v21 + 40) = v15 & 1;
    *(v21 + 48) = v18;
    v11[2] = v20 + 1;
    sub_1C5632F90(&v43, &v11[5 * v20 + 4]);
  }

  v22 = sub_1C565E704(a1);
  if (v22)
  {
    v23 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
    }

    v25 = v11[2];
    v24 = v11[3];
    if (v25 >= v24 >> 1)
    {
      v11 = sub_1C565F000((v24 > 1), v25 + 1, 1, v11);
    }

    *(&v44 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel();
    v45 = &protocol witness table for WatchPlaceRibbonItemViewModel;
    *&v43 = v23;
    v11[2] = v25 + 1;
    sub_1C5632F90(&v43, &v11[5 * v25 + 4]);
  }

  v43 = v42;
  v44 = v41;
  v26 = sub_1C565F574(a3, a1);
  if (v26)
  {
    v27 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
    }

    v29 = v11[2];
    v28 = v11[3];
    if (v29 >= v28 >> 1)
    {
      v11 = sub_1C565F000((v28 > 1), v29 + 1, 1, v11);
    }

    *(&v44 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel();
    v45 = &protocol witness table for WatchPlaceRibbonItemViewModel;
    *&v43 = v27;
    v11[2] = v29 + 1;
    sub_1C5632F90(&v43, &v11[5 * v29 + 4]);
  }

  v30 = [a1 _encyclopedicInfo];
  if (v30)
  {
    v31 = [v30 factoids];
    if (!v31)
    {
      swift_unknownObjectRelease();
      return;
    }

    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E1F0, &unk_1C5869750);
    v33 = sub_1C584F770();

    if (v33 >> 62)
    {
      v34 = sub_1C584FB90();
      if (v34)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
LABEL_29:
        if (v34 < 1)
        {
          __break(1u);
          return;
        }

        v35 = 0;
        do
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C694A320](v35, v33);
          }

          else
          {
            v36 = *(v33 + 8 * v35 + 32);
            swift_unknownObjectRetain();
          }

          swift_getObjectType();
          v37 = GEOFactoid.makeRibbonViewModel()();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
          }

          v39 = v11[2];
          v38 = v11[3];
          if (v39 >= v38 >> 1)
          {
            v11 = sub_1C565F000((v38 > 1), v39 + 1, 1, v11);
          }

          ++v35;
          swift_unknownObjectRelease();
          *(&v44 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel();
          v45 = &protocol witness table for WatchPlaceRibbonItemViewModel;
          *&v43 = v37;
          v11[2] = v39 + 1;
          sub_1C5632F90(&v43, &v11[5 * v39 + 4]);
        }

        while (v34 != v35);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C56607A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C56607F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1C56608F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1C5660908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

id EdgeLayout.__allocating_init(item:container:insets:edges:priority:)(void *a1, double a2, double a3, double a4, double a5, float a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E200, &qword_1C5869760);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v20[2] = a2;
  *&v20[3] = a3;
  *&v20[4] = a4;
  *&v20[5] = a5;
  v20[6] = a8;
  v21 = a6;
  *&v16[OBJC_IVAR___MUEdgeLayoutInternal_builder] = sub_1C562370C(v20);

  v18 = sub_1C562389C(v17, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v18;
}

id EdgeLayout.init(item:container:insets:edges:priority:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, float a8)
{
  v8 = sub_1C56233C8(a1, a4, a5, a6, a7, a8, a2, a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

id EdgeLayout.init(item:container:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 initWithItem:a1 container:a2 insets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

id EdgeLayout.__allocating_init(item:container:insets:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  LODWORD(v14) = 1148846080;
  v15 = [v13 initWithItem:a1 container:a2 insets:15 edges:a3 priority:{a4, a5, a6, v14}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

id EdgeLayout.init(item:container:insets:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  LODWORD(a7) = 1148846080;
  v8 = [v7 initWithItem:a1 container:a2 insets:15 edges:a3 priority:{a4, a5, a6, a7}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1C5660C58()
{
  v1 = *(v0 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5623F2C(v4);
  return Strong;
}

uint64_t sub_1C5660D40(id a1)
{
  if (a1)
  {
    [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v2 = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v6);
  swift_unknownObjectWeakAssign();
  sub_1C5623B08(v6, v5);
  sub_1C5623B40(v5, v3);
  swift_unknownObjectRelease();
  return sub_1C5623F2C(v6);
}

uint64_t sub_1C5660DC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5660E1C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C5660E80(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5623F2C(v4);
  *(v4 + 128) = Strong;
  return sub_1C5660F1C;
}

void sub_1C5660F1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*a1 + 128);
      [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    v5 = v2[17];
    sub_1C5623A68(v2);
    v6 = swift_unknownObjectWeakAssign();
    sub_1C5623B08(v6, (v2 + 8));
    sub_1C5623B40((v2 + 8), v7);
    swift_unknownObjectRelease();
    sub_1C5623F2C(v2);
    v8 = v2[16];
    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      [*(*a1 + 128) _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    v9 = v2[17];
    sub_1C5623A68(v2);
    v10 = swift_unknownObjectWeakAssign();
    sub_1C5623B08(v10, (v2 + 8));
    sub_1C5623B40((v2 + 8), v11);
    swift_unknownObjectRelease();
    sub_1C5623F2C(v2);
  }

  free(v2);
}

uint64_t sub_1C5661084()
{
  v1 = *(v0 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5623F2C(v4);
  return Strong;
}

uint64_t sub_1C5661174()
{
  v1 = *(v0 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v5);
  swift_unknownObjectWeakAssign();
  sub_1C5623B08(v5, v4);
  sub_1C5623B40(v4, v2);
  swift_unknownObjectRelease();
  return sub_1C5623F2C(v5);
}

uint64_t sub_1C56611EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5661248(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C56612AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5623F2C(v4);
  *(v4 + 128) = Strong;
  return sub_1C5661348;
}

void sub_1C5661348(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 136);
  if (a2)
  {
    v5 = *(*a1 + 128);
    swift_unknownObjectRetain();
    sub_1C5623A68(v2);
    swift_unknownObjectWeakAssign();
    sub_1C5623B08(v2, (v2 + 8));
    sub_1C5623B40((v2 + 8), v6);
    swift_unknownObjectRelease();
    sub_1C5623F2C(v2);
    v7 = v2[16];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5623A68(*a1);
    swift_unknownObjectWeakAssign();
    sub_1C5623B08(v2, (v2 + 8));
    sub_1C5623B40((v2 + 8), v8);
    swift_unknownObjectRelease();
    sub_1C5623F2C(v2);
  }

  free(v2);
}

double sub_1C566148C()
{
  v1 = *(v0 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = *&v4[2];
  sub_1C5623F2C(v4);
  return v2;
}

uint64_t sub_1C566158C(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v13);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_1C5623B08(v13, v12);
  sub_1C5623B40(v12, v10);
  return sub_1C5623F2C(v13);
}

void sub_1C5661608(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1C56616C4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = v4[1];
  v7 = v4[2];
  sub_1C5623F2C(v4);
  v4[8] = v6;
  v4[9] = v7;
  return sub_1C5661768;
}

void sub_1C5661768(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  v4 = *(*a1 + 144);
  v5 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  v1[1] = v5;
  v1[2] = v4;
  sub_1C5623B08(v1, (v1 + 4));
  sub_1C5623B40((v1 + 4), v3);
  sub_1C5623F2C(v1);

  free(v1);
}

uint64_t sub_1C5661830()
{
  v1 = *(v0 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = v4[6];
  sub_1C5623F2C(v4);
  return v2;
}

uint64_t sub_1C56618F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

void (*sub_1C56619AC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 48);
  sub_1C5623F2C(v4);
  *(v4 + 128) = v5;
  return sub_1C5661A40;
}

void sub_1C5661A40(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 128);
  v2 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  v1[6] = v3;
  sub_1C5623B08(v1, (v1 + 8));
  sub_1C5623B40((v1 + 8), v4);
  sub_1C5623F2C(v1);

  free(v1);
}

float sub_1C5661B04()
{
  v1 = *(v0 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = *&v4[14];
  sub_1C5623F2C(v4);
  return v2;
}

uint64_t sub_1C5661BD4(float a1)
{
  v3 = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = a1;
  sub_1C5623B08(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5623F2C(v7);
}

void (*sub_1C5661CEC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 56);
  sub_1C5623F2C(v4);
  *(v4 + 60) = v5;
  return sub_1C5661D88;
}

void sub_1C5661D88(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 60);
  v3 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  v1[14] = v2;
  sub_1C5623B08(v1, (v1 + 16));
  sub_1C5623B40((v1 + 16), v4);
  sub_1C5623F2C(v1);

  free(v1);
}

uint64_t sub_1C5661DF4()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C584F5F0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5662470(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  sub_1C584F5F0();
  *&v2 = *(v0 + 48);
  type metadata accessor for NSDirectionalRectEdge(0);
  sub_1C5662470(&qword_1EC16E220, type metadata accessor for NSDirectionalRectEdge);
  sub_1C584F5F0();
  *(v0 + 56);
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5661F44()
{
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C584F5F0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5662470(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  sub_1C584F5F0();
  *&v2 = *(v0 + 48);
  type metadata accessor for NSDirectionalRectEdge(0);
  sub_1C5662470(&qword_1EC16E220, type metadata accessor for NSDirectionalRectEdge);
  sub_1C584F5F0();
  *(v0 + 56);
  return sub_1C584FED0();
}

uint64_t sub_1C5662088()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C584F5F0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5662470(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  sub_1C584F5F0();
  *&v2 = *(v0 + 48);
  type metadata accessor for NSDirectionalRectEdge(0);
  sub_1C5662470(&qword_1EC16E220, type metadata accessor for NSDirectionalRectEdge);
  sub_1C584F5F0();
  *(v0 + 56);
  sub_1C584FED0();
  return sub_1C584FEF0();
}

id EdgeLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EdgeLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1C5662294(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1C56622C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C56622F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C56623C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C5662938(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1C5662408()
{
  result = qword_1ED77E8B0;
  if (!qword_1ED77E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8B0);
  }

  return result;
}

uint64_t sub_1C5662470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C56627BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 60))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C56627DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 60) = v3;
  return result;
}

uint64_t sub_1C5662938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void *GEOFactoid.makeRibbonViewModel()()
{
  v1 = v0;
  v2 = sub_1C584ECE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E250, &qword_1C5869AE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v33 - v11;
  if ([v0 shouldUseStructuredData])
  {
    type metadata accessor for PlaceFactoidMeasurementFormatter();
    v13 = [v0 unitType];
    [v0 value];
    v15 = v14;
    sub_1C5662C28(v12);
    sub_1C584EC20();
    v16 = static PlaceFactoidMeasurementFormatter.format(factoidUnitType:value:formatStyleConfig:locale:)(v13, v12, v7, v15);
    v18 = v17;
    (*(v3 + 8))(v7, v2);
    sub_1C56632D0(v12);
  }

  else
  {
    v19 = [v0 unstructuredValue];
    v16 = sub_1C584F660();
    v18 = v20;
  }

  v21 = [v1 title];
  v22 = sub_1C584F660();
  v24 = v23;

  v25 = [v1 symbolName];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1C584F660();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  type metadata accessor for WatchPlaceRibbonItemViewModel();
  v30 = sub_1C5662F2C();
  v33 = sub_1C56630DC();
  v34 = v31;
  MEMORY[0x1C6949D90](0x64696F74636146, 0xE700000000000000);
  return WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:text:axIDPrefix:)(v22, v24, v27, v29, v30, v16, v18, v33, v34);
}

uint64_t sub_1C5662C28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E258, &unk_1C5869AF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E260, &unk_1C586A900);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v25 - v12;
  if (([v2 semantic] == 3 || objc_msgSend(v2, sel_semantic) == 4) && objc_msgSend(v2, sel_unitType) == 4 && (objc_msgSend(v2, sel_value), v15 = v14, GEOConfigGetDouble(), v15 <= v16))
  {
    v25 = xmmword_1C58679A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAC8, &unk_1C5867AD0);
    sub_1C5663338();
    sub_1C584E9D0();
    v20 = sub_1C584E9E0();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
    v21 = *MEMORY[0x1E69E7038];
    v22 = sub_1C584FDA0();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v8, v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);
    sub_1C5683BA0(v13, v8, a1);
    v24 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig();
    return (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
  }

  else
  {
    v17 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

id sub_1C5662F2C()
{
  v1 = v0;
  v2 = sub_1C584F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 color];
  if (result)
  {
    v9 = result;
    v10 = [result systemColor];
    if (v10 > 2)
    {
      if (v10 == 3 || v10 == 4)
      {
        (*(v3 + 104))(v7, *MEMORY[0x1E69814D8], v2);
        v11 = sub_1C584F550();
        goto LABEL_13;
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v11 = sub_1C584F530();
        goto LABEL_13;
      }

      if (v10 == 2)
      {
        v11 = sub_1C584F540();
LABEL_13:
        v12 = v11;

        return v12;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C56630DC()
{
  v1 = 0x6E776F6E6B6E55;
  if (![v0 semantic])
  {
    v3 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_18;
  }

  v2 = [v0 semantic];
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v4 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E55;
        goto LABEL_18;
      case 1:
        v4 = 0x80000001C5892AD0;
        v5 = 5;
        goto LABEL_16;
      case 2:
        v3 = 0xD000000000000010;
        v4 = 0x80000001C5892AB0;
        goto LABEL_18;
    }

LABEL_14:
    v4 = 0x80000001C5892A70;
    v5 = 9;
LABEL_16:
    v3 = v5 | 0xD000000000000010;
    goto LABEL_18;
  }

  if (v2 == 3)
  {
    v4 = 0x80000001C5892A90;
    v3 = 0xD000000000000012;
    goto LABEL_18;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      v4 = 0xE90000000000006ELL;
      v3 = 0x6F69746176656C45;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v4 = 0xEC0000006874676ELL;
  v3 = 0x654C676E696B6948;
LABEL_18:
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0x776F7F6F6F5FLL;
  }

  if (v6)
  {
    return v3;
  }

  v7 = [v0 symbolName];
  if (v7)
  {
    v8 = v7;
    sub_1C584F660();

    sub_1C566339C();
    v1 = sub_1C584FB00();
  }

  return v1;
}

uint64_t sub_1C56632D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E250, &qword_1C5869AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5663338()
{
  result = qword_1EC16DAD0;
  if (!qword_1EC16DAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16DAC8, &unk_1C5867AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DAD0);
  }

  return result;
}

unint64_t sub_1C566339C()
{
  result = qword_1EC16D0D8;
  if (!qword_1EC16D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D0D8);
  }

  return result;
}

id sub_1C5663458(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + *a3);
  sub_1C5626E40(0, a4, a5);

  v6 = sub_1C584F750();

  return v6;
}

id sub_1C56634D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_aggregatedInfo] = a1;
  *&v7[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_plugs] = a2;
  *&v7[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id MUEVChargerAvailability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUEVChargerAvailability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MUEVChargerAvailabilityProvider.availability.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t MUEVChargerAvailabilityProvider.isActive.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void MUEVChargerAvailabilityProvider.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availabilityRefresher);
  EVChargerAvailabilityDownloader.isActive.setter(a1);
}

uint64_t sub_1C56639AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1C5663A04(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = *(v3 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availabilityRefresher);
  EVChargerAvailabilityDownloader.isActive.setter(v2);
}

void (*MUEVChargerAvailabilityProvider.isActive.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C5663AF4;
}

void sub_1C5663AF4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availabilityRefresher);
    EVChargerAvailabilityDownloader.isActive.setter(*(v4 + v3[4]));
  }

  free(v3);
}

char *MUEVChargerAvailabilityProvider.init(placeItem:canAccessVirtualGarage:)(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive] = 0;
  v7 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarage;
  *&v2[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarage] = 0;
  v8 = [a1 mapItem];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v8 _identifier];

  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = [a1 mapItem];
  if (!v11 || (v12 = v11, v13 = [v11 _geoMapItem], v12, !v13))
  {
    swift_unknownObjectRelease();

LABEL_22:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = [v13 _evCharger];
  swift_unknownObjectRelease();
  if (!v14)
  {

LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v15 = [v14 aggregatedAvailabilityInfo];
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v14 plugs];
  sub_1C5626E40(0, &qword_1EC16E2A0, 0x1E69A1D68);
  v18 = sub_1C584F770();

  if (v18 >> 62)
  {
    v19 = sub_1C584FB90();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {

    goto LABEL_21;
  }

  *&v3[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger] = v14;
  v20 = v14;
  v21 = sub_1C5664B10(v20, v16, 0);
  v22 = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability] = v21;
  if (a2)
  {
    v22 = [objc_opt_self() sharedService];
  }

  *&v3[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarageService] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:2];
  *&v3[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_observers] = v23;
  type metadata accessor for EVChargerAvailabilityDownloader();
  v24 = v10;
  *&v3[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availabilityRefresher] = EVChargerAvailabilityDownloader.__allocating_init(mapItemIdentifier:)(v24);
  v36.receiver = v3;
  v36.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v36, sel_init);
  v26 = *&v25[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availabilityRefresher];
  swift_beginAccess();
  v27 = v25;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v28 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarageService;
    v29 = *&v25[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarageService];
    if (v29)
    {
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1C5664D80;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C5664664;
      aBlock[3] = &block_descriptor_3;
      v31 = _Block_copy(aBlock);

      [v29 virtualGarageGetGarageWithReply_];
      _Block_release(v31);
      v32 = *&v27[v28];
      if (v32)
      {
        v33 = v32;
        [v33 registerObserver_];
      }
    }
  }

  swift_unknownObjectRelease();

  return v27;
}

id MUEVChargerAvailabilityProvider.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarageService];
  if (v2)
  {
    [v2 unregisterObserver_];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1C56641C0()
{
  v1 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger;
  v2 = [*(v0 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger) aggregatedAvailabilityInfo];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + v1);
    v5 = *(v0 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarage);
    v6 = v5;
    v7 = v4;
    v8 = sub_1C5664B10(v7, v3, v5);

    v9 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
    swift_beginAccess();
    v10 = *(v0 + v9);
    *(v0 + v9) = v8;

    v11 = [*(v0 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E328, &qword_1C5869B78);
    v12 = sub_1C584F770();

    if (v12 >> 62)
    {
      v13 = sub_1C584FB90();
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_4:
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v13; ++i)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1C694A320](i, v12);
          }

          else
          {
            v15 = *(v12 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v15 evChargerAvailabilityProvider:v0 didUpdateAvailability:*(v0 + v9)];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_1C566437C(void *a1)
{
  v2 = sub_1C584F570();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C584F5B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v16 = sub_1C584F9F0();
    v22 = v8;
    v17 = v16;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a1;
    aBlock[4] = sub_1C5664F28;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_20;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_1C584F590();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C5664DE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
    sub_1C5664E38();
    sub_1C584FB50();
    MEMORY[0x1C694A0B0](0, v13, v7, v20);
    _Block_release(v20);

    (*(v3 + 8))(v7, v2);
    return (*(v9 + 8))(v13, v22);
  }

  return result;
}

void sub_1C5664664(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void MUEVChargerAvailabilityProvider.didDownloadEVChargerAvailability(evCharger:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger);
  *(v1 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger) = a1;
  v3 = a1;

  sub_1C56641C0();
}

uint64_t MUEVChargerAvailabilityProvider.virtualGarageDidUpdate(_:)(void *a1)
{
  v3 = sub_1C584F570();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C584F5B0();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v21, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
  v14 = sub_1C584F9F0();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1C5664DA0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C56444F8;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  v18 = a1;

  sub_1C584F590();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5664DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
  sub_1C5664E38();
  sub_1C584FB50();
  MEMORY[0x1C694A0B0](0, v13, v8, v16);
  _Block_release(v16);

  (*(v4 + 8))(v8, v3);
  return (*(v9 + 8))(v13, v21);
}

uint64_t sub_1C5664B10(void *a1, id a2, void *a3)
{
  if (!a3)
  {
LABEL_7:
    result = [a2 availableEVChargers];
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v12 = result;
      result = [a2 totalEVChargers];
      if ((result & 0x8000000000000000) == 0)
      {
        v10 = [objc_allocWithZone(MURealTimeEVCharger) initWithAvailable:v12 total:result status:{objc_msgSend(a2, sel__realTimePlugAvailabilityStatus)}];
        goto LABEL_10;
      }
    }

    __break(1u);
    return result;
  }

  v6 = a3;
  v7 = [v6 vehicles];
  sub_1C5626E40(0, &qword_1EC16E320, 0x1E69DF8A0);
  v8 = sub_1C584F770();

  if (v8 >> 62)
  {
    v9 = sub_1C584FB90();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 1)
  {

    goto LABEL_7;
  }

  v10 = [objc_opt_self() getRealTimeEVChargerInfo:v6 charger:a2];

LABEL_10:
  v13 = v10;
  v14 = [a1 plugs];
  sub_1C5626E40(0, &qword_1EC16E2A0, 0x1E69A1D68);
  v15 = sub_1C584F770();

  if (a3)
  {
    v16 = [a3 vehicles];
    sub_1C5626E40(0, &qword_1EC16E320, 0x1E69DF8A0);
    v17 = sub_1C584F770();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = type metadata accessor for MUEVChargerAvailability();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_aggregatedInfo] = v13;
  *&v19[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_plugs] = v15;
  *&v19[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles] = v17;
  v21.receiver = v19;
  v21.super_class = v18;
  v20 = objc_msgSendSuper2(&v21, sel_init);

  return v20;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C5664DA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarage);
  *(v1 + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarage) = v2;

  v4 = v2;
  sub_1C56641C0();
}

unint64_t sub_1C5664DE0()
{
  result = qword_1EC16D0E0;
  if (!qword_1EC16D0E0)
  {
    sub_1C584F570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D0E0);
  }

  return result;
}

unint64_t sub_1C5664E38()
{
  result = qword_1EC16D080;
  if (!qword_1EC16D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC170A30, &unk_1C5869B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D080);
  }

  return result;
}

void sub_1C5664F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarage);
    *(Strong + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarage) = v2;
    v5 = Strong;
    v6 = v2;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1C56641C0();
  }
}

uint64_t MKLocalizedHoursState.resolvedOpenStateStatus(text:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 6:
        goto LABEL_7;
      case 5:
        *a4 = result;
        *(a4 + 8) = a2;
        *(a4 + 16) = 0;

      case 4:
LABEL_7:
        *a4 = result;
        *(a4 + 8) = a2;
        v4 = 2;
        goto LABEL_8;
    }
  }

  else if ((a3 - 1) < 3)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    v4 = 1;
LABEL_8:
    *(a4 + 16) = v4;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = -1;
  return result;
}

void WatchPlaceHoursViewModel.init(mapItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (([a1 _openingHoursOptions] & 0x18) != 0 || (v4 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696F468]), sel_initWithMapItem_localizedHoursStringOptions_, a1, 256)) == 0)
  {

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v5 = v4;
  v6 = [v4 localizedOperatingHours];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C584F660();
    v10 = v9;

    v11 = [v5 localizedOpenState];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1C584F660();
      v15 = v14;

      v16 = [v5 state];
      if (v16 > 3)
      {
        if (v16 == 4 || v16 == 6)
        {
          v17 = 2;
          goto LABEL_17;
        }

        if (v16 == 5)
        {
          v17 = 0;
          goto LABEL_17;
        }
      }

      else if ((v16 - 1) < 3)
      {
        v17 = 1;
LABEL_17:
        *a2 = v8;
        *(a2 + 8) = v10;
        *(a2 + 16) = v13;
        *(a2 + 24) = v15;
        *(a2 + 32) = v17;
        return;
      }
    }

    else
    {
    }

    v13 = 0;
    v15 = 0;
    v17 = -1;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t WatchPlaceHoursViewModel.titleText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WatchPlaceHoursViewModel.openStateStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1C5665244(v2, v3, v4);
}

uint64_t sub_1C5665200@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1C5665244(v2, v3, v4);
}

uint64_t sub_1C5665230@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C5665244(v2, v3, v4);
}

uint64_t sub_1C5665244(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1C5665258(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C5665258(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6MapsUI15OpenStateStatusOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C56652DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5665324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5665378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1C56653C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

id sub_1C566543C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1C56654AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C5665510@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C566556C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*MUPlaceNotesSectionController.notesSectionDelegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_notesSectionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56685B4;
}

uint64_t MUPlaceNotesSectionController.libraryAccessProvider.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t MUPlaceNotesSectionController.libraryAccessProvider.setter(uint64_t a1)
{
  sub_1C5667F98(a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5665790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C56657EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  sub_1C5667F98(v4);

  return swift_unknownObjectRelease();
}

id sub_1C5665830()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5867970;
  *(v1 + 32) = sub_1C5665F8C();
  v2 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews;
  v3 = *&v0[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews];
  *&v0[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews] = v1;

  v4 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (v5 && [v5 savedStateOfPlace] == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C5867970;
    *(v6 + 32) = sub_1C5665F8C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *&v0[v2];
  *&v0[v2] = v6;

  result = [v0 delegate];
  if (result)
  {
    [result placeSectionControllerDidUpdateContent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*MUPlaceNotesSectionController.libraryAccessProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1C56659F8;
}

void sub_1C56659F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1C5667F98(v5);
    swift_unknownObjectRelease();
    v6 = *v3;
  }

  else
  {
    sub_1C5667F98(*v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id MUPlaceNotesSectionController.__allocating_init(mapItem:userInfoProvider:libraryAccessProvider:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1C5668038(a1, a2, a3);

  swift_unknownObjectRelease();
  return v8;
}

id MUPlaceNotesSectionController.init(mapItem:userInfoProvider:libraryAccessProvider:)(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_1C5668038(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

id MUPlaceNotesSectionController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    [v3 unregisterObserver_];
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

BOOL MUPlaceNotesSectionController.hasContentBeforePersonalizedSuggestionArbitration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews);
    }

    v2 = sub_1C584FB90();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

BOOL MUPlaceNotesSectionController.hasContent.getter()
{
  v1 = [v0 personalizedSuggestionsArbiterDelegate];
  if (v1)
  {
    v2 = [v1 shouldShowPlaceNotesSection];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews];
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v6 = *&v0[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews];
      }

      v4 = sub_1C584FB90();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4 != 0;
  }

  return v2;
}

id sub_1C5665F8C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote);
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote + 8);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(MUPlaceVerticalCardConfiguration);

  v5 = [v4 init];
  [v5 setShowSeparators_];
  v6 = type metadata accessor for MUPlaceNoteSectionView();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_note];
  *v8 = 0;
  *(v8 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v9 = *(v8 + 1);
  *v8 = v2;
  *(v8 + 1) = v1;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = &v7[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_tapHandler];
  *v10 = sub_1C56684C8;
  v10[1] = v3;
  v14.receiver = v7;
  v14.super_class = v6;

  v11 = objc_msgSendSuper2(&v14, sel_initWithConfiguration_, v5);
  sub_1C5666458();

  swift_unknownObjectRelease();

  v12 = [objc_opt_self() insetPlatterSectionViewForContentView:v11 sectionHeaderViewModel:0 sectionFooterViewModel:0];

  return v12;
}

id sub_1C5666190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(v6);
  v13 = &v12[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_note];
  *v13 = 0;
  *(v13 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v14 = *(v13 + 1);
  *v13 = a1;
  *(v13 + 1) = a2;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15 = &v12[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_tapHandler];
  *v15 = a5;
  *(v15 + 1) = a6;
  v18.receiver = v12;
  v18.super_class = v6;

  v16 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_, a4);
  sub_1C5666458();

  swift_unknownObjectRelease();

  return v16;
}

id MUPlaceNotesSectionController.__allocating_init(mapItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMapItem_];

  return v3;
}

void sub_1C5666458()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_note];
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *&v1[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_tapHandler];
    v7 = *&v1[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_tapHandler + 8];
    objc_allocWithZone(type metadata accessor for MUPlaceNoteContentView());

    v8 = sub_1C56677A0(v4, v3, Strong, v6, v7);
  }

  else
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = *&v1[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_tapHandler];
    v11 = *&v1[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteSectionView_tapHandler + 8];
    objc_allocWithZone(type metadata accessor for MUPlaceNotePromptView());

    v8 = sub_1C5666890(0.0, 0.0, 0.0, 0.0, v9, v10, v11);
  }

  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C5867970;
  *(v13 + 32) = v12;
  sub_1C5626E40(0, &qword_1EC16D000, 0x1E696F438);
  v14 = v12;
  v15 = sub_1C584F750();

  [v1 setRowViews_];
}

char *sub_1C5666890(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView] = 0;
  *&v7[OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel] = 0;
  *&v7[OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15 = &v7[OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView_tapHandler];
  *v15 = a6;
  *(v15 + 1) = a7;
  v75.receiver = v7;
  v75.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v75, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = sub_1C56676C0(&OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView);
  [v16 addSubview_];

  v18 = sub_1C56670E8();
  [v16 addSubview_];

  v19 = sub_1C5667208();
  [v16 addSubview_];

  [v16 setDirectionalLayoutMargins_];
  v74 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C5869E30;
  v21 = sub_1C56676C0(&OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView);
  v22 = [v21 centerYAnchor];

  v23 = [v16 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v20 + 32) = v24;
  v25 = OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView;
  v26 = [*&v16[OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView] leadingAnchor];
  v27 = [v16 layoutMarginsGuide];
  v28 = [v27 &selRef_mode + 1];

  v29 = [v26 constraintEqualToAnchor_];
  *(v20 + 40) = v29;
  v30 = [*&v16[v25] widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v20 + 48) = v31;
  v32 = [*&v16[v25] heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v20 + 56) = v33;
  v34 = sub_1C56670E8();
  v35 = [v34 &selRef_mode + 1];

  v36 = [*&v16[v25] trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:10.0];

  *(v20 + 64) = v37;
  v38 = OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel;
  v39 = [*&v16[OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel] topAnchor];
  v40 = [v16 layoutMarginsGuide];
  v41 = [v40 topAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v20 + 72) = v42;
  v43 = [*&v16[v38] trailingAnchor];
  v44 = [v16 layoutMarginsGuide];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v20 + 80) = v46;
  v47 = sub_1C5667208();
  v48 = [v47 topAnchor];

  v49 = [*&v16[v38] bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:2.0];

  *(v20 + 88) = v50;
  v51 = OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel;
  v52 = [*&v16[OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel] leadingAnchor];
  v53 = [*&v16[v38] leadingAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v20 + 96) = v54;
  v55 = [*&v16[v51] trailingAnchor];
  v56 = [v16 layoutMarginsGuide];
  v57 = [v56 trailingAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v20 + 104) = v58;
  v59 = [*&v16[v51] bottomAnchor];
  v60 = [v16 layoutMarginsGuide];
  v61 = [v60 bottomAnchor];

  v62 = [v59 constraintEqualToAnchor_];
  *(v20 + 112) = v62;
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v63 = sub_1C584F750();

  [v74 activateConstraints_];

  v64 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v16 action:sel_handleTapWithGestureRecognizer_];
  [v16 addGestureRecognizer_];
  v65 = sub_1C56670E8();
  v66 = objc_opt_self();
  v67 = [v66 addANoteTitle];
  if (!v67)
  {
    sub_1C584F660();
    v67 = sub_1C584F630();
  }

  [v65 setText_];

  v68 = sub_1C5667208();
  v69 = [v66 placeCardNotePrivacyText];
  if (!v69)
  {
    sub_1C584F660();
    v69 = sub_1C584F630();
  }

  [v68 setText_];

  v70 = sub_1C56676C0(&OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = [Strong userIcon];
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0;
  }

  [v70 setImage_];

  swift_unknownObjectRelease();

  return v16;
}

id sub_1C56670E8()
{
  v1 = OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C5667208()
{
  v1 = OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_weight_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v6 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1C56674EC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C5667530(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_1C566758C()
{
  v1 = OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___topLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___topLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___topLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C56676C0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setContentMode_];

    v6 = [objc_opt_self() labelColor];
    [v5 setTintColor_];

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

char *sub_1C56677A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___topLabel] = 0;
  *&v5[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___iconView] = 0;
  v11 = &v5[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView_note];
  *v11 = a1;
  *(v11 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12 = &v5[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView_tapHandler];
  *v12 = a4;
  *(v12 + 1) = a5;
  v58.receiver = v5;
  v58.super_class = ObjectType;

  v13 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = sub_1C566758C();
  [v13 addSubview_];

  v15 = sub_1C56676C0(&OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___iconView);
  [v13 addSubview_];

  [v13 setDirectionalLayoutMargins_];
  v57 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C5869E40;
  v17 = sub_1C56676C0(&OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___iconView);
  v18 = [v17 centerYAnchor];

  v19 = [v13 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v16 + 32) = v20;
  v21 = OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___iconView;
  v22 = [*&v13[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___iconView] leadingAnchor];
  v23 = [v13 layoutMarginsGuide];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v16 + 40) = v25;
  v26 = [*&v13[v21] widthAnchor];
  v27 = [v26 constraintEqualToConstant_];

  *(v16 + 48) = v27;
  v28 = [*&v13[v21] heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v16 + 56) = v29;
  v30 = sub_1C566758C();
  v31 = [v30 leadingAnchor];

  v32 = [*&v13[v21] trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:10.0];

  *(v16 + 64) = v33;
  v34 = OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___topLabel;
  v35 = [*&v13[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___topLabel] topAnchor];
  v36 = [v13 layoutMarginsGuide];
  v37 = [v36 topAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v16 + 72) = v38;
  v39 = [*&v13[v34] trailingAnchor];
  v40 = [v13 layoutMarginsGuide];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v16 + 80) = v42;
  v43 = [*&v13[v34] bottomAnchor];
  v44 = [v13 layoutMarginsGuide];
  v45 = [v44 bottomAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v16 + 88) = v46;
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v47 = sub_1C584F750();

  [v57 activateConstraints_];

  v48 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel_handleTapWithGestureRecognizer_];
  [v13 addGestureRecognizer_];
  v49 = sub_1C566758C();
  v50 = *&v13[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView_note];
  v51 = *&v13[OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView_note + 8];
  v52 = sub_1C584F630();
  [v49 setText_];

  v53 = sub_1C56676C0(&OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___iconView);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = [Strong userIcon];
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0;
  }

  [v53 setImage_];

  swift_unknownObjectRelease();

  return v13;
}

id sub_1C5667F98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    [v4 unregisterObserver_];
    v5 = *(v1 + v3);
  }

  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(v1 + v3);
  if (v6)
  {
    [v6 registerObserver_];
  }

  return sub_1C5665830();
}

id sub_1C5668038(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v4[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote];
  *v8 = 0;
  v8[1] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  *&v4[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider] = 0;
  *&v4[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController__sectionViews] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v10 = *&v4[v9];
  *&v4[v9] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a3 && (v11 = [a3 placeNote]) != 0)
  {
    v12 = v11;
    v13 = sub_1C584F660();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = v8[1];
  *v8 = v13;
  v8[1] = v15;

  v19.receiver = v4;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithMapItem_, a1);
  sub_1C5665830();
  if (a3)
  {
    [a3 registerObserver_];
    swift_unknownObjectRelease();
  }

  return v17;
}

uint64_t sub_1C56681C4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote);
  v5 = *(v2 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote + 8);
  if (v5)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ((result = *v4, *v4 == a1) ? (v17 = v5 == a2) : (v17 = 0), !v17 && (result = sub_1C584FDC0(), (result & 1) == 0)))
  {
    v7 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (v8 && (v9 = [v8 placeNote]) != 0)
    {
      v10 = v9;
      v11 = sub_1C584F660();
      v13 = v12;

      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = 0;
      v13 = 0xE000000000000000;
    }

    v18 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v18 = v14;
    }

    if (v18 && (v19 = *(v2 + v7)) != 0 && (v20 = [v19 placeNote]) != 0)
    {
      v21 = v20;
      v22 = sub_1C584F660();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = v4[1];
    *v4 = v22;
    v4[1] = v24;

    return sub_1C5665830();
  }

  return result;
}

id _s6MapsUI29MUPlaceNotesSectionControllerC21libraryAccessProvider_26savedStateOfPlaceDidChangeySo09MULibraryH9Providing_p_SbtF_0()
{
  v1 = OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_libraryAccessProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 && (v3 = [v2 placeNote]) != 0)
  {
    v4 = v3;
    v5 = sub_1C584F660();
    v7 = v6;

    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8;
  }

  if (v9 && (v10 = *(v0 + v1)) != 0 && (v11 = [v10 placeNote]) != 0)
  {
    v12 = v11;
    v13 = sub_1C584F660();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = (v0 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote);
  v17 = *(v0 + OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote + 8);
  *v16 = v13;
  v16[1] = v15;

  return sub_1C5665830();
}

void sub_1C56684C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      if (*&v1[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote + 8])
      {
        v4 = *&v1[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote];
        v5 = *&v1[OBJC_IVAR____TtC6MapsUI29MUPlaceNotesSectionController_currentNote + 8];

        v6 = sub_1C584F630();
      }

      else
      {
        v6 = 0;
      }

      [v3 placeNotesSectionController:v1 didRequestEditingNoteWithInitialText:v6 completion:0];
      swift_unknownObjectRelease();

      v1 = v6;
    }
  }
}

id sub_1C56685B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_opt_self() vibrantLabelForProminence_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C5668644(void *a1)
{
  sub_1C5668728(a1);
  result = *(v1 + 32);
  if (result)
  {
    goto LABEL_3;
  }

  v4 = sub_1C56685B8();
  v5 = [v4 centerYAnchor];

  v6 = [a1 centerYAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  v8 = *(v1 + 32);
  *(v1 + 32) = v7;

  result = *(v1 + 32);
  if (result)
  {
LABEL_3:

    return [result setActive_];
  }

  return result;
}

void sub_1C5668728(void *a1)
{
  v2 = v1;
  v4 = sub_1C56685B8();
  v5 = [v4 superview];

  if (!v5 || (sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250), v6 = a1, v7 = sub_1C584FAC0(), v5, v6, (v7 & 1) == 0))
  {
    [a1 addSubview_];
    v8 = *(v2 + 24);
    *(v2 + 24) = 0;

    v9 = *(v2 + 32);
    *(v2 + 32) = 0;
  }

  if (!*(v2 + 24))
  {
    v10 = [*(v2 + 16) leadingAnchor];
    v11 = [a1 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    v13 = *(v2 + 24);
    *(v2 + 24) = v12;

    v14 = *(v2 + 24);
    if (v14)
    {

      [v14 setActive_];
    }
  }
}

void sub_1C5668898(char a1, void *a2)
{
  sub_1C5668644(a2);
  v5 = v2[5];
  if (v5)
  {
    [v5 setActive_];
  }

  v6 = sub_1C56685B8();
  v7 = v6;
  if (a1)
  {
    v8 = &selRef_topAnchor;
  }

  else
  {
    v8 = &selRef_bottomAnchor;
  }

  if (a1)
  {
    v9 = &selRef_bottomAnchor;
  }

  else
  {
    v9 = &selRef_topAnchor;
  }

  v10 = [v6 *v8];

  v11 = [a2 *v9];
  v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

  v13 = v2[5];
  v2[5] = v12;
  v14 = v12;

  v15 = v2[4];
  v16 = v2[6];
  v17 = v2[7];
  v2[6] = v12;
  v2[7] = v15;
  v18 = v15;

  sub_1C56689A4(v16, v17);
}

void sub_1C56689A4(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

void sub_1C56689E8(char a1, void *a2)
{
  v5 = v2[5];
  if (v5)
  {
    [v5 setActive_];
  }

  sub_1C5668728(a2);
  v6 = v2[4];
  if (v6)
  {
    goto LABEL_5;
  }

  v7 = sub_1C56685B8();
  v8 = [v7 centerYAnchor];

  v9 = [a2 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  v11 = v2[4];
  v2[4] = v10;

  v6 = v2[4];
  if (v6)
  {
LABEL_5:
    [v6 setActive_];
  }

  v12 = sub_1C56685B8();
  v13 = v12;
  if (a1)
  {
    v14 = [v12 bottomAnchor];

    v15 = [a2 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
  }

  else
  {
    v14 = [v12 topAnchor];

    v15 = [a2 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];
  }

  v17 = v16;

  v18 = v2[5];
  v2[5] = v17;

  v19 = v2[5];
  if (v19)
  {
    [v19 setActive_];
    v20 = v2[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v2[4];
  v22 = v2[6];
  v23 = v2[7];
  v2[6] = v21;
  v2[7] = v20;
  v24 = v20;
  v25 = v21;
  sub_1C56689A4(v22, v23);
  v26 = sub_1C56685B8();
  [v26 layoutIfNeeded];
}

void sub_1C5668C10()
{
  v1 = *(v0 + 48);
  if (v1 != 1)
  {
    if (*(v0 + 56))
    {
      [*(v0 + 56) setActive_];
      v1 = *(v0 + 48);
    }

    if (v1 >= 2)
    {
      [v1 setActive_];
    }
  }

  v2 = sub_1C56685B8();
  [v2 layoutIfNeeded];
}

uint64_t sub_1C5668C9C()
{
  sub_1C56689A4(v0[6], v0[7]);

  return swift_deallocClassInstance();
}

double sub_1C5668CF4()
{
  v0 = swift_allocObject();
  v0[1] = 0u;
  v0[2] = 0u;
  *&result = 1;
  v0[3] = xmmword_1C5868F20;
  return result;
}

_OWORD *sub_1C5668D2C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for RollingLabelsView.LabelAndConstraints();
    v4 = swift_allocObject();
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = xmmword_1C5868F20;
    *(v1 + v2) = v4;
  }

  return v4;
}

id _s6MapsUI17RollingLabelsViewC21forLastBaselineLayoutSo6UIViewCvg_0()
{
  v1 = OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment;
  v2 = *(v0 + OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment);
  }

  else
  {
    v4 = [objc_opt_self() vibrantLabelForProminence_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id RollingLabelsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RollingLabelsView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints] = 0;
  *&v4[OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn] = 0;
  *&v4[OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment] = 0;
  v10 = &v4[OBJC_IVAR___MURollingLabelsView_transitioningContentSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1C5668F5C();

  return v11;
}

uint64_t sub_1C5668F5C()
{
  [v0 setClipsToBounds_];
  BaselineLayoutSo6UIViewCvg_0 = _s6MapsUI17RollingLabelsViewC21forLastBaselineLayoutSo6UIViewCvg_0();
  [v0 addSubview_];

  v2 = OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment;
  [*&v0[OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment] setHidden_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C58682A0;
  v5 = [*&v0[v2] centerXAnchor];
  v6 = [v0 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [*&v0[v2] centerYAnchor];
  v9 = [v0 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v11 = sub_1C584F750();

  [v3 activateConstraints_];

  sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints);
  sub_1C5668644(v0);
}

void RollingLabelsView.intrinsicContentSize.getter()
{
  v1 = (v0 + OBJC_IVAR___MURollingLabelsView_transitioningContentSize);
  if (*(v0 + OBJC_IVAR___MURollingLabelsView_transitioningContentSize + 16))
  {
    sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints);
    v2 = sub_1C56685B8();

    [v2 intrinsicContentSize];
  }

  else
  {
    v3 = *v1;
    v4 = v1[1];
  }
}

uint64_t sub_1C5669428(uint64_t a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR___MURollingLabelsView_transitioningContentSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = 1;
  v10[16] = 1;
  sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints);
  v12 = sub_1C56685B8();

  v13 = [v12 attributedText];

  if (v13)
  {
    v14 = [v13 string];

    v15 = sub_1C584F660();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    v11 = v18 == 0;
  }

  aBlock = a2;
  sub_1C5669AB0();
  if ((sub_1C584F620() & 1) != 0 || v11)
  {
    BaselineLayoutSo6UIViewCvg_0 = _s6MapsUI17RollingLabelsViewC21forLastBaselineLayoutSo6UIViewCvg_0();
    [BaselineLayoutSo6UIViewCvg_0 setAttributedText_];

    v46 = *&v5[OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints];

    v47 = sub_1C56685B8();

    [v47 setAttributedText_];

    [v5 invalidateIntrinsicContentSize];
    return a3([v5 layoutIfNeeded]);
  }

  else
  {
    aBlock = a2;
    sub_1C5669B04();
    sub_1C584F730();
    sub_1C584F730();
    v19 = _s6MapsUI17RollingLabelsViewC21forLastBaselineLayoutSo6UIViewCvg_0();
    [v19 setAttributedText_];

    sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn);
    v20 = sub_1C56685B8();

    [v20 setAttributedText_];

    v21 = OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn;
    v22 = *&v5[OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn];

    sub_1C56689E8(v49 != v48, v5);

    sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints);
    sub_1C5668898(v49 != v48, v5);

    v23 = *&v5[v21];

    v24 = sub_1C56685B8();

    [v24 intrinsicContentSize];
    v26 = v25;
    v28 = v27;

    v29 = &v5[OBJC_IVAR___MURollingLabelsView_transitioningContentSize];
    *v29 = v26;
    *(v29 + 1) = v28;
    v29[16] = 0;
    [v5 invalidateIntrinsicContentSize];
    [v5 layoutIfNeeded];
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = swift_allocObject();
    v32[2] = v30;
    v32[3] = v31;
    v32[4] = v5;
    v32[5] = a3;
    v32[6] = a4;
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v5;
    v54 = sub_1C5669DB4;
    v55 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1C56444F8;
    v53 = &block_descriptor_4;
    v35 = _Block_copy(&aBlock);
    v36 = v5;

    v37 = swift_allocObject();
    v37[2] = v30;
    v37[3] = sub_1C5669C9C;
    v37[4] = v32;
    v54 = sub_1C5669DD8;
    v55 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1C564453C;
    v53 = &block_descriptor_23_0;
    v38 = _Block_copy(&aBlock);

    [v33 animateWithDuration:0 delay:v35 usingSpringWithDamping:v38 initialSpringVelocity:0.5 options:0.0 animations:0.6 completion:0.0];
    _Block_release(v38);
    _Block_release(v35);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    v54 = sub_1C5669DDC;
    v55 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1C56444F8;
    v53 = &block_descriptor_29;
    v40 = _Block_copy(&aBlock);
    v41 = v36;

    v42 = swift_allocObject();
    v42[2] = v31;
    v42[3] = sub_1C5669C9C;
    v42[4] = v32;
    v54 = sub_1C5669EF4;
    v55 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1C564453C;
    v53 = &block_descriptor_35;
    v43 = _Block_copy(&aBlock);

    [v33 animateWithDuration:0 delay:v40 usingSpringWithDamping:v43 initialSpringVelocity:0.35 options:0.0 animations:1.0 completion:0.0];

    _Block_release(v43);
    _Block_release(v40);
  }
}

unint64_t sub_1C5669AB0()
{
  result = qword_1EC16D100;
  if (!qword_1EC16D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D100);
  }

  return result;
}

unint64_t sub_1C5669B04()
{
  result = qword_1EC16E578;
  if (!qword_1EC16E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E578);
  }

  return result;
}

id RollingLabelsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5669BF0()
{
  result = qword_1EC16E580;
  if (!qword_1EC16E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E580);
  }

  return result;
}

uint64_t sub_1C5669C9C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  result = swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    result = swift_beginAccess();
    if (*(v1 + 16) == 1)
    {
      v7 = &v3[OBJC_IVAR___MURollingLabelsView_transitioningContentSize];
      *v7 = 0;
      *(v7 + 1) = 0;
      v7[16] = 1;
      v8 = sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints);
      v9 = sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn);
      v10 = *&v3[OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn];
      *&v3[OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn] = v8;

      v11 = *&v3[OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints];
      *&v3[OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints] = v9;

      [v3 invalidateIntrinsicContentSize];
      return v4([v3 layoutIfNeeded]);
    }
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C5669DE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  sub_1C5668D2C(a1);
  sub_1C5668C10();

  return [v2 layoutIfNeeded];
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5669E7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_beginAccess();
  *(v1 + 16) = 1;
  return v2(v4);
}

id sub_1C5669EF8()
{
  result = [objc_allocWithZone(type metadata accessor for MUWebPlacecardBridgePool()) init];
  qword_1EC174EC8 = result;
  return result;
}

uint64_t *sub_1C5669F28()
{
  if (qword_1EC174EC0 != -1)
  {
    swift_once();
  }

  return &qword_1EC174EC8;
}

id static MUWebPlacecardBridgePool.shared.getter()
{
  if (qword_1EC174EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC174EC8;

  return v1;
}

unint64_t sub_1C566A030()
{
  result = qword_1EC16D068;
  if (!qword_1EC16D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC16E600, &unk_1C586A020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D068);
  }

  return result;
}

uint64_t MUWebPlacecardBridgePool.take()()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C566A1F8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1C564C854;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C566A440;
  aBlock[3] = &block_descriptor_5;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1C566A1F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_available;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v7 = *(v2 + v3);
    }

    if (sub_1C584FB90())
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_beginAccess();
    sub_1C566A368();
    v6 = v5;
    swift_endAccess();
    goto LABEL_8;
  }

  v8 = objc_allocWithZone(type metadata accessor for MUWebPlacecardBridge());
  v6 = sub_1C566B2E8(0x80000001C5893540, 0xD000000000000016, 0x80000001C58936F0);
LABEL_8:
  v9 = OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_inUse;
  swift_beginAccess();
  v10 = v6;
  MEMORY[0x1C6949DF0]();
  if (*((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v12 = *((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C584F7A0();
  }

  sub_1C584F7E0();
  swift_endAccess();
  v11 = *v1;
  *v1 = v10;
}

void sub_1C566A368()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x1C694A320](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_1C584FB90())
  {
    goto LABEL_20;
  }

  if (!sub_1C584FB90())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_1C584FB90();
LABEL_16:
    if (v3)
    {
      sub_1C566CFF0(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *MUWebPlacecardBridgePool.release(_:)(void *result)
{
  if (result)
  {
    v2 = result;
    sub_1C566A644();
    v3 = *&v1[OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_queue];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C566A9C0;
    *(v5 + 24) = v4;
    v10[4] = sub_1C566DF14;
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C566A440;
    v10[3] = &block_descriptor_13;
    v6 = _Block_copy(v10);
    v7 = v2;
    v8 = v1;

    dispatch_sync(v3, v6);

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C566A644()
{
  v1 = v0;
  v30 = sub_1C584E6F0();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v30 - v10;
  v12 = sub_1C584EA90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v30 - v20;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v22 = *(v0 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_messageHandler);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*((*MEMORY[0x1E69E7D40] & *v22) + 0x60))(Strong);
  v24 = *(v1 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation);
  *(v1 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation) = 0;

  v25 = sub_1C566AF74();
  [v25 removeFromSuperview];

  sub_1C584EA80();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1C5625230(v11, &unk_1EC16E660, &unk_1C58685F0);
  }

  (*(v13 + 32))(v21, v11, v12);
  v27 = *(v1 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge____lazy_storage___webView);
  (*(v13 + 16))(v18, v21, v12);
  v28 = v27;
  sub_1C584E6D0();
  v29 = sub_1C584E6B0();
  (*(v2 + 8))(v6, v30);

  return (*(v13 + 8))(v21, v12);
}

uint64_t sub_1C566A9C0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_available;
  swift_beginAccess();
  v4 = v1;
  MEMORY[0x1C6949DF0]();
  if (*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C584F7A0();
  }

  sub_1C584F7E0();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_inUse;
  swift_beginAccess();
  v6 = v4;
  v7 = sub_1C566D1CC((v2 + v5), v6);

  v8 = *(v2 + v5);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v12 = *(v2 + v5);
    }

    v9 = sub_1C584FB90();
    if (v9 >= v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v7)
    {
LABEL_5:
      sub_1C566CFF0(v7, v9);
      return swift_endAccess();
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

id MUWebPlacecardBridgePool.init()()
{
  ObjectType = swift_getObjectType();
  v15 = sub_1C584F9E0();
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v15, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C584F9D0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_1C584F5B0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_available] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_inUse] = v12;
  v14 = OBJC_IVAR____TtC6MapsUI24MUWebPlacecardBridgePool_queue;
  sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
  sub_1C584F5A0();
  v18 = v12;
  sub_1C566DD28(&qword_1EC16D018, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E600, &unk_1C586A020);
  sub_1C566A030();
  sub_1C584FB50();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v15);
  *&v0[v14] = sub_1C584FA10();
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id MUWebPlacecardBridgePool.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C566AEC8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_messageHandler);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(Strong);
  return swift_unknownObjectRelease();
}

id sub_1C566AF74()
{
  v1 = OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge____lazy_storage___webView;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge____lazy_storage___webView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge____lazy_storage___webView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
    v5 = [objc_allocWithZone(MEMORY[0x1E6985340]) init];
    [v4 setProcessPool_];

    v6 = [objc_allocWithZone(MEMORY[0x1E6985350]) init];
    [v4 setUserContentController_];

    v7 = sub_1C584F820();
    v8 = sub_1C584F630();
    [v4 setValue:v7 forKey:v8];

    v9 = *(v0 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_schemeHandler);
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x50);
    v11 = v9;
    v12 = v0;
    v10();
    v13 = sub_1C584F630();

    [v4 setURLSchemeHandler:v11 forURLScheme:v13];

    v14 = [v4 userContentController];
    v15 = *(v12 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_messageHandler);
    v16 = [objc_opt_self() pageWorld];
    v17 = *(v12 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_config);
    v18 = *(v12 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_config + 8);
    v19 = sub_1C584F630();
    [v14 addScriptMessageHandlerWithReply:v15 contentWorld:v16 name:v19];

    v20 = *(v12 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_webViewConfiguration);
    *(v12 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_webViewConfiguration) = v4;
    v21 = v4;

    v22 = [objc_allocWithZone(MEMORY[0x1E69853A0]) initWithFrame:v21 configuration:{0.0, 0.0, 0.0, 0.0}];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    [v22 setNavigationDelegate_];
    v23 = [v22 scrollView];
    [v23 setScrollsToTop_];

    v24 = [v22 scrollView];
    [v24 setMaximumZoomScale_];

    v25 = [v22 scrollView];
    [v25 setMinimumZoomScale_];

    [v22 setOpaque_];
    [v22 _setUseSystemAppearance_];

    v26 = *(v12 + v1);
    *(v12 + v1) = v22;
    v3 = v22;

    v2 = 0;
  }

  v27 = v2;
  return v3;
}

id sub_1C566B2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_messageHandler;
  type metadata accessor for MUWebPlacecardMessageHandlerWithReply();
  *&v3[v8] = sub_1C566E354();
  v9 = OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_schemeHandler;
  type metadata accessor for MUWebPlacecardSchemeHandler();
  *&v3[v9] = sub_1C566E354();
  *&v3[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_webViewConfiguration] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge____lazy_storage___webView] = 0;
  v10 = &v3[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_config];
  *v10 = 0xD000000000000019;
  *(v10 + 1) = a1;
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id MUWebPlacecardBridge.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_webViewConfiguration];
  if (v2)
  {
    v3 = [v2 userContentController];
    v4 = *&v0[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_config];
    v5 = *&v0[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_config + 8];

    v6 = sub_1C584F630();

    v7 = [objc_opt_self() pageWorld];
    [v3 removeScriptMessageHandlerForName:v6 contentWorld:v7];
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id MUWebPlacecardBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1C566B63C(char *a1)
{
  v2 = v1;
  v56 = sub_1C584E6F0();
  v51 = *(v56 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v56, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v57 = &v48 - v11;
  v12 = sub_1C584EA90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v55 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v48 - v22;
  if (qword_1EC17B098 != -1)
  {
    swift_once();
  }

  v24 = sub_1C584F2C0();
  v25 = __swift_project_value_buffer(v24, qword_1EC18FAB0);
  v26 = *(v13 + 16);
  v58 = a1;
  v52 = v26;
  v53 = v13 + 16;
  v26(v23, a1, v12);
  v50 = v25;
  v27 = sub_1C584F2A0();
  v28 = sub_1C584F990();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = v2;
    v31 = v30;
    v59 = v30;
    *v29 = 136315138;
    v32 = sub_1C584EA00();
    v48 = v7;
    v34 = v33;
    v35 = *(v13 + 8);
    v35(v23, v12);
    v36 = sub_1C5649518(v32, v34, &v59);
    v7 = v48;

    *(v29 + 4) = v36;
    _os_log_impl(&dword_1C5620000, v27, v28, "loading url:%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v37 = v31;
    v2 = v49;
    MEMORY[0x1C694B7A0](v37, -1, -1);
    MEMORY[0x1C694B7A0](v29, -1, -1);
  }

  else
  {

    v35 = *(v13 + 8);
    v35(v23, v12);
  }

  v38 = *(v2 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_schemeHandler);
  v39 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x58);
  v40 = v38;
  v41 = v57;
  v39(v58);

  if ((*(v13 + 48))(v41, 1, v12) == 1)
  {
    sub_1C5625230(v41, &unk_1EC16E660, &unk_1C58685F0);
    v42 = sub_1C584F2A0();
    v43 = sub_1C584F9B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1C5620000, v42, v43, "failed to replace scheme", v44, 2u);
      MEMORY[0x1C694B7A0](v44, -1, -1);
    }
  }

  else
  {
    v45 = v55;
    (*(v13 + 32))(v55, v41, v12);
    v52(v54, v45, v12);
    sub_1C584E6D0();
    v46 = sub_1C566AF74();
    v47 = sub_1C584E6B0();

    (*(v51 + 8))(v7, v56);
    v35(v45, v12);
  }
}

void sub_1C566BB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v33 = &v31 - v9;
  v10 = sub_1C584EFF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C584EFE0();
  sub_1C566DD28(&unk_1EC16D438, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  v37 = a1;
  v16 = sub_1C584F110();
  v18 = v17;
  v19 = v16;
  (*(v11 + 8))(v15, v10);
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_1C584FC50();

  strcpy(v38, "return window.");
  HIBYTE(v38[1]) = -18;
  v20 = v34;
  MEMORY[0x1C6949D90](*&v34[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_config + 16], *&v34[OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_config + 24]);
  MEMORY[0x1C6949D90](0xD000000000000010, 0x80000001C5893500);
  MEMORY[0x1C6949D90](v19, v18);

  MEMORY[0x1C6949D90](41, 0xE100000000000000);
  v31 = v38[0];
  v21 = sub_1C566AF74();
  v22 = [objc_opt_self() pageWorld];
  v23 = v33;
  sub_1C566DE40(v37, v33, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  v24 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v25 = (v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1C566DDD8(v23, v26 + v24, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  *(v26 + v25) = v20;
  v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = v35;
  v28 = v36;
  *v27 = v35;
  v27[1] = v28;
  v30 = v20;
  sub_1C5633060(v29);
  sub_1C564647C(MEMORY[0x1E69E7CC0]);
  sub_1C584FAE0();
}

void sub_1C566C0C8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E6E0, &qword_1C586A108);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v51 - v20;
  sub_1C56466CC(a1, v58, &qword_1EC16E708, &qword_1C586A128);
  if (v59)
  {
    v22 = *&v58[0];
    if (qword_1EC17B098 != -1)
    {
      swift_once();
    }

    v23 = sub_1C584F2C0();
    __swift_project_value_buffer(v23, qword_1EC18FAB0);
    sub_1C566DE40(a2, v18, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
    v24 = v22;
    v25 = sub_1C584F2A0();
    v26 = sub_1C584F9B0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = a4;
      *&v57[0] = v52;
      *v27 = 136315394;
      LOBYTE(v56[0]) = sub_1C569A8AC();
      v29 = sub_1C584F680();
      v30 = a3;
      v32 = v31;
      sub_1C566DEA8(v18, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
      v33 = sub_1C5649518(v29, v32, v57);
      a3 = v30;

      *(v27 + 4) = v33;
      *(v27 + 12) = 2112;
      v34 = v22;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v35;
      *v28 = v35;
      _os_log_impl(&dword_1C5620000, v25, v26, "Calling JavaScript message %s failed with error %@", v27, 0x16u);
      sub_1C5625230(v28, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v28, -1, -1);
      v36 = v52;
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1C694B7A0](v36, -1, -1);
      MEMORY[0x1C694B7A0](v27, -1, -1);

      if (v30)
      {
LABEL_6:
        v37 = type metadata accessor for WebBridgeReply(0);
        (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
        a3(v12);

        sub_1C5625230(v12, &unk_1EC16E6E0, &qword_1C586A108);
        return;
      }
    }

    else
    {

      sub_1C566DEA8(v18, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
      if (a3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    sub_1C563D304(v58, v57);
    if (qword_1EC17B098 != -1)
    {
      swift_once();
    }

    v38 = sub_1C584F2C0();
    __swift_project_value_buffer(v38, qword_1EC18FAB0);
    sub_1C566DE40(a2, v21, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
    sub_1C56465F8(v57, v56);
    v39 = sub_1C584F2A0();
    v40 = sub_1C584F990();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55 = v42;
      *v41 = 136315394;
      v54[0] = sub_1C569A8AC();
      v43 = sub_1C584F680();
      v45 = v44;
      sub_1C566DEA8(v21, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
      v46 = sub_1C5649518(v43, v45, &v55);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      sub_1C56465F8(v56, v54);
      v47 = sub_1C584F680();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_1(v56);
      v50 = sub_1C5649518(v47, v49, &v55);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_1C5620000, v39, v40, "Calling JavaScript message %s success, returned %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C694B7A0](v42, -1, -1);
      MEMORY[0x1C694B7A0](v41, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v56);
      sub_1C566DEA8(v21, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
    }

    sub_1C56465F8(v57, v56);
    sub_1C566D3F0(v56, a3, a4);
    sub_1C5625230(v56, &qword_1EC16E790, &unk_1C586A110);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }
}

uint64_t sub_1C566C6D4()
{
  sub_1C584FC50();
  MEMORY[0x1C6949D90](0xD00000000000001CLL, 0x80000001C5893520);
  sub_1C584F900();
  MEMORY[0x1C6949D90](41, 0xE100000000000000);
  v0 = sub_1C566AF74();
  v1 = [objc_opt_self() pageWorld];
  sub_1C564647C(MEMORY[0x1E69E7CC0]);
  sub_1C584FAE0();
}

Swift::Void __swiftcall MUWebPlacecardBridge.webView(_:didStartProvisionalNavigation:)(WKWebView *_, WKNavigation_optional didStartProvisionalNavigation)
{
  v4 = *(v2 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation);
  *(v2 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation) = didStartProvisionalNavigation.value.super.isa;
  v3 = didStartProvisionalNavigation.value.super.isa;
}

void sub_1C566C91C(void *a1, void *a2, void *a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation);
  if (a2)
  {
    if (!v6)
    {
      return;
    }

    v7 = a2;
    sub_1C5626E40(0, &unk_1EC16D038, 0x1E6985330);
    v8 = v6;
    v9 = v7;
    LOBYTE(v7) = sub_1C584FAC0();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else if (v6)
  {
    return;
  }

  if (qword_1EC17B098 != -1)
  {
    swift_once();
  }

  v10 = sub_1C584F2C0();
  __swift_project_value_buffer(v10, qword_1EC18FAB0);
  v11 = a1;
  v12 = a3;
  v13 = sub_1C584F2A0();
  v14 = sub_1C584F9B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2112;
    v17 = v11;
    v18 = a3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    v16[1] = v19;
    _os_log_impl(&dword_1C5620000, v13, v14, "<WKWebView: %@> failed to load content with error %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E670, &qword_1C586A030);
    swift_arrayDestroy();
    MEMORY[0x1C694B7A0](v16, -1, -1);
    MEMORY[0x1C694B7A0](v15, -1, -1);
  }

  [v11 stopLoading];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong loadWebViewDidFail];
    swift_unknownObjectRelease();
  }
}

void sub_1C566CB7C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, id))
{
  v10 = a3;
  v11 = a4;
  v13 = a5;
  v12 = a1;
  a6(v10, a4, v13);
}

uint64_t sub_1C566CC70()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FAB0);
  __swift_project_value_buffer(v0, qword_1EC18FAB0);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  type metadata accessor for MUWebPlacecardBridge();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E718, &qword_1C586A138);
  sub_1C584F680();
  return sub_1C584F2B0();
}

void sub_1C566CD2C(uint64_t a1)
{
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1C566C0C8(a1, v1 + v4, v6, v7);
}

uint64_t sub_1C566CDD4(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1C584FB90();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1C584FC80();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C566CE90(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C584FB90();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C584FC80();
}

uint64_t sub_1C566CEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for MUWebPlacecardBridge();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C584FB90();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C584FB90();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C566CFF0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C584FB90();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1C584FB90();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1C566CDD4(result);

  return sub_1C566CEF4(v4, v2, 0);
}

unint64_t sub_1C566D0C8(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1C584FB90();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1C694A320](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1C566D1CC(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1C566D0C8(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1C584FB90();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1C584FB90())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x1C694A320](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1C694A320](v10, v7);
        v17 = MEMORY[0x1C694A320](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1C566CE90(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_1C566CE90(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_1C584FB90();
}

void sub_1C566D3F0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v52 = a3;
  v5 = sub_1C584F010();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E6E0, &qword_1C586A108);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for WebBridgeReply(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v46 - v25;
  sub_1C56466CC(a1, &v53, &qword_1EC16E790, &unk_1C586A110);
  if (!*(&v54 + 1))
  {
    sub_1C5625230(&v53, &qword_1EC16E790, &unk_1C586A110);
LABEL_6:
    if (qword_1EC17B098 != -1)
    {
      swift_once();
    }

    v30 = sub_1C584F2C0();
    __swift_project_value_buffer(v30, qword_1EC18FAB0);
    v31 = sub_1C584F2A0();
    v32 = sub_1C584F9B0();
    v33 = a2;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C5620000, v31, v32, "not received encoded data or data can't be decoded", v34, 2u);
      MEMORY[0x1C694B7A0](v34, -1, -1);
    }

    if (v33)
    {
      (*(v18 + 56))(v13, 1, 1, v17);
      v33(v13);
      sub_1C5625230(v13, &unk_1EC16E6E0, &qword_1C586A108);
    }

    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v51 = v26;
  v27 = sub_1C584EAB0();
  v29 = v28;

  if (v29 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v56 = v27;
  v57 = v29;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_1C566DCD4(v27, v29);
  sub_1C584F000();
  sub_1C566DD28(&unk_1EC16E6F0, type metadata accessor for WebBridgeReply);
  sub_1C584F150();
  v49 = v27;
  v50 = v29;
  v48 = *(v18 + 56);
  v48(v16, 0, 1, v17);
  v35 = v51;
  sub_1C566DDD8(v16, v51, type metadata accessor for WebBridgeReply);
  if (qword_1EC17B098 != -1)
  {
    swift_once();
  }

  v36 = sub_1C584F2C0();
  __swift_project_value_buffer(v36, qword_1EC18FAB0);
  sub_1C566DE40(v35, v23, type metadata accessor for WebBridgeReply);
  v37 = sub_1C584F2A0();
  v38 = sub_1C584F990();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v53 = v40;
    *v39 = 136315138;
    v47 = sub_1C569CAD4();
    v42 = v41;
    sub_1C566DEA8(v23, type metadata accessor for WebBridgeReply);
    v43 = sub_1C5649518(v47, v42, &v53);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1C5620000, v37, v38, "Received reply from the web:%s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1C694B7A0](v40, -1, -1);
    MEMORY[0x1C694B7A0](v39, -1, -1);

    v44 = v49;
    if (a2)
    {
LABEL_17:
      v45 = v51;
      sub_1C566DE40(v51, v13, type metadata accessor for WebBridgeReply);
      v48(v13, 0, 1, v17);
      a2(v13);
      sub_1C566DD70(v44, v50);
      sub_1C5625230(v13, &unk_1EC16E6E0, &qword_1C586A108);
      sub_1C566DEA8(v45, type metadata accessor for WebBridgeReply);
      return;
    }
  }

  else
  {

    sub_1C566DEA8(v23, type metadata accessor for WebBridgeReply);
    v44 = v49;
    if (a2)
    {
      goto LABEL_17;
    }
  }

  sub_1C566DEA8(v51, type metadata accessor for WebBridgeReply);
  sub_1C566DD70(v44, v50);
}

void _s6MapsUI20MUWebPlacecardBridgeC7webView_9didFinishySo05WKWebG0C_So12WKNavigationCSgtF_0(void *a1)
{
  if (qword_1EC17B098 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584F2C0();
  __swift_project_value_buffer(v2, qword_1EC18FAB0);
  v3 = a1;
  oslog = sub_1C584F2A0();
  v4 = sub_1C584F990();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_1C5620000, oslog, v4, "<WKWebView: %@> did finish", v5, 0xCu);
    sub_1C5625230(v6, &unk_1EC16E670, &qword_1C586A030);
    MEMORY[0x1C694B7A0](v6, -1, -1);
    MEMORY[0x1C694B7A0](v5, -1, -1);
  }
}

uint64_t sub_1C566DC3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C566DC84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C566DCD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C566DD28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C566DD70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C566DD84(a1, a2);
  }

  return a1;
}

uint64_t sub_1C566DD84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C566DDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C566DE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C566DEA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C566DF64()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C566DFC4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI37MUWebPlacecardMessageHandlerWithReply_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

uint64_t sub_1C566E06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (!a2)
  {
    memset(v12, 0, sizeof(v12));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  *&v10 = a2;
  sub_1C563D304(&v10, v12);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1C584F660();
  v3 = v8;
LABEL_6:

  swift_unknownObjectRetain();
  v6(v12, v7, v3);

  return sub_1C566EAA8(v12);
}

void sub_1C566E1E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1C566EA20(a1, v13);
  v6 = v14;
  if (!v14)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11);
  v12 = sub_1C584FDB0();
  (*(v8 + 8))(v11, v6);
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (a3)
  {
LABEL_3:
    a3 = sub_1C584F630();
  }

LABEL_4:
  (*(a4 + 16))(a4, v12, a3);
  swift_unknownObjectRelease();
}

id sub_1C566E354()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C566E3DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUWebPlacecardMessageHandlerWithReply();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C566E420()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA68);
  __swift_project_value_buffer(v0, qword_1EC18FA68);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  type metadata accessor for MUWebPlacecardMessageHandlerWithReply();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E798, &qword_1C586A168);
  sub_1C584F680();
  return sub_1C584F2B0();
}

void sub_1C566E4DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 body];
  sub_1C584FB30();
  swift_unknownObjectRelease();
  if (!swift_dynamicCast())
  {
    if (qword_1EC17B058 != -1)
    {
      swift_once();
    }

    v19 = sub_1C584F2C0();
    __swift_project_value_buffer(v19, qword_1EC18FA68);
    v20 = a1;
    v13 = sub_1C584F2A0();
    v14 = sub_1C584F9B0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39[0] = v16;
    *v15 = 136315138;
    v21 = [v20 body];
    sub_1C584FB30();
    swift_unknownObjectRelease();
    v22 = sub_1C584F680();
    v24 = sub_1C5649518(v22, v23, v39);

    *(v15 + 4) = v24;
    v18 = "Incorrect message from placecard web module: %s";
    goto LABEL_11;
  }

  v9 = v39[0];
  v8 = v39[1];
  v10 = sub_1C584EAB0();
  if (v11 >> 60 == 15)
  {
    if (qword_1EC17B058 != -1)
    {
      swift_once();
    }

    v12 = sub_1C584F2C0();
    __swift_project_value_buffer(v12, qword_1EC18FA68);

    v13 = sub_1C584F2A0();
    v14 = sub_1C584F9B0();

    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_17;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = sub_1C5649518(v9, v8, aBlock);

    *(v15 + 4) = v17;
    v18 = "Failed to decode JavaScript message sent from Web: %s";
LABEL_11:
    _os_log_impl(&dword_1C5620000, v13, v14, v18, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1C694B7A0](v16, -1, -1);
    MEMORY[0x1C694B7A0](v15, -1, -1);
LABEL_17:

    return;
  }

  v25 = v10;
  v26 = v11;
  v37 = v3;
  if (qword_1EC17B058 != -1)
  {
    swift_once();
  }

  v27 = sub_1C584F2C0();
  __swift_project_value_buffer(v27, qword_1EC18FA68);

  v28 = sub_1C584F2A0();
  v29 = sub_1C584F990();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = sub_1C5649518(v9, v8, aBlock);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_1C5620000, v28, v29, "Received a message from JavaScript: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1C694B7A0](v31, -1, -1);
    MEMORY[0x1C694B7A0](v30, -1, -1);
  }

  else
  {
  }

  v33 = (*((*MEMORY[0x1E69E7D40] & *v37) + 0x58))();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1C584EAC0();
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C566E06C;
    aBlock[3] = &block_descriptor_6;
    v36 = _Block_copy(aBlock);

    [v34 didReceiveMessageFromWebContentViewController:v35 replyHandler:v36];
    sub_1C566DD70(v25, v26);
    swift_unknownObjectRelease();
    _Block_release(v36);
  }

  else
  {
    sub_1C566DD70(v25, v26);
  }
}

uint64_t sub_1C566EA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E790, &unk_1C586A110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C566EAA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E790, &unk_1C586A110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C566EB44@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E7A0, &qword_1C586A170);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_1C584E800();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C584EA00();
  sub_1C584E7F0();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C5625230(v7, &qword_1EC16E7A0, &qword_1C586A170);
    v14 = sub_1C584EA90();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    v16 = (*(v9 + 32))(v13, v7, v8);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x50))(v16);
    sub_1C584E7E0();
    sub_1C584E7D0();
    return (*(v9 + 8))(v13, v8);
  }
}

id sub_1C566EE28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUWebPlacecardSchemeHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C566EE5C()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA80);
  __swift_project_value_buffer(v0, qword_1EC18FA80);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  type metadata accessor for MUWebPlacecardSchemeHandler();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E818, &qword_1C586A258);
  sub_1C584F680();
  return sub_1C584F2B0();
}

unint64_t sub_1C566EF18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E838, &unk_1C586A280);
    v3 = sub_1C584FD50();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C5645D34(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C566F02C(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E820, &unk_1C586A260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v162 = &v151 - v5;
  v6 = sub_1C584F290();
  v164 = *(v6 - 8);
  v165 = v6;
  v7 = *(v164 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v161 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v163 = &v151 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v18 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v151 - v20;
  v22 = sub_1C584E6F0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C584EA90();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v166 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v157 = &v151 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v159 = &v151 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v160 = &v151 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v158 = &v151 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v167 = &v151 - v48;
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v151 - v50;
  v52 = [a1 request];
  sub_1C584E6C0();

  sub_1C584E6E0();
  (*(v23 + 8))(v27, v22);
  v53 = *(v29 + 48);
  v54 = &unk_1EC17B000;
  if (v53(v21, 1, v28) == 1)
  {
    v18 = v21;
LABEL_5:
    sub_1C5625230(v18, &unk_1EC16E660, &unk_1C58685F0);
    if (v54[16] != -1)
    {
      swift_once();
    }

    v57 = sub_1C584F2C0();
    __swift_project_value_buffer(v57, qword_1EC18FA80);
    v58 = sub_1C584F2A0();
    v59 = sub_1C584F9B0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1C5620000, v58, v59, "Failed to get current URL.", v60, 2u);
      MEMORY[0x1C694B7A0](v60, -1, -1);
    }

    sub_1C5670174();
    v61 = swift_allocError();
    *v62 = 0;
    v63 = sub_1C584E940();

    [a1 didFailWithError_];
    return;
  }

  v156 = a1;
  v55 = v51;
  v56 = *(v29 + 32);
  v56(v55, v21, v28);
  sub_1C584EA70();
  sub_1C584EA80();

  if (v53(v18, 1, v28) == 1)
  {
    (*(v29 + 8))(v55, v28);
    a1 = v156;
    v54 = &unk_1EC17B000;
    goto LABEL_5;
  }

  v154 = v29;
  v153 = v55;
  v64 = v167;
  v155 = v28;
  v56(v167, v18, v28);
  v65 = [objc_opt_self() defaultManager];
  sub_1C584EA00();
  v66 = sub_1C584F630();

  v67 = [v65 fileExistsAtPath_];

  if (v67)
  {
    v68 = v154;
    v69 = v166;
    if (qword_1EC17B080 != -1)
    {
      swift_once();
    }

    v70 = sub_1C584F2C0();
    __swift_project_value_buffer(v70, qword_1EC18FA80);
    v71 = v158;
    v72 = v155;
    v152 = *(v68 + 16);
    v152(v158, v64, v155);
    v73 = sub_1C584F2A0();
    v74 = sub_1C584F990();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v71;
      v77 = swift_slowAlloc();
      v168[0] = v77;
      *v75 = 136315138;
      v78 = sub_1C584EA00();
      v80 = v79;
      v81 = *(v68 + 8);
      v81(v76, v72);
      v82 = v78;
      v69 = v166;
      v83 = sub_1C5649518(v82, v80, v168);
      v64 = v167;

      *(v75 + 4) = v83;
      _os_log_impl(&dword_1C5620000, v73, v74, "File exists at path:%s, loading the content from the file", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1C694B7A0](v77, -1, -1);
      MEMORY[0x1C694B7A0](v75, -1, -1);
    }

    else
    {

      v81 = *(v68 + 8);
      v81(v71, v72);
    }

    v98 = v163;
    sub_1C584EA00();
    v99 = v160;
    sub_1C584EA10();

    v158 = sub_1C584EAA0();
    v159 = v101;
    v102 = v162;
    v81(v99, v72);
  }

  else
  {
    v84 = v154;
    v69 = v166;
    if (qword_1EC17B080 != -1)
    {
      swift_once();
    }

    v85 = sub_1C584F2C0();
    __swift_project_value_buffer(v85, qword_1EC18FA80);
    v86 = v159;
    v72 = v155;
    v152 = *(v84 + 16);
    v152(v159, v64, v155);
    v87 = sub_1C584F2A0();
    v88 = sub_1C584F990();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v168[0] = v90;
      *v89 = 136315138;
      v91 = sub_1C584EA00();
      v93 = v92;
      v94 = v86;
      v95 = *(v84 + 8);
      v95(v94, v155);
      v96 = sub_1C5649518(v91, v93, v168);
      v72 = v155;

      *(v89 + 4) = v96;
      v97 = v88;
      v81 = v95;
      _os_log_impl(&dword_1C5620000, v87, v97, "File does not exist at path:%s, loading the content from the URL directly...", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x1C694B7A0](v90, -1, -1);
      MEMORY[0x1C694B7A0](v89, -1, -1);
    }

    else
    {

      v81 = *(v84 + 8);
      v81(v86, v72);
    }

    v100 = sub_1C584EAA0();
    v98 = v163;
    v158 = v100;
    v159 = v103;
    v102 = v162;
  }

  sub_1C584E9F0();
  sub_1C584F280();
  sub_1C584F260();
  v105 = v164;
  v104 = v165;
  if ((*(v164 + 48))(v102, 1, v165) != 1)
  {
    (*(v105 + 32))(v98, v102, v104);
    if (v159 >> 60 == 15)
    {
      (*(v105 + 8))(v98, v104);
      goto LABEL_27;
    }

    if (qword_1EC17B080 != -1)
    {
      swift_once();
    }

    v166 = v81;
    v121 = sub_1C584F2C0();
    __swift_project_value_buffer(v121, qword_1EC18FA80);
    v122 = sub_1C584F2A0();
    v123 = sub_1C584F990();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_1C5620000, v122, v123, "Loading successful, returning the file data...", v124, 2u);
      MEMORY[0x1C694B7A0](v124, -1, -1);
    }

    v125 = sub_1C584F270();
    if (v126)
    {
      v127 = v125;
    }

    else
    {
      v127 = 0xD000000000000018;
    }

    if (v126)
    {
      v128 = v126;
    }

    else
    {
      v128 = 0x80000001C58937A0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E828, &qword_1C586A270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5867900;
    strcpy((inited + 32), "Content-Type");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v127;
    *(inited + 56) = v128;

    sub_1C566EF18(inited);
    swift_setDeallocating();
    sub_1C5625230(inited + 32, &qword_1EC16E830, &qword_1C586A278);
    v130 = objc_allocWithZone(MEMORY[0x1E696AC68]);
    v131 = v153;
    v132 = sub_1C584EA20();
    v133 = sub_1C584F630();
    v134 = sub_1C584F5C0();

    v135 = [v130 initWithURL:v132 statusCode:200 HTTPVersion:v133 headerFields:v134];

    if (v135)
    {

      v136 = v155;
      v138 = v166;
      v137 = v167;
LABEL_56:
      v147 = v156;
      [v156 didReceiveResponse_];
      v148 = v158;
      v149 = v159;
      v150 = sub_1C584EAC0();
      [v147 didReceiveData_];

      [v147 didFinish];
      sub_1C566DD70(v148, v149);
      (*(v164 + 8))(v163, v165);
      v138(v137, v136);
      v138(v153, v136);
      return;
    }

    v139 = v157;
    v136 = v155;
    v152(v157, v131, v155);
    v140 = v159 >> 62;
    v137 = v167;
    if ((v159 >> 62) > 1)
    {
      if (v140 != 2)
      {
        v141 = 0;
        goto LABEL_55;
      }

      v143 = *(v158 + 16);
      v142 = *(v158 + 24);
      v141 = v142 - v143;
      if (!__OFSUB__(v142, v143))
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    else if (!v140)
    {
      v141 = BYTE6(v159);
LABEL_55:
      v144 = objc_allocWithZone(MEMORY[0x1E696AF70]);
      v145 = sub_1C584EA20();
      v146 = sub_1C584F630();

      v135 = [v144 initWithURL:v145 MIMEType:v146 expectedContentLength:v141 textEncodingName:0];

      v138 = v166;
      (v166)(v139, v136);
      goto LABEL_56;
    }

    if (__OFSUB__(HIDWORD(v158), v158))
    {
      __break(1u);
      return;
    }

    v141 = HIDWORD(v158) - v158;
    goto LABEL_55;
  }

  sub_1C5625230(v102, &qword_1EC16E820, &unk_1C586A260);
LABEL_27:
  if (qword_1EC17B080 != -1)
  {
    swift_once();
  }

  v106 = sub_1C584F2C0();
  __swift_project_value_buffer(v106, qword_1EC18FA80);
  v152(v69, v64, v72);
  v107 = sub_1C584F2A0();
  v108 = sub_1C584F9B0();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v168[0] = v110;
    *v109 = 136315138;
    v111 = sub_1C584E9F0();
    v112 = v69;
    v113 = v81;
    v115 = v114;
    v113(v112, v72);
    v116 = sub_1C5649518(v111, v115, v168);
    v81 = v113;

    *(v109 + 4) = v116;
    _os_log_impl(&dword_1C5620000, v107, v108, "Failed to get file data or file type:%s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1C694B7A0](v110, -1, -1);
    MEMORY[0x1C694B7A0](v109, -1, -1);
  }

  else
  {

    v81(v69, v72);
  }

  v117 = v153;
  sub_1C5670174();
  v118 = swift_allocError();
  *v119 = 1;
  v120 = sub_1C584E940();

  [v156 didFailWithError_];
  sub_1C566DD70(v158, v159);
  v81(v64, v72);
  v81(v117, v72);
}

unint64_t sub_1C5670110()
{
  result = qword_1EC16E7A8;
  if (!qword_1EC16E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E7A8);
  }

  return result;
}

unint64_t sub_1C5670174()
{
  result = qword_1EC16D0F0;
  if (!qword_1EC16D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D0F0);
  }

  return result;
}

id StackLayout.init(container:axis:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E840, &qword_1C586A290);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v9[1] = a2;
  v9[2] = MEMORY[0x1E69E7CC0];
  v10 = vdupq_n_s64(0xC0000000uLL);
  v11 = 0;
  v5 = *(MEMORY[0x1E69DC5C0] + 16);
  v12 = *MEMORY[0x1E69DC5C0];
  v13 = v5;
  *(v3 + OBJC_IVAR___MUStackLayoutInternal_builder) = sub_1C562370C(v9);

  v7 = sub_1C562389C(v6, &off_1F44C6BC0);
  sub_1C5672D28();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1C5670398()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5672E58(v4);
  return Strong;
}

uint64_t sub_1C5670488()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v5);
  swift_unknownObjectWeakAssign();
  sub_1C5672E88(v5, v4);
  sub_1C5623B40(v4, v2);
  sub_1C5672E58(v5);
  sub_1C5672D28();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5670508@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5670564(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C56705C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  *(v3 + 176) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5672E58(v4);
  *(v4 + 160) = Strong;
  return sub_1C5670668;
}

void sub_1C5670668(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  v5 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    v6 = *(*a1 + 160);
    swift_unknownObjectRetain();
    sub_1C5623A68(v2);
    v7 = swift_unknownObjectWeakAssign();
    sub_1C5672E88(v7, (v2 + 10));
    sub_1C5623B40((v2 + 10), v8);
    sub_1C5672E58(v2);
    sub_1C5672D28();
    swift_unknownObjectRelease();
    v9 = v2[20];
  }

  else
  {
    sub_1C5623A68(*a1);
    v10 = swift_unknownObjectWeakAssign();
    sub_1C5672E88(v10, (v2 + 10));
    sub_1C5623B40((v2 + 10), v11);
    sub_1C5672E58(v2);
    sub_1C5672D28();
  }

  swift_unknownObjectRelease();

  free(v2);
}

uint64_t sub_1C5670790()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = v4[1];
  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C5670858(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = a1;
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

uint64_t sub_1C56708B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

void (*sub_1C5670968(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 8);
  sub_1C5672E58(v4);
  *(v4 + 160) = v5;
  return sub_1C56709FC;
}

void sub_1C56709FC(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 160);
  v2 = *(*a1 + 168);
  sub_1C5623A68(*a1);
  v1[1] = v3;
  sub_1C5672E88(v1, (v1 + 10));
  sub_1C5623B40((v1 + 10), v4);
  sub_1C5672E58(v1);

  free(v1);
}

uint64_t sub_1C5670A64()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = v4[2];

  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C5670AB4(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1C56466CC(v4, v10, &unk_1EC16E850, &unk_1C586A298);
      sub_1C56250A4(v10, v9);
      sub_1C5625230(v10, &unk_1EC16E850, &unk_1C586A298);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C56260B4(v9);
      if (Strong)
      {
        [Strong _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
        swift_unknownObjectRelease();
      }

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  v6 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v10);

  v11 = a1;
  sub_1C5672E88(v10, v9);
  sub_1C5623B40(v9, v7);
  return sub_1C5672E58(v10);
}

void (*sub_1C5670BC0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = *(v4 + 16);

  sub_1C5672E58(v4);
  *(v4 + 80) = v6;
  return sub_1C5670C5C;
}

void sub_1C5670C5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    sub_1C5670AB4(v5);
    v6 = *v3;
  }

  else
  {
    sub_1C5670AB4(*v3);
  }

  free(v2);
}

uint64_t sub_1C5670CC0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v6);
  v4 = v6[3];
  result = sub_1C5672E58(v6);
  *a1 = v4;
  return result;
}

uint64_t sub_1C5670D0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = v2;
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

void (*sub_1C5670D68(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 24);
  sub_1C5672E58(v4);
  *(v4 + 168) = v5;
  return sub_1C5670DFC;
}

void sub_1C5670DFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  v3 = *(*a1 + 168);
  sub_1C5623A68(*a1);
  v1[3] = v3;
  sub_1C5672E88(v1, (v1 + 10));
  sub_1C5623B40((v1 + 10), v4);
  sub_1C5672E58(v1);

  free(v1);
}

uint64_t sub_1C5670ECC()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C5724078();
  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C5670FAC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C57240E4(a1);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

uint64_t sub_1C5671024@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

void (*sub_1C56710D8(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724078();
  sub_1C5672E58(v4);
  *(v4 + 160) = v5;
  return sub_1C5671174;
}

void sub_1C5671174(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  v3 = *(*a1 + 168);
  sub_1C5623A68(*a1);
  sub_1C57240E4(v2);
  sub_1C5672E88(v1, v1 + 80);
  sub_1C5623B40(v1 + 80, v4);
  sub_1C5672E58(v1);

  free(v1);
}

uint64_t sub_1C5671254()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C572470C();
  sub_1C5672E58(v4);
  return v2 & 1;
}

uint64_t sub_1C5671334(char a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C5724738(a1);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

uint64_t sub_1C56713AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C5671464(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C572470C();
  sub_1C5672E58(v4);
  *(v4 + 168) = v5 & 1;
  return sub_1C5671504;
}

void sub_1C5671504(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 168);
  v3 = *(*a1 + 160);
  sub_1C5623A68(*a1);
  sub_1C5724738(v2);
  sub_1C5672E88(v1, v1 + 80);
  sub_1C5623B40(v1 + 80, v4);
  sub_1C5672E58(v1);

  free(v1);
}

float sub_1C56715F0()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C57246C0();
  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C56716E0(float a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C5724750(a1);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

void (*sub_1C5671824(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C57246C0();
  sub_1C5672E58(v4);
  *(v4 + 168) = v5;
  return sub_1C56718C8;
}

void sub_1C56718C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 168);
  v3 = *(*a1 + 160);
  sub_1C5623A68(*a1);
  sub_1C5724750(v2);
  sub_1C5672E88(v1, v1 + 80);
  sub_1C5623B40(v1 + 80, v4);
  sub_1C5672E58(v1);

  free(v1);
}

uint64_t sub_1C567194C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v6);
  v4 = v6[4];
  result = sub_1C5672E58(v6);
  *a1 = v4;
  return result;
}

uint64_t sub_1C5671998(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = v2;
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

void (*sub_1C56719F4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 32);
  sub_1C5672E58(v4);
  *(v4 + 168) = v5;
  return sub_1C5671A88;
}

void sub_1C5671A88(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  v3 = *(*a1 + 168);
  sub_1C5623A68(*a1);
  v1[4] = v3;
  sub_1C5672E88(v1, (v1 + 10));
  sub_1C5623B40((v1 + 10), v4);
  sub_1C5672E58(v1);

  free(v1);
}

uint64_t sub_1C5671B58()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C57243F4();
  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C5671C38(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C572440C(a1);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

uint64_t sub_1C5671CB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

void (*sub_1C5671D74(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C57243F4();
  sub_1C5672E58(v4);
  *(v4 + 160) = v5;
  return sub_1C5671E10;
}

void sub_1C5671E10(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  v3 = *(*a1 + 168);
  sub_1C5623A68(*a1);
  sub_1C572440C(v2);
  sub_1C5672E88(v1, v1 + 80);
  sub_1C5623B40(v1 + 80, v4);
  sub_1C5672E58(v1);

  free(v1);
}

uint64_t sub_1C5671EF0()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C5724830();
  sub_1C5672E58(v4);
  return v2 & 1;
}

uint64_t sub_1C5671FD0(char a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C5724854(a1);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

uint64_t sub_1C5672048@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C5672110(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724830();
  sub_1C5672E58(v4);
  *(v4 + 168) = v5 & 1;
  return sub_1C56721B0;
}

void sub_1C56721B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 168);
  v3 = *(*a1 + 160);
  sub_1C5623A68(*a1);
  sub_1C5724854(v2);
  sub_1C5672E88(v1, v1 + 80);
  sub_1C5623B40(v1 + 80, v4);
  sub_1C5672E58(v1);

  free(v1);
}

float sub_1C567229C()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C5724800();
  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C567238C(float a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C57248B8(a1);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

void (*sub_1C56724D0(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724800();
  sub_1C5672E58(v4);
  *(v4 + 168) = v5;
  return sub_1C5672574;
}

void sub_1C5672574(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 168);
  v3 = *(*a1 + 160);
  sub_1C5623A68(*a1);
  sub_1C57248B8(v2);
  sub_1C5672E88(v1, v1 + 80);
  sub_1C5623B40(v1 + 80, v4);
  sub_1C5672E58(v1);

  free(v1);
}

double sub_1C5672654()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = *&v4[5];
  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C5672724(double a1)
{
  v3 = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = a1;
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5672E58(v7);
}

void (*sub_1C567284C(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 40);
  sub_1C5672E58(v4);
  *(v4 + 160) = v5;
  return sub_1C56728E8;
}

void sub_1C56728E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  v3 = *(*a1 + 168);
  sub_1C5623A68(*a1);
  v1[5] = v2;
  sub_1C5672E88(v1, (v1 + 10));
  sub_1C5623B40((v1 + 10), v4);
  sub_1C5672E58(v1);

  free(v1);
}

double sub_1C56729C8()
{
  v1 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = *&v4[6];
  sub_1C5672E58(v4);
  return v2;
}

uint64_t sub_1C5672AC8(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v13);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_1C5672E88(v13, v12);
  sub_1C5623B40(v12, v10);
  return sub_1C5672E58(v13);
}

void sub_1C5672B44(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1C5672C10(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 192) = *(v1 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = v4[3];
  v7 = v4[4];
  sub_1C5672E58(v4);
  v4[10] = v6;
  v4[11] = v7;
  return sub_1C5672CB4;
}

void sub_1C5672CB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 192);
  v4 = *(*a1 + 176);
  v5 = *(*a1 + 160);
  sub_1C5623A68(*a1);
  v1[3] = v5;
  v1[4] = v4;
  sub_1C5672E88(v1, (v1 + 5));
  sub_1C5623B40((v1 + 5), v3);
  sub_1C5672E58(v1);

  free(v1);
}

void sub_1C5672D28()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v2 = v1();
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v7 = v3;
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    v2 = swift_unknownObjectRelease();
  }

  if ((v1)(v2))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v7 = [v4 owningView];
      swift_unknownObjectRelease();
      v5 = v7;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0;
LABEL_10:
  v6 = *(v0 + OBJC_IVAR___MUStackLayoutInternal_builder);
  sub_1C571ACC0(v7);
}

uint64_t sub_1C5672EC0()
{
  v1 = v0;
  sub_1C56250A4(v0, v39);
  v39[16] = 0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v25 = v0;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C5675B20(0, v3, 0);
    v5 = v38;
    v6 = v2 + 32;
    do
    {
      sub_1C56466CC(v6, v26, &unk_1EC16E850, &unk_1C586A298);
      sub_1C56250A4(v26, v36);
      v37 = 0;
      v7 = v27;
      v8 = v28;
      v9 = v29;
      v10 = v30;
      v11 = v31;
      v12 = v32;
      v35 = v33;
      sub_1C5633434();
      sub_1C563E43C(v36, &v35, &type metadata for LayoutItemSpecification, v34, v7, v8, v9, v10, v11, v12);
      sub_1C5625230(v26, &unk_1EC16E850, &unk_1C586A298);
      v38 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C5675B20((v13 > 1), v14 + 1, 1);
        v5 = v38;
      }

      *(v5 + 16) = v14 + 1;
      sub_1C56534F4(v34, v5 + 80 * v14 + 32, &unk_1EC16E860, &qword_1C5868750);
      v6 += 64;
      --v3;
    }

    while (v3);
    v4 = MEMORY[0x1E69E7CC0];
    v1 = v25;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1C5625EE8(v39, v26);
  v15 = *(v1 + 1);
  v36[0] = v1[3];
  v16 = v1[5];
  v17 = v1[6];
  v18 = v1[7];
  v19 = v1[8];
  v20 = v1[9];

  sub_1C565297C(v26, v15, v5, v36, v34, v16, v17, v18, v19, v20);
  sub_1C5625EE8(v39, v36);
  v21 = sub_1C570FBF0(v15);
  v38 = *(v1 + 4);
  sub_1C5688A00(v36, v21, v5, &v38, v26, v17, v18, v19, v20);
  v36[0] = v4;
  v22 = sub_1C564CD3C();
  sub_1C5650E8C(v22);
  v23 = sub_1C5687648();
  sub_1C5650E8C(v23);
  sub_1C5675B40(v26);
  sub_1C5675B94(v34);
  sub_1C5626250(v39);
  return v36[0];
}

uint64_t sub_1C567315C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
      do
      {
        sub_1C56466CC(v3, v8, &unk_1EC16E850, &unk_1C586A298);
        sub_1C56466CC(v4, v7, &unk_1EC16E850, &unk_1C586A298);
        sub_1C5676C80(&qword_1ED77E8B8);
        v5 = sub_1C584F620();
        sub_1C5625230(v7, &unk_1EC16E850, &unk_1C586A298);
        sub_1C5625230(v8, &unk_1EC16E850, &unk_1C586A298);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 64;
        v4 += 64;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C5673298()
{
  sub_1C5662408();
  sub_1C584F5F0();
  MEMORY[0x1C694A560](*(v0 + 8));
  v1 = *(v0 + 16);
  MEMORY[0x1C694A560](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1C56466CC(v3, v7, &unk_1EC16E850, &unk_1C586A298);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
      sub_1C5676C80(&unk_1EC16E870);
      sub_1C584F5F0();
      sub_1C5625230(v7, &unk_1EC16E850, &unk_1C586A298);
      v3 += 64;
      --v2;
    }

    while (v2);
  }

  *&v7[0] = *(v0 + 24);
  sub_1C5653140();
  sub_1C584F5F0();
  *&v7[0] = *(v0 + 32);
  sub_1C56760A0();
  sub_1C584F5F0();
  v4 = *(v0 + 40);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1C694A590](*&v4);
  v5 = *(v0 + 64);
  v7[0] = *(v0 + 48);
  v7[1] = v5;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5676C38(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C567346C()
{
  sub_1C584FEA0();
  sub_1C5673298();
  return sub_1C584FEF0();
}

uint64_t sub_1C56734B0()
{
  sub_1C584FEA0();
  sub_1C5673298();
  return sub_1C584FEF0();
}

id StackLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StackLayout.arrangedLayoutItems.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  v11 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C56466CC(v3, v10, &unk_1EC16E850, &unk_1C586A298);
      sub_1C56250A4(v10, &v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C56260B4(&v9);
      v6 = sub_1C5625230(v10, &unk_1EC16E850, &unk_1C586A298);
      if (Strong)
      {
        MEMORY[0x1C6949DF0](v6);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v4 = v11;
      }

      v3 += 64;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t StackLayout.arrangedLayoutItems.setter(unint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))();
  result = a1;
  if (a1 >> 62)
  {
LABEL_22:
    v24 = result;
    v6 = sub_1C584FB90();
    result = v24;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:

    v8 = MEMORY[0x1E69E7CC0];
    return (*((*v3 & *v1) + 0xA8))(v8);
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v25 = v1;
    v7 = 0;
    v1 = (result & 0xC000000000000001);
    v26 = result + 32;
    v27 = result;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v1)
      {
        MEMORY[0x1C694A320](v7, v27);
      }

      else
      {
        v9 = *(v26 + 8 * v7);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      sub_1C56236C4();
      v10 = *(v4 + 16);
      if (v10)
      {
        v3 = 0;
        v11 = v4 + 32;
        while (1)
        {
          result = sub_1C5623E2C(v11, v31);
          if (result)
          {
            break;
          }

          v3 = (v3 + 1);
          v11 += 64;
          if (v10 == v3)
          {
            goto LABEL_12;
          }
        }

        if (v3 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        sub_1C56466CC(v11, v30, &unk_1EC16E850, &unk_1C586A298);
      }

      else
      {
LABEL_12:
        sub_1C56250A4(v31, v29);
        sub_1C5662408();
        v12 = sub_1C563E40C();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = sub_1C563E420();
        v21 = v20;
        sub_1C563E430(&v28);
        sub_1C563E43C(v29, &v28, &type metadata for AnyWeakLayoutItem, v30, v12, v14, v16, v18, v19, v21);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1C56759A0(0, v8[2] + 1, 1, v8);
      }

      v23 = v8[2];
      v22 = v8[3];
      if (v23 >= v22 >> 1)
      {
        v8 = sub_1C56759A0((v22 > 1), v23 + 1, 1, v8);
      }

      swift_unknownObjectRelease();
      v8[2] = v23 + 1;
      sub_1C56534F4(v30, &v8[8 * v23 + 4], &unk_1EC16E850, &unk_1C586A298);
      ++v7;
      sub_1C56260B4(v31);
      if (v7 == v6)
      {

        v1 = v25;
        v3 = MEMORY[0x1E69E7D40];
        return (*((*v3 & *v1) + 0xA8))(v8);
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C5673AF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 arrangedLayoutItems];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v4 = sub_1C584F770();

  *a2 = v4;
}

void sub_1C5673B64(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v4 = sub_1C584F750();
  [v3 setArrangedLayoutItems_];
}

uint64_t StackLayout.addArrangedLayoutItem(_:)()
{
  swift_unknownObjectRetain();
  v1 = sub_1C56236C4();
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v1);
  v4 = v3 + 32;
  v5 = -*(v3 + 16);
  v6 = -1;
  v7 = &unk_1EC16E850;
  while (v5 + v6 != -1)
  {
    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = v4 + 64;
    sub_1C56466CC(v4, v27, &unk_1EC16E850, &unk_1C586A298);
    v9 = sub_1C5623E2C(v27, v28);
    sub_1C5625230(v27, &unk_1EC16E850, &unk_1C586A298);
    v4 = v8;
    if (v9)
    {

      return sub_1C56260B4(v28);
    }
  }

  sub_1C56250A4(v28, v25);
  sub_1C5662408();
  v10 = sub_1C563E40C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1C563E420();
  v19 = v18;
  sub_1C563E430(&v26);
  sub_1C563E43C(v25, &v26, &type metadata for AnyWeakLayoutItem, v27, v10, v12, v14, v16, v17, v19);
  v3 = (*((*v2 & *v0) + 0xB0))(v25);
  v0 = v20;
  v7 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_12:
  v7 = sub_1C56759A0(0, v7[2] + 1, 1, v7);
  *v0 = v7;
LABEL_7:
  v23 = v7[2];
  v22 = v7[3];
  if (v23 >= v22 >> 1)
  {
    v7 = sub_1C56759A0((v22 > 1), v23 + 1, 1, v7);
    *v0 = v7;
  }

  v7[2] = v23 + 1;
  sub_1C56534F4(v27, &v7[8 * v23 + 4], &unk_1EC16E850, &unk_1C586A298);
  (v3)(v25, 0);
  return sub_1C56260B4(v28);
}

int64_t StackLayout.removeArrangedLayoutItem(_:)()
{
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v6);
  v3 = v2;
  result = sub_1C5675D78(sub_1C5676118);
  v5 = *(*v3 + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C5676238(result, v5);
    v1(v6, 0);
    return sub_1C56260B4(v7);
  }

  return result;
}

uint64_t sub_1C567407C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1C56466CC(v7, v9, &unk_1EC16E850, &unk_1C586A298);
      v8 = v6(v9);
      if (v3)
      {
        return sub_1C5625230(v9, &unk_1EC16E850, &unk_1C586A298);
      }

      if (v8)
      {
        return sub_1C56534F4(v9, a3, &unk_1EC16E850, &unk_1C586A298);
      }

      result = sub_1C5625230(v9, &unk_1EC16E850, &unk_1C586A298);
      v7 += 64;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = 0;
    *(a3 + 56) = 2147483646;
  }

  return result;
}

uint64_t sub_1C5674184(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  v4 = sub_1C56236C4();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v4);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    while (1)
    {
      v10 = sub_1C5676CD0(v9);
      if (v10)
      {
        break;
      }

      ++v8;
      v9 += 64;
      if (v7 == v8)
      {
        v8 = 0;
        break;
      }
    }

    v11 = v10 ^ 1;
  }

  else
  {
    v8 = 0;
    v11 = 1;
  }

  v12 = v11 & 1;

  if (v12)
  {
    sub_1C5625230(a1, &unk_1EC16E890, &qword_1C586A2A8);
    swift_unknownObjectRelease();
    return sub_1C56260B4(v36);
  }

  sub_1C56466CC(a1, v33, &unk_1EC16E890, &qword_1C586A2A8);
  if ((v34 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C5625230(v33, &unk_1EC16E890, &qword_1C586A2A8);
    sub_1C56250A4(v36, v33);
    sub_1C5662408();
    v13 = sub_1C563E40C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_1C563E420();
    v22 = v21;
    sub_1C563E430(&v32);
    sub_1C563E43C(v33, &v32, &type metadata for AnyWeakLayoutItem, v35, v13, v15, v17, v19, v20, v22);
    v23 = (*((*v5 & *v2) + 0xB0))(v33);
    v25 = v24;
    v26 = *v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v26;
    if (result)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_1C5675FC4(v26);
      v26 = result;
      *v25 = result;
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_13:
        if (v8 < v26[2])
        {
          sub_1C56762F8(v35, &v26[8 * v8 + 4]);
          v23(v33, 0);
          swift_unknownObjectRelease();
          v28 = &unk_1EC16E890;
          v29 = &qword_1C586A2A8;
          v30 = a1;
LABEL_19:
          sub_1C5625230(v30, v28, v29);
          return sub_1C56260B4(v36);
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    result = sub_1C5675FC4(v26);
    v26 = result;
    *v25 = result;
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  sub_1C56534F4(v33, v35, &unk_1EC16E850, &unk_1C586A298);
  v23 = (*((*v5 & *v2) + 0xB0))(v33);
  v25 = v31;
  v26 = *v31;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_17:
  if (v8 < v26[2])
  {
    sub_1C5676368(v35, &v26[8 * v8 + 4]);
    v23(v33, 0);
    swift_unknownObjectRelease();
    sub_1C5625230(a1, &unk_1EC16E890, &qword_1C586A2A8);
    v28 = &unk_1EC16E850;
    v29 = &unk_1C586A298;
    v30 = v35;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

double StackLayout.padding(forArrangedLayoutItem:)()
{
  swift_unknownObjectRetain();
  v1 = sub_1C56236C4();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v1);
  sub_1C567407C(sub_1C5676CD0, v2, v10);

  sub_1C56260B4(v9);
  if ((v12[6] & 0xFFFFFFFE) == 0x7FFFFFFELL)
  {
    v3 = *MEMORY[0x1E69DC5C0];
    v4 = *(MEMORY[0x1E69DC5C0] + 8);
    v5 = (MEMORY[0x1E69DC5C0] + 24);
    v6 = *(MEMORY[0x1E69DC5C0] + 16);
  }

  else
  {
    v3 = v11;
    v5 = v12;
  }

  v7 = *v5;
  sub_1C5625230(v10, &unk_1EC16E890, &qword_1C586A2A8);
  return v3;
}

uint64_t StackLayout.setPadding(_:forArrangedLayoutItem:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectRetain();
  v9 = sub_1C56236C4();
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA0))(v9);
  sub_1C567407C(sub_1C5676CD0, v10, v13);

  sub_1C56260B4(v12);
  if ((v18 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56466CC(v13, v12, &unk_1EC16E890, &qword_1C586A2A8);
    swift_unknownObjectRetain();
    sub_1C5674184(v12);
    return sub_1C5625230(v13, &unk_1EC16E890, &qword_1C586A2A8);
  }

  else
  {
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    swift_unknownObjectRetain();
    return sub_1C5674184(v13);
  }
}

double StackLayout.offset(forArrangedLayoutItem:)()
{
  swift_unknownObjectRetain();
  v1 = sub_1C56236C4();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v1);
  sub_1C567407C(sub_1C5676CD0, v2, v10);

  sub_1C56260B4(v9);
  v3 = v12 & 0xFFFFFFFE;
  v4 = *MEMORY[0x1E69DE258];
  v5 = *(MEMORY[0x1E69DE258] + 8);
  if (v3 == 2147483646)
  {
    v6 = *MEMORY[0x1E69DE258];
  }

  else
  {
    v6 = v11;
  }

  if (v3 == 2147483646)
  {
    v7 = *(MEMORY[0x1E69DE258] + 8);
  }

  sub_1C5625230(v10, &unk_1EC16E890, &qword_1C586A2A8);
  return v6;
}

uint64_t StackLayout.setOffset(_:forArrangedLayoutItem:)(double a1, double a2)
{
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))(v5);
  sub_1C567407C(sub_1C5676CD0, v6, v9);

  sub_1C56260B4(v8);
  if ((v12 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56466CC(v9, v8, &unk_1EC16E890, &qword_1C586A2A8);
    swift_unknownObjectRetain();
    sub_1C5674184(v8);
    return sub_1C5625230(v9, &unk_1EC16E890, &qword_1C586A2A8);
  }

  else
  {
    v10 = a1;
    v11 = a2;
    swift_unknownObjectRetain();
    return sub_1C5674184(v9);
  }
}

uint64_t *sub_1C5674C30@<X0>(uint64_t *a1@<X8>)
{
  swift_unknownObjectRetain();
  v3 = sub_1C56236C4();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v3);
  sub_1C567407C(sub_1C5676CD0, v5, v10);

  sub_1C56260B4(&v9);
  v6 = v11;
  v7 = v11 & 0xFFFFFFFE;
  result = sub_1C5625230(v10, &unk_1EC16E890, &qword_1C586A2A8);
  if (v7 == 2147483646)
  {
    *a1 = 4294967294;
  }

  else
  {
    v10[0] = v6;
    (*((*v4 & *v1) + 0x118))(&v9, result);
    return sub_1C5724040(&v9, a1);
  }

  return result;
}

uint64_t sub_1C5674E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v6 = sub_1C56236C4();
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA0))(v6);
  sub_1C567407C(a2, v7, v10);

  sub_1C56260B4(v9);
  if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56466CC(v10, v9, &unk_1EC16E890, &qword_1C586A2A8);
    swift_unknownObjectRetain();
    sub_1C5674184(v9);
    return sub_1C5625230(v10, &unk_1EC16E890, &qword_1C586A2A8);
  }

  else
  {
    v11 = a3;
    swift_unknownObjectRetain();
    return sub_1C5674184(v10);
  }
}

void sub_1C5674F6C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t StackLayout.alignmentKind(forArrangedLayoutItem:)()
{
  v1 = sub_1C5674C30(&v4);
  v2 = v4;
  if ((~v4 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(&v5, v1);
    v2 = v5;
  }

  v5 = v2;
  return sub_1C57243F4();
}

uint64_t StackLayout.setAlignmentKind(_:forArrangedLayoutItem:)(uint64_t a1)
{
  v3 = sub_1C5674C30(v10);
  v4 = MEMORY[0x1E69E7D40];
  if ((~LODWORD(v10[0]) & 0xFFFFFFFE) != 0)
  {
    v12 = v10[0];
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x118))(&v12, v3);
  }

  sub_1C572440C(a1);
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = (*((*v4 & *v1) + 0xA0))(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1C567407C(sub_1C5676CD0, v6, v10);

  sub_1C56260B4(v9);
  if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56466CC(v10, v9, &unk_1EC16E890, &qword_1C586A2A8);
    swift_unknownObjectRetain();
    sub_1C5674184(v9);
    return sub_1C5625230(v10, &unk_1EC16E890, &qword_1C586A2A8);
  }

  else
  {
    v11 = v12;
    swift_unknownObjectRetain();
    return sub_1C5674184(v10);
  }
}

uint64_t StackLayout.alignmentBoundsContent(forArrangedLayoutItem:)()
{
  sub_1C5674C30(&v2);
  if ((~v2 & 0xFFFFFFFE) != 0)
  {
    v0 = sub_1C5724830();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t *StackLayout.setAlignmentBoundsContent(_:forArrangedLayoutItem:)(char a1)
{
  result = sub_1C5674C30(v8);
  if ((~LODWORD(v8[0]) & 0xFFFFFFFE) != 0)
  {
    v10 = v8[0];
    sub_1C5724854(a1 & 1);
    swift_unknownObjectRetain();
    v4 = sub_1C56236C4();
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v4);
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1C567407C(sub_1C5676CD0, v5, v8);

    sub_1C56260B4(v7);
    if ((v9 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56466CC(v8, v7, &unk_1EC16E890, &qword_1C586A2A8);
      swift_unknownObjectRetain();
      sub_1C5674184(v7);
      return sub_1C5625230(v8, &unk_1EC16E890, &qword_1C586A2A8);
    }

    else
    {
      v9 = v10;
      swift_unknownObjectRetain();
      return sub_1C5674184(v8);
    }
  }

  return result;
}

float StackLayout.alignmentFittingSizePriority(forArrangedLayoutItem:)()
{
  sub_1C5674C30(&v1);
  result = 0.0;
  if ((~v1 & 0xFFFFFFFE) != 0)
  {
    return sub_1C5724800();
  }

  return result;
}

uint64_t *StackLayout.setAlignmentFittingSizePriority(_:forArrangedLayoutItem:)(float a1)
{
  result = sub_1C5674C30(v8);
  if ((~LODWORD(v8[0]) & 0xFFFFFFFE) != 0)
  {
    v10 = v8[0];
    sub_1C57248B8(a1);
    swift_unknownObjectRetain();
    v4 = sub_1C56236C4();
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v4);
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1C567407C(sub_1C5676CD0, v5, v8);

    sub_1C56260B4(v7);
    if ((v9 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56466CC(v8, v7, &unk_1EC16E890, &qword_1C586A2A8);
      swift_unknownObjectRetain();
      sub_1C5674184(v7);
      return sub_1C5625230(v8, &unk_1EC16E890, &qword_1C586A2A8);
    }

    else
    {
      v9 = v10;
      swift_unknownObjectRetain();
      return sub_1C5674184(v8);
    }
  }

  return result;
}

void *sub_1C56759A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E8A0, &unk_1C586A3D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5675B20(void *a1, int64_t a2, char a3)
{
  result = sub_1C5675BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C5675BE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8B8, &qword_1C586A3E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C5675D78(uint64_t (*a1)(void *))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 12; ; i += 8)
    {
      result = a1(&v4[i - 8]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v10 = v1 + 1;
        if (!__OFADD__(v1, 1))
        {
          v11 = *v5;
          if (v10 == *v5)
          {
            return v1;
          }

          while (v10 < v11)
          {
            v17 = v4;
            sub_1C56466CC(&v4[i], v16, &unk_1EC16E850, &unk_1C586A298);
            v12 = a1(v16);
            result = sub_1C5625230(v16, &unk_1EC16E850, &unk_1C586A298);
            if (v12)
            {
              v4 = v17;
            }

            else
            {
              if (v10 == v1)
              {
                v4 = v17;
              }

              else
              {
                v4 = v17;
                if ((v1 & 0x8000000000000000) != 0)
                {
                  goto LABEL_29;
                }

                v13 = *v5;
                if (v1 >= *v5)
                {
                  goto LABEL_30;
                }

                result = sub_1C56466CC(&v17[8 * v1 + 4], v16, &unk_1EC16E850, &unk_1C586A298);
                if (v10 >= v13)
                {
                  goto LABEL_31;
                }

                sub_1C56466CC(&v4[i], v15, &unk_1EC16E850, &unk_1C586A298);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_1C5675FC4(v4);
                }

                result = sub_1C56762F8(v15, &v4[8 * v1 + 4]);
                if (v10 >= v4[2])
                {
                  goto LABEL_32;
                }

                result = sub_1C56762F8(v16, &v4[i]);
                *v14 = v4;
              }

              ++v1;
            }

            ++v10;
            v5 = (v4 + 2);
            v11 = v4[2];
            i += 8;
            if (v10 == v11)
            {
              return v1;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        __break(1u);
        return result;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_1C5675FD8(uint64_t a1, uint64_t a2)
{
  if (sub_1C5623E2C(a1, a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && (sub_1C567315C(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (v4 = *(a1 + 24), v8 = *(a2 + 24), v9 = v4, (static StackLayout.Distribution.== infix(_:_:)(&v9, &v8)) && (v5 = *(a1 + 32), v8 = *(a2 + 32), v9 = v5, (static StackLayout.Alignment.== infix(_:_:)(&v9, &v8)) && *(a1 + 40) == *(a2 + 40))
  {
    v6 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64)))));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1C56760A0()
{
  result = qword_1EC16E880;
  if (!qword_1EC16E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E880);
  }

  return result;
}

unint64_t sub_1C5676148(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = *v3 + 32;
  v9 = v8 + (result << 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = v9 + (a3 << 6);
  v13 = v8 + (a2 << 6);
  if (result < v13 || result >= v13 + ((v12 - a2) << 6))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v13)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v15 = *(v7 + 16);
  v10 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v10)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v16;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5676238(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1C56759A0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1C5676148(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1C56762F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5676368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E850, &unk_1C586A298);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C56763D8(uint64_t a1)
{
  result = sub_1C5676400();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5676400()
{
  result = qword_1ED77E8C8;
  if (!qword_1ED77E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8C8);
  }

  return result;
}

unint64_t sub_1C5676458()
{
  result = qword_1ED77E8C0;
  if (!qword_1ED77E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8C0);
  }

  return result;
}

uint64_t sub_1C5676B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C5676BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5676C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5676C80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC16E850, &unk_1C586A298);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id SizeLayout.__allocating_init(item:width:height:priority:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, float a6)
{
  v13 = objc_allocWithZone(v6);
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8C0, &unk_1C586A3E8);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v18 = a2;
  v19 = a3 & 1;
  v20 = a4;
  v21 = a5 & 1;
  v22 = a6;
  *&v13[OBJC_IVAR___MUSizeLayoutInternal_builder] = sub_1C562370C(v17);

  v15 = sub_1C562389C(v14, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v15;
}

id SizeLayout.init(item:width:height:priority:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, float a6)
{
  v7 = v6;
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8C0, &unk_1C586A3E8);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v17 = a2;
  v18 = a3 & 1;
  v19 = a4;
  v20 = a5 & 1;
  v21 = a6;
  *(v7 + OBJC_IVAR___MUSizeLayoutInternal_builder) = sub_1C562370C(v16);

  v14 = sub_1C562389C(v13, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v14;
}

id SizeLayout.__allocating_init(item:size:)(uint64_t a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  LODWORD(v8) = 1148846080;
  v9 = [v7 initWithItem:a1 size:a2 priority:{a3, v8}];
  swift_unknownObjectRelease();
  return v9;
}

id SizeLayout.init(item:size:)(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a4) = 1148846080;
  v5 = [v4 initWithItem:a1 size:a2 priority:{a3, a4}];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t SizeLayout.__allocating_init(item:size:priority:)(uint64_t a1, double a2, double a3, float a4)
{
  v9 = objc_allocWithZone(v4);
  if (a2 == -1.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a2;
  }

  if (a3 == -1.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = a3;
  }

  ObjectType = swift_getObjectType();
  v13 = (*(ObjectType + 104))(a1, COERCE_DOUBLE(*&v10), a2 == -1.0, COERCE_DOUBLE(*&v11), a3 == -1.0, a4);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t SizeLayout.init(item:size:priority:)(uint64_t a1, double a2, double a3, float a4)
{
  v6 = a2 == -1.0;
  if (a2 == -1.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  v8 = a3 == -1.0;
  if (a3 == -1.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a3;
  }

  ObjectType = swift_getObjectType();
  v11 = (*(ObjectType + 104))(a1, COERCE_DOUBLE(*&v7), v6, COERCE_DOUBLE(*&v9), v8, a4);
  swift_deallocPartialClassInstance();
  return v11;
}

uint64_t sub_1C5677278()
{
  v1 = *(v0 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C56772C8(v4);
  return Strong;
}

uint64_t sub_1C5677390(id a1)
{
  if (a1)
  {
    [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v2 = *(v1 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v6);
  swift_unknownObjectWeakAssign();
  sub_1C5677410(v6, v5);
  sub_1C5623B40(v5, v3);
  swift_unknownObjectRelease();
  return sub_1C56772C8(v6);
}

uint64_t sub_1C5677448@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C56774A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C5677508(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = *(v1 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C56772C8(v4);
  *(v4 + 80) = Strong;
  return sub_1C56775A4;
}

void sub_1C56775A4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*a1 + 80);
      [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    v5 = v2[11];
    sub_1C5623A68(v2);
    v6 = swift_unknownObjectWeakAssign();
    sub_1C5677410(v6, (v2 + 5));
    sub_1C5623B40((v2 + 5), v7);
    swift_unknownObjectRelease();
    sub_1C56772C8(v2);
    v8 = v2[10];
    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      [*(*a1 + 80) _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    v9 = v2[11];
    sub_1C5623A68(v2);
    v10 = swift_unknownObjectWeakAssign();
    sub_1C5677410(v10, (v2 + 5));
    sub_1C5623B40((v2 + 5), v11);
    swift_unknownObjectRelease();
    sub_1C56772C8(v2);
  }

  free(v2);
}

uint64_t sub_1C5677694()
{
  v1 = *(v0 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = v5;
  sub_1C56772C8(v4);
  return v2;
}

uint64_t sub_1C56776E4(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v9);
  v10 = a1;
  v11 = a2 & 1;
  sub_1C5677410(v9, v8);
  sub_1C5623B40(v8, v6);
  return sub_1C56772C8(v9);
}

void (*sub_1C5677754(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = *(v1 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  sub_1C56772C8(v4);
  *(v4 + 80) = v5;
  *(v4 + 88) = v6;
  return sub_1C56777F0;
}

void sub_1C56777F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  sub_1C5623A68(*a1);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  sub_1C5677410(v1, v1 + 40);
  sub_1C5623B40(v1 + 40, v5);
  sub_1C56772C8(v1);

  free(v1);
}

uint64_t sub_1C5677864()
{
  v1 = *(v0 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = v5;
  sub_1C56772C8(v4);
  return v2;
}

uint64_t sub_1C56778B4(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v9);
  v10 = a1;
  v11 = a2 & 1;
  sub_1C5677410(v9, v8);
  sub_1C5623B40(v8, v6);
  return sub_1C56772C8(v9);
}

void (*sub_1C5677924(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = *(v1 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  sub_1C56772C8(v4);
  *(v4 + 80) = v5;
  *(v4 + 88) = v6;
  return sub_1C56779C0;
}

void sub_1C56779C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  sub_1C5623A68(*a1);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  sub_1C5677410(v1, v1 + 40);
  sub_1C5623B40(v1 + 40, v5);
  sub_1C56772C8(v1);

  free(v1);
}

double sub_1C5677B00()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))());
  if (v3)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = v2;
  }

  (*((*v1 & *v0) + 0xA0))();
  return v4;
}

uint64_t sub_1C5677C04(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v12);
  v6 = a1;
  if (a1 == -1.0)
  {
    v6 = 0.0;
  }

  v13 = v6;
  v14 = a1 == -1.0;
  v7 = a2;
  if (a2 == -1.0)
  {
    v7 = 0.0;
  }

  v15 = v7;
  v16 = a2 == -1.0;
  sub_1C5677410(v12, v11);
  sub_1C5677410(v11, v10);
  sub_1C5623B40(v10, v8);
  sub_1C56772C8(v11);
  return sub_1C56772C8(v12);
}

uint64_t (*sub_1C5677D64(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))());
  if (v5)
  {
    v6 = -1.0;
  }

  else
  {
    v6 = v4;
  }

  v7 = COERCE_DOUBLE((*((*v3 & *v1) + 0xA0))());
  if (v8)
  {
    v7 = -1.0;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  return sub_1C5677E34;
}

float sub_1C5677EB8()
{
  v1 = *(v0 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = v5;
  sub_1C56772C8(v4);
  return v2;
}

uint64_t sub_1C5677F88(float a1)
{
  v3 = *(v1 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = a1;
  sub_1C5677410(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C56772C8(v7);
}

void (*sub_1C56780A0(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = *(v1 + OBJC_IVAR___MUSizeLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 36);
  sub_1C56772C8(v4);
  *(v4 + 88) = v5;
  return sub_1C567813C;
}

void sub_1C567813C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 80);
  sub_1C5623A68(*a1);
  v1[9] = v2;
  sub_1C5677410(v1, (v1 + 10));
  sub_1C5623B40((v1 + 10), v4);
  sub_1C56772C8(v1);

  free(v1);
}

void *sub_1C56781A8()
{
  if (*(v0 + 16))
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v16 = 1;
  }

  else
  {
    v1 = *(v0 + 8);
    sub_1C56250A4(v0, v12);
    v13 = 0;
    sub_1C5705704(v12, 7, 0, 0, 0, v14, v1, *(v0 + 36));
  }

  if (*(v0 + 32))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v19 = 1;
  }

  else
  {
    v2 = *(v0 + 24);
    sub_1C56250A4(v0, v12);
    v13 = 0;
    sub_1C5705704(v12, 8, 0, 0, 0, v17, v2, *(v0 + 36));
  }

  sub_1C5625648(v14, v12);
  sub_1C5625728(v12, v9);
  if (v10 == 1)
  {
    sub_1C56259B0(v9);
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C5625808(v9, v11);
    v3 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1C5625864(0, v3[2] + 1, 1, v3);
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1C5625864((v4 > 1), v5 + 1, 1, v3);
    }

    v3[2] = v5 + 1;
    sub_1C5625808(v11, &v3[14 * v5 + 4]);
  }

  sub_1C5625648(v17, v12);
  sub_1C5625728(v12, v9);
  if (v10 == 1)
  {
    sub_1C56259B0(v9);
  }

  else
  {
    sub_1C5625808(v9, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1C5625864(0, v3[2] + 1, 1, v3);
    }

    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1C5625864((v6 > 1), v7 + 1, 1, v3);
    }

    v3[2] = v7 + 1;
    sub_1C5625808(v11, &v3[14 * v7 + 4]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1C567843C()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  if (*(v0 + 16) == 1)
  {
    sub_1C584FEC0();
  }

  else
  {
    v1 = *(v0 + 8);
    sub_1C584FEC0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1C694A590](v2);
  }

  if (*(v0 + 32) == 1)
  {
    sub_1C584FEC0();
  }

  else
  {
    v3 = *(v0 + 24);
    sub_1C584FEC0();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C694A590](v4);
  }

  *(v0 + 36);
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5678534()
{
  sub_1C5662408();
  sub_1C584F5F0();
  if (*(v0 + 16) == 1)
  {
    sub_1C584FEC0();
  }

  else
  {
    v1 = *(v0 + 8);
    sub_1C584FEC0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1C694A590](v2);
  }

  if (*(v0 + 32) == 1)
  {
    sub_1C584FEC0();
  }

  else
  {
    v3 = *(v0 + 24);
    sub_1C584FEC0();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C694A590](v4);
  }

  *(v0 + 36);
  return sub_1C584FED0();
}

uint64_t sub_1C5678604()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  if (*(v0 + 16) == 1)
  {
    sub_1C584FEC0();
  }

  else
  {
    v1 = *(v0 + 8);
    sub_1C584FEC0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1C694A590](v2);
  }

  if (*(v0 + 32) == 1)
  {
    sub_1C584FEC0();
  }

  else
  {
    v3 = *(v0 + 24);
    sub_1C584FEC0();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C694A590](v4);
  }

  *(v0 + 36);
  sub_1C584FED0();
  return sub_1C584FEF0();
}

id SizeLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SizeLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1C5678778(uint64_t a1, uint64_t a2)
{
  if ((sub_1C5623E2C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return *(a1 + 36) == *(a2 + 36);
}

unint64_t sub_1C567882C(uint64_t a1)
{
  result = sub_1C5678854();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5678854()
{
  result = qword_1ED77E8D8;
  if (!qword_1ED77E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8D8);
  }

  return result;
}

unint64_t sub_1C56788AC()
{
  result = qword_1ED77E8D0;
  if (!qword_1ED77E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8D0);
  }

  return result;
}

uint64_t sub_1C5678B08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5678B28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1C5678B90@<X0>(uint64_t a1@<X8>)
{
  sub_1C584F480();
  result = sub_1C584F4B0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1C5678C0C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SwiftUICanary;
  result = sub_1C5678CFC();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1C5678CFC()
{
  result = qword_1EC16E8D0;
  if (!qword_1EC16E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E8D0);
  }

  return result;
}

uint64_t WatchPlaceDataAmenityItemViewModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WatchPlaceDataAmenityItemViewModel.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WatchPlaceDataAmenityItemViewModel.amenitySymbolName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WatchPlaceDataAmenityItemViewModel.ribbonSymbolName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void WatchPlaceDataAmenityItemViewModel.init(amenityItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 amenityTitle];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C584F660();
    v23 = v7;
    v24 = v6;

    v8 = a1;
    v9 = [v8 amenityID];
    v10 = sub_1C584F660();
    v12 = v11;

    v13 = [v8 isApplePayAmenity];
    if ([v8 isAmenityPresent])
    {
      v14 = [v8 symbolImageName];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1C584F660();
        v18 = v17;
      }

      else
      {
        v18 = 0xE90000000000006BLL;
        v16 = 0x72616D6B63656863;
      }

      v21 = [v8 ribbonSymbolImageName];

      if (v21)
      {
        v19 = sub_1C584F660();
        v20 = v22;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }
    }

    else
    {

      v19 = 0;
      v20 = 0;
      v18 = 0xE500000000000000;
      v16 = 0x6B72616D78;
    }

    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v24;
    *(a2 + 24) = v23;
    *(a2 + 32) = v16;
    *(a2 + 40) = v18;
    *(a2 + 48) = v13;
    *(a2 + 56) = v19;
    *(a2 + 64) = v20;
    *(a2 + 72) = v8;
  }

  else
  {

    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

char *static WatchPlaceDataAmenityItemViewModel.createAmenityViewModels(from:)(void *a1)
{
  result = [a1 _geoMapItem];
  if (result)
  {
    v2 = [result _amenities];
    swift_unknownObjectRelease();
    if (!v2)
    {
      return 0;
    }

    sub_1C5679310();
    v3 = sub_1C584F770();

    if (v3 >> 62)
    {
LABEL_33:
      v4 = sub_1C584FB90();
      if (v4)
      {
LABEL_5:
        v5 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1C694A320](v7, v3);
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v10 = [v8 amenityTitle];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_35;
            }
          }

          v11 = v10;
          v12 = sub_1C584F660();
          v35 = v13;
          v36 = v12;

          v14 = v9;
          v15 = [v14 amenityID];
          v16 = sub_1C584F660();
          v33 = v17;
          v34 = v16;

          v32 = [v14 isApplePayAmenity];
          if ([v14 isAmenityPresent])
          {
            v18 = [v14 symbolImageName];
            if (v18)
            {
              v19 = v18;
              v30 = sub_1C584F660();
              v31 = v20;
            }

            else
            {
              v31 = 0xE90000000000006BLL;
              v30 = 0x72616D6B63656863;
            }

            v22 = [v14 ribbonSymbolImageName];

            if (v22)
            {
              v29 = sub_1C584F660();
              v21 = v23;
            }

            else
            {
              v29 = 0;
              v21 = 0;
            }

            v6 = v28;
          }

          else
          {

            v21 = 0;
            v31 = 0xE500000000000000;
            v29 = 0;
            v30 = 0x6B72616D78;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1C565F254(0, *(v6 + 2) + 1, 1, v6);
          }

          v25 = *(v6 + 2);
          v24 = *(v6 + 3);
          v26 = v6;
          if (v25 >= v24 >> 1)
          {
            v26 = sub_1C565F254((v24 > 1), v25 + 1, 1, v6);
          }

          *(v26 + 2) = v25 + 1;
          v6 = v26;
          v27 = &v26[80 * v25];
          *(v27 + 4) = v34;
          *(v27 + 5) = v33;
          *(v27 + 6) = v36;
          *(v27 + 7) = v35;
          *(v27 + 8) = v30;
          *(v27 + 9) = v31;
          v27[80] = v32;
          *(v27 + 81) = *v37;
          *(v27 + 21) = *&v37[3];
          *(v27 + 11) = v29;
          *(v27 + 12) = v21;
          *(v27 + 13) = v14;
        }

        while (v5 != v4);
        goto LABEL_35;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
LABEL_35:

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5679310()
{
  result = qword_1EC16E140;
  if (!qword_1EC16E140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16E140);
  }

  return result;
}

uint64_t sub_1C567935C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1C567938C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}