uint64_t sub_1CF65C654()
{
  v1 = *(*(v0[2] + 40) + 16);
  v2 = *(*v0 + 104);
  return swift_dynamicCastClassUnconditional();
}

unint64_t sub_1CF65C684(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF65C6C8(char a1, void *a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  v9 = v2[9];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (*(v10 + 80) + 112) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF65A704(a1, a2, v2[10], v2[11], v2[12], v2[13], v2 + v11, v2 + v14, *(v2 + v15), *(v2 + v15 + 8), *(v2 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF65C86C(char a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[6];
  v8 = v2[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 96) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF65B0B0(a1, a2, v2[8], v2[9], v2[10], v2[11], v2 + v10, v2 + v13, *(v2 + v14), *(v2 + v14 + 8), *(v2 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + v8 + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 8);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);
  sub_1CF65C684(*&v0[v7]);
  v14 = *&v0[v8];

  (*(v10 + 8))(&v0[v11], v9);
  v15 = *&v0[v12 + 8];

  v16 = *&v0[((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF65CBF0(uint64_t a1, uint64_t (*a2)(uint64_t, void, char *, void, void, void, char *, void, void, void, void))
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v5 = *(v2 + 6);
  v6 = *(v2 + 7);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = (*(v12 + 80) + v11 + 8) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 8), &v2[v8], *&v2[v9], *&v2[v10], *&v2[v11], &v2[v13], *&v2[v14], *&v2[v14 + 8], *&v2[(v14 + 23) & 0xFFFFFFFFFFFFFFF8], *&v2[((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8]);
}

void sub_1CF65CD98(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF65BC1C(a1, *(v1 + 64), v1 + v6, *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  v8 = *(v0 + 9);

  sub_1CF65C684(*(v0 + 10));
  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v9 = *&v0[v6 + 8];

  v10 = *&v0[((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF65CFC8(char a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  v8 = v3[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 96) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF65BF20(a1, a2, v3[8], v3[9], v3[10], v3[11], v3 + v10, *(v3 + v11), *(v3 + v11 + 8), *(v3 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a3);
}

void sub_1CF65D0B0(void *a1)
{
  v3 = v1[3];
  v4 = v1[7];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF65C360(a1, v1[8], v1 + v6, *(v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void *sub_1CF65D19C(void *result, char *a2, uint64_t a3)
{
  v4 = result;
  v6 = v3[2];
  v5 = v3[3];
  v12 = v5;
  v13 = v6;
  if (!a2)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_14:
    *v4 = v3;
    v4[1] = v5;
    v4[2] = v6;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 1;
    while (1)
    {
      v3 = &v11;
      sub_1CF65E5E4(__src);
      memcpy(__dst, __src, 0x489uLL);
      if (sub_1CF65F598(__dst) == 1)
      {
        v3 = v11;
        v5 = v12;
        v7 = v9 - 1;
        goto LABEL_13;
      }

      memcpy(v8, __src, 0x489uLL);
      if (v7 == v9)
      {
        break;
      }

      v8 += 1168;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v3 = v11;
    v5 = v12;
LABEL_13:
    v6 = v13;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF65D27C(int a1, void *a2, void *a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v5 = a1;
    if (*a2 != -1)
    {
LABEL_14:
      v18 = a3;
      swift_once();
      a3 = v18;
    }

    v6 = 0;
    v7 = *a3;
    while (1)
    {
      v9 = v5 & -v5;
      if (*(v7 + 16))
      {
        v10 = a4(v5 & -v5);
        if (v11)
        {
          v12 = (*(v7 + 56) + 32 * v10);
          v14 = *v12;
          v13 = v12[1];
          v15 = __OFADD__(v14, v13);
          v16 = v14 + v13;
          if (v15)
          {
            __break(1u);
            goto LABEL_14;
          }

          v15 = __OFADD__(v6, v16);
          v6 += v16;
          if (v15)
          {
            break;
          }
        }
      }

      v8 = v5 == v9;
      v5 ^= v9;
      if (v8)
      {
        return v6;
      }
    }

    __break(1u);
  }

  return 0;
}

uint64_t sub_1CF65D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7DD0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB938;
    v6 = *(qword_1EDEBB938 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB938 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EDEA7DF8 != -1)
        {
          swift_once();
        }

        v10 = qword_1EDEBB940;
        if (!*(qword_1EDEBB940 + 16) || (v11 = sub_1CF7D52AC(v9), (v12 & 1) == 0))
        {
          v22 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v24 = v23;
          *(v23 + 24) = &type metadata for VFSAttributes.Common.AttributeSet;
          *(v23 + 32) = sub_1CF19BEF4();
          *v24 = v9;
          *(v24 + 40) = v22;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v22 = 14;
          LODWORD(v9) = v13;
          goto LABEL_17;
        }

        v21 = v18[2];
        v20 = v18[3];

        v21(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65D544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7DA8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB930;
    v6 = *(qword_1EDEBB930 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB930 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EC4BCD30 != -1)
        {
          swift_once();
        }

        v10 = qword_1EC4EBD40;
        if (!*(qword_1EC4EBD40 + 16) || (v11 = sub_1CF7D52AC(v9), (v12 & 1) == 0))
        {
          v22 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v24 = v23;
          *(v23 + 24) = &type metadata for VFSAttributes.Volume.AttributeSet;
          *(v23 + 32) = sub_1CF520DC8();
          *v24 = v9;
          *(v24 + 40) = v22;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v22 = 14;
          LODWORD(v9) = v13;
          goto LABEL_17;
        }

        v21 = v18[2];
        v20 = v18[3];

        v21(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65D748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7D68 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB918;
    v6 = *(qword_1EDEBB918 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB918 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EC4BCD40 != -1)
        {
          swift_once();
        }

        v10 = qword_1EC4EBD48;
        if (!*(qword_1EC4EBD48 + 16) || (v11 = sub_1CF7D52AC(v9), (v12 & 1) == 0))
        {
          v22 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v24 = v23;
          *(v23 + 24) = &type metadata for VFSAttributes.Directory.AttributeSet;
          *(v23 + 32) = sub_1CF520B8C();
          *v24 = v9;
          *(v24 + 40) = v22;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v22 = 14;
          LODWORD(v9) = v13;
          goto LABEL_17;
        }

        v21 = v18[2];
        v20 = v18[3];

        v21(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7E98 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB950;
    v6 = *(qword_1EDEBB950 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB950 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EDEA7EA0 != -1)
        {
          swift_once();
        }

        v10 = qword_1EDEBB958;
        if (!*(qword_1EDEBB958 + 16) || (v11 = sub_1CF7D52AC(v9), (v12 & 1) == 0))
        {
          v22 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v24 = v23;
          *(v23 + 24) = &type metadata for VFSAttributes.File.AttributeSet;
          *(v23 + 32) = sub_1CF520950();
          *v24 = v9;
          *(v24 + 40) = v22;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v22 = 14;
          LODWORD(v9) = v13;
          goto LABEL_17;
        }

        v21 = v18[2];
        v20 = v18[3];

        v21(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65DB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7D70 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB920;
    v6 = *(qword_1EDEBB920 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB920 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EDEA7D98 != -1)
        {
          swift_once();
        }

        v10 = qword_1EDEBB928;
        if (!*(qword_1EDEBB928 + 16) || (v11 = sub_1CF7D52AC(v9), (v12 & 1) == 0))
        {
          v22 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v24 = v23;
          *(v23 + 24) = &type metadata for VFSAttributes.Extended.AttributeSet;
          *(v23 + 32) = sub_1CF520714();
          *v24 = v9;
          *(v24 + 40) = v22;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v22 = 14;
          LODWORD(v9) = v13;
          goto LABEL_17;
        }

        v21 = v18[2];
        v20 = v18[3];

        v21(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65DD54(unsigned int *a1)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = *a1;
  v8 = sub_1CF65D340((a1 + 6), v7 - 24, a1[1] & 0x7FFFFFFF);
  if (v1)
  {
    return a1 + v7;
  }

  result = sub_1CF65D544(v8, v9, v4 & 0x7FFFFFFF);
  if ((v3 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1CF65D748(result, v11, v3);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = sub_1CF65D94C(result, v12, v6);
  if ((v5 & 0x80000000) == 0)
  {
    sub_1CF65DB50(result, v13, v5);
    return a1 + v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1CF65DE04@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void *a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = a5;
  v13 = a1;
  if (!a2)
  {
    v14 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    goto LABEL_29;
  }

  v14 = a2 | 0x80000000;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((a5 & 0x80000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = (a1 & 0x180000 | a5) != 0;
  v16 = sub_1CF65D27C(a1, &qword_1EDEA7DF8, &qword_1EDEBB940, sub_1CF7D52AC);
  v17 = v16 + 24;
  if (__OFADD__(v16, 24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = sub_1CF65D27C(a2, &qword_1EC4BCD30, &qword_1EC4EBD40, sub_1CF7D52AC);
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = sub_1CF65D27C(a3, &qword_1EC4BCD40, &qword_1EC4EBD48, sub_1CF7D52AC);
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = sub_1CF65D27C(a4, &qword_1EDEA7EA0, &qword_1EDEBB958, sub_1CF7D52AC);
  v21 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = sub_1CF65D27C(v9, &qword_1EDEA7D98, &qword_1EDEBB928, sub_1CF7D52AC);
  v21 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v21)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v7 = __src;
  v32[0] = 5;
  v32[1] = v13 | 0x80000000;
  v32[2] = v14;
  v32[3] = a3;
  v32[4] = a4;
  v32[5] = v9;
  v9 = swift_slowAlloc();
  a1 = fgetattrlist(a6, v32, v9, v26, 32 * v15);
  if ((a1 & 0x80000000) != 0)
  {
LABEL_17:
    v27 = MEMORY[0x1D38683F0](a1);
    *&__src[0] = 28;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    BYTE8(__src[2]) = 19;
    sub_1CF19BBE4(v27, __src);
    sub_1CF1969CC(__src);
    swift_willThrow();
    goto LABEL_18;
  }

  *(&__src[27] + 1) = *v37;
  *(&__src[50] + 13) = v35;
  *(&__src[54] + 9) = *v34;
  *(&__src[62] + 9) = *v33;
  BYTE4(__src[1]) = 1;
  LOBYTE(__src[2]) = 1;
  BYTE8(__src[2]) = 1;
  LOBYTE(__src[3]) = 1;
  BYTE12(__src[3]) = 1;
  BYTE8(__src[4]) = 1;
  BYTE4(__src[5]) = 1;
  BYTE12(__src[5]) = 1;
  *(&__src[3] + 4) = 0;
  *(&__src[4] + 12) = 0;
  *(&__src[7] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[14] + 1) = 0u;
  *(&__src[13] + 1) = 0u;
  *(&__src[21] + 4) = 0u;
  *(&__src[24] + 8) = 0u;
  *(&__src[25] + 8) = 0u;
  *(&__src[27] + 4) = *&v37[3];
  BYTE12(__src[27]) = 1;
  BYTE4(__src[28]) = 1;
  LOBYTE(__src[29]) = 1;
  *(&__src[39] + 8) = 0u;
  *(&__src[41] + 4) = 0u;
  *(&__src[42] + 4) = 0u;
  *(&__src[43] + 5) = 0u;
  *(&__src[48] + 12) = 0;
  *(&__src[46] + 12) = 0u;
  *(&__src[47] + 12) = 0u;
  *(&__src[49] + 8) = 0u;
  HIBYTE(__src[50]) = v36;
  BYTE4(__src[51]) = 1;
  BYTE12(__src[51]) = 1;
  BYTE4(__src[52]) = 1;
  LOBYTE(__src[53]) = 1;
  BYTE8(__src[53]) = 1;
  BYTE8(__src[54]) = 1;
  HIDWORD(__src[54]) = *&v34[3];
  LOBYTE(__src[56]) = 1;
  LOBYTE(__src[57]) = 1;
  BYTE8(__src[57]) = 1;
  LOBYTE(__src[58]) = 1;
  BYTE8(__src[58]) = 1;
  BYTE8(__src[59]) = 1;
  BYTE8(__src[60]) = 1;
  BYTE8(__src[61]) = 1;
  BYTE8(__src[62]) = 1;
  HIDWORD(__src[62]) = *&v33[3];
  __dst[0] = 1;
  LOBYTE(__src[7]) = 1;
  BYTE8(__src[8]) = 1;
  LOBYTE(__src[10]) = 1;
  BYTE8(__src[11]) = 1;
  LOBYTE(__src[13]) = 1;
  BYTE1(__src[15]) = 1;
  BYTE8(__src[15]) = 1;
  LOBYTE(__src[16]) = 1;
  BYTE8(__src[16]) = 1;
  LOBYTE(__src[17]) = 1;
  BYTE8(__src[17]) = 1;
  LOBYTE(__src[18]) = 1;
  BYTE8(__src[18]) = 1;
  LOBYTE(__src[21]) = 1;
  BYTE4(__src[22]) = 1;
  LOBYTE(__src[23]) = 1;
  LOBYTE(__src[24]) = 1;
  BYTE8(__src[26]) = 1;
  LOBYTE(__src[27]) = 1;
  LOBYTE(__src[30]) = 1;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[32]) = 1;
  LOBYTE(__src[33]) = 1;
  LOBYTE(__src[34]) = 1;
  BYTE8(__src[34]) = 1;
  LOBYTE(__src[35]) = 1;
  BYTE8(__src[35]) = 1;
  LOBYTE(__src[36]) = 1;
  BYTE8(__src[36]) = 1;
  BYTE4(__src[39]) = 1;
  LOBYTE(__src[41]) = 1;
  BYTE4(__src[43]) = 1;
  BYTE5(__src[44]) = 1;
  BYTE12(__src[44]) = 1;
  BYTE8(__src[45]) = 1;
  BYTE8(__src[46]) = 1;
  BYTE4(__src[49]) = 1;
  BYTE12(__src[50]) = 1;
  BYTE4(__src[55]) = 1;
  BYTE8(__src[64]) = 1;
  BYTE8(__src[65]) = 1;
  BYTE4(__src[67]) = 1;
  LOBYTE(__src[68]) = 1;
  LOBYTE(__src[69]) = 1;
  LOBYTE(__src[70]) = 1;
  LOBYTE(__src[71]) = 1;
  LOBYTE(__src[72]) = 1;
  BYTE8(__src[72]) = 1;
  memset(__src, 0, 20);
  *(&__src[1] + 1) = 0;
  DWORD1(__src[2]) = 0;
  HIDWORD(__src[2]) = 0;
  *&__src[4] = 0;
  DWORD2(__src[5]) = 0;
  __src[6] = 0u;
  __src[9] = 0u;
  __src[12] = 0u;
  DWORD1(__src[15]) = 0;
  HIDWORD(__src[15]) = 0;
  DWORD1(__src[16]) = 0;
  HIDWORD(__src[16]) = 0;
  DWORD1(__src[17]) = 0;
  HIDWORD(__src[17]) = 0;
  DWORD1(__src[18]) = 0;
  __src[19] = xmmword_1CF9F4E20;
  __src[20] = 0u;
  *(&__src[22] + 1) = 0;
  *(&__src[23] + 1) = 0;
  HIDWORD(__src[26]) = 0;
  LODWORD(__src[28]) = 0;
  *(&__src[28] + 1) = 0;
  *(&__src[29] + 1) = 0;
  *(&__src[30] + 1) = 0;
  *(&__src[31] + 1) = 0;
  *(&__src[32] + 1) = 0;
  *(&__src[33] + 1) = 0;
  DWORD1(__src[34]) = 0;
  HIDWORD(__src[34]) = 0;
  DWORD1(__src[35]) = 0;
  HIDWORD(__src[35]) = 0;
  DWORD1(__src[36]) = 0;
  memset(&__src[37], 0, 36);
  *(&__src[40] + 1) = 0;
  DWORD2(__src[44]) = 0;
  *&__src[45] = 0;
  *&__src[46] = 0;
  DWORD2(__src[50]) = 0;
  LODWORD(__src[51]) = 0;
  DWORD2(__src[51]) = 0;
  LODWORD(__src[52]) = 0;
  *(&__src[52] + 1) = 0;
  DWORD1(__src[53]) = 0;
  *&__src[54] = 0;
  LODWORD(__src[55]) = 0;
  *(&__src[55] + 1) = 0;
  *(&__src[56] + 1) = 0;
  DWORD1(__src[57]) = 0;
  HIDWORD(__src[57]) = 0;
  DWORD1(__src[58]) = 0;
  *&__src[59] = 0;
  *&__src[60] = 0;
  *&__src[61] = 0;
  *&__src[62] = 0;
  memset(&__src[63], 0, 24);
  *&__src[65] = 0;
  memset(&__src[66], 0, 20);
  *(&__src[67] + 1) = 0;
  *(&__src[68] + 1) = 0;
  *(&__src[69] + 1) = 0;
  *(&__src[70] + 1) = 0;
  *(&__src[71] + 1) = 0;
  DWORD1(__src[72]) = 0;
  sub_1CF65DD54(v9);
  if (!v31)
  {
    memcpy(__dst, __src, 0x489uLL);
    MEMORY[0x1D386CDC0](v9, -1, -1);
    result = memcpy(a7, __dst, 0x489uLL);
    goto LABEL_20;
  }

  memcpy(__dst, __src, 0x489uLL);
  sub_1CF19BF48(__dst);
LABEL_18:
  result = MEMORY[0x1D386CDC0](v9, -1, -1);
LABEL_20:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1CF65E5E4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    sub_1CF65ED6C(v18);
    return memcpy(a1, v18, 0x489uLL);
  }

  *(&__src[27] + 1) = *v17;
  *(&__src[50] + 13) = v15;
  *(&__src[54] + 9) = *v14;
  *(&__src[62] + 9) = *v13;
  BYTE4(__src[1]) = 1;
  LOBYTE(__src[2]) = 1;
  BYTE8(__src[2]) = 1;
  LOBYTE(__src[3]) = 1;
  BYTE12(__src[3]) = 1;
  BYTE8(__src[4]) = 1;
  BYTE4(__src[5]) = 1;
  BYTE12(__src[5]) = 1;
  *(&__src[21] + 4) = 0u;
  *(&__src[24] + 8) = 0u;
  *(&__src[25] + 8) = 0u;
  *(&__src[27] + 4) = *&v17[3];
  BYTE12(__src[27]) = 1;
  BYTE4(__src[28]) = 1;
  LOBYTE(__src[29]) = 1;
  *(&__src[39] + 8) = 0u;
  *(&__src[41] + 4) = 0u;
  *(&__src[42] + 4) = 0u;
  *(&__src[43] + 5) = 0u;
  *(&__src[48] + 12) = 0;
  *(&__src[46] + 12) = 0u;
  *(&__src[47] + 12) = 0u;
  v12 = 1;
  v11 = 1;
  v10 = 1;
  v9 = 1;
  v8 = 1;
  v7 = 1;
  __dst[1296] = 1;
  *(&__src[3] + 4) = 0;
  *(&__src[4] + 12) = 0;
  *(&__src[7] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[14] + 1) = 0u;
  *(&__src[13] + 1) = 0u;
  *(&__src[49] + 8) = 0u;
  HIBYTE(__src[50]) = v16;
  BYTE4(__src[51]) = 1;
  BYTE12(__src[51]) = 1;
  BYTE4(__src[52]) = 1;
  LOBYTE(__src[53]) = 1;
  BYTE8(__src[53]) = 1;
  BYTE8(__src[54]) = 1;
  HIDWORD(__src[54]) = *&v14[3];
  LOBYTE(__src[56]) = 1;
  LOBYTE(__src[57]) = 1;
  BYTE8(__src[57]) = 1;
  LOBYTE(__src[58]) = 1;
  BYTE8(__src[58]) = 1;
  BYTE8(__src[59]) = 1;
  BYTE8(__src[60]) = 1;
  BYTE8(__src[61]) = 1;
  BYTE8(__src[62]) = 1;
  HIDWORD(__src[62]) = *&v13[3];
  __dst[1204] = 1;
  __dst[1200] = 1;
  __dst[1192] = 1;
  __dst[1184] = 1;
  __dst[1176] = 1;
  __dst[1288] = 1;
  __dst[1280] = 1;
  __dst[1272] = 1;
  __dst[1268] = 1;
  __dst[1264] = 1;
  __dst[1256] = 1;
  __dst[1248] = 1;
  __dst[1240] = 1;
  __dst[1232] = 1;
  __dst[1224] = 1;
  __dst[1216] = 1;
  __dst[1208] = 1;
  LOBYTE(v18[0]) = 1;
  __dst[0] = 1;
  __dst[1352] = 1;
  __dst[1344] = 1;
  __dst[1336] = 1;
  __dst[1328] = 1;
  __dst[1320] = 1;
  __dst[1312] = 1;
  __dst[1304] = 1;
  LOBYTE(__src[7]) = 1;
  BYTE8(__src[8]) = 1;
  LOBYTE(__src[10]) = 1;
  BYTE8(__src[11]) = 1;
  LOBYTE(__src[13]) = 1;
  BYTE1(__src[15]) = 1;
  BYTE8(__src[15]) = 1;
  LOBYTE(__src[16]) = 1;
  BYTE8(__src[16]) = 1;
  LOBYTE(__src[17]) = 1;
  BYTE8(__src[17]) = 1;
  LOBYTE(__src[18]) = 1;
  BYTE8(__src[18]) = 1;
  LOBYTE(__src[21]) = 1;
  BYTE4(__src[22]) = 1;
  LOBYTE(__src[23]) = 1;
  LOBYTE(__src[24]) = 1;
  BYTE8(__src[26]) = 1;
  LOBYTE(__src[27]) = 1;
  LOBYTE(__src[30]) = 1;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[32]) = 1;
  LOBYTE(__src[33]) = 1;
  LOBYTE(__src[34]) = 1;
  BYTE8(__src[34]) = 1;
  LOBYTE(__src[35]) = 1;
  BYTE8(__src[35]) = 1;
  LOBYTE(__src[36]) = 1;
  BYTE8(__src[36]) = 1;
  BYTE4(__src[39]) = 1;
  LOBYTE(__src[41]) = 1;
  BYTE4(__src[43]) = 1;
  BYTE5(__src[44]) = 1;
  BYTE12(__src[44]) = 1;
  BYTE8(__src[45]) = 1;
  BYTE8(__src[46]) = 1;
  BYTE4(__src[49]) = 1;
  BYTE12(__src[50]) = 1;
  BYTE4(__src[55]) = 1;
  BYTE8(__src[64]) = 1;
  BYTE8(__src[65]) = 1;
  BYTE4(__src[67]) = 1;
  LOBYTE(__src[68]) = 1;
  LOBYTE(__src[69]) = 1;
  LOBYTE(__src[70]) = 1;
  LOBYTE(__src[71]) = 1;
  LOBYTE(__src[72]) = 1;
  memset(__src, 0, 20);
  *(&__src[1] + 1) = 0;
  DWORD1(__src[2]) = 0;
  HIDWORD(__src[2]) = 0;
  *&__src[4] = 0;
  DWORD2(__src[5]) = 0;
  __src[6] = 0u;
  __src[9] = 0u;
  __src[12] = 0u;
  DWORD1(__src[15]) = 0;
  HIDWORD(__src[15]) = 0;
  DWORD1(__src[16]) = 0;
  HIDWORD(__src[16]) = 0;
  DWORD1(__src[17]) = 0;
  HIDWORD(__src[17]) = 0;
  DWORD1(__src[18]) = 0;
  __src[19] = xmmword_1CF9F4E20;
  __src[20] = 0u;
  *(&__src[22] + 1) = 0;
  *(&__src[23] + 1) = 0;
  HIDWORD(__src[26]) = 0;
  LODWORD(__src[28]) = 0;
  *(&__src[28] + 1) = 0;
  *(&__src[29] + 1) = 0;
  *(&__src[30] + 1) = 0;
  *(&__src[31] + 1) = 0;
  *(&__src[32] + 1) = 0;
  *(&__src[33] + 1) = 0;
  DWORD1(__src[34]) = 0;
  HIDWORD(__src[34]) = 0;
  DWORD1(__src[35]) = 0;
  HIDWORD(__src[35]) = 0;
  DWORD1(__src[36]) = 0;
  memset(&__src[37], 0, 36);
  *(&__src[40] + 1) = 0;
  DWORD2(__src[44]) = 0;
  *&__src[45] = 0;
  *&__src[46] = 0;
  DWORD2(__src[50]) = 0;
  LODWORD(__src[51]) = 0;
  DWORD2(__src[51]) = 0;
  LODWORD(__src[52]) = 0;
  *(&__src[52] + 1) = 0;
  DWORD1(__src[53]) = 0;
  *&__src[54] = 0;
  LODWORD(__src[55]) = 0;
  *(&__src[55] + 1) = 0;
  *(&__src[56] + 1) = 0;
  DWORD1(__src[57]) = 0;
  HIDWORD(__src[57]) = 0;
  DWORD1(__src[58]) = 0;
  *&__src[59] = 0;
  *&__src[60] = 0;
  *&__src[61] = 0;
  *&__src[62] = 0;
  memset(&__src[63], 0, 24);
  *&__src[65] = 0;
  memset(&__src[66], 0, 20);
  *(&__src[67] + 1) = 0;
  *(&__src[68] + 1) = 0;
  *(&__src[69] + 1) = 0;
  *(&__src[70] + 1) = 0;
  *(&__src[71] + 1) = 0;
  DWORD1(__src[72]) = 0;
  BYTE8(__src[72]) = 1;
  result = sub_1CF65DD54(*(v1 + 8));
  *(v1 + 8) = result;
  if (!__OFSUB__(v3, 1))
  {
    *(v1 + 16) = v3 - 1;
    memcpy(__dst, __src, 0x489uLL);
    nullsub_1(__dst);
    memcpy(v18, __dst, 0x489uLL);
    return memcpy(a1, v18, 0x489uLL);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF65EBCC()
{
  MEMORY[0x1D386CDC0](*(v0 + 24), -1, -1);

  return swift_deallocClassInstance();
}

unint64_t sub_1CF65EC34()
{
  result = qword_1EC4C1EE8;
  if (!qword_1EC4C1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1EE8);
  }

  return result;
}

void sub_1CF65EC88(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v2 = *(*v1 + 24);
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1CF65ECA8()
{
  v1 = sub_1CF65F7F4(*v0);

  return v1;
}

void *sub_1CF65ED80@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void *a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = a5;
  v11 = a1;
  if (!a2)
  {
    v12 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    goto LABEL_29;
  }

  v12 = a2 | 0x80000000;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((a5 & 0x80000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = (a1 & 0x180000 | a5) != 0;
  v14 = sub_1CF65D27C(a1, &qword_1EDEA7DF8, &qword_1EDEBB940, sub_1CF7D52AC);
  v15 = v14 + 24;
  if (__OFADD__(v14, 24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = sub_1CF65D27C(a2, &qword_1EC4BCD30, &qword_1EC4EBD40, sub_1CF7D52AC);
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = sub_1CF65D27C(a3, &qword_1EC4BCD40, &qword_1EC4EBD48, sub_1CF7D52AC);
  v17 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = sub_1CF65D27C(a4, &qword_1EDEA7EA0, &qword_1EDEBB958, sub_1CF7D52AC);
  v17 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v17)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = sub_1CF65D27C(v7, &qword_1EDEA7D98, &qword_1EDEBB928, sub_1CF7D52AC);
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v33[0] = 5;
  v33[1] = v11 | 0x80000000;
  v33[2] = v12;
  v33[3] = a3;
  v33[4] = a4;
  v33[5] = v7;
  v7 = swift_slowAlloc();
  sub_1CF9E5A18();
  v25 = sub_1CF9E6978();

  v26 = getattrlist((v25 + 32), v33, v7, v24, (32 * v13) | ((a6 & 1) == 0));

  if (v26 < 0)
  {
LABEL_17:
    v27 = MEMORY[0x1D38683F0](a1);
    *&__src[0] = 28;
    *(__src + 8) = 0u;
    *(&__src[1] + 8) = 0u;
    BYTE8(__src[2]) = 19;
    sub_1CF19BBE4(v27, __src);
    sub_1CF1969CC(__src);
    swift_willThrow();
    goto LABEL_18;
  }

  *(&__src[27] + 1) = *v38;
  *(&__src[50] + 13) = v36;
  *(&__src[54] + 9) = *v35;
  *(&__src[62] + 9) = *v34;
  BYTE4(__src[1]) = 1;
  LOBYTE(__src[2]) = 1;
  BYTE8(__src[2]) = 1;
  LOBYTE(__src[3]) = 1;
  BYTE12(__src[3]) = 1;
  BYTE8(__src[4]) = 1;
  BYTE4(__src[5]) = 1;
  BYTE12(__src[5]) = 1;
  *(&__src[3] + 4) = 0;
  *(&__src[4] + 12) = 0;
  *(&__src[7] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[14] + 1) = 0u;
  *(&__src[13] + 1) = 0u;
  *(&__src[21] + 4) = 0u;
  *(&__src[24] + 8) = 0u;
  *(&__src[25] + 8) = 0u;
  *(&__src[27] + 4) = *&v38[3];
  BYTE12(__src[27]) = 1;
  BYTE4(__src[28]) = 1;
  LOBYTE(__src[29]) = 1;
  *(&__src[39] + 8) = 0u;
  *(&__src[41] + 4) = 0u;
  *(&__src[42] + 4) = 0u;
  *(&__src[43] + 5) = 0u;
  *(&__src[48] + 12) = 0;
  *(&__src[46] + 12) = 0u;
  *(&__src[47] + 12) = 0u;
  *(&__src[49] + 8) = 0u;
  HIBYTE(__src[50]) = v37;
  BYTE4(__src[51]) = 1;
  BYTE12(__src[51]) = 1;
  BYTE4(__src[52]) = 1;
  LOBYTE(__src[53]) = 1;
  BYTE8(__src[53]) = 1;
  BYTE8(__src[54]) = 1;
  HIDWORD(__src[54]) = *&v35[3];
  LOBYTE(__src[56]) = 1;
  LOBYTE(__src[57]) = 1;
  BYTE8(__src[57]) = 1;
  LOBYTE(__src[58]) = 1;
  BYTE8(__src[58]) = 1;
  BYTE8(__src[59]) = 1;
  BYTE8(__src[60]) = 1;
  BYTE8(__src[61]) = 1;
  BYTE8(__src[62]) = 1;
  HIDWORD(__src[62]) = *&v34[3];
  __dst[0] = 1;
  LOBYTE(__src[7]) = 1;
  BYTE8(__src[8]) = 1;
  LOBYTE(__src[10]) = 1;
  BYTE8(__src[11]) = 1;
  LOBYTE(__src[13]) = 1;
  BYTE1(__src[15]) = 1;
  BYTE8(__src[15]) = 1;
  LOBYTE(__src[16]) = 1;
  BYTE8(__src[16]) = 1;
  LOBYTE(__src[17]) = 1;
  BYTE8(__src[17]) = 1;
  LOBYTE(__src[18]) = 1;
  BYTE8(__src[18]) = 1;
  LOBYTE(__src[21]) = 1;
  BYTE4(__src[22]) = 1;
  LOBYTE(__src[23]) = 1;
  LOBYTE(__src[24]) = 1;
  BYTE8(__src[26]) = 1;
  LOBYTE(__src[27]) = 1;
  LOBYTE(__src[30]) = 1;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[32]) = 1;
  LOBYTE(__src[33]) = 1;
  LOBYTE(__src[34]) = 1;
  BYTE8(__src[34]) = 1;
  LOBYTE(__src[35]) = 1;
  BYTE8(__src[35]) = 1;
  LOBYTE(__src[36]) = 1;
  BYTE8(__src[36]) = 1;
  BYTE4(__src[39]) = 1;
  LOBYTE(__src[41]) = 1;
  BYTE4(__src[43]) = 1;
  BYTE5(__src[44]) = 1;
  BYTE12(__src[44]) = 1;
  BYTE8(__src[45]) = 1;
  BYTE8(__src[46]) = 1;
  BYTE4(__src[49]) = 1;
  BYTE12(__src[50]) = 1;
  BYTE4(__src[55]) = 1;
  BYTE8(__src[64]) = 1;
  BYTE8(__src[65]) = 1;
  BYTE4(__src[67]) = 1;
  LOBYTE(__src[68]) = 1;
  LOBYTE(__src[69]) = 1;
  LOBYTE(__src[70]) = 1;
  LOBYTE(__src[71]) = 1;
  LOBYTE(__src[72]) = 1;
  BYTE8(__src[72]) = 1;
  memset(__src, 0, 20);
  *(&__src[1] + 1) = 0;
  DWORD1(__src[2]) = 0;
  HIDWORD(__src[2]) = 0;
  *&__src[4] = 0;
  DWORD2(__src[5]) = 0;
  __src[6] = 0u;
  __src[9] = 0u;
  __src[12] = 0u;
  DWORD1(__src[15]) = 0;
  HIDWORD(__src[15]) = 0;
  DWORD1(__src[16]) = 0;
  HIDWORD(__src[16]) = 0;
  DWORD1(__src[17]) = 0;
  HIDWORD(__src[17]) = 0;
  DWORD1(__src[18]) = 0;
  __src[19] = xmmword_1CF9F4E20;
  __src[20] = 0u;
  *(&__src[22] + 1) = 0;
  *(&__src[23] + 1) = 0;
  HIDWORD(__src[26]) = 0;
  LODWORD(__src[28]) = 0;
  *(&__src[28] + 1) = 0;
  *(&__src[29] + 1) = 0;
  *(&__src[30] + 1) = 0;
  *(&__src[31] + 1) = 0;
  *(&__src[32] + 1) = 0;
  *(&__src[33] + 1) = 0;
  DWORD1(__src[34]) = 0;
  HIDWORD(__src[34]) = 0;
  DWORD1(__src[35]) = 0;
  HIDWORD(__src[35]) = 0;
  DWORD1(__src[36]) = 0;
  memset(&__src[37], 0, 36);
  *(&__src[40] + 1) = 0;
  DWORD2(__src[44]) = 0;
  *&__src[45] = 0;
  *&__src[46] = 0;
  DWORD2(__src[50]) = 0;
  LODWORD(__src[51]) = 0;
  DWORD2(__src[51]) = 0;
  LODWORD(__src[52]) = 0;
  *(&__src[52] + 1) = 0;
  DWORD1(__src[53]) = 0;
  *&__src[54] = 0;
  LODWORD(__src[55]) = 0;
  *(&__src[55] + 1) = 0;
  *(&__src[56] + 1) = 0;
  DWORD1(__src[57]) = 0;
  HIDWORD(__src[57]) = 0;
  DWORD1(__src[58]) = 0;
  *&__src[59] = 0;
  *&__src[60] = 0;
  *&__src[61] = 0;
  *&__src[62] = 0;
  memset(&__src[63], 0, 24);
  *&__src[65] = 0;
  memset(&__src[66], 0, 20);
  *(&__src[67] + 1) = 0;
  *(&__src[68] + 1) = 0;
  *(&__src[69] + 1) = 0;
  *(&__src[70] + 1) = 0;
  *(&__src[71] + 1) = 0;
  DWORD1(__src[72]) = 0;
  sub_1CF65DD54(v7);
  if (!v31)
  {
    memcpy(__dst, __src, 0x489uLL);
    MEMORY[0x1D386CDC0](v7, -1, -1);
    result = memcpy(a7, __dst, 0x489uLL);
    goto LABEL_20;
  }

  memcpy(__dst, __src, 0x489uLL);
  sub_1CF19BF48(__dst);
LABEL_18:
  result = MEMORY[0x1D386CDC0](v7, -1, -1);
LABEL_20:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF65F598(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1CF65F65C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v6 = result;
    v7 = 0;
    v8 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v7)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 29;
        }

        v15 = v14 >> 2;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 2);
        v16 = (v12 + 4);
        v17 = v3[3] >> 1;
        if (v3[2])
        {
          if (v12 != v3 || v16 >= v3 + 4 * v17 + 32)
          {
            memmove(v12 + 4, v3 + 4, 4 * v17);
          }

          v3[2] = 0;
        }

        v8 = (v16 + 4 * v17);
        v7 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v3 = v12;
      }

      v19 = __OFSUB__(v7--, 1);
      if (v19)
      {
        break;
      }

      v20 = v6 & -v6;
      *v8++ = v20;
      v21 = v6 == v20;
      v6 ^= v20;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = 0;
LABEL_24:
  v22 = v3[3];
  if (v22 < 2)
  {
    return v3;
  }

  v23 = v22 >> 1;
  v19 = __OFSUB__(v23, v7);
  v24 = v23 - v7;
  if (!v19)
  {
    v3[2] = v24;
    return v3;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF65F7F4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    if (v3 <= 0)
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1EF0, &qword_1CFA0E430);
      v4 = swift_allocObject();
      v5 = _swift_stdlib_malloc_size(v4);
      *(v4 + 2) = v3;
      *(v4 + 3) = 2 * ((v5 - 32) / 1168);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v4 + 3);

  v8 = *(v2 + 24);
  v25 = v2;
  v26 = v8;
  v27 = v3;
  if (v3 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v9 = v4 + 32;
  v10 = v6 >> 1;
  if (v3)
  {
    v10 -= v3;

    while (1)
    {
      sub_1CF65E5E4(__src);
      memcpy(v31, __src, 0x489uLL);
      result = sub_1CF65F598(v31);
      if (result == 1)
      {
        goto LABEL_39;
      }

      memmove(v9, __src, 0x489uLL);
      v9 += 1168;
      if (!--v3)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:
  sub_1CF65E5E4(v28);
  memcpy(v24, v28, 0x489uLL);
  memcpy(__dst, v28, 0x489uLL);
  result = sub_1CF65F598(__dst);
  if (result != 1)
  {
    while (1)
    {
      if (!v10)
      {
        v11 = *(v4 + 3);
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1EF0, &qword_1CFA0E430);
        v14 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v14) - 32) / 1168;
        *(v14 + 2) = v13;
        *(v14 + 3) = 2 * v15;
        v16 = (v14 + 32);
        v17 = *(v4 + 3) >> 1;
        v18 = 1168 * v17;
        if (*(v4 + 2))
        {
          if (v14 != v4 || v16 >= &v4[v18 + 32])
          {
            memmove(v14 + 32, v4 + 32, v18);
          }

          *(v4 + 2) = 0;
        }

        v9 = (v16 + v18);
        v10 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v4 = v14;
      }

      v20 = __OFSUB__(v10--, 1);
      if (v20)
      {
        break;
      }

      memmove(v9, v24, 0x489uLL);
      v9 += 1168;
      sub_1CF65E5E4(v28);
      memcpy(v24, v28, 0x489uLL);
      memcpy(__dst, v28, 0x489uLL);
      result = sub_1CF65F598(__dst);
      if (result == 1)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:

  v21 = *(v4 + 3);
  if (v21 < 2)
  {
    return v4;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v10);
  v23 = v22 - v10;
  if (!v20)
  {
    *(v4 + 2) = v23;
    return v4;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1CF65FC00(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v6 = result;
    v7 = 0;
    v8 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v7)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 25;
        }

        v15 = v14 >> 3;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 3);
        v16 = (v12 + 4);
        v17 = v3[3] >> 1;
        if (v3[2])
        {
          if (v12 != v3 || v16 >= &v3[v17 + 4])
          {
            memmove(v12 + 4, v3 + 4, 8 * v17);
          }

          v3[2] = 0;
        }

        v8 = (v16 + 8 * v17);
        v7 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v3 = v12;
      }

      v19 = __OFSUB__(v7--, 1);
      if (v19)
      {
        break;
      }

      v20 = v6 & -v6;
      *v8++ = v20;
      v21 = v6 == v20;
      v6 ^= v20;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = 0;
LABEL_24:
  v22 = v3[3];
  if (v22 < 2)
  {
    return v3;
  }

  v23 = v22 >> 1;
  v19 = __OFSUB__(v23, v7);
  v24 = v23 - v7;
  if (!v19)
  {
    v3[2] = v24;
    return v3;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF65FD5C(unint64_t a1)
{
  type metadata accessor for BrokenInvariants(0);
  sub_1CF660144(&qword_1EDEA36C0, type metadata accessor for BrokenInvariants);
  result = sub_1CF9E7798();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((result & 1) == 0)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v6 = __clz(__rbit64(a1));
      if (v6 >= 0x40)
      {
        v7 = 0;
      }

      else
      {
        v7 = 1 << v6;
      }

      result = sub_1CF9E7798();
      if ((result & 1) == 0)
      {
        a1 &= ~v7;
      }

      if (!v4)
      {
        v8 = v3[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1F50, &qword_1CFA0E4A0);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          v17 = v3 + 4;
          if (v11 != v3 || v15 >= v17 + 8 * v16)
          {
            memmove(v11 + 4, v17, 8 * v16);
          }

          v3[2] = 0;
        }

        v5 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v5++ = v7;
      result = sub_1CF9E7798();
      if (result)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v4);
  v21 = v20 - v4;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1CF65FF50(unint64_t a1)
{
  type metadata accessor for NSFileProviderItemFields(0);
  sub_1CF660144(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields);
  result = sub_1CF9E7798();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((result & 1) == 0)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v6 = __clz(__rbit64(a1));
      if (v6 >= 0x40)
      {
        v7 = 0;
      }

      else
      {
        v7 = 1 << v6;
      }

      result = sub_1CF9E7798();
      if ((result & 1) == 0)
      {
        a1 &= ~v7;
      }

      if (!v4)
      {
        v8 = v3[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1F48, &unk_1CFA0E490);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          v17 = v3 + 4;
          if (v11 != v3 || v15 >= v17 + 8 * v16)
          {
            memmove(v11 + 4, v17, 8 * v16);
          }

          v3[2] = 0;
        }

        v5 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v5++ = v7;
      result = sub_1CF9E7798();
      if (result)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v4);
  v21 = v20 - v4;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1CF660144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF6601AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 24;
      v8 = objc_allocWithZone(MEMORY[0x1E6967428]);

      v9 = sub_1CF9E6888();
      [v8 initWithLabel:v9 color:v7];

      sub_1CF9E7A18();
      v10 = *(v11 + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1CF6602A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_1CF9E6888();
  v5 = [v4 fp_obfuscatedFilename];

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  return v6;
}

uint64_t sub_1CF66035C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2008, &qword_1CFA0E800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661660();

  sub_1CF9E82A8();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  sub_1CF1E60E8();
  v11 = v13[1];
  sub_1CF9E7F08();

  if (!v11)
  {
    LOBYTE(v14) = 1;
    sub_1CF9E7F38();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1CF6604F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FF8, &qword_1CFA0E7F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661660();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_1CF1E613C();
  sub_1CF9E7D88();
  v12 = v15[0];
  v11 = v15[1];
  LOBYTE(v15[0]) = 1;
  v13 = sub_1CF9E7DB8();
  (*(v6 + 8))(v9, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CF6606D0()
{
  if (*v0)
  {
    result = 0x726F6C6F63;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1CF660700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CF6607D8(uint64_t a1)
{
  v2 = sub_1CF661660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF660814(uint64_t a1)
{
  v2 = sub_1CF661660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF660888(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*result)
    {
      v3 = *(result + 8);
      v4 = *result;
      v5 = sub_1CF9E6A58();
      v7 = v6;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v3;
      }

      swift_beginAccess();
      v9 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1CF1F65BC(0, *(v9 + 2) + 1, 1, v9);
        *(a2 + 16) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1CF1F65BC((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[24 * v12];
      *(v13 + 4) = v5;
      *(v13 + 5) = v7;
      v13[48] = v8;
      *(a2 + 16) = v9;
      swift_endAccess();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF66099C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;

      v7 = sub_1CF9E6888();
      v8 = [v7 fp_obfuscatedFilename];

      v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;

      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v12 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v12);

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1CEFE95CC((v13 > 1), v14 + 1, 1);
      }

      v3 += 24;
      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v11;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v16 = sub_1CF9E67D8();

  return v16;
}

uint64_t sub_1CF660B5C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FC8, &qword_1CFA0E610);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661334();
  sub_1CF9E82A8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FB0, &qword_1CFA0E608);
  sub_1CF6613DC(&qword_1EC4C1FD0, sub_1CF661454);
  sub_1CF9E7F08();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1CF660CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF660D80(uint64_t a1)
{
  v2 = sub_1CF661334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF660DBC(uint64_t a1)
{
  v2 = sub_1CF661334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1CF660DF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF661180(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1CF660E54(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = sub_1CEFE7394(*a1, v2);
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v8 == 12565487 && v9 == 0xA300000000000000)
  {
  }

  else
  {
    v11 = sub_1CF9E8048();

    if ((v11 & 1) == 0)
    {
LABEL_7:

      goto LABEL_10;
    }
  }

  v12 = sub_1CF9E69E8();
  v13 = sub_1CF025150(v12, v3, v2);
  v3 = MEMORY[0x1D3868C10](v13);
  v2 = v14;

LABEL_10:
  v15 = sub_1CEFE7394(v6, v5);
  if (!v16)
  {
    goto LABEL_16;
  }

  if (v15 == 12565487 && v16 == 0xA300000000000000)
  {

LABEL_19:
    v19 = sub_1CF9E69E8();
    v20 = sub_1CF025150(v19, v6, v5);
    v21 = MEMORY[0x1D3868C10](v20);
    v5 = v22;

    if (v3 != v21)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v18 = sub_1CF9E8048();

  if (v18)
  {
    goto LABEL_19;
  }

LABEL_16:

  if (v3 != v6)
  {
LABEL_22:
    v23 = sub_1CF9E8048();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }

    return v4 == v7;
  }

LABEL_20:
  if (v2 != v5)
  {
    goto LABEL_22;
  }

  return v4 == v7;
}

uint64_t sub_1CF661030(uint64_t a1, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[6] = a1;
  v9[7] = a2;
  v10 = a3;
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v3 + 16);
  v9[4] = sub_1CF6614A8;
  v9[5] = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CF1AD9FC;
  v9[3] = &block_descriptor_33;
  v5 = _Block_copy(v9);

  fpfs_deserialize_tags();
  _Block_release(v5);
  swift_beginAccess();
  v6 = *v4;
  if (*(v6 + 16))
  {
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void *sub_1CF661180(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FA0, &qword_1CFA0E600);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661334();
  sub_1CF9E8298();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FB0, &qword_1CFA0E608);
    sub_1CF6613DC(&qword_1EC4C1FB8, sub_1CF661388);
    sub_1CF9E7D88();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1CF661334()
{
  result = qword_1EC4C1FA8;
  if (!qword_1EC4C1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FA8);
  }

  return result;
}

unint64_t sub_1CF661388()
{
  result = qword_1EC4C1FC0;
  if (!qword_1EC4C1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FC0);
  }

  return result;
}

uint64_t sub_1CF6613DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C1FB0, &qword_1CFA0E608);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF661454()
{
  result = qword_1EC4C1FD8;
  if (!qword_1EC4C1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FD8);
  }

  return result;
}

uint64_t sub_1CF6614C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1CF661508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF66155C()
{
  result = qword_1EC4C1FE0;
  if (!qword_1EC4C1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FE0);
  }

  return result;
}

unint64_t sub_1CF6615B4()
{
  result = qword_1EC4C1FE8;
  if (!qword_1EC4C1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FE8);
  }

  return result;
}

unint64_t sub_1CF66160C()
{
  result = qword_1EC4C1FF0;
  if (!qword_1EC4C1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FF0);
  }

  return result;
}

unint64_t sub_1CF661660()
{
  result = qword_1EC4C2000;
  if (!qword_1EC4C2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2000);
  }

  return result;
}

unint64_t sub_1CF6616C8()
{
  result = qword_1EC4C2010;
  if (!qword_1EC4C2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2010);
  }

  return result;
}

unint64_t sub_1CF661720()
{
  result = qword_1EC4C2018;
  if (!qword_1EC4C2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2018);
  }

  return result;
}

unint64_t sub_1CF661778()
{
  result = qword_1EC4C2020;
  if (!qword_1EC4C2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2020);
  }

  return result;
}

BOOL sub_1CF6618A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 < v2)
  {
    return 1;
  }

  return v2 == v3 && *(a1 + 24) < *(a2 + 24);
}

uint64_t sub_1CF661928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1CF9E77C8();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    result = sub_1CF663770(result, *(a1 + 36), a1, &v8);
    v6 = v8;
    v7 = v9;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

void *sub_1CF6619B0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1CF9E77C8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1CF663658(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1CF661A30(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_1CF9E5B28();
  v4 = 0;
  return v3 | (v4 << 8);
}

void *sub_1CF661AB8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1CF9E77C8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1CF6636EC(&v5, v3, *(a1 + 36), 0, a1);
  }
}

unint64_t sub_1CF661B34(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = result;
  v3 = sub_1CF9E7818();
  result = v2;
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1D3869C30](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1CF661BE8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 64);
    v6 = *(a1 + 96);
    v12 = *(a1 + 80);
    v5 = v12;
    v13 = v6;
    v14 = *(a1 + 112);
    v8 = *(a1 + 48);
    v11[0] = *(a1 + 32);
    v7 = v11[0];
    v11[1] = v8;
    v11[2] = v4;
    *(a4 + 80) = v14;
    *(a4 + 32) = v4;
    *(a4 + 48) = v5;
    *(a4 + 64) = v6;
    *a4 = v7;
    *(a4 + 16) = v8;
    sub_1CEFCCBDC(v11, v10, a2, a3);
  }

  else
  {
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = 1;
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 64) = 0;
  }

  return result;
}

uint64_t Filename.fileSystemRepresentation.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1CEFE4E68();
  return sub_1CF9E7668();
}

uint64_t static Filename.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = sub_1CEFE7394(*a1, v2);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (v6 == 12565487 && v7 == 0xA300000000000000)
  {
  }

  else
  {
    v9 = sub_1CF9E8048();

    if ((v9 & 1) == 0)
    {
LABEL_7:

      goto LABEL_10;
    }
  }

  v10 = sub_1CF9E69E8();
  v11 = sub_1CF025150(v10, v3, v2);
  v3 = MEMORY[0x1D3868C10](v11);
  v2 = v12;

LABEL_10:
  v13 = sub_1CEFE7394(v5, v4);
  if (!v14)
  {
    goto LABEL_16;
  }

  if (v13 == 12565487 && v14 == 0xA300000000000000)
  {
  }

  else
  {
    v16 = sub_1CF9E8048();

    if ((v16 & 1) == 0)
    {
LABEL_16:

      if (v3 != v5)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  v17 = sub_1CF9E69E8();
  v18 = sub_1CF025150(v17, v5, v4);
  v19 = MEMORY[0x1D3868C10](v18);
  v4 = v20;

  if (v3 != v19)
  {
LABEL_22:
    v21 = sub_1CF9E8048();
    goto LABEL_23;
  }

LABEL_20:
  if (v2 != v4)
  {
    goto LABEL_22;
  }

  v21 = 1;
LABEL_23:

  return v21 & 1;
}

uint64_t sub_1CF661EA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a1;
  v65 = sub_1CF9E5A58();
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v52[-v11];
  v12 = *a2;
  v13 = a2[1];
  sub_1CF51B588(&v72);
  v66 = v72;
  v67 = v73;
  v14 = v74;
  v15 = v77;
  v57 = v76;
  if (v75)
  {
    v14 = 0;
  }

  v55 = v14;
  v16 = [objc_opt_self() fp_maximumBounceLevel];
  v78 = v16;
  if (v16 < 0)
  {
    goto LABEL_26;
  }

  v53 = a4;
  v17 = 0;
  v60 = (v7 + 8);
  v61 = (v7 + 16);
  v62 = v15;
  v59 = a3;
  do
  {
    v56 = v17;
    if (v17)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v18 setDateStyle_];
      [v18 setTimeStyle_];
      v19 = sub_1CF9E5C48();
      v20 = [v18 stringFromDate_];

      v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;

      v72 = v21;
      v73 = v23;
      v70 = 58;
      v71 = 0xE100000000000000;
      v68 = 39;
      v69 = 0xE100000000000000;
      v24 = sub_1CEFE4E68();
      v25 = MEMORY[0x1E69E6158];
      v26 = sub_1CF9E7668();
      v28 = v27;

      v72 = v26;
      v73 = v28;
      v70 = 47;
      v71 = 0xE100000000000000;
      v68 = 58;
      v69 = 0xE100000000000000;
      v50 = v24;
      v51 = v24;
      v48 = v25;
      v49 = v24;
      v29 = sub_1CF9E7668();
      v31 = v30;

      v72 = v66;
      v73 = v67;
      MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
      MEMORY[0x1D3868CC0](v29, v31);

      v66 = v72;
      v67 = v73;
    }

    if (v55 < v78)
    {
      v32 = v55;
      while (1)
      {
        if (v32 == 1)
        {
          goto LABEL_18;
        }

        if (v32)
        {
          break;
        }

        v33 = v67;

        v34 = v66;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_14:

        v16 = objc_sync_enter(a3);
        if (v16)
        {
          goto LABEL_27;
        }

        v35 = a3[20];

        v36 = objc_sync_exit(a3);
        if (v36)
        {
          MEMORY[0x1EEE9AC00](v36);
          v50 = v59;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, &v48, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        v37 = v64;
        v38 = v65;
        (*v61)(v64, v35 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v65);

        v72 = v34;
        v73 = v33;
        v70 = 47;
        v71 = 0xE100000000000000;
        v68 = 58;
        v69 = 0xE100000000000000;
        v50 = sub_1CEFE4E68();
        v51 = v50;
        v49 = v50;
        v48 = MEMORY[0x1E69E6158];
        sub_1CF9E7668();
        v58 = v34;
        v39 = v63;
        sub_1CF9E5958();

        v40 = *v60;
        (*v60)(v37, v38);
        sub_1CF9E5A18();
        v41 = sub_1CF9E6978();

        v42 = faccessat(-2, (v41 + 32), 0, 32);
        v40(v39, v38);

        if (v42)
        {

          v46 = v53;
          *v53 = v58;
          v46[1] = v33;
          return result;
        }

        a3 = v59;
        v15 = v62;
LABEL_18:
        if (v78 == v32)
        {
          goto LABEL_5;
        }

        if (__CFADD__(v32++, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          MEMORY[0x1EEE9AC00](v16);
          v50 = a3;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, &v48, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }
      }

      v72 = v66;
      v73 = v67;

      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      v70 = v32;
      v44 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v44);

      v34 = v72;
      v33 = v73;
      if (!v15)
      {
        goto LABEL_14;
      }

LABEL_13:
      v72 = v34;
      v73 = v33;

      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v57, v15);

      v34 = v72;
      v33 = v73;
      goto LABEL_14;
    }

LABEL_5:
    v17 = 1;
  }

  while ((v56 & 1) == 0);

  v47 = v53;
  *v53 = 0;
  v47[1] = 0;
  return result;
}

uint64_t sub_1CF662530@<X0>(uint64_t *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  sub_1CF51B588(&v39);
  st_ino = v39.st_ino;
  v38 = *&v39.st_dev;
  v7 = *&v39.st_uid;
  tv_nsec = v39.st_atimespec.tv_nsec;
  tv_sec = v39.st_atimespec.tv_sec;
  if (LOBYTE(v39.st_rdev))
  {
    v7 = 0;
  }

  v34 = v7;
  v9 = [objc_opt_self() fp_maximumBounceLevel];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
  }

  v10 = v9;
  v33 = a3;
  v11 = 0;
  while (1)
  {
    v35 = v11;
    if (v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v12 setDateStyle_];
      [v12 setTimeStyle_];
      v13 = sub_1CF9E5C48();
      v14 = [v12 stringFromDate_];

      v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v17 = v16;

      *&v39.st_dev = v15;
      v39.st_ino = v17;
      sub_1CEFE4E68();
      v18 = sub_1CF9E7668();
      v20 = v19;

      *&v39.st_dev = v18;
      v39.st_ino = v20;
      v21 = sub_1CF9E7668();
      v23 = v22;

      *&v39.st_dev = v38;
      v39.st_ino = st_ino;
      MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
      MEMORY[0x1D3868CC0](v21, v23);

      st_ino = v39.st_ino;
      v38 = *&v39.st_dev;
    }

    if (v34 < v10)
    {
      break;
    }

LABEL_5:
    v11 = 1;
    if (v35)
    {

      *v33 = 0;
      v33[1] = 0;
      goto LABEL_23;
    }
  }

  v24 = v34;
  while (v24 == 1)
  {
LABEL_16:
    if (v10 == v24)
    {
      goto LABEL_5;
    }

    if (__CFADD__(v24++, 1))
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  if (!v24)
  {

    v25 = v38;
    v26 = st_ino;
    if (!tv_nsec)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *&v39.st_dev = v38;
  v39.st_ino = st_ino;

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v30 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v30);

  v25 = *&v39.st_dev;
  v26 = v39.st_ino;
  if (tv_nsec)
  {
LABEL_13:
    *&v39.st_dev = v25;
    v39.st_ino = v26;

    MEMORY[0x1D3868CC0](46, 0xE100000000000000);
    MEMORY[0x1D3868CC0](tv_sec, tv_nsec);

    v25 = *&v39.st_dev;
    v26 = v39.st_ino;
  }

LABEL_14:
  memset(&v39, 0, sizeof(v39));
  sub_1CEFE4E68();

  sub_1CF9E7668();
  v27 = sub_1CF9E6978();

  v28 = fstatat(a2, (v27 + 32), &v39, 32);

  if ((v28 & 0x80000000) == 0)
  {

    goto LABEL_16;
  }

  *v33 = v25;
  v33[1] = v26;
LABEL_23:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF662980@<X0>(uint64_t (*a1)(uint64_t *)@<X1>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1CF51B588(&v37);
  v6 = v38;
  v43 = v37;
  v7 = v42;
  v35 = v41;
  if (v40)
  {
    v8 = 0;
  }

  else
  {
    v8 = v39;
  }

  result = [objc_opt_self() fp_maximumBounceLevel];
  if (result < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = 0;
    v33 = v8;
    do
    {
      v34 = v11;
      if (v11)
      {
        v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v12 setDateStyle_];
        v32 = v12;
        [v12 setTimeStyle_];
        v13 = sub_1CF9E5C48();
        v14 = [v12 stringFromDate_];

        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v17 = v16;

        v37 = v15;
        v38 = v17;
        sub_1CEFE4E68();
        v18 = sub_1CF9E7668();
        v20 = v19;

        v37 = v18;
        v38 = v20;
        v21 = sub_1CF9E7668();
        v23 = v22;

        v37 = v43;
        v38 = v6;
        MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
        v24 = v21;
        v8 = v33;
        MEMORY[0x1D3868CC0](v24, v23);

        v6 = v38;
        v43 = v37;
      }

      if (v8 < v10)
      {
        while (1)
        {
          if (v8 == 1)
          {
            goto LABEL_18;
          }

          if (v8)
          {
            break;
          }

          v25 = v43;
          v26 = v6;
          if (v7)
          {
            goto LABEL_14;
          }

LABEL_15:
          v37 = v25;
          v38 = v26;

          v27 = a1(&v37);
          if (v3)
          {
          }

          v28 = v27;

          if (v28)
          {

            *a2 = v25;
            a2[1] = v26;
            return result;
          }

LABEL_18:
          if (v10 == v8)
          {
            v8 = v33;
            goto LABEL_7;
          }

          if (__CFADD__(v8++, 1))
          {
            __break(1u);
            goto LABEL_27;
          }
        }

        v37 = v43;
        v38 = v6;

        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v30 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v30);

        v25 = v37;
        v26 = v38;
        if (!v7)
        {
          goto LABEL_15;
        }

LABEL_14:
        v37 = v25;
        v38 = v26;

        MEMORY[0x1D3868CC0](46, 0xE100000000000000);
        MEMORY[0x1D3868CC0](v35, v7);

        v25 = v37;
        v26 = v38;
        goto LABEL_15;
      }

LABEL_7:
      v11 = 1;
    }

    while ((v34 & 1) == 0);

    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t Filename.isValid.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 11822 && v2 == 0xE200000000000000;
  if (v3 || (sub_1CF9E8048() & 1) != 0 || (v1 == 46 ? (v4 = v2 == 0xE100000000000000) : (v4 = 0), v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048() ^ 1;
  }

  return v5 & 1;
}

uint64_t Filename.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Filename.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1CF9E6888();
  v4 = [v3 fp_obfuscatedFilename];

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v5;
}

uint64_t sub_1CF662E90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1CEFE7394(v1, v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v3 == 12565487 && v4 == 0xA300000000000000)
  {

    goto LABEL_9;
  }

  v6 = sub_1CF9E8048();

  if (v6)
  {
LABEL_9:
    v7 = sub_1CF9E69E8();
    v8 = sub_1CF025150(v7, v1, v2);
    v1 = MEMORY[0x1D3868C10](v8);

    return v1;
  }

LABEL_7:

  return v1;
}

void *sub_1CF662F58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1CF662F64@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1CF662F70()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF662FBC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1CF9E69C8();
}

uint64_t sub_1CF662FC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF66300C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1CF9E6888();
  v4 = [v3 fp_obfuscatedFilename];

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v5;
}

uint64_t sub_1CF663074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v10 = *a1;
  v11 = a1[1];
  v4 = sub_1CF662E90();
  v6 = v5;
  if (v4 == sub_1CF662E90() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CF9E8048();
  }

  return v8 & 1;
}

uint64_t Filename.encode(to:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1CF9E6A48();
}

uint64_t Filename.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF1A91AC(a1, v10);
  v5 = sub_1CF9E69B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_1CF6631B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF1A91AC(a1, v10);
  v5 = sub_1CF9E69B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_1CF663238()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1CF9E6A48();
}

uint64_t _s18FileProviderDaemon8FilenameV13stringLiteralACSS_tcfC_0@<X0>(uint64_t *a1@<X8>)
{
  sub_1CEFE4E68();
  v2 = sub_1CF9E7668();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CF6632EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1CEFE4E68();
  v3 = sub_1CF9E7668();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CF6633F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  *a4 = result;
  *a5 = v8;
  return result;
}

uint64_t sub_1CF6634AC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

unint64_t sub_1CF663520()
{
  result = qword_1EC4C2048;
  if (!qword_1EC4C2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2048);
  }

  return result;
}

unint64_t sub_1CF663578()
{
  result = qword_1EC4C2050;
  if (!qword_1EC4C2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2050);
  }

  return result;
}

unint64_t sub_1CF6635DC()
{
  result = qword_1EC4C2058;
  if (!qword_1EC4C2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2058);
  }

  return result;
}

void *sub_1CF663658(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1CF6636EC(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    v6 = v5;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1CF663770@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 16 * result;
    v5 = *v4;
    LOBYTE(v4) = *(v4 + 8);
    *a4 = v5;
    *(a4 + 8) = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1CF6637D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL static FileItemVersion.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 + 32);
  if ((sub_1CF9E6868() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for FileItemVersion();
  v11 = v10[13];
  v12 = *(a2 + v11);
  if (*(a1 + v11))
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *(a2 + v11);

    v14 = sub_1CF9E6E78();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v15 = v10[14];
  v16 = *(a6 + 32);
  if (sub_1CF9E6868())
  {
    v17 = v10[15];
    v18 = *(a2 + v17);
    if (*(a1 + v17))
    {
      if (!v18)
      {
        return 0;
      }

      v19 = *(a2 + v17);

      v20 = sub_1CF9E6E78();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    v21 = v10[16];
    v22 = (a1 + v21);
    v23 = *(a1 + v21 + 8);
    v24 = (a2 + v21);
    v25 = v24[1];
    if (v23)
    {
      if (!v25)
      {
        return 0;
      }

      v26 = *v22 == *v24 && v23 == v25;
      return v26 || (sub_1CF9E8048() & 1) != 0;
    }

    if (!v25)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FileItemVersion.equivalentContentVersions.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*FileItemVersion.equivalentContentVersions.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*FileItemVersion.structure.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t FileItemVersion.equivalentStructureVersions.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*FileItemVersion.equivalentStructureVersions.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t FileItemVersion.lastEditorDeviceName.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t FileItemVersion.lastEditorDeviceName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 64));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*FileItemVersion.lastEditorDeviceName.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_1CF663C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001CFA55B30 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xE900000000000065 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001CFA55B50 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA55B70 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1CF663E0C(unsigned __int8 a1)
{
  v1 = 0x746E65746E6F63;
  v2 = 0x7275746375727473;
  v3 = 0xD00000000000001BLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000019;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1CF663EB8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1CF06EE80(*a1, *a2);
}

uint64_t sub_1CF663ED0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1CF5AF91C(*v1);
}

uint64_t sub_1CF663EE0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1CF0BA820(a1, *v2);
}

uint64_t sub_1CF663EF0(uint64_t a1, void *a2)
{
  sub_1CF9E81D8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1CF0BA820(v9, *v2);
  return sub_1CF9E8228();
}

unint64_t sub_1CF663F3C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1CF663E0C(*v1);
}

uint64_t sub_1CF663F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1CF663C4C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF663F80@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1CF664CD8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF663FB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF664008(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FileItemVersion.encode(to:)(void *a1, int *a2)
{
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  v24 = a2;
  v25 = v6;
  v30 = v4;
  v31 = v3;
  v23[0] = v5;
  v23[1] = v3;
  v32 = v6;
  v33 = v5;
  type metadata accessor for FileItemVersion.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1CF9E7F78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  LOBYTE(v30) = 0;
  v13 = v26;
  v14 = *(v25 + 24);
  v15 = v27;
  sub_1CF9E7F08();
  if (v15)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v17 = v8;
  v18 = v24;
  v30 = *(v13 + v24[13]);
  v34 = 1;
  sub_1CF9E6E58();
  v29 = v14;
  swift_getWitnessTable();
  sub_1CF9E7E68();
  v19 = v18[14];
  LOBYTE(v30) = 2;
  v27 = *(v23[0] + 24);
  sub_1CF9E7F08();
  v30 = *(v13 + v18[15]);
  v34 = 3;
  sub_1CF9E6E58();
  v28 = v27;
  swift_getWitnessTable();
  sub_1CF9E7E68();
  v20 = (v13 + v18[16]);
  v21 = *v20;
  v22 = v20[1];
  LOBYTE(v30) = 4;
  sub_1CF9E7E38();
  return (*(v17 + 8))(v11, v7);
}

uint64_t FileItemVersion.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v53 = *(a3 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v17;
  v65 = v18;
  v66 = v19;
  v67 = v20;
  type metadata accessor for FileItemVersion.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_1CF9E7E08();
  v22 = *(v21 - 8);
  v58 = v21;
  v59 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - v24;
  v64 = a2;
  v65 = a3;
  v56 = a3;
  v57 = a4;
  v66 = a4;
  v67 = a5;
  v51 = a5;
  v26 = type metadata accessor for FileItemVersion();
  v49 = *(v26 - 1);
  v27 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v48 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v60 = v25;
  v31 = v61;
  sub_1CF9E8298();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v29;
  v32 = v56;
  LOBYTE(v64) = 0;
  v33 = *(v57 + 2);
  v34 = v55;
  sub_1CF9E7D88();
  (*(v54 + 32))(v61, v34, a2);
  v57 = a2;
  sub_1CF9E6E58();
  v68 = 1;
  v63 = v33;
  swift_getWitnessTable();
  sub_1CF9E7CF8();
  v35 = v26[13];
  v55 = v64;
  *&v61[v35] = v64;
  LOBYTE(v64) = 2;
  v36 = v52;
  v37 = *(v51 + 16);
  sub_1CF9E7D88();
  (*(v53 + 32))(&v61[v26[14]], v36, v32);
  sub_1CF9E6E58();
  v68 = 3;
  v62 = v37;
  swift_getWitnessTable();
  v38 = v60;
  sub_1CF9E7CF8();
  *&v61[v26[15]] = v64;
  LOBYTE(v64) = 4;
  v39 = sub_1CF9E7CB8();
  v41 = v40;
  v42 = v39;
  v43 = v38;
  v44 = v61;
  v45 = &v61[v26[16]];
  (*(v59 + 8))(v43, v58);
  *v45 = v42;
  v45[1] = v41;
  v46 = v49;
  (*(v49 + 16))(v50, v44, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v46 + 8))(v44, v26);
}

uint64_t FileItemVersion<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1CF9E6758();
  v5 = *(a2 + 24);
  v6 = v2 + *(a2 + 56);
  return sub_1CF9E6758();
}

