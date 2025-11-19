__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BAD160E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BAD1612C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1BAD1618C()
{
  result = qword_1EBC2A170;
  if (!qword_1EBC2A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A170);
  }

  return result;
}

uint64_t VerticalSpaceMeasurable.init(_:multiplier:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
  v6 = swift_allocObject();
  result = sub_1BAD0B40C(a1, v6 + 16);
  *a2 = v6;
  *(a2 + 8) = a3;
  return result;
}

uint64_t VerticalSpaceMeasurable.verticalSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

double VerticalSpaceMeasurable.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v5 = sub_1BAD9DA68();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23[-v10];
  v12 = *v2;
  v13 = v2[1];
  swift_beginAccess();
  sub_1BAD14A3C(*&v12 + 16, v24);
  v14 = v25;
  v15 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v16 = (*(v15 + 8))(a1, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v17 = v13 * v16;
  if (qword_1EDBA6238 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_1EDBA61A0);
  v19 = *(v6 + 16);
  v19(v11, v18, v5);
  *v24 = v17;
  v19(v9, v11, v5);
  v20 = (*(v6 + 88))(v9, v5);
  if (v20 == *MEMORY[0x1E69E7038] || v20 == *MEMORY[0x1E69E7030] || v20 == *MEMORY[0x1E69E7040] || v20 == *MEMORY[0x1E69E7048] || v20 == *MEMORY[0x1E69E7020] || v20 == *MEMORY[0x1E69E7028])
  {
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    sub_1BAD9D318();
    v22 = *(v6 + 8);
    v22(v11, v5);
    v22(v9, v5);
  }

  return a2;
}

uint64_t sub_1BAD165E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BAD16630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ObjCFunctions.placeable(for:)(void *a1)
{
  return sub_1BAD166D0(a1, &qword_1EBC2A190, 0x1E69DC738, &protocol witness table for UIButton);
}

{
  return sub_1BAD166D0(a1, &qword_1EBC2A198, 0x1E69DCAE0, &protocol witness table for UIImageView);
}

{
  return sub_1BAD166D0(a1, &unk_1EBC2A1A0, 0x1E69DCC10, &protocol witness table for UILabel);
}

uint64_t sub_1BAD166D0(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15[5] = &unk_1F39072A0;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    v15[3] = sub_1BAD053C8(0, a2);
    v15[4] = a4;
    v15[0] = a1;
    v10 = type metadata accessor for _PlaceableAsJUPlaceable();
    v11 = objc_allocWithZone(v10);
    sub_1BAD14A3C(v15, v11 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base);
    v14.receiver = v11;
    v14.super_class = v10;
    v12 = a1;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v8;
}

id sub_1BAD167C4(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v17[5] = &unk_1F39072A0;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    v10 = v9;
    v11 = a3;
  }

  else
  {
    v17[3] = sub_1BAD053C8(0, a4);
    v17[4] = a6;
    v17[0] = a3;
    v12 = type metadata accessor for _PlaceableAsJUPlaceable();
    v13 = objc_allocWithZone(v12);
    sub_1BAD14A3C(v17, v13 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base);
    v16.receiver = v13;
    v16.super_class = v12;
    v14 = a3;
    v10 = objc_msgSendSuper2(&v16, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return v10;
}

uint64_t HorizontalStack.Alignment.hashValue.getter(unsigned __int8 a1)
{
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](a1);
  return sub_1BAD9DB88();
}

void HorizontalStack.Properties.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ZeroDimension;
  *(a1 + 32) = &protocol witness table for ZeroDimension;
  *(a1 + 64) = &type metadata for ZeroDimension;
  *(a1 + 72) = &protocol witness table for ZeroDimension;
  *(a1 + 80) = 0;
}

uint64_t HorizontalStack.Properties.leadingSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1BAD0B40C(a1, v1);
}

uint64_t HorizontalStack.Properties.trailingSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1BAD0B40C(a1, v1 + 40);
}

double HorizontalStack.Placements.union.getter@<D0>(CGFloat *a1@<X8>)
{
  v3 = v1[1];
  v37[0] = *v1;
  v37[1] = v3;
  v4 = v1[3];
  v6 = *v1;
  v5 = v1[1];
  v37[2] = v1[2];
  v37[3] = v4;
  v33 = v6;
  v34 = v5;
  v7 = v1[3];
  v35 = v1[2];
  v36 = v7;
  sub_1BAD17108(v37, &v27);
  HorizontalStack.Placements.next()(&v27);
  if (*(&v28 + 1))
  {
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    x = *(&v29 + 1);
    width = *(&v30 + 1);
    y = *&v30;
    height = *&v31;
    v19 = v32;
    v20 = *(&v31 + 1);
LABEL_3:
    sub_1BAD17170(&v21);
    while (1)
    {
      HorizontalStack.Placements.next()(&v27);
      if (!*(&v28 + 1))
      {
        break;
      }

      v23 = v29;
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v21 = v27;
      v22 = v28;
      v12 = *(&v29 + 1);
      v14 = v30;
      v13 = *&v31;
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v40.origin.x = *(&v29 + 1);
      *&v40.origin.y = v30;
      *&v40.size.height = v31;
      v39 = CGRectUnion(v38, v40);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
      v39.origin.x = v12;
      *&v39.origin.y = v14;
      v39.size.height = v13;
      if (CGRectIsEmpty(v39))
      {
        goto LABEL_3;
      }

      v15 = v26;
      v16 = v20;
      if (v20 >= *(&v25 + 1))
      {
        v16 = *(&v25 + 1);
      }

      v20 = v16;
      sub_1BAD17170(&v21);
      v17 = v19;
      if (v19 >= v15)
      {
        v17 = v15;
      }

      v19 = v17;
    }
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
    y = 0.0;
  }

  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  sub_1BAD17140(&v21);
  *a1 = x;
  a1[1] = y;
  a1[2] = width;
  a1[3] = height;
  result = v19;
  a1[4] = v20;
  a1[5] = v19;
  return result;
}

uint64_t HorizontalStack.Placements.next()@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (v6 >= *(v5 + 16))
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_5;
  }

  sub_1BAD1A3B8(v5 + (v6 << 7) + 32, v49, &qword_1EBC2A1B0);
  *(v1 + 48) = v6 + 1;
  if ((v59 & 1) == 0)
  {
    v11 = *v1;
    v10 = *(v1 + 8);
    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    v60.origin.x = *v1;
    v60.origin.y = v10;
    v60.size.width = v13;
    v60.size.height = v12;
    if (CGRectGetWidth(v60) == 0.0)
    {
      v14 = v13;
      v15 = v12;
    }

    else
    {
      v61.origin.x = v11;
      v61.origin.y = v10;
      v61.size.width = v13;
      v61.size.height = v12;
      MaxX = CGRectGetMaxX(v61);
      v17 = *(v1 + 56);
      v14 = MaxX - v17;
      v62.origin.x = v11;
      v62.origin.y = v10;
      v62.size.width = v13;
      v62.size.height = v12;
      Height = CGRectGetHeight(v62);
      if (v14 <= 0.0)
      {
        v66.origin.x = v11;
        v66.origin.y = v10;
        v66.size.width = v13;
        v66.size.height = v12;
        MinY = CGRectGetMinY(v66);
        if (qword_1EDBA5998 != -1)
        {
          swift_once();
        }

        v45 = *(&xmmword_1EDBA59A0 + 1);
        v44 = *&xmmword_1EDBA59A0;
        sub_1BAD14A3C(v49, v48);
        sub_1BAD14A3C(v48, a1);
        *(a1 + 40) = floor(v17);
        *(a1 + 48) = floor(MinY);
        v8 = floor(v44);
        v9 = floor(v45);
        goto LABEL_6;
      }

      v15 = Height;
    }

    v19 = *(v1 + 32);
    v20 = v50;
    v21 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v22 = v1;
    v23 = (*(v21 + 8))(v19, v20, v21, v14, v15);
    v46 = v25;
    v47 = v24;
    v27 = v26;
    v28 = v53;
    v29 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v30 = AnyDimension.value(with:)(v19, v28, v29);
    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v31 = *(v22 + 56) + v30;
    v32 = v56;
    v33 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    *(v22 + 56) = v23 + v31 + AnyDimension.value(with:)(v19, v32, v33);
    if (v58 > 1u)
    {
      if (v58 == 2)
      {
        v34 = v27;
        v63.origin.x = v11;
        v63.origin.y = v10;
        v63.size.width = v13;
        v63.size.height = v12;
        MaxY = CGRectGetMaxY(v63);
        v41 = v47;
      }

      else
      {
        v64.origin.x = v11;
        v64.origin.y = v10;
        v64.size.width = v13;
        v64.size.height = v12;
        MaxY = CGRectGetMaxY(v64);
        v34 = v27;
        v41 = v47 - v27;
      }

      v39 = MaxY - v41;
    }

    else
    {
      v34 = v27;
      v35 = v11;
      v36 = v10;
      v37 = v13;
      v38 = v12;
      if (v58)
      {
        v39 = CGRectGetMidY(*&v35) + v47 * -0.5;
      }

      else
      {
        v39 = CGRectGetMinY(*&v35);
      }
    }

    if (v39 < 0.0)
    {
      v65.origin.x = v11;
      v65.origin.y = v10;
      v65.size.width = v13;
      v65.size.height = v12;
      if (CGRectGetHeight(v65) == 0.0)
      {
        v39 = 0.0;
      }
    }

    sub_1BAD14A3C(v49, v48);
    sub_1BAD14A3C(v48, a1);
    *(a1 + 40) = floor(v31);
    *(a1 + 48) = floor(v39);
    *(a1 + 56) = ceil(v23);
    *(a1 + 64) = ceil(v47);
    v8 = floor(v46);
    v9 = floor(v34);
    goto LABEL_26;
  }

  v3 = *(v1 + 56);
  v2 = CGRectGetMinY(*v1);
  if (qword_1EDBA5998 != -1)
  {
    goto LABEL_31;
  }

LABEL_5:
  v7 = xmmword_1EDBA59A0;
  sub_1BAD14A3C(v49, v48);
  sub_1BAD14A3C(v48, a1);
  *(a1 + 40) = floor(v3);
  *(a1 + 48) = floor(v2);
  v8 = floor(*&v7);
  v9 = floor(*(&v7 + 1));
LABEL_6:
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
LABEL_26:
  __swift_destroy_boxed_opaque_existential_1(v48);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  return sub_1BAD1A420(v49, &qword_1EBC2A1B0);
}

void HorizontalStack.Placements.measure.getter()
{
  v1 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v1;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v12 = *(v0 + 48);
  v10 = v2;
  v11 = v3;
  HorizontalStack.Placements.union.getter(v18);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1BAD1A3B8(v3 + 32, v9, &qword_1EBC2A1B0);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(&v11, v13);
    AnyDimension.value(with:)(v2, v5, v6);
    sub_1BAD1A420(v9, &qword_1EBC2A1B0);
    if (v4 > *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1BAD1A3B8(v3 + (v4 << 7) - 96, v9, &qword_1EBC2A1B0);
      v7 = v16;
      v8 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      AnyDimension.value(with:)(v2, v7, v8);
      sub_1BAD1A420(v9, &qword_1EBC2A1B0);
    }
  }
}

