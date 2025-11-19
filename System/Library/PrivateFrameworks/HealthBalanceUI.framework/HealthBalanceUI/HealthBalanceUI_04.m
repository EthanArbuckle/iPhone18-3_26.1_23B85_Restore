void sub_1CFEB1E5C(uint64_t a1@<X8>)
{
  *a1 = sub_1CFF0D84C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1CFEB1F64();
  sub_1CFEB0BE4(v1);
  v3 = sub_1CFF0DAAC();
  sub_1CFF0D40C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1CFEB264C(0, &qword_1EC512938, sub_1CFEB26B0);
  v13 = a1 + *(v12 + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
}

void sub_1CFEB1F64()
{
  if (!qword_1EC5128A8)
  {
    sub_1CFEB1FCC();
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5128A8);
    }
  }
}

void sub_1CFEB1FCC()
{
  if (!qword_1EC5128B0)
  {
    sub_1CFEB2080();
    sub_1CFEB220C(255, &qword_1EC5128C0, sub_1CFEB20D8);
    sub_1CFEB2578();
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5128B0);
    }
  }
}

void sub_1CFEB2080()
{
  if (!qword_1EC5128B8)
  {
    v0 = sub_1CFF0E4AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5128B8);
    }
  }
}

void sub_1CFEB20D8()
{
  if (!qword_1EC5128C8)
  {
    sub_1CFEB216C();
    sub_1CFEB2B70(255, &qword_1EC512928, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5128C8);
    }
  }
}

void sub_1CFEB216C()
{
  if (!qword_1EC5128D0)
  {
    sub_1CFEB220C(255, &qword_1EC5128D8, sub_1CFEB2260);
    sub_1CFEB27B0(&qword_1EC512920, &qword_1EC5128D8, sub_1CFEB2260);
    v0 = sub_1CFF0E01C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5128D0);
    }
  }
}

void sub_1CFEB220C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0E16C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFEB2260()
{
  if (!qword_1EC5128E0)
  {
    sub_1CFEB2340(255, &qword_1EC5128E8, &qword_1EDEC1FD8, sub_1CFE52EF0, sub_1CFE53340);
    sub_1CFEB2340(255, &qword_1EC5128F0, &qword_1EC5128F8, sub_1CFEB23E0, sub_1CFEB24A4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5128E0);
    }
  }
}

void sub_1CFEB2340(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1CFEB264C(255, a3, a4);
    a5();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1CFEB23E0()
{
  if (!qword_1EC512900)
  {
    sub_1CFF0E03C();
    sub_1CFEB2A24(&qword_1EC512908, MEMORY[0x1E6981998]);
    v0 = sub_1CFF0D95C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512900);
    }
  }
}

unint64_t sub_1CFEB24A4()
{
  result = qword_1EC512910;
  if (!qword_1EC512910)
  {
    sub_1CFEB264C(255, &qword_1EC5128F8, sub_1CFEB23E0);
    sub_1CFEB2A24(&qword_1EC512918, sub_1CFEB23E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512910);
  }

  return result;
}

unint64_t sub_1CFEB2578()
{
  result = qword_1EC512930;
  if (!qword_1EC512930)
  {
    sub_1CFEB2080();
    sub_1CFEB25F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512930);
  }

  return result;
}

unint64_t sub_1CFEB25F8()
{
  result = qword_1EDEC4A70;
  if (!qword_1EDEC4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC4A70);
  }

  return result;
}

void sub_1CFEB264C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0D62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFEB26B0()
{
  if (!qword_1EC512940)
  {
    sub_1CFEB1FCC();
    sub_1CFEB2714();
    v0 = sub_1CFF0DFDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512940);
    }
  }
}

unint64_t sub_1CFEB2714()
{
  result = qword_1EC512948;
  if (!qword_1EC512948)
  {
    sub_1CFEB1FCC();
    sub_1CFEB27B0(&qword_1EC512950, &qword_1EC5128C0, sub_1CFEB20D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512948);
  }

  return result;
}

uint64_t sub_1CFEB27B0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1CFEB220C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFEB2844()
{
  sub_1CFF0CA6C();
  if (v0 <= 0x3F)
  {
    sub_1CFEB2B70(319, &qword_1EDEC2118, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFEB28F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFEB2914(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1CFEB2950()
{
  result = qword_1EC512968;
  if (!qword_1EC512968)
  {
    sub_1CFEB264C(255, &qword_1EC512938, sub_1CFEB26B0);
    sub_1CFEB2A24(&qword_1EC512970, sub_1CFEB26B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512968);
  }

  return result;
}

uint64_t sub_1CFEB2A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEB2A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WarmupProgressCounter() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFEB0E30(a1, v6, a2);
}

void sub_1CFEB2AEC()
{
  if (!qword_1EC512978)
  {
    sub_1CFEB220C(255, &qword_1EC5128D8, sub_1CFEB2260);
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512978);
    }
  }
}

void sub_1CFEB2B70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1CFEB2BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEB2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1CFEB2C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEB2CF0(uint64_t a1)
{
  v2 = sub_1CFF0E03C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFEB2DB8(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return sub_1CFF0DE3C();
}

uint64_t sub_1CFEB2E78(void *a1, uint64_t a2)
{
  v4 = sub_1CFF0CFFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, a2);
  (*(v5 + 16))(v7, v8, v4);
  return sub_1CFF0DEFC();
}

id sub_1CFEB2FA0(void *a1)
{
  if ([a1 accessibilityContrast] == 1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v3 = 0.094;
    v4 = 0.427;
    v5 = 0.788;
  }

  else
  {
    v6 = [a1 userInterfaceStyle];
    v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v6 == 2)
    {
      v3 = 0.333;
      v4 = 0.682;
      v5 = 1.0;
    }

    else
    {
      v3 = 0.243;
      v4 = 0.592;
      v5 = 0.973;
    }
  }

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:1.0];
}

id sub_1CFEB30C4(void *a1)
{
  v1 = [a1 accessibilityContrast];
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v1 == 1)
  {
    v3 = 0.612;
    v4 = 0.349;
    v5 = 0.709;
  }

  else
  {
    v3 = 0.729;
    v4 = 0.443;
    v5 = 1.0;
  }

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:1.0];
}

uint64_t sub_1CFEB319C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CFEB336C;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  *a4 = v9;
  return result;
}

id sub_1CFEB325C(void *a1)
{
  v1 = [a1 accessibilityContrast];
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v1 == 1)
  {
    v3 = 0.8;
    v4 = 0.129;
    v5 = 0.694;
  }

  else
  {
    v4 = 0.424;
    v5 = 0.898;
    v3 = 1.0;
  }

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:1.0];
}

id sub_1CFEB330C(void *a1, void **a2)
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

id sub_1CFEB336C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CFEB3410()
{
  result = qword_1EC512980;
  if (!qword_1EC512980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512980);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CFEB3480(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CFEB34C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1CFEB352C()
{
  result = qword_1EC512988;
  if (!qword_1EC512988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512988);
  }

  return result;
}

void sub_1CFEB3580(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *(v5 + 16);
  if (sub_1CFF0DE2C())
  {
    sub_1CFF0DC0C();
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    CGRectGetMidX(v22);
    __sincos_stret(v11);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    CGRectGetMidY(v23);
    v18 = 0x3FF0000000000000uLL;
    *&v19 = 0;
    *(&v19 + 1) = 0x3FF0000000000000;
    v20 = 0;
    v21 = 0;
    sub_1CFF0DBFC();
    v12 = v15;
    v13 = v16;
    v14 = v17;
  }

  else
  {
    sub_1CFEB36AC(&v18, a2, a3, a4, a5);
    v12 = v18;
    v13 = v19;
    v14 = v20;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
}

__n128 sub_1CFEB36AC@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = 0.0;
  v55.size.height = 0.0;
  if (!CGRectEqualToRect(*&a2, v55))
  {
    v33 = *(v5 + 16);
    v31 = *(v5 + 24);
    v13 = *v5;
    v12 = *(v5 + 8);
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    MidX = CGRectGetMidX(v53);
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v43 = MidX;
    MidY = CGRectGetMidY(v54);
    v45 = v12 - v13 * 0.5;
    v46 = v13;
    v47 = v12 + v13 * 0.5;
    v48 = a2;
    v49 = a3;
    v50 = a4;
    v51 = a5;
    v52 = v12;
    v15 = v45;
    Mutable = CGPathCreateMutable();
    v37 = 0x3FF0000000000000;
    v38 = 0;
    v39 = 0;
    v40 = 0x3FF0000000000000;
    v41 = 0;
    v42 = 0;
    v32 = v47;
    sub_1CFF0E80C();
    v17 = __sincos_stret(v31);
    v18 = MidX + v17.__cosval * v45;
    v19 = MidY;
    v20 = v17.__sinval * v45 + MidY;
    v21 = *(v5 + 32);
    if (v21 != 3 && *(v5 + 32))
    {
      if ((v21 - 3) < 0xFFFFFFFE)
      {
        if (v21 == 2)
        {
          goto LABEL_11;
        }

        goto LABEL_13;
      }

      if ((*(v5 + 48) & 1) == 0)
      {
        v22 = *(v5 + 40);
        sub_1CFEB3B10(v31, v22);
        sub_1CFF0E80C();
        sub_1CFEB3BD4(1, &v34, v31, v22);
        v18 = v35;
        v20 = v36;
        sub_1CFF0E80C();
      }
    }

    else
    {
      atan2(v17.__sinval * v47 + MidY - (v17.__sinval * v47 + MidY + v20) * 0.5, MidX + v17.__cosval * v47 - (MidX + v17.__cosval * v47 + v18) * 0.5);
      sub_1CFF0E80C();
      if (!v21)
      {
        goto LABEL_11;
      }
    }

    if (v21 == 2)
    {
LABEL_11:
      atan2(v20 - v19, v18 - MidX);
      sub_1CFF0E80C();
      v23 = __sincos_stret(v33);
      atan2(v23.__sinval * v15 + v19 - (v23.__sinval * v15 + v19 + v23.__sinval * v32 + v19) * 0.5, MidX + v23.__cosval * v15 - (MidX + v23.__cosval * v15 + MidX + v23.__cosval * v32) * 0.5);
LABEL_17:
      sub_1CFF0E80C();
      CGPathCloseSubpath(Mutable);
      v11 = &v34;
      sub_1CFF0DC1C();
      goto LABEL_18;
    }

LABEL_13:
    if ((*(v5 + 48) & 1) != 0 || (v21 | 2) != 3)
    {
      atan2(v20 - v19, v18 - MidX);
    }

    else
    {
      v24 = *(v5 + 40);
      sub_1CFEB3B10(v33, v24);
      sub_1CFEB3BD4(0, &v34, v33, v24);
      v25 = v20 - v19;
      v26 = v35;
      v27 = v36;
      atan2(v25, v18 - MidX);
      atan2(v27 - v19, v26 - MidX);
      sub_1CFF0E80C();
      sub_1CFF0E80C();
    }

    goto LABEL_17;
  }

  v11 = &v43;
  sub_1CFF0DC0C();
LABEL_18:
  v28 = *(v11 + 32);
  result = *v11;
  v30 = *(v11 + 1);
  *a1 = *v11;
  *(a1 + 16) = v30;
  *(a1 + 32) = v28;
  return result;
}

double sub_1CFEB3B10(double a1, double a2)
{
  v4 = v2[4];
  v5 = __sincos_stret(a1);
  v6 = *v2;
  v7 = v2[1];
  v8 = v5.__cosval * v4 + *v2;
  v9 = v5.__sinval * v4 + v7;
  v10 = a2 + a2;
  v11 = v8 - (a2 + a2);
  if (*v2 >= v8)
  {
    v11 = a2 + a2 + v8;
  }

  v12 = v7 < v9;
  v13 = v9 - v10;
  v14 = v10 + v9;
  if (!v12)
  {
    v13 = v14;
  }

  v15 = v8 == v6;
  if (v8 == v6)
  {
    v16 = v5.__cosval * v4 + *v2;
  }

  else
  {
    v16 = v11;
  }

  if (!v15)
  {
    v13 = v9;
  }

  v17 = (v8 + v16) * 0.5;
  atan2(v9 - (v9 + v13) * 0.5, v8 - v17);
  return v17;
}

void sub_1CFEB3BD4(char a1@<W0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = v4[4];
  v9 = __sincos_stret(a3);
  v10 = *v4;
  v11 = v4[1];
  v12 = v9.__cosval * v8 + *v4;
  v13 = v9.__sinval * v8 + v11;
  sub_1CFEB4128(v12, v13, v4[2]);
  v15 = v12 - v14;
  if (v10 >= v12)
  {
    v15 = v12 + v14;
  }

  v16 = v13 - v14;
  v17 = v13 + v14;
  if (v11 < v13)
  {
    v17 = v16;
  }

  if (v12 == v10)
  {
    v13 = v17;
  }

  else
  {
    v12 = v15;
  }

  v18 = a4 + a4;
  if (v12 == v10)
  {
    if (v11 >= v13)
    {
      v19 = v13 - v18;
    }

    else
    {
      v19 = v18 + v13;
    }

    v20 = v12;
  }

  else
  {
    v20 = v18 + v12;
    v21 = v12 - v18;
    if (v10 >= v12)
    {
      v20 = v21;
    }

    v19 = v13;
  }

  v22 = (v12 + v20) * 0.5;
  v23 = (v13 + v19) * 0.5;
  v24 = atan2(v13 - v23, v12 - v22);
  v25 = v24 + -1.57079633;
  if ((a1 & 1) == 0)
  {
    v25 = v24;
  }

  *a2 = v22;
  a2[1] = v23;
  if ((a1 & 1) == 0)
  {
    v24 = v24 + 1.57079633;
  }

  a2[2] = v25;
  a2[3] = v24;
  a2[4] = v12;
  a2[5] = v13;
}

double sub_1CFEB3D00@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1CFEB3580(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1CFEB3D64(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1CFF0D3EC();
  return sub_1CFEB3DEC;
}

void sub_1CFEB3DEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1CFEB3E3C()
{
  result = qword_1EDEC23C8[0];
  if (!qword_1EDEC23C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC23C8);
  }

  return result;
}

unint64_t sub_1CFEB3E94()
{
  result = qword_1EDEC23C0;
  if (!qword_1EDEC23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC23C0);
  }

  return result;
}

unint64_t sub_1CFEB3EEC()
{
  result = qword_1EDEC2190;
  if (!qword_1EDEC2190)
  {
    sub_1CFEB3F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2190);
  }

  return result;
}

void sub_1CFEB3F44()
{
  if (!qword_1EDEC2188)
  {
    sub_1CFEB3FC0();
    v0 = sub_1CFF0D41C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2188);
    }
  }
}

unint64_t sub_1CFEB3FC0()
{
  result = qword_1EDEC23B8;
  if (!qword_1EDEC23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC23B8);
  }

  return result;
}

uint64_t sub_1CFEB4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFEB3FC0();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1CFEB4078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFEB3FC0();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1CFEB40DC(uint64_t a1)
{
  v2 = sub_1CFEB3FC0();

  return MEMORY[0x1EEDE4410](a1, v2);
}