uint64_t FileItemVersion<>.hashValue.getter(uint64_t a1)
{
  sub_1CF9E81D8();
  v3 = *(a1 + 16);
  sub_1CF9E6758();
  v4 = *(a1 + 24);
  v5 = v1 + *(a1 + 56);
  sub_1CF9E6758();
  return sub_1CF9E8228();
}

uint64_t sub_1CF664AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return FileItemVersion<>.hashValue.getter(a1);
}

uint64_t sub_1CF664AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  return FileItemVersion<>.hash(into:)(a1, a2);
}

uint64_t sub_1CF664AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1CF9E81D8();
  FileItemVersion<>.hash(into:)(v7, a2);
  return sub_1CF9E8228();
}

void sub_1CF664B90(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_1CF9E6E58();
    sub_1CF9E75D8();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        sub_1CF9E6E58();
        sub_1CF9E75D8();
        if (v7 <= 0x3F)
        {
          sub_1CF4EFEB4();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1CF664CE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF664D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) <= ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v3 = ((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 < 2)
    {
LABEL_26:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_26;
  }

LABEL_15:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1CF664F1C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1CF6651BC(unint64_t a1)
{
  if (((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 0x1E)
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v2 = v1;
  }

  else
  {
    v4 = swift_allocObject();
    v1 = a1;
    *(v4 + 16) = a1;
    v2 = v4 | 0x7000000000000004;
  }

  sub_1CEFD09A0(v1);
  return v2;
}

uint64_t sub_1CF66523C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - v22;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v24 = sub_1CF6656D8(a1);
  if (v24)
  {
    v25 = v24;
    v26 = [v24 date];

    sub_1CF9E5CB8();
    (*(v11 + 56))(v23, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v23, 1, 1, v10);
  }

  sub_1CF06EAD4(v23, v21);
  if ((*(v11 + 48))(v21, 1, v10) == 1)
  {
    sub_1CEFD9E84(v23);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v28 = v27;
    v29 = *(v11 + 8);
    v11 += 8;
    result = v29(v16, v10);
    v31 = v28 * 1000000000.0;
    if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v31 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v31 < 9.22337204e18)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  (*(v11 + 32))(v16, v21, v10);
  v32 = v38;
  (*(v11 + 16))(v38, v16, v10);
  sub_1CF9E5C98();
  v34 = v33;
  v35 = *(v11 + 8);
  v35(v32, v10);
  v35(v16, v10);
  result = sub_1CEFD9E84(v23);
  v36 = v34 * 1000000000.0;
  if (COERCE__INT64(fabs(v34 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  result = sub_1CF668C3C(v39, v40, v41, v42, v43);
  if (v37)
  {
    return 0;
  }

  return result;
}

void sub_1CF6655E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1CF9E7818();
    MEMORY[0x1D386A470](v8);
    v3 = sub_1CF9E7818();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1D386A470](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1D3869C30](i, a2);
      sub_1CF9E7578();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1CF9E7578();

      --v3;
    }

    while (v3);
  }
}

void *sub_1CF6656D8(unint64_t a1)
{
  v1 = 0;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
      swift_getAssociatedTypeWitness();
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      goto LABEL_13;
    case 1uLL:
    case 3uLL:
    case 8uLL:
    case 0x16uLL:
    case 0x24uLL:
      swift_getAssociatedTypeWitness();
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      goto LABEL_6;
    case 2uLL:
      v10 = &unk_1EC4C4F40;
      v11 = qword_1CFA0F4C0;
      goto LABEL_27;
    case 4uLL:
    case 5uLL:
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      goto LABEL_6;
    case 6uLL:
    case 7uLL:
    case 0x14uLL:
    case 0x21uLL:
    case 0x25uLL:
    case 0x2CuLL:
      v2 = &qword_1EC4C20E8;
      v3 = &unk_1CFA0F480;
      goto LABEL_11;
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
      swift_getAssociatedTypeWitness();
      goto LABEL_5;
    case 0xEuLL:
    case 0xFuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      goto LABEL_15;
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ReconciliationID();
LABEL_5:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
LABEL_6:
      v4 = swift_getTupleTypeMetadata2();
      goto LABEL_12;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_15;
    case 0x1AuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v1)
      {
        return v1;
      }

      goto LABEL_15;
    case 0x20uLL:
      v10 = &unk_1EC4C5210;
      v11 = &unk_1CFA0F4B0;
      goto LABEL_27;
    case 0x23uLL:
      v10 = &unk_1EC4C5200;
      v11 = "hx\t";
      goto LABEL_27;
    case 0x26uLL:
      v10 = &qword_1EC4C20F0;
      v11 = &unk_1CFA0F4A0;
      goto LABEL_27;
    case 0x27uLL:
      v10 = &unk_1EC4C4AF0;
      v11 = "pN\t";
      goto LABEL_27;
    case 0x28uLL:
    case 0x29uLL:
      v2 = &unk_1EC4C51F0;
      v3 = qword_1CFA17B30;
LABEL_11:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
LABEL_12:
      TupleTypeMetadata2 = v4;
LABEL_13:
      v6 = swift_projectBox();
      v7 = *(TupleTypeMetadata2 + 48);
      goto LABEL_14;
    case 0x2AuLL:
      v10 = &unk_1EC4C4B00;
      v11 = &unk_1CFA0F490;
LABEL_27:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      v6 = swift_projectBox();
      v7 = *(v12 + 64);
LABEL_14:
      v1 = *(v6 + v7);
LABEL_15:
      v8 = v1;
      break;
    default:
      return v1;
  }

  return v1;
}