__n128 sub_1BAD17350@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void *sub_1BAD17374()
{
  v1 = v0[1];
  v5[0] = *v0;
  v5[1] = v1;
  v2 = v0[3];
  v5[2] = v0[2];
  v5[3] = v2;
  v3 = sub_1BAD829C8(v5);
  sub_1BAD17140(v5);
  return v3;
}

uint64_t HorizontalStack.init(with:)@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  v6 = &type metadata for ZeroDimension;
  v7 = &protocol witness table for ZeroDimension;
  v8 = &type metadata for ZeroDimension;
  v9 = &protocol witness table for ZeroDimension;
  v10 = 0;
  if (a1)
  {
    a1(v5);
  }

  sub_1BAD17D88(v5, a2);
  sub_1BAD17DC0(a1);
  result = sub_1BAD17DD0(v5);
  *(a2 + 88) = MEMORY[0x1E69E7CC0];
  return result;
}

__n128 HorizontalStack.add(_:with:)(uint64_t a1, void (*a2)(_OWORD *))
{
  v3 = v2;
  sub_1BAD14A3C(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  if (swift_dynamicCast())
  {
    v16[2] = v20;
    v16[3] = v21;
    v16[4] = v22;
    v17 = v23;
    v16[0] = v18;
    v16[1] = v19;
    if ((BYTE8(v20) & 1) == 0)
    {
      sub_1BAD9CB88();
    }

    sub_1BAD18374(v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_1BAD17D88(v2, v16);
  if (a2)
  {
    a2(v16);
  }

  sub_1BAD14A3C(a1, &v18);
  sub_1BAD17D88(v16, &v20 + 8);
  v6 = *(v2 + 88);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1BAD18240(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1BAD18240((v7 > 1), v8 + 1, 1, v6);
  }

  sub_1BAD17DD0(v16);
  v6[2] = v8 + 1;
  v9 = &v6[16 * v8];
  v10 = v21;
  v11 = v18;
  v12 = v19;
  *(v9 + 4) = v20;
  *(v9 + 5) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  v14 = v23;
  result = v24[0];
  v15 = v22;
  *(v9 + 138) = *(v24 + 10);
  *(v9 + 7) = v14;
  *(v9 + 8) = result;
  *(v9 + 6) = v15;
  *(v3 + 88) = v6;
  return result;
}

double HorizontalStack.adding(_:with:)@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *)@<X1>, uint64_t a3@<X8>)
{
  sub_1BAD183C8(v3, a3);
  *&result = HorizontalStack.add(_:with:)(a1, a2).n128_u64[0];
  return result;
}

uint64_t HorizontalStack.insert(_:at:with:)(uint64_t a1, int64_t a2, void (*a3)(_BYTE *))
{
  sub_1BAD14A3C(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  if (swift_dynamicCast())
  {
    v10 = v17;
    v11 = v18;
    v12 = v19;
    *&v13 = v20;
    v8 = v15;
    v9 = v16;
    if ((BYTE8(v17) & 1) == 0)
    {
      sub_1BAD9CB88();
    }

    sub_1BAD18374(&v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1BAD17D88(v3, v22);
  if (a3)
  {
    a3(v22);
  }

  sub_1BAD14A3C(a1, &v15);
  result = sub_1BAD17D88(v22, &v17 + 8);
  if (*(*(v3 + 88) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    v12 = v19;
    v13 = v20;
    v14[0] = v21[0];
    *(v14 + 10) = *(v21 + 10);
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    sub_1BAD193A4(a2, a2, &v8);
    return sub_1BAD17DD0(v22);
  }

  __break(1u);
  return result;
}

void HorizontalStack.layout(relativeTo:with:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = *(v6 + 88);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;

  v14 = a1;
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  *(a2 + 56) = CGRectGetMinX(v15);
}

uint64_t sub_1BAD1796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1BAD14A3C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
  if (swift_dynamicCast())
  {
    sub_1BAD0B40C(v11, v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v7 + 8))(v13, a2, v6, v7);
    v8 = 0x3030201u >> (8 * *(a1 + 120));
    *a3 = v13[0];
    a3[1] = v8;
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    result = sub_1BAD1A420(v11, &qword_1EBC2A1C0);
    v10 = 0x3030201u >> (8 * *(a1 + 120));
    *a3 = 0;
    a3[1] = v10;
  }

  return result;
}

JetUI::_LayoutAlignment __swiftcall HorizontalStack._layoutAlignment(with:)(UITraitCollection with)
{
  v3 = v1;
  v4 = *(v2 + 88);
  if (*(v4 + 16))
  {
    isa = with.super.isa;
    sub_1BAD1A3B8(v4 + 32, v28, &qword_1EBC2A1B0);
    sub_1BAD1796C(v28, isa, &v26);
    v6 = *(v4 + 16);
    v7 = v6 - 1;
    if (v6 > 1)
    {
      v16 = v3;
      v17 = isa;
      v8 = v26;
      v9 = v27;

      v11 = v4 + 160;
      do
      {
        sub_1BAD1A3B8(v11, v24, &qword_1EBC2A1B0);
        sub_1BAD14A3C(v24, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
        if (swift_dynamicCast())
        {
          sub_1BAD0B40C(v18, v21);
          v12 = v22;
          v13 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          (*(v13 + 8))(v20, v17, v12, v13);
          v14 = LOBYTE(v20[0]);
          v15 = v25;
          sub_1BAD1A420(v24, &qword_1EBC2A1B0);
          __swift_destroy_boxed_opaque_existential_1(v21);
        }

        else
        {
          v19 = 0;
          memset(v18, 0, sizeof(v18));
          sub_1BAD1A420(v18, &qword_1EBC2A1C0);
          v15 = v25;
          sub_1BAD1A420(v24, &qword_1EBC2A1B0);
          v14 = 0;
        }

        if (v14 != v8)
        {
          v8 = 0;
        }

        if (v9 != (0x3030201u >> (8 * v15)))
        {
          v9 = 0;
        }

        v11 += 128;
        --v7;
      }

      while (v7);

      v3 = v16;
    }

    else
    {
      v8 = v26;
      LOBYTE(v9) = v27;
    }

    LOWORD(with.super.isa) = sub_1BAD1A420(v28, &qword_1EBC2A1B0);
    *v3 = v8;
    v3[1] = v9;
  }

  else
  {
    v10 = 0x3030201u >> (8 * *(v2 + 80));
    *v3 = 0;
    v3[1] = v10;
  }

  return with.super.isa;
}

void sub_1BAD17D04(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = *(v6 + 88);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;

  v14 = a1;
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  *(a2 + 56) = CGRectGetMinX(v15);
}

uint64_t sub_1BAD17DC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_1BAD17E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A228);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BAD17F0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1BAD1801C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAD1813C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A168);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BAD18240(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAD18400(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BAD1850C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[26 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 208 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAD18658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BAD1877C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BAD188C4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A248);
  v10 = *(type metadata accessor for DSLocalizationInfoLog() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DSLocalizationInfoLog() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1BAD18A9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAD18BE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A208);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BAD18CEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1BAD18DF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1F8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BAD18EF4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A218);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAD19028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BAD19150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BAD19270(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1D8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1BAD193A4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BAD18240(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BAD19C70(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1BAD1947C()
{
  result = qword_1EBC2A1C8;
  if (!qword_1EBC2A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A1C8);
  }

  return result;
}

unint64_t sub_1BAD194D0(uint64_t a1)
{
  result = sub_1BAD194F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD194F8()
{
  result = qword_1EBC29B98;
  if (!qword_1EBC29B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29B98);
  }

  return result;
}

unint64_t sub_1BAD19550()
{
  result = qword_1EBC29B90;
  if (!qword_1EBC29B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29B90);
  }

  return result;
}

unint64_t sub_1BAD195A8()
{
  result = qword_1EBC29B88;
  if (!qword_1EBC29B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC29B88);
  }

  return result;
}

uint64_t sub_1BAD195FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1BAD19644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BAD196E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1BAD19728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BAD197A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD197EC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1BAD1984C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BAD1850C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BAD19D88(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1BAD19920(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BAD18658(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BAD19EB0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1BAD199F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BAD1877C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BAD19FB4(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1BAD19AC8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BAD18A9C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BAD1A0D0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1BAD19B9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BAD19150(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BAD1A1F8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1BAD19C70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + (result << 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + (a3 << 7);
      v15 = (v9 + 32 + (a2 << 7));
      v16 = v14 << 7;
      v17 = &v15[128 * v14];
      if (result != v15 || result >= v17)
      {
        result = memmove(result, v15, v16);
      }

      v19 = *(v9 + 16);
      v11 = __OFADD__(v19, v12);
      v20 = v19 + v12;
      if (!v11)
      {
        *(v9 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A298);
  }

  result = sub_1BAD1A3B8(a4, v10, &qword_1EBC2A1B0);
  if (a3 == 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A298);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1BAD19D88(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 208 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A278);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 208 * a3;
      v15 = (v9 + 32 + 208 * a2);
      v16 = 208 * v14;
      if (result != v15 || result >= v15 + v16)
      {
        result = memmove(result, v15, v16);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A280);
  }

  result = sub_1BAD1A3B8(a4, v10, &qword_1EBC2A278);
  if (a3 == 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A280);
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1BAD19EB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 104 * a3;
      v15 = (v9 + 32 + 104 * a2);
      v16 = 104 * v14;
      v17 = &v15[104 * v14];
      if (result != v15 || result >= v17)
      {
        result = memmove(result, v15, v16);
      }

      v19 = *(v9 + 16);
      v11 = __OFADD__(v19, v12);
      v20 = v19 + v12;
      if (!v11)
      {
        *(v9 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A268);
  }

  result = sub_1BAD1A35C(a4, v10);
  if (a3 == 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A268);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1BAD19FB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A250);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A258);
  }

  result = sub_1BAD14A3C(a4, v10);
  if (a3 == 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A258);
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1BAD1A0D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 144 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A230);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 144 * a3;
      v15 = (v9 + 32 + 144 * a2);
      v16 = 144 * v14;
      if (result != v15 || result >= v15 + v16)
      {
        result = memmove(result, v15, v16);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A238);
  }

  result = sub_1BAD1A3B8(a4, v10, &qword_1EBC2A230);
  if (a3 == 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A238);
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1BAD1A1F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 136 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 136 * a3;
      v15 = (v9 + 32 + 136 * a2);
      if (result != v15 || result >= v15 + 136 * v14)
      {
        result = memmove(result, v15, 136 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A1E8);
  }

  result = sub_1BAD1A300(a4, v10);
  if (a3 == 1)
  {
    return sub_1BAD1A420(a4, &qword_1EBC2A1E8);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BAD1A3B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAD1A420(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Constrain.Placements.union.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BAD1A550(v1, v15);
  Constrain.Placements.next()(v9);
  result = sub_1BAD1A83C(v15);
  if (v10)
  {
    v4 = v13;
    v5 = v14;
    v7 = v12;
    v8 = v11;
    result = sub_1BAD17170(v9);
    *a1 = v8;
    *(a1 + 16) = v7;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
  }

  else
  {
    if (qword_1EBC29BA0 != -1)
    {
      result = swift_once();
    }

    v6 = *&qword_1EBC29BB8;
    *a1 = xmmword_1EBC29BA8;
    *(a1 + 16) = v6;
    *(a1 + 32) = xmmword_1EBC29BC8;
  }

  return result;
}

uint64_t Constrain.Placements.next()@<X0>(uint64_t a1@<X8>)
{
  sub_1BAD1ADC4(v1 + 104, &v44);
  if (v45)
  {
    sub_1BAD0B40C(&v44, v46);
    sub_1BAD1A420(v1 + 104, &qword_1EBC2A2B0);
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0;
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    v6 = *(v1 + 64);
    v7 = *v1;
    v8 = *(v1 + 8);
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    v49.origin.x = *v1;
    v49.origin.y = v8;
    v49.size.width = v9;
    v49.size.height = v10;
    Width = CGRectGetWidth(v49);
    v12 = v4 ^ 1;
    v13 = (v4 ^ 1) & (Width < v3);
    v43 = v3;
    if (v13)
    {
      v14 = v3;
    }

    else
    {
      v14 = Width;
    }

    if (Width > v5)
    {
      Width = v5;
    }

    if (v6)
    {
      Width = v14;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = Width;
    }

    v16 = *(v1 + 72);
    v17 = *(v1 + 80);
    v18 = *(v1 + 88);
    v19 = *(v1 + 96);
    v50.origin.x = v7;
    v50.origin.y = v8;
    v50.size.width = v9;
    v50.size.height = v10;
    Height = CGRectGetHeight(v50);
    v21 = v17 ^ 1;
    v22 = (v17 ^ 1) & (Height < v16);
    if (v22)
    {
      v23 = v16;
    }

    else
    {
      v23 = Height;
    }

    if (Height > v18)
    {
      Height = v18;
    }

    if (v19)
    {
      Height = v23;
    }

    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = Height;
    }

    v25 = v47;
    v26 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v27 = (*(v26 + 8))(*(v1 + 32), v25, v26, v15, v24);
    v29 = v28;
    v41 = v31;
    v42 = v30;
    v51.origin.x = v7;
    v51.origin.y = v8;
    v51.size.width = v9;
    v51.size.height = v10;
    MinX = CGRectGetMinX(v51);
    v52.origin.x = v7;
    v52.origin.y = v8;
    v52.size.width = v9;
    v52.size.height = v10;
    MinY = CGRectGetMinY(v52);
    v34 = v43;
    if ((v12 & (v27 < v43)) == 0)
    {
      v34 = v27;
    }

    v35 = v5;
    if (v27 <= v5)
    {
      v35 = v27;
    }

    if (v12 & (v27 < v43) | v6 & 1)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    if ((v21 & (v29 < v16)) != 0)
    {
      v37 = v16;
    }

    else
    {
      v37 = v29;
    }

    v38 = v18;
    if (v29 <= v18)
    {
      v38 = v29;
    }

    if (v21 & (v29 < v16) | v19 & 1)
    {
      v39 = v37;
    }

    else
    {
      v39 = v38;
    }

    sub_1BAD14A3C(v46, &v44);
    sub_1BAD14A3C(&v44, a1);
    *(a1 + 40) = floor(MinX);
    *(a1 + 48) = floor(MinY);
    *(a1 + 56) = ceil(v36);
    *(a1 + 64) = ceil(v39);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    *(a1 + 72) = floor(v42);
    *(a1 + 80) = floor(v41);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    result = sub_1BAD1A420(&v44, &qword_1EBC2A2B0);
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

__n128 sub_1BAD1A874@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BAD1A8A0()
{
  v1 = sub_1BAD82A08(v0);
  sub_1BAD1A83C(v0);
  return v1;
}

uint64_t Constrain.init(_:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v17 = a1;
  if ((a3 & 1) == 0 && (a5 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](a1);
    a1 = sub_1BAD9CDA8();
  }

  if ((a7 & 1) == 0 && (a10 & 1) == 0)
  {
    v20[1] = v20;
    MEMORY[0x1EEE9AC00](a1);
    sub_1BAD9CDA8();
  }

  result = sub_1BAD0B40C(v17, a9);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3 & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5 & 1;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7 & 1;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10 & 1;
  return result;
}

uint64_t Constrain.layout(relativeTo:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = *(v6 + 40);
  v14 = *(v6 + 48);
  v15 = *(v6 + 56);
  v16 = *(v6 + 64);
  v17 = *(v6 + 72);
  v18 = *(v6 + 80);
  v19 = *(v6 + 88);
  v22 = *(v6 + 96);
  sub_1BAD14A3C(v6, v23);
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 104) = 0u;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v22;
  v20 = a1;
  sub_1BAD1A420(a2 + 104, &qword_1EBC2A2B0);
  return sub_1BAD0B40C(v23, a2 + 104);
}

JetUI::_LayoutAlignment __swiftcall Constrain._layoutAlignment(with:)(UITraitCollection with)
{
  v3 = v2;
  v5 = v1;
  sub_1BAD14A3C(v3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
  if (swift_dynamicCast())
  {
    sub_1BAD0B40C(v9, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v7 + 8))(with.super.isa, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = sub_1BAD1A420(v9, &qword_1EBC2A1C0);
    *v5 = 0;
  }

  return v8;
}

uint64_t sub_1BAD1ACBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = *(v6 + 40);
  v14 = *(v6 + 48);
  v15 = *(v6 + 56);
  v16 = *(v6 + 64);
  v17 = *(v6 + 72);
  v18 = *(v6 + 80);
  v19 = *(v6 + 88);
  v22 = *(v6 + 96);
  sub_1BAD14A3C(v6, v23);
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 104) = 0u;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v22;
  v20 = a1;
  sub_1BAD1A420(a2 + 104, &qword_1EBC2A2B0);
  return sub_1BAD0B40C(v23, a2 + 104);
}

uint64_t sub_1BAD1ADC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAD1AE44(uint64_t a1)
{
  result = sub_1BAD1AE6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD1AE6C()
{
  result = qword_1EBC2A2B8;
  if (!qword_1EBC2A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A2B8);
  }

  return result;
}

unint64_t sub_1BAD1AEC4()
{
  result = qword_1EBC2A2C0;
  if (!qword_1EBC2A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A2C0);
  }

  return result;
}

unint64_t sub_1BAD1AF1C()
{
  result = qword_1EBC2A2C8;
  if (!qword_1EBC2A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A2C8);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BAD1AF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1BAD1AFE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI9Placeable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1BAD1B094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD1B0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1BAD1B158(void *a1)
{
  v1 = a1;
  v2 = UIView.hasContent.getter();

  return v2;
}

void (*sub_1BAD1B204(uint64_t *a1))(double **a1)
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
  v5 = *v1;
  v4[4] = *v1;
  [v5 frame];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  return sub_1BAD1B28C;
}

void sub_1BAD1B28C(double **a1)
{
  v1 = *a1;
  [*(*a1 + 4) setFrame_];

  free(v1);
}

id (*sub_1BAD1B314(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 isHidden];
  return sub_1BAD1B368;
}

double AnyDimension.value(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BAD9F590;
  *(v6 + 32) = a1;
  sub_1BAD1B4EC();
  v7 = a1;
  v8 = sub_1BAD9D168();

  v9 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v10 = type metadata accessor for TraitEnvironmentPlaceholder();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v9;
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = (*(a3 + 8))(v12, a2, a3);

  return v13;
}

unint64_t sub_1BAD1B4EC()
{
  result = qword_1EDBA5D80;
  if (!qword_1EDBA5D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA5D80);
  }

  return result;
}

double EstimatedMeasurable<>.measurements(fitting:in:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v10 + 16))(a2, v10);
  v15 = (*(a3 + 16))(v14, a1, a2, a3, a4, a5);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