void sub_1CFEB4128(double a1, double a2, double a3)
{
  if (*v3 != a1)
  {
    sqrt(a3 * a3 - (a2 - v3[1]) * (a2 - v3[1]));
  }
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

uint64_t sub_1CFEB41C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1CFEB4208(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1CFEB42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CFEB8D88(0, &qword_1EDEC4A50, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CFEB85B4(a3, v25 - v10);
  v12 = sub_1CFF0E70C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFEB8308(v11, &qword_1EDEC4A50, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1CFF0E6FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFF0E66C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CFF0E5DC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1CFEB8308(a3, &qword_1EDEC4A50, MEMORY[0x1E69E85F0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CFEB8308(a3, &qword_1EDEC4A50, MEMORY[0x1E69E85F0]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1CFEB45F0()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleWatch];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFEB4650@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  sub_1CFEB8D88(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v54 = &v42 - v2;
  v3 = sub_1CFF0CDFC();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CFF0C7AC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CFF0CADC();
  v44 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1CFF0D03C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFF0C81C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFF0C89C();
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, *MEMORY[0x1E6969868], v15, v20);
  v23 = v22;
  sub_1CFF0C82C();
  (*(v16 + 8))(v18, v15);
  sub_1CFF0D01C();
  v24 = sub_1CFF0D02C();
  v25 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v57 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, &v57);
    _os_log_impl(&dword_1CFE44000, v24, v25, "[%{public}s] returning placeholder", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1D387A160](v27, -1, -1);
    MEMORY[0x1D387A160](v26, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  LODWORD(v51) = *(v51 + 48);
  v28 = type metadata accessor for BalanceWidgetTimelineEntry();
  v29 = v50;
  sub_1CFF0C78C();
  sub_1CFF0C78C();
  sub_1CFF0C78C();
  v30 = v10;
  v43 = v23;
  sub_1CFF0CA9C();
  (*(v47 + 8))(v6, v49);
  sub_1CFEB8700(MEMORY[0x1E69E7CC0]);
  v31 = v53;
  sub_1CFF0CDDC();
  v32 = v44;
  v33 = v48;
  v34 = v52;
  (*(v44 + 16))(v48, v30, v52);
  v36 = v54;
  v35 = v55;
  v37 = v56;
  (*(v55 + 16))(v54, v31, v56);
  (*(v35 + 56))(v36, 0, 1, v37);
  OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)(v33, MEMORY[0x1E69E7CC0], v36, v29);
  v38 = type metadata accessor for BalanceWidgetViewModel();
  sub_1CFF0C9DC();
  (*(v35 + 8))(v31, v37);
  (*(v32 + 8))(v30, v34);
  (*(v45 + 8))(v43, v46);
  *(v29 + *(v38 + 24)) = v51;
  *(v29 + *(v38 + 28)) = 0;
  v39 = *(v28 + 24);
  v40 = sub_1CFF0E3CC();
  return (*(*(v40 - 8) + 56))(v29 + v39, 1, 1, v40);
}

uint64_t sub_1CFEB4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0D03C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D01C();
  v10 = sub_1CFF0D02C();
  v11 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, &v18);
    _os_log_impl(&dword_1CFE44000, v10, v11, "[%{public}s] fetching snapshot", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D387A160](v14, -1, -1);
    MEMORY[0x1D387A160](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = sub_1CFE82BB4();
  return sub_1CFEB4EF0(v15 & 1, a2, a3);
}

uint64_t sub_1CFEB4EF0(int a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v102 = a2;
  v101 = a1;
  v3 = MEMORY[0x1E69E6720];
  sub_1CFEB8D88(0, &qword_1EDEC4A50, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = &v86 - v5;
  v97 = sub_1CFF0C88C();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEB8D88(0, &qword_1EDEC4CF8, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v86 - v8;
  v9 = sub_1CFF0CADC();
  v111 = *(v9 - 8);
  v10 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v86 - v18;
  v109 = sub_1CFF0C7AC();
  v100 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v86 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  v98 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v31 = sub_1CFF0C81C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1CFF0C89C();
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v35;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v86 - v38;
  (*(v32 + 104))(v34, *MEMORY[0x1E6969868], v31, v37);
  sub_1CFF0C82C();
  v40 = v34;
  v41 = v30;
  v42 = (*(v32 + 8))(v40, v31);
  v43 = v92;
  v44 = (*(v92 + 56))(v42);
  if (*(v43 + 48))
  {
    sub_1CFF0CA9C();
    v45 = v9;
    v46 = v111;
    v47 = v26;
    v48 = v39;
    v49 = v45;
  }

  else
  {
    v48 = v39;
    if ((*(v43 + 72))(v44))
    {
      sub_1CFF0CA9C();
    }

    else
    {
      sub_1CFF0CACC();
    }

    v49 = v9;
    v47 = v26;
    v46 = v111;
    (*(v111 + 32))(v16, v13, v49);
  }

  sub_1CFEB63C4(v16, v113);
  v50 = *(v46 + 8);
  v104 = v49;
  v91 = v46 + 8;
  v90 = v50;
  v50(v16, v49);
  v51 = v96;
  v52 = v94;
  v53 = v97;
  (*(v96 + 104))(v94, *MEMORY[0x1E6969A48], v97);
  v54 = v95;
  sub_1CFF0C87C();
  v55 = v53;
  v56 = v54;
  (*(v51 + 8))(v52, v55);
  v57 = v100;
  v58 = v54;
  v59 = v109;
  if ((*(v100 + 48))(v58, 1, v109) == 1)
  {
    sub_1CFEB8308(v56, &qword_1EDEC4CF8, MEMORY[0x1E6969530]);
    (*(v57 + 16))(v47, v41, v59);
  }

  else
  {
    v60 = v87;
    (*(v57 + 32))(v87, v56, v59);
    sub_1CFF0C83C();
    (*(v57 + 8))(v60, v59);
  }

  v61 = v47;
  v88 = v48;
  v62 = sub_1CFF0E70C();
  (*(*(v62 - 8) + 56))(v112, 1, 1, v62);
  sub_1CFEB8378(v43, v114);
  v63 = v111;
  v64 = v104;
  (*(v111 + 16))(v110, v113, v104);
  v65 = *(v57 + 16);
  v65(v106, v41, v59);
  v89 = v61;
  v65(v108, v61, v59);
  v66 = v99;
  (*(v99 + 16))(v105, v48, v107);
  v67 = (*(v63 + 80) + 120) & ~*(v63 + 80);
  v97 = v41;
  v68 = v57;
  v69 = v67 + v10;
  v70 = *(v68 + 80);
  v71 = (v70 + v67 + v10 + 1) & ~v70;
  v72 = (v98 + v70 + v71) & ~v70;
  v73 = (v98 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = (*(v66 + 80) + v73 + 16) & ~*(v66 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  v75 = v114[3];
  *(v74 + 64) = v114[2];
  *(v74 + 80) = v75;
  *(v74 + 96) = v114[4];
  *(v74 + 112) = v115;
  v76 = v114[1];
  *(v74 + 32) = v114[0];
  *(v74 + 48) = v76;
  (*(v63 + 32))(v74 + v67, v110, v64);
  *(v74 + v69) = v101 & 1;
  v77 = *(v68 + 32);
  v78 = v109;
  v77(v74 + v71, v106, v109);
  v79 = v74 + v72;
  v80 = v78;
  v77(v79, v108, v78);
  v81 = (v74 + v73);
  v82 = v103;
  *v81 = v102;
  v81[1] = v82;
  v83 = v107;
  (*(v66 + 32))(v74 + v98, v105, v107);

  sub_1CFEB42B4(0, 0, v112, &unk_1CFF12A18, v74);

  v84 = *(v68 + 8);
  v84(v89, v80);
  v90(v113, v104);
  v84(v97, v80);
  return (*(v66 + 8))(v88, v83);
}

uint64_t sub_1CFEB5940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0D03C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D01C();
  v10 = sub_1CFF0D02C();
  v11 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, &v18);
    _os_log_impl(&dword_1CFE44000, v10, v11, "[%{public}s] fetching timeline", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D387A160](v14, -1, -1);
    a2 = v17;
    MEMORY[0x1D387A160](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  sub_1CFEB4D04(a1, sub_1CFEB8A78, v15);
}

uint64_t sub_1CFEB5B58(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v21 = a1;
  v3 = sub_1CFF0E3AC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1CFEB8A80();
  v22 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFF0D03C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D01C();
  v12 = sub_1CFF0D02C();
  v13 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, &v25);
    _os_log_impl(&dword_1CFE44000, v12, v13, "[%{public}s] returning timeline", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D387A160](v15, -1, -1);
    MEMORY[0x1D387A160](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_1CFEB8D88(0, &qword_1EC5129A8, type metadata accessor for BalanceWidgetTimelineEntry, MEMORY[0x1E69E6F90]);
  v16 = *(type metadata accessor for BalanceWidgetTimelineEntry() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CFF10480;
  sub_1CFEB87EC(v21, v18 + v17, type metadata accessor for BalanceWidgetTimelineEntry);
  sub_1CFF0E39C();
  sub_1CFEB9200(&qword_1EDEC4880, type metadata accessor for BalanceWidgetTimelineEntry);
  sub_1CFF0E3EC();
  v24(v7);
  return (*(v5 + 8))(v7, v22);
}

uint64_t sub_1CFEB5F1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for BalanceWidgetTimelineEntry();
  v2[5] = swift_task_alloc();
  v3 = sub_1CFF0D03C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFEB600C, 0, 0);
}

uint64_t sub_1CFEB600C()
{
  v16 = v0;
  sub_1CFF0D01C();
  v1 = sub_1CFF0D02C();
  v2 = sub_1CFF0E7EC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, &v15);
    _os_log_impl(&dword_1CFE44000, v1, v2, "[%{public}s] returning widget relevance", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D387A160](v8, -1, -1);
    MEMORY[0x1D387A160](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v9 = v0[3];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = 1;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1CFEB6210;
  v13 = v0[4];
  v12 = v0[5];

  return MEMORY[0x1EEE6DDE0](v12, 0, 0, 0xD000000000000029, 0x80000001CFF161B0, sub_1CFEB8034, v10, v13);
}

uint64_t sub_1CFEB6210()
{

  return MEMORY[0x1EEE6DFA0](sub_1CFEB6328, 0, 0);
}

uint64_t sub_1CFEB6328()
{
  v1 = v0[5];
  sub_1CFE82EE0(v1, v0[2]);
  sub_1CFEB8854(v1, type metadata accessor for BalanceWidgetTimelineEntry);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1CFEB63C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CFF0C89C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEB89AC();
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v52 - v9;
  sub_1CFE5C014();
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFF0E29C();
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v52 - v18;
  v19 = sub_1CFF0D03C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1CFF0E56C();
    v26 = [v24 integerForKey_];

    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v28 = result;
    v29 = [result isAppleInternalInstall];

    if (v29)
    {
      sub_1CFF0D01C();
      v30 = sub_1CFF0D02C();
      v31 = sub_1CFF0E7EC();
      v32 = os_log_type_enabled(v30, v31);
      v54 = a2;
      v56 = v26;
      v57 = a1;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v67 = v34;
        *v33 = 136446466;
        *(v33 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, &v67);
        *(v33 + 12) = 2048;
        *(v33 + 14) = v26;
        _os_log_impl(&dword_1CFE44000, v30, v31, "[%{public}s] applying days offset: %ld", v33, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x1D387A160](v34, -1, -1);
        MEMORY[0x1D387A160](v33, -1, -1);
      }

      (*(v20 + 8))(v22, v19);
      sub_1CFF0CA8C();
      v36 = v63;
      v35 = v64;
      v37 = *(v63 + 16);
      v37(v64, v12, v13);
      v55 = sub_1CFE5C014;
      sub_1CFEB8854(v12, sub_1CFE5C014);
      v38 = v65;
      sub_1CFF0E27C();
      v39 = *(v36 + 8);
      v39(v35, v13);
      sub_1CFF0CA8C();
      v40 = &v12[*(v66 + 36)];
      v41 = v62;
      v53 = v37;
      v37(v62, v40, v13);
      v42 = v12;
      sub_1CFEB8854(v12, v55);
      sub_1CFF0E27C();
      v39(v41, v13);
      sub_1CFEB9200(qword_1EDEC4A88, MEMORY[0x1E696B418]);
      result = sub_1CFF0E49C();
      if (result)
      {
        v43 = v35;
        v44 = v58;
        v45 = v53;
        v53(v58, v38, v13);
        v46 = v60;
        v45(v44 + *(v60 + 48), v43, v13);
        v47 = v59;
        sub_1CFEB87EC(v44, v59, sub_1CFEB89AC);
        v48 = *(v46 + 48);
        v49 = *(v63 + 32);
        v49(v42, v47, v13);
        v39((v47 + v48), v13);
        sub_1CFEB8A14(v44, v47);
        v49(&v42[*(v66 + 36)], v47 + *(v46 + 48), v13);
        v39(v47, v13);
        sub_1CFF0CAAC();
        sub_1CFF0CA7C();
        v39(v64, v13);
        return (v39)(v65, v13);
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  v50 = sub_1CFF0CADC();
  v51 = *(*(v50 - 8) + 16);

  return v51(a2, a1, v50);
}

uint64_t sub_1CFEB6ADC(uint64_t a1, uint64_t a2, int a3)
{
  sub_1CFEB8230();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1CFEB4EF0(a3, sub_1CFEB8298, v11);
}

uint64_t sub_1CFEB6C20(uint64_t a1)
{
  v2 = type metadata accessor for BalanceWidgetTimelineEntry();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFEB87EC(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalanceWidgetTimelineEntry);
  sub_1CFEB8230();
  return sub_1CFF0E69C();
}

uint64_t sub_1CFEB6CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v17;
  *(v8 + 80) = v16;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 296) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  v9 = sub_1CFF0C7AC();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_1CFF0D03C();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = type metadata accessor for BalanceWidgetTimelineEntry();
  *(v8 + 160) = swift_task_alloc();
  sub_1CFEB8D88(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  *(v8 + 168) = swift_task_alloc();
  v11 = sub_1CFF0CADC();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = type metadata accessor for BalanceWidgetViewModel();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1CFF0CDFC();
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1CFF0CDCC();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFEB6FE8, 0, 0);
}

uint64_t sub_1CFEB6FE8()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_1CFEB709C;
  v2 = *(v0 + 272);
  v3 = *(v0 + 296);
  v4 = *(v0 + 56);

  return BalanceWidgetDataProvider.loadSummaries(for:isLiveContent:isRetrying:)(v2, v4, v3, 0);
}

uint64_t sub_1CFEB709C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1CFEB79C8;
  }

  else
  {
    v2 = sub_1CFEB71B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFEB71B0()
{
  v75 = v0;
  v1 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  sub_1CFE5B83C();
  v2 = *(v0 + 272);
  if (v1)
  {
    v3 = v1;
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_1CFF0D01C();
    v4 = v1;
    v5 = sub_1CFF0D02C();
    v6 = sub_1CFF0E7CC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);
    v73 = v3;
    if (v7)
    {
      v71 = *(v0 + 128);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74[0] = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, v74);
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v68 = v9;
      v13 = *(*(v0 + 24) - 8);
      swift_task_alloc();
      (*(v13 + 16))();
      v14 = sub_1CFF0E5BC();
      v16 = v15;

      v17 = sub_1CFE462A4(v14, v16, v74);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_1CFE44000, v5, v6, "[%{public}s] error while fetching day summaries: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D387A160](v12, -1, -1);
      MEMORY[0x1D387A160](v11, -1, -1);

      (*(v8 + 8))(v68, v71);
    }

    else
    {

      (*(v8 + 8))(v9, v10);
    }

    v29 = *(v0 + 232);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);
    v52 = *(v0 + 240);
    v54 = *(v0 + 192);
    v32 = *(v0 + 168);
    v56 = *(v0 + 176);
    v58 = *(v0 + 224);
    v33 = *(v0 + 160);
    v65 = *(v0 + 152);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = *(v0 + 104);
    v61 = *(v0 + 208);
    v70 = *(v0 + 80);
    v67 = *(v0 + 72);
    v64 = *(v0 + 64);
    v62 = *(*(v0 + 48) + 48);
    sub_1CFF0C78C();
    sub_1CFF0CA9C();
    (*(v35 + 8))(v34, v36);
    sub_1CFEB8700(MEMORY[0x1E69E7CC0]);
    sub_1CFF0CDDC();
    (*(v31 + 16))(v54, v30, v56);
    (*(v29 + 16))(v32, v52, v58);
    (*(v29 + 56))(v32, 0, 1, v58);
    OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)(v54, MEMORY[0x1E69E7CC0], v32, v33);
    sub_1CFF0C9DC();
    (*(v29 + 8))(v52, v58);
    (*(v31 + 8))(v30, v56);
    *(v33 + *(v61 + 24)) = v62;
    *(v33 + *(v61 + 28)) = 0;
    v37 = *(v35 + 16);
    v37(v33 + v65[5], v64, v36);
    v38 = v65[6];
    v39 = sub_1CFF0E3CC();
    (*(*(v39 - 8) + 56))(v33 + v38, 1, 1, v39);
    v37(v33 + v65[7], v67, v36);
    v70(v33);

    sub_1CFEB8854(v33, type metadata accessor for BalanceWidgetTimelineEntry);
  }

  else
  {
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);
    v72 = *(v0 + 224);
    v21 = *(v0 + 200);
    v43 = *(v0 + 192);
    v22 = *(v0 + 176);
    v48 = *(v0 + 216);
    v49 = *(v0 + 184);
    v46 = *(v0 + 168);
    v50 = *(v0 + 208);
    v51 = *(v0 + 160);
    v55 = *(v0 + 152);
    v57 = *(v0 + 112);
    v59 = *(v0 + 104);
    v63 = *(v0 + 80);
    v60 = *(v0 + 72);
    v53 = *(v0 + 64);
    v69 = *(v0 + 256);
    v23 = *(v0 + 48);
    v24 = *(v49 + 16);
    v45 = *(v0 + 264);
    v24(v21, *(v0 + 56), v22);
    v66 = v2;
    v42 = sub_1CFF0CD9C();
    v44 = *(v23 + 48);
    v25 = *(v20 + 16);
    v25(v19, v18, v72);
    v24(v43, v21, v22);
    v25(v46, v19, v72);
    (*(v20 + 56))(v46, 0, 1, v72);
    OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)(v43, v42, v46, v48);
    sub_1CFF0C9DC();
    v47 = *(v20 + 8);
    v47(v19, v72);
    (*(v49 + 8))(v21, v22);
    *(v48 + *(v50 + 24)) = v44;
    *(v48 + *(v50 + 28)) = 0;
    sub_1CFEB87EC(v48, v51, type metadata accessor for BalanceWidgetViewModel);
    v26 = *(v57 + 16);
    v26(v51 + v55[5], v53, v59);
    v27 = v55[6];
    sub_1CFE82CEC();
    v28 = sub_1CFF0E3CC();
    (*(*(v28 - 8) + 56))(v51 + v27, 0, 1, v28);
    v26(v51 + v55[7], v60, v59);
    v63(v51);
    sub_1CFEB8854(v51, type metadata accessor for BalanceWidgetTimelineEntry);
    sub_1CFEB8854(v48, type metadata accessor for BalanceWidgetViewModel);
    v47(v18, v72);
    (*(v45 + 8))(v66, v69);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1CFEB79C8()
{
  v43 = v0;
  v1 = v0[36];
  sub_1CFF0D01C();
  v2 = v1;
  v3 = sub_1CFF0D02C();
  v4 = sub_1CFF0E7CC();

  v41 = v1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v38 = v0[16];
    v40 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF12960, &v42);
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v8 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = sub_1CFF0E5BC();
    v11 = v10;

    v12 = sub_1CFE462A4(v9, v11, &v42);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1CFE44000, v3, v4, "[%{public}s] error while fetching day summaries: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D387A160](v7, -1, -1);
    MEMORY[0x1D387A160](v6, -1, -1);

    (*(v5 + 8))(v40, v38);
  }

  else
  {
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[29];
  v17 = v0[25];
  v18 = v0[23];
  v29 = v0[30];
  v30 = v0[24];
  v19 = v0[21];
  v31 = v0[22];
  v32 = v0[28];
  v20 = v0[20];
  v21 = v0[14];
  v22 = v0[15];
  v23 = v0[13];
  v33 = v0[26];
  v39 = v0[10];
  v36 = v0[19];
  v37 = v0[9];
  v35 = v0[8];
  v34 = *(v0[6] + 48);
  sub_1CFF0C78C();
  sub_1CFF0CA9C();
  (*(v21 + 8))(v22, v23);
  sub_1CFEB8700(MEMORY[0x1E69E7CC0]);
  sub_1CFF0CDDC();
  (*(v18 + 16))(v30, v17, v31);
  (*(v16 + 16))(v19, v29, v32);
  (*(v16 + 56))(v19, 0, 1, v32);
  OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)(v30, MEMORY[0x1E69E7CC0], v19, v20);
  sub_1CFF0C9DC();
  (*(v16 + 8))(v29, v32);
  (*(v18 + 8))(v17, v31);
  *(v20 + *(v33 + 24)) = v34;
  *(v20 + *(v33 + 28)) = 0;
  v24 = *(v21 + 16);
  v24(v20 + v36[5], v35, v23);
  v25 = v36[6];
  v26 = sub_1CFF0E3CC();
  (*(*(v26 - 8) + 56))(v20 + v25, 1, 1, v26);
  v24(v20 + v36[7], v37, v23);
  v39(v20);

  sub_1CFEB8854(v20, type metadata accessor for BalanceWidgetTimelineEntry);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1CFEB7EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CFEA2F50;

  return MEMORY[0x1EEDE8208](a1, a2, a3);
}