char *sub_1CF665B0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v347 = sub_1CF9E75D8();
  v345 = *(v347 - 8);
  v11 = *(v345 + 64);
  MEMORY[0x1EEE9AC00](v347);
  v346 = &v344 - v12;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v352[0] = v13;
  v352[1] = AssociatedTypeWitness;
  v352[2] = AssociatedConformanceWitness;
  v352[3] = v15;
  v348 = v15;
  v16 = type metadata accessor for ReconciliationID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v344 - v19;
  v21 = sub_1CF9E5A58();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v344 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v349 = AssociatedTypeWitness;
  v350 = &v344 - v27;
  v28 = *(*(AssociatedTypeWitness - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v193 = swift_projectBox();
      v194 = *(v193 + *(TupleTypeMetadata2 + 48));
      (*(v34 + 16))(v33, v193, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v194;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55EB0);
      v195 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 2uLL:
      v48 = v29;
      v49 = v32;
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v152 = swift_projectBox();
      v153 = *v152;
      v154 = *(v152 + 1);
      v155 = *(v151 + 48);
      v156 = *&v152[*(v151 + 64)];
      v53 = v350;
      (*(v49 + 16))(v350, &v152[v155], v48);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;

      v54 = v156;
      sub_1CF9E7948();

      strcpy(v352, "coordination(");
      HIWORD(v352[1]) = -4864;
      MEMORY[0x1D3868CC0](v153, v154);

      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      v157 = sub_1CF9E5928();
      v158 = [v157 fp_shortDescription];

      v159 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v161 = v160;

      MEMORY[0x1D3868CC0](v159, v161);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 3uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v180 = swift_getTupleTypeMetadata2();
      v181 = swift_projectBox();
      v182 = *(v181 + *(v180 + 48));
      (*(v34 + 16))(v33, v181, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v182;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x3E2D44496D657469, 0xEC000000284C5255);
      v183 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 4uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v128 = v347;
      v129 = swift_getTupleTypeMetadata2();
      v130 = swift_projectBox();
      v131 = *(v130 + *(v129 + 48));
      v35 = v349;
      if ((*(v34 + 48))() == 1)
      {
        v352[0] = 0xD00000000000001ALL;
        v352[1] = 0x80000001CFA55E70;
        v132 = [v131 description];
        goto LABEL_86;
      }

      v331 = v346;
      (*(v345 + 16))(v346, v130, v128);
      (*(v34 + 32))(v33, v331, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x746172656D756E65, 0xEC000000286E6F69);
      v332 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v333 = [v131 description];
      goto LABEL_89;
    case 5uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v216 = v347;
      v217 = swift_getTupleTypeMetadata2();
      v218 = swift_projectBox();
      v219 = *(v218 + *(v217 + 48));
      v35 = v349;
      if ((*(v34 + 48))() == 1)
      {
        v352[0] = 0xD00000000000001BLL;
        v352[1] = 0x80000001CFA55E50;
        v132 = [v219 description];
        goto LABEL_86;
      }

      v334 = v346;
      (*(v345 + 16))(v346, v218, v216);
      (*(v34 + 32))(v33, v334, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x616572436D657469, 0xED0000286E6F6974);
      v335 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v333 = [v219 description];
LABEL_89:
      v336 = v333;
      v337 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v339 = v338;

      MEMORY[0x1D3868CC0](v337, v339);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
LABEL_69:
      v75 = v352[0];
      (*(v34 + 8))(v33, v35);
      return v75;
    case 6uLL:
      v48 = v29;
      v49 = v32;
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v226 = swift_projectBox();
      v227 = *(v226 + *(v225 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v226, v48);
      strcpy(v352, "eviction(");
      WORD1(v352[1]) = 0;
      HIDWORD(v352[1]) = -385875968;
      v54 = v227;
      v228 = sub_1CF9E5928();
      v229 = [v228 fp_shortDescription];

      v230 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v232 = v231;

      MEMORY[0x1D3868CC0](v230, v232);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 7uLL:
      v48 = v29;
      v49 = v32;
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v185 = swift_projectBox();
      v186 = *(v185 + *(v184 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v185, v48);
      v352[0] = 0x676E496563726F66;
      v352[1] = 0xEF286E6F69747365;
      v54 = v186;
      v187 = sub_1CF9E5928();
      v188 = [v187 fp_shortDescription];

      v189 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v191 = v190;

      MEMORY[0x1D3868CC0](v189, v191);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 8uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v240 = swift_getTupleTypeMetadata2();
      v241 = swift_projectBox();
      v242 = *(v241 + *(v240 + 48));
      (*(v34 + 16))(v33, v241, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v242;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA55EF0);
      v243 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 9uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v145 = swift_getTupleTypeMetadata2();
      v146 = swift_projectBox();
      v147 = *(v146 + *(v145 + 48));
      (*(v34 + 16))(v33, v146, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v147;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6E6F697463697665, 0xE900000000000028);
      v148 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 0xAuLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v236 = swift_getTupleTypeMetadata2();
      v237 = swift_projectBox();
      v238 = *(v237 + *(v236 + 48));
      (*(v34 + 16))(v33, v237, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v238;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55E30);
      v239 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 0xBuLL:
      v126 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v127 = 0xEB0000000028646ELL;
      goto LABEL_43;
    case 0xCuLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v141 = swift_getTupleTypeMetadata2();
      v142 = swift_projectBox();
      v143 = *(v142 + *(v141 + 48));
      (*(v34 + 16))(v33, v142, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v143;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x286D6574496E6970, 0xE800000000000000);
      v144 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 0xDuLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v221 = swift_getTupleTypeMetadata2();
      v222 = swift_projectBox();
      v223 = *(v222 + *(v221 + 48));
      (*(v34 + 16))(v33, v222, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v223;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6574496E69706E75, 0xEA0000000000286DLL);
      v224 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 0xEuLL:
      v95 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v352, "detachRoots(");
      BYTE5(v352[1]) = 0;
      HIWORD(v352[1]) = -5120;
      if (v95 >> 62)
      {
        v340 = v29;
        v341 = v32;
        v342 = v95;
        v343 = sub_1CF9E7818();
        v95 = v342;
        v32 = v341;
        v97 = v343;
        v29 = v340;
      }

      else
      {
        v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v98 = MEMORY[0x1E69E7CC0];
      if (!v97)
      {
        goto LABEL_85;
      }

      v99 = v95;
      v346 = v96;
      v100 = v32;
      v349 = v29;
      v351 = MEMORY[0x1E69E7CC0];
      result = sub_1CEFE95CC(0, v97 & ~(v97 >> 63), 0);
      if (v97 < 0)
      {
        __break(1u);
        return result;
      }

      v102 = 0;
      v98 = v351;
      v103 = v99;
      v347 = v99 & 0xC000000000000001;
      v348 = v99;
      v104 = (v100 + 8);
      v105 = v97;
      do
      {
        if (v347)
        {
          v106 = MEMORY[0x1D3869C30](v102, v103);
        }

        else
        {
          v106 = *(v103 + 8 * v102 + 32);
        }

        v107 = v106;
        v108 = [v107 knownFolder];
        v109 = v350;
        sub_1CF9E59D8();

        v110 = sub_1CF9E5928();
        v111 = [v110 fp_shortDescription];

        v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v114 = v113;

        (*v104)(v109, v349);
        v351 = v98;
        v116 = *(v98 + 16);
        v115 = *(v98 + 24);
        if (v116 >= v115 >> 1)
        {
          sub_1CEFE95CC((v115 > 1), v116 + 1, 1);
          v98 = v351;
        }

        ++v102;
        *(v98 + 16) = v116 + 1;
        v117 = v98 + 16 * v116;
        *(v117 + 32) = v112;
        *(v117 + 40) = v114;
        v103 = v348;
      }

      while (v105 != v102);
      v96 = v346;
LABEL_85:
      v351 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CF0711CC();
      v324 = sub_1CF9E67D8();
      v326 = v325;

      MEMORY[0x1D3868CC0](v324, v326);

      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v132 = [v96 description];
LABEL_86:
      v327 = v132;
      v328 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v330 = v329;

      MEMORY[0x1D3868CC0](v328, v330);
LABEL_93:

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      return v352[0];
    case 0xFuLL:
      v162 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v163 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v352, "attachRoots(");
      BYTE5(v352[1]) = 0;
      HIWORD(v352[1]) = -5120;
      v164 = *(v162 + 16);
      v165 = MEMORY[0x1E69E7CC0];
      if (v164)
      {
        v346 = v163;
        v351 = MEMORY[0x1E69E7CC0];
        v349 = v29;
        v166 = v32;
        sub_1CEFE95CC(0, v164, 0);
        v167 = v349;
        v165 = v351;
        v168 = *(v166 + 16);
        v166 += 16;
        v169 = v162 + ((*(v166 + 64) + 32) & ~*(v166 + 64));
        v347 = *(v166 + 56);
        v348 = v168;
        v170 = (v166 - 8);
        do
        {
          v171 = v350;
          (v348)(v350, v169, v167);
          v172 = sub_1CF9E5928();
          v173 = [v172 fp_shortDescription];

          v167 = v349;
          v174 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v176 = v175;

          (*v170)(v171, v167);
          v351 = v165;
          v178 = *(v165 + 16);
          v177 = *(v165 + 24);
          if (v178 >= v177 >> 1)
          {
            sub_1CEFE95CC((v177 > 1), v178 + 1, 1);
            v167 = v349;
            v165 = v351;
          }

          *(v165 + 16) = v178 + 1;
          v179 = v165 + 16 * v178;
          *(v179 + 32) = v174;
          *(v179 + 40) = v176;
          v169 += v347;
          --v164;
        }

        while (v164);
        v163 = v346;
      }

      v351 = v165;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CF0711CC();
      v321 = sub_1CF9E67D8();
      v323 = v322;

      MEMORY[0x1D3868CC0](v321, v323);

      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v132 = [v163 description];
      goto LABEL_86;
    case 0x10uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v80 = v16;
      v81 = swift_getTupleTypeMetadata2();
      v82 = swift_projectBox();
      v83 = *(v82 + *(v81 + 48));
      v84 = v17;
      (*(v17 + 16))(v20, v82, v80);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v85 = v83;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x744965726F6E6769, 0xEB00000000286D65);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v86 = [v85 description];
      goto LABEL_72;
    case 0x11uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v80 = v16;
      v197 = swift_getTupleTypeMetadata2();
      v198 = swift_projectBox();
      v199 = *(v198 + *(v197 + 48));
      v84 = v17;
      (*(v17 + 16))(v20, v198, v80);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v85 = v199;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x65726F6E67696E75, 0xED0000286D657449);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v86 = [v85 description];
      goto LABEL_72;
    case 0x12uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v80 = v16;
      v233 = swift_getTupleTypeMetadata2();
      v234 = swift_projectBox();
      v235 = *(v234 + *(v233 + 48));
      v84 = v17;
      (*(v17 + 16))(v20, v234, v80);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v85 = v235;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA55E90);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v86 = [v85 description];
      goto LABEL_72;
    case 0x13uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v80 = v16;
      v280 = swift_getTupleTypeMetadata2();
      v281 = swift_projectBox();
      v282 = *(v281 + *(v280 + 48));
      v84 = v17;
      (*(v17 + 16))(v20, v281, v80);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v85 = v282;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6D6574496B6C7562, 0xEF2865676E616843);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v86 = [v85 description];