__n128 sub_1BAD1B724()
{
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EBC2A2D0 = result;
  return result;
}

double static AspectRatio.square.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EBC29BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&xmmword_1EBC2A2D0;
  *a1 = xmmword_1EBC2A2D0;
  return result;
}

uint64_t static AspectRatio.square.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_1EBC29BE8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *&xmmword_1EBC2A2D0 = v1;
  *(&xmmword_1EBC2A2D0 + 1) = v2;
  return result;
}

uint64_t (*static AspectRatio.square.modify())()
{
  if (qword_1EBC29BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1BAD1B8C8@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EBC29BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&xmmword_1EBC2A2D0;
  *a1 = xmmword_1EBC2A2D0;
  return result;
}

uint64_t sub_1BAD1B944(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_1EBC29BE8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *&xmmword_1EBC2A2D0 = v1;
  *(&xmmword_1EBC2A2D0 + 1) = v2;
  return result;
}

double AspectRatio.horizontalFraction.getter()
{
  v1 = v0[1];
  result = *v0 / v1;
  if (v1 == 0.0)
  {
    return 0.0;
  }

  return result;
}

double AspectRatio.verticalFraction.getter()
{
  result = 0.0;
  if (*v0 != 0.0)
  {
    return v0[1] / *v0;
  }

  return result;
}

double AspectRatio.width(fromHeight:)(double a1)
{
  v2 = v1[1];
  v3 = *v1 / v2;
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  return v3 * a1;
}

double AspectRatio.height(fromWidth:)(double a1)
{
  v2 = 0.0;
  if (*v1 != 0.0)
  {
    v2 = v1[1] / *v1;
  }

  return v2 * a1;
}

uint64_t AspectRatio.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BADA1240;
  v4 = MEMORY[0x1E69E63B0];
  v5 = MEMORY[0x1E69E6438];
  *(v3 + 56) = MEMORY[0x1E69E63B0];
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v2;

  return sub_1BAD9CF88();
}

uint64_t sub_1BAD1BB64()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BADA1240;
  v4 = MEMORY[0x1E69E63B0];
  v5 = MEMORY[0x1E69E6438];
  *(v3 + 56) = MEMORY[0x1E69E63B0];
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v2;

  return sub_1BAD9CF88();
}

__n128 LayoutRect.init(origin:size:baselines:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  a2->n128_f64[0] = a3;
  a2->n128_f64[1] = a4;
  a2[1].n128_f64[0] = a5;
  a2[1].n128_f64[1] = a6;
  result = *a1;
  a2[2] = *a1;
  return result;
}

double sub_1BAD1BC24()
{
  if (qword_1EDBA5998 != -1)
  {
    swift_once();
  }

  xmmword_1EBC29BA8 = 0u;
  *&qword_1EBC29BB8 = 0u;
  result = *&xmmword_1EDBA59A0;
  xmmword_1EBC29BC8 = xmmword_1EDBA59A0;
  return result;
}

double static LayoutRect.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EBC29BA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&qword_1EBC29BB8;
  *a1 = xmmword_1EBC29BA8;
  a1[1] = v1;
  result = *&xmmword_1EBC29BC8;
  a1[2] = xmmword_1EBC29BC8;
  return result;
}