uint64_t sub_1CFEB7F9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CFEA3DCC;

  return sub_1CFEB5F1C(a1);
}

uint64_t sub_1CFEB8040(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CFEB8138;

  return v6(a1);
}

uint64_t sub_1CFEB8138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1CFEB8230()
{
  if (!qword_1EDEC1700)
  {
    type metadata accessor for BalanceWidgetTimelineEntry();
    v0 = sub_1CFF0E6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1700);
    }
  }
}

uint64_t sub_1CFEB8298(uint64_t a1)
{
  sub_1CFEB8230();

  return sub_1CFEB6C20(a1);
}

uint64_t sub_1CFEB8308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFEB8D88(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFEB83B0(uint64_t a1)
{
  v3 = *(sub_1CFF0CADC() - 8);
  v14 = (*(v3 + 80) + 120) & ~*(v3 + 80);
  v4 = v14 + *(v3 + 64);
  v5 = *(sub_1CFF0C7AC() - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 1) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  sub_1CFF0C89C();
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v4);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1CFEA2F50;

  return sub_1CFEB6CC8(a1, v9, v10, v1 + 32, v1 + v14, v11, v1 + v7, v1 + v8);
}

uint64_t sub_1CFEB85B4(uint64_t a1, uint64_t a2)
{
  sub_1CFEB8D88(0, &qword_1EDEC4A50, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFEB8648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFEA2F50;

  return sub_1CFEB8040(a1, v4);
}

unint64_t sub_1CFEB8700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFEB88B4();
    v3 = sub_1CFF0EA6C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CFEC3CAC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_1CFEB87EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEB8854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFEB88B4()
{
  if (!qword_1EC512990)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_1CFEB8960();
    sub_1CFEB9200(&qword_1EC512210, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_1CFF0EA7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512990);
    }
  }
}

unint64_t sub_1CFEB8960()
{
  result = qword_1EC512998;
  if (!qword_1EC512998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC512998);
  }

  return result;
}

void sub_1CFEB89AC()
{
  if (!qword_1EDEC17E0)
  {
    sub_1CFF0E29C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC17E0);
    }
  }
}

uint64_t sub_1CFEB8A14(uint64_t a1, uint64_t a2)
{
  sub_1CFEB89AC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFEB8A80()
{
  if (!qword_1EC5129A0)
  {
    type metadata accessor for BalanceWidgetTimelineEntry();
    sub_1CFEB9200(&qword_1EDEC4880, type metadata accessor for BalanceWidgetTimelineEntry);
    v0 = sub_1CFF0E3FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5129A0);
    }
  }
}

unint64_t sub_1CFEB8B14(uint64_t a1)
{
  sub_1CFEB8CE8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1CFE7A020();
    v8 = sub_1CFF0EA6C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1CFEB87EC(v10, v6, sub_1CFEB8CE8);
      result = sub_1CFEC3BD8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1CFF0CCEC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_1CFEB8CE8()
{
  if (!qword_1EDEC4950)
  {
    sub_1CFF0CCEC();
    sub_1CFEB8D88(255, &qword_1EDEC1728, sub_1CFE59578, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4950);
    }
  }
}

void sub_1CFEB8D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1CFEB8DEC(uint64_t a1)
{
  sub_1CFEB90FC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1CFEB9164();
    v8 = sub_1CFF0EA6C();
    v9 = &v6[*(v3 + 48)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1CFEB87EC(v10, v6, sub_1CFEB90FC);
      result = sub_1CFEC3AB8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1CFF0CB6C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 16 * v14;
      v18 = v9[8];
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1CFEB8FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFEB90A0();
    v3 = sub_1CFF0EA6C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1CFEC3B8C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

void sub_1CFEB90A0()
{
  if (!qword_1EDEC1640)
  {
    v0 = sub_1CFF0EA7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1640);
    }
  }
}

void sub_1CFEB90FC()
{
  if (!qword_1EDEC4CC8)
  {
    sub_1CFF0CB6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4CC8);
    }
  }
}

void sub_1CFEB9164()
{
  if (!qword_1EDEC4A20)
  {
    sub_1CFF0CB6C();
    sub_1CFEB9200(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v0 = sub_1CFF0EA7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4A20);
    }
  }
}