LABEL_72:
      v283 = v86;
      v284 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v286 = v285;

      MEMORY[0x1D3868CC0](v284, v286);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      v75 = v352[0];
      (*(v84 + 8))(v20, v80);
      return v75;
    case 0x14uLL:
      v48 = v29;
      v49 = v32;
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v209 = swift_projectBox();
      v210 = *(v209 + *(v208 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v209, v48);
      strcpy(v352, "trashItem(");
      BYTE3(v352[1]) = 0;
      HIDWORD(v352[1]) = -369098752;
      v54 = v210;
      v211 = sub_1CF9E5928();
      v212 = [v211 fp_shortDescription];

      v213 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v215 = v214;

      MEMORY[0x1D3868CC0](v213, v215);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x15uLL:
      v220 = swift_projectBox();
      v77 = v17;
      (*(v17 + 16))(v20, v220, v16);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v78 = "alizeParentHierarchy(";
      v79 = 0xD00000000000001BLL;
      goto LABEL_50;
    case 0x16uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v263 = swift_getTupleTypeMetadata2();
      v264 = swift_projectBox();
      v265 = *(v264 + *(v263 + 48));
      (*(v34 + 16))(v33, v264, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v265;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x614264616F6C7075, 0xEE00287265697272);
      v266 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 0x17uLL:
      v301 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v352[0] = 0xD000000000000011;
      v352[1] = 0x80000001CFA55DC0;
      v132 = [v301 description];
      goto LABEL_86;
    case 0x18uLL:
      v150 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v352[0] = 0xD00000000000001ALL;
      v352[1] = 0x80000001CFA55D90;
      v132 = [v150 description];
      goto LABEL_86;
    case 0x19uLL:
      v149 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v352[0] = 0xD000000000000019;
      v352[1] = 0x80000001CFA55D70;
      v132 = [v149 description];
      goto LABEL_86;
    case 0x1AuLL:
      v318 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v352[0] = 0xD00000000000001ELL;
      v352[1] = 0x80000001CFA55D50;
      if (v318)
      {
        v319 = [v318 description];
        v320 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      }

      else
      {
        v320 = 0x29656E6F6E28;
      }

      v196 = v320;
      goto LABEL_92;
    case 0x1BuLL:
      return 0xD000000000000016;
    case 0x1CuLL:
      v302 = 9;
      return (v302 | 0xD000000000000010);
    case 0x1DuLL:
      v42 = &v344 - v30;
      v43 = v31;
      v303 = swift_projectBox();
      v45 = v349;
      (*(v43 + 16))(v42, v303, v349);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v46 = "testingHarnessScheduling";
      v47 = 0xD000000000000016;
      goto LABEL_78;
    case 0x1EuLL:
      v244 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v244);
      v75 = sub_1CF665B0C(v244, a3, a2, a5, a4);
      sub_1CF66DD30(v244);
      return v75;
    case 0x1FuLL:
      v126 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v127 = 0xEF286B726F57646ELL;
LABEL_43:
      v352[0] = 0x756F72676B636162;
      v352[1] = v127;
      v196 = sub_1CF7F5068(v126);
LABEL_92:
      MEMORY[0x1D3868CC0](v196);
      goto LABEL_93;
    case 0x20uLL:
      v245 = v29;
      v246 = v32;
      v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v248 = swift_projectBox();
      v249 = *(v248 + *(v247 + 48));
      v250 = *(v248 + *(v247 + 64));
      (*(v246 + 16))(v25, v248, v245);
      strcpy(v352, "itemID(");
      v352[1] = 0xE700000000000000;
      v251 = v250;
      v252 = sub_1CF9E5928();
      v253 = [v252 fp_shortDescription];

      v254 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v256 = v255;

      MEMORY[0x1D3868CC0](v254, v256);

      MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA55C70);
      if (v249)
      {
        v257 = 1702195828;
      }

      else
      {
        v257 = 0x65736C6166;
      }

      if (v249)
      {
        v258 = 0xE400000000000000;
      }

      else
      {
        v258 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v257, v258);

      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v259 = [v251 description];
      v260 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v262 = v261;

      MEMORY[0x1D3868CC0](v260, v262);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      v75 = v352[0];
      (*(v246 + 8))(v25, v245);
      return v75;
    case 0x21uLL:
      v48 = v29;
      v49 = v32;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v119 = swift_projectBox();
      v120 = *(v119 + *(v118 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v119, v48);
      v352[0] = 0xD000000000000010;
      v352[1] = 0x80000001CFA55C30;
      v54 = v120;
      v121 = sub_1CF9E5928();
      v122 = [v121 fp_shortDescription];

      v123 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v125 = v124;

      MEMORY[0x1D3868CC0](v123, v125);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x22uLL:
      v76 = swift_projectBox();
      v77 = v17;
      (*(v17 + 16))(v20, v76, v16);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v78 = "stabilization(by:";
      v79 = 0xD000000000000025;
LABEL_50:
      MEMORY[0x1D3868CC0](v79, v78 | 0x8000000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v75 = v352[0];
      (*(v77 + 8))(v20, v16);
      return v75;
    case 0x23uLL:
      v48 = v29;
      v49 = v32;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v62 = swift_projectBox();
      v63 = *(v62 + *(v61 + 48));
      v64 = *(v62 + *(v61 + 64));
      v53 = v350;
      (*(v49 + 16))(v350, v62, v48);
      strcpy(v352, "itemForURL(");
      HIDWORD(v352[1]) = -352321536;
      v54 = v64;
      v65 = sub_1CF9E5928();
      v66 = [v65 fp_shortDescription];

      v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v69 = v68;

      MEMORY[0x1D3868CC0](v67, v69);

      MEMORY[0x1D3868CC0](0x6E6F6974706F202CLL, 0xED00007830203A73);
      v351 = v63;
      sub_1CF66DD74();
      v70 = sub_1CF9E6B28();
      MEMORY[0x1D3868CC0](v70);

      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x24uLL:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v71 = swift_getTupleTypeMetadata2();
      v72 = swift_projectBox();
      v73 = *(v72 + *(v71 + 48));
      (*(v34 + 16))(v33, v72, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v73;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x55726F466D657469, 0xEB00000000284C52);
      v74 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v41 = [v39 description];
      goto LABEL_68;
    case 0x25uLL:
      v48 = v29;
      v49 = v32;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v51 = swift_projectBox();
      v52 = *(v51 + *(v50 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v51, v48);
      v352[0] = 0xD000000000000018;
      v352[1] = 0x80000001CFA55C50;
      v54 = v52;
      v55 = sub_1CF9E5928();
      v56 = [v55 fp_shortDescription];

      v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v59 = v58;

      MEMORY[0x1D3868CC0](v57, v59);

      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x26uLL:
      v48 = v29;
      v49 = v32;
      v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v306 = swift_projectBox();
      v307 = *(v306 + *(v305 + 48));
      v308 = *(v306 + *(v305 + 64));
      v53 = v350;
      (*(v49 + 16))(v350, v306, v48);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v54 = v308;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEE00286573756150);
      v309 = sub_1CF9E5928();
      v310 = [v309 fp_shortDescription];

      v311 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v313 = v312;

      MEMORY[0x1D3868CC0](v311, v313);

      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v351 = v307;
      type metadata accessor for FPPauseBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x27uLL:
      v48 = v29;
      v49 = v32;
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v272 = swift_projectBox();
      v273 = *(v272 + *(v271 + 48));
      v274 = *(v272 + *(v271 + 64));
      v53 = v350;
      (*(v49 + 16))(v350, v272, v48);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v54 = v274;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEF28656D75736552);
      v275 = sub_1CF9E5928();
      v276 = [v275 fp_shortDescription];

      v277 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v279 = v278;

      MEMORY[0x1D3868CC0](v277, v279);

      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v351 = v273;
      type metadata accessor for FPResumeBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x28uLL:
      v48 = v29;
      v49 = v32;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v134 = swift_projectBox();
      v135 = *(v134 + *(v133 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v134, v48);
      v352[0] = 0xD000000000000017;
      v352[1] = 0x80000001CFA55C10;
      v54 = v135;
      v136 = sub_1CF9E5928();
      v137 = [v136 fp_shortDescription];

      v138 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v140 = v139;

      MEMORY[0x1D3868CC0](v138, v140);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x29uLL:
      v48 = v29;
      v49 = v32;
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v201 = swift_projectBox();
      v202 = *(v201 + *(v200 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v201, v48);
      v352[0] = 0xD000000000000013;
      v352[1] = 0x80000001CFA55BD0;
      v54 = v202;
      v203 = sub_1CF9E5928();
      v204 = [v203 fp_shortDescription];

      v205 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v207 = v206;

      MEMORY[0x1D3868CC0](v205, v207);

      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v60 = [v54 description];
      goto LABEL_80;
    case 0x2AuLL:
      v48 = v29;
      v49 = v32;
      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v288 = swift_projectBox();
      v289 = *(v288 + *(v287 + 48));
      v290 = *(v288 + *(v287 + 64));
      v53 = v350;
      (*(v49 + 16))(v350, v288, v48);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v291 = v290;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA55BF0);
      v292 = sub_1CF9E5928();
      v293 = [v292 fp_shortDescription];

      v294 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v296 = v295;

      MEMORY[0x1D3868CC0](v294, v296);

      MEMORY[0x1D3868CC0](0x7963696C6F70202CLL, 0xEA0000000000203ALL);
      v351 = v289;
      type metadata accessor for NSFileManagerUploadLocalVersionConflictPolicy(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v297 = [v291 description];
      v298 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v300 = v299;

      MEMORY[0x1D3868CC0](v298, v300);

      goto LABEL_81;
    case 0x2BuLL:
      v42 = &v344 - v30;
      v43 = v31;
      v44 = swift_projectBox();
      v45 = v349;
      (*(v43 + 16))(v42, v44, v349);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v46 = "resolveConflict(";
      v47 = 0xD000000000000013;
LABEL_78:
      MEMORY[0x1D3868CC0](v47, v46 | 0x8000000000000000);
      v304 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v75 = v352[0];
      (*(v43 + 8))(v42, v45);
      return v75;
    case 0x2CuLL:
      v48 = v29;
      v49 = v32;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v88 = swift_projectBox();
      v89 = *(v88 + *(v87 + 48));
      v53 = v350;
      (*(v49 + 16))(v350, v88, v48);
      v352[0] = 0xD000000000000010;
      v352[1] = 0x80000001CFA55B90;
      v54 = v89;
      v90 = sub_1CF9E5928();
      v91 = [v90 fp_shortDescription];

      v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v94 = v93;

      MEMORY[0x1D3868CC0](v92, v94);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v60 = [v54 description];
LABEL_80:
      v314 = v60;
      v315 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v317 = v316;

      MEMORY[0x1D3868CC0](v315, v317);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

LABEL_81:
      v75 = v352[0];
      (*(v49 + 8))(v53, v48);
      return v75;
    case 0x2DuLL:
      if (a1 == 0xB000000000000002)
      {
        v302 = 11;
      }

      else
      {
        if (a1 == 0xB00000000000000ALL)
        {
          return 0xD000000000000018;
        }

        v302 = 5;
      }

      return (v302 | 0xD000000000000010);
    default:
      v33 = &v344 - v30;
      v34 = v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v35 = v349;
      v36 = swift_getTupleTypeMetadata2();
      v37 = swift_projectBox();
      v38 = *(v37 + *(v36 + 48));
      (*(v34 + 16))(v33, v37, v35);
      v352[0] = 0;
      v352[1] = 0xE000000000000000;
      v39 = v38;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55ED0);
      v40 = *(v348 + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v41 = [v39 description];
LABEL_68:
      v267 = v41;
      v268 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v270 = v269;

      MEMORY[0x1D3868CC0](v268, v270);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      goto LABEL_69;
  }
}

uint64_t sub_1CF668ADC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon11UserRequestOyxq_G(void *a1)
{
  v1 = (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3;
  if (v1 <= 0x2C)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 45;
  }
}

uint64_t sub_1CF668B3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x53 && *(a1 + 8))
  {
    return (*a1 + 83);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x52)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF668B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x52)
  {
    *result = a2 - 83;
    if (a3 >= 0x53)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x53)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1CF668BFC(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x2D)
  {
    *result = ((a2 << 58) | (2 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 45)) | 0xB000000000000002;
  }

  return result;
}

void *sub_1CF668C3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v16 <= 27)
  {
    switch(v16)
    {
      case 21:
        goto LABEL_12;
      case 26:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      case 27:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }
  }

  else
  {
    if (v16 <= 30)
    {
      if (v16 != 28)
      {
        if (v16 == 30)
        {
          v17 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
          sub_1CEFD09A0(v17);
          v18 = sub_1CF668C3C(v17, a3, a2, a5, a4);
          sub_1CF66DD30(v17);
          return v18;
        }

        goto LABEL_13;
      }

      return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }

    if (v16 == 31)
    {
      return 0;
    }

    if (v16 == 34)
    {
LABEL_12:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v21 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v23 = swift_getAssociatedConformanceWitness();
      v35[0] = AssociatedTypeWitness;
      v35[1] = v21;
      v35[2] = AssociatedConformanceWitness;
      v35[3] = v23;
      type metadata accessor for ReconciliationID();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return *(swift_projectBox() + *(TupleTypeMetadata2 + 48));
    }
  }

LABEL_13:
  v25 = v13;
  result = sub_1CF6656D8(a1);
  if (result)
  {
    v26 = result;
    v27 = [result qos];
    v28 = 0x6000000000000000;
    v29 = 0x4000000000000000;
    if (v27 <= 0x14)
    {
      v29 = (v27 - 17 < 0xFFFFFFF0) << 61;
    }

    if (v27 <= 0x18)
    {
      v28 = v29;
    }

    if (v27 <= 0x20)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0x8000000000000000;
    }

    v31 = [v26 date];
    sub_1CF9E5CB8();

    sub_1CF9E5C98();
    v33 = v32;

    result = (*(v11 + 8))(v15, v25);
    v34 = v33 * 1000000000.0;
    if (COERCE__INT64(fabs(v33 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v34 > -9.22337204e18)
    {
      if (v34 < 9.22337204e18)
      {
        return ((v34 & ~(v34 >> 63)) + v30);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF668FD8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v578 = a2;
  v579 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v567 = a5;
  v565 = a3;
  v566 = a6;
  v564 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v573 = AssociatedTypeWitness;
  v580[0] = AssociatedTypeWitness;
  v580[1] = v11;
  v580[2] = AssociatedConformanceWitness;
  v581 = swift_getAssociatedConformanceWitness();
  v576 = v581;
  v12 = type metadata accessor for ReconciliationID();
  v574 = *(v12 - 8);
  v575 = v12;
  v13 = *(v574 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v561[0] = v518 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v560 = v518 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v557 = v518 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v556 = v518 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v562[1] = v518 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v563 = v518 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v561[1] = v518 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v562[0] = v518 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v558 = v518 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v559 = v518 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v554 = v518 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v555 = v518 - v36;
  v37 = sub_1CF9E75D8();
  v570 = *(v37 - 8);
  v38 = *(v570 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v518[2] = v518 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v518[1] = v518 - v41;
  v571 = v42;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v519 = *(TupleTypeMetadata2 - 8);
  v43 = *(v519 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v553 = v518 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v552 = v518 - v46;
  v47 = sub_1CF9E5A58();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  MEMORY[0x1EEE9AC00](v52);
  MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v54);
  v550[1] = v518 - v55;
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  v551 = v518 - v58;
  MEMORY[0x1EEE9AC00](v59);
  MEMORY[0x1EEE9AC00](v60);
  v549 = v518 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v550[0] = v518 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v545 = v518 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v547 = v518 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v546 = v518 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v548 = v518 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v541 = v518 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v543 = v518 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v542 = v518 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v544 = v518 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v539 = v518 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v540 = v518 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v536 = v518 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v537 = v518 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v534 = v518 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v535 = v518 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v538 = v518 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v568 = v518 - v95;
  v577 = v11;
  v96 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v527 = v518 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99);
  v526 = v518 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v532 = v518 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v533 = v518 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v522 = v518 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v521 = v518 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v530 = v518 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v531 = v518 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v528 = v518 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v529 = v518 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v524 = v518 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v525 = v518 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v523 = v518 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v520 = v518 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v127 = v518 - v126;
  MEMORY[0x1EEE9AC00](v128);
  v130 = v518 - v129;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v518 - v132;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v518 - v135;
  MEMORY[0x1EEE9AC00](v137);
  v518[0] = v518 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v518 - v140;
  MEMORY[0x1EEE9AC00](v142);
  v144 = v518 - v143;
  MEMORY[0x1EEE9AC00](v145);
  v147 = v518 - v146;
  MEMORY[0x1EEE9AC00](v148);
  v150 = v518 - v149;
  MEMORY[0x1EEE9AC00](v151);
  v153 = v518 - v152;
  MEMORY[0x1EEE9AC00](v154);
  v167 = v518 - v166;
  switch((v579 >> 58) & 0x3C | (v579 >> 1) & 3)
  {
    case 1uLL:
      v345 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v346 = swift_getTupleTypeMetadata2();
      v347 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 1)
      {
        goto LABEL_168;
      }

      v348 = *(v346 + 48);
      v349 = *(v347 + v348);
      v350 = v347;
      v351 = swift_projectBox();
      v352 = *(v351 + v348);
      v353 = *(v345 + 16);
      v177 = v577;
      v353(v150, v350, v577);
      v353(v147, v351, v177);
      v354 = *(*(v576 + 40) + 8);
      v355 = v352;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v181 = *(v345 + 8);
        v181(v147, v177);
        v182 = v150;
        goto LABEL_59;
      }

      v491 = *(v345 + 8);
      v491(v147, v177);
      v492 = v150;
      goto LABEL_159;
    case 2uLL:
      v577 = v155;
      v301 = v163;
      v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v303 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 2)
      {
        goto LABEL_168;
      }

      v304 = *v303;
      v305 = v303[1];
      v306 = v302[16];
      v307 = v302[20];
      v308 = *(v303 + v307);
      v575 = *(v303 + v306);
      v576 = v308;
      v309 = v302[12];
      v310 = v303;
      v311 = swift_projectBox();
      v312 = *(v311 + v306);
      v313 = *v311;
      v314 = v311[1];
      v578 = *(v311 + v307);
      v579 = v312;
      v315 = *(v301 + 16);
      v316 = v310 + v309;
      v317 = v577;
      v315(v568, v316, v577);
      v318 = v311 + v309;
      v319 = v538;
      v315(v538, v318, v317);
      if (v304 == v313 && v305 == v314 || (sub_1CF9E8048() & 1) != 0)
      {
        v320 = v579;
        v321 = v568;
        if (sub_1CF9E59A8())
        {
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v322 = sub_1CF9E7568();

          v323 = *(v301 + 8);
          v324 = v577;
          v323(v319, v577);
          v323(v321, v324);
          v180 = v322 & (v576 == v578);
          return v180 & 1;
        }

        v500 = *(v301 + 8);
        v215 = v577;
        v500(v319, v577);
        v501 = v321;
      }

      else
      {
        v500 = *(v301 + 8);
        v215 = v577;
        v500(v319, v577);
        v501 = v568;
      }

      goto LABEL_163;
    case 3uLL:
      v327 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v328 = swift_getTupleTypeMetadata2();
      v329 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 3)
      {
        goto LABEL_168;
      }

      v330 = *(v328 + 48);
      v331 = *(v329 + v330);
      v332 = v329;
      v333 = swift_projectBox();
      v334 = *(v333 + v330);
      v335 = *(v327 + 16);
      v336 = v577;
      v335(v144, v332, v577);
      v335(v141, v333, v336);
      v337 = *(*(v576 + 40) + 8);
      v338 = v334;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v339 = *(v327 + 8);
        v339(v141, v336);
        v339(v144, v336);
        return v180 & 1;
      }

      v503 = *(v327 + 8);
      v503(v141, v336);
      v503(v144, v336);
      goto LABEL_168;
    case 4uLL:
      v261 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v262 = v571;
      v263 = swift_getTupleTypeMetadata2();
      v264 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 4)
      {
        goto LABEL_168;
      }

      v265 = *(v263 + 48);
      v579 = *(v264 + v265);
      v266 = v264;
      v267 = swift_projectBox();
      v268 = *(v267 + v265);
      v269 = *(TupleTypeMetadata2 + 48);
      v270 = *(v570 + 16);
      v271 = v552;
      v270(v552, v266, v262);
      v270(&v271[v269], v267, v262);
      v272 = *(v261 + 48);
      v273 = v577;
      if (v272(v271, 1, v577) == 1)
      {
        goto LABEL_70;
      }

      v578 = v268;
      v274 = &v549;
      goto LABEL_148;
    case 5uLL:
      v261 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v262 = v571;
      v369 = swift_getTupleTypeMetadata2();
      v370 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 5)
      {
        goto LABEL_168;
      }

      v371 = *(v369 + 48);
      v579 = *(v370 + v371);
      v372 = v370;
      v373 = swift_projectBox();
      v268 = *(v373 + v371);
      v269 = *(TupleTypeMetadata2 + 48);
      v270 = *(v570 + 16);
      v271 = v553;
      v270(v553, v372, v262);
      v270(&v271[v269], v373, v262);
      v272 = *(v261 + 48);
      v273 = v577;
      if (v272(v271, 1, v577) != 1)
      {
        v578 = v268;
        v274 = v550;
LABEL_148:
        v504 = *(v274 - 32);
        v270(v504, v271, v262);
        if (v272(&v271[v269], 1, v273) == 1)
        {
          (*(v261 + 8))(v504, v273);
          goto LABEL_150;
        }

        v505 = v261;
        v506 = v518[0];
        (*(v261 + 32))(v518[0], &v271[v269], v273);
        v507 = *(*(v576 + 40) + 8);
        v508 = v578;
        v509 = v578;
        v510 = sub_1CF9E6868();
        v511 = *(v505 + 8);
        v511(v506, v273);
        v512 = v504;
        v268 = v508;
        v511(v512, v273);
        (*(v570 + 8))(v271, v262);
        if (v510)
        {
          goto LABEL_152;
        }

LABEL_168:
        v180 = 0;
        return v180 & 1;
      }