void LayoutRect.init(representing:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  Height = CGRectGetHeight(*&a2);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = Height;
  *(a1 + 40) = 0;
}

void LayoutRect.init(x:y:width:height:firstBaseline:lastBaseline:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

double LayoutRect.init()@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDBA5998 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = 0u;
  a1[1] = 0u;
  result = *&xmmword_1EDBA59A0;
  a1[2] = xmmword_1EDBA59A0;
  return result;
}

__n128 LayoutRect.baselines.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 LayoutRect.baselines.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

BOOL _s5JetUI10LayoutRectV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1BAD1BF80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAD1BFA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t CollectionContentReloadTriggerPublisher._subscribeContent<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 48))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedConformanceWitness();
  CollectionContent.observeReloadTriggers<A>(_:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness, v6, v7);

  return swift_unknownObjectRelease();
}

__n128 AppStore.HorizontalPairLayout.init(leadingView:trailingView:priorityView:alignmentSpace:interViewSpacing:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = *a3;
  sub_1BAD0B40C(a1, v18);
  sub_1BAD0B40C(a2, v19 + 8);
  v20[0] = v10;
  v11 = *(a4 + 16);
  *&v20[8] = *a4;
  *&v20[24] = v11;
  *&v20[40] = *(a4 + 32);
  sub_1BAD0B40C(a5, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E8);
  v12 = swift_allocObject();
  v13 = v21[1];
  *(v12 + 144) = v21[0];
  *(v12 + 160) = v13;
  *(v12 + 176) = v22;
  v14 = *v20;
  *(v12 + 80) = v19[2];
  *(v12 + 96) = v14;
  v15 = *&v20[32];
  *(v12 + 112) = *&v20[16];
  *(v12 + 128) = v15;
  v16 = v18[1];
  *(v12 + 16) = v18[0];
  *(v12 + 32) = v16;
  result = v19[1];
  *(v12 + 48) = v19[0];
  *(v12 + 64) = result;
  *a6 = v12;
  return result;
}

uint64_t AppStore.HorizontalPairLayout.leadingView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

uint64_t AppStore.HorizontalPairLayout.leadingView.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD1C3B0(v3 + 16, v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1BAD0B40C(a1, v12);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD1C3E8(v12, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E8);
    v6 = swift_allocObject();
    v7 = v12[9];
    *(v6 + 144) = v12[8];
    *(v6 + 160) = v7;
    *(v6 + 176) = v13;
    v8 = v12[5];
    *(v6 + 80) = v12[4];
    *(v6 + 96) = v8;
    v9 = v12[7];
    *(v6 + 112) = v12[6];
    *(v6 + 128) = v9;
    v10 = v12[1];
    *(v6 + 16) = v12[0];
    *(v6 + 32) = v10;
    v11 = v12[3];
    *(v6 + 48) = v12[2];
    *(v6 + 64) = v11;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.HorizontalPairLayout.leadingView.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  return sub_1BAD1C4B4;
}

uint64_t AppStore.HorizontalPairLayout.trailingView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 56, a1);
}

uint64_t AppStore.HorizontalPairLayout.trailingView.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD1C3B0(v3 + 16, v12);
  __swift_destroy_boxed_opaque_existential_1(v13 + 8);
  sub_1BAD0B40C(a1, v13 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD1C3E8(v12, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E8);
    v6 = swift_allocObject();
    v7 = v13[7];
    *(v6 + 144) = v13[6];
    *(v6 + 160) = v7;
    *(v6 + 176) = v14;
    v8 = v13[3];
    *(v6 + 80) = v13[2];
    *(v6 + 96) = v8;
    v9 = v13[5];
    *(v6 + 112) = v13[4];
    *(v6 + 128) = v9;
    v10 = v12[1];
    *(v6 + 16) = v12[0];
    *(v6 + 32) = v10;
    v11 = v13[1];
    *(v6 + 48) = v13[0];
    *(v6 + 64) = v11;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.HorizontalPairLayout.trailingView.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 56, v4);
  return sub_1BAD1C6B4;
}

void sub_1BAD1C6CC(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1BAD14A3C(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t AppStore.HorizontalPairLayout.Edge.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t AppStore.HorizontalPairLayout.priorityView.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 96);
  return result;
}

uint64_t AppStore.HorizontalPairLayout.priorityView.setter(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD1C3B0(v3 + 16, v12);
  LOBYTE(v13) = v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD1C3E8(v12, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E8);
    v6 = swift_allocObject();
    v7 = v17;
    *(v6 + 144) = v16;
    *(v6 + 160) = v7;
    *(v6 + 176) = v18;
    v8 = v13;
    *(v6 + 80) = v12[4];
    *(v6 + 96) = v8;
    v9 = v15;
    *(v6 + 112) = v14;
    *(v6 + 128) = v9;
    v10 = v12[1];
    *(v6 + 16) = v12[0];
    *(v6 + 32) = v10;
    v11 = v12[3];
    *(v6 + 48) = v12[2];
    *(v6 + 64) = v11;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.HorizontalPairLayout.priorityView.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 216) = v1;
  v5 = *v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  *(v4 + 232) = *(v5 + 96);
  return sub_1BAD1C9B8;
}

void sub_1BAD1C9B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 232);
  sub_1BAD1C3B0(*(*a1 + 224) + 16, *a1);
  v1[80] = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 27);
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *v4;
    swift_beginAccess();
    sub_1BAD1C3E8(v1, v5 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E8);
    v6 = swift_allocObject();
    v8 = *(v1 + 1);
    v7 = *(v1 + 2);
    *(v6 + 16) = *v1;
    *(v6 + 32) = v8;
    *(v6 + 48) = v7;
    v9 = *(v1 + 6);
    v11 = *(v1 + 3);
    v10 = *(v1 + 4);
    *(v6 + 96) = *(v1 + 5);
    *(v6 + 112) = v9;
    *(v6 + 64) = v11;
    *(v6 + 80) = v10;
    v13 = *(v1 + 8);
    v12 = *(v1 + 9);
    v14 = *(v1 + 7);
    *(v6 + 176) = *(v1 + 20);
    *(v6 + 144) = v13;
    *(v6 + 160) = v12;
    *(v6 + 128) = v14;

    *v4 = v6;
  }

  free(v1);
}

uint64_t AppStore.HorizontalPairLayout.alignmentSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD1CB04(v3 + 104, a1);
}

uint64_t sub_1BAD1CB04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppStore.HorizontalPairLayout.alignmentSpace.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD1C3B0(v3 + 16, v12);
  sub_1BAD1CC74(a1, v13 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD1C3E8(v12, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E8);
    v6 = swift_allocObject();
    v7 = v13[4];
    *(v6 + 144) = v13[3];
    *(v6 + 160) = v7;
    *(v6 + 176) = v14;
    v8 = v13[0];
    *(v6 + 80) = v12[4];
    *(v6 + 96) = v8;
    v9 = v13[2];
    *(v6 + 112) = v13[1];
    *(v6 + 128) = v9;
    v10 = v12[1];
    *(v6 + 16) = v12[0];
    *(v6 + 32) = v10;
    v11 = v12[3];
    *(v6 + 48) = v12[2];
    *(v6 + 64) = v11;

    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BAD1CC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*AppStore.HorizontalPairLayout.alignmentSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD1CB04(v5 + 104, v4);
  return sub_1BAD1CD78;
}

void sub_1BAD1CD78(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1BAD1CB04(*a1, v2 + 40);
    AppStore.HorizontalPairLayout.alignmentSpace.setter(v2 + 40);
    sub_1BAD1CDE0(v2);
  }

  else
  {
    AppStore.HorizontalPairLayout.alignmentSpace.setter(*a1);
  }

  free(v2);
}

uint64_t sub_1BAD1CDE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppStore.HorizontalPairLayout.interViewSpacing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 144, a1);
}

uint64_t AppStore.HorizontalPairLayout.interViewSpacing.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD1C3B0(v3 + 16, v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_1BAD0B40C(a1, v13);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD1C3E8(v12, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E8);
    v6 = swift_allocObject();
    v7 = v13[1];
    *(v6 + 144) = v13[0];
    *(v6 + 160) = v7;
    *(v6 + 176) = v14;
    v8 = v12[5];
    *(v6 + 80) = v12[4];
    *(v6 + 96) = v8;
    v9 = v12[7];
    *(v6 + 112) = v12[6];
    *(v6 + 128) = v9;
    v10 = v12[1];
    *(v6 + 16) = v12[0];
    *(v6 + 32) = v10;
    v11 = v12[3];
    *(v6 + 48) = v12[2];
    *(v6 + 64) = v11;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.HorizontalPairLayout.interViewSpacing.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 144, v4);
  return sub_1BAD1D030;
}