uint64_t sub_1CFEB9200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEB9248@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  sub_1CFE8DBDC();
  v65 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v66 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = v55 - v7;
  v8 = sub_1CFF0C88C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBA420(0, &qword_1EDEC4CF8, MEMORY[0x1E6969530]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v55 - v15;
  v17 = sub_1CFF0C7AC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v57 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v68 = v55 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v55 - v23;
  v63 = a1;
  sub_1CFF0C83C();
  v25 = *MEMORY[0x1E6969A48];
  v58 = *(v9 + 104);
  v58(v11, v25, v8);
  v62 = v2;
  sub_1CFF0C87C();
  v26 = *(v9 + 8);
  v59 = v8;
  v61 = v9 + 8;
  v26(v11, v8);
  v69 = v18;
  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    v28 = v16;
    v29 = v69;
LABEL_5:
    sub_1CFEBA4CC(v28, &qword_1EDEC4CF8, MEMORY[0x1E6969530]);
    sub_1CFEBA474();
    v32 = v63;
    result = sub_1CFF0E49C();
    if (result)
    {
      v34 = *(v29 + 32);
      v35 = v64;
      v34(v64, v24, v17);
      v36 = v65;
      (*(v29 + 16))(v35 + *(v65 + 48), v32, v17);
      v37 = v66;
      sub_1CFEBA528(v35, v66, sub_1CFE8DBDC);
      v38 = *(v36 + 48);
      v39 = v67;
      v34(v67, v37, v17);
      v40 = *(v29 + 8);
      v40(v37 + v38, v17);
      sub_1CFEBA590(v35, v37);
      v41 = *(v36 + 48);
      sub_1CFE69B4C();
      v34(&v39[*(v42 + 36)], (v37 + v41), v17);
      return (v40)(v37, v17);
    }

    __break(1u);
    goto LABEL_11;
  }

  v30 = *(v69 + 32);
  v55[1] = v69 + 32;
  v56 = v30;
  v30(v68, v16, v17);
  v31 = v59;
  v58(v11, *MEMORY[0x1E6969A98], v59);
  v28 = v60;
  sub_1CFF0C87C();
  v26(v11, v31);
  if (v27(v28, 1, v17) == 1)
  {
    v29 = v69;
    (*(v69 + 8))(v68, v17);
    goto LABEL_5;
  }

  v43 = v57;
  v56(v57, v28, v17);
  sub_1CFEBA474();
  v44 = sub_1CFF0E49C();
  v45 = *(v69 + 8);
  result = v45(v68, v17);
  if ((v44 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v46 = v64;
  v47 = v24;
  v48 = v56;
  v56(v64, v47, v17);
  v49 = v65;
  v48(v46 + *(v65 + 48), v43, v17);
  v50 = v66;
  sub_1CFEBA528(v46, v66, sub_1CFE8DBDC);
  v51 = *(v49 + 48);
  v52 = v67;
  v48(v67, v50, v17);
  v45((v50 + v51), v17);
  sub_1CFEBA590(v46, v50);
  v53 = *(v49 + 48);
  sub_1CFE69B4C();
  v48(&v52[*(v54 + 36)], (v50 + v53), v17);
  return v45(v50, v17);
}

uint64_t sub_1CFEB98B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_1CFE8DBDC();
  v57 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v50 - v7;
  v8 = sub_1CFF0C88C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBA420(0, &qword_1EDEC4CF8, MEMORY[0x1E6969530]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v66 = sub_1CFF0C7AC();
  v17 = *(v66 - 8);
  v18 = MEMORY[0x1EEE9AC00](v66);
  v58 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v60 = &v50 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - v25;
  sub_1CFF0C83C();
  sub_1CFE69B4C();
  v54 = v27;
  v64 = a1;
  sub_1CFF0C83C();
  v28 = *MEMORY[0x1E6969A48];
  v59 = *(v9 + 104);
  v59(v11, v28, v8);
  v63 = v2;
  sub_1CFF0C87C();
  v29 = *(v9 + 8);
  v30 = v8;
  v61 = v9 + 8;
  v29(v11, v8);
  v31 = v66;
  v67 = v17;
  v32 = *(v17 + 48);
  if (v32(v16, 1, v66) == 1)
  {
    v33 = *(v67 + 8);
    v33(v24, v31);
    v33(v26, v31);
LABEL_5:
    sub_1CFEBA4CC(v16, &qword_1EDEC4CF8, MEMORY[0x1E6969530]);
    return sub_1CFEBA528(v64, v65, sub_1CFE69B4C);
  }

  v52 = v24;
  v53 = v26;
  v34 = *(v67 + 32);
  v35 = v60;
  v50 = v67 + 32;
  v51 = v34;
  v34(v60, v16, v31);
  v59(v11, *MEMORY[0x1E6969A98], v30);
  v36 = v62;
  sub_1CFF0C87C();
  v29(v11, v30);
  if (v32(v36, 1, v31) == 1)
  {
    v37 = *(v67 + 8);
    v37(v35, v31);
    v37(v52, v31);
    v37(v53, v31);
    v16 = v36;
    goto LABEL_5;
  }

  v39 = v31;
  v40 = v58;
  v51(v58, v36, v39);
  sub_1CFEBA474();
  v41 = v53;
  v42 = sub_1CFF0E49C();
  v43 = *(v67 + 8);
  v43(v35, v39);
  result = (v43)(v52, v39);
  if (v42)
  {
    v44 = v55;
    v45 = v51;
    v51(v55, v41, v39);
    v46 = v57;
    v45(v44 + *(v57 + 48), v40, v39);
    v47 = v56;
    sub_1CFEBA528(v44, v56, sub_1CFE8DBDC);
    v48 = *(v46 + 48);
    v49 = v65;
    v45(v65, v47, v39);
    v43((v47 + v48), v39);
    sub_1CFEBA590(v44, v47);
    v45(v49 + *(v54 + 36), (v47 + *(v46 + 48)), v39);
    return (v43)(v47, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFEB9EDC(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_1CFF0D03C();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFF0C88C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBA420(0, &qword_1EDEC4D28, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_1CFF0C49C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFF0C7AC();
  v17 = (MEMORY[0x1EEE9AC00])(v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  if (a1 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v32 = v18;
  v33 = v17;
  sub_1CFF0C83C();
  (*(v6 + 104))(v8, *MEMORY[0x1E6969A48], v5);
  sub_1CFF0C84C();
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CFEBA4CC(v11, &qword_1EDEC4D28, MEMORY[0x1E6968130]);
    v21 = v35;
    sub_1CFF0D01C();
    v22 = sub_1CFF0D02C();
    v23 = sub_1CFF0E7CC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1CFE462A4(0x7261646E656C6143, 0xE800000000000000, &v39);
      _os_log_impl(&dword_1CFE44000, v22, v23, "[%s] Unable to compute day date interval; returning no dates", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1D387A160](v25, -1, -1);
      MEMORY[0x1D387A160](v24, -1, -1);
    }

    (*(v36 + 8))(v21, v37);
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v27 = sub_1CFF0C48C();
    v28 = MEMORY[0x1EEE9AC00](v27);
    *(&v31 - 2) = v20;
    *(&v31 - 1) = v28;
    v26 = sub_1CFEDA160(sub_1CFEBA3D8, (&v31 - 4), 0, v29);
    (*(v13 + 8))(v15, v12);
  }

  (*(v32 + 8))(v20, v33);
  return v26;
}

void sub_1CFEBA420(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0E8AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CFEBA474()
{
  result = qword_1EDEC5198;
  if (!qword_1EDEC5198)
  {
    sub_1CFF0C7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC5198);
  }

  return result;
}

uint64_t sub_1CFEBA4CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFEBA420(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFEBA528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEBA590(uint64_t a1, uint64_t a2)
{
  sub_1CFE8DBDC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFEBA5F4(int8x16_t a1)
{
  v2 = v1;
  v99 = a1;
  sub_1CFE69B4C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - v6;
  v95 = COERCE_DOUBLE(sub_1CFF0E09C());
  v90 = *(*&v95 - 8);
  MEMORY[0x1EEE9AC00](*&v95);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v87 - v14;
  v16 = *(v1 + 1);
  v100 = *v1;
  v101 = v16;
  sub_1CFEE371C(&v87 - v14, v12, *v99.i64);
  *v17.i64 = *v99.i64 - trunc(*v99.i64);
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v99 = vbslq_s8(vnegq_f64(v18), v17, v99);
  v19 = sub_1CFEBAECC(v15);
  v20 = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
  if (v19)
  {
    v21 = 8;
  }

  else
  {
    v21 = 16;
  }

  v22 = *&v2[v20[8] + v21];

  if (sub_1CFEBAECC(v12))
  {
    v23 = 8;
  }

  else
  {
    v23 = 16;
  }

  v24 = *&v2[v20[8] + v23];

  v25 = sub_1CFF0DE4C();
  v93 = v24;
  if ((v25 & 1) != 0 || *v99.i64 == 0.0)
  {

    v97 = v22;
  }

  else if (*v99.i64 == 1.0)
  {

    v97 = v24;
  }

  else
  {
    sub_1CFF0E08C();
    v97 = sub_1CFF0DE5C();
    (*(*&v90 + 8))(v9, COERCE_DOUBLE(*&v95));
  }

  if (sub_1CFEBB4F8(v15))
  {
    v26 = 0;
  }

  else
  {
    v26 = 16;
  }

  v27 = *&v2[v20[8] + v26];

  if (sub_1CFEBB4F8(v12))
  {
    v28 = 0;
  }

  else
  {
    v28 = 16;
  }

  v29 = *&v2[v20[8] + v28];

  v30 = sub_1CFF0DE4C();
  v94 = v22;
  v91 = v29;
  v92 = v27;
  if ((v30 & 1) != 0 || *v99.i64 == 0.0)
  {

    v96 = v27;
  }

  else if (*v99.i64 == 1.0)
  {

    v96 = v29;
  }

  else
  {
    sub_1CFF0E08C();
    v96 = sub_1CFF0DE5C();
    (*(*&v90 + 8))(v9, COERCE_DOUBLE(*&v95));
  }

  if (sub_1CFEBBAD8(v15))
  {
    v31 = 8;
  }

  else
  {
    v31 = 16;
  }

  v32 = *&v2[v20[8] + v31];

  if (sub_1CFEBBAD8(v12))
  {
    v33 = 8;
  }

  else
  {
    v33 = 16;
  }

  v34 = *&v2[v20[8] + v33];

  if ((sub_1CFF0DE4C() & 1) != 0 || *v99.i64 == 0.0)
  {

    v35 = v32;
  }

  else if (*v99.i64 == 1.0)
  {

    v35 = v34;
  }

  else
  {
    sub_1CFF0E08C();
    v35 = sub_1CFF0DE5C();
    (*(*&v90 + 8))(v9, COERCE_DOUBLE(*&v95));
  }

  v36 = &v2[v20[9]];
  if (*v2)
  {
    v36 += *(type metadata accessor for OvernightMetricsChart.Derivations(0) + 20);
  }

  v37 = v36;
  v38 = v98;
  sub_1CFEBC1E4(v37, v98, sub_1CFE69B4C);
  sub_1CFEBC0B8(v38, v7);
  v39 = &v2[v20[10]];
  v40 = sub_1CFEBB4F8(v15);
  v41 = &v39[*(type metadata accessor for OvernightMetricsChartLayout(0) + 20)];
  v43 = *(v41 + 5);
  v42 = *(v41 + 6);
  v44 = *(v41 + 7);
  v45 = *(v41 + 8);
  v46 = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
  v47 = *(v46 + 24);
  v48 = *(v41 + 1);
  v98 = *&v39[*(v46 + 28) + 48];
  v99.i64[0] = v48;
  v49 = &v39[v47];
  v50 = *&v39[v47];
  sub_1CFEC2950(v50);
  v52 = v51;
  v53 = v49[1];
  result = sub_1CFEC2950(v53);
  if (v52 > v55)
  {
    v56 = v52;
  }

  else
  {
    v56 = v55;
  }

  if (v52 > v56)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_1CFEC2950(v42);
  v58 = v57;
  sub_1CFEC2950(v50);
  v60 = v59;
  result = sub_1CFEC2950(v53);
  if (v60 > v61)
  {
    v61 = v60;
  }

  if (v60 > v61)
  {
    goto LABEL_62;
  }

  v95 = v58;
  v62 = v44;
  sub_1CFEC2950(v50);
  v64 = v63;
  result = sub_1CFEC2950(v53);
  if (v64 > v65)
  {
    v65 = v64;
  }

  if (v64 > v65)
  {
    goto LABEL_63;
  }

  v90 = v65;
  sub_1CFEC2950(v43);
  v67 = v66;
  sub_1CFEC2950(v50);
  v69 = v68;
  result = sub_1CFEC2950(v53);
  if (v69 > v70)
  {
    v70 = v69;
  }

  if (v69 > v70)
  {
    goto LABEL_64;
  }

  v88 = v67;
  v89 = v40;
  v71 = (v45 - v62) * *&v98 * 0.5;
  v72 = *v99.i64 * 0.25;
  v73 = v71 + v56;
  v74 = *v99.i64 * 0.25 + v95;
  sub_1CFEBC3B8(0, &qword_1EDEC1618, type metadata accessor for BaselineBand.Configuration, MEMORY[0x1E69E6F90]);
  v75 = type metadata accessor for BaselineBand.Configuration(0);
  v76 = *(*(v75 - 1) + 72);
  v77 = (*(*(v75 - 1) + 80) + 32) & ~*(*(v75 - 1) + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1CFF0FCA0;
  if (v73 > v74)
  {
    v74 = v73;
  }

  if (v73 > v74)
  {
    goto LABEL_65;
  }

  v78 = result;
  v99.i64[0] = v35;
  v79 = v71 + v60;
  v80 = v90 - v71;
  v81 = (result + v77);
  result = sub_1CFEBC1E4(v7, v81 + v75[5], sub_1CFE69B4C);
  *v81 = v73;
  v81[1] = v74;
  *(v81 + v75[6]) = 6.0;
  *(v81 + v75[7]) = v97;
  *(v81 + v75[8]) = 0;
  if (v79 > v80)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v97 = v12;
  v98 = v15;
  v82 = v88 - v72;
  v83 = v69 - v71;
  v84 = (v81 + v76);
  result = sub_1CFEBC1E4(v7, v81 + v76 + v75[5], sub_1CFE69B4C);
  *v84 = v79;
  v84[1] = v80;
  *(v84 + v75[6]) = 6.0;
  *(v84 + v75[7]) = v96;
  *(v84 + v75[8]) = v89 & 1;
  if (v69 - v71 >= v82)
  {
    v85 = v82;
  }

  else
  {
    v85 = v69 - v71;
  }

  if (v85 <= v83)
  {
    v86 = (v81 + 2 * v76);
    sub_1CFEBC1E4(v7, v86 + v75[5], sub_1CFE69B4C);
    *v86 = v85;
    v86[1] = v83;
    *(v86 + v75[6]) = 6.0;
    *(v86 + v75[7]) = *v99.i64;
    *(v86 + v75[8]) = 0;

    sub_1CFEBC11C(v7, sub_1CFE69B4C);
    sub_1CFEBC11C(v97, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
    sub_1CFEBC11C(v98, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
    return v78;
  }

LABEL_67:
  __break(1u);
  return result;
}

unint64_t sub_1CFEBAECC(uint64_t a1)
{
  v47 = a1;
  v51 = sub_1CFF0CCEC();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OvernightMetricsChartPoint();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBC3B8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  sub_1CFEBC17C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 56);
  *v18 = *v1;
  sub_1CFEBC1E4(v47, &v18[v20], type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  if ((*v18 & 1) == 0)
  {
    v27 = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
    sub_1CFE81C0C(&v1[*(v27 + 24)], v15);
    if ((*(v10 + 48))(v15, 1, v9) == 1)
    {
      sub_1CFE81C8C(v15);
      v25 = 0;
    }

    else
    {
      v25 = v15[*(v9 + 28)];
      sub_1CFEBC11C(v15, type metadata accessor for OvernightMetricsChartPoint);
    }

    sub_1CFEBC11C(&v18[v20], type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
    return v25;
  }

  if ((*(v7 + 48))(&v18[v20], 1, v6) == 1)
  {
    result = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
    v22 = 0;
    v23 = *&v1[*(result + 28)];
    v24 = *(v23 + 16);
    while (1)
    {
      v25 = v24 != v22;
      if (v24 == v22)
      {
        return v25;
      }

      if (v22 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1CFEBC1E4(v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22++, v12, type metadata accessor for OvernightMetricsChartPoint);
      v26 = v12[*(v9 + 28)];
      result = sub_1CFEBC11C(v12, type metadata accessor for OvernightMetricsChartPoint);
      if (v26)
      {
        return v25;
      }
    }
  }

  v28 = *(v7 + 32);
  v29 = &v18[v20];
  v30 = v45;
  v43 = v6;
  v28(v45, v29, v6);
  v31 = &v1[*(type metadata accessor for OvernightMetricsChartBaselineBandColorValues() + 28)];
  result = type metadata accessor for OvernightMetricsChartPointCollection();
  v32 = *&v31[*(result + 24)];
  v33 = *(v32 + 16);
  v42 = v7;
  if (v33 && (result = sub_1CFEC3AB8(v30), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * result);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = 0;
  v47 = *(v35 + 16);
  v46 = *MEMORY[0x1E69A2EE8];
  v37 = (v44 + 104);
  v38 = (v44 + 8);
  while (1)
  {
    v25 = v47 != v36;
    if (v47 == v36)
    {
LABEL_20:

      (*(v42 + 8))(v45, v43);
      return v25;
    }

    if (v36 >= *(v35 + 16))
    {
      break;
    }

    sub_1CFEBC1E4(v35 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v36++, v5, type metadata accessor for IndividualOvernightMetricChartPoint);
    v39 = v50;
    v40 = v51;
    (*v37)(v50, v46, v51);
    v41 = sub_1CFF0CCDC();
    (*v38)(v39, v40);
    result = sub_1CFEBC11C(v5, type metadata accessor for IndividualOvernightMetricChartPoint);
    if (v41)
    {
      goto LABEL_20;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OvernightMetricsChartBaselineBandColorValues()
{
  result = qword_1EDEC2468;
  if (!qword_1EDEC2468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CFEBB4F8(uint64_t a1)
{
  v47 = a1;
  v51 = sub_1CFF0CCEC();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OvernightMetricsChartPoint();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBC3B8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  sub_1CFEBC17C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 56);
  *v18 = *v1;
  sub_1CFEBC1E4(v47, &v18[v20], type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  if ((*v18 & 1) == 0)
  {
    v27 = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
    sub_1CFE81C0C(&v1[*(v27 + 24)], v15);
    if ((*(v10 + 48))(v15, 1, v9) == 1)
    {
      sub_1CFE81C8C(v15);
      v25 = 0;
    }

    else
    {
      v25 = v15[*(v9 + 32)];
      sub_1CFEBC11C(v15, type metadata accessor for OvernightMetricsChartPoint);
    }

    sub_1CFEBC11C(&v18[v20], type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
    return v25;
  }

  if ((*(v7 + 48))(&v18[v20], 1, v6) == 1)
  {
    result = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
    v22 = 0;
    v23 = *&v1[*(result + 28)];
    v24 = *(v23 + 16);
    while (1)
    {
      v25 = v24 != v22;
      if (v24 == v22)
      {
        return v25;
      }

      if (v22 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1CFEBC1E4(v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22++, v12, type metadata accessor for OvernightMetricsChartPoint);
      v26 = v12[*(v9 + 32)];
      result = sub_1CFEBC11C(v12, type metadata accessor for OvernightMetricsChartPoint);
      if (v26)
      {
        return v25;
      }
    }
  }

  v28 = *(v7 + 32);
  v29 = &v18[v20];
  v30 = v45;
  v43 = v6;
  v28(v45, v29, v6);
  v31 = &v1[*(type metadata accessor for OvernightMetricsChartBaselineBandColorValues() + 28)];
  result = type metadata accessor for OvernightMetricsChartPointCollection();
  v32 = *&v31[*(result + 24)];
  v33 = *(v32 + 16);
  v42 = v7;
  if (v33 && (result = sub_1CFEC3AB8(v30), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * result);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = 0;
  v47 = *(v35 + 16);
  v46 = *MEMORY[0x1E69A2EF0];
  v37 = (v44 + 104);
  v38 = (v44 + 8);
  while (1)
  {
    v25 = v47 != v36;
    if (v47 == v36)
    {
LABEL_20:

      (*(v42 + 8))(v45, v43);
      return v25;
    }

    if (v36 >= *(v35 + 16))
    {
      break;
    }

    sub_1CFEBC1E4(v35 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v36++, v5, type metadata accessor for IndividualOvernightMetricChartPoint);
    v39 = v50;
    v40 = v51;
    (*v37)(v50, v46, v51);
    v41 = sub_1CFF0CCDC();
    (*v38)(v39, v40);
    result = sub_1CFEBC11C(v5, type metadata accessor for IndividualOvernightMetricChartPoint);
    if (v41)
    {
      goto LABEL_20;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1CFEBBAD8(uint64_t a1)
{
  v47 = a1;
  v51 = sub_1CFF0CCEC();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OvernightMetricsChartPoint();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBC3B8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  sub_1CFEBC17C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 56);
  *v18 = *v1;
  sub_1CFEBC1E4(v47, &v18[v20], type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  if ((*v18 & 1) == 0)
  {
    v27 = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
    sub_1CFE81C0C(&v1[*(v27 + 24)], v15);
    if ((*(v10 + 48))(v15, 1, v9) == 1)
    {
      sub_1CFE81C8C(v15);
      v25 = 0;
    }

    else
    {
      v25 = v15[*(v9 + 36)];
      sub_1CFEBC11C(v15, type metadata accessor for OvernightMetricsChartPoint);
    }

    sub_1CFEBC11C(&v18[v20], type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
    return v25;
  }

  if ((*(v7 + 48))(&v18[v20], 1, v6) == 1)
  {
    result = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
    v22 = 0;
    v23 = *&v1[*(result + 28)];
    v24 = *(v23 + 16);
    while (1)
    {
      v25 = v24 != v22;
      if (v24 == v22)
      {
        return v25;
      }

      if (v22 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1CFEBC1E4(v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22++, v12, type metadata accessor for OvernightMetricsChartPoint);
      v26 = v12[*(v9 + 36)];
      result = sub_1CFEBC11C(v12, type metadata accessor for OvernightMetricsChartPoint);
      if (v26)
      {
        return v25;
      }
    }
  }

  v28 = *(v7 + 32);
  v29 = &v18[v20];
  v30 = v45;
  v43 = v6;
  v28(v45, v29, v6);
  v31 = &v1[*(type metadata accessor for OvernightMetricsChartBaselineBandColorValues() + 28)];
  result = type metadata accessor for OvernightMetricsChartPointCollection();
  v32 = *&v31[*(result + 24)];
  v33 = *(v32 + 16);
  v42 = v7;
  if (v33 && (result = sub_1CFEC3AB8(v30), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * result);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = 0;
  v47 = *(v35 + 16);
  v46 = *MEMORY[0x1E69A2EE0];
  v37 = (v44 + 104);
  v38 = (v44 + 8);
  while (1)
  {
    v25 = v47 != v36;
    if (v47 == v36)
    {
LABEL_20:

      (*(v42 + 8))(v45, v43);
      return v25;
    }

    if (v36 >= *(v35 + 16))
    {
      break;
    }

    sub_1CFEBC1E4(v35 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v36++, v5, type metadata accessor for IndividualOvernightMetricChartPoint);
    v39 = v50;
    v40 = v51;
    (*v37)(v50, v46, v51);
    v41 = sub_1CFF0CCDC();
    (*v38)(v39, v40);
    result = sub_1CFEBC11C(v5, type metadata accessor for IndividualOvernightMetricChartPoint);
    if (v41)
    {
      goto LABEL_20;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1CFEBC0B8(uint64_t a1, uint64_t a2)
{
  sub_1CFE69B4C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFEBC11C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFEBC17C()
{
  if (!qword_1EDEC4888)
  {
    type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4888);
    }
  }
}

uint64_t sub_1CFEBC1E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFEBC274()
{
  sub_1CFEBC3B8(319, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1CFEBC3B8(319, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OvernightMetricsChartPointCollection();
      if (v2 <= 0x3F)
      {
        type metadata accessor for OvernightMetricsChart.Derivations(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for OvernightMetricsChartLayout(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CFEBC3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for OvernightMetricsChartPointShadow()
{
  result = qword_1EDEC3040;
  if (!qword_1EDEC3040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEBC4AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OvernightMetricsChartPointShadow();
  memcpy(__dst, (v1 + v4[8]), 0x118uLL);
  v5 = __dst[8];
  v6 = __dst[9];
  v7 = __dst[10];
  if (*(v1 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32) + 8))
  {
    v7 = sub_1CFF0DE6C();
  }

  else
  {
    sub_1CFE55370(__dst, &v28);
    if (sub_1CFF0CCCC())
    {

      sub_1CFE583D0(__dst);
    }

    else
    {

      sub_1CFE583D0(__dst);
      v7 = v6;
    }
  }

  type metadata accessor for OvernightMetricsChartLayout(0);
  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  v8 = v36;
  v9 = v37;
  v10 = v39;
  v26 = v40;
  v27 = v38;
  v25 = v41;
  v11 = sub_1CFEBC7AC();
  v35 = v9;
  v34 = v10;
  v12 = v1 + v4[5];
  v32 = *(v12 + 64);
  v13 = *(v12 + 48);
  v30 = *(v12 + 32);
  v31 = v13;
  v14 = *(v12 + 16);
  v28 = *v12;
  v29 = v14;
  v15 = v28;
  if (v28)
  {
    v16 = *(&v28 + 1);
    v17 = *(&v29 + 1);
    v18 = *(&v30 + 1);
  }

  else
  {
    v24 = v8;
    if (qword_1EDEC27D8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDEC82D0;
    swift_getKeyPath();
    v33[0] = v19;
    sub_1CFEBCD2C(&qword_1EDEC27D0, type metadata accessor for GlobalOvernightMetricsChartAnimationState);
    sub_1CFF0C8DC();

    v15 = *(v19 + 16);
    v16 = *(v19 + 24);
    v17 = *(v19 + 40);
    v18 = *(v19 + 56);

    v8 = v24;
  }

  v20 = *(v2 + v4[6]);
  sub_1CFE530D8(&v28, v33);
  if (sub_1CFEE41A4(v2, v15))
  {
  }

  else
  {
    v22 = sub_1CFEE41A4(v2, v16);

    v23 = 0.26;
    if (v20)
    {
      v23 = 0.0;
    }

    if (v22)
    {
      v17 = v18;
    }

    else
    {
      v17 = v23;
    }
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v27;
  *(a1 + 32) = v10;
  *(a1 + 40) = v26;
  *(a1 + 48) = v25;
  *(a1 + 56) = v11;
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v17;
  return result;
}

uint64_t sub_1CFEBC7AC()
{
  v1 = sub_1CFF0CCEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndividualOvernightMetricChartPoint(0);
  (*(v2 + 104))(v4, *MEMORY[0x1E69A2EF0], v1);
  v5 = sub_1CFF0CCDC();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1EDEC4A40 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EDEC4A48;
  }

  else
  {
    if (qword_1EDEC4A30 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EDEC4A38;
  }

  v7 = *v6;
  sub_1CFF0DE3C();
  v8 = type metadata accessor for OvernightMetricsChartPointShadow();
  if (*(v0 + *(v8 + 32) + 56))
  {
    v9 = v0 + *(v8 + 20);
    v10 = *(v9 + 16);
    v19[0] = *v9;
    v19[1] = v10;
    v11 = *(v9 + 48);
    v19[2] = *(v9 + 32);
    v19[3] = v11;
    v20 = *(v9 + 64);
    v12 = *&v19[0];
    if (*&v19[0])
    {
      v13 = *(&v19[0] + 1);
    }

    else
    {
      if (qword_1EDEC27D8 != -1)
      {
        swift_once();
      }

      v14 = qword_1EDEC82D0;
      swift_getKeyPath();
      v18[0] = v14;
      sub_1CFEBCD2C(&qword_1EDEC27D0, type metadata accessor for GlobalOvernightMetricsChartAnimationState);
      sub_1CFF0C8DC();

      v12 = *(v14 + 16);
      v13 = *(v14 + 24);
    }

    sub_1CFE530D8(v19, v18);
    if ((sub_1CFEE41A4(v0, v12) & 1) == 0)
    {
      sub_1CFEE41A4(v0, v13);
    }
  }

  v15 = sub_1CFF0DEBC();

  return v15;
}

unint64_t sub_1CFEBCAEC()
{
  result = qword_1EDEC1CC0;
  if (!qword_1EDEC1CC0)
  {
    sub_1CFEBCBF0(255, &qword_1EDEC1CB8, sub_1CFEBCBC8);
    sub_1CFEBCCAC(&qword_1EDEC1D40, sub_1CFEBCBC8, sub_1CFE82908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1CC0);
  }

  return result;
}

void sub_1CFEBCBF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0D62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFEBCC54()
{
  if (!qword_1EDEC1AD8)
  {
    v0 = sub_1CFF0D9BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1AD8);
    }
  }
}

uint64_t sub_1CFEBCCAC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFEBCD2C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1CFEBCD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[2] = a1;
  result = sub_1CFEDAB5C(sub_1CFEBF9BC, v5, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFEBCDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for OvernightMetricsChartPoint() + 20);
  v4 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  return sub_1CFE6AF58(sub_1CFEBF9D8, *(v3 + *(v4 + 20)), a2);
}

BOOL sub_1CFEBCE54()
{
  sub_1CFF0CB6C();
  sub_1CFEBF9F8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
  sub_1CFF0E63C();
  sub_1CFF0E63C();
  return v2 == v1;
}

void static OvernightMetricsChartPointCollection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (sub_1CFE911B0(*a1, *a2))
  {
    v4 = type metadata accessor for OvernightMetricsChartPointCollection();
    if (MEMORY[0x1D38775A0](a1 + *(v4 + 20), a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_1CFEBCFE4(v6, v7);
    }
  }
}

uint64_t type metadata accessor for OvernightMetricsChartPointCollection()
{
  result = qword_1EDEC4EB0;
  if (!qword_1EDEC4EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEBCFE4(uint64_t a1, uint64_t a2)
{
  v51 = sub_1CFF0CB6C();
  v46 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v41 - v6;
  sub_1CFEBF8B4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v44 = v41 - v9;
    v12 = 0;
    v42 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v41[1] = v46 + 16;
    v48 = v10;
    v49 = (v46 + 32);
    v43 = (v46 + 8);
    while (v18)
    {
      v50 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v26 = v42;
      v27 = v46;
      (*(v46 + 16))(v45, *(v42 + 48) + *(v46 + 72) * v20, v51, v11);
      v28 = *(*(v26 + 56) + 8 * v20);
      sub_1CFEBF8E8();
      v30 = v29;
      v31 = *(v29 + 48);
      v23 = v48;
      (*(v27 + 32))();
      *(v23 + v31) = v28;
      (*(*(v30 - 8) + 56))(v23, 0, 1, v30);

LABEL_17:
      v32 = v44;
      sub_1CFEBF954(v23, v44, sub_1CFEBF8B4);
      sub_1CFEBF8E8();
      if ((*(*(v30 - 8) + 48))(v32, 1, v30) == 1)
      {
        return;
      }

      v33 = *(v30 + 48);
      v34 = v47;
      v35 = v51;
      (*v49)(v47, v32, v51);
      v36 = *(v32 + v33);
      sub_1CFEC3AB8(v34);
      LOBYTE(v33) = v37;
      (*v43)(v34, v35);
      if ((v33 & 1) == 0)
      {

        return;
      }

      v39 = sub_1CFE915EC(v38, v36);

      v18 = v50;
      if ((v39 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    v23 = v48;
    while (1)
    {
      v24 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        sub_1CFEBF8E8();
        v30 = v40;
        (*(*(v40 - 8) + 56))(v23, 1, 1, v40);
        v50 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v25 = *(v14 + 8 * v24);
      ++v12;
      if (v25)
      {
        v50 = (v25 - 1) & v25;
        v20 = __clz(__rbit64(v25)) | (v24 << 6);
        v12 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1CFEBD428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CA6C();
  v81 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v61 - v8;
  v80 = sub_1CFF0CB6C();
  v72 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v61 - v11;
  sub_1CFEBF7F8(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v69 = a2;
    v70 = &v61 - v14;
    v74 = v15;
    v68 = v6;
    v17 = 0;
    v65 = a1;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v62 = (v21 + 63) >> 6;
    v63 = v19;
    v64 = v72 + 16;
    v78 = (v72 + 32);
    v76 = v81 + 16;
    v77 = (v81 + 32);
    v66 = (v72 + 8);
    v67 = (v81 + 8);
    while (v23)
    {
      v75 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
      v31 = v65;
      v33 = v71;
      v32 = v72;
      v34 = v80;
      (*(v72 + 16))(v71, *(v65 + 48) + *(v72 + 72) * v24, v80, v16);
      v35 = *(v31 + 56);
      v36 = v81;
      v37 = v79;
      (*(v81 + 16))(v79, v35 + *(v81 + 72) * v24, v4);
      sub_1CFEBF834(0, &qword_1EC512A18, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2DC0]);
      v39 = v38;
      v40 = v4;
      v41 = *(v38 + 48);
      v42 = *(v32 + 32);
      v28 = v74;
      v42(v74, v33, v34);
      v43 = v28 + v41;
      v44 = v40;
      (*(v36 + 32))(v43, v37, v40);
      (*(*(v39 - 8) + 56))(v28, 0, 1, v39);
      v23 = v75;
LABEL_17:
      v45 = v70;
      sub_1CFEBF954(v28, v70, sub_1CFEBF7F8);
      sub_1CFEBF834(0, &qword_1EC512A18, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2DC0]);
      if ((*(*(v39 - 8) + 48))(v45, 1, v39) == 1)
      {
        return;
      }

      v46 = *(v39 + 48);
      v47 = v44;
      v48 = v73;
      v49 = v80;
      (*v78)(v73, v45, v80);
      v50 = v68;
      (*v77)(v68, v45 + v46, v44);
      v51 = v69;
      v52 = sub_1CFEC3AB8(v48);
      v54 = v53;
      (*v66)(v48, v49);
      if ((v54 & 1) == 0)
      {
        (*v67)(v50, v47);
        return;
      }

      v55 = v81;
      v56 = *(v51 + 56) + *(v81 + 72) * v52;
      v57 = v79;
      (*(v81 + 16))(v79, v56, v47);
      sub_1CFEBF9F8(&qword_1EC512A20, MEMORY[0x1E69A2DC0]);
      v58 = sub_1CFF0E4CC();
      v59 = *(v55 + 8);
      v59(v57, v47);
      v59(v50, v47);
      v4 = v47;
      if ((v58 & 1) == 0)
      {
        return;
      }
    }

    v25 = v4;
    if (v62 <= v17 + 1)
    {
      v26 = v17 + 1;
    }

    else
    {
      v26 = v62;
    }

    v27 = v26 - 1;
    v28 = v74;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v29 >= v62)
      {
        sub_1CFEBF834(0, &qword_1EC512A18, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2DC0]);
        v39 = v60;
        (*(*(v60 - 8) + 56))(v28, 1, 1, v60);
        v23 = 0;
        v17 = v27;
        v44 = v25;
        goto LABEL_17;
      }

      v30 = *(v63 + 8 * v29);
      ++v17;
      if (v30)
      {
        v75 = (v30 - 1) & v30;
        v24 = __clz(__rbit64(v30)) | (v29 << 6);
        v17 = v29;
        v4 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1CFEBDAD8(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1CFEC3B8C(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1CFEBDBE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CCEC();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  sub_1CFEBF6C0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v16 = 0;
    v17 = *(a1 + 64);
    v50 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v52 = a1;
    v53 = v59 + 16;
    v58 = (v59 + 32);
    v54 = a2;
    v55 = (v59 + 8);
    v51 = v21;
    while (v20)
    {
      v22 = v8;
      v56 = (v20 - 1) & v20;
      v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_17:
      v29 = v59;
      v28 = v60;
      (*(v59 + 16))(v22, *(a1 + 48) + *(v59 + 72) * v23, v60, v13);
      v30 = *(*(a1 + 56) + 8 * v23);
      sub_1CFEBF834(0, &qword_1EDEC4968, MEMORY[0x1E69A2EF8], sub_1CFE71094);
      v32 = v31;
      v33 = *(v31 + 48);
      v34 = *(v29 + 32);
      v8 = v22;
      v34(v11, v22, v28);
      *&v11[v33] = v30;
      (*(*(v32 - 8) + 56))(v11, 0, 1, v32);

      a2 = v54;
LABEL_18:
      sub_1CFEBF954(v11, v15, sub_1CFEBF6C0);
      sub_1CFEBF834(0, &qword_1EDEC4968, MEMORY[0x1E69A2EF8], sub_1CFE71094);
      if ((*(*(v32 - 8) + 48))(v15, 1, v32) == 1)
      {
        return;
      }

      v35 = v11;
      v36 = v8;
      v37 = *(v32 + 48);
      v38 = v57;
      v39 = v60;
      (*v58)(v57, v15, v60);
      v40 = *&v15[v37];
      v41 = sub_1CFEC3BD8(v38);
      LOBYTE(v37) = v42;
      (*v55)(v38, v39);
      if ((v37 & 1) == 0 || (v43 = *(*(a2 + 56) + 8 * v41), v44 = *(v43 + 16), v44 != *(v40 + 16)))
      {
LABEL_33:

        return;
      }

      if (v44)
      {
        v45 = v43 == v40;
      }

      else
      {
        v45 = 1;
      }

      v8 = v36;
      v11 = v35;
      if (!v45)
      {
        v46 = (v43 + 40);
        v47 = (v40 + 40);
        while (v44)
        {
          if (*(v46 - 1) != *(v47 - 1) || *v46 != *v47)
          {
            goto LABEL_33;
          }

          v46 += 2;
          v47 += 2;
          if (!--v44)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_36;
      }

LABEL_6:

      v21 = v51;
      a1 = v52;
      v20 = v56;
    }

    if (v21 <= v16 + 1)
    {
      v24 = v16 + 1;
    }

    else
    {
      v24 = v21;
    }

    v25 = v24 - 1;
    while (1)
    {
      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v26 >= v21)
      {
        sub_1CFEBF834(0, &qword_1EDEC4968, MEMORY[0x1E69A2EF8], sub_1CFE71094);
        v32 = v48;
        (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
        v56 = 0;
        v16 = v25;
        goto LABEL_18;
      }

      v27 = *(v50 + 8 * v26);
      ++v16;
      if (v27)
      {
        v22 = v8;
        v56 = (v27 - 1) & v27;
        v23 = __clz(__rbit64(v27)) | (v26 << 6);
        v16 = v26;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }
}

void sub_1CFEBE114(uint64_t a1, uint64_t a2)
{
  v53 = sub_1CFF0CCEC();
  v48 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v40 - v6;
  sub_1CFEBF7BC(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v46 = &v40 - v9;
    v12 = 0;
    v44 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v41 = (v16 + 63) >> 6;
    v42 = v14;
    v43 = v48 + 16;
    v50 = v10;
    v51 = (v48 + 32);
    v45 = (v48 + 8);
    while (v18)
    {
      v52 = (v18 - 1) & v18;
      v19 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v44;
      v26 = v48;
      (*(v48 + 16))(v47, *(v44 + 48) + *(v48 + 72) * v19, v53, v11);
      v27 = *(*(v25 + 56) + 8 * v19);
      sub_1CFEBF834(0, &qword_1EDEC4CA8, MEMORY[0x1E69A2EF8], sub_1CFE709D4);
      v29 = v28;
      v30 = *(v28 + 48);
      v22 = v50;
      (*(v26 + 32))();
      *(v22 + v30) = v27;
      (*(*(v29 - 8) + 56))(v22, 0, 1, v29);

LABEL_17:
      v31 = v46;
      sub_1CFEBF954(v22, v46, sub_1CFEBF7BC);
      sub_1CFEBF834(0, &qword_1EDEC4CA8, MEMORY[0x1E69A2EF8], sub_1CFE709D4);
      if ((*(*(v29 - 8) + 48))(v31, 1, v29) == 1)
      {
        return;
      }

      v32 = *(v29 + 48);
      v33 = v49;
      v34 = v53;
      (*v51)(v49, v31, v53);
      v35 = *(v31 + v32);
      sub_1CFEC3BD8(v33);
      LOBYTE(v32) = v36;
      (*v45)(v33, v34);
      if ((v32 & 1) == 0)
      {

        return;
      }

      v38 = sub_1CFE915EC(v37, v35);

      v18 = v52;
      if ((v38 & 1) == 0)
      {
        return;
      }
    }

    if (v41 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v41;
    }

    v21 = v20 - 1;
    v22 = v50;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v41)
      {
        sub_1CFEBF834(0, &qword_1EDEC4CA8, MEMORY[0x1E69A2EF8], sub_1CFE709D4);
        v29 = v39;
        (*(*(v39 - 8) + 56))(v22, 1, 1, v39);
        v52 = 0;
        v12 = v21;
        goto LABEL_17;
      }

      v24 = *(v42 + 8 * v23);
      ++v12;
      if (v24)
      {
        v52 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CFEBE5F4()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E696F70;
  }
}

uint64_t sub_1CFEBE650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFEBF5A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFEBE684(uint64_t a1)
{
  v2 = sub_1CFEBE99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFEBE6C0(uint64_t a1)
{
  v2 = sub_1CFEBE99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OvernightMetricsChartPointCollection.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFEBEFF4(0, &qword_1EC5129B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEBE99C();
  sub_1CFF0EC9C();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1CFEBF758(0, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
  sub_1CFEBF058(&qword_1EC5126A8, &qword_1EC512698);
  sub_1CFF0EB7C();
  if (!v2)
  {
    v10 = type metadata accessor for OvernightMetricsChartPointCollection();
    LOBYTE(v13) = 1;
    sub_1CFF0C89C();
    sub_1CFEBF9F8(&qword_1EC5129C0, MEMORY[0x1E6969AE8]);
    sub_1CFF0EB7C();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_1CFEBE9F0();
    sub_1CFEBEA8C();
    sub_1CFF0EB7C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1CFEBE99C()
{
  result = qword_1EC5129B8;
  if (!qword_1EC5129B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5129B8);
  }

  return result;
}

void sub_1CFEBE9F0()
{
  if (!qword_1EDEC4D88[0])
  {
    sub_1CFF0CB6C();
    sub_1CFEBF9F8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v0 = sub_1CFF0E43C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDEC4D88);
    }
  }
}

unint64_t sub_1CFEBEA8C()
{
  result = qword_1EC5129C8;
  if (!qword_1EC5129C8)
  {
    sub_1CFEBE9F0();
    sub_1CFEBF9F8(&qword_1EC5126C8, MEMORY[0x1E69A2E68]);
    sub_1CFEBEB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5129C8);
  }

  return result;
}

unint64_t sub_1CFEBEB3C()
{
  result = qword_1EC5129D0;
  if (!qword_1EC5129D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5129D0);
  }

  return result;
}

uint64_t OvernightMetricsChartPointCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1CFF0C89C();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBEFF4(0, &qword_1EC5129D8, MEMORY[0x1E69E6F48]);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for OvernightMetricsChartPointCollection();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEBE99C();
  v23 = v8;
  v12 = v24;
  sub_1CFF0EC8C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v5;
  v24 = a1;
  v14 = v21;
  v15 = v11;
  sub_1CFEBF758(0, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
  v25 = 0;
  sub_1CFEBF058(&qword_1EC512708, &qword_1EC5126F8);
  v16 = v22;
  sub_1CFF0EB0C();
  v18 = v26;
  *v15 = v26;
  LOBYTE(v26) = 1;
  sub_1CFEBF9F8(&qword_1EC5129E0, MEMORY[0x1E6969AE8]);
  sub_1CFF0EB0C();
  (*(v20 + 32))(&v15[*(v9 + 20)], v13, v3);
  sub_1CFEBE9F0();
  v25 = 2;
  sub_1CFEBF11C();
  sub_1CFF0EB0C();
  (*(v14 + 8))(v23, v16);
  *&v15[*(v9 + 24)] = v26;
  sub_1CFEBF220(v15, v19);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_1CFEBF284(v15);
}

void sub_1CFEBEFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFEBE99C();
    v7 = a3(a1, &type metadata for OvernightMetricsChartPointCollection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFEBF058(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFEBF758(255, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
    sub_1CFEBF9F8(a2, type metadata accessor for OvernightMetricsChartPoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFEBF11C()
{
  result = qword_1EC5129E8;
  if (!qword_1EC5129E8)
  {
    sub_1CFEBE9F0();
    sub_1CFEBF9F8(&qword_1EC512728, MEMORY[0x1E69A2E68]);
    sub_1CFEBF1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5129E8);
  }

  return result;
}

unint64_t sub_1CFEBF1CC()
{
  result = qword_1EC5129F0;
  if (!qword_1EC5129F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5129F0);
  }

  return result;
}

uint64_t sub_1CFEBF220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsChartPointCollection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFEBF284(uint64_t a1)
{
  v2 = type metadata accessor for OvernightMetricsChartPointCollection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFEBF2E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (sub_1CFE911B0(*a1, *a2) & 1) != 0 && (MEMORY[0x1D38775A0](a1 + *(a3 + 20), a2 + *(a3 + 20)))
  {
    v6 = *(a3 + 24);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_1CFEBCFE4(v7, v8);
  }
}

void sub_1CFEBF3BC()
{
  sub_1CFEBF758(319, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1CFF0C89C();
    if (v1 <= 0x3F)
    {
      sub_1CFEBE9F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1CFEBF49C()
{
  result = qword_1EC5129F8;
  if (!qword_1EC5129F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5129F8);
  }

  return result;
}

unint64_t sub_1CFEBF4F4()
{
  result = qword_1EC512A00;
  if (!qword_1EC512A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512A00);
  }

  return result;
}

unint64_t sub_1CFEBF54C()
{
  result = qword_1EC512A08;
  if (!qword_1EC512A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512A08);
  }

  return result;
}

uint64_t sub_1CFEBF5A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFF16200 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFF16220 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFF0EBCC();

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

void sub_1CFEBF6FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFEBF834(255, a3, a4, a5);
    v6 = sub_1CFF0E8AC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1CFEBF758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFEBF834(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1CFEBF8E8()
{
  if (!qword_1EDEC4CE8)
  {
    sub_1CFF0CB6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4CE8);
    }
  }
}

uint64_t sub_1CFEBF954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEBF9F8(unint64_t *a1, void (*a2)(uint64_t))
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

id static NSBundle.healthBalanceUI.getter()
{
  type metadata accessor for HealthBalanceUI();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t BalanceWidgetViewModel.init(dayRange:chronologicalDaySummaries:timeScope:featureStatus:isShownInApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v26 = a5;
  sub_1CFEC2528(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_1CFF0CADC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a3;
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = sub_1CFF0CDFC();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v13, a4, v19);
  (*(v20 + 56))(v13, 0, 1, v19);
  OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)(v18, a2, v13, a6);
  v21 = type metadata accessor for BalanceWidgetViewModel();
  sub_1CFF0C9DC();
  (*(v20 + 8))(a4, v19);
  result = (*(v15 + 8))(a1, v14);
  v23 = v26;
  *(a6 + *(v21 + 24)) = v25;
  *(a6 + *(v21 + 28)) = v23;
  return result;
}

uint64_t sub_1CFEBFD10()
{
  sub_1CFEC2528(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1CFF0CC0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.daySummaryForToday.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFEC24CC(v2, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    if (sub_1CFF0CBFC())
    {
      v7 = MEMORY[0x1D3877920]();
      (*(v4 + 8))(v6, v3);
      return v7;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_1CFEBFEE8(uint64_t a1)
{
  v21 = a1;
  v20 = sub_1CFF0CCEC();
  v1 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0CD6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC2528(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  OvernightMetricsViewModel.daySummaryForToday.getter(v19 - v9);
  v11 = sub_1CFF0CC0C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1CFEC24CC(v10, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    return 0;
  }

  else
  {
    v13 = sub_1CFF0CBDC();
    result = (*(v12 + 8))(v10, v11);
    v15 = 0;
    v16 = *(v13 + 16);
    v19[1] = v5 + 16;
    v17 = (v1 + 8);
    while (1)
    {
      if (v16 == v15)
      {

        return 0;
      }

      if (v15 >= *(v13 + 16))
      {
        break;
      }

      (*(v5 + 16))(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15++, v4);
      sub_1CFF0CCFC();
      v18 = sub_1CFF0CCDC();
      (*v17)(v3, v20);
      result = (*(v5 + 8))(v7, v4);
      if (v18)
      {

        return 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFEC0200()
{
  v0 = sub_1CFF0CD6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC2528(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_1CFF0CC0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.daySummaryForToday.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CFEC24CC(v6, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_1CFF0CBDC();
  v12 = *(v11 + 16);
  if (v12)
  {
    v36 = v10;
    v37 = v8;
    v38 = v7;
    v40 = *(v1 + 16);
    v13 = *(v1 + 80);
    v35 = v11;
    v14 = v11 + ((v13 + 32) & ~v13);
    v15 = *(v1 + 72);
    v16 = (v1 + 8);
    v17 = MEMORY[0x1E69E7CC0];
    v39 = v1 + 16;
    v40(v3, v14, v0);
    while (1)
    {
      v18 = sub_1CFF0CC7C();
      v20 = v19;
      (*v16)(v3, v0);
      if ((v20 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1CFE976F0(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_1CFE976F0((v21 > 1), v22 + 1, 1, v17);
        }

        *(v17 + 2) = v22 + 1;
        *&v17[8 * v22 + 32] = v18;
      }

      v14 += v15;
      if (!--v12)
      {
        break;
      }

      v40(v3, v14, v0);
    }

    v8 = v37;
    v7 = v38;
    v10 = v36;
    v23 = *(v17 + 2);
    if (v23)
    {
      goto LABEL_14;
    }

LABEL_17:
    (*(v8 + 8))(v10, v7);

    return 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v23 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_14:
  v24 = *(v17 + 4);
  v25 = v23 - 1;
  if (v25)
  {
    v28 = (v17 + 40);
    v29 = v25;
    v26 = *(v17 + 4);
    do
    {
      v30 = *v28++;
      v31 = v30;
      if (v30 < v26)
      {
        v26 = v31;
      }

      --v29;
    }

    while (v29);
    v32 = (v17 + 40);
    do
    {
      v33 = *v32++;
      v34 = v33;
      if (v24 < v33)
      {
        v24 = v34;
      }

      --v25;
    }

    while (v25);
  }

  else
  {
    v26 = *(v17 + 4);
  }

  result = (*(v8 + 8))(v10, v7);
  if (v24 >= v26)
  {
    return *&v26;
  }

  __break(1u);
  return result;
}

char *sub_1CFEC0600(uint64_t a1)
{
  v2 = sub_1CFF0CD6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC2528(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_1CFF0CC0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.daySummaryForToday.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CFEC24CC(v8, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = sub_1CFF0CBDC();
    MEMORY[0x1EEE9AC00](v14);
    v30[-2] = a1;
    sub_1CFE8A500(sub_1CFEC257C, &v30[-4], v15);
    v17 = *(v16 + 16);
    if (v17)
    {
      v31 = v12;
      v32 = v10;
      v33 = v9;
      v19 = *(v3 + 16);
      v18 = v3 + 16;
      v35 = v19;
      v20 = *(v18 + 64);
      v30[1] = v16;
      v21 = v16 + ((v20 + 32) & ~v20);
      v22 = *(v18 + 56);
      v23 = (v18 - 8);
      v13 = MEMORY[0x1E69E7CC0];
      v34 = v18;
      v19(v5, v21, v2);
      while (1)
      {
        v24 = sub_1CFF0CC7C();
        v26 = v25;
        (*v23)(v5, v2);
        if ((v26 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1CFE976F0(0, *(v13 + 2) + 1, 1, v13);
          }

          v28 = *(v13 + 2);
          v27 = *(v13 + 3);
          if (v28 >= v27 >> 1)
          {
            v13 = sub_1CFE976F0((v27 > 1), v28 + 1, 1, v13);
          }

          *(v13 + 2) = v28 + 1;
          *&v13[8 * v28 + 32] = v24;
        }

        v21 += v22;
        if (!--v17)
        {
          break;
        }

        v35(v5, v21, v2);
      }

      v10 = v32;
      v9 = v33;
      v12 = v31;
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    (*(v10 + 8))(v12, v9);
  }

  return v13;
}

uint64_t sub_1CFEC09A8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v39 = sub_1CFF0C9CC();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-v8];
  sub_1CFEC2528(0, &qword_1EDEC4998, MEMORY[0x1E69A2DA8]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-v14];
  v16 = sub_1CFF0C9EC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36[-v21];
  v23 = type metadata accessor for BalanceWidgetViewModel();
  v24 = *(v17 + 16);
  v25 = v3 + *(v23 + 20);
  if (*(v3 + *(v23 + 24)))
  {
    v24(v19, v25, v16);
    v26 = *MEMORY[0x1E69A2DA0];
    v27 = sub_1CFF0C9BC();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v12, v26, v27);
    (*(v28 + 56))(v12, 0, 1, v27);
    v29 = MEMORY[0x1E69A2DB0];
    if ((v37 & 1) == 0)
    {
      v29 = MEMORY[0x1E69A2DB8];
    }

    v30 = v39;
    (*(v4 + 104))(v6, *v29, v39);
    sub_1CFF0C9AC();
    v9 = v6;
    v15 = v12;
    v22 = v19;
  }

  else
  {
    v24(v22, v25, v16);
    v31 = *MEMORY[0x1E69A2D98];
    v32 = sub_1CFF0C9BC();
    v33 = *(v32 - 8);
    (*(v33 + 104))(v15, v31, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
    v34 = MEMORY[0x1E69A2DB0];
    if ((v37 & 1) == 0)
    {
      v34 = MEMORY[0x1E69A2DB8];
    }

    v30 = v39;
    (*(v4 + 104))(v9, *v34, v39);
    sub_1CFF0C9AC();
  }

  (*(v4 + 8))(v9, v30);
  sub_1CFEC24CC(v15, &qword_1EDEC4998, MEMORY[0x1E69A2DA8]);
  return (*(v17 + 8))(v22, v16);
}

uint64_t sub_1CFEC0DF8()
{
  v0 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFEC2528(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v6 = type metadata accessor for OvernightMetricsWarmupProgress();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFEBFD10();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    sub_1CFEC259C();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1CFF10480;
    if (v12)
    {
      sub_1CFF0E52C();
      sub_1CFF0E51C();
      v14 = sub_1CFEBFD10();
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14;
      }

      v26[1] = v16;
      sub_1CFF0E4FC();
      sub_1CFF0E51C();
      sub_1CFF0E54C();
      type metadata accessor for HealthBalanceUI();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      sub_1CFF0E4DC();
      type metadata accessor for HealthBalanceUI();
      v23 = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass_];
    }

    goto LABEL_12;
  }

  sub_1CFEC1EB4(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFEC24CC(v5, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
LABEL_10:
    sub_1CFEC259C();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1CFF10480;
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    v22 = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
LABEL_12:
    v24 = v18;
    sub_1CFF0C7FC();
    *(v13 + 32) = sub_1CFF0E5AC();
    *(v13 + 40) = v25;
    return v13;
  }

  sub_1CFE83D94(v5, v9);
  v19 = sub_1CFF0CA3C();
  v20 = sub_1CFF0CA5C();
  result = sub_1CFE83DF8(v9);
  if (!__OFSUB__(v19, v20))
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEC12E8()
{
  v0 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38[3] = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v38[2] = v38 - v7;
  sub_1CFEC2528(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  v14 = type metadata accessor for OvernightMetricsWarmupProgress();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v21 = sub_1CFEBFD10();
  if ((v22 & 1) == 0)
  {
    if (v21)
    {
      sub_1CFF0E52C();
      sub_1CFF0E51C();
      v24 = sub_1CFEBFD10();
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      v39 = v26;
      sub_1CFF0E4FC();
      sub_1CFF0E51C();
      sub_1CFF0E54C();
      type metadata accessor for HealthBalanceUI();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      sub_1CFF0E4DC();
      type metadata accessor for HealthBalanceUI();
      v34 = swift_getObjCClassFromMetadata();
      v28 = [objc_opt_self() bundleForClass_];
    }

    v28;
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  v38[1] = v2;
  sub_1CFEC1EB4(v13);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) == 1)
  {
    sub_1CFEC24CC(v13, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
LABEL_13:
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    v33 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  sub_1CFE83D94(v13, v20);
  v29 = sub_1CFF0CA3C();
  v30 = sub_1CFF0CA5C();
  result = sub_1CFE83DF8(v20);
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
  }

  else
  {
    if (v29 - v30 <= 0)
    {
      goto LABEL_13;
    }

    sub_1CFF0E52C();
    sub_1CFF0E51C();
    sub_1CFEC1EB4(v10);
    if (v23(v10, 1, v14) == 1)
    {
      sub_1CFEC24CC(v10, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
      v32 = 0;
LABEL_18:
      v39 = v32;
      sub_1CFF0E4FC();
      sub_1CFF0E51C();
      sub_1CFF0E54C();
      type metadata accessor for HealthBalanceUI();
      v37 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass_];
      sub_1CFF0C7FC();
      return sub_1CFF0E5AC();
    }

    sub_1CFE83D94(v10, v17);
    v35 = sub_1CFF0CA3C();
    v36 = sub_1CFF0CA5C();
    result = sub_1CFE83DF8(v17);
    if (!__OFSUB__(v35, v36))
    {
      v32 = (v35 - v36) & ~((v35 - v36) >> 63);
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEC1918()
{
  sub_1CFEC2528(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for OvernightMetricsWarmupProgress();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC1EB4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFEC24CC(v2, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
    v7 = 0;
LABEL_5:
    v11[1] = v7;
    sub_1CFE9CF84();
    return sub_1CFF0E8EC();
  }

  sub_1CFE83D94(v2, v6);
  v8 = sub_1CFF0CA3C();
  v9 = sub_1CFF0CA5C();
  result = sub_1CFE83DF8(v6);
  if (!__OFSUB__(v8, v9))
  {
    v7 = (v8 - v9) & ~((v8 - v9) >> 63);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for BalanceWidgetViewModel()
{
  result = qword_1EDEC4C70;
  if (!qword_1EDEC4C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEC1B18()
{
  v0 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFEC2528(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for OvernightMetricsWarmupProgress();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC1EB4(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFEC24CC(v5, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
    return 0;
  }

  else
  {
    sub_1CFE83D94(v5, v9);
    v15 = sub_1CFF0CA3C();
    sub_1CFE9CF84();
    sub_1CFF0E8EC();
    v15 = sub_1CFF0CA5C();
    sub_1CFF0E8EC();
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    sub_1CFF0E50C();

    sub_1CFF0E51C();
    sub_1CFF0E50C();

    sub_1CFF0E51C();
    sub_1CFF0E54C();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    v13 = sub_1CFF0E5AC();
    sub_1CFE83DF8(v9);
    return v13;
  }
}

uint64_t sub_1CFEC1EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0CA6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC2528(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1CFF0CC0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.daySummaryForToday.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CFEC24CC(v8, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    v13 = type metadata accessor for OvernightMetricsWarmupProgress();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1CFF0CF7C();
    v15 = sub_1CFF0CB1C();
    MEMORY[0x1EEE9AC00](v15);
    *(&v18 - 2) = v12;
    v16 = sub_1CFE8AA04(sub_1CFE9C5C8, (&v18 - 4), sub_1CFE8A828, 0, v15);

    (*(v3 + 32))(a1, v5, v2);
    v17 = type metadata accessor for OvernightMetricsWarmupProgress();
    *(a1 + *(v17 + 20)) = v16;
    (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1CFEC2204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1CFEC2248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1CFEC228C()
{
  v0 = sub_1CFF0CCEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0CCFC();
  v4 = sub_1CFF0CCDC();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t _s15HealthBalanceUI0B15WidgetViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s15HealthBalanceUI25OvernightMetricsViewModelV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for BalanceWidgetViewModel(), (sub_1CFF0C99C()) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    v5 = *(a1 + *(v4 + 28)) ^ *(a2 + *(v4 + 28)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1CFEC2430()
{
  result = type metadata accessor for OvernightMetricsViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_1CFF0C9EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFEC24CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFEC2528(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFEC2528(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0E8AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFEC259C()
{
  if (!qword_1EDEC15C0)
  {
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC15C0);
    }
  }
}

uint64_t sub_1CFEC2654()
{
  result = type metadata accessor for OvernightMetricsChartLayout.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1CFEC26F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1CFEC273C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CFEC27D0()
{
  sub_1CFEC75F8(319, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1CFEC75F8(319, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1CFE59578();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFEC28E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFEC2900(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 88) = v3;
  return result;
}

unint64_t sub_1CFEC2950(double a1)
{
  if (!*(*(v1 + *(type metadata accessor for OvernightMetricsChartLayout(0) + 20)) + 16) || (result = sub_1CFEC3B8C(a1), (v4 & 1) == 0))
  {
    sub_1CFF0E96C();
    MEMORY[0x1D3879330](0xD000000000000032, 0x80000001CFF16420);
    sub_1CFF0E76C();
    result = sub_1CFF0EA2C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFEC2A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = *(a1 + 32);
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = *&result;
    v6 = *(a1 + 40);
    for (i = (a1 + 56); ; i += 2)
    {
      v9 = *(i - 1);
      v8 = *i;
      if (v9 < v5)
      {
        break;
      }

      if (v9 > v6)
      {
        v10 = v9 < v5;
        v6 = *(i - 1);
        v9 = v5;
        if (v10)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      v9 = v5;
      if (v8 >= v5)
      {
LABEL_14:
        if (v6 >= v8)
        {
          v5 = v9;
        }

        else
        {
          v6 = *i;
          v5 = v9;
          if (v9 > v8)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_5;
      }

LABEL_4:
      v5 = *i;
      if (v8 > v6)
      {
        goto LABEL_21;
      }

LABEL_5:
      if (!--v4)
      {
        return *&v5;
      }
    }

    if (v9 > v6)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

LABEL_11:
    if (v8 >= v9)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  return result;
}

unint64_t sub_1CFEC2B1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = a1 + *(v4 + 24);
  if (*(v5 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v4;
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
  v11 = (v2 + *(v10 + 24));
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + *(v10 + 28) + 64);
  v15 = a1 + *(v7 + 20);
  v16 = *(v15 + *(type metadata accessor for IndividualOvernightMetricChartPointCollection() + 24));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = *v18;
      if (*v18 < v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CFEF3E34(0, *(v19 + 16) + 1, 1);
        }

        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1CFEF3E34((v20 > 1), v21 + 1, 1);
        }

        *(v19 + 16) = v21 + 1;
        *(v19 + 8 * v21 + 32) = v22;
      }

      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1CFEC2248(v19);
  v25 = v24;

  v26 = *(v16 + 16);
  if (v26)
  {
    v27 = (v16 + 32);
    v28 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = *v27;
      if (v12 < *v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CFEF3E34(0, *(v28 + 16) + 1, 1);
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1CFEF3E34((v29 > 1), v30 + 1, 1);
        }

        *(v28 + 16) = v30 + 1;
        *(v28 + 8 * v30 + 32) = v31;
      }

      ++v27;
      --v26;
    }

    while (v26);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1CFEC2204(v28);
  v34 = v33;

  if (v12 >= v9 && v8 >= v13)
  {
    sub_1CFEC75F8(0, &qword_1EDEC15B0, sub_1CFE9E9B8, MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1CFF0FCB0;
    sub_1CFEC2950(v8);
    *(v35 + 32) = v36;
    *(v35 + 40) = 0;
    sub_1CFEC2950(v9);
    result = v35;
    *(v35 + 48) = v37;
    *(v35 + 56) = 0;
    return result;
  }

  v38 = v2 + *(type metadata accessor for OvernightMetricsChartLayout(0) + 20);
  v75 = *(v38 + 80);
  sub_1CFEC75F8(0, &qword_1EDEC15B0, sub_1CFE9E9B8, MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CFF10480;
  v40 = v39;
  v41 = *(v38 + 8) * 0.5;
  sub_1CFEC2950(v8);
  v43 = v42 - v41;
  sub_1CFEC2950(v8);
  if (v43 > v41 + v44)
  {
    __break(1u);
    __break(1u);
    goto LABEL_55;
  }

  *(v40 + 32) = v43;
  *(v40 + 40) = v8 < v13;
  v76 = v14;
  if ((v25 & 1) == 0)
  {
    sub_1CFEC2950(*&v23);
    v48 = v47;
    result = sub_1CFEC2950(*&v23);
    v49 = v48 - v41;
    v51 = v41 + v50;
    if (v48 - v41 > v41 + v50)
    {
      __break(1u);
      __break(1u);
    }

    else
    {
      sub_1CFEC2950(v13);
      v46 = v52 - v41;
      result = sub_1CFEC2950(v13);
      v45 = v41 + v53;
      if (v46 <= v41 + v53)
      {
        v54 = v49 + v76 * (v51 - v49);
        if (v46 < v54)
        {
          v45 = v75 + v54;
          v46 = v49 + v76 * (v51 - v49);
          if (v54 > v75 + v54)
          {
            goto LABEL_61;
          }
        }

        v55 = 0.0;
        v56 = 0.0;
        if (v34)
        {
          goto LABEL_45;
        }

LABEL_35:
        v74 = v9;
        sub_1CFEC2950(*&v32);
        v58 = v57;
        result = sub_1CFEC2950(*&v32);
        v59 = v58 - v41;
        v61 = v41 + v60;
        if (v58 - v41 <= v41 + v60)
        {
          sub_1CFEC2950(v12);
          v55 = v62 - v41;
          result = sub_1CFEC2950(v12);
          v56 = v41 + v63;
          if (v55 <= v41 + v63)
          {
            v64 = v59 + (1.0 - v76) * (v61 - v59);
            if (v64 >= v56 || (v55 = v64 - v75, v56 = v59 + (1.0 - v76) * (v61 - v59), v64 - v75 <= v64))
            {
              v9 = v74;
              if (v25)
              {
LABEL_46:
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1CFF0FCB0;
                *(inited + 32) = v55;
                *(inited + 40) = 0;
                *(inited + 48) = v56;
                *(inited + 56) = 1;
                goto LABEL_47;
              }

              if (v56 >= v46 && v45 >= v55)
              {
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1CFF0FCA0;
                *(inited + 32) = v46;
                *(inited + 40) = 1;
                *(inited + 48) = (v46 + v56) * 0.5;
                *(inited + 56) = 0;
                *(inited + 64) = v56;
                *(inited + 72) = 1;
LABEL_47:
                sub_1CFEE0A80(inited);
                goto LABEL_48;
              }

LABEL_45:
              v66 = swift_initStackObject();
              *(v66 + 16) = xmmword_1CFF0FCB0;
              *(v66 + 32) = v46;
              *(v66 + 40) = 1;
              *(v66 + 48) = v45;
              *(v66 + 56) = 0;
              sub_1CFEE0A80(v66);
              if (v34)
              {
                goto LABEL_48;
              }

              goto LABEL_46;
            }

LABEL_62:
            __break(1u);
            return result;
          }

          goto LABEL_60;
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  v45 = 0.0;
  v46 = 0.0;
  if ((v34 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_48:
  sub_1CFEC2950(v9);
  v69 = v68 - v41;
  sub_1CFEC2950(v9);
  v8 = v41 + v70;
  if (v69 > v41 + v70)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v2 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_56:
    result = sub_1CFE97B80(0, *(v2 + 16) + 1, 1, v2);
    goto LABEL_51;
  }

  result = v40;
LABEL_51:
  v72 = *(result + 16);
  v71 = *(result + 24);
  if (v72 >= v71 >> 1)
  {
    result = sub_1CFE97B80((v71 > 1), v72 + 1, 1, result);
  }

  *(result + 16) = v72 + 1;
  v73 = result + 16 * v72;
  *(v73 + 32) = v8;
  *(v73 + 40) = v12 < v9;
  return result;
}

uint64_t sub_1CFEC318C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v1);
  if (*(v0 + 16) == 1)
  {
    sub_1CFF0EC5C();
  }

  else
  {
    v2 = *(v0 + 8);
    sub_1CFF0EC5C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1D38799A0](v3);
  }

  v4 = *(v0 + 24);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v4);
  v5 = *(v0 + 32);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v5);
  v6 = *(v0 + 40);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v6);
  v7 = *(v0 + 48);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v7);
  v8 = *(v0 + 56);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v8);
  v9 = *(v0 + 64);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v9);
  v10 = *(v0 + 72);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v10);
  v11 = *(v0 + 80);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return MEMORY[0x1D38799A0](*&v11);
}

uint64_t sub_1CFEC32AC()
{
  sub_1CFF0EC3C();
  sub_1CFEC318C();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEC32F0()
{
  sub_1CFF0EC3C();
  sub_1CFEC318C();
  return sub_1CFF0EC7C();
}

BOOL sub_1CFEC332C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1CFEC65A4(v7, v9);
}

unint64_t sub_1CFEC339C()
{
  result = qword_1EC512A28;
  if (!qword_1EC512A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512A28);
  }

  return result;
}

uint64_t sub_1CFEC33F4(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC75F8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  sub_1CFEAF07C(a1, *v2);
  v11 = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
  sub_1CFE81C0C(v2 + v11[5], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1CFF0EC5C();
  }

  else
  {
    sub_1CFEC6B7C(v10, v7);
    sub_1CFF0EC5C();
    OvernightMetricsChartPoint.hash(into:)(a1);
    sub_1CFEC6B1C(v7, type metadata accessor for OvernightMetricsChartPoint);
  }

  sub_1CFEAF364(*(v2 + v11[6]), *(v2 + v11[6] + 8));
  v12 = v2 + v11[7];
  v13 = *(v12 + 3);
  v18[2] = *(v12 + 2);
  v18[3] = v13;
  v18[4] = *(v12 + 4);
  v19 = *(v12 + 10);
  v14 = *(v12 + 1);
  v18[0] = *v12;
  v18[1] = v14;
  sub_1CFEC318C();
  v15 = *(v2 + v11[8]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v15);
  v16 = *(v2 + v11[9]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  return MEMORY[0x1D38799A0](*&v16);
}

uint64_t sub_1CFEC3648()
{
  sub_1CFF0EC3C();
  sub_1CFEC33F4(v1);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEC368C()
{
  sub_1CFF0EC3C();
  sub_1CFEC33F4(v1);
  return sub_1CFF0EC7C();
}

BOOL sub_1CFEC3710(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1CFEC69E8(v12, v14);
}

uint64_t sub_1CFEC3794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1CFEC33F0())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6 + 80);
    v16[4] = *(a1 + v6 + 64);
    v16[5] = v7;
    v16[6] = *(a1 + v6 + 96);
    v17 = *(a1 + v6 + 112);
    v8 = *(a1 + v6 + 16);
    v16[0] = *(a1 + v6);
    v16[1] = v8;
    v9 = *(a1 + v6 + 48);
    v16[2] = *(a1 + v6 + 32);
    v16[3] = v9;
    v10 = a2 + v6;
    v11 = *(v10 + 48);
    v18[2] = *(v10 + 32);
    v18[3] = v11;
    v12 = *(v10 + 16);
    v18[0] = *v10;
    v18[1] = v12;
    v19 = *(v10 + 112);
    v13 = *(v10 + 96);
    v18[5] = *(v10 + 80);
    v18[6] = v13;
    v18[4] = *(v10 + 64);
    v14 = sub_1CFEC3644(v16, v18);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void sub_1CFEC3848(uint64_t a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for OvernightMetricsChartPoint();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a3 - a2) * a4;
  v13 = a2 - v12;
  v14 = v12 + a3;
  if (a2 - v12 > v14)
  {
    __break(1u);
  }

  else
  {
    sub_1CFEC75F8(0, &qword_1EDEC15C8, sub_1CFE59578, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFF10480;
    *(inited + 32) = v13;
    *(inited + 40) = v14;
    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = &v11[*(v8 + 24)];
      v18 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v19 = *(v9 + 72);
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1CFEC724C(v18, v11);
        v25 = *v17;
        v21 = v17[16];
        sub_1CFEC6B1C(v11, type metadata accessor for OvernightMetricsChartPoint);
        if ((v21 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1CFE97930(0, *(v20 + 2) + 1, 1, v20);
          }

          v23 = *(v20 + 2);
          v22 = *(v20 + 3);
          if (v23 >= v22 >> 1)
          {
            v20 = sub_1CFE97930((v22 > 1), v23 + 1, 1, v20);
          }

          *(v20 + 2) = v23 + 1;
          *&v20[16 * v23 + 32] = v25;
        }

        v18 += v19;
        --v16;
      }

      while (v16);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v26 = inited;
    sub_1CFEE0B6C(v20);
    sub_1CFEC2A3C(v26);
    if ((v24 & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
}

unint64_t sub_1CFEC3AB8(uint64_t a1)
{
  sub_1CFF0CB6C();
  v2 = MEMORY[0x1E69A2E68];
  sub_1CFEC3E48(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  v3 = sub_1CFF0E44C();
  return sub_1CFEC3E90(a1, v3, MEMORY[0x1E69A2E68], &qword_1EDEC4CD8, v2, MEMORY[0x1E69A2E80]);
}

unint64_t sub_1CFEC3B8C(double a1)
{
  v2 = sub_1CFF0EC2C();

  return sub_1CFEC3DE0(v2, a1);
}

unint64_t sub_1CFEC3BD8(uint64_t a1)
{
  sub_1CFF0CCEC();
  v2 = MEMORY[0x1E69A2EF8];
  sub_1CFEC3E48(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
  v3 = sub_1CFF0E44C();
  return sub_1CFEC3E90(a1, v3, MEMORY[0x1E69A2EF8], &qword_1EDEC4C98, v2, MEMORY[0x1E69A2F10]);
}

unint64_t sub_1CFEC3CAC(uint64_t a1)
{
  sub_1CFF0E59C();
  sub_1CFF0EC3C();
  sub_1CFF0E5EC();
  v2 = sub_1CFF0EC7C();

  return sub_1CFEC4030(a1, v2);
}

unint64_t sub_1CFEC3DE0(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1CFEC3E48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFEC3E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1CFEC3E48(v23, v24);
      v19 = sub_1CFF0E4CC();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1CFEC4030(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1CFF0E59C();
      v8 = v7;
      if (v6 == sub_1CFF0E59C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1CFF0EBCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1CFEC4134(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1CFE62B04(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1CFF0E89C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CFEC4200(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1CFF0CB6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1CFEC747C(0, &qword_1EDEC4A18);
  v39 = a2;
  result = sub_1CFF0EA5C();
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

      sub_1CFEC3E48(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      result = sub_1CFF0E44C();
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

uint64_t sub_1CFEC463C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1CFEC7518();
  result = sub_1CFF0EA5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
        v22 = v20;
        v23 = v21;
      }

      result = sub_1CFF0E88C();
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1CFEC48C0(uint64_t a1, int a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v9 = v5;
  v11 = sub_1CFF0CCEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v16 = *v5;
  sub_1CFEC73AC(0, v15, a4, a5);
  v47 = a2;
  result = sub_1CFF0EA5C();
  v18 = result;
  if (*(v16 + 16))
  {
    v50 = v14;
    v51 = v11;
    v43 = v5;
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v12 + 16);
    v45 = v16;
    v48 = (v12 + 32);
    v25 = result + 64;
    v46 = v12;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v19 << 6);
      v31 = *(v16 + 48);
      v49 = *(v12 + 72);
      v32 = v31 + v49 * v30;
      if (v47)
      {
        (*v48)(v50, v32, v51);
        v33 = *(*(v16 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v50, v32, v51);
        v33 = *(*(v16 + 56) + 8 * v30);
      }

      sub_1CFEC3E48(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
      result = sub_1CFF0E44C();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v12 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v12 = v46;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v49 * v26, v50, v51);
      *(*(v18 + 56) + 8 * v26) = v33;
      ++*(v18 + 16);
      v16 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v16 + 32);
    v9 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t sub_1CFEC4CD0(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v56 = a3(0);
  v10 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - v11;
  v12 = sub_1CFF0CB6C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  sub_1CFEC7300(0, a4, a5);
  v51 = a2;
  result = sub_1CFF0EA5C();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_1CFEC3E48(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      result = sub_1CFF0E44C();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}

uint64_t sub_1CFEC5178(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1CFF0CB6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1CFEC747C(0, &qword_1EDEC4A20);
  v43 = a2;
  result = sub_1CFF0EA5C();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
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
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v22 = (v16 - 1) & v16;
LABEL_15:
      v25 = v21 | (v12 << 6);
      v46 = v22;
      v26 = *(v6 + 72);
      v27 = *(v9 + 48) + v26 * v25;
      if (v43)
      {
        (*v44)(v47, v27, v5);
      }

      else
      {
        (*v40)(v47, v27, v5);
      }

      v28 = *(v9 + 56) + 16 * v25;
      v29 = *(v28 + 8);
      v45 = *v28;
      sub_1CFEC3E48(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      result = sub_1CFF0E44C();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v26 * v19, v47, v5);
      v20 = *(v11 + 56) + 16 * v19;
      v16 = v46;
      *v20 = v45;
      *(v20 + 8) = v29;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1CFEC5554(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1CFEB90A0();
  result = sub_1CFF0EA5C();
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
      result = sub_1CFF0EC2C();
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

LABEL_31:
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
        goto LABEL_31;
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
  }

  *v3 = v7;
  return result;
}

void *sub_1CFEC57A4()
{
  v1 = v0;
  v31 = sub_1CFF0CB6C();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC747C(0, &qword_1EDEC4A18);
  v3 = *v0;
  v4 = sub_1CFF0EA4C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

char *sub_1CFEC5A54()
{
  v1 = v0;
  v33 = sub_1CFF0CCEC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC73AC(0, &qword_1EDEC1648, &qword_1EDEC1728, sub_1CFE59578);
  v3 = *v0;
  v4 = sub_1CFF0EA4C();
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

id sub_1CFEC5CEC()
{
  v1 = v0;
  sub_1CFEC7518();
  v2 = *v0;
  v3 = sub_1CFF0EA4C();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

char *sub_1CFEC5E74(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v35 - v7;
  v44 = sub_1CFF0CB6C();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC7300(0, a2, a3);
  v9 = *v3;
  v10 = sub_1CFF0EA4C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}

void *sub_1CFEC61D0()
{
  v1 = v0;
  v34 = sub_1CFF0CB6C();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC747C(0, &qword_1EDEC4A20);
  v3 = *v0;
  v4 = sub_1CFF0EA4C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v29, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v32 = v3;
    v15 = v33;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v22 = v34;
        (*(v36 + 16))(v15, *(v3 + 48) + v21, v34);
        v19 *= 16;
        v23 = *(v3 + 56) + v19;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = v35;
        result = (*(v20 + 32))(*(v35 + 48) + v21, v15, v22);
        v27 = *(v26 + 56) + v19;
        *v27 = v24;
        *(v27 + 8) = v25;
        v3 = v32;
        v13 = v37;
      }

      while (v37);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v35;
        goto LABEL_21;
      }

      v18 = *(v29 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_1CFEC6464()
{
  v1 = v0;
  sub_1CFEB90A0();
  v2 = *v0;
  v3 = sub_1CFF0EA4C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

BOOL sub_1CFEC65A4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
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
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    return *(a1 + 80) == *(a2 + 80);
  }

  return 0;
}

BOOL sub_1CFEC6668(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC75F8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v32 - v9;
  sub_1CFE81B8C();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1CFE911B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
  v16 = v15[5];
  v17 = *(v12 + 48);
  sub_1CFE81C0C(a1 + v16, v14);
  sub_1CFE81C0C(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1CFE81C0C(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      sub_1CFEC6B7C(&v14[v17], v7);
      v19 = static OvernightMetricsChartPoint.== infix(_:_:)(v10, v7);
      sub_1CFEC6B1C(v7, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFEC6B1C(v10, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFE81C8C(v14);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_1CFEC6B1C(v10, type metadata accessor for OvernightMetricsChartPoint);
LABEL_7:
    sub_1CFEC6B1C(v14, sub_1CFE81B8C);
    return 0;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1CFE81C8C(v14);
LABEL_9:
  v20 = v15[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    v25 = a1 + v15[7];
    v26 = *(v25 + 3);
    v32[2] = *(v25 + 2);
    v32[3] = v26;
    v32[4] = *(v25 + 4);
    v33 = *(v25 + 10);
    v27 = *v25;
    v32[1] = *(v25 + 1);
    v32[0] = v27;
    v28 = a2 + v15[7];
    v29 = *(v28 + 3);
    v34[2] = *(v28 + 2);
    v34[3] = v29;
    v34[4] = *(v28 + 4);
    v35 = *(v28 + 10);
    v30 = *(v28 + 1);
    v34[0] = *v28;
    v34[1] = v30;
    if (sub_1CFEC65A4(v32, v34) && *(a1 + v15[8]) == *(a2 + v15[8]))
    {
      return *(a1 + v15[9]) == *(a2 + v15[9]);
    }
  }

  return 0;
}

BOOL sub_1CFEC69E8(uint64_t a1, uint64_t a2)
{
  if (sub_1CFEBDAD8(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && (v4 = *(a1 + 24), v5 = *(a1 + 32), v6 = *(a2 + 24), v7 = *(a2 + 32), sub_1CFEBDBE0(*(a1 + 16), *(a2 + 16)), (v8) && (sub_1CFEBDBE0(v4, v6), (v9) && (sub_1CFEE6DAC(v5, v7) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    return *(a1 + 112) == *(a2 + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFEC6B1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFEC6B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1CFEC6BE0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for OvernightMetricsChartPoint();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v32 = v19;
    sub_1CFEC72B0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFF12D30;
    *(inited + 32) = a3;
    *(inited + 40) = a2;
    *(inited + 48) = a4;
    *(inited + 56) = a5;
    sub_1CFEE0774(inited);
    return v32;
  }

  v31 = &v14[*(v12 + 20)];
  v16 = *(type metadata accessor for IndividualOvernightMetricChartPointCollection() + 24);
  v17 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = *(v11 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1CFEC724C(v17, v14);
    v21 = *&v31[v16];

    result = sub_1CFEC6B1C(v14, type metadata accessor for OvernightMetricsChartPoint);
    v22 = *(v21 + 16);
    v23 = *(v19 + 2);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v24 <= *(v19 + 3) >> 1)
    {
      if (*(v21 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      result = sub_1CFE976F0(result, v25, 1, v19);
      v19 = result;
      if (*(v21 + 16))
      {
LABEL_14:
        v26 = *(v19 + 2);
        if ((*(v19 + 3) >> 1) - v26 < v22)
        {
          goto LABEL_22;
        }

        memcpy(&v19[8 * v26 + 32], (v21 + 32), 8 * v22);

        if (v22)
        {
          v27 = *(v19 + 2);
          v28 = __OFADD__(v27, v22);
          v29 = v27 + v22;
          if (v28)
          {
            goto LABEL_23;
          }

          *(v19 + 2) = v29;
        }

        goto LABEL_4;
      }
    }

    if (v22)
    {
      goto LABEL_21;
    }

LABEL_4:
    v17 += v18;
    if (!--v15)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1CFEC6E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFEC75F8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v57 - v7;
  v9 = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
  v10 = (a1 + v9[7]);
  v11 = *(a1 + v9[8]) / a2;
  if (*(v10 + 16))
  {
    v12 = v11 * *v10;
  }

  else
  {
    v12 = v10[1];
  }

  if (*(a1 + v9[9]) > v11)
  {
    v13 = *(a1 + v9[9]);
  }

  else
  {
    v13 = *(a1 + v9[8]) / a2;
  }

  if (v13 >= 0.0)
  {
    v14 = v9;
    v60 = v8;
    v61 = a1;
    v15 = v10[3];
    v58 = v10[4];
    v59 = v15;
    v57 = v10[5];
    v16 = v10[7];
    v17 = *a1;
    v18 = (a1 + v9[6]);
    v19 = *v18;
    v20 = v18[1];
    sub_1CFEC3848(*a1, *v18, v20, v16);
    v22 = v21;
    v24 = v23;
    v25 = sub_1CFEC6BE0(v17, v19, v20, v21, v23);
    v26 = sub_1CFEB8FD0(MEMORY[0x1E69E7CC0]);
    v27 = *(v25 + 2);
    if (!v27)
    {
LABEL_22:

      v43 = v60;
      v44 = v61;
      sub_1CFE81C0C(v61 + v14[5], v60);
      v45 = type metadata accessor for OvernightMetricsChartPoint();
      if ((*(*(v45 - 8) + 48))(v43, 1, v45) == 1)
      {
        sub_1CFE81C8C(v43);
        v46 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v47 = v43 + *(v45 + 20);
        v46 = *(v47 + *(type metadata accessor for IndividualOvernightMetricChartPointCollection() + 24));

        sub_1CFEC6B1C(v43, type metadata accessor for OvernightMetricsChartPoint);
      }

      v48 = v12 * v58;
      v49 = v12 * v58 * v57;
      v50 = v12 * v59;

      v51 = sub_1CFE794C4(v46, v26, v50, v12);
      v53 = v52;
      v55 = v54;
      result = sub_1CFEC6B1C(v44, type metadata accessor for OvernightMetricsChartLayout.Configuration);
      *a3 = v26;
      *(a3 + 8) = v12;
      *(a3 + 16) = v51;
      *(a3 + 24) = v53;
      *(a3 + 32) = v55;
      *(a3 + 40) = v22;
      *(a3 + 48) = v24;
      *(a3 + 56) = 0;
      *(a3 + 64) = v13;
      *(a3 + 72) = v12;
      *(a3 + 80) = v12;
      *(a3 + 88) = v50;
      *(a3 + 96) = v50;
      *(a3 + 104) = v49;
      *(a3 + 112) = v48;
      return result;
    }

    v28 = 0;
    while (v28 < *(v25 + 2))
    {
      v29 = *&v25[8 * v28 + 32];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v26;
      v31 = sub_1CFEC3B8C(v29);
      v33 = v26[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_27;
      }

      v37 = v32;
      if (v26[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v31;
          sub_1CFEC6464();
          v31 = v42;
        }
      }

      else
      {
        sub_1CFEC5554(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_1CFEC3B8C(v29);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_30;
        }
      }

      v39 = v12 * 0.25 + (v13 + v12 * -0.5) * ((v29 - v22) / (v24 - v22));
      v26 = v62;
      if (v37)
      {
        *(v62[7] + 8 * v31) = v39;
      }

      else
      {
        v62[(v31 >> 6) + 8] |= 1 << v31;
        *(v26[6] + 8 * v31) = v29;
        *(v26[7] + 8 * v31) = v39;
        v40 = v26[2];
        v35 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v35)
        {
          goto LABEL_28;
        }

        v26[2] = v41;
      }

      if (v27 == ++v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
LABEL_30:
  result = sub_1CFF0EBEC();
  __break(1u);
  return result;
}

uint64_t sub_1CFEC724C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFEC72B0()
{
  if (!qword_1EDEC49C8)
  {
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC49C8);
    }
  }
}

void sub_1CFEC7300(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFF0CB6C();
    a3(255);
    sub_1CFEC3E48(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v5 = sub_1CFF0EA7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFEC73AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFF0CCEC();
    sub_1CFEC75F8(255, a3, a4, MEMORY[0x1E69E62F8]);
    sub_1CFEC3E48(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
    v7 = sub_1CFF0EA7C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1CFEC747C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1CFF0CB6C();
    sub_1CFEC3E48(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v3 = sub_1CFF0EA7C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1CFEC7518()
{
  if (!qword_1EC512A38)
  {
    sub_1CFE62B04(255, &qword_1EC512A40);
    sub_1CFEC7590();
    v0 = sub_1CFF0EA7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512A38);
    }
  }
}

unint64_t sub_1CFEC7590()
{
  result = qword_1EC512A48;
  if (!qword_1EC512A48)
  {
    sub_1CFE62B04(255, &qword_1EC512A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512A48);
  }

  return result;
}

void sub_1CFEC75F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SmoothedLineTrace()
{
  result = qword_1EDEC3F78;
  if (!qword_1EDEC3F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEC76D0()
{
  sub_1CFEC8CF4(319, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1CFEC8CF4(319, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OvernightMetricsChartLayout(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFEC77F8@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1CFEC8CF4(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v36 - v4;
  v41 = type metadata accessor for SmoothedLineTrace();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1CFEC8BC0();
  v42 = v7;
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC8EAC();
  v38 = v9;
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC9080();
  v49 = v11;
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC9150();
  v48 = v14;
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  *&v58[0] = *v1;
  sub_1CFEC9324(v1, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmoothedLineTrace);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1CFEC9460(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SmoothedLineTrace);
  sub_1CFEC8CF4(0, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
  type metadata accessor for IndividualOvernightMetricChartPoint.ID(0);
  sub_1CFEC8CF4(0, &qword_1EDEC22D8, sub_1CFEC8D58, v2);
  sub_1CFEC8DDC();
  sub_1CFEC8FA8();
  sub_1CFEC8E64(qword_1EDEC2B48, type metadata accessor for IndividualOvernightMetricChartPoint);
  v18 = v38;

  v19 = v39;
  v20 = v41;
  v21 = v13;
  v22 = v37;
  sub_1CFF0E04C();
  type metadata accessor for OvernightMetricsChartLayout(0);
  sub_1CFF0D45C();
  v23 = sub_1CFEC8F30();
  v24 = v40;
  v25 = v42;
  sub_1CFF0D17C();
  sub_1CFE7B53C(v57);
  (*(v43 + 8))(v19, v25);
  sub_1CFEC883C();
  sub_1CFF0E1DC();
  sub_1CFF0E1EC();
  sub_1CFF0E0BC();
  sub_1CFF0D5CC();
  v54 = v58[0];
  v55 = v58[1];
  v56 = v59;
  v52 = v25;
  v53 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x1E697E3F0];
  v28 = MEMORY[0x1E697E3E0];
  sub_1CFF0D0FC();
  sub_1CFEC92D0(v58);
  (*(v44 + 8))(v24, v18);
  v29 = v50;
  sub_1CFE6BB40(v22 + *(v20 + 20), v50);
  v30 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  (*(*(v30 - 8) + 48))(v29, 1, v30);
  sub_1CFE6BBD4(v29);
  *&v54 = v18;
  *(&v54 + 1) = v27;
  *&v55 = OpaqueTypeConformance2;
  *(&v55 + 1) = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v45;
  v33 = v49;
  sub_1CFF0D16C();
  (*(v46 + 8))(v21, v33);
  *&v54 = v33;
  *(&v54 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v48;
  sub_1CFF0D14C();
  return (*(v47 + 8))(v32, v34);
}

uint64_t sub_1CFEC7FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a1;
  sub_1CFEC9410(0, &qword_1EC512A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v47 - v6;
  sub_1CFEC9410(0, &qword_1EDEC2220);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v47 - v8;
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7B5F4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFF0D34C();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC8D58();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1CFEC8CF4(0, &qword_1EDEC22D8, sub_1CFEC8D58, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v47 - v19;
  sub_1CFEC8CF4(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, v17);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v26 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  v58 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = type metadata accessor for SmoothedLineTrace();
  v30 = *(v49 + 20);
  v31 = a2;
  sub_1CFE6BB40(a2 + v30, v25);
  v32 = *(v27 + 48);
  if (v32(v25, 1, v26) == 1)
  {
    sub_1CFEC9324(v62, v29, type metadata accessor for IndividualOvernightMetricChartPoint);
    if (v32(v25, 1, v26) != 1)
    {
      sub_1CFE6BBD4(v25);
    }
  }

  else
  {
    sub_1CFEC9460(v25, v29, type metadata accessor for IndividualOvernightMetricChartPoint);
  }

  v33 = &v29[*(v26 + 32)];
  if (v33[8])
  {
    sub_1CFEC93B0(v29, type metadata accessor for IndividualOvernightMetricChartPoint);
    v34 = 1;
    v36 = v60;
    v35 = v61;
    v37 = v59;
  }

  else
  {
    v38 = *v33;
    v47 = sub_1CFF0D87C();
    v48 = a3;
    sub_1CFE6BB40(v31 + v30, v22);
    v39 = v32(v22, 1, v26);
    sub_1CFE6BBD4(v22);
    v40 = 28;
    if (v39 == 1)
    {
      v40 = 24;
    }

    v41 = v50;
    sub_1CFEC9324(&v29[*(v26 + v40)], v50, sub_1CFE55184);
    sub_1CFF0C7AC();
    sub_1CFEC8E64(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    sub_1CFF0D1EC();

    sub_1CFEC93B0(v41, sub_1CFE55184);
    sub_1CFF0D87C();
    sub_1CFEC2950(v38);
    v63 = v42;
    sub_1CFF0D1FC();

    sub_1CFF0D87C();
    v63 = sub_1CFF0CB2C();
    sub_1CFF0D1FC();

    a3 = v48;

    v43 = v52;
    sub_1CFF0D33C();
    v44 = v51;
    v45 = v55;
    sub_1CFF0D13C();
    (*(v54 + 8))(v43, v45);
    sub_1CFEC93B0(v29, type metadata accessor for IndividualOvernightMetricChartPoint);
    v37 = v59;
    v36 = v60;
    v35 = v61;
    (*(v60 + 32))(v59, v44, v61);
    v34 = 0;
  }

  (*(v36 + 56))(v37, v34, 1, v35);
  sub_1CFE4D194(v37, a3);
}

uint64_t sub_1CFEC883C()
{
  v1 = v0;
  v2 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  v9 = *v1;
  v10 = *(*v1 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  sub_1CFEC9324(v11, &v18[-v7], type metadata accessor for IndividualOvernightMetricChartPoint);
  sub_1CFEC9324(v11 + *(v3 + 72) * (v10 - 1), v5, type metadata accessor for IndividualOvernightMetricChartPoint);
  sub_1CFF0C65C();
  v13 = v12;
  result = sub_1CFF0C65C();
  if (v13 <= v15)
  {
    v16 = MEMORY[0x1EEE9AC00](result);
    *&v18[-32] = v1;
    *&v18[-24] = v13;
    *&v18[-16] = v16;
    v17 = sub_1CFEDA5C0(sub_1CFEC938C, &v18[-48], v9);
    sub_1CFEC93B0(v5, type metadata accessor for IndividualOvernightMetricChartPoint);
    sub_1CFEC93B0(v8, type metadata accessor for IndividualOvernightMetricChartPoint);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEC8A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for SmoothedLineTrace();
  memcpy(__dst, (a2 + *(v6 + 32)), sizeof(__dst));
  if (*(a1 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32) + 8))
  {
    sub_1CFF0DE6C();
  }

  else
  {
    sub_1CFE55370(__dst, &v11);
    sub_1CFF0CCCC();

    sub_1CFE583D0(__dst);
  }

  sub_1CFF0C65C();
  v7 = sub_1CFF0E0AC();
  v9 = v8;

  *a3 = v7;
  a3[1] = v9;
  return result;
}

void sub_1CFEC8BC0()
{
  if (!qword_1EDEC18F0)
  {
    sub_1CFEC8CF4(255, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
    type metadata accessor for IndividualOvernightMetricChartPoint.ID(255);
    sub_1CFEC8CF4(255, &qword_1EDEC22D8, sub_1CFEC8D58, MEMORY[0x1E69E6720]);
    sub_1CFEC8DDC();
    sub_1CFEC8E64(&qword_1EDEC2BE8, type metadata accessor for IndividualOvernightMetricChartPoint.ID);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC18F0);
    }
  }
}

void sub_1CFEC8CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFEC8D58()
{
  if (!qword_1EDEC22E0)
  {
    sub_1CFF0D34C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22E0);
    }
  }
}

unint64_t sub_1CFEC8DDC()
{
  result = qword_1EDEC1730;
  if (!qword_1EDEC1730)
  {
    sub_1CFEC8CF4(255, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1730);
  }

  return result;
}

uint64_t sub_1CFEC8E64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFEC8EAC()
{
  if (!qword_1EDEC2250)
  {
    sub_1CFEC8BC0();
    sub_1CFEC8F30();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2250);
    }
  }
}

unint64_t sub_1CFEC8F30()
{
  result = qword_1EDEC18F8;
  if (!qword_1EDEC18F8)
  {
    sub_1CFEC8BC0();
    sub_1CFEC8FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC18F8);
  }

  return result;
}

unint64_t sub_1CFEC8FA8()
{
  result = qword_1EDEC22D0;
  if (!qword_1EDEC22D0)
  {
    sub_1CFEC8CF4(255, &qword_1EDEC22D8, sub_1CFEC8D58, MEMORY[0x1E69E6720]);
    sub_1CFF0D34C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC22D0);
  }

  return result;
}

void sub_1CFEC9080()
{
  if (!qword_1EDEC2340)
  {
    sub_1CFEC8EAC();
    sub_1CFEC8BC0();
    sub_1CFEC8F30();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2340);
    }
  }
}

void sub_1CFEC9150()
{
  if (!qword_1EDEC2260)
  {
    sub_1CFEC9080();
    sub_1CFEC8EAC();
    sub_1CFEC8BC0();
    sub_1CFEC8F30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2260);
    }
  }
}

uint64_t sub_1CFEC9250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SmoothedLineTrace() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFEC7FD4(a1, v6, a2);
}

uint64_t sub_1CFEC9324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEC93B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFEC9410(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFF0D20C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1CFEC9460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for OvernightMetricsChartContent()
{
  result = qword_1EDEC3688;
  if (!qword_1EDEC3688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEC95A4()
{
  type metadata accessor for OvernightMetricsChartPointCollection();
  if (v0 <= 0x3F)
  {
    sub_1CFEC94DC(319);
    if (v1 <= 0x3F)
    {
      sub_1CFECB5C0(319, &qword_1EDEC2B38);
      if (v2 <= 0x3F)
      {
        sub_1CFEC96D4(319);
        if (v3 <= 0x3F)
        {
          sub_1CFEC9510(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for OvernightMetricsChartLayout(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}