LABEL_70:
      if (v272(&v271[v269], 1, v273) != 1)
      {
LABEL_150:
        (*(v519 + 8))(v271, TupleTypeMetadata2);
        goto LABEL_168;
      }

      v374 = *(v570 + 8);
      v375 = v268;
      v374(v271, v262);
LABEL_152:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v180 = sub_1CF9E7568();

      return v180 & 1;
    case 6uLL:
      v190 = v155;
      v191 = v163;
      v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v389 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 6)
      {
        goto LABEL_168;
      }

      v390 = *(v388 + 48);
      v391 = *(v389 + v390);
      v392 = v389;
      v197 = swift_projectBox();
      v198 = *(v197 + v390);
      v199 = *(v191 + 16);
      v200 = v535;
      v199(v535, v392, v190);
      v201 = &v563;
      goto LABEL_80;
    case 7uLL:
      v190 = v155;
      v191 = v163;
      v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v341 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 7)
      {
        goto LABEL_168;
      }

      v342 = *(v340 + 48);
      v343 = *(v341 + v342);
      v344 = v341;
      v197 = swift_projectBox();
      v198 = *(v197 + v342);
      v199 = *(v191 + 16);
      v200 = v537;
      v199(v537, v344, v190);
      v201 = &v565;
      goto LABEL_80;
    case 8uLL:
      v406 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v407 = swift_getTupleTypeMetadata2();
      v408 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 8)
      {
        goto LABEL_168;
      }

      v409 = *(v407 + 48);
      v410 = *(v408 + v409);
      v411 = v408;
      v412 = swift_projectBox();
      v413 = *(v412 + v409);
      v414 = *(v406 + 16);
      v415 = v577;
      v414(v136, v411, v577);
      v414(v133, v412, v415);
      v416 = *(*(v576 + 40) + 8);
      v417 = v413;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v418 = *(v406 + 8);
        v418(v133, v415);
        v418(v136, v415);
        return v180 & 1;
      }

      v513 = *(v406 + 8);
      v513(v133, v415);
      v513(v136, v415);
      goto LABEL_168;
    case 9uLL:
      v285 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v286 = swift_getTupleTypeMetadata2();
      v287 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 9)
      {
        goto LABEL_168;
      }

      v288 = *(v286 + 48);
      v289 = *(v287 + v288);
      v290 = v287;
      v291 = swift_projectBox();
      v292 = *(v291 + v288);
      v293 = *(v285 + 16);
      v294 = v130;
      v295 = v290;
      v296 = v577;
      v293(v130, v295, v577);
      v293(v127, v291, v296);
      v297 = *(*(v576 + 40) + 8);
      v298 = v292;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v299 = *(v285 + 8);
        v299(v127, v296);
        v299(v294, v296);
        return v180 & 1;
      }

      v502 = *(v285 + 8);
      v502(v127, v296);
      v502(v130, v296);
      goto LABEL_168;
    case 0xAuLL:
      v217 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v400 = swift_getTupleTypeMetadata2();
      v401 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0xA)
      {
        goto LABEL_168;
      }

      v402 = *(v400 + 48);
      v403 = *(v401 + v402);
      v404 = v401;
      v223 = swift_projectBox();
      v224 = *(v223 + v402);
      v225 = *(v217 + 16);
      v226 = v520;
      v405 = v404;
      v227 = v577;
      v225(v520, v405, v577);
      v228 = &v554;
      goto LABEL_103;
    case 0xBuLL:
      v229 = v578;
      if (((v229 >> 58) & 0x3C | (v229 >> 1) & 3) != 0xB)
      {
        goto LABEL_168;
      }

      goto LABEL_123;
    case 0xCuLL:
      v217 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v280 = swift_getTupleTypeMetadata2();
      v281 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0xC)
      {
        goto LABEL_168;
      }

      v282 = *(v280 + 48);
      v283 = *(v281 + v282);
      v284 = v281;
      v223 = swift_projectBox();
      v224 = *(v223 + v282);
      v225 = *(v217 + 16);
      v226 = v525;
      v227 = v577;
      v225(v525, v284, v577);
      v228 = &v555;
      goto LABEL_103;
    case 0xDuLL:
      v217 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v383 = swift_getTupleTypeMetadata2();
      v384 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0xD)
      {
        goto LABEL_168;
      }

      v385 = *(v383 + 48);
      v386 = *(v384 + v385);
      v387 = v384;
      v223 = swift_projectBox();
      v224 = *(v223 + v385);
      v225 = *(v217 + 16);
      v226 = v529;
      v227 = v577;
      v225(v529, v387, v577);
      v228 = &v559;
      goto LABEL_103;
    case 0xEuLL:
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0xE)
      {
        goto LABEL_168;
      }

      v254 = *((v579 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v255 = *((v578 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if ((sub_1CF6BEDC4(*((v579 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v578 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_121;
    case 0xFuLL:
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0xF)
      {
        goto LABEL_168;
      }

      v325 = *((v579 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v326 = *((v578 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if ((sub_1CF6BF014(*((v579 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v578 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_121;
    case 0x10uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v190 = v575;
      v242 = swift_getTupleTypeMetadata2();
      v243 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x10)
      {
        goto LABEL_168;
      }

      v244 = *(v242 + 48);
      v245 = *(v243 + v244);
      v246 = v243;
      v247 = swift_projectBox();
      v248 = *(v247 + v244);
      v191 = v574;
      v249 = *(v574 + 16);
      v200 = v555;
      v249(v555, v246, v190);
      v250 = &v582;
      goto LABEL_113;
    case 0x11uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v190 = v575;
      v356 = swift_getTupleTypeMetadata2();
      v357 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x11)
      {
        goto LABEL_168;
      }

      v358 = *(v356 + 48);
      v359 = *(v357 + v358);
      v360 = v357;
      v247 = swift_projectBox();
      v248 = *(v247 + v358);
      v191 = v574;
      v249 = *(v574 + 16);
      v200 = v559;
      v249(v559, v360, v190);
      v250 = &v584;
      goto LABEL_113;
    case 0x12uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v190 = v575;
      v395 = swift_getTupleTypeMetadata2();
      v396 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x12)
      {
        goto LABEL_168;
      }

      v397 = *(v395 + 48);
      v398 = *(v396 + v397);
      v399 = v396;
      v247 = swift_projectBox();
      v248 = *(v247 + v397);
      v191 = v574;
      v249 = *(v574 + 16);
      v200 = v562[0];
      v249(v562[0], v399, v190);
      v250 = &v586;
      goto LABEL_113;
    case 0x13uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v190 = v575;
      v458 = swift_getTupleTypeMetadata2();
      v459 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x13)
      {
        goto LABEL_168;
      }

      v460 = *(v458 + 48);
      v461 = *(v459 + v460);
      v462 = v459;
      v247 = swift_projectBox();
      v248 = *(v247 + v460);
      v191 = v574;
      v249 = *(v574 + 16);
      v200 = v563;
      v249(v563, v462, v190);
      v250 = &v587;
LABEL_113:
      v251 = *(v250 - 32);
      v249(v251, v247, v190);
      v393 = v248;
      if ((sub_1CF024490(v200, v251, v573, v577) & 1) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_82;
    case 0x14uLL:
      v190 = v155;
      v191 = v163;
      v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v365 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x14)
      {
        goto LABEL_168;
      }

      v366 = *(v364 + 48);
      v367 = *(v365 + v366);
      v368 = v365;
      v197 = swift_projectBox();
      v198 = *(v197 + v366);
      v199 = *(v191 + 16);
      v200 = v540;
      v199(v540, v368, v190);
      v201 = &v568;
      goto LABEL_80;
    case 0x15uLL:
      v230 = v575;
      v376 = swift_getTupleTypeMetadata2();
      v377 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x15)
      {
        goto LABEL_168;
      }

      v378 = *(v376 + 48);
      v234 = *(v377 + v378);
      v379 = v377;
      v236 = swift_projectBox();
      v237 = *(v236 + v378);
      v238 = v574;
      v239 = *(v574 + 16);
      v240 = v556;
      v239(v556, v379, v230);
      v241 = &v583;
      goto LABEL_74;
    case 0x16uLL:
      v217 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v435 = swift_getTupleTypeMetadata2();
      v436 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x16)
      {
        goto LABEL_168;
      }

      v437 = *(v435 + 48);
      v438 = *(v436 + v437);
      v439 = v436;
      v223 = swift_projectBox();
      v224 = *(v223 + v437);
      v225 = *(v217 + 16);
      v226 = v531;
      v227 = v577;
      v225(v531, v439, v577);
      v228 = v561;
      goto LABEL_103;
    case 0x17uLL:
      v300 = v578;
      if (((v300 >> 58) & 0x3C | (v300 >> 1) & 3) == 0x17)
      {
        goto LABEL_120;
      }

      goto LABEL_168;
    case 0x18uLL:
      v300 = v578;
      if (((v300 >> 58) & 0x3C | (v300 >> 1) & 3) != 0x18)
      {
        goto LABEL_168;
      }

      goto LABEL_120;
    case 0x19uLL:
      v300 = v578;
      if (((v300 >> 58) & 0x3C | (v300 >> 1) & 3) != 0x19)
      {
        goto LABEL_168;
      }

LABEL_120:
      v479 = *((v579 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v480 = *((v300 & 0xFFFFFFFFFFFFFF9) + 0x10);
LABEL_121:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v180 = sub_1CF9E7568();
      return v180 & 1;
    case 0x1AuLL:
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x1A)
      {
        goto LABEL_168;
      }

      v493 = *((v579 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v494 = *((v579 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v495 = *((v578 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v496 = *((v578 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v493)
      {
        if (!v495)
        {
          goto LABEL_168;
        }

        sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
        v497 = v495;
        v498 = v493;
        v499 = sub_1CF9E7568();

        if ((v499 & 1) == 0)
        {
          goto LABEL_168;
        }
      }

      else if (v495)
      {
        goto LABEL_168;
      }

      v180 = v494 == v496;
      return v180 & 1;
    case 0x1BuLL:
      v229 = v578;
      if (((v229 >> 58) & 0x3C | (v229 >> 1) & 3) != 0x1B)
      {
        goto LABEL_168;
      }

      goto LABEL_123;
    case 0x1CuLL:
      v229 = v578;
      if (((v229 >> 58) & 0x3C | (v229 >> 1) & 3) == 0x1C)
      {
        goto LABEL_123;
      }

      goto LABEL_168;
    case 0x1DuLL:
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x1D)
      {
        goto LABEL_168;
      }

      v183 = v164;
      v481 = swift_projectBox();
      v185 = swift_projectBox();
      v186 = *(v183 + 16);
      v187 = v521;
      v188 = v577;
      v186(v521, v481, v577);
      v189 = &v553;
      goto LABEL_126;
    case 0x1EuLL:
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x1E)
      {
        goto LABEL_168;
      }

      v419 = *((v579 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v420 = *((v578 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v420);
      v180 = sub_1CF668FD8(v419, v420, v564, v565, v566, v567);
      sub_1CF66DD30(v420);
      return v180 & 1;
    case 0x1FuLL:
      v229 = v578;
      if (((v229 >> 58) & 0x3C | (v229 >> 1) & 3) != 0x1F)
      {
        goto LABEL_168;
      }

LABEL_123:
      v180 = *((v579 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v229 & 0xFFFFFFFFFFFFFF9) + 0x10);
      return v180 & 1;
    case 0x20uLL:
      v202 = v155;
      v203 = v163;
      v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v422 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x20)
      {
        goto LABEL_168;
      }

      v423 = *(v421 + 48);
      LODWORD(v579) = *(v422 + v423);
      v424 = *(v421 + 64);
      v577 = *(v422 + v424);
      v425 = v422;
      v426 = swift_projectBox();
      LODWORD(v578) = *(v426 + v423);
      v427 = *(v426 + v424);
      v211 = v203;
      v428 = *(v203 + 16);
      v213 = v544;
      v429 = v425;
      v215 = v202;
      v428(v544, v429, v202);
      v430 = v542;
      v428(v542, v426, v202);
      v431 = v427;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_137;
      }

      if (v579 == v578)
      {
        goto LABEL_95;
      }

      goto LABEL_131;
    case 0x21uLL:
      v190 = v155;
      v191 = v163;
      v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v257 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x21)
      {
        goto LABEL_168;
      }

      v258 = *(v256 + 48);
      v259 = *(v257 + v258);
      v260 = v257;
      v197 = swift_projectBox();
      v198 = *(v197 + v258);
      v199 = *(v191 + 16);
      v200 = v543;
      v199(v543, v260, v190);
      v201 = &v570;
      goto LABEL_80;
    case 0x22uLL:
      v230 = v575;
      v231 = swift_getTupleTypeMetadata2();
      v232 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x22)
      {
        goto LABEL_168;
      }

      v233 = *(v231 + 48);
      v234 = *(v232 + v233);
      v235 = v232;
      v236 = swift_projectBox();
      v237 = *(v236 + v233);
      v238 = v574;
      v239 = *(v574 + 16);
      v240 = v560;
      v239(v560, v235, v230);
      v241 = &v585;
LABEL_74:
      v380 = *(v241 - 32);
      v239(v380, v236, v230);
      v381 = sub_1CF024490(v240, v380, v573, v577);
      v382 = *(v238 + 8);
      v382(v380, v230);
      v382(v240, v230);
      if ((v381 & 1) == 0)
      {
        goto LABEL_168;
      }

      v180 = v234 == v237;
      return v180 & 1;
    case 0x23uLL:
      v202 = v155;
      v203 = v163;
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v205 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x23)
      {
        goto LABEL_168;
      }

      v206 = *(v204 + 48);
      v579 = *(v205 + v206);
      v207 = *(v204 + 64);
      v577 = *(v205 + v207);
      v208 = v205;
      v209 = swift_projectBox();
      v578 = *(v209 + v206);
      v210 = *(v209 + v207);
      v211 = v203;
      v212 = *(v203 + 16);
      v213 = v548;
      v214 = v208;
      v215 = v202;
      v212(v548, v214, v202);
      v216 = &v575;
      goto LABEL_129;
    case 0x24uLL:
      v217 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v218 = swift_getTupleTypeMetadata2();
      v219 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x24)
      {
        goto LABEL_168;
      }

      v220 = *(v218 + 48);
      v221 = *(v219 + v220);
      v222 = v219;
      v223 = swift_projectBox();
      v224 = *(v223 + v220);
      v225 = *(v217 + 16);
      v226 = v533;
      v227 = v577;
      v225(v533, v222, v577);
      v228 = v562;
LABEL_103:
      v440 = *(v228 - 32);
      v225(v440, v223, v227);
      v441 = *(*(v576 + 40) + 8);
      v442 = v224;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v443 = *(v217 + 8);
        v443(v440, v227);
        v443(v226, v227);
        return v180 & 1;
      }

      v444 = *(v217 + 8);
      v444(v440, v227);
      v444(v226, v227);
      goto LABEL_168;
    case 0x25uLL:
      v190 = v155;
      v191 = v163;
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v193 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x25)
      {
        goto LABEL_168;
      }

      v194 = *(v192 + 48);
      v195 = *(v193 + v194);
      v196 = v193;
      v197 = swift_projectBox();
      v198 = *(v197 + v194);
      v199 = *(v191 + 16);
      v200 = v547;
      v199(v547, v196, v190);
      v201 = &v574;
      goto LABEL_80;
    case 0x26uLL:
      v202 = v155;
      v203 = v163;
      v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v486 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x26)
      {
        goto LABEL_168;
      }

      v487 = *(v485 + 48);
      v579 = *(v486 + v487);
      v488 = *(v485 + 64);
      v577 = *(v486 + v488);
      v489 = v486;
      v209 = swift_projectBox();
      v578 = *(v209 + v487);
      v210 = *(v209 + v488);
      v211 = v203;
      v212 = *(v203 + 16);
      v213 = v550[0];
      v490 = v489;
      v215 = v202;
      v212(v550[0], v490, v202);
      v216 = &v578;
LABEL_129:
      v430 = *(v216 - 32);
      v212(v430, v209, v202);
      v431 = v210;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
LABEL_137:

        v500 = *(v211 + 8);
        v500(v430, v215);
        v501 = v213;
        goto LABEL_163;
      }

      if (v579 == v578)
      {
LABEL_95:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v432 = *(v203 + 8);
        v432(v430, v202);
        v433 = v213;
        goto LABEL_110;
      }

LABEL_131:

      v491 = *(v203 + 8);
      v491(v430, v202);
      v492 = v213;
      goto LABEL_166;
    case 0x27uLL:
      v577 = v161;
      v202 = v155;
      v445 = v163;
      v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v447 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x27)
      {
        goto LABEL_168;
      }

      v448 = *(v446 + 48);
      v579 = *(v447 + v448);
      v449 = *(v446 + 64);
      v576 = *(v447 + v449);
      v450 = v447;
      v451 = swift_projectBox();
      v578 = *(v451 + v448);
      v452 = *(v451 + v449);
      v453 = *(v445 + 16);
      v454 = v577;
      v455 = v450;
      v215 = v202;
      v453(v577, v455, v202);
      v456 = v551;
      v453(v551, v451, v202);
      v457 = v452;
      if ((sub_1CF9E59A8() & 1) == 0)
      {

        v500 = *(v445 + 8);
        v500(v456, v202);
        goto LABEL_156;
      }

      if (v579 == v578)
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v432 = *(v445 + 8);
        v432(v456, v202);
        v433 = v577;
LABEL_110:
        v432(v433, v202);
        return v180 & 1;
      }

      v491 = *(v445 + 8);
      v491(v456, v202);
      v492 = v577;
LABEL_166:
      v514 = v202;
      goto LABEL_167;
    case 0x28uLL:
      v200 = v162;
      v190 = v155;
      v191 = v163;
      v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v276 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x28)
      {
        goto LABEL_168;
      }

      v277 = *(v275 + 48);
      v278 = *(v276 + v277);
      v279 = v276;
      v197 = swift_projectBox();
      v198 = *(v197 + v277);
      v199 = *(v191 + 16);
      v199(v200, v279, v190);
      v201 = v580;
LABEL_80:
      v251 = *(v201 - 32);
      goto LABEL_81;
    case 0x29uLL:
      v251 = v160;
      v200 = v159;
      v190 = v155;
      v191 = v163;
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v253 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) == 0x29)
      {
        goto LABEL_65;
      }

      goto LABEL_168;
    case 0x2AuLL:
      v575 = v157;
      v576 = v165;
      v577 = v155;
      v464 = v163;
      v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v466 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x2A)
      {
        goto LABEL_168;
      }

      v467 = *(v465 + 48);
      v579 = *(v466 + v467);
      v468 = *(v465 + 64);
      v574 = *(v466 + v468);
      v469 = v466;
      v470 = swift_projectBox();
      v471 = *(v470 + v467);
      v472 = *(v470 + v468);
      v473 = *(v464 + 16);
      v454 = v576;
      v474 = v469;
      v215 = v577;
      v473(v576, v474, v577);
      v475 = v575;
      v473(v575, v470, v215);
      v476 = v472;
      if (sub_1CF9E59A8())
      {
        if (v579 == v471)
        {
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v180 = sub_1CF9E7568();

          v477 = *(v464 + 8);
          v478 = v577;
          v477(v575, v577);
          v477(v576, v478);
          return v180 & 1;
        }

        v516 = *(v464 + 8);
        v517 = v577;
        v516(v575, v577);
        v516(v576, v517);
      }

      else
      {

        v500 = *(v464 + 8);
        v500(v475, v215);
LABEL_156:
        v501 = v454;
LABEL_163:
        v500(v501, v215);
      }

      goto LABEL_168;
    case 0x2BuLL:
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x2B)
      {
        goto LABEL_168;
      }

      v183 = v164;
      v184 = swift_projectBox();
      v185 = swift_projectBox();
      v186 = *(v183 + 16);
      v187 = v526;
      v188 = v577;
      v186(v526, v184, v577);
      v189 = &v558;
LABEL_126:
      v482 = *(v189 - 32);
      v186(v482, v185, v188);
      v483 = *(*(v576 + 40) + 8);
      v180 = sub_1CF9E6868();
      v484 = *(v183 + 8);
      v484(v482, v188);
      v484(v187, v188);
      return v180 & 1;
    case 0x2CuLL:
      v251 = v158;
      v200 = v156;
      v190 = v155;
      v191 = v163;
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v253 = swift_projectBox();
      if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x2C)
      {
        goto LABEL_168;
      }

LABEL_65:
      v361 = *(v252 + 48);
      v362 = *(v253 + v361);
      v363 = v253;
      v197 = swift_projectBox();
      v198 = *(v197 + v361);
      v199 = *(v191 + 16);
      v199(v200, v363, v190);
LABEL_81:
      v199(v251, v197, v190);
      v393 = v198;
      if (sub_1CF9E59A8())
      {
LABEL_82:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v394 = *(v191 + 8);
        v394(v251, v190);
        v394(v200, v190);
        return v180 & 1;
      }

LABEL_114:

      v463 = *(v191 + 8);
      v463(v251, v190);
      v463(v200, v190);
      goto LABEL_168;
    case 0x2DuLL:
      if (v579 == 0xB000000000000002)
      {
        if (((v578 >> 58) & 0x3C | (v578 >> 1) & 3) != 0x2D || v578 != 0xB000000000000002)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v434 = (v578 >> 58) & 0x3C | (v578 >> 1) & 3;
        if (v579 == 0xB00000000000000ALL)
        {
          if (v434 != 45 || v578 != 0xB00000000000000ALL)
          {
            goto LABEL_168;
          }
        }

        else if (v434 != 45 || v578 != 0xB000000000000012)
        {
          goto LABEL_168;
        }
      }

      v180 = 1;
      return v180 & 1;
    default:
      v168 = v164;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v169 = swift_getTupleTypeMetadata2();
      v170 = swift_projectBox();
      if ((v578 >> 58) & 0x3C | (v578 >> 1) & 3)
      {
        goto LABEL_168;
      }

      v171 = *(v169 + 48);
      v172 = *(v170 + v171);
      v173 = v170;
      v174 = swift_projectBox();
      v175 = *(v174 + v171);
      v176 = *(v168 + 16);
      v177 = v577;
      v176(v167, v173, v577);
      v176(v153, v174, v177);
      v178 = *(*(v576 + 40) + 8);
      v179 = v175;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v180 = sub_1CF9E7568();

        v181 = *(v168 + 8);
        v181(v153, v177);
        v182 = v167;
LABEL_59:
        v181(v182, v177);
        return v180 & 1;
      }

      v491 = *(v168 + 8);
      v491(v153, v177);
      v492 = v167;
LABEL_159:
      v514 = v177;
LABEL_167:
      v491(v492, v514);
      goto LABEL_168;
  }
}