uint64_t AppStore.HorizontalPairLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v147 = a5;
  v12 = sub_1BAD9DA68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v17 = [a1 traitCollection];
  v18 = [v17 layoutDirection];

  swift_beginAccess();
  if (v18 == 1)
  {
    sub_1BAD14A3C(v16 + 56, v156);
    v19 = v16 + 16;
  }

  else
  {
    sub_1BAD14A3C(v16 + 16, v156);
    v19 = v16 + 56;
  }

  sub_1BAD14A3C(v19, v153);
  swift_beginAccess();
  v20 = (v18 == 1) ^ *(v16 + 96);
  v145 = a3;
  if (v20)
  {
    v21 = v154;
    v22 = v155;
    __swift_project_boxed_opaque_existential_1(v153, v154);
    v23 = (*(*(v22 + 8) + 8))(a1, v21, v147, a6);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_1BAD1CB04(v16 + 104, &v148);
    v140 = v27;
    v146 = v29;
    if (v149)
    {
      sub_1BAD0B40C(&v148, v150);
      v159.origin.x = a3;
      v159.origin.y = a4;
      v159.size.width = v147;
      v159.size.height = a6;
      MinY = CGRectGetMinY(v159);
      v31 = v151;
      v32 = v152;
      __swift_project_boxed_opaque_existential_1(v150, v151);
      v33 = MinY + AnyDimension.topMargin(from:in:)(a1, v31, v32, v23, v25, v27);
      __swift_destroy_boxed_opaque_existential_1(v150);
    }

    else
    {
      sub_1BAD1CDE0(&v148);
      v161.origin.x = a3;
      v161.origin.y = a4;
      v161.size.width = v147;
      v161.size.height = a6;
      v33 = CGRectGetMinY(v161);
    }

    v162.origin.x = a3;
    v162.origin.y = a4;
    v47 = v147;
    v162.size.width = v147;
    v162.size.height = a6;
    v48 = CGRectGetMaxX(v162) - v23;
    v49 = v154;
    v50 = v155;
    __swift_project_boxed_opaque_existential_1(v153, v154);
    v51 = *(v50 + 24);
    v144 = v25;
    v51(v49, v50, v48, v33, v23, v25);
    sub_1BAD14A3C(v16 + 144, v150);
    v52 = v151;
    v53 = v152;
    __swift_project_boxed_opaque_existential_1(v150, v151);
    sub_1BAD6EE7C(v15);
    AnyDimension.value(in:rounded:)(a1, v15, v52, v53);
    v55 = v54;
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v150);
    v163.origin.x = a3;
    v163.origin.y = a4;
    v163.size.width = v47;
    v163.size.height = a6;
    v56 = floor(CGRectGetWidth(v163) - (v23 + v55));
    v164.origin.x = a3;
    v164.origin.y = a4;
    v164.size.width = v56;
    v164.size.height = a6;
    MinX = CGRectGetMinX(v164);
    v165.origin.x = a3;
    v165.origin.y = a4;
    v165.size.width = v47;
    v165.size.height = a6;
    if (CGRectGetMinX(v165) <= MinX && (v166.origin.x = a3, v166.origin.y = a4, v166.size.width = v56, v166.size.height = a6, MaxX = CGRectGetMaxX(v166), v167.origin.x = a3, v167.origin.y = a4, v167.size.width = v147, v167.size.height = a6, MaxX <= CGRectGetMaxX(v167)))
    {
      y = v33;
      v82 = v157;
      v83 = v158;
      __swift_project_boxed_opaque_existential_1(v156, v157);
      v84 = (*(*(v83 + 8) + 8))(a1, v82, v56, a6);
      v86 = v85;
      v88 = v87;
      v90 = v89;
      sub_1BAD1CB04(v16 + 104, &v148);
      v141 = v90;
      v142 = v88;
      if (v149)
      {
        sub_1BAD0B40C(&v148, v150);
        v175.origin.x = a3;
        v175.origin.y = a4;
        v175.size.width = v56;
        v175.size.height = a6;
        v91 = CGRectGetMinY(v175);
        v92 = v151;
        v93 = v152;
        __swift_project_boxed_opaque_existential_1(v150, v151);
        v60 = v91 + AnyDimension.topMargin(from:in:)(a1, v92, v93, v84, v86, v88);
        a3 = v145;
        __swift_destroy_boxed_opaque_existential_1(v150);
      }

      else
      {
        sub_1BAD1CDE0(&v148);
        v177.origin.x = a3;
        v177.origin.y = a4;
        v177.size.width = v56;
        v177.size.height = a6;
        v60 = CGRectGetMinY(v177);
      }

      v178.origin.x = a3;
      v178.origin.y = a4;
      v178.size.width = v56;
      v178.size.height = a6;
      v109 = CGRectGetMinX(v178);
      v110 = v157;
      v111 = v158;
      __swift_project_boxed_opaque_existential_1(v156, v157);
      v112 = *(v111 + 24);
      *&v143 = v86;
      v112(v110, v111, v109, v60, v84, v86);
      v63 = v140;
      v64 = v146;
      v59 = y;
    }

    else
    {
      v59 = v33;
      if (qword_1EBC29BA0 != -1)
      {
        swift_once();
      }

      v60 = *(&xmmword_1EBC29BA8 + 1);
      v143 = qword_1EBC29BC0;
      v141 = *(&xmmword_1EBC29BC8 + 1);
      v142 = *&xmmword_1EBC29BC8;
      v61 = v157;
      v62 = v158;
      __swift_project_boxed_opaque_existential_1(v156, v157);
      (*(v62 + 24))(v61, v62, 0.0, 0.0, 0.0, 0.0);
      v63 = v140;
      v64 = v146;
    }
  }

  else
  {
    v34 = v157;
    v35 = v158;
    __swift_project_boxed_opaque_existential_1(v156, v157);
    v36 = (*(*(v35 + 8) + 8))(a1, v34, v147, a6);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1BAD1CB04(v16 + 104, &v148);
    v142 = v40;
    v141 = v42;
    if (v149)
    {
      sub_1BAD0B40C(&v148, v150);
      v160.origin.x = a3;
      v160.origin.y = a4;
      v160.size.width = v147;
      v160.size.height = a6;
      v43 = CGRectGetMinY(v160);
      v44 = v151;
      v45 = v152;
      __swift_project_boxed_opaque_existential_1(v150, v151);
      v46 = v43 + AnyDimension.topMargin(from:in:)(a1, v44, v45, v36, v38, v40);
      __swift_destroy_boxed_opaque_existential_1(v150);
    }

    else
    {
      sub_1BAD1CDE0(&v148);
      v168.origin.x = a3;
      v168.origin.y = a4;
      v168.size.width = v147;
      v168.size.height = a6;
      v46 = CGRectGetMinY(v168);
    }

    v169.origin.x = a3;
    v169.origin.y = a4;
    v65 = v147;
    v169.size.width = v147;
    v169.size.height = a6;
    v66 = CGRectGetMinX(v169);
    v67 = v157;
    v68 = v158;
    __swift_project_boxed_opaque_existential_1(v156, v157);
    v69 = *(v68 + 24);
    *&v143 = v38;
    v69(v67, v68, v66, v46, v36, v38);
    sub_1BAD14A3C(v16 + 144, v150);
    v70 = v151;
    v71 = v152;
    __swift_project_boxed_opaque_existential_1(v150, v151);
    sub_1BAD6EE7C(v15);
    AnyDimension.value(in:rounded:)(a1, v15, v70, v71);
    v73 = v72;
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v150);
    v74 = ceil(v36 + v73 + a3);
    v170.origin.x = a3;
    v170.origin.y = a4;
    v170.size.width = v65;
    v170.size.height = a6;
    v75 = floor(CGRectGetMaxX(v170) - v74);
    v171.origin.x = v74;
    v171.origin.y = a4;
    v171.size.width = v75;
    v171.size.height = a6;
    v76 = CGRectGetMinX(v171);
    v172.origin.y = a4;
    v77 = v76;
    v172.origin.x = a3;
    y = v172.origin.y;
    v172.size.width = v65;
    v172.size.height = a6;
    if (CGRectGetMinX(v172) <= v77 && (v173.origin.x = v74, v78 = y, v173.origin.y = y, v173.size.width = v75, v173.size.height = a6, v79 = CGRectGetMaxX(v173), v174.origin.x = a3, v174.origin.y = v78, v174.size.width = v147, v174.size.height = a6, v79 <= CGRectGetMaxX(v174)))
    {
      v146 = v46;
      v94 = v154;
      v95 = v155;
      __swift_project_boxed_opaque_existential_1(v153, v154);
      v96 = (*(*(v95 + 8) + 8))(a1, v94, v75, a6);
      v98 = v97;
      v100 = v99;
      v102 = v101;
      sub_1BAD1CB04(v16 + 104, &v148);
      v144 = v98;
      v140 = v100;
      if (v149)
      {
        sub_1BAD0B40C(&v148, v150);
        v176.origin.x = v74;
        v103 = y;
        v176.origin.y = y;
        v176.size.width = v75;
        v176.size.height = a6;
        v104 = CGRectGetMinY(v176);
        v105 = v151;
        v106 = v152;
        __swift_project_boxed_opaque_existential_1(v150, v151);
        v107 = v100;
        v108 = v102;
        v59 = v104 + AnyDimension.topMargin(from:in:)(a1, v105, v106, v96, v144, v107);
        a4 = v103;
        v98 = v144;
        __swift_destroy_boxed_opaque_existential_1(v150);
      }

      else
      {
        v108 = v102;
        sub_1BAD1CDE0(&v148);
        v179.origin.x = v74;
        a4 = y;
        v179.origin.y = y;
        v179.size.width = v75;
        v179.size.height = a6;
        v59 = CGRectGetMinY(v179);
      }

      v180.origin.x = v74;
      v180.origin.y = a4;
      v180.size.width = v75;
      v180.size.height = a6;
      v113 = CGRectGetMaxX(v180) - v96;
      v114 = v154;
      v115 = v155;
      __swift_project_boxed_opaque_existential_1(v153, v154);
      (*(v115 + 24))(v114, v115, v113, v59, v96, v98);
      v63 = v140;
      v64 = v108;
      a3 = v145;
      v60 = v146;
    }

    else
    {
      v60 = v46;
      if (qword_1EBC29BA0 != -1)
      {
        swift_once();
      }

      v59 = *(&xmmword_1EBC29BA8 + 1);
      v63 = *&xmmword_1EBC29BC8;
      v144 = *&qword_1EBC29BC0;
      v64 = *(&xmmword_1EBC29BC8 + 1);
      v80 = v154;
      v81 = v155;
      __swift_project_boxed_opaque_existential_1(v153, v154);
      (*(v81 + 24))(v80, v81, 0.0, 0.0, 0.0, 0.0);
      a4 = y;
    }
  }

  v181.origin.x = a3;
  v181.origin.y = a4;
  v116 = v147;
  v181.size.width = v147;
  v181.size.height = a6;
  v117 = CGRectGetMinY(v181);
  v146 = v60;
  v118 = v60 - v117;
  v182.origin.x = a3;
  v182.origin.y = a4;
  v182.size.width = v116;
  v182.size.height = a6;
  v119 = v59 - CGRectGetMinY(v182);
  if (v118 > v119)
  {
    v119 = v118;
  }

  v120 = a6;
  if (v119 <= 0.0)
  {
    if (v141 > v64)
    {
      v123 = v141;
    }

    else
    {
      v123 = v64;
    }

    v121 = v59;
    if (v142 <= v63)
    {
      v124 = v63 + 0.0;
    }

    else
    {
      v124 = v142 + 0.0;
    }

    v142 = v124;
  }

  else
  {
    v121 = v59;
    v122 = v142;
    if (v142 <= v63)
    {
      v122 = v63;
    }

    v142 = v122 + v119;
    if (v141 <= v64)
    {
      v123 = v64;
    }

    else
    {
      v123 = v141;
    }
  }

  v125 = v145;
  v183.origin.x = v145;
  v183.origin.y = a4;
  v126 = v147;
  v183.size.width = v147;
  v183.size.height = v120;
  v127 = CGRectGetMinX(v183);
  v184.origin.x = v125;
  v184.origin.y = a4;
  v184.size.width = v126;
  v184.size.height = v120;
  v128 = CGRectGetMinY(v184);
  v185.origin.x = v125;
  v185.origin.y = a4;
  v185.size.width = v126;
  v185.size.height = v120;
  Width = CGRectGetWidth(v185);
  v130 = a4;
  v131 = Width;
  v132 = v126;
  if (v146 + *&v143 > v121 + v144)
  {
    v133 = v146 + *&v143;
  }

  else
  {
    v133 = v121 + v144;
  }

  v134 = v125;
  v135 = v120;
  v136 = CGRectGetMinY(*(&v130 - 1));
  *a2 = v127;
  a2[1] = v128;
  a2[2] = v131;
  a2[3] = v133 - v136;
  a2[4] = v142;
  a2[5] = v123;
  __swift_destroy_boxed_opaque_existential_1(v153);
  return __swift_destroy_boxed_opaque_existential_1(v156);
}

unint64_t sub_1BAD1DD28()
{
  result = qword_1EBC2A2F8;
  if (!qword_1EBC2A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A2F8);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s20HorizontalPairLayoutVwet(uint64_t *a1, int a2)
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

uint64_t _s20HorizontalPairLayoutVwst(uint64_t result, int a2, int a3)
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

uint64_t _s20HorizontalPairLayoutV4EdgeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s20HorizontalPairLayoutV4EdgeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_5JetUI12AnyDimension_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BAD1E068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1BAD1E0B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1BAD1E178@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1BAD1E1A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BAD1E228@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BAD10C44();

  *a1 = v2;
  return result;
}

uint64_t Center.Placements.union.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BAD1E338(v1, v15);
  Center.Placements.next()(v9);
  result = sub_1BAD1E500(v15);
  if (v10)
  {
    v4 = v13;
    v5 = v14;
    v7 = v12;
    v8 = v11;
    result = sub_1BAD17170(v9);
    *a1 = v8;
    *(a1 + 16) = v7;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
  }

  else
  {
    if (qword_1EBC29BA0 != -1)
    {
      result = swift_once();
    }

    v6 = *&qword_1EBC29BB8;
    *a1 = xmmword_1EBC29BA8;
    *(a1 + 16) = v6;
    *(a1 + 32) = xmmword_1EBC29BC8;
  }

  return result;
}

uint64_t Center.Placements.next()@<X0>(uint64_t a1@<X8>)
{
  sub_1BAD1ADC4(v1 + 48, &v19);
  if (v20)
  {
    sub_1BAD1A480(&v19, v21);
    sub_1BAD1E530(v1 + 48);
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0;
    v3 = v22;
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = (*(v4 + 8))(*(v1 + 32), v3, v4, v5, v6);
    v9 = v8;
    v17 = v11;
    v18 = v10;
    v12 = *v1;
    v13 = *(v1 + 8);
    v24.origin.x = *v1;
    v24.origin.y = v13;
    v24.size.width = v5;
    v24.size.height = v6;
    v14 = CGRectGetMidX(v24) - v7 * 0.5;
    v25.origin.x = v12;
    v25.origin.y = v13;
    v25.size.width = v5;
    v25.size.height = v6;
    v15 = CGRectGetMidY(v25) - v9 * 0.5;
    sub_1BAD14A3C(v21, &v19);
    sub_1BAD14A3C(&v19, a1);
    *(a1 + 40) = floor(v14);
    *(a1 + 48) = floor(v15);
    *(a1 + 56) = ceil(v7);
    *(a1 + 64) = ceil(v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    *(a1 + 72) = floor(v18);
    *(a1 + 80) = floor(v17);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    result = sub_1BAD1E530(&v19);
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1BAD1E530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double Center.Placements.measure.getter()
{
  v1 = v0;
  sub_1BAD1E338(v0, v7);
  Center.Placements.next()(v6);
  sub_1BAD1E500(v7);
  if (v6[3])
  {
    v2 = *&v6[7];
    sub_1BAD17170(v6);
    v3 = *(v0 + 40);
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (qword_1EBC29BA0 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EBC29BB8;
  v3 = *(v0 + 40);
  if (v3)
  {
LABEL_3:
    Width = CGRectGetWidth(*v1);
    if (v2 <= Width)
    {
      v2 = Width;
    }
  }

LABEL_5:
  if ((v3 & 2) != 0)
  {
    CGRectGetHeight(*v1);
  }

  return v2;
}

__n128 sub_1BAD1E6A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = *(v1 + 80);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1BAD1E6C8()
{
  v1 = sub_1BAD82E74(v0);
  sub_1BAD1E500(v0);
  return v1;
}

uint64_t Center.init(_:filling:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1BAD1A480(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t Center.layout(relativeTo:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = *(v6 + 40);
  sub_1BAD14A3C(v6, v16);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  v14 = a1;
  sub_1BAD1E530(a2 + 48);
  return sub_1BAD1A480(v16, a2 + 48);
}

uint64_t sub_1BAD1E7D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = *(v6 + 40);
  sub_1BAD14A3C(v6, v16);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v13;
  v14 = a1;
  sub_1BAD1E530(a2 + 48);
  return sub_1BAD1A480(v16, a2 + 48);
}

unint64_t sub_1BAD1E884()
{
  result = qword_1EBC2A300;
  if (!qword_1EBC2A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A300);
  }

  return result;
}

unint64_t sub_1BAD1E8DC()
{
  result = qword_1EBC2A308;
  if (!qword_1EBC2A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A308);
  }

  return result;
}

unint64_t sub_1BAD1E934()
{
  result = qword_1EBC2A310;
  if (!qword_1EBC2A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A310);
  }

  return result;
}

unint64_t sub_1BAD1E98C()
{
  result = qword_1EBC2A318;
  if (!qword_1EBC2A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A318);
  }

  return result;
}

unint64_t sub_1BAD1E9E0(uint64_t a1)
{
  result = sub_1BAD1EA08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD1EA08()
{
  result = qword_1EBC2A320;
  if (!qword_1EBC2A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A320);
  }

  return result;
}

unint64_t sub_1BAD1EA60()
{
  result = qword_1EBC2A328;
  if (!qword_1EBC2A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A328);
  }

  return result;
}

unint64_t sub_1BAD1EAB8()
{
  result = qword_1EBC2A330[0];
  if (!qword_1EBC2A330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC2A330);
  }

  return result;
}

uint64_t sub_1BAD1EB0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BAD1EB54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1BAD1EBE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD1EC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id static JUComponent.makeView()()
{
  swift_getAssociatedTypeWitness();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initWithFrame_];
}

uint64_t JUComponentConfiguration.init(contentsOf:with:asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  *a5 = sub_1BAD1F2A0(MEMORY[0x1E69E7CC0]);
  v10 = type metadata accessor for JUComponentConfiguration();
  (*(*(a4 - 8) + 32))(a5 + v10[13], a1, a4);
  v11 = v10[14];
  v12 = sub_1BAD9CB58();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  *(a5 + v10[15]) = a3;
  return result;
}

uint64_t JUComponentConfiguration.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1BAD9CB58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t JUComponentConfiguration.state.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_1BAD9CB58();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t JUComponentConfiguration.objectGraph.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);

  *(v2 + v4) = a1;
  return result;
}

unint64_t sub_1BAD1F050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A400);
    v3 = sub_1BAD9D908();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAD1A3B8(v4, &v11, &qword_1EBC2A408);
      v5 = v11;
      result = sub_1BAD2E780(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BAD11FA4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1BAD1F178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3C8);
    v3 = sub_1BAD9D908();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAD1A3B8(v4, &v11, &qword_1EBC2A3D0);
      v5 = v11;
      result = sub_1BAD2E780(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BAD11FA4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1BAD1F2A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A150);
    v7 = sub_1BAD9D908();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BAD1A3B8(v9, v5, &qword_1EBC2A3F8);
      result = sub_1BAD2D6FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BAD9CA78();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1BAD11FA4(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void sub_1BAD1F510()
{
  sub_1BAD1F5F4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BAD9CB58();
      if (v2 <= 0x3F)
      {
        sub_1BAD9CAB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BAD1F5F4()
{
  if (!qword_1EBC2A3B8)
  {
    sub_1BAD9CA78();
    sub_1BAD1F664();
    v0 = sub_1BAD9CEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC2A3B8);
    }
  }
}

unint64_t sub_1BAD1F664()
{
  result = qword_1EBC2A7C0;
  if (!qword_1EBC2A7C0)
  {
    sub_1BAD9CA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A7C0);
  }

  return result;
}

unint64_t sub_1BAD1F6BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3C0);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1BAD2D780(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1BAD1F7B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A128);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BAD2D7C4(v5, v6);
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

unint64_t sub_1BAD1F8C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3F0);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BAD2E784(v5, v6);
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

unint64_t sub_1BAD1F9DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3E8);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1BAD2D7C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1BAD1FADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A130);
    v3 = sub_1BAD9D908();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAD1A3B8(v4, &v11, &qword_1EBC2A3E0);
      v5 = v11;
      result = sub_1BAD2E780(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BAD11FA4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1BAD1FC04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A148);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BAD2D7C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1BAD1FD00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A158);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1BAD14B3C(v7, v8);
      result = sub_1BAD2D7C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t sub_1BAD1FE18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A138);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1BAD2E784(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1BAD1FF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3D8);
    v3 = sub_1BAD9D908();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BAD2E780(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void sub_1BAD20020()
{
  v0 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v71 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BAD9CDF8();
  v2 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 connectedScenes];

  v7 = sub_1BAD208EC();
  sub_1BAD10780();
  v8 = sub_1BAD9D338();

  v63 = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_1BAD9D6C8();
    sub_1BAD9D388();
    v9 = v77;
    v10 = v78;
    v11 = v79;
    v12 = v80;
    v13 = v81;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);
    v9 = v8;
  }

  v62 = 0;
  v61 = 0;
  v17 = (v11 + 64) >> 6;
  v68 = (v2 + 16);
  v67 = "t=dd}{CGSize=dd}},N,R";
  v66 = (v2 + 8);
  v58 = &v74;
  v60 = MEMORY[0x1E69E7CC0];
  v65 = xmmword_1BAD9F5A0;
  v18 = v64;
  v69 = v17;
  v59 = v11;