void sub_1CF66C37C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v183 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v184 = AssociatedTypeWitness;
  v185 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v187 = swift_getAssociatedConformanceWitness();
  v181 = v187;
  v13 = type metadata accessor for ReconciliationID();
  v179 = *(v13 - 8);
  v180 = v13;
  v14 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v178 = &v176 - v15;
  v16 = sub_1CF9E75D8();
  v177 = *(v16 - 8);
  v17 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v176 - v18;
  v20 = sub_1CF9E5A58();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v176 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v28 = *(*(v12 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v29);
  v182 = a2;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v124 = swift_projectBox();
      v40 = *(v124 + *(TupleTypeMetadata2 + 48));
      (*(v36 + 16))(v37, v124, v12);
      v41 = 1;
      goto LABEL_49;
    case 2uLL:
      v99 = v30;
      v100 = v33;
      v101 = v32;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v103 = swift_projectBox();
      v104 = *v103;
      v105 = *(v103 + 1);
      v106 = v102[12];
      v107 = *&v103[v102[16]];
      v108 = *&v103[v102[20]];
      (*(v100 + 16))(v101, &v103[v106], v99);
      MEMORY[0x1D386A470](2);

      v109 = v107;
      sub_1CF9E69C8();

      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      sub_1CF9E6758();
      sub_1CF9E7578();
      MEMORY[0x1D386A470](v108);

      (*(v100 + 8))(v101, v99);
      return;
    case 3uLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v119 = swift_getTupleTypeMetadata2();
      v120 = swift_projectBox();
      v40 = *(v120 + *(v119 + 48));
      (*(v36 + 16))(v37, v120, v12);
      v41 = 3;
      goto LABEL_49;
    case 4uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v85 = swift_getTupleTypeMetadata2();
      v86 = swift_projectBox();
      v87 = *(v86 + *(v85 + 48));
      v88 = v177;
      (*(v177 + 16))(v19, v86, v16);
      v89 = 4;
      goto LABEL_33;
    case 5uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v131 = swift_getTupleTypeMetadata2();
      v132 = swift_projectBox();
      v87 = *(v132 + *(v131 + 48));
      v88 = v177;
      (*(v177 + 16))(v19, v132, v16);
      v89 = 5;
LABEL_33:
      MEMORY[0x1D386A470](v89);
      v133 = *(v181 + 40);
      v134 = v87;
      sub_1CF9E75E8();
      sub_1CF9E7578();
      (*(v88 + 8))(v19, v16);
      goto LABEL_39;
    case 6uLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v141 = swift_projectBox();
      v51 = *(v141 + *(v140 + 48));
      (*(v47 + 16))(v48, v141, v46);
      v52 = 6;
      goto LABEL_38;
    case 7uLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v122 = swift_projectBox();
      v51 = *(v122 + *(v121 + 48));
      (*(v47 + 16))(v48, v122, v46);
      v52 = 7;
      goto LABEL_38;
    case 8uLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v146 = swift_getTupleTypeMetadata2();
      v147 = swift_projectBox();
      v40 = *(v147 + *(v146 + 48));
      (*(v36 + 16))(v37, v147, v12);
      v41 = 8;
      goto LABEL_49;
    case 9uLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v94 = swift_getTupleTypeMetadata2();
      v95 = swift_projectBox();
      v40 = *(v95 + *(v94 + 48));
      (*(v36 + 16))(v37, v95, v12);
      v41 = 9;
      goto LABEL_49;
    case 0xAuLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v144 = swift_getTupleTypeMetadata2();
      v145 = swift_projectBox();
      v40 = *(v145 + *(v144 + 48));
      (*(v36 + 16))(v37, v145, v12);
      v41 = 10;
      goto LABEL_49;
    case 0xBuLL:
      v62 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v63 = 11;
      goto LABEL_57;
    case 0xCuLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v92 = swift_getTupleTypeMetadata2();
      v93 = swift_projectBox();
      v40 = *(v93 + *(v92 + 48));
      (*(v36 + 16))(v37, v93, v12);
      v41 = 12;
      goto LABEL_49;
    case 0xDuLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v138 = swift_getTupleTypeMetadata2();
      v139 = swift_projectBox();
      v40 = *(v139 + *(v138 + 48));
      (*(v36 + 16))(v37, v139, v12);
      v41 = 13;
      goto LABEL_49;
    case 0xEuLL:
      v80 = v183;
      v81 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v82 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](14, v35);
      sub_1CF6655E8(v80, v81);
      sub_1CF9E7578();
      return;
    case 0xFuLL:
      v110 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v182 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v111 = v30;
      v112 = v33;
      MEMORY[0x1D386A470](15, v35);
      MEMORY[0x1D386A470](*(v110 + 16));
      v113 = *(v110 + 16);
      if (v113)
      {
        v116 = *(v112 + 16);
        v114 = v112 + 16;
        v115 = v116;
        v117 = v110 + ((*(v114 + 64) + 32) & ~*(v114 + 64));
        v118 = *(v114 + 56);
        do
        {
          v115(v26, v117, v111);
          sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
          sub_1CF9E6758();
          (*(v114 - 8))(v26, v111);
          v117 += v118;
          --v113;
        }

        while (v113);
      }

      sub_1CF9E7578();
      return;
    case 0x10uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v71 = v180;
      v72 = swift_getTupleTypeMetadata2();
      v73 = swift_projectBox();
      v74 = *(v73 + *(v72 + 48));
      v76 = v178;
      v75 = v179;
      (*(v179 + 16))(v178, v73, v71);
      v77 = 16;
      goto LABEL_52;
    case 0x11uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v71 = v180;
      v125 = swift_getTupleTypeMetadata2();
      v126 = swift_projectBox();
      v74 = *(v126 + *(v125 + 48));
      v76 = v178;
      v75 = v179;
      (*(v179 + 16))(v178, v126, v71);
      v77 = 17;
      goto LABEL_52;
    case 0x12uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v71 = v180;
      v142 = swift_getTupleTypeMetadata2();
      v143 = swift_projectBox();
      v74 = *(v143 + *(v142 + 48));
      v76 = v178;
      v75 = v179;
      (*(v179 + 16))(v178, v143, v71);
      v77 = 18;
      goto LABEL_52;
    case 0x13uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v71 = v180;
      v162 = swift_getTupleTypeMetadata2();
      v163 = swift_projectBox();
      v74 = *(v163 + *(v162 + 48));
      v76 = v178;
      v75 = v179;
      (*(v179 + 16))(v178, v163, v71);
      v77 = 19;
LABEL_52:
      v164 = v183;
      MEMORY[0x1D386A470](v77);
      v165 = v74;
      sub_1CF01D348(v164, v71);
      sub_1CF9E7578();
      (*(v75 + 8))(v76, v71);

      return;
    case 0x14uLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v130 = swift_projectBox();
      v51 = *(v130 + *(v129 + 48));
      (*(v47 + 16))(v48, v130, v46);
      v52 = 20;
      goto LABEL_38;
    case 0x15uLL:
      v64 = v180;
      v135 = swift_getTupleTypeMetadata2();
      v136 = swift_projectBox();
      v67 = *(v136 + *(v135 + 48));
      v69 = v178;
      v68 = v179;
      (*(v179 + 16))(v178, v136, v64);
      v70 = 21;
      goto LABEL_35;
    case 0x16uLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v156 = swift_getTupleTypeMetadata2();
      v157 = swift_projectBox();
      v40 = *(v157 + *(v156 + 48));
      (*(v36 + 16))(v37, v157, v12);
      v41 = 22;
      goto LABEL_49;
    case 0x17uLL:
      v168 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = 23;
      goto LABEL_55;
    case 0x18uLL:
      v98 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = 24;
      goto LABEL_55;
    case 0x19uLL:
      v96 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = 25;
LABEL_55:
      MEMORY[0x1D386A470](v97, v35);
      sub_1CF9E7578();
      return;
    case 0x1AuLL:
      v174 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v173 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](26, v35);
      sub_1CF9E81F8();
      if (v174)
      {
        v175 = v174;
        sub_1CF9E7578();
      }

      v155 = v173;
      goto LABEL_58;
    case 0x1BuLL:
      v62 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v63 = 27;
      goto LABEL_57;
    case 0x1CuLL:
      v62 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v63 = 28;
      goto LABEL_57;
    case 0x1DuLL:
      v42 = v34;
      v43 = &v176 - v31;
      v169 = swift_projectBox();
      (*(v42 + 16))(v43, v169, v12);
      v45 = 30;
      goto LABEL_60;
    case 0x1EuLL:
      v148 = v183;
      v149 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](32, v35);
      sub_1CEFD09A0(v149);
      sub_1CF66C37C(v148, v149, a4, a3, a6, a5);
      sub_1CF66DD30(v149);
      return;
    case 0x1FuLL:
      v62 = *((v182 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v63 = 33;
LABEL_57:
      MEMORY[0x1D386A470](v63, v35);
      v155 = v62;
      goto LABEL_58;
    case 0x20uLL:
      v53 = v30;
      v54 = v33;
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v151 = swift_projectBox();
      v152 = *(v151 + *(v150 + 48));
      v153 = *(v151 + *(v150 + 64));
      (*(v54 + 16))(v23, v151, v53);
      MEMORY[0x1D386A470](35);
      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v154 = v153;
      sub_1CF9E6758();
      sub_1CF9E81F8();
      goto LABEL_63;
    case 0x21uLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v84 = swift_projectBox();
      v51 = *(v84 + *(v83 + 48));
      (*(v47 + 16))(v48, v84, v46);
      v52 = 36;
      goto LABEL_38;
    case 0x22uLL:
      v64 = v180;
      v65 = swift_getTupleTypeMetadata2();
      v66 = swift_projectBox();
      v67 = *(v66 + *(v65 + 48));
      v69 = v178;
      v68 = v179;
      (*(v179 + 16))(v178, v66, v64);
      v70 = 37;
LABEL_35:
      v137 = v183;
      MEMORY[0x1D386A470](v70);
      sub_1CF01D348(v137, v64);
      MEMORY[0x1D386A470](v67);
      (*(v68 + 8))(v69, v64);
      return;
    case 0x23uLL:
      v53 = v30;
      v54 = v33;
      v23 = v32;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v56 = swift_projectBox();
      v57 = *(v56 + *(v55 + 48));
      v58 = *(v56 + *(v55 + 64));
      (*(v54 + 16))(v23, v56, v53);
      v59 = 38;
      goto LABEL_62;
    case 0x24uLL:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v60 = swift_getTupleTypeMetadata2();
      v61 = swift_projectBox();
      v40 = *(v61 + *(v60 + 48));
      (*(v36 + 16))(v37, v61, v12);
      v41 = 39;
      goto LABEL_49;
    case 0x25uLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v50 = swift_projectBox();
      v51 = *(v50 + *(v49 + 48));
      (*(v47 + 16))(v48, v50, v46);
      v52 = 40;
      goto LABEL_38;
    case 0x26uLL:
      v53 = v30;
      v54 = v33;
      v23 = v32;
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v172 = swift_projectBox();
      v57 = *(v172 + *(v171 + 48));
      v58 = *(v172 + *(v171 + 64));
      (*(v54 + 16))(v23, v172, v53);
      v59 = 41;
      goto LABEL_62;
    case 0x27uLL:
      v53 = v30;
      v54 = v33;
      v23 = v32;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v161 = swift_projectBox();
      v57 = *(v161 + *(v160 + 48));
      v58 = *(v161 + *(v160 + 64));
      (*(v54 + 16))(v23, v161, v53);
      v59 = 42;
      goto LABEL_62;
    case 0x28uLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v91 = swift_projectBox();
      v51 = *(v91 + *(v90 + 48));
      (*(v47 + 16))(v48, v91, v46);
      v52 = 43;
      goto LABEL_38;
    case 0x29uLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v128 = swift_projectBox();
      v51 = *(v128 + *(v127 + 48));
      (*(v47 + 16))(v48, v128, v46);
      v52 = 44;
      goto LABEL_38;
    case 0x2AuLL:
      v53 = v30;
      v54 = v33;
      v23 = v32;
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v167 = swift_projectBox();
      v57 = *(v167 + *(v166 + 48));
      v58 = *(v167 + *(v166 + 64));
      (*(v54 + 16))(v23, v167, v53);
      v59 = 45;
LABEL_62:
      MEMORY[0x1D386A470](v59);
      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v154 = v58;
      sub_1CF9E6758();
      MEMORY[0x1D386A470](v57);
LABEL_63:
      sub_1CF9E7578();
      (*(v54 + 8))(v23, v53);

      break;
    case 0x2BuLL:
      v42 = v34;
      v43 = &v176 - v31;
      v44 = swift_projectBox();
      (*(v42 + 16))(v43, v44, v12);
      v45 = 46;
LABEL_60:
      MEMORY[0x1D386A470](v45);
      v170 = *(v181 + 40);
      sub_1CF9E6758();
      (*(v42 + 8))(v43, v12);
      break;
    case 0x2CuLL:
      v46 = v30;
      v47 = v33;
      v48 = v32;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v79 = swift_projectBox();
      v51 = *(v79 + *(v78 + 48));
      (*(v47 + 16))(v48, v79, v46);
      v52 = 47;
LABEL_38:
      MEMORY[0x1D386A470](v52);
      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v134 = v51;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v47 + 8))(v48, v46);
LABEL_39:

      break;
    case 0x2DuLL:
      if (v182 == 0xB000000000000002)
      {
        v155 = 29;
      }

      else if (v182 == 0xB00000000000000ALL)
      {
        v155 = 31;
      }

      else
      {
        v155 = 34;
      }

LABEL_58:
      MEMORY[0x1D386A470](v155, v35);
      break;
    default:
      v36 = v34;
      v37 = &v176 - v31;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v38 = swift_getTupleTypeMetadata2();
      v39 = swift_projectBox();
      v40 = *(v39 + *(v38 + 48));
      (*(v36 + 16))(v37, v39, v12);
      v41 = 0;
LABEL_49:
      MEMORY[0x1D386A470](v41);
      v158 = *(v181 + 40);
      v159 = v40;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v36 + 8))(v37, v12);

      break;
  }
}

uint64_t sub_1CF66DBFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E81D8();
  sub_1CF66C37C(v11, a1, a2, a3, a4, a5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF66DCB0(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E81D8();
  sub_1CF66C37C(v5, *v2, a2[2], a2[3], a2[4], a2[5]);
  return sub_1CF9E8228();
}

unint64_t sub_1CF66DD30(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CF66DD74()
{
  result = qword_1EC4C20F8;
  if (!qword_1EC4C20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C20F8);
  }

  return result;
}

uint64_t sub_1CF66DDC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CF66DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 112))
  {
    sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
  }

  v13 = *(a1 + 96);
  v14 = v13 & a3;
  v22 = *(a1 + 104);

  if (v14)
  {
    v26 = v13;
    v21 = a5;
    while (1)
    {
      v16 = v14 & -v14;
      v17 = sub_1CF67141C(v16, a1, a2, a4, a5, a6, a7);
      if (v7)
      {
        break;
      }

      if (v17)
      {
        v18 = -1;
        if ((v26 & v16) != 0)
        {
          v18 = ~v16;
        }

        v23 = *(a1 + 104);
        v24 = *(a1 + 96);
        v26 &= v18;
        *(a1 + 96) = v26;
        *(a1 + 104) = v22;
        v19 = *(a1 + 112);
        *(a1 + 112) = 0;
        sub_1CF03C530(v13, v22, 0);
        v20 = v19;
        a5 = v21;
        sub_1CF03D7A8(v24, v23, v20);
      }

      v15 = v14 == v16;
      v14 ^= v16;
      if (v15)
      {
        return;
      }
    }

    sub_1CF03D7A8(v13, v22, 0);
  }
}

uint64_t sub_1CF66E048(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v6 = v5;
  v69 = a4;
  v66 = a3;
  v65 = a2;
  v72 = a1;
  v7 = *v5;
  v8 = *(*v5 + 104);
  v9 = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v57 - v12;
  v13 = *(v7 + 96);
  v14 = *(v7 + 80);
  v15 = swift_getAssociatedTypeWitness();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v57 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v70.i64[0] = v15;
  v70.i64[1] = AssociatedTypeWitness;
  v71.i64[0] = AssociatedConformanceWitness;
  v71.i64[1] = v19;
  v20 = type metadata accessor for ReconciliationID();
  v21 = sub_1CF9E75D8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v57 - v23;
  v25.i64[0] = v14;
  v25.i64[1] = v9;
  v26.i64[0] = v13;
  v26.i64[1] = v8;
  v63 = v26;
  v64 = v25;
  v70 = v25;
  v71 = v26;
  type metadata accessor for ItemJob();
  v27 = v72;
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1CF03D760();
    v31 = (*(*v6 + 360))(v30, &v29[*(*v29 + 576)], *(v29 + 15), v65 & 1, v66, v69, v67);
  }

  else
  {
    v57 = AssociatedTypeWitness;
    v58 = v6;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    v35 = v69;
    v70 = vextq_s8(v64, v64, 8uLL);
    v71 = vextq_s8(v63, v63, 8uLL);
    type metadata accessor for Propagation.PropagationJob();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      v38 = sub_1CF03D760();
      v31 = (*(*v58 + 368))(v38, &v37[*(*v37 + 576)], *(v37 + 15), v32 & 1, v33, v35, v34);
    }

    else
    {
      (*(*v27 + 440))();
      if ((*(*(v20 - 8) + 48))(v24, 1, v20) == 1)
      {
        v31 = 0;
      }

      else if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v61;
        v41 = v62;
        v42 = v57;
        (*(v62 + 32))(v61, v24, v57);
        v43 = v72;
        v44 = sub_1CF03D760();
        v45 = v68;
        v46 = (*(*v58 + 368))(v44, v40, *(v43 + 120), v32 & 1, v33, v69, v34);
        if (v45)
        {
          v31 = (*(v41 + 8))(v40, v42);
        }

        else
        {
          v54 = v46;
          (*(v41 + 8))(v40, v42);
          v31 = v54;
        }
      }

      else
      {
        v47 = v59;
        v48 = v60;
        v49 = v15;
        (*(v60 + 32))(v59, v24, v15);
        v50 = v72;
        v51 = sub_1CF03D760();
        v52 = v68;
        v53 = (*(*v58 + 360))(v51, v47, *(v50 + 120), v32 & 1, v33, v69, v34);
        if (v52)
        {
          v31 = (*(v48 + 8))(v47, v49);
        }

        else
        {
          v55 = v47;
          v56 = v53;
          (*(v48 + 8))(v55, v49);
          v31 = v56;
        }
      }
    }
  }

  return v31 & 1;
}