LABEL_8:
  v19 = v12;
  while (v9 < 0)
  {
    v27 = sub_1BAD9D718();
    if (!v27 || (v72 = v27, swift_dynamicCast(), v26 = aBlock, v12 = v19, v70 = v13, !aBlock))
    {
LABEL_35:
      sub_1BAD107E8();
      sub_1BAD17DC0(v62);
      return;
    }

LABEL_20:
    if (![v26 activationState])
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = v26;
        v31 = [v29 keyWindow];

        if (v31)
        {
          [v31 bounds];
          v57 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds_];
          v38 = swift_allocObject();
          *(v38 + 16) = v31;
          v56 = v31;
          sub_1BAD17DC0(v62);
          v39 = swift_allocObject();
          *(v39 + 16) = sub_1BAD20A3C;
          *(v39 + 24) = v38;
          v61 = v38;
          v75 = sub_1BAD20A44;
          v76 = v39;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v74 = sub_1BAD209F0;
          *(&v74 + 1) = &block_descriptor_0;
          v40 = _Block_copy(&aBlock);
          v62 = v40;

          v41 = v57;
          v42 = [v57 imageWithActions_];

          _Block_release(v62);
          LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

          if (v41)
          {
            goto LABEL_37;
          }

          v43 = UIImagePNGRepresentation(v42);
          v44 = v42;
          if (v43)
          {
            v45 = v10;
            v46 = v9;
            v47 = v43;
            v62 = sub_1BAD9C2F8();
            v49 = v48;

            v50 = v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1BAD18400(0, *(v60 + 2) + 1, 1, v60);
            }

            v52 = *(v60 + 2);
            v51 = *(v60 + 3);
            if (v52 >= v51 >> 1)
            {
              v60 = sub_1BAD18400((v51 > 1), v52 + 1, 1, v60);
            }

            v53 = v60;
            *(v60 + 2) = v52 + 1;
            v54 = &v53[16 * v52];
            *(v54 + 4) = v62;
            *(v54 + 5) = v49;
            v62 = sub_1BAD20A3C;
            v4 = v50;
            v9 = v46;
            v10 = v45;
            v17 = v69;
            v13 = v70;
          }

          else
          {

            v62 = sub_1BAD20A3C;
            v13 = v70;
          }

          goto LABEL_8;
        }
      }
    }

    if (qword_1EBC29C50 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v18, qword_1EBC357E8);
    (*v68)(v4, v32, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
    sub_1BAD9C898();
    *(swift_allocObject() + 16) = v65;
    sub_1BAD9C848();
    sub_1BAD9C838();
    v33 = [v26 title];
    if (v33)
    {
      v20 = v33;
      v21 = sub_1BAD9CF68();
      v23 = v22;

      *(&v74 + 1) = MEMORY[0x1E69E6158];
      *&aBlock = v21;
      *(&aBlock + 1) = v23;
      v18 = v64;
    }

    else
    {
      aBlock = 0u;
      v74 = 0u;
    }

    sub_1BAD9C808();
    sub_1BAD05470(&aBlock);
    sub_1BAD9C838();
    sub_1BAD9C868();
    sub_1BAD9CCB8();

    (*v66)(v4, v18);
    v19 = v12;
    v17 = v69;
    v13 = v70;
  }

  v24 = v19;
  v25 = v13;
  v12 = v19;
  if (v13)
  {
LABEL_16:
    v70 = (v25 - 1) & v25;
    v26 = *(*(v9 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v26)
    {
      goto LABEL_35;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_35;
    }

    v25 = *(v10 + 8 * v12);
    ++v24;
    if (v25)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

unint64_t sub_1BAD208EC()
{
  result = qword_1EBC29FE0;
  if (!qword_1EBC29FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC29FE0);
  }

  return result;
}

void sub_1BAD20938(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

void sub_1BAD209F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAD20A84(uint64_t a1, int a2)
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

uint64_t sub_1BAD20ACC(uint64_t result, int a2, int a3)
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

uint64_t sub_1BAD20B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1BAD13F18(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1BAD2D7C4(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1BAD21C8C();
        v16 = v18;
      }

      result = sub_1BAD21480(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1BAD20C24(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BAD11FA4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1BAD140A0(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1BAD9CA78();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1BAD1A420(a1, &qword_1EBC2A120);
    sub_1BAD212F8(a2, v9);
    v7 = sub_1BAD9CA78();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1BAD1A420(v9, &qword_1EBC2A120);
  }

  return result;
}

uint64_t sub_1BAD20D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BAD0B40C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1BAD143E4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1BAD1A420(a1, &qword_1EBC2A448);
    sub_1BAD213D4(a2, a3, v9);

    return sub_1BAD1A420(v9, &qword_1EBC2A448);
  }

  return result;
}

uint64_t sub_1BAD20E10(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BAD9CFA8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*a3 != 1)
  {
    if (!*(*(v5 + 16) + 16) || (, sub_1BAD2D7C4(a4, a5), v16 = v15, , (v16 & 1) == 0))
    {

      sub_1BAD9CF98();
      v18 = sub_1BAD9CF78();
      sub_1BAD20B1C(v18, v19, a4, a5);
      return 1;
    }

    return 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v11 = sub_1BAD9C2D8();
  v12 = [v10 initWithData_];

  if (!v12)
  {
    return 0;
  }

  v13 = *(v5 + 24);
  v14 = sub_1BAD796E0(v13, v12);

  if (!v14)
  {
    return 0;
  }

  *(v5 + 24) = v14;
  return 1;
}

NSData *sub_1BAD20F88@<X0>(uint64_t a1@<X2>, UIImage *a2@<X3>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_1BAD9C2C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  sub_1BAD9C298();
  sub_1BAD9C288();
  sub_1BAD9C288();
  result = UIImagePNGRepresentation(a2);
  if (result)
  {
    v16 = result;
    v17 = sub_1BAD9C2F8();
    v19 = v18;

    sub_1BAD9C308();
    sub_1BAD14AE8(v17, v19);
    if (v3)
    {
      v23 = *(v7 + 8);
      v23(a3, v6);
    }

    else
    {
      sub_1BAD9C1D8();
      swift_allocObject();
      sub_1BAD9C1C8();
      v26 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A410);
      sub_1BAD2269C();
      v20 = sub_1BAD9C1B8();
      v22 = v21;

      v25 = sub_1BAD9C2E8();
      sub_1BAD14AE8(v20, v22);
      sub_1BAD22718();

      v23 = *(v7 + 8);
    }

    v23(v10, v6);
    return (v23)(v12, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAD212C0()
{
  v1 = sub_1BAD1F7B4(MEMORY[0x1E69E7CC0]);

  *(v0 + 16) = v1;
  return result;
}

double sub_1BAD212F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BAD2D6FC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BAD21E04();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1BAD9CA78();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1BAD11FA4((*(v9 + 56) + 32 * v7), a2);
    sub_1BAD21630(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1BAD213D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1BAD2D7C4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BAD221F0();
      v10 = v12;
    }

    sub_1BAD0B40C((*(v10 + 56) + 40 * v8), a3);
    sub_1BAD21950(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BAD21480(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BAD9D6A8() + 1) & ~v5;
    do
    {
      sub_1BAD9DB48();

      sub_1BAD9D018();
      v9 = sub_1BAD9DB88();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAD21630(int64_t a1, uint64_t a2)
{
  v41 = sub_1BAD9CA78();
  v4 = *(v41 - 8);
  result = MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1BAD9D6A8();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      sub_1BAD22A6C(&qword_1EBC2A7C0, MEMORY[0x1E69AB090]);
      v23 = sub_1BAD9CED8();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 32 * a1);
          v30 = (v28 + 32 * v10);
          if (a1 != v10 || v29 >= v30 + 2)
          {
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1BAD21950(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BAD9D6A8() + 1) & ~v5;
    do
    {
      sub_1BAD9DB48();

      sub_1BAD9D018();
      v11 = sub_1BAD9DB88();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

id sub_1BAD21B0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A130);
  v2 = *v0;
  v3 = sub_1BAD9D8E8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1BAD149E0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1BAD11FA4(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_1BAD21C8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A128);
  v2 = *v0;
  v3 = sub_1BAD9D8E8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1BAD21E04()
{
  v1 = v0;
  v26 = sub_1BAD9CA78();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A150);
  v3 = *v0;
  v4 = sub_1BAD9D8E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_1BAD149E0(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1BAD11FA4(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

void *sub_1BAD22088()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A148);
  v2 = *v0;
  v3 = sub_1BAD9D8E8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1BAD221F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A140);
  v2 = *v0;
  v3 = sub_1BAD9D8E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1BAD14A3C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BAD0B40C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1BAD22398()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A158);
  v2 = *v0;
  v3 = sub_1BAD9D8E8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1BAD14B3C(v22, *(&v22 + 1));
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

void *sub_1BAD2251C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A138);
  v2 = *v0;
  v3 = sub_1BAD9D8E8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

unint64_t sub_1BAD2269C()
{
  result = qword_1EBC2A418;
  if (!qword_1EBC2A418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A418);
  }

  return result;
}

void sub_1BAD22718()
{
  v0 = sub_1BAD9C278();
  v1 = CGImageSourceCreateWithURL(v0, 0);

  if (v1)
  {
    v2 = sub_1BAD9C278();
    v3 = CGImageDestinationCreateWithURL(v2, *MEMORY[0x1E6963860], 1uLL, 0);

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A428);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BAD9F5A0;
      v5 = *MEMORY[0x1E696DB40];
      *(inited + 32) = *MEMORY[0x1E696DB40];
      v6 = v5;
      *(inited + 40) = sub_1BAD9CF38();
      sub_1BAD1F6BC(inited);
      swift_setDeallocating();
      sub_1BAD1A420(inited + 32, &qword_1EBC2A430);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_1BAD9F5A0;
      v8 = *MEMORY[0x1E696D9B0];
      *(v7 + 32) = *MEMORY[0x1E696D9B0];
      sub_1BAD22A20();
      sub_1BAD22A6C(&qword_1EBC2A440, sub_1BAD22A20);
      v9 = v8;
      v10 = sub_1BAD9CE88();

      *(v7 + 40) = v10;
      sub_1BAD1F6BC(v7);
      swift_setDeallocating();
      sub_1BAD1A420(v7 + 32, &qword_1EBC2A430);
      v11 = sub_1BAD9CE88();

      CGImageDestinationAddImageFromSource(v3, v1, 0, v11);

      CGImageDestinationFinalize(v3);
    }

    else
    {
      sub_1BAD229CC();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1BAD229CC();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

unint64_t sub_1BAD229CC()
{
  result = qword_1EBC2A420;
  if (!qword_1EBC2A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A420);
  }

  return result;
}

unint64_t sub_1BAD22A20()
{
  result = qword_1EBC2A438;
  if (!qword_1EBC2A438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC2A438);
  }

  return result;
}

uint64_t sub_1BAD22A6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BAD22AC8()
{
  result = qword_1EBC2A450;
  if (!qword_1EBC2A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A450);
  }

  return result;
}

id sub_1BAD22B30(void *a1)
{
  v1 = [a1 navigationController];

  return v1;
}

id UINavigationController.ju_navigationController.getter()
{
  v1 = [v0 navigationController];

  return v1;
}

id sub_1BAD22BA0(void *a1)
{
  v1 = [a1 navigationItem];

  return v1;
}

id UINavigationController.ju_navigationItem.getter()
{
  v1 = [v0 navigationItem];

  return v1;
}

void *LayoutView.withMeasurements(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v15 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PartialLayoutView();
  (*(v15 + 16))(v17, v7, a1);
  result = sub_1BAD774DC(v17, a4, a5, a6, a7, v18, a1, a2);
  a3[3] = v18;
  a3[4] = &off_1F38EC728;
  *a3 = result;
  return result;
}

void *LayoutView.withMeasurements(representing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PartialLayoutView();
  (*(v11 + 16))(v13, v5, a1);
  result = sub_1BAD774DC(v13, a4, a5, a5, 0.0, v14, a1, a2);
  a3[3] = v14;
  a3[4] = &off_1F38EC728;
  *a3 = result;
  return result;
}

uint64_t LayoutView.withMeasurements(providedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PartialLayoutView();
  sub_1BAD14A3C(a1, v15);
  (*(v9 + 16))(v11, v4, a2);
  result = sub_1BAD775D4(v15, v11, v12, a2, a3);
  a4[3] = v12;
  a4[4] = &off_1F38EC728;
  *a4 = result;
  return result;
}

uint64_t sub_1BAD23024()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A478);
  swift_allocObject();
  result = sub_1BAD9DC58();
  qword_1EDBA6018 = result;
  return result;
}

uint64_t static JetUIBugCompatibility.enable<A>(_:perform:)()
{
  if (qword_1EDBA6028 != -1)
  {
    swift_once();
  }

  sub_1BAD9DC68();
  return sub_1BAD9DC78();
}

uint64_t static JetUIBugCompatibility.disable<A>(_:perform:)()
{
  if (qword_1EDBA6028 != -1)
  {
    swift_once();
  }

  sub_1BAD9DC68();
  return sub_1BAD9DC78();
}