uint64_t sub_1CF66E648()
{
  result = (*(*v0 + 136))();
  if (!v1 && result < 0)
  {

    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void *sub_1CF66E6E4(char **a1, char **a2, char *a3, char *a4)
{
  v6 = sub_1CF66FEF4(a1, a2, a3, a4);
  if (!v5)
  {
    if (v6[2])
    {
      v4 = v6[9];
      v7 = v6[12];
      v8 = v4;

      v9 = v4;

      if (v4)
      {
        v10 = sub_1CF9E57E8();
        v11 = [v10 userInfo];
        v12 = sub_1CF9E6638();

        if (*(v12 + 16) && (v13 = sub_1CEFE4328(0xD000000000000019, 0x80000001CFA54B10), (v14 & 1) != 0))
        {
          sub_1CEFD1104(*(v12 + 56) + 32 * v13, v16);

          sub_1CF0248E0(v16);
          return 0;
        }

        else
        {

          memset(v16, 0, sizeof(v16));
          sub_1CF0248E0(v16);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

uint64_t sub_1CF66E870()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 168);
  return sub_1CF0570E4(v0[5]);
}

uint64_t sub_1CF66E8D8()
{
  v0 = sub_1CF0529A8();
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_1CF66ECEC()
{
  v2 = (*(*v0 + 256))();
  if (!v1)
  {
    if (v2)
    {

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1CF66ED58()
{
  v2 = (*(*v0 + 264))();
  if (!v1)
  {
    if (v2)
    {

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1CF66FEF4(char **a1, char **a2, char *a3, char *a4)
{
  v116 = a4;
  v5 = v4;
  v114 = a2;
  v115 = a3;
  v118 = a1;
  v6 = *v4;
  v7 = v6[13];
  v8 = v6[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  v10 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v112 = &v103 - v11;
  v12 = v6[12];
  v13 = v6[10];
  v14 = swift_getAssociatedTypeWitness();
  v111 = *(v14 - 8);
  v15 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v103 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v108.i64[0] = v14;
  v108.i64[1] = AssociatedTypeWitness;
  v119.i64[0] = v14;
  v119.i64[1] = AssociatedTypeWitness;
  v104.i64[1] = AssociatedConformanceWitness;
  v120.i64[0] = AssociatedConformanceWitness;
  v120.i64[1] = v18;
  v104.i64[0] = v18;
  v19 = type metadata accessor for ReconciliationID();
  v20 = sub_1CF9E75D8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v103 - v22;
  v105 = v13;
  v24.i64[0] = v13;
  v106 = v12;
  v107 = v8;
  v24.i64[1] = v8;
  v25 = v118;
  v26.i64[0] = v12;
  v26.i64[1] = v7;
  v109 = v26;
  v110 = v24;
  v120 = v26;
  v119 = v24;
  type metadata accessor for ItemJob();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = *(*v27 + 576);
    v30 = sub_1CF03D760();
    v31 = v28 + v29;
    v32 = v115;
    v34 = v116;
    v33 = v117;
    v35 = v5;
    v36 = (*(*v5 + 384))(v31, v30, 0, 1, v114, v115, v116);
    if (!v33)
    {
      v121 = v36;
      MEMORY[0x1EEE9AC00](v36);
      v37 = v105;
      v38 = v106;
      v39 = v107;
      *(&v103 - 6) = v105;
      *(&v103 - 5) = v39;
      *(&v103 - 4) = v32;
      *(&v103 - 3) = v38;
      *(&v103 - 2) = v7;
      *(&v103 - 1) = v34;
      v117 = v40;
      KeyPath = swift_getKeyPath();
      v118 = &v103;
      MEMORY[0x1EEE9AC00](KeyPath);
      v42 = &v103 - 10;
      *(&v103 - 8) = v37;
      *(&v103 - 7) = v39;
      *(&v103 - 6) = v32;
      *(&v103 - 5) = v38;
      *(&v103 - 4) = v7;
      *(&v103 - 3) = v34;
      *(&v103 - 2) = v43;
      v119 = v108;
      v120.i64[0] = v104.i64[1];
      v120.i64[1] = v104.i64[0];
      type metadata accessor for ThrottlingKey();
      swift_getTupleTypeMetadata2();
      v44 = sub_1CF9E6E58();
      WitnessTable = swift_getWitnessTable();
      v47 = MEMORY[0x1E69E73E0];
      v48 = MEMORY[0x1E69E7410];
      v49 = sub_1CF677094;
LABEL_7:
      v35 = sub_1CF054A5C(v49, v42, v44, &type metadata for JobThrottle, v47, WitnessTable, v48, v46);
    }
  }

  else
  {
    v51 = v111;
    v50 = v112;
    v52 = v113;
    v119 = vextq_s8(v110, v110, 8uLL);
    v120 = vextq_s8(v109, v109, 8uLL);
    type metadata accessor for Propagation.PropagationJob();
    v53 = swift_dynamicCastClass();
    if (v53)
    {
      v54 = *(*v53 + 576);
      v55 = v53;
      v56 = sub_1CF03D760();
      v57 = v115;
      v59 = v116;
      v58 = v117;
      v35 = v5;
      v60 = (*(*v5 + 376))(v55 + v54, v56, 0, 1, v114, v115, v116);
      if (!v58)
      {
        v121 = v60;
        MEMORY[0x1EEE9AC00](v60);
        v61 = v105;
        v62 = v106;
        v63 = v107;
        *(&v103 - 6) = v105;
        *(&v103 - 5) = v63;
        *(&v103 - 4) = v57;
        *(&v103 - 3) = v62;
        *(&v103 - 2) = v7;
        *(&v103 - 1) = v59;
        v117 = v64;
        v65 = swift_getKeyPath();
        v118 = &v103;
        MEMORY[0x1EEE9AC00](v65);
        v42 = &v103 - 10;
        *(&v103 - 8) = v61;
        *(&v103 - 7) = v63;
        *(&v103 - 6) = v57;
        *(&v103 - 5) = v62;
        *(&v103 - 4) = v7;
        *(&v103 - 3) = v59;
        *(&v103 - 2) = v66;
        v119.i64[0] = v108.i64[1];
        v119.i64[1] = v108.i64[0];
        v120 = v104;
        type metadata accessor for ThrottlingKey();
        swift_getTupleTypeMetadata2();
        v44 = sub_1CF9E6E58();
        WitnessTable = swift_getWitnessTable();
        v47 = MEMORY[0x1E69E73E0];
        v48 = MEMORY[0x1E69E7410];
        v49 = sub_1CF676BB4;
        goto LABEL_7;
      }
    }

    else
    {
      (*v25)[55]();
      if ((*(*(v19 - 8) + 48))(v23, 1, v19) == 1)
      {
        return MEMORY[0x1E69E7CC0];
      }

      else if (swift_getEnumCaseMultiPayload() == 1)
      {
        v67 = v52;
        v68 = v50;
        v69 = v23;
        v70 = v108.i64[1];
        (*(v52 + 32))(v50, v69, v108.i64[1]);
        v71 = sub_1CF03D760();
        v72 = v50;
        v73 = v115;
        v75 = v116;
        v74 = v117;
        v35 = v5;
        v76 = (*(*v5 + 376))(v72, v71, 0, 1, v114, v115, v116);
        if (v74)
        {
          (*(v67 + 8))(v68, v70);
        }

        else
        {
          v121 = v76;
          MEMORY[0x1EEE9AC00](v76);
          v85 = v105;
          v86 = v106;
          v87 = v107;
          *(&v103 - 6) = v105;
          *(&v103 - 5) = v87;
          *(&v103 - 4) = v73;
          *(&v103 - 3) = v86;
          *(&v103 - 2) = v7;
          *(&v103 - 1) = v75;
          v117 = v88;
          v89 = swift_getKeyPath();
          v118 = &v103;
          MEMORY[0x1EEE9AC00](v89);
          v114 = &v103 - 10;
          *(&v103 - 8) = v85;
          *(&v103 - 7) = v87;
          *(&v103 - 6) = v73;
          *(&v103 - 5) = v86;
          *(&v103 - 4) = v7;
          *(&v103 - 3) = v75;
          *(&v103 - 2) = v90;
          v119.i64[0] = v70;
          v119.i64[1] = v108.i64[0];
          v120 = v104;
          type metadata accessor for ThrottlingKey();
          swift_getTupleTypeMetadata2();
          v91 = sub_1CF9E6E58();
          v92 = swift_getWitnessTable();
          v35 = sub_1CF054A5C(sub_1CF67707C, v114, v91, &type metadata for JobThrottle, MEMORY[0x1E69E73E0], v92, MEMORY[0x1E69E7410], v93);

          (*(v113 + 8))(v112, v70);
        }
      }

      else
      {
        v77 = v103;
        v78 = v108.i64[0];
        (*(v51 + 32))(v103, v23, v108.i64[0]);
        v79 = sub_1CF03D760();
        v80 = v115;
        v82 = v116;
        v81 = v117;
        v35 = v5;
        v83 = (*(*v5 + 384))(v77, v79, 0, 1, v114, v115, v116);
        if (v81)
        {
          (*(v51 + 8))(v77, v78);
        }

        else
        {
          v121 = v83;
          MEMORY[0x1EEE9AC00](v83);
          v94 = v105;
          v95 = v106;
          v96 = v107;
          *(&v103 - 6) = v105;
          *(&v103 - 5) = v96;
          *(&v103 - 4) = v80;
          *(&v103 - 3) = v95;
          *(&v103 - 2) = v7;
          *(&v103 - 1) = v82;
          v117 = v97;
          v98 = swift_getKeyPath();
          v118 = &v103;
          MEMORY[0x1EEE9AC00](v98);
          v114 = &v103 - 10;
          *(&v103 - 8) = v94;
          *(&v103 - 7) = v96;
          *(&v103 - 6) = v80;
          *(&v103 - 5) = v95;
          *(&v103 - 4) = v7;
          *(&v103 - 3) = v82;
          *(&v103 - 2) = v99;
          v119.i64[0] = v78;
          v119.i64[1] = v108.i64[1];
          v120.i64[0] = v104.i64[1];
          v120.i64[1] = v104.i64[0];
          type metadata accessor for ThrottlingKey();
          swift_getTupleTypeMetadata2();
          v100 = sub_1CF9E6E58();
          v101 = swift_getWitnessTable();
          v35 = sub_1CF054A5C(sub_1CF676B48, v114, v100, &type metadata for JobThrottle, MEMORY[0x1E69E73E0], v101, MEMORY[0x1E69E7410], v102);

          (*(v111 + 8))(v103, v78);
        }
      }
    }
  }

  return v35;
}

uint64_t sub_1CF670A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v21[1] = a2;
  *&v22 = swift_getAssociatedTypeWitness();
  *(&v22 + 1) = swift_getAssociatedTypeWitness();
  *&v23 = swift_getAssociatedConformanceWitness();
  *(&v23 + 1) = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  (*(v6 + 16))(v21 - v12, a1, TupleTypeMetadata2, v11);
  v14 = &v13[*(TupleTypeMetadata2 + 48)];
  v26 = *(v14 + 8);
  v15 = *(v14 + 3);
  v24 = *(v14 + 2);
  v25 = v15;
  v16 = *(v14 + 1);
  v22 = *v14;
  v23 = v16;
  v17 = &v9[*(TupleTypeMetadata2 + 48)];
  (*(*(v4 - 8) + 32))(v9, v13, v4);
  v18 = v25;
  *(v17 + 2) = v24;
  *(v17 + 3) = v18;
  *(v17 + 8) = v26;
  v19 = v23;
  *v17 = v22;
  *(v17 + 1) = v19;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, TupleTypeMetadata2);
}

uint64_t sub_1CF670CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v21[1] = a2;
  *&v22 = swift_getAssociatedTypeWitness();
  *(&v22 + 1) = swift_getAssociatedTypeWitness();
  *&v23 = swift_getAssociatedConformanceWitness();
  *(&v23 + 1) = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  (*(v6 + 16))(v21 - v12, a1, TupleTypeMetadata2, v11);
  v14 = &v13[*(TupleTypeMetadata2 + 48)];
  v26 = *(v14 + 8);
  v15 = *(v14 + 3);
  v24 = *(v14 + 2);
  v25 = v15;
  v16 = *(v14 + 1);
  v22 = *v14;
  v23 = v16;
  v17 = &v9[*(TupleTypeMetadata2 + 48)];
  (*(*(v4 - 8) + 32))(v9, v13, v4);
  v18 = v25;
  *(v17 + 2) = v24;
  *(v17 + 3) = v18;
  *(v17 + 8) = v26;
  v19 = v23;
  *v17 = v22;
  *(v17 + 1) = v19;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, TupleTypeMetadata2);
}

unint64_t sub_1CF670F38(char a1)
{
  result = 0x6974696157746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6D6574496F6ELL;
      break;
    case 2:
      result = 0x6E55746E65726170;
      break;
    case 3:
    case 37:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x7243746E65726170;
      break;
    case 5:
      result = 0x6544746E65726170;
      break;
    case 6:
      v3 = 9;
      goto LABEL_31;
    case 7:
      result = 0x746544656C637963;
      break;
    case 8:
      result = 0x6144746E65726170;
      break;
    case 9:
    case 10:
      result = 0x6E6572646C696863;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x45676E69646E6570;
      break;
    case 16:
    case 18:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x656C74746F726874;
      break;
    case 19:
      v3 = 13;
LABEL_31:
      result = v3 | 0xD000000000000010;
      break;
    case 20:
      result = 0x656C74746F726874;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
    case 36:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x6544746E65726170;
      break;
    case 24:
      result = 0x65526D6165727473;
      break;
    case 25:
      result = 0x6374614D68746170;
      break;
    case 26:
      result = 0x676E697473697865;
      break;
    case 27:
      result = 0x6E6F697463697665;
      break;
    case 28:
      result = 0x74616761706F7270;
      break;
    case 29:
      result = 0x746F687370616E73;
      break;
    case 30:
      result = 0x64656E6961746572;
      break;
    case 31:
      result = 0x496465726F6E6769;
      break;
    case 32:
    case 35:
      result = 0xD000000000000018;
      break;
    case 33:
      result = 0x6C62617463697665;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1CF6713B0(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6570;
  if (*v1)
  {
    v2 = 0x6465696669726576;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1CF6713F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CF670F38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CF67141C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v675 = a1;
  v669 = a6;
  v670 = a7;
  v668 = a5;
  v674 = a4;
  v661 = a3;
  v7 = *a2;
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v677 = a2;
  v12 = *(v7 + 104);
  v13 = *(v7 + 88);
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v678 = AssociatedTypeWitness;
  v679 = v14;
  v680 = AssociatedConformanceWitness;
  v681 = v16;
  v657 = type metadata accessor for ReconciliationID();
  v655 = *(v657 - 1);
  v17 = *(v655 + 64);
  v18 = MEMORY[0x1EEE9AC00](v657);
  v586 = &v583 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v588 = &v583 - v20;
  v678 = AssociatedTypeWitness;
  v679 = v14;
  v650 = AssociatedConformanceWitness;
  v680 = AssociatedConformanceWitness;
  v681 = v16;
  v587 = v16;
  v631 = type metadata accessor for ThrottlingKey();
  v630 = *(v631 - 8);
  v21 = *(v630 + 64);
  v22 = MEMORY[0x1EEE9AC00](v631);
  v623 = &v583 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v621 = &v583 - v24;
  v678 = v9;
  v679 = v13;
  v680 = v8;
  v681 = v12;
  v662 = type metadata accessor for PersistenceTrigger();
  v25 = sub_1CF9E75D8();
  v678 = v9;
  v679 = v13;
  v680 = v8;
  v681 = v12;
  v583 = type metadata accessor for Job();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v638 = *(TupleTypeMetadata2 - 8);
  v26 = *(v638 + 64);
  v27 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v643 = &v583 - v28;
  v609 = *(v14 - 8);
  v29 = *(v609 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v591 = &v583 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v593 = &v583 - v32;
  v636 = v14;
  v608 = sub_1CF9E75D8();
  v614 = *(v608 - 8);
  v33 = *(v614 + 64);
  v34 = MEMORY[0x1EEE9AC00](v608);
  v597 = &v583 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v584 = &v583 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v592 = &v583 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v596 = &v583 - v40;
  v41 = type metadata accessor for SnapshotItem();
  v639 = sub_1CF9E75D8();
  v635 = *(v639 - 8);
  v42 = *(v635 + 64);
  v43 = MEMORY[0x1EEE9AC00](v639);
  v633 = &v583 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v628 = &v583 - v46;
  v644 = v41;
  v642 = *(v41 - 8);
  v47 = *(v642 + 64);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v617 = &v583 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v619 = &v583 - v50;
  v678 = v9;
  v679 = v13;
  v680 = v8;
  v681 = v12;
  v51 = type metadata accessor for ItemReconciliation();
  v641 = sub_1CF9E75D8();
  v640 = *(v641 - 8);
  v52 = *(v640 + 64);
  v53 = MEMORY[0x1EEE9AC00](v641);
  v602 = &v583 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v658 = &v583 - v56;
  v654 = v51;
  v653 = *(v51 - 8);
  v57 = *(v653 + 64);
  v58 = MEMORY[0x1EEE9AC00](v55);
  v590 = &v583 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v648 = &v583 - v61;
  v672 = v25;
  v673 = *(v25 - 8);
  v62 = v673[8];
  v63 = MEMORY[0x1EEE9AC00](v60);
  v594 = &v583 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v616 = &v583 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v595 = &v583 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v600 = &v583 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v615 = &v583 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v604 = &v583 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v610 = &v583 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v624 = &v583 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v634 = &v583 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v637 = &v583 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v645 = (&v583 - v84);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v87 = &v583 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85);
  v647 = &v583 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v625 = &v583 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v646 = &v583 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v626 = &v583 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v629 = &v583 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v652 = &v583 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v589 = &v583 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v656 = &v583 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v660 = &v583 - v105;
  v671 = AssociatedTypeWitness;
  v667 = *(AssociatedTypeWitness - 1);
  v106 = *(v667 + 64);
  v107 = MEMORY[0x1EEE9AC00](v104);
  v599 = &v583 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = MEMORY[0x1EEE9AC00](v107);
  v585 = &v583 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v598 = &v583 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v605 = &v583 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v601 = &v583 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v632 = &v583 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v613 = &v583 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v612 = &v583 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v611 = &v583 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v627 = &v583 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v659 = &v583 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v603 = &v583 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v620 = &v583 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v607 = &v583 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v606 = &v583 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v622 = &v583 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v141 = &v583 - v140;
  v142 = MEMORY[0x1EEE9AC00](v139);
  v144 = &v583 - v143;
  v145 = MEMORY[0x1EEE9AC00](v142);
  v147 = &v583 - v146;
  v148 = MEMORY[0x1EEE9AC00](v145);
  v618 = &v583 - v149;
  v150 = MEMORY[0x1EEE9AC00](v148);
  v649 = &v583 - v151;
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v583 - v152;
  v665 = v12;
  v666 = v9;
  v678 = v9;
  v679 = v13;
  v154 = v675;
  v663 = v8;
  v664 = v13;
  v680 = v8;
  v681 = v12;
  type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty();
  v155 = swift_dynamicCastClass();
  if (v155 && v154 == 8)
  {
    v156 = *(v674 + 32);
    v157 = v667;
    v158 = v671;
    (*(v667 + 16))(v153, v155 + *(*v155 + 576), v671);
    v159 = *(*v156 + 384);

    v160 = v676;
    v161 = v159(v153, 1, v668, v669, v670);
    if (v160)
    {
      (*(v157 + 8))(v153, v158);
    }

    v205 = v161;
    (*(v157 + 8))(v153, v158);
    goto LABEL_21;
  }

  v163 = v665;
  v164 = v666;
  v166 = v663;
  v165 = v664;
  v678 = v666;
  v679 = v664;
  v680 = v663;
  v681 = v665;
  type metadata accessor for Materialization.MaterializeItem();
  v167 = swift_dynamicCastClass();
  if (v167 && v154 == 32)
  {
    v675 = v167;
    v168 = v672;
    v170 = v673 + 2;
    v169 = v673[2];
    v171 = v660;
    v169(v660, v661, v672);
    v172 = v662;
    v173 = *(v662 - 8);
    v174 = *(v173 + 6);
    v647 = v173 + 48;
    v646 = v174;
    v175 = (v174)(v171, 1, v662);
    v652 = v173;
    TupleTypeMetadata2 = v170;
    if (v175 == 1)
    {
      v645 = v169;

LABEL_9:
      v176 = v659;
LABEL_10:
      v177 = v673 + 1;
      v657 = v673[1];
      v657(v171, v672);
      v178 = *(v674 + 16);
      v179 = v667;
      v180 = *(v667 + 16);
      v660 = *(*v675 + 576);
      v181 = v671;
      v180(v176, &v660[v675], v671);

      v182 = v658;
      v183 = v676;
      sub_1CF68DDB0(v176, v668, v669, v670, v658);
      if (v183)
      {

        return (*(v179 + 8))(v176, v181);
      }

      v656 = v180;
      v673 = v177;
      v676 = 0;
      v235 = *(v179 + 8);
      v235(v176, v181);
      v236 = v653;
      v237 = v654;
      if ((*(v653 + 48))(v182, 1, v654) == 1)
      {

        (*(v640 + 8))(v182, v641);
        goto LABEL_235;
      }

      v260 = v648;
      (*(v236 + 32))(v648, v182, v237);
      v261 = type metadata accessor for ItemReconciliationHalf();
      if (*&v260[*(v261 + 36)])
      {

        (*(v236 + 8))(v260, v237);
LABEL_89:
        v206 = 1;
        return v206 & 1;
      }

      v666 = *&v260[*(v261 + 36)];
      v667 = v261;
      v262 = *(v674 + 32);
      v263 = v627;
      v264 = v671;
      (v656)(v627, &v660[v675], v671);

      v265 = v628;
      v266 = v676;
      (*(*v262 + 240))(v263, 1, v668, v669, v670);
      v676 = v266;
      if (v266)
      {

        v235(v263, v264);
        return (*(v653 + 8))(v648, v654);
      }

      v235(v263, v264);
      v384 = v642;
      v385 = v644;
      if ((*(v642 + 48))(v265, 1, v644) == 1)
      {
        (*(v653 + 8))(v648, v654);

        (*(v635 + 8))(v265, v639);
        goto LABEL_89;
      }

      v390 = v619;
      (*(v384 + 32))(v619, v265, v385);
      WitnessTable = swift_getWitnessTable();
      if ((sub_1CF937C7C(v385, WitnessTable) & 1) != 0 && v390[*(v385 + 48)] != 2)
      {
        (*(v384 + 8))(v390, v385);

        v514 = v654;
        v515 = v648;
        v516 = &v648[*(v654 + 52)];
        if (v516[*(type metadata accessor for ItemReconciliationHalf() + 52)] == 4 && v515[*(v667 + 44)])
        {
          (*(v653 + 8))(v515, v514);
          goto LABEL_235;
        }

        v533 = v614;
        v534 = v596;
        v535 = v516;
        v536 = v608;
        (*(v614 + 16))(v596, v535, v608);
        if ((*(v609 + 48))(v534, 1, v636) == 1)
        {
          (*(v533 + 8))(v534, v536);
          v537 = v515[*(v667 + 56)];
          (*(v653 + 8))(v515, v514);
          if (v537 == 6)
          {
            goto LABEL_235;
          }
        }

        else
        {
          (*(v653 + 8))(v515, v514);
          (*(v533 + 8))(v534, v536);
        }

        goto LABEL_240;
      }

      v392 = v654;
      v393 = v648;
      if (sub_1CF07CD80(v654))
      {
        v394 = &v393[*(v392 + 52)];
        if ((v394[*(type metadata accessor for ItemReconciliationHalf() + 52)] | 4) == 4)
        {
          goto LABEL_172;
        }
      }

      v395 = v393[*(v667 + 56)];
      if ((v395 | 2) != 6)
      {

        (*(v384 + 8))(v619, v644);
        (*(v653 + 8))(v393, v654);
        goto LABEL_240;
      }

      v392 = v654;
      if (sub_1CF07CD80(v654))
      {
        v396 = &v393[*(v392 + 52)];
        if ((v396[*(type metadata accessor for ItemReconciliationHalf() + 52)] | 2) == 3)
        {
LABEL_172:

          (*(v384 + 8))(v619, v644);
          (*(v653 + 8))(v393, v392);
          goto LABEL_240;
        }
      }

      if (v395 != 4)
      {
        v542 = *(v614 + 16);
        v517 = v654;
        v526 = v636;
        v524 = v609;
        v527 = v648;
        v522 = v608;
        goto LABEL_309;
      }

      v517 = v654;
      v518 = *(v654 + 52);
      v519 = v614;
      v520 = *(v614 + 16);
      v671 = (v614 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v521 = v592;
      v522 = v608;
      v523 = v520;
      v520(v592, &v648[v518], v608);
      v524 = v609;
      v525 = *(v609 + 48);
      v526 = v636;
      v667 = v609 + 48;
      v665 = v525;
      if ((v525)(v521, 1, v636) == 1)
      {
        (*(v519 + 8))(v521, v522);
LABEL_261:
        v527 = v648;
LABEL_308:
        v542 = v523;
LABEL_309:
        v567 = v597;
        v542(v597, &v527[*(v517 + 52)], v522);
        v568 = (*(v524 + 48))(v567, 1, v526);
        v569 = v674;
        v570 = v526;
        v572 = v669;
        v571 = v670;
        v573 = v668;
        if (v568 == 1)
        {

          (*(v642 + 8))(v619, v644);
          (*(v653 + 8))(v527, v517);
          (*(v614 + 8))(v567, v522);
          goto LABEL_235;
        }

        v574 = v591;
        v575 = v567;
        v576 = v570;
        (*(v524 + 32))(v591, v575, v570);
        v577 = v676;
        v578 = (*(**(v569 + 24) + 256))(v574, v573, v572, v571);
        if (v577)
        {

          (*(v524 + 8))(v574, v576);
          (*(v642 + 8))(v619, v644);
          return (*(v653 + 8))(v648, v654);
        }

        v579 = v578;

        if (!v579)
        {
          (*(v524 + 8))(v574, v576);
          (*(v642 + 8))(v619, v644);
          (*(v653 + 8))(v648, v654);
          goto LABEL_235;
        }

        v580 = *(v579 + 136);

        (*(v524 + 8))(v574, v576);
        (*(v642 + 8))(v619, v644);
        (*(v653 + 8))(v648, v654);
        if ((v580 & 2) != 0)
        {
LABEL_240:
          v206 = 0;
          return v206 & 1;
        }

LABEL_235:
        v206 = 1;
        return v206 & 1;
      }

      (*(v524 + 32))(v593, v521, v526);
      v555 = v589;
      v556 = v672;
      v645(v589, v661, v672);
      v557 = v662;
      if ((v646)(v555, 1, v662) == 1)
      {
        v657(v555, v556);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v524 = v609;
          v526 = v636;
          (*(v609 + 8))(v593, v636);
          (*(v652 + 1))(v555, v557);
LABEL_307:
          v517 = v654;
          v527 = v648;
          v522 = v608;
          goto LABEL_308;
        }

        (*(v652 + 1))(v555, v557);
      }

      if ((v666 & 0x10) != 0)
      {
        goto LABEL_306;
      }

      v565 = v676;
      v566 = (*(*v262 + 488))(&v660[v675], v668, v669, v670);
      v676 = v565;
      if (v565)
      {

        (*(v609 + 8))(v593, v636);
        (*(v642 + 8))(v619, v644);
        return (*(v653 + 8))(v648, v654);
      }

      if (v566)
      {
LABEL_306:
        v524 = v609;
        v526 = v636;
        (*(v609 + 8))(v593, v636);
        goto LABEL_307;
      }

      v581 = v676;
      (*(**(v674 + 40) + 432))(v593, 1, v668, v669, v670);
      v676 = v581;
      v582 = v636;
      (*(v609 + 8))(v593, v636);
      if ((v665)(v584, 1, v582) == 1)
      {
        v522 = v608;
        (*(v614 + 8))(v584, v608);
        v517 = v654;
        v526 = v636;
        v524 = v609;
        goto LABEL_261;
      }

      (*(v642 + 8))(v619, v644);
      (*(v653 + 8))(v648, v654);
      (*(v614 + 8))(v584, v608);
LABEL_140:
      v206 = 0;
      return v206 & 1;
    }

    v207 = v656;
    v169(v656, v171, v168);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 14)
    {
      v209 = v657;
      if (EnumCaseMultiPayload <= 10)
      {
        v210 = v652;
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 6)
          {
            v645 = v169;
            v211 = v639;
            v212 = *(swift_getTupleTypeMetadata3() + 48);
            v213 = v642;
            v214 = *(v642 + 48);
            v215 = v644;
            if (v214(v207, 1, v644) == 1)
            {
              v216 = *(v635 + 8);
              v216(&v207[v212], v211);
              v216(v207, v211);
LABEL_124:
              v290 = v672;
              v289 = v673;
              goto LABEL_125;
            }

            if (v214(&v207[v212], 1, v215) != 1)
            {
              (*(v213 + 8))(v207, v215);
              (*(v635 + 8))(&v207[v212], v211);
              goto LABEL_124;
            }

            v345 = *(v667 + 16);
            v346 = v649;
            v347 = v213;
            v348 = v215;
            v349 = v671;
            v345(v649, v207, v671);
            v350 = *(v347 + 8);

            v350(v207, v348);
            v351 = v618;
            v345(v618, (v675 + *(*v675 + 576)), v349);
            v352 = *(*(v650 + 40) + 8);
            v353 = sub_1CF9E6868();
            v354 = *(v667 + 8);
            v354(v351, v349);
            v354(v346, v349);
LABEL_130:
            v171 = v660;
            v176 = v659;
            if (v353)
            {
              goto LABEL_10;
            }

LABEL_131:

            goto LABEL_124;
          }

          goto LABEL_98;
        }

        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v645 = v169;
          v326 = v667;
          v327 = v671;
          (*(v667 + 32))(v144, v207, v671);
          v328 = v649;
          (*(v326 + 16))(v649, v675 + *(*v675 + 576), v327);
          v329 = *(*(v650 + 40) + 8);

          v330 = sub_1CF9E6868();
          v331 = *(v326 + 8);
          v331(v328, v327);
          v331(v144, v327);
          v171 = v660;
          v176 = v659;
          if (v330)
          {
            goto LABEL_10;
          }

          goto LABEL_131;
        }

LABEL_91:
        (*(v655 + 8))(v207, v209);
        goto LABEL_124;
      }

      v210 = v652;
      if (EnumCaseMultiPayload == 11)
      {
        v291 = v659;
        v645 = v169;
        v678 = v657;
        v679 = sub_1CF9E75D8();
        v680 = &type metadata for ContentStatus;
        v681 = &type metadata for ContentStatus;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v293 = *(TupleTypeMetadata + 48);
        v294 = v207[*(TupleTypeMetadata + 80)];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v295 = v655;
          if ((*(v655 + 48))(&v207[v293], 1, v209) == 1)
          {
            (*(v295 + 8))(v207, v209);
            v296 = sub_1CF9E75D8();
            (*(*(v296 - 8) + 8))(&v207[v293], v296);
          }

          else if (swift_getEnumCaseMultiPayload() == 1)
          {
            v386 = *(v655 + 8);
            v386(&v207[v293], v209);
            v386(v207, v209);
          }

          else if (v294 == 2)
          {
            v431 = v667;
            v432 = &v207[v293];
            v433 = v603;
            v434 = v671;
            (*(v667 + 32))(v603, v432, v671);
            v435 = v649;
            (*(v431 + 16))(v649, v675 + *(*v675 + 576), v434);
            v436 = *(*(v650 + 40) + 8);

            LODWORD(v650) = sub_1CF9E6868();
            v437 = *(v431 + 8);
            v437(v435, v434);
            v437(v433, v434);
            if (v650)
            {
              (*(v655 + 8))(v656, v209);
              v171 = v660;
              v176 = v291;
              goto LABEL_10;
            }

            (*(v655 + 8))(v656, v209);
          }

          else
          {
            (*(v667 + 8))(&v207[v293], v671);
            (*(v655 + 8))(v207, v209);
          }
        }

        else
        {
          v342 = sub_1CF9E75D8();
          (*(*(v342 - 8) + 8))(&v207[v293], v342);
          (*(v655 + 8))(v207, v209);
        }

        goto LABEL_124;
      }

      if (EnumCaseMultiPayload != 12)
      {
        goto LABEL_98;
      }

      v645 = v169;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v583 - 32, " otherID from to ");
      v678 = v209;
      v679 = sub_1CF9E75D8();
      v680 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v681 = v680;
      v256 = *(swift_getTupleTypeMetadata() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v257 = sub_1CF9E75D8();
        (*(*(v257 - 8) + 8))(&v207[v256], v257);
        goto LABEL_91;
      }

      v655 = v256;
      v360 = v667;
      v361 = v622;
      v362 = v671;
      (*(v667 + 32))(v622, v207, v671);
      v363 = v649;
      (*(v360 + 16))(v649, v675 + *(*v675 + 576), v362);
      v364 = *(*(v650 + 40) + 8);

      v365 = sub_1CF9E6868();
      v366 = *(v360 + 8);
      v366(v363, v362);
      v366(v361, v362);
      if ((v365 & 1) == 0)
      {

        v387 = sub_1CF9E75D8();
        (*(*(v387 - 8) + 8))(&v207[v655], v387);
        goto LABEL_124;
      }

      v367 = sub_1CF9E75D8();
      (*(*(v367 - 8) + 8))(&v207[v655], v367);
LABEL_136:
      v171 = v660;
      goto LABEL_9;
    }

    v233 = v657;
    if (EnumCaseMultiPayload > 21)
    {
      v210 = v652;
      if (EnumCaseMultiPayload == 22)
      {
        v645 = v169;
        v297 = *(v652 + 1);

        v297(v207, v172);
      }

      else
      {
        if (EnumCaseMultiPayload != 32)
        {
          goto LABEL_98;
        }

        v258 = *(swift_getTupleTypeMetadata2() + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v259 = *(v655 + 8);
          v259(&v258[v207], v233);
          v259(v207, v233);
          goto LABEL_124;
        }

        v643 = v258;
        v645 = v169;
        v368 = v667;
        v369 = v671;
        (*(v667 + 32))(v147, v207, v671);
        v370 = v649;
        (*(v368 + 16))(v649, v675 + *(*v675 + 576), v369);
        v371 = *(*(v650 + 40) + 8);

        v372 = sub_1CF9E6868();
        v373 = *(v368 + 8);
        v373(v370, v369);
        v373(v147, v369);
        if ((v372 & 1) == 0)
        {

          (*(v655 + 8))(&v643[v207], v233);
          goto LABEL_124;
        }

        (*(v655 + 8))(&v643[v207], v233);
      }

      goto LABEL_136;
    }

    v210 = v652;
    if (EnumCaseMultiPayload != 15)
    {
      if (EnumCaseMultiPayload == 16)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v234 = *&v207[*(swift_getTupleTypeMetadata3() + 48)];

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          (*(v655 + 8))(v207, v233);
          goto LABEL_124;
        }

        v645 = v169;
        v355 = v667;
        v356 = v671;
        (*(v667 + 32))(v141, v207, v671);
        v357 = v649;
        (*(v355 + 16))(v649, v675 + *(*v675 + 576), v356);
        v358 = *(*(v650 + 40) + 8);
        v353 = sub_1CF9E6868();
        v359 = *(v355 + 8);
        v359(v357, v356);
        v359(v141, v356);
        goto LABEL_130;
      }

LABEL_98:
      (*(v210 + 1))(v207, v172);
      goto LABEL_124;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v286 = *&v207[*(swift_getTupleTypeMetadata2() + 48)];
    v287 = swift_getEnumCaseMultiPayload();
    v288 = v672;
    v289 = v673;
    if (v287 == 1)
    {

      (*(v655 + 8))(v207, v233);
      v290 = v288;
LABEL_125:
      v343 = v289[1];
      v344 = v660;
LABEL_126:
      v343(v344, v290);
      goto LABEL_240;
    }

    v678 = v286;

    v332 = swift_dynamicCast();
    v333 = v667;
    if (v332)
    {
      if (v682 == 5)
      {
        v495 = *(v667 + 16);
        v496 = v607;
        v497 = v671;
        v495(v607, v656, v671);
        v498 = v649;
        v495(v649, (v675 + *(*v675 + 576)), v497);
        v499 = *(*(v650 + 40) + 8);
        LODWORD(v674) = sub_1CF9E6868();
        v339 = *(v333 + 8);
        v339(v498, v497);
        v340 = v496;
        v341 = v497;
LABEL_228:
        v339(v340, v341);
        if (v674)
        {

          v339(v656, v671);
          (v289[1])(v660, v288);
          goto LABEL_240;
        }

        goto LABEL_230;
      }

      if (v682 == 3)
      {
        v334 = *(v667 + 16);
        v335 = v606;
        v336 = v671;
        v334(v606, v656, v671);
        v337 = v649;
        v334(v649, (v675 + *(*v675 + 576)), v336);
        v338 = *(*(v650 + 40) + 8);
        LODWORD(v674) = sub_1CF9E6868();
        v339 = *(v333 + 8);
        v339(v337, v336);
        v340 = v335;
        v341 = v336;
        goto LABEL_228;
      }
    }

LABEL_230:

    v500 = v620;
    v501 = v671;
    (*(v333 + 32))(v620, v656, v671);
    v502 = v649;
    (*(v333 + 16))(v649, v675 + *(*v675 + 576), v501);
    v503 = *(*(v650 + 40) + 8);
    v504 = sub_1CF9E6868();

    v505 = *(v333 + 8);
    v505(v502, v501);
    v505(v500, v501);
    v290 = v288;
    if (v504)
    {
      (v289[1])(v660, v288);
      goto LABEL_235;
    }

    goto LABEL_125;
  }

  v678 = v164;
  v679 = v165;
  v680 = v166;
  v681 = v163;
  type metadata accessor for Materialization.EvictItem();
  v184 = v677;
  v185 = swift_dynamicCastClass();
  v186 = v672;
  v187 = v673;
  if (!v185)
  {
    v217 = v154 == 0x40000;
    v189 = v676;
    v190 = v154;
    v191 = v674;
    if (v217)
    {
LABEL_36:
      if (!*(v184 + 112) && (*(v184 + 97) & 1) == 0)
      {
        goto LABEL_235;
      }

      v224 = v673[2];
      v225 = v647;
      v224(v647, v661, v672);
      v226 = v186;
      v227 = v662;
      v228 = *(v662 - 8);
      if ((*(v228 + 48))(v225, 1, v662) != 1)
      {
        v224(v87, v225, v226);
        if (swift_getEnumCaseMultiPayload() != 14)
        {
          (*(v228 + 8))(v87, v227);
          (v673[1])(v225, v226);
          goto LABEL_140;
        }

        v278 = v630;
        v279 = v623;
        v280 = v631;
        (*(v630 + 32))(v623, v87, v631);
        v675 = sub_1CF04FB80(v677, v671, v636, v666, v664, v663, v665);
        v678 = v675;
        sub_1CF9E6E58();
        swift_getWitnessTable();
        swift_getWitnessTable();
        v281 = sub_1CF9E6C08();

        (*(v278 + 8))(v279, v280);
        v187 = v673;
        if ((v281 & 1) == 0)
        {
          (v673[1])(v225, v226);
          goto LABEL_140;
        }
      }

      (v187[1])(v225, v226);
      v229 = v191[3];
      v231 = v676;
      v230 = v677;
      v232 = 1;
      goto LABEL_50;
    }

    if (v190 == 256)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  v188 = v154 <= 255;
  v189 = v676;
  v190 = v154;
  v191 = v674;
  if (v188)
  {
    if (v190 == 64)
    {
      v192 = v185;
      v193 = v673[2];
      v194 = v652;
      v193(v652, v661, v672);
      v195 = *(v662 - 8);
      v196 = (*(v195 + 48))(v194, 1, v662);
      v660 = v192;
      if (v196 == 1)
      {

        v197 = v676;
LABEL_18:
        (v187[1])(v652, v186);
        v198 = v191[4];
        v199 = v667;
        v200 = *(v667 + 16);
        v673 = *(*v192 + 576);
        v201 = v632;
        v202 = v671;
        v675 = v200;
        v200(v632, v673 + v192, v671);
        v203 = *(*v198 + 240);

        v204 = v633;
        v203(v201, 1, v668, v669, v670);
        if (v197)
        {

          return (*(v199 + 8))(v201, v202);
        }

        v375 = *(v199 + 8);
        v375(v201, v202);
        v376 = v642;
        v377 = v644;
        if ((*(v642 + 48))(v204, 1, v644) == 1)
        {

          (*(v635 + 8))(v204, v639);
          goto LABEL_235;
        }

        v676 = v375;
        v388 = v617;
        (*(v376 + 32))(v617, v204, v377);
        v389 = swift_getWitnessTable();
        sub_1CF06D940(v377, v389, &v678);
        if (v678 == 2)
        {

          (*(v376 + 8))(v388, v377);
          goto LABEL_235;
        }

        if (sub_1CF937C7C(v377, v389))
        {
          v438 = *(v674 + 16);
          v439 = v601;
          v440 = v671;
          (v675)(v601, v673 + v660, v671);

          v441 = v602;
          sub_1CF68DDB0(v439, v668, v669, v670, v602);
          v676(v439, v440);
          v538 = v653;
          v539 = v654;
          v540 = (*(v653 + 48))(v441, 1, v654);
          v541 = v642;
          if (v540 == 1)
          {
            (*(v642 + 8))(v388, v644);

            (*(v640 + 8))(v441, v641);
          }

          else
          {
            v551 = v590;
            (*(v538 + 32))(v590, v441, v539);
            v552 = v538;
            v553 = sub_1CF07CD80(v539);

            (*(v541 + 8))(v388, v644);
            if (v553)
            {
              v554 = &v551[*(v539 + 52)];
              LODWORD(v554) = v554[*(type metadata accessor for ItemReconciliationHalf() + 52)];
              (*(v552 + 8))(v551, v539);
              v206 = v554 == 0;
              return v206 & 1;
            }

            (*(v552 + 8))(v551, v539);
          }

          goto LABEL_235;
        }

        (*(v642 + 8))(v388, v377);
        goto LABEL_240;
      }

      v282 = v629;
      v193(v629, v194, v186);
      v283 = swift_getEnumCaseMultiPayload();
      if (v283 <= 10)
      {
        v378 = v644;
        v379 = v639;
        if (v283 != 5)
        {
          v197 = v676;
          if (v283 != 6)
          {
LABEL_179:
            (*(v195 + 8))(v282, v662);
            goto LABEL_254;
          }

          v380 = *(swift_getTupleTypeMetadata3() + 48);
          v381 = v282;
          v382 = *(v642 + 48);
          if (v382(v381, 1, v378) != 1)
          {
            if (v382(&v381[v380], 1, v378) != 1)
            {
              (*(v642 + 8))(v381, v378);
              (*(v635 + 8))(&v381[v380], v379);
              goto LABEL_254;
            }

            v484 = *(v667 + 16);
            v485 = v649;
            v486 = v671;
            v484(v649, v381, v671);
            v487 = *(v642 + 8);

            v487(v381, v378);
            v488 = v660;
            v489 = *v660;
            v490 = v618;
            v484(v618, &v488[*(*v488 + 576)], v486);
            v491 = *(*(v650 + 40) + 8);
            v492 = sub_1CF9E6868();
            v493 = *(v667 + 8);
            v493(v490, v486);
            v494 = v485;
            v186 = v672;
            v187 = v673;
            v493(v494, v486);
            v192 = v488;
            if (v492)
            {
              goto LABEL_18;
            }

            goto LABEL_226;
          }

          v383 = *(v635 + 8);
          v383(&v381[v380], v379);
          v383(v381, v379);
LABEL_254:
          v186 = v672;
          v187 = v673;
          goto LABEL_255;
        }

        v405 = v657;
        v406 = *(swift_getTupleTypeMetadata2() + 48);
        v407 = swift_getEnumCaseMultiPayload();
        v408 = v652;
        v197 = v676;
        if (v407 == 1)
        {
          v409 = *(v655 + 8);
          v409(&v282[v406], v405);
          v409(v282, v405);
          v344 = v408;
          v186 = v672;
          v187 = v673;
LABEL_256:
          v343 = v187[1];
          goto LABEL_257;
        }

        v468 = v667;
        v469 = v611;
        v470 = v671;
        (*(v667 + 32))(v611, v282, v671);
        v471 = v649;
        (*(v468 + 16))(v649, &v660[*(*v660 + 576)], v470);
        v472 = *(*(v650 + 40) + 8);

        v473 = sub_1CF9E6868();
        v474 = *(v468 + 8);
        v474(v471, v470);
        v474(v469, v470);
        if ((v473 & 1) == 0)
        {

          (*(v655 + 8))(&v282[v406], v657);
          goto LABEL_254;
        }

        (*(v655 + 8))(&v282[v406], v657);
        v191 = v674;
      }

      else
      {
        if (v283 != 11)
        {
          v197 = v676;
          if (v283 != 15)
          {
            if (v283 == 16)
            {
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
              v284 = v657;
              v285 = *&v282[*(swift_getTupleTypeMetadata3() + 48)];

              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v475 = v667;
                v476 = v613;
                v477 = v282;
                v478 = v671;
                (*(v667 + 32))(v613, v477, v671);
                v479 = v649;
                (*(v475 + 16))(v649, &v660[*(*v660 + 576)], v478);
                v480 = *(*(v650 + 40) + 8);
                v481 = sub_1CF9E6868();

                v482 = *(v475 + 8);
                v483 = v652;
                v482(v479, v478);
                v482(v476, v478);
                v344 = v483;
                v186 = v672;
                v187 = v673;
                if (v481)
                {
                  (v673[1])(v344, v672);
                  goto LABEL_235;
                }

                goto LABEL_256;
              }

              (*(v655 + 8))(v282, v284);
              goto LABEL_254;
            }

            goto LABEL_179;
          }

          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          v403 = v657;
          v404 = *&v282[*(swift_getTupleTypeMetadata2() + 48)];

          if (swift_getEnumCaseMultiPayload() == 1)
          {

            (*(v655 + 8))(v282, v403);
LABEL_255:
            v344 = v652;
            goto LABEL_256;
          }

          v457 = v282;
          v458 = v667;
          v459 = v612;
          v460 = v671;
          (*(v667 + 32))(v612, v457, v671);
          v461 = v660;
          v462 = *v660;
          v463 = v186;
          v464 = v649;
          (*(v458 + 16))(v649, &v461[*(*v461 + 576)], v460);
          v465 = *(*(v650 + 40) + 8);
          LODWORD(v675) = sub_1CF9E6868();
          v466 = *(v458 + 8);
          v467 = v464;
          v186 = v463;
          v187 = v673;
          v466(v467, v460);
          v466(v459, v460);
          v192 = v461;
          if (v675)
          {
            goto LABEL_18;
          }

LABEL_226:

          goto LABEL_255;
        }

        v397 = v657;
        v678 = v657;
        v679 = sub_1CF9E75D8();
        v680 = &type metadata for ContentStatus;
        v681 = &type metadata for ContentStatus;
        v398 = swift_getTupleTypeMetadata();
        v399 = *(v398 + 48);
        v400 = v282[*(v398 + 80)];
        v401 = sub_1CF9E75D8();
        v402 = *(*(v401 - 8) + 8);
        v197 = v676;
        if (v400)
        {
          v402(&v282[v399], v401);
          (*(v655 + 8))(v282, v397);
          goto LABEL_254;
        }

        v402(&v282[v399], v401);
        (*(v655 + 8))(v282, v397);
      }

      v186 = v672;
      v187 = v673;
      v192 = v660;
      goto LABEL_18;
    }

LABEL_30:
    if (v190 == 128)
    {
      if (((*(*v191 + 152))() & 0x100) == 0)
      {
        v218 = *(TupleTypeMetadata2 + 48);
        v219 = v187[2];
        v220 = v643;
        v219(v643, v661, v186);
        *&v220[v218] = v184;
        v221 = v186;
        v222 = v662;
        v223 = *(v662 - 8);
        if ((*(v223 + 48))(v220, 1, v662) == 1)
        {
        }

        else
        {
          v309 = v626;
          v219(v626, v220, v221);
          v310 = swift_getEnumCaseMultiPayload();
          if (v310 == 12)
          {
            v311 = v673;
            MEMORY[0x1EEE9AC00](v310);
            strcpy(&v583 - 32, " otherID from to ");
            v312 = v309;
            v313 = v657;
            v678 = v657;
            v679 = sub_1CF9E75D8();
            v680 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
            v681 = v680;
            v314 = swift_getTupleTypeMetadata();
            v315 = *(v314 + 48);
            v316 = v312[*(v314 + 80)];
            v678 = v666;
            v679 = v664;
            v680 = v166;
            v681 = v665;
            type metadata accessor for DiskImport.ContinueDiskImport();
            if (swift_dynamicCastClass())
            {
              v317 = sub_1CF9E75D8();
              v318 = *(*(v317 - 8) + 8);

              v318(&v312[v315], v317);
              (*(v655 + 8))(v312, v313);
              v220 = v643;
              if (v316 == 6)
              {

                (v311[1])(v220, v672);
                goto LABEL_235;
              }
            }

            else
            {
              v410 = sub_1CF9E75D8();
              v411 = *(*(v410 - 8) + 8);

              v411(&v312[v315], v410);
              (*(v655 + 8))(v312, v313);
              v220 = v643;
            }
          }

          else
          {
            v374 = *(v223 + 8);

            v374(v309, v222);
          }
        }

        v412 = (*(v638 + 8))(v220, TupleTypeMetadata2);
        v413 = (*(*v674 + 264))(v412);
        v206 = sub_1CF9615C8(sub_1CF193328, 0);

        return v206 & 1;
      }

      goto LABEL_235;
    }

LABEL_52:
    v678 = v666;
    v679 = v664;
    v680 = v166;
    v681 = v665;
    type metadata accessor for Materialization.MaterializeParentHierarchy();
    v243 = swift_dynamicCastClass();
    if (v243 && v190 == 2048)
    {
      v244 = v243;
      v245 = v187[2];
      v246 = v645;
      v245(v645, v661, v186);
      v247 = v186;
      v248 = *(v662 - 8);
      if ((*(v248 + 48))(v246, 1, v662) != 1)
      {
        v245(v637, v246, v186);
        v249 = swift_getEnumCaseMultiPayload();
        if (v249 != 48)
        {
          if (v249 != 20)
          {
            (*(v248 + 8))(v637, v662);
            goto LABEL_237;
          }

          v250 = v637;
          v251 = *v637;
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
          v252 = v657;
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v254 = *(TupleTypeMetadata3 + 48);
          v255 = *&v250[*(TupleTypeMetadata3 + 64)];

          if (swift_getEnumCaseMultiPayload() == 1)
          {

            (*(v655 + 8))(&v250[v254], v252);
LABEL_237:
            v422 = &v677;
            goto LABEL_238;
          }

          if (qword_1CFA0F608[sub_1CF03D760()] != qword_1CFA0F608[v251])
          {

            (*(v667 + 8))(&v250[v254], v671);
            goto LABEL_237;
          }

          v414 = v667;
          v415 = &v250[v254];
          v416 = v605;
          v417 = v671;
          (*(v667 + 32))(v605, v415, v671);
          v418 = v649;
          (*(v414 + 16))(v649, v244 + *(*v244 + 576), v417);
          v419 = *(*(v650 + 40) + 8);
          v420 = sub_1CF9E6868();

          v421 = *(v414 + 8);
          v421(v418, v417);
          v421(v416, v417);
          v246 = v645;
          if ((v420 & 1) == 0)
          {
            goto LABEL_239;
          }
        }

LABEL_234:
        (v673[1])(v246, v247);
        goto LABEL_235;
      }

      goto LABEL_239;
    }

    v678 = v666;
    v679 = v664;
    v680 = v166;
    v681 = v665;
    type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy();
    v267 = swift_dynamicCastClass();
    if (v267 && v190 == 2048)
    {
      v268 = v267;
      v269 = v187[2];
      v246 = v634;
      v269(v634, v661, v186);
      v247 = v186;
      v270 = *(v662 - 8);
      if ((*(v270 + 48))(v246, 1, v662) == 1)
      {
        goto LABEL_239;
      }

      v269(v624, v246, v186);
      v271 = swift_getEnumCaseMultiPayload();
      if (v271 == 48)
      {
        goto LABEL_234;
      }

      if (v271 != 20)
      {
        (*(v270 + 8))(v624, v662);
        v422 = &v666;
LABEL_238:
        v246 = *(v422 - 32);
        goto LABEL_239;
      }

      v272 = v624;
      v273 = *v624;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v274 = v657;
      v275 = swift_getTupleTypeMetadata3();
      v276 = *(v275 + 48);
      v277 = *&v272[*(v275 + 64)];

      if (swift_getEnumCaseMultiPayload() == 1)
      {

        (*(v655 + 8))(&v272[v276], v274);
      }

      else
      {
        if (qword_1CFA0F608[sub_1CF03D760()] == qword_1CFA0F608[v273])
        {
          v506 = v667;
          v507 = &v272[v276];
          v508 = v598;
          v509 = v671;
          (*(v667 + 32))(v598, v507, v671);
          v510 = v649;
          (*(v506 + 16))(v649, v268 + *(*v268 + 576), v509);
          v511 = *(*(v650 + 40) + 8);
          v512 = sub_1CF9E6868();

          v513 = *(v506 + 8);
          v513(v510, v509);
          v513(v508, v509);
          v246 = v634;
          if (v512)
          {
            goto LABEL_234;
          }

          goto LABEL_239;
        }

        (*(v667 + 8))(&v272[v276], v671);
      }

      v422 = &v666;
      goto LABEL_238;
    }

    v678 = v666;
    v679 = v664;
    v680 = v166;
    v681 = v665;
    type metadata accessor for Materialization.MaterializeIgnoredItem();
    v298 = swift_dynamicCastClass();
    if (v298)
    {
      if (v190 < 0x20000)
      {
        if (v190 < 0x2000)
        {
          if (v190 != 1)
          {
            if (v190 == 2048)
            {
              v299 = v298;
              v300 = v187[2];
              v246 = v610;
              v300(v610, v661, v186);
              v247 = v186;
              v301 = *(v662 - 8);
              if ((*(v301 + 48))(v246, 1, v662) != 1)
              {
                v300(v604, v246, v186);
                v302 = swift_getEnumCaseMultiPayload();
                if (v302 == 48)
                {
                  goto LABEL_234;
                }

                if (v302 != 20)
                {
                  (*(v301 + 8))(v604, v662);
                  v422 = &v642;
                  goto LABEL_238;
                }

                v303 = v604;
                v304 = *v604;
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
                v305 = v657;
                v306 = swift_getTupleTypeMetadata3();
                v307 = *(v306 + 48);
                v308 = *&v303[*(v306 + 64)];

                if (swift_getEnumCaseMultiPayload() == 1)
                {

                  (*(v655 + 8))(&v604[v307], v305);
                }

                else
                {
                  if (qword_1CFA0F608[sub_1CF03D760()] == qword_1CFA0F608[v304])
                  {
                    v558 = v667;
                    v559 = v585;
                    v560 = v671;
                    (*(v667 + 32))(v585, &v604[v307], v671);
                    v561 = v649;
                    (*(v558 + 16))(v649, v299 + *(*v299 + 576), v560);
                    v562 = *(*(v650 + 40) + 8);
                    v563 = sub_1CF9E6868();

                    v564 = *(v558 + 8);
                    v564(v561, v560);
                    v564(v559, v560);
                    v246 = v610;
                    if ((v563 & 1) == 0)
                    {
                      goto LABEL_239;
                    }

                    goto LABEL_234;
                  }

                  (*(v667 + 8))(&v604[v307], v671);
                }

                v422 = &v642;
                goto LABEL_238;
              }

LABEL_239:
              (v673[1])(v246, v247);
              goto LABEL_240;
            }

LABEL_212:
            v678 = v666;
            v679 = v664;
            v680 = v166;
            v681 = v665;
            type metadata accessor for Maintenance.RefreshInheritedContentPolicy();
            v452 = swift_dynamicCastClass();
            if (v452)
            {
              if (v190 != 0x2000000)
              {
                if (v190 != 0x1000000)
                {
                  if (v190 == 0x800000)
                  {
                    v453 = v452;
                    v454 = v594;
                    (v187[2])(v594, v661, v186);
                    v455 = v662;
                    v456 = *(v662 - 8);
                    if ((*(v456 + 48))(v454, 1, v662) == 1)
                    {
                      (v187[1])(v454, v186);
                    }

                    else if (swift_getEnumCaseMultiPayload() == 38)
                    {
                      v544 = v657;
                      v545 = v454[*(swift_getTupleTypeMetadata2() + 48)];
                      v546 = v655;
                      v547 = v588;
                      (*(v655 + 32))(v588, v454, v544);
                      if (qword_1CFA0F608[sub_1CF03D760()] == qword_1CFA0F608[v545])
                      {
                        v548 = v586;
                        v549 = v671;
                        (*(v667 + 16))(v586, v453 + *(*v453 + 576), v671);
                        swift_storeEnumTagMultiPayload();
                        LOBYTE(v549) = sub_1CF024490(v548, v547, v549, v636);
                        v550 = *(v546 + 8);
                        v550(v548, v544);
                        v550(v547, v544);
                        if (v549)
                        {
                          goto LABEL_235;
                        }
                      }

                      else
                      {
                        (*(v546 + 8))(v547, v544);
                      }
                    }

                    else
                    {
                      (*(v456 + 8))(v454, v455);
                    }

                    goto LABEL_240;
                  }

                  goto LABEL_320;
                }

                goto LABEL_277;
              }
            }

            else if (v190 != 0x2000000)
            {
              if (v190 != 0x1000000)
              {
LABEL_320:
                v678 = 0;
                v679 = 0xE000000000000000;
                sub_1CF9E7948();
                MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA45B90);
                v682 = v184;
                swift_getWitnessTable();
                sub_1CF9E7FE8();
                result = sub_1CF9E7B68();
                __break(1u);
                return result;
              }

LABEL_277:
              if (qword_1EDEA5A98 != -1)
              {
                swift_once();
              }

              v206 = sub_1CF9615C8(sub_1CF193328, 0);
              return v206 & 1;
            }

            v528 = v191[3];
            v529 = v191[4];
            v530 = v599;
            sub_1CF046AB4();
            v678 = v666;
            v679 = v664;
            v680 = v166;
            v681 = v665;
            v531 = type metadata accessor for Ingestion.DeferredRescan();
            v532 = (*(*v528 + 328))(v530, v531, 0, v668, v669, v670);
            if (!v189)
            {
              v543 = v532;
              (*(v667 + 8))(v530, v671);
              v206 = v543 ^ 1;
              return v206 & 1;
            }

            return (*(v667 + 8))(v530, v671);
          }

          goto LABEL_200;
        }

        if (v190 == 0x2000)
        {
          goto LABEL_191;
        }

        goto LABEL_188;
      }
    }

    else if (v190 < 0x20000)
    {
      if (v190 == 1)
      {
LABEL_200:
        v442 = v615;
        (v187[2])(v615, v661, v186);
        v443 = v662;
        v444 = *(v662 - 8);
        if ((*(v444 + 48))(v442, 1, v662) != 1)
        {
          v206 = swift_getEnumCaseMultiPayload() == 45;
          (*(v444 + 8))(v442, v443);
          return v206 & 1;
        }

        v343 = v187[1];
        v344 = v442;
        goto LABEL_257;
      }

      if (v190 == 0x2000)
      {
LABEL_191:
        if (((*(*v191 + 152))() & 0x80) == 0)
        {
          goto LABEL_235;
        }

        v425 = v187[2];
        v426 = v600;
        v425(v600, v661, v186);
        v427 = v662;
        v428 = *(v662 - 8);
        if ((*(v428 + 48))(v426, 1, v662) != 1)
        {
          v429 = v595;
          v425(v595, v426, v186);
          v430 = swift_getEnumCaseMultiPayload();
          (*(v428 + 8))(v429, v427);
          if (v430 == 28)
          {
            (v187[1])(v426, v186);
            goto LABEL_235;
          }
        }

        v343 = v187[1];
        v344 = v426;
        goto LABEL_257;
      }

LABEL_188:
      if (v190 == 0x10000)
      {
        v423 = *(**(v191[4] + 16) + 848);

        v205 = v423(v424);
LABEL_21:

        v206 = v205 ^ 1;
        return v206 & 1;
      }

      goto LABEL_212;
    }

    if (v190 >= 0x200000)
    {
      if (v190 == 0x200000)
      {
        if (*(v184 + 136) == 0x8000)
        {
          v445 = v665;
          v446 = v666;
          v447 = v664;
          v678 = v666;
          v679 = v664;
          v680 = v166;
          v681 = v665;
          type metadata accessor for ItemJob();
          if (swift_dynamicCastClass())
          {
            v678 = v446;
            v679 = v447;
            v680 = v166;
            v681 = v445;
            type metadata accessor for Ingestion.FetchItemMetadata();
            if (swift_dynamicCastClass())
            {
              goto LABEL_207;
            }

            v678 = v446;
            v679 = v447;
            v680 = v166;
            v681 = v445;
            type metadata accessor for Ingestion.FetchChildrenMetadata();
            if (swift_dynamicCastClass() || (v678 = v446, v679 = v447, v680 = v166, v681 = v445, type metadata accessor for Ingestion.ReSnapshotChildren(), swift_dynamicCastClass()))
            {
LABEL_207:
              v448 = qword_1EDEACC50;

              if (v448 != -1)
              {
                swift_once();
              }

              v206 = sub_1CF9615C8(sub_1CF193328, 0);

              return v206 & 1;
            }
          }
        }

        goto LABEL_235;
      }

      if (v190 == 0x400000)
      {
        v206 = (*(*v191 + 256))() ^ 1;
        return v206 & 1;
      }

      goto LABEL_212;
    }

    if (v190 != 0x20000)
    {
      if (v190 == 0x80000)
      {
        v206 = (*(*v191 + 160))() ^ 1;
        return v206 & 1;
      }

      goto LABEL_212;
    }

    v449 = v616;
    (v187[2])(v616, v661, v186);
    v450 = v662;
    v451 = *(v662 - 8);
    if ((*(v451 + 48))(v449, 1, v662) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_235;
      }

      (*(v451 + 8))(v449, v450);
      goto LABEL_240;
    }

    v343 = v187[1];
    v344 = v449;
LABEL_257:
    v290 = v186;
    goto LABEL_126;
  }

  if (v190 != 256)
  {
    if (v190 == 0x40000)
    {
      goto LABEL_36;
    }

    goto LABEL_52;
  }

LABEL_47:
  if (((*(*v191 + 152))() & 0x100) != 0)
  {
    goto LABEL_235;
  }

  v238 = v187[2];
  v239 = v646;
  v238(v646, v661, v186);
  v240 = v662;
  v241 = *(v662 - 8);
  if ((*(v241 + 48))(v239, 1, v662) == 1)
  {
    goto LABEL_49;
  }

  v319 = v239;
  v320 = v625;
  v238(v625, v319, v186);
  v321 = v320;
  if (swift_getEnumCaseMultiPayload() != 14)
  {
    (*(v241 + 8))(v320, v240);
LABEL_139:
    (v187[1])(v646, v186);
    goto LABEL_140;
  }

  v322 = v630;
  v323 = v621;
  v324 = v631;
  (*(v630 + 32))(v621, v321, v631);
  v675 = sub_1CF04FB80(v677, v671, v636, v666, v664, v166, v665);
  v678 = v675;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v325 = sub_1CF9E6C08();

  (*(v322 + 8))(v323, v324);
  v239 = v646;
  if ((v325 & 1) == 0)
  {
    goto LABEL_139;
  }

LABEL_49:
  (v187[1])(v239, v186);
  v242 = v191[3];
  v231 = v676;
  v230 = v677;
  v232 = 0;
LABEL_50:
  result = sub_1CF66E048(v230, v232, v668, v669, v670);
  if (!v231)
  {
    v206 = result ^ 1;
    return v206 & 1;
  }

  return result;
}