unint64_t sub_1BAD23228()
{
  result = qword_1EBC2A458;
  if (!qword_1EBC2A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A458);
  }

  return result;
}

unint64_t sub_1BAD23280()
{
  result = qword_1EBC2A460;
  if (!qword_1EBC2A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A460);
  }

  return result;
}

unint64_t sub_1BAD232D8()
{
  result = qword_1EBC2A468;
  if (!qword_1EBC2A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A468);
  }

  return result;
}

unint64_t sub_1BAD23330()
{
  result = qword_1EBC2A470;
  if (!qword_1EBC2A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2A470);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAD233A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BAD233F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD23440(uint64_t result)
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

  result = sub_1BAD1801C(result, v10, 1, v3);
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

uint64_t sub_1BAD23538(uint64_t result)
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

  result = sub_1BAD18400(result, v10, 1, v3);
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

uint64_t sub_1BAD2362C()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1BAD23664()
{
  sub_1BAD20020();
  sub_1BAD23538(v0);
  return 1;
}

uint64_t ReusePool.init(recycler:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  *a4 = sub_1BAD9D1C8();
  v8 = type metadata accessor for ReusePool();
  result = (*(*(a3 - 8) + 32))(a4 + *(v8 + 36), a1, a3);
  *(a4 + *(v8 + 40)) = a2;
  return result;
}

uint64_t sub_1BAD2375C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v27 = *(a1 + 16);
  v28 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  result = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v21 - v7;
  v9 = *(v1 + *(a1 + 40));
  if (v9 >= 1)
  {
    result = sub_1BAD9D208();
    if (v9 < result)
    {
      result = sub_1BAD9D208();
      v10 = result - v9;
      if (__OFSUB__(result, v9))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v10 < 0)
      {
LABEL_14:
        __break(1u);
        return result;
      }

      v24 = a1;
      sub_1BAD9D298();
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v29 = 0;
      v30 = v10;
      sub_1BAD9D278();
      swift_getWitnessTable();
      v25 = v1;
      sub_1BAD9D458();
      swift_unknownObjectRetain();
      v17 = sub_1BAD9D638();
      swift_unknownObjectRelease();
      v18 = sub_1BAD9D658();
      v26 = v17;
      if (v17 != v18)
      {
        v22 = *(v28 + 24);
        v23 = v28 + 24;
        v19 = *(v24 + 36);
        v24 = v16 >> 1;
        v21[1] = v5 + 16;
        v21[2] = v19;
        v20 = v26;
        while (1)
        {
          result = sub_1BAD9D648();
          if (v26 < v14 || v24 <= v20)
          {
            break;
          }

          (*(v5 + 16))(v8, v12 + *(v5 + 72) * v20++, AssociatedTypeWitness);
          v22(v8, v27, v28);
          (*(v5 + 8))(v8, AssociatedTypeWitness);
          if (v20 == sub_1BAD9D658())
          {
            return swift_unknownObjectRelease();
          }
        }

        __break(1u);
        goto LABEL_13;
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t *(*ReusePool.limit.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_1BAD23A44;
}

uint64_t *sub_1BAD23A44(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1BAD2375C(*result);
  }

  return result;
}

uint64_t ReusePool.isEmpty.getter()
{
  swift_getAssociatedTypeWitness();
  sub_1BAD9D278();
  swift_getWitnessTable();
  return sub_1BAD9D428() & 1;
}

uint64_t ReusePool.dequeue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAD9D278();
  swift_getWitnessTable();
  if (sub_1BAD9D428())
  {
    v6 = 1;
  }

  else
  {
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1BAD9D478();
    (*(v3 + 32))(a2, v4, v3);
    v6 = 0;
  }

  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v6, 1, AssociatedTypeWitness);
}

uint64_t ReusePool.dequeue(or:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1BAD9D598();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  ReusePool.dequeue()(a2, &v14 - v9);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v11 + 32))(a3, v10, AssociatedTypeWitness);
  }

  v12 = (*(v8 + 8))(v10, v7);
  return a1(v12);
}

BOOL ReusePool.recycle(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  v10 = ReusePool.canRecycleMore.getter(a2);
  if (v10)
  {
    (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
    sub_1BAD9D278();
    sub_1BAD9D228();
    (*(v4 + 16))(a1, v5, v4);
  }

  else
  {
    (*(v4 + 24))(a1, v5, v4);
  }

  return v10;
}

Swift::Void __swiftcall ReusePool.drain()()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v21 = v0;
  v22 = v3;
  v24 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v18 - v6;
  v26 = *v1;
  sub_1BAD9D278();

  swift_getWitnessTable();
  sub_1BAD9D668();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v23 = v1;
  sub_1BAD9D268();
  swift_unknownObjectRetain();
  v14 = sub_1BAD9D638();
  swift_unknownObjectRelease();
  v15 = sub_1BAD9D658();
  v25 = v14;
  if (v14 == v15)
  {
LABEL_6:
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v25;
    v19 = *(v24 + 24);
    v20 = v24 + 24;
    v17 = *(v21 + 36);
    v21 = v13 >> 1;
    v18[0] = v5 + 16;
    v18[1] = v17;
    while (1)
    {
      sub_1BAD9D648();
      if (v25 < v11 || v21 <= v16)
      {
        break;
      }

      (*(v5 + 16))(v7, v9 + *(v5 + 72) * v16++, AssociatedTypeWitness);
      v19(v7, v22, v24);
      (*(v5 + 8))(v7, AssociatedTypeWitness);
      if (v16 == sub_1BAD9D658())
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t ReusePool.description.getter()
{
  sub_1BAD9D7E8();

  v0 = sub_1BAD9DC88();
  MEMORY[0x1BFB026B0](v0);

  MEMORY[0x1BFB026B0](0x3A74696D696C283ELL, 0xE900000000000020);
  v1 = sub_1BAD9DA48();
  MEMORY[0x1BFB026B0](v1);

  MEMORY[0x1BFB026B0](0x6C6379636572202CLL, 0xEC000000203A6465);
  swift_getAssociatedTypeWitness();
  sub_1BAD9D208();
  v2 = sub_1BAD9DA48();
  MEMORY[0x1BFB026B0](v2);

  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  return 0x6F6F506573756552;
}

uint64_t sub_1BAD2441C()
{
  swift_getAssociatedTypeWitness();
  result = sub_1BAD9D278();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAD244D0(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BAD24618(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

id NSAttributedString.baseWritingDirection(forCharacterAt:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BADA1DB0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1BAD249E0();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v6 + 32) = 0xD000000000000025;
    *(v6 + 40) = 0x80000001BADA9C60;
    *(v6 + 96) = v8;
    *(v6 + 104) = v9;
    *(v6 + 64) = v7;
    *(v6 + 72) = a1;
    v10 = [v1 length];
    *(v6 + 136) = v8;
    *(v6 + 144) = v9;
    *(v6 + 112) = v10;
    sub_1BAD9CF88();
    v11 = *MEMORY[0x1E695DA20];
    v12 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v13 = sub_1BAD9CF38();

    v4 = [v12 initWithName:v11 reason:v13 userInfo:0];

    [v4 raise];
    v5 = 0;
  }

  else
  {
    v3 = [v1 juParagraphStyleAtIndex:a1 effectiveRange:0];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 baseWritingDirection];
  }

  return v5;
}

unint64_t sub_1BAD249E0()
{
  result = qword_1EBC2B6B0;
  if (!qword_1EBC2B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B6B0);
  }

  return result;
}

uint64_t NSAttributedString.juBaseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(uint64_t a1, _BYTE *a2)
{
  result = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  if (a2)
  {
    *a2 = v4 & 1;
  }

  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1BAD24A6C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1;
  v7 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a3);
  if (a4)
  {
    *a4 = v8 & 1;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

Swift::String __swiftcall NSAttributedString.convertedWritingDirectionToBidiControlCharacters()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  if (qword_1EBC29A18 != -1)
  {
    swift_once();
  }

  [v1 performSelector_];
  v2 = [v1 string];
  v3 = sub_1BAD9CF68();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()()
{
  if (qword_1EBC29A18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC29A20;
  v2 = v0;

  [v2 performSelector_];
}

void sub_1BAD24C08()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v1 = sub_1BAD9CF38();
  v2 = [v0 initWithString_];

  qword_1EBC2A480 = v2;
}

id static NSAttributedString.juEmpty.getter()
{
  if (qword_1EBC29BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC2A480;

  return v1;
}

id sub_1BAD24CC4()
{
  if (qword_1EBC29BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC2A480;

  return v1;
}

uint64_t NSAttributedString.juStrongBaseWritingDirectionOfParagraph(atOrBefore:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BADA1DB0;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1BAD249E0();
    v12 = MEMORY[0x1E69E6530];
    v13 = MEMORY[0x1E69E65A8];
    *(v10 + 32) = 0xD000000000000034;
    *(v10 + 40) = 0x80000001BADA9C90;
    *(v10 + 96) = v12;
    *(v10 + 104) = v13;
    *(v10 + 64) = v11;
    *(v10 + 72) = a1;
    v14 = [v1 length];
    *(v10 + 136) = v12;
    *(v10 + 144) = v13;
    *(v10 + 112) = v14;
    sub_1BAD9CF88();
    v15 = *MEMORY[0x1E695DA20];
    v16 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v17 = sub_1BAD9CF38();

    v18 = [v16 initWithName:v15 reason:v17 userInfo:0];

    [v18 raise];
    return 0;
  }

  v20 = 0;
  v21 = 1;
  v3 = *MEMORY[0x1E69DB688];
  v4 = swift_allocObject();
  *(v4 + 16) = &v20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BAD25190;
  *(v5 + 24) = v4;
  v19[4] = sub_1BAD25198;
  v19[5] = v5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1BAD1268C;
  v19[3] = &block_descriptor_1;
  v6 = _Block_copy(v19);

  [v1 enumerateAttribute:v3 inRange:0 options:a1 usingBlock:{2, v6}];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v20;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1BAD2504C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_1BAD116E0(a1, v8);
  if (v9)
  {
    sub_1BAD053C8(0, &qword_1EBC29A00);
    if (swift_dynamicCast())
    {
      if ([v7 baseWritingDirection] == 1 || !objc_msgSend(v7, sel_baseWritingDirection))
      {
        *a5 = [v7 baseWritingDirection];
        *(a5 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_1BAD05470(v8);
  }
}

uint64_t NSAttributedString.juStrongBaseWritingDirectionOfParagraphAtOrBeforeIndex(_:)(uint64_t a1)
{
  result = NSAttributedString.juStrongBaseWritingDirectionOfParagraph(atOrBefore:)(a1);
  if (v2)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1BAD25144(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSAttributedString.juStrongBaseWritingDirectionOfParagraph(atOrBefore:)(a3);
  v7 = v6;

  if (v7)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(Swift::OpaquePointer at, Swift::OpaquePointer paragraphRanges)
{
  v3 = *(at._rawValue + 2);
  if (v3)
  {
    v5 = (at._rawValue + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1BAD25220(&v7, v2, paragraphRanges._rawValue);
      --v3;
    }

    while (v3);
  }
}