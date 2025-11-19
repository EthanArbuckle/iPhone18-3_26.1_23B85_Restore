uint64_t sub_1CF6BBFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a6;
  v56 = a3;
  v11 = *a2;
  v12 = *(*a2 + 104);
  v47 = v11[11];
  v48 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = sub_1CF9E75D8();
  v50 = *(v52 - 8);
  v14 = *(v50 + 64);
  v15 = MEMORY[0x1EEE9AC00](v52);
  v49 = &v45 - v16;
  v54 = AssociatedTypeWitness;
  v53 = *(AssociatedTypeWitness - 8);
  v17 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v45 - v18;
  v19 = v11[10];
  v46 = v11[12];
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_1CF9E75D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v45 - v25;
  v27 = *(v20 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v45 - v29;
  v31 = *(v22 + 16);
  v51 = a1;
  v31(v26, a1, v21);
  if ((*(v27 + 48))(v26, 1, v20) == 1)
  {
    return (*(v22 + 8))(v26, v21);
  }

  (*(v27 + 32))(v30, v26, v20);
  v33 = a2[3];
  v34 = v59;
  (*(*v33 + 424))(v30, v56, v55, a9);
  if (!v34)
  {
    v59 = a9;
    *&v35 = v19;
    *(&v35 + 1) = v47;
    *&v36 = v46;
    *(&v36 + 1) = v48;
    v57 = v35;
    v58 = v36;
    v37 = type metadata accessor for ItemReconciliation();
    v38 = v50;
    v39 = v49;
    v40 = v52;
    (*(v50 + 16))(v49, v51 + *(v37 + 52), v52);
    v41 = v53;
    if ((*(v53 + 48))(v39, 1, v54) == 1)
    {
      (*(v27 + 8))(v30, v20);
      return (*(v38 + 8))(v39, v40);
    }

    v42 = v45;
    v43 = v39;
    v44 = v54;
    (*(v41 + 32))(v45, v43, v54);
    (*(*v33 + 432))(v42, v56, v55, v59);
    (*(v41 + 8))(v42, v44);
  }

  return (*(v27 + 8))(v30, v20);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 64) & ~*(v4 + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF6BC5C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = v1 + ((*(v6 + 80) + 64) & ~*(v6 + 80));

  return v7(a1, v8, AssociatedTypeWitness);
}

uint64_t sub_1CF6BC64C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for SnapshotItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v1 + ((*(v6 + 80) + 64) & ~*(v6 + 80));

  return v7(a1, v8, v5);
}

uint64_t sub_1CF6BC6CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(type metadata accessor for ItemReconciliation() - 8);
  return sub_1CF6B8584(v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), v7, *(&v7 + 1), v8, *(&v8 + 1), a1);
}

uint64_t objectdestroy_186Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 64) & ~*(v4 + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF6BC820@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = v1 + ((*(v6 + 80) + 64) & ~*(v6 + 80));

  return v7(a1, v8, AssociatedTypeWitness);
}

uint64_t sub_1CF6BC8AC(uint64_t result)
{
  if (result >> 7 != 0xFFFFFFFF)
  {
    return sub_1CF480498(result);
  }

  return result;
}

uint64_t sub_1CF6BC8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_1CF6A5304(a1, a2);
}

uint64_t sub_1CF6BC900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_1CF6A0C60(a1, a2);
}

uint64_t sub_1CF6BC928(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_1CF6A0B64(a1, v1[8]) & 1;
}

void sub_1CF6BC954(void *a1)
{
  sub_1CF6BCA58();
  if (v2 <= 0x3F)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = a1[5];
    type metadata accessor for ItemReconciliation();
    if (v7 <= 0x3F)
    {
      sub_1CF6BCAA8();
      if (v8 <= 0x3F)
      {
        type metadata accessor for ReconciliationTable.PersistAction();
        if (v9 <= 0x3F)
        {
          sub_1CF9E75D8();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CF6BCA58()
{
  if (!qword_1EDEA3740)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3740);
    }
  }
}

void sub_1CF6BCAA8()
{
  if (!qword_1EDEA4790)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEA4790);
    }
  }
}

uint64_t sub_1CF6BCB60(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  a3(&v11, a1, v9);
  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_1CF6BCDA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  a3(&v10, a1);
  result = 0;
  *a2 = v10;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1CF6BCFF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  a3(&v11, a1);
  result = 0;
  v10 = v11;
  *(a2 + 4) = BYTE4(v11);
  *a2 = v10;
  *(a2 + 5) = 0;
  return result;
}

uint64_t sub_1CF6BD250(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  a3(&v12, a1, v9);
  result = 0;
  v11 = v13;
  *a2 = v12;
  *(a2 + 8) = v11;
  return result;
}

uint64_t sub_1CF6BD4C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v16 - v12;
  a3(a1, v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_1CEFDA9E0(v13, a2, &qword_1EC4C23F8, &qword_1CFA11A58);
  return 0;
}

uint64_t sub_1CF6BD7D0(uint64_t a1, _WORD *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  a3(&v11, a1, v9);
  result = 0;
  *a2 = v11;
  return result;
}

uint64_t sub_1CF6BDA38(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128), uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v10 = sub_1CF9E53C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  a3(&v16, a1, v13);
  v14 = *a2;
  *a2 = v16;
  a6(v14);
  return 0;
}

uint64_t sub_1CF6BDC94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  a3(&v11, a1, v9);
  result = 0;
  *a2 = v11;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CF6BDEE4(uint64_t a1, void **a2, void (*a3)(__int128 *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  a3(&v12, a1, v9);
  v10 = *a2;
  *a2 = v12;

  return 0;
}

uint64_t sub_1CF6BE150(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t, __n128), uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v10 = sub_1CF9E53C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  a3(&v17, a1, v13);
  v14 = *a2;
  v15 = a2[1];
  *a2 = v17;
  a6(v14, v15);
  return 0;
}

uint64_t sub_1CF6BE3AC(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v84 = *MEMORY[0x1E6967010];
  v82 = *MEMORY[0x1E6967018];
  v8 = 0;

  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);
    if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v13 == v16)
    {
    }

    else
    {
      v18 = sub_1CF9E8048();

      v19 = v15;

      if (v18)
      {
        goto LABEL_15;
      }

      if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v13 == v20)
      {

LABEL_29:

        v2 = v83;
      }

      else
      {
        v22 = sub_1CF9E8048();

        if (v22)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v86 = 0uLL;
          sub_1CF9E68A8();
          if (*(&v86 + 1))
          {
            v87 = MEMORY[0x1E69E6158];
            sub_1CEFE9EB8(&v86, v85);

            v23 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v88 = *a2;
            v24 = v88;
            v26 = sub_1CEFE4328(v14, v13);
            v27 = v24[2];
            v28 = (v25 & 1) == 0;
            v29 = v27 + v28;
            if (__OFADD__(v27, v28))
            {
              goto LABEL_63;
            }

            if (v24[3] >= v29)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v32 = v88;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

              else
              {
                v75 = v25;
                sub_1CF7CF1E0();
                v32 = v88;
                if ((v75 & 1) == 0)
                {
                  goto LABEL_52;
                }
              }
            }

            else
            {
              v74 = v25;
              sub_1CF7C3178(v29, isUniquelyReferenced_nonNull_native);
              v30 = sub_1CEFE4328(v14, v13);
              if ((v74 & 1) != (v31 & 1))
              {
                goto LABEL_69;
              }

              v26 = v30;
              v32 = v88;
              if ((v74 & 1) == 0)
              {
LABEL_52:
                v32[(v26 >> 6) + 8] |= 1 << v26;
                v66 = (v32[6] + 16 * v26);
                *v66 = v14;
                v66[1] = v13;
                sub_1CEFE9EB8(v85, (v32[7] + 32 * v26));
                v67 = v32[2];
                v44 = __OFADD__(v67, 1);
                v68 = v67 + 1;
                if (v44)
                {
                  goto LABEL_65;
                }

                v32[2] = v68;
                goto LABEL_54;
              }
            }

            v60 = (v32[7] + 32 * v26);
            __swift_destroy_boxed_opaque_existential_1(v60);
            sub_1CEFE9EB8(v85, v60);

LABEL_54:
            *a2 = v32;
LABEL_15:

            goto LABEL_29;
          }
        }

        objc_opt_self();
        v33 = swift_dynamicCastObjCClass();
        if (v33)
        {
          v34 = v33;

          v35 = v19;
          v36 = [v34 value];
          v87 = MEMORY[0x1E69E6370];
          LOBYTE(v86) = v36;
          sub_1CEFE9EB8(&v86, v85);
          v37 = *a2;
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v88 = *a2;
          v39 = v88;
          v40 = sub_1CEFE4328(v14, v13);
          v42 = v39[2];
          v43 = (v41 & 1) == 0;
          v44 = __OFADD__(v42, v43);
          v45 = v42 + v43;
          if (v44)
          {
            goto LABEL_64;
          }

          if (v39[3] < v45)
          {
            v77 = v41;
            sub_1CF7C3178(v45, v38);
            v40 = sub_1CEFE4328(v14, v13);
            v47 = v46 & 1;
            v41 = v77;
            if ((v77 & 1) != v47)
            {
              goto LABEL_69;
            }

            goto LABEL_44;
          }

          if (v38)
          {
LABEL_44:
            v61 = v88;
            if (v41)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v79 = v40;
            v69 = v41;
            sub_1CF7CF1E0();
            v40 = v79;
            v61 = v88;
            if (v69)
            {
              goto LABEL_50;
            }
          }

          v61[(v40 >> 6) + 8] |= 1 << v40;
          v62 = (v61[6] + 16 * v40);
          *v62 = v14;
          v62[1] = v13;
          sub_1CEFE9EB8(v85, (v61[7] + 32 * v40));
          v63 = v61[2];
          v44 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v44)
          {
            goto LABEL_66;
          }

          goto LABEL_59;
        }

        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (!v48)
        {
          goto LABEL_15;
        }

        v49 = v48;

        v35 = v19;
        v50 = [v49 longLongValue];
        v87 = MEMORY[0x1E69E7360];
        *&v86 = v50;
        sub_1CEFE9EB8(&v86, v85);
        v51 = *a2;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v88 = *a2;
        v53 = v88;
        v40 = sub_1CEFE4328(v14, v13);
        v55 = v53[2];
        v56 = (v54 & 1) == 0;
        v44 = __OFADD__(v55, v56);
        v57 = v55 + v56;
        if (v44)
        {
          goto LABEL_67;
        }

        if (v53[3] >= v57)
        {
          if ((v52 & 1) == 0)
          {
            v80 = v40;
            v70 = v54;
            sub_1CF7CF1E0();
            v40 = v80;
            v61 = v88;
            if (v70)
            {
LABEL_50:
              v65 = (v61[7] + 32 * v40);
              __swift_destroy_boxed_opaque_existential_1(v65);
              sub_1CEFE9EB8(v85, v65);

              goto LABEL_60;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v78 = v54;
          sub_1CF7C3178(v57, v52);
          v40 = sub_1CEFE4328(v14, v13);
          v59 = v58 & 1;
          v54 = v78;
          if ((v78 & 1) != v59)
          {
            goto LABEL_69;
          }
        }

        v61 = v88;
        if (v54)
        {
          goto LABEL_50;
        }

LABEL_58:
        v61[(v40 >> 6) + 8] |= 1 << v40;
        v71 = (v61[6] + 16 * v40);
        *v71 = v14;
        v71[1] = v13;
        sub_1CEFE9EB8(v85, (v61[7] + 32 * v40));
        v72 = v61[2];
        v44 = __OFADD__(v72, 1);
        v64 = v72 + 1;
        if (v44)
        {
          goto LABEL_68;
        }

LABEL_59:
        v61[2] = v64;
LABEL_60:
        *a2 = v61;

        v2 = v83;
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

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
  __break(1u);
LABEL_69:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF6BEA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CF9E8048() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1CF6BEA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v22 = *v3;
    v23 = *i;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      goto LABEL_17;
    }

    if (sub_1CF9E6B38() == 12565487 && v10 == 0xA300000000000000)
    {
      break;
    }

    v11 = sub_1CF9E8048();

    if (v11)
    {
      goto LABEL_15;
    }

LABEL_17:

    v24 = v5;
LABEL_18:
    if ((v7 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v15 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
LABEL_28:

      v20 = v7;
      goto LABEL_29;
    }

    if (sub_1CF9E6B38() == 12565487 && v16 == 0xA300000000000000)
    {
    }

    else
    {
      v17 = sub_1CF9E8048();

      if ((v17 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    result = sub_1CF9E69E8();
    if (4 * v15 < result >> 14)
    {
      goto LABEL_38;
    }

    v18 = sub_1CF9E6B58();
    v8 = MEMORY[0x1D3868C10](v18);
    v20 = v19;

LABEL_29:
    if (v6 == v8 && v24 == v20)
    {

      if (v23 != v22)
      {
        return 0;
      }
    }

    else
    {
      v21 = sub_1CF9E8048();

      result = 0;
      if ((v21 & 1) == 0 || v23 != v22)
      {
        return result;
      }
    }

    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

LABEL_15:
  result = sub_1CF9E69E8();
  if (4 * v9 >= result >> 14)
  {
    v13 = sub_1CF9E6B58();
    v6 = MEMORY[0x1D3868C10](v13);
    v24 = v14;

    goto LABEL_18;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CF6BEDC4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1CEFD57E0(0, &qword_1EDEA3480, 0x1E69674F8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D3869C30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1D3869C30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1CF9E7568();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1CF9E7568();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1CF9E7818();
  }

  result = sub_1CF9E7818();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1CF6BF014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    sub_1CF00BCE0(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
    v23 = sub_1CF9E6868();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6BF228(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
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
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_1CEFE42D4(v7, v6);
            sub_1CEFE42D4(v9, v8);
            v22 = sub_1CF9E5498();
            if (v22)
            {
              v23 = sub_1CF9E54C8();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_1CF9E54B8();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_1CEFE42D4(v7, v6);
          sub_1CEFE42D4(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_1CEFE42D4(v7, v6);
            sub_1CEFE42D4(v9, v8);
            v27 = sub_1CF9E5498();
            if (v27)
            {
              v28 = sub_1CF9E54C8();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_1CF9E54B8();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_1CF363A5C(v24, v25, v26, v34);
            sub_1CEFE4714(v9, v8);
            sub_1CEFE4714(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_1CEFE42D4(v7, v6);
          sub_1CEFE42D4(v9, v8);
        }

        sub_1CF363A5C(v34, v9, v8, &v33);
        sub_1CEFE4714(v9, v8);
        sub_1CEFE4714(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF6BF634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a1 + 41);
  for (i = (a2 + 41); ; i += 16)
  {
    v5 = *(v3 - 9);
    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = *(i - 9);
    v9 = *(i - 1);
    v10 = *i;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    if ((*i & 1) == 0)
    {
      goto LABEL_34;
    }

    v11 = *(v3 - 9);
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;
    if (v12 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v14 == v15)
    {
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);

      sub_1CEFD0994(v8, v9, 1);
    }

    else
    {
      v21 = sub_1CF9E8048();
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);

      sub_1CEFD0994(v8, v9, 1);
      if ((v21 & 1) == 0)
      {
        sub_1CEFD0994(v5, v6, 1);
        sub_1CEFD0994(v8, v9, 1);
        v18 = v5;
        v19 = v6;
        v20 = 1;
        goto LABEL_37;
      }
    }

    sub_1CEFD0994(v5, v6, 1);
    sub_1CEFD0994(v8, v9, 1);
LABEL_6:
    sub_1CEFD0994(v5, v6, v7);
    v3 += 16;
    if (!--v2)
    {
      return;
    }
  }

  if (*i)
  {
LABEL_34:
    sub_1CEFD0988(*(v3 - 9), *(v3 - 1), *v3);
    sub_1CEFD0988(v8, v9, v7 ^ 1);
    sub_1CEFD0994(v5, v6, v7);
    v20 = v7 ^ 1;
    v18 = v8;
    v19 = v9;
    goto LABEL_37;
  }

  if (*(v3 - 1))
  {
    if (v6 == 1)
    {
      if (v9 != 1 || v5 != v8)
      {
        goto LABEL_35;
      }
    }

    else if (v5)
    {
      if (v9 != 2 || v8 != 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v17 = 0;
      if (v9 != 2 || v8)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_5;
  }

  if (!*(i - 1) && v5 == v8)
  {
LABEL_5:
    sub_1CEFD0988(*(v3 - 9), *(v3 - 1), 0);
    sub_1CEFD0988(v8, v9, 0);
    goto LABEL_6;
  }

LABEL_35:
  v17 = *(v3 - 9);
LABEL_36:
  sub_1CEFD0988(v17, *(v3 - 1), 0);
  sub_1CEFD0988(v8, v9, 0);
  v18 = v17;
  v19 = v6;
  v20 = 0;
LABEL_37:
  sub_1CEFD0994(v18, v19, v20);
}

uint64_t sub_1CF6BF94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3) && *(v3 - 4) == *(i - 4); i += 32)
    {
      v5 = *i;
      if (*v3)
      {
        if (!*i)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(i - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1CF6BF9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 56);
  for (i = (a2 + 56); ; i += 4)
  {
    v6 = *(v3 - 3);
    v8 = *(v3 - 1);
    v7 = *v3;
    v9 = *(i - 3);
    v10 = *(i - 16);
    v12 = *(i - 1);
    v11 = *i;
    if (*(v3 - 16))
    {
      if (*(v3 - 16) == 1)
      {
        if (v10 != 1 || v6 != v9)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v6)
        {
          if (v10 != 2 || v9 != 1)
          {
            return result;
          }
        }

        else if (v10 != 2 || v9)
        {
          return result;
        }
      }
    }

    else
    {
      if (*(i - 16))
      {
        v14 = 0;
      }

      else
      {
        v14 = v6 == v9;
      }

      if (!v14)
      {
        return 0;
      }
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v16 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      goto LABEL_35;
    }

    if (sub_1CF9E6B38() == 12565487 && v17 == 0xA300000000000000)
    {
      break;
    }

    v18 = sub_1CF9E8048();

    if (v18)
    {
      goto LABEL_33;
    }

LABEL_35:

    v27 = v7;
LABEL_36:
    if ((v11 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v21 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
LABEL_46:

      v26 = v11;
      goto LABEL_47;
    }

    if (sub_1CF9E6B38() == 12565487 && v22 == 0xA300000000000000)
    {
    }

    else
    {
      v23 = sub_1CF9E8048();

      if ((v23 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    result = sub_1CF9E69E8();
    if (4 * v21 < result >> 14)
    {
      goto LABEL_54;
    }

    v24 = sub_1CF9E6B58();
    v12 = MEMORY[0x1D3868C10](v24);
    v26 = v25;

LABEL_47:
    if (v8 == v12 && v27 == v26)
    {
    }

    else
    {
      v5 = sub_1CF9E8048();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v3 += 4;
    if (!--v2)
    {
      return 1;
    }
  }

LABEL_33:
  result = sub_1CF9E69E8();
  if (4 * v16 >= result >> 14)
  {
    v19 = sub_1CF9E6B58();
    v8 = MEMORY[0x1D3868C10](v19);
    v27 = v20;

    goto LABEL_36;
  }

  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1CF6BFD3C(uint64_t a1, char *a2, void (*a3)(char *, uint64_t), char **a4, char *a5, char *a6)
{
  v46 = a6;
  v47 = a2;
  v49 = a4;
  v50 = a5;
  v42 = a1;
  v7 = *a3;
  v8 = *(*a3 + 632);
  v9 = *(*a3 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v7 + 640);
  v48 = a3;
  v12 = *(v7 + 624);
  v55 = AssociatedTypeWitness;
  v56 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ReconciliationID();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v45 = (&v40 - v15);
  v16 = v9;
  v55 = v9;
  v56 = v12;
  v53 = v11;
  v54 = v8;
  AssociatedConformanceWitness = v8;
  v58 = v11;
  v17 = type metadata accessor for ItemReconciliation();
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = sub_1CF9E6DA8();
  if (sub_1CF9E6DF8())
  {
    WitnessTable = swift_getWitnessTable();
    v23 = sub_1CF981D64(v21, v13, WitnessTable);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v59 = v23;
  MEMORY[0x1EEE9AC00](v24);
  *(&v40 - 8) = v16;
  *(&v40 - 7) = v12;
  v25 = v50;
  v27 = v53;
  v26 = v54;
  *(&v40 - 6) = v50;
  *(&v40 - 5) = v26;
  v28 = v46;
  *(&v40 - 4) = v27;
  *(&v40 - 3) = v28;
  v29 = v52;
  sub_1CF6DC314(v20, v47, v48, 0, v49, sub_1CF6FC944, (&v40 - 10), v25, &v55, v28);
  if (!v29)
  {
    v30 = v26;
    v31 = v16;
    v52 = v55;
    LODWORD(v51) = AssociatedConformanceWitness;
    LODWORD(v50) = BYTE1(AssociatedConformanceWitness);
    type metadata accessor for FPCK(0);
    v32 = v45;
    sub_1CF6E2A6C(v20, v31, v12, v30, v27, v45);
    v34 = v52;
    v35 = v52;
    v36 = sub_1CF9E57E8();
    v54 = v36;

    v12 = sub_1CF6C4380(v36, v51, v50, 0, 0);
    v37 = v32;
    v38 = v41;
    (*(v41 + 16))(v42, v37, v13);
    v39 = v44;
    sub_1CF082CB0(v44);

    (*(v38 + 8))(v45, v13);
    (*(v43 + 8))(v20, v39);
  }

  return v12;
}

uint64_t sub_1CF6C01BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1CF9E5A58() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1CF00BCE0(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
  v7 = 0;
  while ((sub_1CF9E6868() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1CF6C02DC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v6 = 0;
    v21 = BYTE2(a2);
    v7 = a4 + 32;
    v8 = a2;
    v19 = HIWORD(a2) & 1;
    v20 = SBYTE1(a2);
    v18 = (a3 + 40);
    v9 = BYTE1(a2);
    do
    {
      v10 = v7 + 24 * v6;
      if (*(v10 + 8) == v8)
      {
        v11 = *(v10 + 9);
        v12 = *(v10 + 10);
        v13 = *(v10 + 16);
        if (v11 == 89)
        {
          if (v9 != 89)
          {
            goto LABEL_3;
          }
        }

        else if (v9 == 89 || qword_1CFA12E48[v11] != qword_1CFA12E48[v20])
        {
          goto LABEL_3;
        }

        if (v12 == 2)
        {
          if (v21 != 2)
          {
            goto LABEL_3;
          }
        }

        else if (v21 == 2 || v19 != (v12 & 1))
        {
          goto LABEL_3;
        }

        v14 = *(v13 + 16);
        if (v14 == *(a3 + 16))
        {
          if (!v14 || v13 == a3)
          {
            return;
          }

          v15 = (v13 + 40);
          for (i = v18; ; i += 2)
          {
            v17 = *(v15 - 1) == *(i - 1) && *v15 == *i;
            if (!v17 && (sub_1CF9E8048() & 1) == 0)
            {
              break;
            }

            v15 += 2;
            if (!--v14)
            {
              return;
            }
          }
        }
      }

LABEL_3:
      ++v6;
    }

    while (v6 != v4);
  }
}

void sub_1CF6C0474()
{
  v1 = v0;
  v2 = *(v0 + qword_1EDEBBC38);
  v3 = fpfs_adopt_log();
  *(v0 + qword_1EDEBBE10) = 1;
  v4 = (v0 + qword_1EDEBBE28);
  __swp(v4, v4);
  if ((v4 & 1) == 0)
  {
    sub_1CF6C0838();
    if (*(v0 + qword_1EDEBBE38) != 1)
    {
      v5 = *(v0 + 64);
      v6 = fpfs_current_log();
      v7 = fpfs_adopt_log();
      aBlock = sub_1CF9E73C8();
      v24 = v8;
      MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
      v9 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v9);

      sub_1CF9E6978();

      v10 = __fp_log_fork();

      v22 = &v22;
      v31 = v10;
      v32 = 0;
      MEMORY[0x1EEE9AC00](v11);
      v18[2] = v6;
      v18[3] = &v31;
      v18[4] = v5;
      v18[5] = "invalidate()";
      v18[6] = 12;
      v19 = 2;
      v20 = sub_1CF6FCB28;
      v21 = v1;
      v30 = 1;
      v29 = 0;
      v12 = swift_allocObject();
      v12[2] = &v30;
      v12[3] = sub_1CF2BA13C;
      v12[4] = v18;
      v12[5] = &v29;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1CF2BA170;
      *(v13 + 24) = v12;
      v27 = sub_1CF1C0B54;
      v28 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1CEFFD02C;
      v26 = &block_descriptor_378;
      v14 = _Block_copy(&aBlock);

      FPDispatchAsyncAndWait(v5, v14);
      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }

      else
      {
        if (v29)
        {
LABEL_12:
          swift_willThrow();

          v17 = fpfs_adopt_log();
          __break(1u);
          return;
        }

        if ((v30 & 1) == 0)
        {

          v15 = fpfs_adopt_log();

          v16 = fpfs_adopt_log();
          return;
        }
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  v22 = fpfs_adopt_log();
}

void sub_1CF6C0838()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v144 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v143 = &v137 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v141 = &v137 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v140 = &v137 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v138 = &v137 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v148 = &v137 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v147 = &v137 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v139 = &v137 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v137 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v137 - v21;
  v23 = [objc_allocWithZone(FPLoggerScope) init];
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = v23;
  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E72C8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = [v25 enter];
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&dword_1CEFC7000, v26, v27, "%@ ✋🏻  invalidating database", v28, 0xCu);
    sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);
  }

  v142 = v25;

  v31 = *(v1 + 8);
  v149 = v1 + 8;
  v150 = v0;
  v151 = v31;
  v31(v22, v0);
  v32 = v152;
  v33 = *(v152 + 64);
  v34 = fpfs_current_log();
  v35 = fpfs_adopt_log();
  v161 = 0;
  v162 = 1;
  aBlock = sub_1CF9E73C8();
  v154 = v36;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v37 = 2;
  v38 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v38);

  sub_1CF9E6978();

  v39 = __fp_log_fork();

  v145 = &v137;
  v161 = v39;
  v162 = 0;
  MEMORY[0x1EEE9AC00](v40);
  *(&v137 - 8) = v34;
  *(&v137 - 7) = &v161;
  *(&v137 - 6) = v33;
  *(&v137 - 5) = "invalidate()";
  *(&v137 - 4) = 12;
  *(&v137 - 24) = 2;
  *(&v137 - 2) = sub_1CF6FCB44;
  *(&v137 - 1) = v32;
  v160 = 1;
  v159 = 0;
  v41 = swift_allocObject();
  v41[2] = &v160;
  v41[3] = sub_1CF2BA13C;
  v41[4] = &v137 - 10;
  v41[5] = &v159;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1CF2BA170;
  *(v42 + 24) = v41;
  v157 = sub_1CF1C0B54;
  v158 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v154 = 1107296256;
  v155 = sub_1CEFFD02C;
  v156 = &block_descriptor_399;
  v43 = _Block_copy(&aBlock);

  v44 = v33;
  FPDispatchAsyncAndWait(v33, v43);
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
  }

  else
  {
    if (v159)
    {
LABEL_40:
      swift_willThrow();

      v135 = fpfs_adopt_log();
      __break(1u);
      goto LABEL_41;
    }

    v37 = v150;
    v32 = v151;
    if (v160)
    {
      goto LABEL_38;
    }

    v45 = fpfs_adopt_log();

    if (qword_1EDEADB60 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v46 = v152;
  [qword_1EDEBBD10 removeWatcher_];
  v47 = fpfs_current_or_default_log();
  v48 = v146;
  sub_1CF9E6128();
  v49 = sub_1CF9E6108();
  v50 = sub_1CF9E72C8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1CEFC7000, v49, v50, "disable event aggregation", v51, 2u);
    MEMORY[0x1D386CDC0](v51, -1, -1);
  }

  v32(v48, v37);
  v52 = *(v46 + 32);
  v53 = *(**(v52 + 16) + 896);

  v53(v54);

  v146 = *(v46 + 40);
  v55 = *(v146 + 2);
  v56 = v55[2];
  v57 = v55[3];
  v55[2] = 0;
  v55[3] = 0;

  sub_1CEFF7124(v56);
  v58 = v55[6];
  v59 = v55[7];
  v55[6] = 0;
  v55[7] = 0;
  sub_1CEFF7124(v58);

  if (*(v46 + 72) == 1)
  {
    v60 = fpfs_current_or_default_log();
    v61 = v139;
    sub_1CF9E6128();
    v62 = sub_1CF9E6108();
    v63 = sub_1CF9E72C8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1CEFC7000, v62, v63, "cancel trees", v64, 2u);
      MEMORY[0x1D386CDC0](v64, -1, -1);
    }

    v32(v61, v37);
    v65 = *(**(v52 + 16) + 904);

    v65(v66);

    v67 = *(**(v146 + 2) + 904);

    v67(v68);
  }

  v69 = fpfs_current_or_default_log();
  v70 = v147;
  sub_1CF9E6128();
  v71 = sub_1CF9E6108();
  v72 = sub_1CF9E72C8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_1CEFC7000, v71, v72, "stopping scheduler", v73, 2u);
    MEMORY[0x1D386CDC0](v73, -1, -1);
  }

  v145 = v52;

  v32(v70, v37);
  sub_1CF3E3914();
  (*(**(v46 + 24) + 128))();
  v74 = fpfs_current_or_default_log();
  v75 = v148;
  sub_1CF9E6128();
  v76 = sub_1CF9E6108();
  v77 = sub_1CF9E72C8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_1CEFC7000, v76, v77, "cancelling in-flight requests", v78, 2u);
    MEMORY[0x1D386CDC0](v78, -1, -1);
  }

  v32(v75, v37);
  v79 = fpfs_current_log();
  v80 = fpfs_adopt_log();
  v161 = 0;
  v162 = 1;
  aBlock = sub_1CF9E73C8();
  v154 = v81;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v82 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v82);

  sub_1CF9E6978();

  v83 = __fp_log_fork();

  v161 = v83;
  v162 = 0;
  MEMORY[0x1EEE9AC00](v84);
  *(&v137 - 8) = v79;
  *(&v137 - 7) = &v161;
  *(&v137 - 6) = v44;
  *(&v137 - 5) = "invalidate()";
  *(&v137 - 4) = 12;
  *(&v137 - 24) = 2;
  v85 = v152;
  *(&v137 - 2) = sub_1CF6FCB60;
  *(&v137 - 1) = v85;
  v160 = 1;
  v159 = 0;
  v86 = swift_allocObject();
  v86[2] = &v160;
  v86[3] = sub_1CF2BA13C;
  v86[4] = &v137 - 10;
  v86[5] = &v159;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1CF2BA170;
  *(v87 + 24) = v86;
  v157 = sub_1CF1C0B54;
  v158 = v87;
  aBlock = MEMORY[0x1E69E9820];
  v154 = 1107296256;
  v155 = sub_1CEFFD02C;
  v156 = &block_descriptor_411;
  v88 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v44, v88);
  _Block_release(v88);
  LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

  if (v88)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v159)
  {
LABEL_41:
    swift_willThrow();

    v136 = fpfs_adopt_log();
    __break(1u);
    return;
  }

  v89 = v150;
  v90 = v151;
  if (v160)
  {
    goto LABEL_39;
  }

  v91 = fpfs_adopt_log();

  v92 = v152;
  if (*(v152 + 72) == 1)
  {
    v93 = fpfs_current_or_default_log();
    v94 = v138;
    sub_1CF9E6128();
    v95 = sub_1CF9E6108();
    v96 = sub_1CF9E72C8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1CEFC7000, v95, v96, "closing trees", v97, 2u);
      MEMORY[0x1D386CDC0](v97, -1, -1);
    }

    v90(v94, v89);
    v98 = v145;
    v99 = *(*v145[2] + 904);

    v99(v100);

    v101 = v146;
    v102 = *(**(v146 + 2) + 904);

    v102(v103);

    v104 = *(*v98[2] + 912);

    v104(v105);

    v106 = *(**(v101 + 2) + 912);

    v106(v107);
  }

  v108 = fpfs_current_or_default_log();
  v109 = v140;
  sub_1CF9E6128();
  v110 = sub_1CF9E6108();
  v111 = sub_1CF9E72C8();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_1CEFC7000, v110, v111, "waiting for job completion", v112, 2u);
    MEMORY[0x1D386CDC0](v112, -1, -1);
  }

  v90(v109, v89);
  v113 = *(v92 + 176);
  sub_1CF9E72F8();
  v114 = fpfs_current_or_default_log();
  v115 = v141;
  sub_1CF9E6128();
  v116 = sub_1CF9E6108();
  v117 = sub_1CF9E72C8();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&dword_1CEFC7000, v116, v117, "stopping tracker", v118, 2u);
    MEMORY[0x1D386CDC0](v118, -1, -1);
  }

  v90(v115, v89);
  v119 = *(v92 + 168);
  fp_task_tracker_cancel(*(v119 + 16));
  fp_task_tracker_wait(*(v119 + 16));
  v120 = fpfs_current_or_default_log();
  v121 = v143;
  sub_1CF9E6128();
  v122 = sub_1CF9E6108();
  v123 = sub_1CF9E72C8();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&dword_1CEFC7000, v122, v123, "closing the wharf", v124, 2u);
    MEMORY[0x1D386CDC0](v124, -1, -1);
  }

  v90(v121, v89);
  v125 = v144;
  if (*(v92 + 72) == 1)
  {
    v126 = *(v92 + 184);
    sub_1CF9BFA28();
  }

  v127 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v128 = v142;
  v129 = sub_1CF9E6108();
  v130 = sub_1CF9E72C8();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v131 = 138412290;
    v133 = [v128 leave];
    *(v131 + 4) = v133;
    *v132 = v133;
    _os_log_impl(&dword_1CEFC7000, v129, v130, "%@", v131, 0xCu);
    sub_1CEFCCC44(v132, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v134 = v132;
    v90 = v151;
    MEMORY[0x1D386CDC0](v134, -1, -1);
    MEMORY[0x1D386CDC0](v131, -1, -1);
  }

  v90(v125, v89);
}

id sub_1CF6C19FC(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + qword_1EDEBBE38) = 1;
  v6 = qword_1EDEAE678;
  if (*(a1 + qword_1EDEAE678))
  {
    v7 = *(a1 + qword_1EDEAE678);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
    v8 = *(a1 + v6);
  }

  *(a1 + v6) = 0;
  swift_unknownObjectRelease();
  *(*(a1 + 160) + 16) = 0;
  v9 = a1 + qword_1EC4EBCD0;
  v10 = *(a1 + qword_1EC4EBCD0);
  if (v10)
  {
    v11 = *(v9 + 8);
    sub_1CF1FD6B8(*(a1 + qword_1EC4EBCD0), v11);
    v12 = v10;
    sub_1CF1FD6F8(v10, v11);
    v51 = sub_1CF4858E0;
    v52 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1CF00A468;
    v50 = &block_descriptor_381;
    v13 = _Block_copy(&aBlock);
    [v12 setAutoRollbackHandlerForSwift_];
    _Block_release(v13);
  }

  v14 = a1 + qword_1EC4EBCD8;
  v15 = *(a1 + qword_1EC4EBCD8);
  if (v15)
  {
    v16 = *(v14 + 8);
    sub_1CF1FD6B8(*(a1 + qword_1EC4EBCD8), v16);
    v17 = v15;
    sub_1CF1FD6F8(v15, v16);
    v51 = sub_1CF4858E0;
    v52 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1CF00A468;
    v50 = &block_descriptor_384;
    v18 = _Block_copy(&aBlock);
    [v17 setAutoRollbackHandlerForSwift_];
    _Block_release(v18);
  }

  v19 = *(a1 + qword_1EDEBBDB0);
  v51 = sub_1CF3C3C94;
  v52 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1CF00A468;
  v50 = &block_descriptor_387;
  v20 = _Block_copy(&aBlock);
  [v19 setAutoRollbackHandlerForSwift_];
  _Block_release(v20);
  v21 = *v9;
  if (*v9)
  {
    v22 = *(v9 + 8);
    sub_1CF1FD6B8(*v9, v22);
    v23 = v21;
    sub_1CF1FD6F8(v21, v22);
    aBlock = 0;
    LODWORD(v22) = [v23 close_];

    v24 = aBlock;
    if (!v22)
    {
      goto LABEL_15;
    }

    v25 = aBlock;
  }

  v26 = *v14;
  if (*v14)
  {
    v27 = *(v14 + 8);
    sub_1CF1FD6B8(*v14, v27);
    v28 = v26;
    sub_1CF1FD6F8(v26, v27);
    aBlock = 0;
    LODWORD(v27) = [v28 close_];

    v24 = aBlock;
    if (v27)
    {
      v29 = aBlock;
      goto LABEL_13;
    }

LABEL_15:
    v32 = v24;
    v33 = sub_1CF9E57F8();

    goto LABEL_17;
  }

LABEL_13:
  aBlock = 0;
  if ([v19 close_])
  {
    result = aBlock;
    v31 = *MEMORY[0x1E69E9840];
    return result;
  }

  v34 = aBlock;
  v33 = sub_1CF9E57F8();

LABEL_17:
  swift_willThrow();
  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v36 = v33;
  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E72B8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    swift_getErrorValue();
    v41 = Error.prettyDescription.getter(v46);
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&dword_1CEFC7000, v37, v38, "can't close DB: %@", v39, 0xCu);
    sub_1CEFCCC44(v40, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v39, -1, -1);
  }

  else
  {
  }

  result = (*(v44 + 8))(v5, v45);
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF6C1FA4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, v1 + 4, sizeof(__dst));
  memcpy(v12, v1 + 4, sizeof(v12));
  if (sub_1CEFF7450(v12) == 1)
  {
    v4 = v1[2];
    v3 = v1[3];

    v4(v5);

    memcpy(v8, a1, sizeof(v8));
    memcpy(__src, a1, sizeof(__src));
    nullsub_1(__src);
    memcpy(v10, v1 + 4, sizeof(v10));
    sub_1CEFCCBDC(v8, v7, &unk_1EC4BFC20, &unk_1CFA0A290);
    memcpy(v1 + 4, __src, 0x208uLL);
    sub_1CEFCCC44(v10, &qword_1EC4C28A8, &qword_1CFA12AF8);
  }

  else
  {
    memcpy(a1, __dst, 0x208uLL);
  }

  return sub_1CEFCCBDC(__dst, v10, &qword_1EC4C28A8, &qword_1CFA12AF8);
}

uint64_t sub_1CF6C20F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00);
  v6 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF6C21C0, v6, v5);
}

uint64_t sub_1CF6C21C0()
{
  *(v0 + 24) = *(*(v0 + 16) + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CF6C2234, 0, 0);
}

uint64_t sub_1CF6C2234()
{
  if (*(v0 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E6F18();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF6C22D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  *(a1 + 152) = 1;
  v6 = qword_1EDEBBCB8;
  if (*(a1 + qword_1EDEBBCB8))
  {
    v7 = *(a1 + qword_1EDEBBCB8);

    sub_1CF4703B8();

    v8 = *(a1 + v6);
  }

  *(a1 + v6) = 0;

  v9 = qword_1EDEBBC88;
  v10 = *(a1 + qword_1EDEBBC88);
  if (v10)
  {
    v11 = sub_1CF9E6F08();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;

    sub_1CF6FCFEC(0, 0, v5, &unk_1CFA12B30, v12);

    v13 = *(a1 + v9);
  }

  *(a1 + v9) = 0;
}

void sub_1CF6C2458(uint64_t a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v309 = v2;
  v310 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v296[0] = v296 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v308 = v296 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v298 = v296 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v313 = *(v10 - 8);
  v11 = *(v313 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v320 = (v296 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v319 = (v296 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v312 = v296 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v332 = v296 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v331 = v296 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v321 = v296 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v316 = *(v24 - 8);
  v25 = *(v316 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v323 = (v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v322 = (v296 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v314 = v296 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = v296 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v334 = v296 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v329 = v296 - v38;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v39 = *(v344 - 1);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v344 - 1);
  v325 = v296 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v324 = (v296 - v44);
  MEMORY[0x1EEE9AC00](v43);
  v315 = v296 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v50 = v296 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v335 = v296 - v52;
  MEMORY[0x1EEE9AC00](v51);
  i = v296 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v302 = *(v54 - 8);
  v303 = v54;
  v55 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v301 = v296 - v56;
  v57 = qword_1EDEBBC70;
  swift_beginAccess();
  v307 = a1;
  v297 = v57;
  v58 = *(a1 + v57);
  v59 = v58 + 64;
  v60 = 1 << *(v58 + 32);
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  else
  {
    v61 = -1;
  }

  v62 = v61 & *(v58 + 64);
  v63 = (v60 + 63) >> 6;
  v317 = v39;
  v341 = (v39 + 48);
  v342.n128_u64[0] = v39 + 56;
  v304 = v58;

  v64 = 0;
  v343 = v10;
  v345 = v24;
  v336 = v35;
  v333 = v50;
  v299 = v63;
  v300 = v59;
  while (v62)
  {
    v65 = v64;
LABEL_11:
    v305 = v65;
    v306 = (v62 - 1) & v62;
    v66 = v301;
    sub_1CEFCCBDC(*(v304 + 56) + *(v302 + 72) * (__clz(__rbit64(v62)) | (v65 << 6)), v301, &unk_1EC4C04C0, &qword_1CFA07B10);
    v67 = *(v66 + *(v303 + 56));

    sub_1CEFCCC44(v66, &unk_1EC4C04C0, &qword_1CFA07B10);
    v68 = 0;
    v69 = *(v67 + 64);
    v311 = v67 + 64;
    v318 = v67;
    v70 = 1 << *(v67 + 32);
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v72 = v71 & v69;
    v73 = (v70 + 63) >> 6;
    v328 = v73;
    if ((v71 & v69) == 0)
    {
LABEL_16:
      if (v73 <= v68 + 1)
      {
        v76 = v68 + 1;
      }

      else
      {
        v76 = v73;
      }

      v75 = v344;
      while (1)
      {
        v74 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if (v74 >= v73)
        {
          *&v340 = v76 - 1;
          v72 = 0;
          v78 = 1;
          goto LABEL_24;
        }

        v72 = *(v311 + 8 * v74);
        ++v68;
        if (v72)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    while (1)
    {
      v74 = v68;
      v75 = v344;
LABEL_23:
      v77 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      sub_1CEFCCBDC(*(v318 + 56) + *(v317 + 72) * (v77 | (v74 << 6)), v50, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v78 = 0;
      *&v340 = v74;
LABEL_24:
      v79 = *v342.n128_u64[0];
      v80 = 1;
      (*v342.n128_u64[0])(v50, v78, 1, v75);
      v81 = *v341;
      if ((*v341)(v50, 1, v75) != 1)
      {
        v82 = *(v75 + 20);
        v83 = *(v75 + 24);
        v337 = *v50;
        v84 = *(v50 + 2);
        v326 = v83;
        v327 = v84;
        v85 = sub_1CF9E6448();
        v86 = *(v85 - 8);
        v338 = v79;
        v87 = *(v86 + 32);
        v88 = v315;
        v87(&v315[v82], &v50[v82], v85);
        v89 = swift_allocObject();
        v339 = v81;
        v90 = v89;
        *(v89 + 16) = *&v50[v326];
        v91 = *(v344 + 20);
        v92 = v335;
        v93 = (v335 + *(v344 + 24));
        *v335 = v337;
        *(v92 + 16) = v327;
        v87((v92 + v91), &v88[v82], v85);
        v75 = v344;
        v80 = 0;
        *v93 = sub_1CF4812A8;
        v93[1] = v90;
        v79 = v338;
        v81 = v339;
        v50 = v333;
      }

      v94 = v335;
      v79(v335, v80, 1, v75);
      v95 = v94;
      v96 = i;
      sub_1CEFE55D0(v95, i, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if ((v81)(v96, 1, v75) == 1)
      {
        break;
      }

      v97 = *(v96 + 16);
      v98 = *(v75 + 20);
      v99 = v96;
      v100 = *(v75 + 24);
      v101 = v324;
      *v324 = *v99;
      *(v101 + 16) = v97;
      v102 = sub_1CF9E6448();
      v103 = *(v102 - 8);
      v338 = v102;
      v339 = v103;
      v104 = *(v103 + 4);
      v337 = *&v99[v100];
      v104(v101 + v98, &v99[v98], v102);
      *(v101 + v100) = v337;
      v105 = v325;
      sub_1CEFCCBDC(v101, v325, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CEFD0A98(*v105);

      v106 = v105 + *(v75 + 24);
      v108 = *v106;
      v107 = *(v106 + 8);
      v109 = FPDomainUnavailableError();
      v110 = *(v75 + 20);
      v108();

      v50 = v333;
      sub_1CEFCCC44(v101, &unk_1EC4C04B0, &unk_1CF9FCB20);
      (*(v339 + 1))(v105 + v110, v338);
      v68 = v340;
      v73 = v328;
      if (!v72)
      {
        goto LABEL_16;
      }
    }

    v64 = v305;
    v62 = v306;
    v35 = v336;
    v63 = v299;
    v59 = v300;
  }

  while (1)
  {
    v65 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_124;
    }

    if (v65 >= v63)
    {
      break;
    }

    v62 = *(v59 + 8 * v65);
    ++v64;
    if (v62)
    {
      goto LABEL_11;
    }
  }

  v111 = sub_1CF4E1040(MEMORY[0x1E69E7CC0]);
  v112 = v307;
  v113 = *(v307 + v297);
  *(v307 + v297) = v111;

  v114 = qword_1EC4EBD70;
  swift_beginAccess();
  v324 = v114;
  v115 = *(v112 + v114);
  v116 = v115 + 64;
  v117 = 1 << *(v115 + 32);
  v118 = -1;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  i = v118 & *(v115 + 64);
  v63 = (v117 + 63) >> 6;
  v344 = (v316 + 56);
  v342.n128_u64[0] = v316 + 48;
  v327 = v115;

  v119 = 0;
  v325 = v63;
  v326 = v116;
LABEL_34:
  v120 = i;
  if (i)
  {
    v121 = v119;
LABEL_39:
    i = (v120 - 1) & v120;
    v122 = *(v327 + 56);
    v328 = v121;
    v123 = *(v122 + ((v121 << 9) | (8 * __clz(__rbit64(v120)))));
    v124 = *(v123 + 2);
    v333 = v123;

    v63 = 0;
    v339 = v124;
    if (!v124)
    {
LABEL_40:
      v125 = 1;
      v341 = v124;
      v126 = v345;
      goto LABEL_44;
    }

    while ((v63 & 0x8000000000000000) == 0)
    {
      v126 = v345;
      if (v63 >= *(v333 + 2))
      {
        goto LABEL_121;
      }

      sub_1CEFCCBDC(&v333[((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v63], v35, &qword_1EC4BE670, &qword_1CF9FE4D0);
      v125 = 0;
      v341 = (v63 + 1);
LABEL_44:
      v127 = *v344;
      v128 = 1;
      (*v344)(v35, v125, 1, v126);
      v129 = *v342.n128_u64[0];
      if ((*v342.n128_u64[0])(v35, 1, v126) != 1)
      {
        v130 = v345[16];
        v335 = v345[20];
        v131 = v336;
        v132 = *(v336 + 1);
        v338 = *v336;
        *&v337 = v132;
        v133 = sub_1CF9E6448();
        v134 = *(v133 - 8);
        *&v340 = v129;
        v135 = *(v134 + 32);
        v136 = v314;
        v135(&v314[v130], &v131[v130], v133);
        v137 = swift_allocObject();
        v138 = v334;
        *(v137 + 16) = *&v131[v335];
        v139 = v345[16];
        v140 = &v138[v345[20]];
        v141 = v337;
        *v138 = v338;
        *(v138 + 1) = v141;
        v142 = &v136[v130];
        v126 = v345;
        v135(&v138[v139], v142, v133);
        v129 = v340;
        v128 = 0;
        *v140 = sub_1CF5DEE90;
        v140[1] = v137;
      }

      v143 = v334;
      v127(v334, v128, 1, v126);
      v144 = v329;
      sub_1CEFE55D0(v143, v329, &unk_1EC4C04F0, &qword_1CFA12B10);
      if (v129(v144, 1, v126) == 1)
      {

        v119 = v328;
        v35 = v336;
        v63 = v325;
        v116 = v326;
        goto LABEL_34;
      }

      v145 = v126[16];
      v146 = v126[20];
      v147 = v126;
      v148 = v322;
      *v322 = *v144;
      v149 = sub_1CF9E6448();
      v150 = *(v149 - 8);
      v151 = *(v150 + 32);
      v340 = *&v144[v146];
      v151(v148 + v145, &v144[v145], v149);
      *(v148 + v146) = v340;
      v152 = v323;
      sub_1CEFCCBDC(v148, v323, &qword_1EC4BE670, &qword_1CF9FE4D0);
      sub_1CEFD0A98(*v152);
      v153 = v152 + v147[20];
      v155 = *v153;
      v154 = *(v153 + 1);
      v352 = 0;
      v350 = 0u;
      v351 = 0u;
      v156 = FPDomainUnavailableError();
      v157 = v147[16];
      v155(&v350, v156);

      sub_1CEFCCC44(&v350, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CEFCCC44(v148, &qword_1EC4BE670, &qword_1CF9FE4D0);
      (*(v150 + 8))(v152 + v157, v149);
      v35 = v336;
      v124 = v339;
      v63 = v341;
      if (v341 == v339)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    os_unfair_lock_unlock(v63);
    __break(1u);
LABEL_130:
    MEMORY[0x1EEE9AC00](v262);
    v296[-2] = v35;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v296[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  while (1)
  {
    v121 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      goto LABEL_125;
    }

    if (v121 >= v63)
    {
      break;
    }

    v120 = *(v116 + 8 * v121);
    ++v119;
    if (v120)
    {
      goto LABEL_39;
    }
  }

  v158 = sub_1CF4E1238(MEMORY[0x1E69E7CC0]);
  v159 = v307;
  v160 = *(v324 + v307);
  *(v324 + v307) = v158;

  v35 = qword_1EC4EBD78;
  swift_beginAccess();
  v328 = v35;
  v161 = *(v159 + v35);
  v162 = (v161 + 64);
  v163 = 1 << v161[32];
  v164 = -1;
  if (v163 < 64)
  {
    v164 = ~(-1 << v163);
  }

  v335 = v164 & *(v161 + 8);
  v63 = (v163 + 63) >> 6;
  v344 = (v313 + 48);
  v345 = (v313 + 56);
  v333 = v161;

  v165 = 0;
  v329 = v63;
  for (i = v162; ; v162 = i)
  {
    v166 = v332;
    v167 = v335;
    if (!v335)
    {
      break;
    }

    v168 = v165;
LABEL_58:
    v334 = v168;
    v335 = (v167 - 1) & v167;
    v169 = *(*(v333 + 7) + ((v168 << 9) | (8 * __clz(__rbit64(v167)))));
    v170 = v169[2];
    v336 = v169;

    v63 = 0;
    v339 = v170;
    if (!v170)
    {
LABEL_59:
      v171 = 1;
      v342.n128_u64[0] = v170;
      v172 = v343;
      goto LABEL_63;
    }

    while (1)
    {
      if (v63 < 0)
      {
        goto LABEL_122;
      }

      v172 = v343;
      if (v63 >= *(v336 + 2))
      {
        goto LABEL_123;
      }

      sub_1CEFCCBDC(&v336[((*(v313 + 80) + 32) & ~*(v313 + 80)) + *(v313 + 72) * v63], v166, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v171 = 0;
      v342.n128_u64[0] = v63 + 1;
LABEL_63:
      v173 = *v345;
      v174 = 1;
      (*v345)(v166, v171, 1, v172);
      v35 = *v344;
      if ((*v344)(v166, 1, v172) != 1)
      {
        v175 = *(v172 + 64);
        *&v337 = *(v172 + 80);
        v341 = v35;
        v176 = v332;
        v177 = *(v332 + 1);
        *&v340 = *v332;
        v338 = v177;
        v178 = sub_1CF9E6448();
        v179 = *(*(v178 - 8) + 32);
        v180 = v312;
        v179(&v312[v175], &v176[v175], v178);
        v181 = swift_allocObject();
        *(v181 + 16) = *&v176[v337];
        v182 = *(v343 + 64);
        v183 = v331;
        v184 = &v331[*(v343 + 80)];
        v185 = v338;
        *v331 = v340;
        *(v183 + 1) = v185;
        v179(&v183[v182], &v180[v175], v178);
        v172 = v343;
        v174 = 0;
        *v184 = sub_1CF5E14E0;
        v184[1] = v181;
        v35 = v341;
      }

      v186 = v331;
      v173(v331, v174, 1, v172);
      v187 = v321;
      sub_1CEFE55D0(v186, v321, &unk_1EC4C04D0, &unk_1CFA12B00);
      if ((v35)(v187, 1, v172) == 1)
      {
        break;
      }

      v188 = v187;
      v189 = *(v172 + 64);
      v190 = *(v172 + 80);
      v191 = v172;
      v192 = v319;
      *v319 = *v188;
      v341 = sub_1CF9E6448();
      v193 = *(v341 - 1);
      v194 = *(v193 + 32);
      v340 = *&v188[v190];
      v194(v192 + v189, &v188[v189], v341);
      *(v192 + v190) = v340;
      v195 = v320;
      sub_1CEFCCBDC(v192, v320, &unk_1EC4C5230, &unk_1CF9FE4C0);
      sub_1CEFD0A98(*v195);
      v196 = v195 + *(v191 + 80);
      v198 = *v196;
      v197 = *(v196 + 1);
      v352 = 0;
      v350 = 0u;
      v351 = 0u;
      v199 = FPDomainUnavailableError();
      v35 = *(v191 + 64);
      v198(&v350, v199);

      sub_1CEFCCC44(&v350, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CEFCCC44(v192, &unk_1EC4C5230, &unk_1CF9FE4C0);
      (*(v193 + 8))(v195 + v35, v341);
      v166 = v332;
      v170 = v339;
      v63 = v342.n128_u64[0];
      if (v342.n128_u64[0] == v339)
      {
        goto LABEL_59;
      }
    }

    v165 = v334;
    v63 = v329;
  }

  while (1)
  {
    v168 = (v165 + 1);
    if (__OFADD__(v165, 1))
    {
      goto LABEL_126;
    }

    if (v168 >= v63)
    {
      break;
    }

    v167 = *(v162 + 8 * v168);
    ++v165;
    if (v167)
    {
      goto LABEL_58;
    }
  }

  v72 = MEMORY[0x1E69E7CC0];
  v200 = sub_1CF4E1330(MEMORY[0x1E69E7CC0]);
  v74 = v307;
  v201 = *(v307 + v328);
  *(v307 + v328) = v200;

  v50 = qword_1EDEBBD00;
  swift_beginAccess();
  v202 = *&v50[v74];
  v203 = *(v202 + 16);
  if (v203)
  {
    v204 = *&v50[v74];

    v205 = (v202 + 40);
    do
    {
      v207 = *(v205 - 1);
      v206 = *v205;

      v208 = FPDomainUnavailableError();
      *&v350 = v208;
      v207(&v350);

      v205 += 2;
      --v203;
    }

    while (v203);

    v209 = v307;
    v210 = *&v50[v307];
  }

  else
  {
LABEL_73:
    v209 = v74;
  }

  *&v50[v209] = v72;

  v211 = qword_1EDEBBC90;
  swift_beginAccess();
  v212 = v307;
  v213 = *(v307 + v211);
  v214 = *(v213 + 16);
  if (v214)
  {
    v215 = *(v307 + v211);

    v216 = (v213 + 56);
    do
    {
      v217 = *(v216 - 3);
      v219 = *(v216 - 1);
      v218 = *v216;

      sub_1CEFD09A0(v217);
      v220 = FPDomainUnavailableError();
      *&v350 = v220;
      v219(&v350);

      sub_1CEFD0A98(v217);

      v216 += 4;
      --v214;
    }

    while (v214);

    v212 = v307;
    v221 = *(v307 + v211);
    v72 = MEMORY[0x1E69E7CC0];
  }

  *(v212 + v211) = v72;
  v222 = v212;

  v35 = qword_1EC4EBD80;
  swift_beginAccess();
  v223 = *(v222 + v35);
  v224 = *(v223 + 64);
  v341 = (v223 + 64);
  v225 = 1 << *(v223 + 32);
  v226 = -1;
  if (v225 < 64)
  {
    v226 = ~(-1 << v225);
  }

  v227 = v226 & v224;
  v339 = v35;
  *&v340 = (v225 + 63) >> 6;

  v229 = 0;
  v63 = &unk_1EC4C1B30;
  v342.n128_u64[0] = v228;
  while (v227)
  {
LABEL_86:
    v231 = __clz(__rbit64(v227));
    v227 &= v227 - 1;
    v35 = *(*(v228 + 56) + ((v229 << 9) | (8 * v231)));
    v232 = *(v35 + 16);
    if (v232)
    {
      v344 = v229;
      v345 = v227;

      v343 = v35;
      v35 += 64;
      do
      {
        v233 = *(v35 - 32);
        v234 = v63;
        v236 = *(v35 - 8);
        v235 = *v35;
        v352 = 0;
        v350 = 0u;
        v351 = 0u;

        sub_1CEFD09A0(v233);
        v237 = FPDomainUnavailableError();
        v349[0] = v237;
        v236(&v350, v349);

        sub_1CEFD0A98(v233);
        v63 = v234;

        sub_1CEFCCC44(&v350, v234, &qword_1CFA05300);
        v35 += 40;
        --v232;
      }

      while (v232);

      v228 = v342.n128_u64[0];
      v229 = v344;
      v227 = v345;
    }
  }

  while (1)
  {
    v230 = v229 + 1;
    if (__OFADD__(v229, 1))
    {
      goto LABEL_127;
    }

    if (v230 >= v340)
    {
      break;
    }

    v227 = *&v341[8 * v230];
    v229 = (v229 + 1);
    if (v227)
    {
      v229 = v230;
      goto LABEL_86;
    }
  }

  v238 = sub_1CF4E1344(MEMORY[0x1E69E7CC0]);
  v239 = v307;
  v240 = *&v339[v307];
  *&v339[v307] = v238;

  v35 = qword_1EDEBBC60;
  v63 = 1;
  swift_beginAccess();
  v342.n128_u64[0] = v35;
  v241 = *(v239 + v35);
  v242 = *(v241 + 64);
  v343 = v241 + 64;
  v243 = 1 << *(v241 + 32);
  v244 = -1;
  if (v243 < 64)
  {
    v244 = ~(-1 << v243);
  }

  v245 = v244 & v242;
  v246 = (v243 + 63) >> 6;

  v248 = 0;
  v344 = v247;
  while (v245)
  {
LABEL_98:
    v250 = __clz(__rbit64(v245));
    v245 &= v245 - 1;
    v251 = v247[7];
    v252 = (v248 << 9) | (8 * v250);
    v253 = *(v251 + v252);
    v254 = *(v253 + 2);
    if (v254)
    {
      v255 = *(v251 + v252);

      v345 = v253;
      v35 = (v253 + 10);
      do
      {
        v256 = *(v35 - 8);
        v63 = *v35;

        v257 = FPDomainUnavailableError();
        v349[0] = v257;
        v256(v349);

        v35 += 16;
        --v254;
      }

      while (v254);

      v247 = v344;
    }
  }

  while (1)
  {
    v249 = v248 + 1;
    if (__OFADD__(v248, 1))
    {
      goto LABEL_128;
    }

    if (v249 >= v246)
    {
      break;
    }

    v245 = *(v343 + 8 * v249);
    ++v248;
    if (v245)
    {
      v248 = v249;
      goto LABEL_98;
    }
  }

  v258 = sub_1CF4E1358(MEMORY[0x1E69E7CC0]);
  v35 = v307;
  v259 = *(v307 + v342.n128_u64[0]);
  *(v307 + v342.n128_u64[0]) = v258;

  v260 = (v35 + qword_1EDEBBC20);
  os_unfair_lock_lock((v35 + qword_1EDEBBC20));
  sub_1CF6F4B7C(&v260[2]);
  os_unfair_lock_unlock(v260);
  v63 = v35 + qword_1EDEBBC28;
  os_unfair_lock_lock((v35 + qword_1EDEBBC28));
  v261 = v296[1];
  sub_1CF6C4260(v63 + 8);
  if (v261)
  {
    goto LABEL_129;
  }

  os_unfair_lock_unlock(v63);
  v262 = objc_sync_enter(v35);
  if (v262)
  {
    goto LABEL_130;
  }

  swift_beginAccess();
  v263 = *(v35 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28B0, &qword_1CFA12B18);
  *(swift_initStackObject() + 16) = v263;

  v264 = objc_sync_exit(v35);
  if (v264)
  {
    MEMORY[0x1EEE9AC00](v264);
    v296[-2] = v35;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v296[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v265 = sub_1CF6F36B4();

  v266 = *(v265 + 16);
  if (v266)
  {
    v341 = 0;
    v267 = [objc_allocWithZone(FPLoggerScope) init];
    v268 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v269 = v267;
    v270 = sub_1CF9E6108();
    v271 = sub_1CF9E72C8();

    if (os_log_type_enabled(v270, v271))
    {
      v272 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      *v272 = 138412290;
      v274 = [v269 enter];
      *(v272 + 4) = v274;
      *v273 = v274;
      _os_log_impl(&dword_1CEFC7000, v270, v271, "%@ Running jobs", v272, 0xCu);
      sub_1CEFCCC44(v273, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v273, -1, -1);
      MEMORY[0x1D386CDC0](v272, -1, -1);
    }

    *&v340 = v269;

    v275 = *(v310 + 8);
    v310 += 8;
    v345 = v275;
    v276 = (v275)(v298, v309);
    v277 = 32;
    v276.n128_u64[0] = 136315138;
    v342 = v276;
    v278 = v308;
    v343 = v265;
    do
    {
      v279 = *(v265 + v277);

      v280 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      swift_retain_n();
      v281 = sub_1CF9E6108();
      v282 = sub_1CF9E72C8();
      if (os_log_type_enabled(v281, v282))
      {
        v283 = swift_slowAlloc();
        v284 = swift_slowAlloc();
        v344 = v284;
        v348 = v284;
        *v283 = v342.n128_u32[0];
        if (v279 < 0)
        {
          v346 = 2650214;
          v347 = 0xE300000000000000;
          v285 = sub_1CF902D78(v284);
        }

        else
        {
          v346 = 2650982;
          v347 = 0xE300000000000000;
          v285 = sub_1CF902D78(v284);
        }

        MEMORY[0x1D3868CC0](v285);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

        v286 = sub_1CEFD0DF0(v346, v347, &v348);

        *(v283 + 4) = v286;
        _os_log_impl(&dword_1CEFC7000, v281, v282, "running job: %s", v283, 0xCu);
        v287 = v344;
        __swift_destroy_boxed_opaque_existential_1(v344);
        MEMORY[0x1D386CDC0](v287, -1, -1);
        MEMORY[0x1D386CDC0](v283, -1, -1);

        v278 = v308;
        (v345)(v308, v309);
        v265 = v343;
      }

      else
      {

        (v345)(v278, v309);
      }

      v277 += 8;
      --v266;
    }

    while (v266);

    v288 = fpfs_current_or_default_log();
    v289 = v296[0];
    sub_1CF9E6128();
    v290 = v340;
    v291 = sub_1CF9E6108();
    v292 = sub_1CF9E72C8();

    if (os_log_type_enabled(v291, v292))
    {
      v293 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      *v293 = 138412290;
      v295 = [v290 leave];
      *(v293 + 4) = v295;
      *v294 = v295;
      _os_log_impl(&dword_1CEFC7000, v291, v292, "%@", v293, 0xCu);
      sub_1CEFCCC44(v294, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v294, -1, -1);
      MEMORY[0x1D386CDC0](v293, -1, -1);
    }

    (v345)(v289, v309);
  }

  else
  {
  }
}

double sub_1CF6C4260(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v3;
  v4 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v4;
  v5 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v5;

  sub_1CEFCCC44(v16, &qword_1EC4C0668, &unk_1CFA05A70);
  v6 = *(v2 + 16);
  if (v6)
  {
    sub_1CF2CA194();
    v7 = (v2 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = swift_allocError();
      *&v15[0] = v10;

      v8(v15);

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  sub_1CF3FE2CC(v15);
  v11 = v15[3];
  *(a1 + 32) = v15[2];
  *(a1 + 48) = v11;
  v12 = v15[5];
  *(a1 + 64) = v15[4];
  *(a1 + 80) = v12;
  result = *v15;
  v14 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_1CF6C4380(void *a1, char a2, char a3, char a4, uint64_t a5)
{
  if (a5 <= 9)
  {
    LOBYTE(v7) = a3;
    LOBYTE(v8) = a2;
    v9 = a1;
    v10 = [a1 domain];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = v12;
    v32 = v11;

    v13 = [v9 code];
    LOBYTE(v14) = a4 & 1;
    v15 = sub_1CF1F6E08(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      *(v15 + 2) = v18;
      v19 = &v15[32 * v17];
      *(v19 + 4) = v32;
      *(v19 + 5) = v31;
      *(v19 + 6) = v13;
      v19[56] = v8;
      v19[57] = v7;
      v19[58] = v14;
      v20 = [v9 underlyingErrors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v21 = sub_1CF9E6D48();

      v9 = sub_1CF7FC11C(v21);

      if (v9 >> 62)
      {
        result = sub_1CF9E7818();
        v7 = result;
        if (!result)
        {
LABEL_31:

          return v15;
        }
      }

      else
      {
        v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_31;
        }
      }

      if (v7 < 1)
      {
        __break(1u);
        return result;
      }

      v8 = 0;
      v14 = v9 & 0xC000000000000001;
      while (1)
      {
        v23 = v14 ? MEMORY[0x1D3869C30](v8, v9) : *(v9 + 8 * v8 + 32);
        v17 = v23;
        v24 = sub_1CF6C4380(v23, 6, 89, 1, a5 + 1);
        v13 = *(v24 + 16);
        v16 = *(v15 + 2);
        v25 = &v13[v16];
        if (__OFADD__(v16, v13))
        {
          break;
        }

        v26 = *(v15 + 3) >> 1;
        if (v26 < v25)
        {
          if (v16 <= v25)
          {
            v30 = &v13[v16];
          }

          else
          {
            v30 = *(v15 + 2);
          }

          v18 = v24;
          v15 = sub_1CF1F6E08(1, v30, 1, v15);
          v24 = v18;
          v16 = *(v15 + 2);
          v26 = *(v15 + 3) >> 1;
          if (*(v18 + 16))
          {
LABEL_15:
            if ((v26 - v16) < v13)
            {
              goto LABEL_27;
            }

            v18 = v24;
            swift_arrayInitWithCopy();

            if (v13)
            {
              v28 = *(v15 + 2);
              v29 = __OFADD__(v28, v13);
              v16 = &v13[v28];
              if (v29)
              {
                goto LABEL_28;
              }

              *(v15 + 2) = v16;
            }

            goto LABEL_8;
          }
        }

        else
        {
          v27 = *(v24 + 16);
          if (v13)
          {
            goto LABEL_15;
          }
        }

        if (v13)
        {
          goto LABEL_26;
        }

LABEL_8:
        ++v8;

        if (v7 == v8)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v15 = sub_1CF1F6E08((v16 > 1), v18, 1, v15);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t FPCKDetachedRoot.physicalLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation;
  v4 = sub_1CF9E5A58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FPCKDetachedRoot.__allocating_init(physicalLocation:rootURL:)(uint64_t a1, uint64_t a2)
{
  v57 = sub_1CF9E53C8();
  v56 = *(v57 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1CF9E6118();
  v53 = *(v54 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v52 - v20;
  v62 = v2;
  v60 = objc_allocWithZone(v2);
  v64 = a1;
  sub_1CF9E5A18();
  v61 = a2;
  v66 = a2;
  (*(v15 + 56))(v13, 1, 1, v14);
  v75 = 0;
  v21 = swift_allocObject();
  v63 = v13;
  *(v21 + 16) = v13;
  *(v21 + 24) = sub_1CF6E9450;
  *(v21 + 32) = &v65;
  *(v21 + 40) = &v75;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CF6E946C;
  *(v22 + 24) = v21;
  v73 = sub_1CF005DD0;
  v74 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v70 = 1107296256;
  v71 = sub_1CF005DF8;
  v72 = &block_descriptor_34;
  v23 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(a1) = fpfs_openat();

  _Block_release(v23);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v75)
  {
    swift_willThrow();
LABEL_4:

    v26 = sub_1CF9E5A58();
    v27 = *(*(v26 - 8) + 8);
    v27(v64, v26);

    sub_1CEFCCC44(v63, &qword_1EC4C23F8, &qword_1CFA11A58);
    v27(v61, v26);
    v28 = *((*MEMORY[0x1E69E7D40] & *v60) + 0x30);
    v29 = *((*MEMORY[0x1E69E7D40] & *v60) + 0x34);
    swift_deallocPartialClassInstance();
    return v27;
  }

  if ((a1 & 0x80000000) == 0)
  {

    a1 = v63;
    v30 = v59;
    sub_1CEFCCBDC(v63, v59, &qword_1EC4C23F8, &qword_1CFA11A58);
    if ((*(v15 + 48))(v30, 1, v14) != 1)
    {

      v31 = v58;
      sub_1CEFE55D0(v30, v58, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFCCC44(a1, &qword_1EC4C23F8, &qword_1CFA11A58);
      v32 = OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation;
      v33 = sub_1CF9E5A58();
      v34 = *(v33 - 8);
      v35 = v60;
      (*(v34 + 16))(v60 + v32, v64, v33);
      sub_1CEFCCBDC(v31, v18, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFE55D0(v18, &v35[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation], &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFCCBDC(v31, v18, &qword_1EC4C2400, qword_1CFA11A60);
      *&v35[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_inode] = *&v18[*(v14 + 48)];
      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFE55D0(v31, v18, &qword_1EC4C2400, qword_1CFA11A60);
      v35[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_shouldRefreshBookmark] = v18[*(v14 + 64)];
      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
      v68.receiver = v35;
      v68.super_class = v62;
      v27 = objc_msgSendSuper2(&v68, sel_init);
      v36 = *(v34 + 8);
      v36(v64, v33);
      v36(v61, v33);
      return v27;
    }

    goto LABEL_17;
  }

  if (MEMORY[0x1D38683F0](v25))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v38 = sub_1CF9E6138();
      if ((v38 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v38;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v39 = v55;
      v40 = v57;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v56 + 8))(v39, v40);
      swift_willThrow();
    }

    goto LABEL_4;
  }

LABEL_18:

  aBlock = 0;
  v70 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v70 = 0x80000001CFA2DF30;
  v67 = a1;
  v41 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v41);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v42 = aBlock;
  v43 = v70;
  v44 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v45 = sub_1CF9E6108();
  v46 = sub_1CF9E72B8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136315650;
    v49 = sub_1CF9E7988();
    v51 = sub_1CEFD0DF0(v49, v50, &aBlock);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 315;
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_1CEFD0DF0(v42, v43, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v45, v46, "[ASSERT] ‼️  %s:%lu: %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v48, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);
  }

  (*(v53 + 8))(v52, v54);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t FPCKDetachedRoot.init(physicalLocation:rootURL:)(uint64_t a1, uint64_t a2)
{
  v64 = sub_1CF9E53C8();
  v63 = *(v64 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CF9E6118();
  v60 = *(v61 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v58 - v20;
  v70 = a1;
  sub_1CF9E5A18();
  v67 = a2;
  v72 = a2;
  (*(v15 + 56))(v13, 1, 1, v14);
  v81 = 0;
  v21 = swift_allocObject();
  v69 = v13;
  *(v21 + 16) = v13;
  *(v21 + 24) = sub_1CF6FCF28;
  *(v21 + 32) = &v71;
  *(v21 + 40) = &v81;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CF6FCF1C;
  *(v22 + 24) = v21;
  v79 = sub_1CF6FCFCC;
  v80 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v76 = 1107296256;
  v77 = sub_1CF005DF8;
  v78 = &block_descriptor_15_1;
  v23 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v24 = fpfs_openat();

  _Block_release(v23);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v81)
  {
    swift_willThrow();
    goto LABEL_4;
  }

  if ((v24 & 0x80000000) == 0)
  {

    v33 = v69;
    v34 = v66;
    sub_1CEFCCBDC(v69, v66, &qword_1EC4C23F8, &qword_1CFA11A58);
    if ((*(v15 + 48))(v34, 1, v14) != 1)
    {

      v35 = v34;
      v36 = v65;
      sub_1CEFE55D0(v35, v65, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFCCC44(v33, &qword_1EC4C23F8, &qword_1CFA11A58);
      v37 = OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation;
      v38 = sub_1CF9E5A58();
      v39 = *(v38 - 8);
      v40 = v68;
      (*(v39 + 16))(&v68[v37], v70, v38);
      sub_1CEFCCBDC(v36, v18, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFE55D0(v18, &v40[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation], &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFCCBDC(v36, v18, &qword_1EC4C2400, qword_1CFA11A60);
      *&v40[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_inode] = *&v18[*(v14 + 48)];
      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFE55D0(v36, v18, &qword_1EC4C2400, qword_1CFA11A60);
      v40[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_shouldRefreshBookmark] = v18[*(v14 + 64)];
      sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
      v41 = type metadata accessor for FPCKDetachedRoot(0);
      v74.receiver = v40;
      v74.super_class = v41;
      v29 = objc_msgSendSuper2(&v74, sel_init);
      v42 = *(v39 + 8);
      v42(v70, v38);
      v42(v67, v38);
      return v29;
    }

    goto LABEL_18;
  }

  if (MEMORY[0x1D38683F0](v25))
  {
    if (MEMORY[0x1D38683F0]() != 9939394)
    {
      MEMORY[0x1D38683F0]();
      v44 = sub_1CF9E6138();
      v27 = v67;
      v26 = v68;
      v28 = v70;
      if ((v44 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v44;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v45 = v62;
      v46 = v64;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v63 + 8))(v45, v46);
      swift_willThrow();
      goto LABEL_5;
    }

    [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    swift_willThrow();
LABEL_4:
    v27 = v67;
    v26 = v68;
    v28 = v70;
LABEL_5:

    v29 = sub_1CF9E5A58();
    v30 = *(*(v29 - 8) + 8);
    v30(v28, v29);

    sub_1CEFCCC44(v69, &qword_1EC4C23F8, &qword_1CFA11A58);
    v30(v27, v29);
    type metadata accessor for FPCKDetachedRoot(0);
    v31 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x30);
    v32 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x34);
    swift_deallocPartialClassInstance();
    return v29;
  }

LABEL_19:

  aBlock = 0;
  v76 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v76 = 0x80000001CFA2DF30;
  v73 = v24;
  v47 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v47);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v48 = aBlock;
  v49 = v76;
  v50 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v51 = sub_1CF9E6108();
  v52 = sub_1CF9E72B8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v53 = 136315650;
    v55 = sub_1CF9E7988();
    v57 = sub_1CEFD0DF0(v55, v56, &aBlock);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2048;
    *(v53 + 14) = 315;
    *(v53 + 22) = 2080;
    *(v53 + 24) = sub_1CEFD0DF0(v48, v49, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v51, v52, "[ASSERT] ‼️  %s:%lu: %s", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v54, -1, -1);
    MEMORY[0x1D386CDC0](v53, -1, -1);
  }

  (*(v60 + 8))(v59, v61);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF6C5E48@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for VFSDetachedRootBookmark();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v40, 0, sizeof(v40));
  v41 = a1;
  v42 = v40;
  result = sub_1CEFE1894(sub_1CF198A9C);
  if (!v3)
  {
    v39 = 0;
    fpfs_is_detached_root();
    if (v39)
    {
      v16 = sub_1CF9E5A58();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v10, a2, v16);
      v18 = *(v17 + 56);
      v18(v10, 0, 1, v16);
      sub_1CF36C8E0(a1, v10, v14);
      v32 = 0;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
      v24 = *(v23 + 48);
      v31 = *(v23 + 64);
      v25 = &v14[*(v11 + 20)];
      v27 = *v25;
      v26 = *(v25 + 1);
      v37 = v27;
      v38 = v26;
      v35 = 47;
      v36 = 0xE100000000000000;
      v33 = 58;
      v34 = 0xE100000000000000;
      sub_1CEFE4E68();
      sub_1CF9E7668();
      sub_1CF9E5958();

      v18(a3, 0, 1, v16);
      *&a3[v24] = *(&v40[0] + 1);
      v28 = v14[*(v11 + 28)];
      result = sub_1CF0081E0(v14, type metadata accessor for VFSDetachedRootBookmark);
      a3[v31] = v28;
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
      v20 = *(v19 + 48);
      v21 = *(v19 + 64);
      v22 = sub_1CF9E5A58();
      result = (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
      *&a3[v20] = *(&v40[0] + 1);
      a3[v21] = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

id FPCKDetachedRoot.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FPCKReason.description.getter(char a1)
{
  if ((a1 & 2) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1CF0710C0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6F6974617267696DLL;
  *(v5 + 5) = 0xE90000000000006ELL;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1CF0710C0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1CF0710C0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x726961706572;
    *(v8 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1CF0710C0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1CF0710C0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1919251317;
    *(v11 + 5) = 0xE400000000000000;
    if ((a1 & 0x10) == 0)
    {
LABEL_14:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CF0710C0(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1CF0710C0((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x6E6F6D656164;
  *(v14 + 5) = 0xE600000000000000;
  if ((a1 & 0x20) == 0)
  {
LABEL_15:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CF0710C0(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1CF0710C0((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x676E6974736574;
  *(v17 + 5) = 0xE700000000000000;
  if ((a1 & 0x40) == 0)
  {
LABEL_16:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CF0710C0(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1CF0710C0((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 4469316;
  *(v20 + 5) = 0xE300000000000000;
  if (a1 < 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1CF0710C0(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_1CF0710C0((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0x6E776F6E6B6E75;
    *(v23 + 5) = 0xE700000000000000;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v24 = sub_1CF9E67D8();

  return v24;
}

void *FPShouldPauseResult.semaphore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore);
  v2 = v1;
  return v1;
}

id FPShouldPauseResult.__allocating_init(shouldPause:semaphore:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = a1;
  *&v5[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FPShouldPauseResult.init(shouldPause:semaphore:)(char a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = a1;
  *&v2[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FPShouldPauseResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1CF6C6AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1CF6C6B28@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF6F3AF4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1CF6C6C04()
{
  v1 = *v0;
  v2 = 0x64616F6C7075;
  v3 = 0x6E776F6E6B6E75;
  if (v1 != 5)
  {
    v3 = 7958113;
  }

  if (*v0 <= 4u)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 1)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF6C6CDC(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v17 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2798, &qword_1CFA129A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF6FC2C4();
  sub_1CF9E82A8();
  LOBYTE(v16) = 0;
  sub_1CF9E7EE8();
  if (!v4)
  {
    v13 = v17;
    LOBYTE(v16) = v17;
    v18 = 1;
    sub_1CF1A8B78();
    sub_1CF9E7F08();
    LOBYTE(v16) = BYTE1(v13);
    v18 = 2;
    sub_1CF1A8BCC();
    sub_1CF9E7E68();
    LOBYTE(v16) = BYTE2(v13);
    v18 = 3;
    sub_1CF6FC36C();
    sub_1CF9E7E68();
    v16 = a4;
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFE7C14(&qword_1EDEA3780);
    sub_1CF9E7F08();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1CF6C6F5C()
{
  v1 = *v0;
  v2 = 0x746E756F63;
  v3 = 0x65646F43626F6ALL;
  v4 = 0x65646953626F6ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF6C6FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF6F4C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF6C7024(uint64_t a1)
{
  v2 = sub_1CF6FC2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF6C7060(uint64_t a1)
{
  v2 = sub_1CF6FC2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF6C709C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF6F4E0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5);
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1CF6C7130()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v8 = v4;
  v28[1] = *v0;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v10 = v28[0];
  v11 = [v28[0] domain];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  if (v12 == 0xD000000000000019 && 0x80000001CFA404F0 == v14)
  {

    goto LABEL_8;
  }

  v16 = sub_1CF9E8048();

  if (v16)
  {
LABEL_8:
    if ([v10 code])
    {
      goto LABEL_9;
    }

    if ((*(v0 + 32) & 1) == 0)
    {
      v22 = *(v0 + 24);
      goto LABEL_19;
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v20 = v19;
    result = (*(v2 + 8))(v6, v8);
    v21 = v20 * 1000000000.0;
    if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        v22 = v21;
LABEL_19:
        v23 = sub_1CF72A344(v22, 1, 0x15, 0x12u);
        v25 = v24;
        sub_1CF6FC3E4();
        v26 = swift_allocError();
        *v27 = v23;
        *(v27 + 8) = v25;

        return v26;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_9:
  v17 = *(v0 + 33);
  if (v17 == 2 || (v17 & 1) == 0)
  {
    return v10;
  }

  sub_1CF6FC3E4();
  result = swift_allocError();
  *v18 = v10;
  *(v18 + 8) = 13;
  return result;
}

uint64_t sub_1CF6C7464()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF6C74FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CF6C75F4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF6C768C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CF6C7784()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF6C781C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CF6C7914()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF6C79AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CF6C7AA4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF6C7B3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CF6C7C34()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CF6C7CCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CF6C7E18()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1CF6C7EF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1CF6C7F48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

unint64_t sub_1CF6C8010()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultStore];
  v6 = [v5 targetedSPSErrorsPayload];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  v7 = sub_1CF2C8330();

  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E7298();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    sub_1CF6FCC30();
    v13 = sub_1CF9E6648();
    v15 = sub_1CEFD0DF0(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "targetedSPSErrors: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D386CDC0](v12, -1, -1);
    MEMORY[0x1D386CDC0](v11, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v7;
}

id FPCK.__allocating_init(withDatabasesBackupsPaths:volumeRole:providerDomainID:domainUserInfo:reason:usingFPFS:iCDPackageDetection:useShouldPause:shouldPause:sendDiagnostics:saveCheckpoint:reingestItems:isInvalidated:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v137 = a7;
  v135 = a6;
  v133 = a4;
  v144 = a3;
  v132 = a2;
  v152 = a16;
  v153 = a1;
  v150 = a12;
  v151 = a14;
  v139 = sub_1CF9E6118();
  v138 = *(v139 - 8);
  v21 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v145 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E5CF8();
  v142 = *(v23 - 8);
  v143 = v23;
  v24 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1CF9E5D98();
  v26 = *(v140 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = objc_allocWithZone(v18);
  v30 = 0;
  v31 = 0;
  if (a8)
  {
    v30 = a9;

    v31 = a10;
  }

  v130 = a10;
  v134 = a5;
  v32 = sub_1CF6F50D8(a5);
  v34 = v33;
  type metadata accessor for FSSnapshotChecker();
  v35 = swift_allocObject();
  *(v35 + 64) = 0;
  *(v35 + 72) = 1;
  *(v35 + 80) = 0;
  *(v35 + 88) = 1;
  v36 = MEMORY[0x1E69E7CC0];
  *(v35 + 16) = sub_1CF4E34CC(MEMORY[0x1E69E7CC0]);
  v37 = sub_1CF4E34E0(v36);
  v38 = MEMORY[0x1E69E7CD0];
  *(v35 + 24) = v37;
  *(v35 + 32) = v38;
  *(v35 + 40) = v38;
  *(v35 + 48) = v32;
  *(v35 + 56) = v34 & 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 1;
  type metadata accessor for FPSnapshotChecker();
  v39 = swift_allocObject();
  *(v39 + 40) = 0;
  *(v39 + 48) = 1;
  *(v39 + 16) = sub_1CF4E34F4(v36);
  *(v39 + 24) = sub_1CF4E3508(v36);
  v146 = v39;
  *(v39 + 32) = 0;
  v136 = type metadata accessor for FPCK(0);
  v40 = objc_allocWithZone(v136);
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedDownloads] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedUploads] = 0;
  v41 = MEMORY[0x1E69E7CC8];
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions] = MEMORY[0x1E69E7CC8];
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport] = 0;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors] = v41;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors] = v41;
  v42 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID;
  v147 = v30;
  v149 = v31;
  sub_1CF03C63C(v30);

  v148 = a18;

  v43 = v144;
  v44 = v40;
  sub_1CF9E5D88();
  v157[0] = sub_1CF9E5D18();
  v157[1] = v45;
  v155 = 45;
  v156 = 0xE100000000000000;
  sub_1CEFE4E68();
  v46 = sub_1CF9E7638();

  if (!v46[2])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v144 = v43;
  v48 = &v40[v42];
  v49 = v46[4];
  v50 = v46[5];

  (*(v26 + 8))(v29, v140);
  *v48 = v49;
  v48[1] = v50;
  v51 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase] = 0;
  v131 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker;
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker] = 0;
  v140 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker;
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker] = 0;
  v52 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_diskVsFSSnapshotIgnoredFilenames;
  v53 = sub_1CF6F4950(&unk_1F4BEF178);
  sub_1CF342B1C(&unk_1F4BEF198);
  *&v44[v52] = v53;
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions] = 0;
  v54 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_targetedSPSErrors;
  *&v44[v54] = sub_1CF6C8010();
  v55 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_shouldPause];
  *v55 = 0;
  v55[1] = 0;
  v56 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics];
  *v56 = 0;
  v56[1] = 0;
  v57 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems];
  *v57 = 0;
  v57[1] = 0;
  v58 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  *&v44[v58] = sub_1CF4E3328(v36);
  v59 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
  *&v44[v59] = sub_1CF4E3328(v36);
  v60 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  *&v44[v60] = sub_1CF4E3350(v36);
  v61 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;
  *&v44[v61] = sub_1CF4E3350(v36);
  v62 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
  *&v44[v62] = sub_1CF4E3378(v36);
  v63 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
  *&v44[v63] = sub_1CF4E33A0(v36);
  v64 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
  *&v44[v64] = sub_1CF4E33C8(v36);
  v65 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion];
  *v65 = 0x69737265762D6F6ELL;
  *(v65 + 1) = 0xEA00000000006E6FLL;
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_skippedLockedItems] = MEMORY[0x1E69E7CD0];
  v66 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  v67 = sub_1CF9E5A58();
  (*(*(v67 - 8) + 56))(&v44[v66], 1, 1, v67);
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs] = v36;
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots] = v36;
  v68 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime;
  v69 = v141;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v71 = v70;
  result = (*(v142 + 8))(v69, v143);
  v72 = v71 * 1000000000.0;
  if (COERCE__INT64(fabs(v71 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v72 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v72 < 9.22337204e18)
  {
    v128 = v48;
    v142 = a15;
    v143 = a17;
    v141 = a13;
    *&v44[v68] = v72;
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair] = 0;
    v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning] = 2;
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders] = 0;
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros] = v36;
    v73 = v144;
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID] = v144;
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_volumeRole] = v132;
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_domainUserInfo] = v133;
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason] = v134;
    v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_usingFPFS] = v135 & 1;
    v74 = *&v44[v51];
    *&v44[v51] = 0;
    v75 = v73;

    v76 = *&v44[v131];
    *&v44[v131] = v35;

    v77 = *&v44[v140];
    *&v44[v140] = v146;

    *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases] = v36;
    v78 = *v55;
    v79 = v55[1];
    v80 = v147;
    v81 = v149;
    *v55 = v147;
    v55[1] = v81;
    sub_1CF03C63C(v80);
    sub_1CEFF7124(v78);
    v82 = *v56;
    v83 = v56[1];
    v84 = v150;
    *v56 = a11;
    v56[1] = v84;

    sub_1CEFF7124(v82);
    v85 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_saveCheckpoint];
    v86 = v151;
    v87 = v152;
    *v85 = v141;
    *(v85 + 1) = v86;
    v88 = *v57;
    v89 = v57[1];
    *v57 = v142;
    v57[1] = v87;

    sub_1CEFF7124(v88);
    v90 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_isInvalidated];
    v91 = v148;
    *v90 = v143;
    v90[1] = v91;
    v92 = v137 & 1;

    LOBYTE(v88) = FPPinningIsEnabledForDomainID();
    v93 = isResidencyReasonEnabled(for:)(v75);
    v94 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext];
    *v94 = sub_1CF36581C;
    *(v94 + 1) = 0;
    *(v94 + 4) = v92;
    *(v94 + 5) = 2;
    v94[24] = v88;
    v94[25] = 0;
    v94[26] = v93;
    v95 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler];
    *v95 = sub_1CF6C8250;
    v95[1] = 0;
    v96 = fpfs_current_or_default_log();
    v97 = v145;
    sub_1CF9E6128();
    v98 = v44;
    v99 = sub_1CF9E6108();
    v100 = sub_1CF9E7288();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v157[0] = v102;
      *v101 = 136446210;
      v104 = *v128;
      v103 = v128[1];

      v105 = sub_1CEFD0DF0(v104, v103, v157);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_1CEFC7000, v99, v100, "🧹 FPCK initialized with run id %{public}s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      v106 = v102;
      v80 = v147;
      MEMORY[0x1D386CDC0](v106, -1, -1);
      MEMORY[0x1D386CDC0](v101, -1, -1);

      (*(v138 + 8))(v145, v139);
    }

    else
    {

      (*(v138 + 8))(v97, v139);
    }

    v154.receiver = v98;
    v154.super_class = v136;
    v107 = objc_msgSendSuper2(&v154, sel_init);

    sub_1CEFF7124(v80);

    v108 = v153 + 64;
    v109 = 1 << *(v153 + 32);
    v110 = -1;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    v111 = v110 & *(v153 + 64);
    v112 = (v109 + 63) >> 6;
    result = v107;
    v113 = result;
    for (i = 0; v111; result = )
    {
      v115 = i;
LABEL_18:
      v116 = __clz(__rbit64(v111));
      v111 &= v111 - 1;
      v117 = (v115 << 10) | (16 * v116);
      v118 = (*(v153 + 48) + v117);
      v119 = *v118;
      v120 = v118[1];
      v121 = (*(v153 + 56) + v117);
      v122 = *v121;
      v123 = v121[1];

      sub_1CF6C9E18(v119, v120, v122, v123, v75);
    }

    while (1)
    {
      v115 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v115 >= v112)
      {

        sub_1CEFF7124(v147);

        v124 = v129;
        swift_getObjectType();
        v125 = *((*MEMORY[0x1E69E7D40] & *v124) + 0x30);
        v126 = *((*MEMORY[0x1E69E7D40] & *v124) + 0x34);
        swift_deallocPartialClassInstance();
        return v113;
      }

      v111 = *(v108 + 8 * v115);
      ++i;
      if (v111)
      {
        i = v115;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

id FPCK.init(withDatabasesBackupsPaths:volumeRole:providerDomainID:domainUserInfo:reason:usingFPFS:iCDPackageDetection:useShouldPause:shouldPause:sendDiagnostics:saveCheckpoint:reingestItems:isInvalidated:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v136 = a7;
  v134 = a6;
  v132 = a4;
  v143 = a3;
  v131 = a2;
  v151 = a16;
  v152 = a1;
  v149 = a12;
  v150 = a14;
  v138 = sub_1CF9E6118();
  v137 = *(v138 - 8);
  v20 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v144 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E5CF8();
  v141 = *(v22 - 8);
  v142 = v22;
  v23 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v140 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1CF9E5D98();
  v25 = *(v139 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v28 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0;
  if (a8)
  {
    v29 = a9;

    v30 = a10;
  }

  v128 = a10;
  v133 = a5;
  v31 = sub_1CF6F50D8(a5);
  v33 = v32;
  type metadata accessor for FSSnapshotChecker();
  v34 = swift_allocObject();
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  v35 = MEMORY[0x1E69E7CC0];
  *(v34 + 16) = sub_1CF4E34CC(MEMORY[0x1E69E7CC0]);
  v36 = sub_1CF4E34E0(v35);
  v37 = MEMORY[0x1E69E7CD0];
  *(v34 + 24) = v36;
  *(v34 + 32) = v37;
  *(v34 + 40) = v37;
  *(v34 + 48) = v31;
  *(v34 + 56) = v33 & 1;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  type metadata accessor for FPSnapshotChecker();
  v38 = swift_allocObject();
  *(v38 + 40) = 0;
  *(v38 + 48) = 1;
  *(v38 + 16) = sub_1CF4E34F4(v35);
  *(v38 + 24) = sub_1CF4E3508(v35);
  v145 = v38;
  *(v38 + 32) = 0;
  v135 = type metadata accessor for FPCK(0);
  v39 = objc_allocWithZone(v135);
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedDownloads] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedUploads] = 0;
  v40 = MEMORY[0x1E69E7CC8];
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions] = MEMORY[0x1E69E7CC8];
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport] = 0;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors] = v40;
  *&v39[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors] = v40;
  v41 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID;
  v146 = v29;
  v148 = v30;
  sub_1CF03C63C(v29);

  v147 = a18;

  v42 = v143;
  v43 = v39;
  sub_1CF9E5D88();
  v156[0] = sub_1CF9E5D18();
  v156[1] = v44;
  v154 = 45;
  v155 = 0xE100000000000000;
  sub_1CEFE4E68();
  v45 = sub_1CF9E7638();

  if (!v45[2])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v143 = v42;
  v47 = &v39[v41];
  v48 = v45[4];
  v49 = v45[5];

  (*(v25 + 8))(v28, v139);
  *v47 = v48;
  v47[1] = v49;
  v50 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase] = 0;
  v130 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker;
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker] = 0;
  v139 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker;
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker] = 0;
  v51 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_diskVsFSSnapshotIgnoredFilenames;
  v52 = sub_1CF6F4950(&unk_1F4BEF1A8);
  sub_1CF342B1C(&unk_1F4BEF1C8);
  *&v43[v51] = v52;
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions] = 0;
  v53 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_targetedSPSErrors;
  *&v43[v53] = sub_1CF6C8010();
  v54 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_shouldPause];
  *v54 = 0;
  v54[1] = 0;
  v55 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics];
  *v55 = 0;
  v55[1] = 0;
  v56 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems];
  *v56 = 0;
  v56[1] = 0;
  v57 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  *&v43[v57] = sub_1CF4E3328(v35);
  v58 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
  *&v43[v58] = sub_1CF4E3328(v35);
  v59 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  *&v43[v59] = sub_1CF4E3350(v35);
  v60 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;
  *&v43[v60] = sub_1CF4E3350(v35);
  v61 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
  *&v43[v61] = sub_1CF4E3378(v35);
  v62 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
  *&v43[v62] = sub_1CF4E33A0(v35);
  v63 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
  *&v43[v63] = sub_1CF4E33C8(v35);
  v64 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion];
  *v64 = 0x69737265762D6F6ELL;
  *(v64 + 1) = 0xEA00000000006E6FLL;
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_skippedLockedItems] = MEMORY[0x1E69E7CD0];
  v65 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  v66 = sub_1CF9E5A58();
  (*(*(v66 - 8) + 56))(&v43[v65], 1, 1, v66);
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs] = v35;
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots] = v35;
  v67 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime;
  v68 = v140;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v70 = v69;
  result = (*(v141 + 8))(v68, v142);
  v71 = v70 * 1000000000.0;
  if (COERCE__INT64(fabs(v70 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v71 < 9.22337204e18)
  {
    v127 = v47;
    v141 = a15;
    v142 = a17;
    v140 = a13;
    *&v43[v67] = v71;
    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair] = 0;
    v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning] = 2;
    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders] = 0;
    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros] = v35;
    v72 = v143;
    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID] = v143;
    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_volumeRole] = v131;
    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_domainUserInfo] = v132;
    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason] = v133;
    v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_usingFPFS] = v134 & 1;
    v73 = *&v43[v50];
    *&v43[v50] = 0;
    v74 = v72;

    v75 = *&v43[v130];
    *&v43[v130] = v34;

    v76 = *&v43[v139];
    *&v43[v139] = v145;

    *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases] = v35;
    v77 = *v54;
    v78 = v54[1];
    v79 = v146;
    v80 = v148;
    *v54 = v146;
    v54[1] = v80;
    sub_1CF03C63C(v79);
    sub_1CEFF7124(v77);
    v81 = *v55;
    v82 = v55[1];
    v83 = v149;
    *v55 = a11;
    v55[1] = v83;

    sub_1CEFF7124(v81);
    v84 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_saveCheckpoint];
    v85 = v150;
    v86 = v151;
    *v84 = v140;
    *(v84 + 1) = v85;
    v87 = *v56;
    v88 = v56[1];
    *v56 = v141;
    v56[1] = v86;

    sub_1CEFF7124(v87);
    v89 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_isInvalidated];
    v90 = v147;
    *v89 = v142;
    v89[1] = v90;
    v91 = v136 & 1;

    LOBYTE(v87) = FPPinningIsEnabledForDomainID();
    v92 = isResidencyReasonEnabled(for:)(v74);
    v93 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext];
    *v93 = sub_1CF36581C;
    *(v93 + 1) = 0;
    *(v93 + 4) = v91;
    *(v93 + 5) = 2;
    v93[24] = v87;
    v93[25] = 0;
    v93[26] = v92;
    v94 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler];
    *v94 = sub_1CF6C8250;
    v94[1] = 0;
    v95 = fpfs_current_or_default_log();
    v96 = v144;
    sub_1CF9E6128();
    v97 = v43;
    v98 = sub_1CF9E6108();
    v99 = sub_1CF9E7288();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v156[0] = v101;
      *v100 = 136446210;
      v103 = *v127;
      v102 = v127[1];

      v104 = sub_1CEFD0DF0(v103, v102, v156);

      *(v100 + 4) = v104;
      _os_log_impl(&dword_1CEFC7000, v98, v99, "🧹 FPCK initialized with run id %{public}s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      v105 = v101;
      v79 = v146;
      MEMORY[0x1D386CDC0](v105, -1, -1);
      MEMORY[0x1D386CDC0](v100, -1, -1);

      (*(v137 + 8))(v144, v138);
    }

    else
    {

      (*(v137 + 8))(v96, v138);
    }

    v153.receiver = v97;
    v153.super_class = v135;
    v106 = objc_msgSendSuper2(&v153, sel_init);

    sub_1CEFF7124(v79);

    v107 = v152 + 64;
    v108 = 1 << *(v152 + 32);
    v109 = -1;
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    v110 = v109 & *(v152 + 64);
    v111 = (v108 + 63) >> 6;
    result = v106;
    v112 = result;
    for (i = 0; v110; result = )
    {
      v114 = i;
LABEL_18:
      v115 = __clz(__rbit64(v110));
      v110 &= v110 - 1;
      v116 = (v114 << 10) | (16 * v115);
      v117 = (*(v152 + 48) + v116);
      v118 = *v117;
      v119 = v117[1];
      v120 = (*(v152 + 56) + v116);
      v121 = *v120;
      v122 = v120[1];

      sub_1CF6C9E18(v118, v119, v121, v122, v74);
    }

    while (1)
    {
      v114 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v114 >= v111)
      {

        sub_1CEFF7124(v146);

        v123 = v129;
        swift_getObjectType();
        v124 = *((*MEMORY[0x1E69E7D40] & *v123) + 0x30);
        v125 = *((*MEMORY[0x1E69E7D40] & *v123) + 0x34);
        swift_deallocPartialClassInstance();
        return v112;
      }

      v110 = *(v107 + 8 * v114);
      ++i;
      if (v110)
      {
        i = v114;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1CF6C9E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1CF9E6118();
  v158 = *(v9 - 8);
  v159 = v9;
  v10 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v152 = v146 - v15;
  v162 = sub_1CF9E5A58();
  v16 = *(v162 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v151 = v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v153 = v146 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v146 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v146 - v25;
  sub_1CF9E58C8();
  v160 = v23;
  v154 = a3;
  v156 = a4;
  sub_1CF9E58C8();
  v27 = a5;
  v28 = [v27 pathComponents];
  v29 = sub_1CF9E6D48();

  v30 = *(v29 + 16);

  v161 = v26;
  v157 = v12;
  if (v30 < 2)
  {
    v31 = *MEMORY[0x1E6967178];
  }

  else
  {
    v31 = [v27 lastPathComponent];
    if (!v31)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = sub_1CF9E6888();
    }
  }

  v32 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext);
  v33 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 8);
  v34 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 16);
  if (*(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 25))
  {
    v35 = 256;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 | *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 24);
  if (*(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 26))
  {
    v37 = 0x10000;
  }

  else
  {
    v37 = 0;
  }

  v38 = v31;

  v39 = 0;
  v40 = sub_1CF713060(v32, v33, v34, v36 | v37);
  v150 = v38;
  v149 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v41 = *(v16 + 72);
  v42 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v43 = swift_allocObject();
  v155 = v40;
  v44 = v43;
  *(v43 + 16) = xmmword_1CF9FA450;
  v148 = *(v16 + 16);
  v148(v43 + v42, v161, v162);
  v45 = objc_allocWithZone(type metadata accessor for InternalPathsManager());
  v46 = v27;

  v47 = InternalPathsManager.init(providerDomainID:)(v46);
  v48 = type metadata accessor for VFSFileTree(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  v51 = sub_1CF25D1E8(v44, v155, v47, 0, 0, 0, 0, 0, 0, 0, 0);
  if (objc_sync_enter(v51))
  {
    v139 = v150;

    MEMORY[0x1EEE9AC00](v140);
    v144 = v51;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v143, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  isa = v51[5].super.isa;

  v147 = v51;
  if (objc_sync_exit(v51))
  {
    v141 = v150;

    MEMORY[0x1EEE9AC00](v142);
    v144 = v147;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v143, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  v163 = xmmword_1EDEBBE48;
  v166 = 47;
  v167 = 0xE100000000000000;
  v164 = 58;
  v165 = 0xE100000000000000;
  v144 = sub_1CEFE4E68();
  v145 = v144;
  v143[1] = v144;
  v143[0] = MEMORY[0x1E69E6158];
  sub_1CF9E7668();
  v53 = v153;
  sub_1CF9E5968();

  sub_1CF366BEC(v53, 0);
  v146[2] = v16 + 16;
  v54 = v16 + 8;
  v55 = *(v16 + 8);
  v55(v53, v162);

  v56 = objc_opt_self();
  v57 = [v56 defaultStore];
  v58 = [v57 softConcurrentOperationLimit];
  LODWORD(v53) = [v57 hardConcurrentOperationLimit];

  type metadata accessor for JobLimit();
  v59 = swift_allocObject();
  v153 = v59;
  *(v59 + 2) = 0;
  *(v59 + 3) = v58;
  *(v59 + 4) = v58;
  *(v59 + 5) = v53;
  v60 = [v56 defaultStore];
  v61 = [v60 softConcurrentContentUpdateLimit];
  LODWORD(v58) = [v60 hardConcurrentContentUpdateLimit];

  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = v61;
  v62[4] = v61;
  v62[5] = v58;
  v63 = [v56 defaultStore];
  v64 = [v63 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v58) = [v63 hardConcurrentMetadataOnlyUpdateLimit];

  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = v64;
  v65[4] = v64;
  v65[5] = v58;
  v66 = [v56 defaultStore];
  v67 = [v66 softConcurrentProvideFileLimit];
  LODWORD(v58) = [v66 hardConcurrentProvideFileLimit];

  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = v67;
  v68[4] = v67;
  v68[5] = v58;
  type metadata accessor for RestoreUpgradeSchemaFPFileTree(0);
  v69 = swift_allocObject();
  *(v69 + 112) = 0;
  *(v69 + 144) = 0;
  *(v69 + 16) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 48) = 0u;
  *(v69 + 64) = 0u;
  *(v69 + 120) = 0;
  *(v69 + 128) = 0;
  (*(*v69 + 520))();
  *(v69 + 136) = v155;
  *(v69 + 80) = v153;
  *(v69 + 88) = v62;
  *(v69 + 96) = v65;
  *(v69 + 104) = v68;
  v70 = *(v149 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (!v70)
  {

    v82 = v150;

    v83 = v162;
    v55(v160, v162);
    return (v55)(v161, v83);
  }

  v146[1] = v54;
  v146[0] = v70;
  v153 = v55;
  v71 = *(v149 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  v73 = v160;
  v72 = v161;
  if (!v71)
  {

    v85 = v150;

    v86 = v162;
    v87 = v153;
    (v153)(v73, v162);
    return v87(v72, v86);
  }

  v74 = v151;
  v148(v151, v160, v162);
  v75 = type metadata accessor for TelemetrySignposter(0);
  v76 = v152;
  (*(*(v75 - 8) + 56))(v152, 1, 1, v75);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  v80 = swift_allocObject();

  v81 = v147;

  sub_1CF3B3014(v74, v81, v69, v76, 0x21, 0x6B637066uLL, 0xE400000000000000, v80);
  v159 = v71;
  v88 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases;
  v89 = swift_beginAccess();
  MEMORY[0x1D3868FA0](v89);
  if (*((*(v149 + v88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v149 + v88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v98 = *((*(v149 + v88) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  v90 = *(v149 + v88);
  swift_endAccess();
  v91 = v147;
  v92 = v150;
  v93 = v146[0];
  if (!(v90 >> 62))
  {
    v94 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v94)
    {
      goto LABEL_24;
    }

LABEL_30:
    v97 = 0;
    goto LABEL_31;
  }

  v94 = sub_1CF9E7818();
  if (!v94)
  {
    goto LABEL_30;
  }

LABEL_24:
  v95 = v94 - 1;
  if (__OFSUB__(v94, 1))
  {
    __break(1u);
    goto LABEL_76;
  }

  if ((v90 & 0xC000000000000001) != 0)
  {
LABEL_76:

    v123 = MEMORY[0x1D3869C30](v95, v90);

    v124 = *(v123 + 32);

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
    v97 = swift_dynamicCastClassUnconditional();
    goto LABEL_31;
  }

  if ((v95 & 0x8000000000000000) != 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v95 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v96 = *(*(v90 + 8 * v95 + 32) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  v97 = swift_dynamicCastClassUnconditional();

LABEL_31:
  swift_beginAccess();
  sub_1CF1C9198(v97, v92);
  swift_endAccess();
  swift_beginAccess();

  v99 = *(v93 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v166 = *(v93 + 24);
  *(v93 + 24) = 0x8000000000000000;
  sub_1CF1D292C(v91, v92, isUniquelyReferenced_nonNull_native);

  *(v93 + 24) = v166;
  swift_endAccess();
  v90 = *(v149 + v88);
  if (!(v90 >> 62))
  {
    v101 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
      goto LABEL_33;
    }

LABEL_41:
    v103 = 0;
    goto LABEL_42;
  }

  if (v90 < 0)
  {
    v104 = *(v149 + v88);
  }

  v101 = sub_1CF9E7818();
  if (!v101)
  {
    goto LABEL_41;
  }

LABEL_33:
  v95 = v101 - 1;
  if (__OFSUB__(v101, 1))
  {
    __break(1u);
    goto LABEL_78;
  }

  if ((v90 & 0xC000000000000001) != 0)
  {
LABEL_79:

    v125 = MEMORY[0x1D3869C30](v95, v90);

    v126 = *(v125 + 40);

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
    v103 = swift_dynamicCastClassUnconditional();
    goto LABEL_42;
  }

  if ((v95 & 0x8000000000000000) != 0)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v95 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_86;
  }

  v102 = *(*(v90 + 8 * v95 + 32) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  v103 = swift_dynamicCastClassUnconditional();

LABEL_42:
  swift_beginAccess();
  sub_1CF1C91D8(v103, v92);
  swift_endAccess();
  v81 = v149;
  v90 = *(v149 + v88);
  if (v90 >> 62)
  {
    if (v90 < 0)
    {
      v111 = *(v149 + v88);
    }

    v105 = sub_1CF9E7818();
    if (v105)
    {
LABEL_44:
      v95 = v105 - 1;
      if (!__OFSUB__(v105, 1))
      {
        if ((v90 & 0xC000000000000001) == 0)
        {
          if ((v95 & 0x8000000000000000) != 0)
          {
            goto LABEL_87;
          }

          if (v95 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_90;
          }

          v106 = *(*(v90 + 8 * v95 + 32) + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
          v107 = swift_dynamicCastClass();
          if (v107)
          {
            v91 = v107;

LABEL_50:
            v108 = v159;
            swift_beginAccess();

            v109 = *(v108 + 24);
            v110 = swift_isUniquelyReferenced_nonNull_native();
            v166 = *(v108 + 24);
            *(v108 + 24) = 0x8000000000000000;
            sub_1CF1D2900(v91, v92, v110);

            *(v108 + 24) = v166;
            swift_endAccess();

            v81 = v149;
            goto LABEL_55;
          }

          goto LABEL_54;
        }

LABEL_83:

        v127 = MEMORY[0x1D3869C30](v95, v90);

        v128 = *(v127 + 16);

        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
        v129 = swift_dynamicCastClass();
        if (!v129)
        {
          goto LABEL_116;
        }

        v91 = v129;
        v92 = v150;
        goto LABEL_50;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v105 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v105)
    {
      goto LABEL_44;
    }
  }

LABEL_54:

LABEL_55:
  while (1)
  {
    v90 = *(v81 + v88);
    if (v90 >> 62)
    {
      break;
    }

    v112 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v112)
    {
      goto LABEL_93;
    }

LABEL_57:
    v95 = v112 - 1;
    if (__OFSUB__(v112, 1))
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:

      v113 = MEMORY[0x1D3869C30](v95, v90);

      goto LABEL_62;
    }

    if ((v90 & 0xC000000000000001) != 0)
    {
      goto LABEL_88;
    }

    if ((v95 & 0x8000000000000000) != 0)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v95 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:

      v131 = MEMORY[0x1D3869C30](v95, v90);

      goto LABEL_102;
    }

    v113 = *(v90 + 8 * v95 + 32);

LABEL_62:
    v90 = *(v113 + qword_1EDEBBDB0);

    v95 = *(v81 + v88);
    if (!(v95 >> 62))
    {
      v114 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v114)
      {
        goto LABEL_92;
      }

      goto LABEL_64;
    }

LABEL_91:
    v114 = sub_1CF9E7818();
    if (!v114)
    {
LABEL_92:

      goto LABEL_93;
    }

LABEL_64:
    v91 = v114 - 1;
    if (__OFSUB__(v114, 1))
    {
      goto LABEL_111;
    }

    if ((v95 & 0xC000000000000001) != 0)
    {
      goto LABEL_112;
    }

    if ((v91 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v91 < *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v115 = *(*(v95 + 8 * v91 + 32) + qword_1EDEBBE30);

      v116 = sub_1CF6F3C14(v90, 2);
      v118 = v117;
      v119 = v116;
      goto LABEL_69;
    }

    __break(1u);
LABEL_116:

    v81 = v149;
  }

  if (v90 < 0)
  {
    v122 = *(v81 + v88);
  }

  v112 = sub_1CF9E7818();
  if (v112)
  {
    goto LABEL_57;
  }

  while (1)
  {
LABEL_93:
    v90 = *(v81 + v88);
    if (v90 >> 62)
    {
      if (v90 < 0)
      {
        v134 = *(v81 + v88);
      }

      v130 = sub_1CF9E7818();
    }

    else
    {
      v130 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v161;
    v91 = v162;
    v88 = v160;
    if (!v130)
    {
      break;
    }

    v95 = v130 - 1;
    if (__OFSUB__(v130, 1))
    {
      goto LABEL_107;
    }

    if ((v90 & 0xC000000000000001) != 0)
    {
      goto LABEL_108;
    }

    if ((v95 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v95 < *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v131 = *(v90 + 8 * v95 + 32);

      goto LABEL_102;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:

    v135 = MEMORY[0x1D3869C30](v91, v95);

    v136 = *(v135 + qword_1EDEBBE30);

    swift_unknownObjectRelease();
    v137 = sub_1CF6F3C14(v90, 2);
    if (!v39)
    {
      v119 = v137;
      v118 = v138;
      v81 = v149;
LABEL_69:

      if (v118)
      {
        v120 = (v81 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion);
        v121 = *(v81 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion + 8);
        *v120 = v119;
        v120[1] = v118;
      }

      continue;
    }

    v81 = v149;
  }

  v131 = 0;
LABEL_102:
  v132 = v153;

  v132(v88, v91);
  v132(v39, v91);
  v133 = *(v81 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
  *(v81 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase) = v131;
}

id FPCK.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases;
  result = swift_beginAccess();
  v4 = *&v1[v2];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v8 = *&v1[v2];
    }

    result = sub_1CF9E7818();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
LABEL_10:
      v9.receiver = v1;
      v9.super_class = type metadata accessor for FPCK(0);
      return objc_msgSendSuper2(&v9, sel_dealloc);
    }
  }

  if (v5 >= 1)
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D3869C30](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      sub_1CF6C0474();
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6CB8B4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning;
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1CF6CB8F8(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1CF6CB8F8(uint64_t a1)
{
  v13 = sub_1CF9E6118();
  v2 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases;
  swift_beginAccess();
  v4 = *(a1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3869C30](v6, v4);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

LABEL_12:
      v10 = objc_autoreleasePoolPush();
      v7 = sub_1CF803A54(v8, 2, "importIsRunning", 15, 2, 1, sub_1CF6FCA94, v8);
      objc_autoreleasePoolPop(v10);

      if (v7)
      {
        v11 = 1;
        goto LABEL_15;
      }

      ++v6;
      if (v9 == i)
      {
        v11 = 0;
LABEL_15:

        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_1CF6CBC64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = type metadata accessor for VFSItem(0);
  v10 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v11 = sub_1CF00BCE0(qword_1EDEABC30, type metadata accessor for VFSItem);
  v12 = sub_1CF4804D8();
  result = sub_1CF24A924(v8, v9, v10, v6, v11, v12, v7);
  if (!v3)
  {
    if (result)
    {
      result = 1;
    }

    else
    {
      v14 = a1[3];
      v15 = a1[4];
      v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
      result = (*(**(a2 + 24) + 576))(v16, v14, v15);
    }

    *a3 = result & 1;
  }

  return result;
}

id sub_1CF6CBDC8(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  v19 = *a1;
  switch(v19)
  {
    case 11:
      v32 = sub_1CF6CC544();
      if (!v32)
      {
        v32 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
      }

      v33 = v32;
      sub_1CF9E5CE8();
      v34 = sub_1CF9E5CF8();
      (*(*(v34 - 8) + 56))(v9, 0, 1, v34);
      v35 = FPOSVersion();
      if (v35)
      {
        v36 = v35;
        v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v58 = sub_1CF4DB8C0(v33);

      v59 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
      *&v59[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = v58;
      LOBYTE(v74[0]) = 11;
      sub_1CEFCCBDC(v9, v15, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v56 = FPCKReportSection.init(phase:date:build:)(v74, v15, v37, v39);
      v57 = v9;
      goto LABEL_18;
    case 2:
      sub_1CF6CC3DC(v74);
      v68 = v74[0];
      v67 = v74[1];
      v71 = v74[3];
      v72 = v74[2];
      v26 = v74[4];
      sub_1CF9E5CE8();
      v27 = sub_1CF9E5CF8();
      (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
      v28 = FPOSVersion();
      if (v28)
      {
        v29 = v28;
        v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v69 = v31;
        v70 = v30;
      }

      else
      {
        v69 = 0;
        v70 = 0;
      }

      v46 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize);
      v47 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize);
      v48 = sub_1CF4DB8C0(v26);

      v49 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
      v50 = &v49[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
      *v50 = 0;
      v50[1] = 0;
      v51 = &v49[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
      *v51 = 0;
      v51[8] = 1;
      v52 = &v49[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
      *v52 = 0;
      v52[1] = 0;
      v53 = &v49[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
      *v53 = 0;
      v53[8] = 1;
      swift_beginAccess();
      v54 = v67;
      *v50 = v68;
      v50[1] = v54;
      swift_beginAccess();
      *v51 = v46;
      v51[8] = 0;
      swift_beginAccess();
      v55 = v71;
      *v52 = v72;
      v52[1] = v55;
      swift_beginAccess();
      *v53 = v47;
      v53[8] = 0;
      *&v49[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v48;
      v73 = 2;
      sub_1CEFCCBDC(v12, v15, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v56 = FPCKReportSection.init(phase:date:build:)(&v73, v15, v70, v69);
      v57 = v12;
LABEL_18:
      sub_1CEFCCC44(v57, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      return v56;
    case 1:
      sub_1CF9E5CE8();
      v20 = sub_1CF9E5CF8();
      (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
      v21 = FPOSVersion();
      if (v21)
      {
        v22 = v21;
        v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v60 = FPCKReason.description.getter(*(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason));
      v62 = v61;
      v63 = (objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0)) + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
      *v63 = v60;
      v63[1] = v62;
      LOBYTE(v74[0]) = 1;
      sub_1CEFCCBDC(v18, v15, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v56 = FPCKReportSection.init(phase:date:build:)(v74, v15, v23, v25);
      sub_1CEFCCC44(v18, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      break;
    default:
      LOBYTE(v74[0]) = *a1;
      sub_1CF9E5CE8();
      v40 = sub_1CF9E5CF8();
      (*(*(v40 - 8) + 56))(v6, 0, 1, v40);
      v41 = FPOSVersion();
      if (v41)
      {
        v42 = v41;
        v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      v64 = objc_allocWithZone(type metadata accessor for FPCKReportSection(0));
      return FPCKReportSection.init(phase:date:build:)(v74, v6, v43, v45);
  }

  return v56;
}

uint64_t sub_1CF6CC3DC@<X0>(uint64_t *a1@<X8>)
{
  v17 = MEMORY[0x1E69E7CC8];
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {

    v5 = sub_1CF6F5410(v4);
    v7 = v6;

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors;
  swift_beginAccess();
  if (*(*(v1 + v9) + 16))
  {

    v11 = sub_1CF6F5410(v10);
    v13 = v12;

    if (!v13)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  result = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload);
  if (result)
  {
    v15 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload);
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload);
    if (!v15)
    {
      v16 = MEMORY[0x1E69E7CC8];
      goto LABEL_16;
    }
  }

  sub_1CF6BE3AC(v15, &v17);

  v16 = v17;
LABEL_16:
  *a1 = v8;
  a1[1] = v7;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v16;
  return result;
}

uint64_t sub_1CF6CC544()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v491 = *(v2 - 1);
  v492 = v2;
  v3 = *(v491 + 8);
  MEMORY[0x1EEE9AC00](v2);
  v479 = &v475[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v481 = &v475[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v482 = &v475[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v483 = &v475[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v484 = &v475[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v487 = &v475[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v493 = &v475[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v475[-v18];
  v20 = sub_1CF9E5CF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v475[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID];
  v26 = [v25 pathComponents];
  v27 = sub_1CF9E6D48();

  v28 = *(v27 + 16);

  if (v28 >= 2)
  {
    v29 = [v25 stringByDeletingLastPathComponent];
    if (!v29)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v29 = sub_1CF9E6888();
    }

    v25 = v29;
  }

  v30 = [v25 fp_isiCloudDriveIdentifier];

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v32 = v31;
  (*(v21 + 8))(v24, v20);
  v33 = v32 * 1000000000.0;
  if (COERCE__INT64(fabs(v32 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_269;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  v34 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime];
  v35 = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v476 = v30;
  v36 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E7288();
  v39 = os_log_type_enabled(v37, v38);
  v478 = 0;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v497 = v41;
    *v40 = 136446210;
    v42 = sub_1CF4D37C8(v35);
    v44 = sub_1CEFD0DF0(v42, v43, &v497);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1CEFC7000, v37, v38, "🧹 FPCK finished with duration: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    MEMORY[0x1D386CDC0](v40, -1, -1);
  }

  (*(v491 + 1))(v19, v492);
  v45 = MEMORY[0x1E69E7CC8];
  v500 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v45;
  sub_1CF1D20F4(v35, 0x7544726961706572, 0xEE006E6F69746172, isUniquelyReferenced_nonNull_native);
  v500 = v497;
  v47 = sub_1CF6CB8B4();
  sub_1CF1C8E7C(v47 & 1, 0, 0x6D6965526E497369, 0xEC00000074726F70);
  v48 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  v49 = *&v1[v48];
  v50 = v500;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v50;
  sub_1CF1D20F4(v49, 0xD000000000000014, 0x80000001CFA57850, v51);
  v52 = v497;
  v53 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  v54 = *&v1[v53];
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v52;
  sub_1CF1D20F4(v54, 0xD000000000000029, 0x80000001CFA57870, v55);
  v56 = v497;
  v57 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  v58 = *&v1[v57];
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v56;
  sub_1CF1D20F4(v58, 0xD000000000000031, 0x80000001CFA578A0, v59);
  v60 = v497;
  v61 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  v62 = *&v1[v61];
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v60;
  sub_1CF1D20F4(v62, 0xD00000000000002DLL, 0x80000001CFA578E0, v63);
  v64 = v497;
  v65 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems];
  v66 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v64;
  sub_1CF1D20F4(v65, 0xD000000000000012, 0x80000001CFA57970, v66);
  v67 = v497;
  v68 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems];
  v69 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v67;
  sub_1CF1D20F4(v68, 0xD000000000000016, 0x80000001CFA57990, v69);
  v70 = v497;
  v71 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes];
  v72 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v70;
  sub_1CF1D20F4(v71, 0xD000000000000014, 0x80000001CFA579B0, v72);
  v73 = v497;
  v74 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk];
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v73;
  sub_1CF1D20F4(v74, 0xD000000000000015, 0x80000001CFA579D0, v75);
  v76 = v497;
  v77 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  v78 = *&v1[v77];
  v79 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v76;
  sub_1CF1D20F4(v78, 0xD000000000000022, 0x80000001CFA57940, v79);
  v80 = v497;
  v500 = v497;
  v81 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker;
  v82 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker];
  v83 = v493;
  if (!v82)
  {
    goto LABEL_28;
  }

  v84 = *(v82 + 48);
  if (*(v82 + 56) == 1)
  {
    if (!v84)
    {
LABEL_22:
      v88 = 100.0;
      goto LABEL_23;
    }

    v85 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker];

    v84 = sub_1CF70D78C();
  }

  else
  {
    v86 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker];
  }

  if (v84 == 0x7FFFFFFF)
  {

    goto LABEL_22;
  }

  if (v84 && sub_1CF70D78C())
  {
    v87 = *(v82 + 80);

    v88 = fmin(v84 / v87, 1.0) * 100.0;
  }

  else
  {

    v88 = 0.0;
  }

LABEL_23:
  if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  if (v88 <= -9.22337204e18)
  {
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  if (v88 >= 9.22337204e18)
  {
    goto LABEL_275;
  }

  v89 = v88;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v80;
  sub_1CF1D20F4(v89, 0x676E696C706D6173, 0xEC00000065746152, v90);
  v80 = v497;
  v500 = v497;
  if (*&v1[v81])
  {
    v91 = *&v1[v81];

    v92 = sub_1CF70D78C();

    v93 = swift_isUniquelyReferenced_nonNull_native();
    *&v497 = v80;
    sub_1CF1D20F4(v92, 0xD000000000000019, 0x80000001CFA58DE0, v93);
    v80 = v497;
    v500 = v497;
  }

LABEL_28:
  if (*&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker])
  {
    v94 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker];

    v95 = sub_1CF7023A0();

    v96 = swift_isUniquelyReferenced_nonNull_native();
    *&v497 = v80;
    sub_1CF1D20F4(v95, 0xD000000000000019, 0x80000001CFA58E00, v96);
    v500 = v497;
  }

  v97 = *&v1[v81];
  if (v97)
  {
    swift_beginAccess();
    v98 = *(*(v97 + 40) + 16);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    *&v497 = v500;
    sub_1CF1D20F4(v98, 0xD000000000000012, 0x80000001CFA57D30, v99);
    v500 = v497;
  }

  v100 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v101 = v1;
  v102 = sub_1CF9E6108();
  v103 = sub_1CF9E7288();

  v104 = os_log_type_enabled(v102, v103);
  v485 = v101;
  if (v104)
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v497 = v106;
    *v105 = 136446210;
    v107 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
    swift_beginAccess();
    v108 = *&v101[v107];
    type metadata accessor for BrokenInvariants(0);
    sub_1CF00BCE0(&unk_1EDEA36D0, type metadata accessor for BrokenInvariants);

    v109 = sub_1CF9E6648();
    v111 = v110;

    v112 = v109;
    v101 = v485;
    v113 = sub_1CEFD0DF0(v112, v111, &v497);

    *(v105 + 4) = v113;
    _os_log_impl(&dword_1CEFC7000, v102, v103, "FPCK: FPDRTCReporting diskBrokenInvariants %{public}s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x1D386CDC0](v106, -1, -1);
    MEMORY[0x1D386CDC0](v105, -1, -1);
  }

  v490 = *(v491 + 1);
  v490(v83, v492);
  v114 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  swift_beginAccess();
  v480 = v114;
  v115 = *&v101[v114];
  v116 = v115 + 64;
  v117 = 1 << *(v115 + 32);
  v118 = -1;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  v119 = v118 & *(v115 + 64);
  v120 = (v117 + 63) >> 6;
  *(&v488 + 1) = 0x80000001CFA58E20;
  v489 = v115;

  v121 = 0;
  *&v488 = 0xD000000000000017;
  while (v119)
  {
LABEL_44:
    v125 = (v121 << 9) | (8 * __clz(__rbit64(v119)));
    v126 = *(*(v489 + 48) + v125);
    v493 = *(*(v489 + 56) + v125);
    v127 = sub_1CF7F5AAC(v126);
    v497 = v488;
    MEMORY[0x1D3868CC0](v127);

    v128 = v497;
    v129 = v500;
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v497 = v129;
    v131 = sub_1CEFE4328(v128, *(&v128 + 1));
    v133 = *(v129 + 16);
    v134 = (v132 & 1) == 0;
    v135 = __OFADD__(v133, v134);
    v136 = v133 + v134;
    if (v135)
    {
      goto LABEL_257;
    }

    v137 = v132;
    if (*(v129 + 24) < v136)
    {
      sub_1CF7C55FC(v136, v130);
      v131 = sub_1CEFE4328(v128, *(&v128 + 1));
      if ((v137 & 1) != (v138 & 1))
      {
        goto LABEL_283;
      }

LABEL_49:
      if (v137)
      {
        goto LABEL_37;
      }

      goto LABEL_50;
    }

    if (v130)
    {
      goto LABEL_49;
    }

    v141 = v131;
    sub_1CF7D012C();
    v131 = v141;
    if (v137)
    {
LABEL_37:
      v122 = v131;

      v123 = v497;
      *(*(v497 + 56) + 8 * v122) = v493;
      goto LABEL_38;
    }

LABEL_50:
    v123 = v497;
    *(v497 + 8 * (v131 >> 6) + 64) |= 1 << v131;
    *(v123[6] + 16 * v131) = v128;
    *(v123[7] + 8 * v131) = v493;
    v139 = v123[2];
    v135 = __OFADD__(v139, 1);
    v140 = v139 + 1;
    if (v135)
    {
      goto LABEL_264;
    }

    v123[2] = v140;
LABEL_38:
    v119 &= v119 - 1;
    v500 = v123;
  }

  while (1)
  {
    v124 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    if (v124 >= v120)
    {
      break;
    }

    v119 = *(v116 + 8 * v124);
    ++v121;
    if (v119)
    {
      v121 = v124;
      goto LABEL_44;
    }
  }

  v142 = fpfs_current_or_default_log();
  v143 = v487;
  sub_1CF9E6128();
  v144 = v485;
  v145 = sub_1CF9E6108();
  v146 = sub_1CF9E7288();

  v147 = os_log_type_enabled(v145, v146);
  v486 = v144;
  if (v147)
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v497 = v149;
    *v148 = 136446210;
    v150 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
    swift_beginAccess();
    v151 = *&v486[v150];
    v144 = v486;
    sub_1CF6FB6B4();

    v152 = sub_1CF9E6648();
    v154 = v153;

    v155 = sub_1CEFD0DF0(v152, v154, &v497);

    *(v148 + 4) = v155;
    _os_log_impl(&dword_1CEFC7000, v145, v146, "FPCK: FPDRTCReporting diskVersusFSSnapshotDiff %{public}s", v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v149);
    MEMORY[0x1D386CDC0](v149, -1, -1);
    MEMORY[0x1D386CDC0](v148, -1, -1);
  }

  v490(v143, v492);
  v156 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  swift_beginAccess();
  v477 = v156;
  v157 = *&v144[v156];
  v158 = v157 + 64;
  v159 = 1 << *(v157 + 32);
  v160 = -1;
  if (v159 < 64)
  {
    v160 = ~(-1 << v159);
  }

  v161 = v160 & *(v157 + 64);
  v162 = (v159 + 63) >> 6;
  v489 = 0x80000001CFA58E40;
  v493 = v157;

  v163 = 0;
  *&v488 = v162;
  *(&v488 + 1) = v158;
  while (2)
  {
    if (v161)
    {
LABEL_66:
      v167 = (v163 << 9) | (8 * __clz(__rbit64(v161)));
      v168 = *(*(v493 + 7) + v167);
      v169 = sub_1CF7F5394(*(*(v493 + 6) + v167));
      *&v497 = 0xD00000000000001ELL;
      *(&v497 + 1) = v489;
      MEMORY[0x1D3868CC0](v169);

      v170 = v497;
      v171 = v500;
      v172 = swift_isUniquelyReferenced_nonNull_native();
      *&v497 = v171;
      v173 = sub_1CEFE4328(v170, *(&v170 + 1));
      v175 = *(v171 + 16);
      v176 = (v174 & 1) == 0;
      v135 = __OFADD__(v175, v176);
      v177 = v175 + v176;
      if (v135)
      {
        goto LABEL_258;
      }

      v178 = v174;
      if (*(v171 + 24) >= v177)
      {
        if ((v172 & 1) == 0)
        {
          v182 = v173;
          sub_1CF7D012C();
          v173 = v182;
          if ((v178 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_59;
        }
      }

      else
      {
        sub_1CF7C55FC(v177, v172);
        v173 = sub_1CEFE4328(v170, *(&v170 + 1));
        if ((v178 & 1) != (v179 & 1))
        {
          goto LABEL_283;
        }
      }

      if ((v178 & 1) == 0)
      {
LABEL_72:
        v165 = v497;
        *(v497 + 8 * (v173 >> 6) + 64) |= 1 << v173;
        *(v165[6] + 16 * v173) = v170;
        *(v165[7] + 8 * v173) = v168;
        v180 = v165[2];
        v135 = __OFADD__(v180, 1);
        v181 = v180 + 1;
        if (v135)
        {
          goto LABEL_265;
        }

        v165[2] = v181;
        goto LABEL_60;
      }

LABEL_59:
      v164 = v173;

      v165 = v497;
      *(*(v497 + 56) + 8 * v164) = v168;
LABEL_60:
      v161 &= v161 - 1;
      v500 = v165;
      v158 = *(&v488 + 1);
      v162 = v488;
      continue;
    }

    break;
  }

  while (1)
  {
    v166 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      goto LABEL_248;
    }

    if (v166 >= v162)
    {
      break;
    }

    v161 = *(v158 + 8 * v166);
    ++v163;
    if (v161)
    {
      v163 = v166;
      goto LABEL_66;
    }
  }

  v183 = fpfs_current_or_default_log();
  v184 = v484;
  sub_1CF9E6128();
  v185 = v486;
  v186 = sub_1CF9E6108();
  v187 = sub_1CF9E7288();

  v188 = os_log_type_enabled(v186, v187);
  v489 = v185;
  if (v188)
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    *&v497 = v190;
    *v189 = 136446210;
    v191 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
    swift_beginAccess();
    v192 = *(v489 + v191);
    sub_1CF6FBAD0();

    v193 = sub_1CF9E6648();
    v195 = v194;

    v196 = sub_1CEFD0DF0(v193, v195, &v497);

    *(v189 + 4) = v196;
    v185 = v489;
    _os_log_impl(&dword_1CEFC7000, v186, v187, "FPCK: FPDRTCReporting fsSnapshotVersusFpSnapshotDiff %{public}s", v189, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v190);
    MEMORY[0x1D386CDC0](v190, -1, -1);
    MEMORY[0x1D386CDC0](v189, -1, -1);
  }

  v490(v184, v492);
  v197 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
  swift_beginAccess();
  v198 = *&v185[v197];
  v199 = v198 + 64;
  v200 = 1 << *(v198 + 32);
  v201 = -1;
  if (v200 < 64)
  {
    v201 = ~(-1 << v200);
  }

  v202 = v201 & *(v198 + 64);
  v203 = (v200 + 63) >> 6;
  *&v488 = 0x80000001CFA58E60;
  *(&v488 + 1) = v198;

  v204 = 0;
  v487 = v199;
  while (2)
  {
    if (v202)
    {
LABEL_88:
      v208 = (v204 << 9) | (8 * __clz(__rbit64(v202)));
      v209 = *(*(*(&v488 + 1) + 48) + v208);
      v493 = *(*(*(&v488 + 1) + 56) + v208);
      v210 = sub_1CF7F57DC(v209);
      *&v497 = 0xD000000000000025;
      *(&v497 + 1) = v488;
      MEMORY[0x1D3868CC0](v210);

      v211 = v497;
      v212 = v500;
      v213 = swift_isUniquelyReferenced_nonNull_native();
      *&v497 = v212;
      v214 = sub_1CEFE4328(v211, *(&v211 + 1));
      v216 = *(v212 + 16);
      v217 = (v215 & 1) == 0;
      v135 = __OFADD__(v216, v217);
      v218 = v216 + v217;
      if (v135)
      {
        goto LABEL_259;
      }

      v219 = v215;
      if (*(v212 + 24) >= v218)
      {
        if ((v213 & 1) == 0)
        {
          v223 = v214;
          sub_1CF7D012C();
          v214 = v223;
          v185 = v489;
          if ((v219 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_81;
        }
      }

      else
      {
        sub_1CF7C55FC(v218, v213);
        v214 = sub_1CEFE4328(v211, *(&v211 + 1));
        if ((v219 & 1) != (v220 & 1))
        {
          goto LABEL_283;
        }
      }

      v185 = v489;
      if ((v219 & 1) == 0)
      {
LABEL_94:
        v206 = v497;
        *(v497 + 8 * (v214 >> 6) + 64) |= 1 << v214;
        *(v206[6] + 16 * v214) = v211;
        *(v206[7] + 8 * v214) = v493;
        v221 = v206[2];
        v135 = __OFADD__(v221, 1);
        v222 = v221 + 1;
        if (v135)
        {
          goto LABEL_266;
        }

        v206[2] = v222;
        goto LABEL_82;
      }

LABEL_81:
      v205 = v214;

      v206 = v497;
      *(*(v497 + 56) + 8 * v205) = v493;
LABEL_82:
      v202 &= v202 - 1;
      v500 = v206;
      v199 = v487;
      continue;
    }

    break;
  }

  while (1)
  {
    v207 = v204 + 1;
    if (__OFADD__(v204, 1))
    {
      goto LABEL_249;
    }

    if (v207 >= v203)
    {
      break;
    }

    v202 = *(v199 + 8 * v207);
    ++v204;
    if (v202)
    {
      v204 = v207;
      goto LABEL_88;
    }
  }

  v224 = fpfs_current_or_default_log();
  v225 = v483;
  sub_1CF9E6128();
  v226 = v185;
  v227 = sub_1CF9E6108();
  v228 = sub_1CF9E7288();

  v229 = os_log_type_enabled(v227, v228);
  *(&v488 + 1) = v226;
  if (v229)
  {
    v230 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    *&v497 = v231;
    *v230 = 136446210;
    v232 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
    swift_beginAccess();
    v233 = *&v226[v232];
    sub_1CF6FBEEC();

    v234 = sub_1CF9E6648();
    v236 = v235;

    v237 = sub_1CEFD0DF0(v234, v236, &v497);
    v226 = *(&v488 + 1);

    *(v230 + 4) = v237;
    _os_log_impl(&dword_1CEFC7000, v227, v228, "FPCK: FPDRTCReporting reconciliationTableBrokenInvariants %{public}s", v230, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v231);
    MEMORY[0x1D386CDC0](v231, -1, -1);
    MEMORY[0x1D386CDC0](v230, -1, -1);
  }

  v490(v225, v492);
  v238 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
  swift_beginAccess();
  v239 = *&v226[v238];
  v240 = v239 + 64;
  v241 = 1 << *(v239 + 32);
  v242 = -1;
  if (v241 < 64)
  {
    v242 = ~(-1 << v241);
  }

  v243 = v242 & *(v239 + 64);
  v244 = (v241 + 63) >> 6;
  *&v488 = 0x80000001CFA58E90;
  v489 = v239;

  v245 = 0;
  v487 = v240;
  while (2)
  {
    if (v243)
    {
LABEL_110:
      v249 = (v245 << 9) | (8 * __clz(__rbit64(v243)));
      v250 = *(*(v489 + 48) + v249);
      v493 = *(*(v489 + 56) + v249);
      v251 = sub_1CF7F5810(v250);
      *&v497 = 0xD000000000000026;
      *(&v497 + 1) = v488;
      MEMORY[0x1D3868CC0](v251);

      v252 = v497;
      v253 = v500;
      v254 = swift_isUniquelyReferenced_nonNull_native();
      *&v497 = v253;
      v255 = sub_1CEFE4328(v252, *(&v252 + 1));
      v257 = *(v253 + 16);
      v258 = (v256 & 1) == 0;
      v135 = __OFADD__(v257, v258);
      v259 = v257 + v258;
      if (v135)
      {
        goto LABEL_260;
      }

      v260 = v256;
      if (*(v253 + 24) >= v259)
      {
        if ((v254 & 1) == 0)
        {
          v264 = v255;
          sub_1CF7D012C();
          v255 = v264;
          if ((v260 & 1) == 0)
          {
            goto LABEL_116;
          }

          goto LABEL_103;
        }
      }

      else
      {
        sub_1CF7C55FC(v259, v254);
        v255 = sub_1CEFE4328(v252, *(&v252 + 1));
        if ((v260 & 1) != (v261 & 1))
        {
          goto LABEL_283;
        }
      }

      if ((v260 & 1) == 0)
      {
LABEL_116:
        v247 = v497;
        *(v497 + 8 * (v255 >> 6) + 64) |= 1 << v255;
        *(v247[6] + 16 * v255) = v252;
        *(v247[7] + 8 * v255) = v493;
        v262 = v247[2];
        v135 = __OFADD__(v262, 1);
        v263 = v262 + 1;
        if (v135)
        {
          goto LABEL_267;
        }

        v247[2] = v263;
        goto LABEL_104;
      }

LABEL_103:
      v246 = v255;

      v247 = v497;
      *(*(v497 + 56) + 8 * v246) = v493;
LABEL_104:
      v243 &= v243 - 1;
      v500 = v247;
      v226 = *(&v488 + 1);
      v240 = v487;
      continue;
    }

    break;
  }

  while (1)
  {
    v248 = v245 + 1;
    if (__OFADD__(v245, 1))
    {
      goto LABEL_250;
    }

    if (v248 >= v244)
    {
      break;
    }

    v243 = *(v240 + 8 * v248);
    ++v245;
    if (v243)
    {
      v245 = v248;
      goto LABEL_110;
    }
  }

  v265 = fpfs_current_or_default_log();
  v266 = v482;
  sub_1CF9E6128();
  v267 = v226;
  v268 = sub_1CF9E6108();
  v269 = sub_1CF9E7288();

  v270 = &qword_1EC4C2000;
  if (os_log_type_enabled(v268, v269))
  {
    v271 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    *&v497 = v272;
    *v271 = 136446210;
    v273 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
    swift_beginAccess();
    v274 = *&v267[v273];
    sub_1CF6FC6EC();

    v275 = sub_1CF9E6648();
    v277 = v276;

    v278 = sub_1CEFD0DF0(v275, v277, &v497);

    *(v271 + 4) = v278;
    v270 = &qword_1EC4C2000;
    _os_log_impl(&dword_1CEFC7000, v268, v269, "FPCK: FPDRTCReporting backupManifestVsFSSnapshotDiff %{public}s", v271, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v272);
    MEMORY[0x1D386CDC0](v272, -1, -1);
    MEMORY[0x1D386CDC0](v271, -1, -1);
  }

  v490(v266, v492);
  v279 = v270[167];
  swift_beginAccess();
  v493 = v267;
  v280 = *&v267[v279];
  v281 = v280 + 64;
  v282 = 1 << *(v280 + 32);
  v283 = -1;
  if (v282 < 64)
  {
    v283 = ~(-1 << v282);
  }

  v284 = v283 & *(v280 + 64);
  v285 = (v282 + 63) >> 6;
  *(&v488 + 1) = 0x80000001CFA58EC0;
  v489 = v280;

  v286 = 0;
  v487 = v285;
  *&v488 = v281;
  while (2)
  {
    if (v284)
    {
LABEL_132:
      v290 = (v286 << 9) | (8 * __clz(__rbit64(v284)));
      v291 = *(*(v489 + 56) + v290);
      v292 = sub_1CF7F55BC(*(*(v489 + 48) + v290));
      *&v497 = 0xD000000000000029;
      *(&v497 + 1) = *(&v488 + 1);
      MEMORY[0x1D3868CC0](v292);

      v293 = v497;
      v294 = v500;
      v295 = swift_isUniquelyReferenced_nonNull_native();
      *&v497 = v294;
      v296 = sub_1CEFE4328(v293, *(&v293 + 1));
      v298 = *(v294 + 16);
      v299 = (v297 & 1) == 0;
      v135 = __OFADD__(v298, v299);
      v300 = v298 + v299;
      if (v135)
      {
        goto LABEL_261;
      }

      v301 = v297;
      if (*(v294 + 24) >= v300)
      {
        if ((v295 & 1) == 0)
        {
          v305 = v296;
          sub_1CF7D012C();
          v296 = v305;
          if ((v301 & 1) == 0)
          {
            goto LABEL_138;
          }

          goto LABEL_125;
        }
      }

      else
      {
        sub_1CF7C55FC(v300, v295);
        v296 = sub_1CEFE4328(v293, *(&v293 + 1));
        if ((v301 & 1) != (v302 & 1))
        {
          goto LABEL_283;
        }
      }

      if ((v301 & 1) == 0)
      {
LABEL_138:
        v288 = v497;
        *(v497 + 8 * (v296 >> 6) + 64) |= 1 << v296;
        *(v288[6] + 16 * v296) = v293;
        *(v288[7] + 8 * v296) = v291;
        v303 = v288[2];
        v135 = __OFADD__(v303, 1);
        v304 = v303 + 1;
        if (v135)
        {
          goto LABEL_268;
        }

        v288[2] = v304;
        goto LABEL_126;
      }

LABEL_125:
      v287 = v296;

      v288 = v497;
      *(*(v497 + 56) + 8 * v287) = v291;
LABEL_126:
      v284 &= v284 - 1;
      v500 = v288;
      v285 = v487;
      v281 = v488;
      continue;
    }

    break;
  }

  while (1)
  {
    v289 = v286 + 1;
    if (__OFADD__(v286, 1))
    {
      goto LABEL_251;
    }

    if (v289 >= v285)
    {
      break;
    }

    v284 = *(v281 + 8 * v289);
    ++v286;
    if (v284)
    {
      v286 = v289;
      goto LABEL_132;
    }
  }

  v306 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
  v307 = v493;
  swift_beginAccess();
  v308 = 0;
  v309 = 0;
  v489 = v306;
  v310 = *&v307[v306];
  v311 = 1 << *(v310 + 32);
  v312 = -1;
  if (v311 < 64)
  {
    v312 = ~(-1 << v311);
  }

  v313 = v312 & *(v310 + 64);
  v314 = (v311 + 63) >> 6;
  do
  {
    if (v313)
    {
      v315 = v308;
    }

    else
    {
      do
      {
        v315 = v308 + 1;
        if (__OFADD__(v308, 1))
        {
          goto LABEL_252;
        }

        if (v315 >= v314)
        {
          goto LABEL_154;
        }

        v313 = *(v310 + 64 + 8 * v315);
        ++v308;
      }

      while (!v313);
      v308 = v315;
    }

    v316 = __clz(__rbit64(v313));
    v313 &= v313 - 1;
    v317 = *(*(v310 + 56) + ((v315 << 9) | (8 * v316)));
    v135 = __OFADD__(v309, v317);
    v309 += v317;
  }

  while (!v135);
  __break(1u);
LABEL_154:
  v318 = v500;
  v319 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v318;
  sub_1CF1D20F4(v309, 0xD00000000000001ELL, 0x80000001CFA58EF0, v319);
  v320 = v497;
  v321 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;
  swift_beginAccess();
  v322 = 0;
  v323 = 0;
  *(&v488 + 1) = v321;
  v324 = *&v307[v321];
  v325 = 1 << *(v324 + 32);
  v326 = -1;
  if (v325 < 64)
  {
    v326 = ~(-1 << v325);
  }

  v327 = v326 & *(v324 + 64);
  v328 = (v325 + 63) >> 6;
  do
  {
    if (v327)
    {
      v329 = v322;
    }

    else
    {
      do
      {
        v329 = v322 + 1;
        if (__OFADD__(v322, 1))
        {
          goto LABEL_253;
        }

        if (v329 >= v328)
        {
          goto LABEL_166;
        }

        v327 = *(v324 + 64 + 8 * v329);
        ++v322;
      }

      while (!v327);
      v322 = v329;
    }

    v330 = __clz(__rbit64(v327));
    v327 &= v327 - 1;
    v331 = *(*(v324 + 56) + ((v329 << 9) | (8 * v330)));
    v135 = __OFADD__(v323, v331);
    v323 += v331;
  }

  while (!v135);
  __break(1u);
LABEL_166:
  v332 = swift_isUniquelyReferenced_nonNull_native();
  *&v497 = v320;
  sub_1CF1D20F4(v323, 0xD000000000000019, 0x80000001CFA58F10, v332);
  v500 = v497;
  v333 = fpfs_current_or_default_log();
  v334 = v481;
  sub_1CF9E6128();
  v335 = sub_1CF9E6108();
  v336 = sub_1CF9E7288();
  if (os_log_type_enabled(v335, v336))
  {
    v337 = swift_slowAlloc();
    *v337 = 0;
    _os_log_impl(&dword_1CEFC7000, v335, v336, "FPCK: FPDRTCReporting remainingDiskBrokenInvariants", v337, 2u);
    MEMORY[0x1D386CDC0](v337, -1, -1);
  }

  *&v488 = v491 + 8;
  v490(v334, v492);
  v338 = *&v485[v480];
  v339 = 1 << *(v338 + 32);
  v340 = -1;
  if (v339 < 64)
  {
    v340 = ~(-1 << v339);
  }

  v341 = v340 & *(v338 + 64);
  v342 = (v339 + 63) >> 6;
  v487 = 0x80000001CFA58F30;

  v491 = 0;
  v343 = 0;
  while (2)
  {
    while (2)
    {
      if (v341)
      {
        goto LABEL_176;
      }

      while (2)
      {
        v344 = v343 + 1;
        if (__OFADD__(v343, 1))
        {
          goto LABEL_254;
        }

        if (v344 >= v342)
        {

          v372 = fpfs_current_or_default_log();
          v373 = v479;
          sub_1CF9E6128();
          v374 = sub_1CF9E6108();
          v375 = sub_1CF9E7288();
          if (os_log_type_enabled(v374, v375))
          {
            v376 = swift_slowAlloc();
            *v376 = 0;
            _os_log_impl(&dword_1CEFC7000, v374, v375, "FPCK: FPDRTCReporting remainingFSSnapshotDiffs", v376, 2u);
            MEMORY[0x1D386CDC0](v376, -1, -1);
          }

          v490(v373, v492);
          v377 = *&v486[v477];
          v378 = 1 << *(v377 + 32);
          v379 = -1;
          if (v378 < 64)
          {
            v379 = ~(-1 << v378);
          }

          v380 = v379 & *(v377 + 64);
          v381 = (v378 + 63) >> 6;
          v490 = 0x80000001CFA58F60;

          v492 = 0;
          v382 = 0;
          while (1)
          {
            do
            {
              if (!v380)
              {
                while (1)
                {
                  v383 = v382 + 1;
                  if (__OFADD__(v382, 1))
                  {
                    break;
                  }

                  if (v383 >= v381)
                  {

                    MEMORY[0x1EEE9AC00](v411);
                    *&v475[-16] = &v500;

                    sub_1CF6F3B04(v412, sub_1CF6FC694);

                    v413 = v500;
                    v414 = sub_1CF7BB480(v500);
                    v415 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions;
                    v416 = v493;
                    swift_beginAccess();
                    if (!*(*&v416[v415] + 16))
                    {
LABEL_240:
                      if (v476)
                      {
                        v451 = *&v416[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_domainUserInfo];
                        if (v451)
                        {
                          *&v494 = 0x6F6974617267696DLL;
                          *(&v494 + 1) = 0xEB0000000044496ELL;
                          sub_1CF9E7898();
                          sub_1CF905118(&v497, v451, &v495);
                          sub_1CF027318(&v497);
                          if (v496)
                          {
                            v452 = MEMORY[0x1E69E6158];
                            if (swift_dynamicCast())
                            {
                              v498 = v452;
                              v499 = MEMORY[0x1E69E6160];
                              v497 = v494;
                              sub_1CF054EA0(&v497, &v495);
                              v453 = swift_isUniquelyReferenced_nonNull_native();
                              *&v494 = v414;
                              v454 = v496;
                              v455 = __swift_mutable_project_boxed_opaque_existential_1(&v495, v496);
                              v456 = *(*(v454 - 8) + 64);
                              v457 = MEMORY[0x1EEE9AC00](v455);
                              v459 = &v475[-((v458 + 15) & 0xFFFFFFFFFFFFFFF0)];
                              (*(v460 + 16))(v459, v457);
                              sub_1CF6F5920(*v459, v459[1], 0x7267694D67616964, 0xEF44496E6F697461, v453, &v494);
                              __swift_destroy_boxed_opaque_existential_1(&v495);
                              v416 = v493;
                              v414 = v494;
                            }
                          }

                          else
                          {
                            sub_1CEFCCC44(&v495, &unk_1EC4BEC50, &qword_1CF9FB4B0);
                          }
                        }
                      }

                      v461 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                      v463 = v462;
                      v464 = *&v416[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_volumeRole];
                      v498 = MEMORY[0x1E69E7668];
                      v499 = MEMORY[0x1E69E7670];
                      LODWORD(v497) = v464;
                      sub_1CF054EA0(&v497, &v495);
                      v465 = swift_isUniquelyReferenced_nonNull_native();
                      *&v494 = v414;
                      v466 = v496;
                      v467 = __swift_mutable_project_boxed_opaque_existential_1(&v495, v496);
                      v468 = *(*(v466 - 8) + 64);
                      v469 = MEMORY[0x1EEE9AC00](v467);
                      v471 = &v475[-((v470 + 15) & 0xFFFFFFFFFFFFFFF0)];
                      (*(v472 + 16))(v471, v469);
                      sub_1CF6F5B10(*v471, v461, v463, v465, &v494);
                      __swift_destroy_boxed_opaque_existential_1(&v495);

                      v473 = sub_1CF7BB6C4(v494);

                      sub_1CEFF7124(v491);
                      sub_1CEFF7124(v492);
                      return v473;
                    }

                    v489 = v413;

                    v490 = sub_1CF6F1C9C(v417, sub_1CF6F1F68, sub_1CF6F1F68);

                    v418 = *&v416[v415];

                    v420 = sub_1CF6F1C9C(v419, sub_1CF6F1E0C, sub_1CF6F1E0C);

                    v421 = v420;
                    v422 = 0;
                    v423 = v421 + 64;
                    v424 = 1 << *(v421 + 32);
                    v425 = -1;
                    if (v424 < 64)
                    {
                      v425 = ~(-1 << v424);
                    }

                    v426 = v425 & *(v421 + 64);
                    v427 = (v424 + 63) >> 6;
                    while (v426)
                    {
LABEL_226:
                      v428 = __clz(__rbit64(v426));
                      v426 &= v426 - 1;
                      v429 = (*(v421 + 48) + ((v422 << 10) | (16 * v428)));
                      v430 = *v429;
                      v431 = v429[1];
                      v432 = HIBYTE(v431) & 0xF;
                      if ((v431 & 0x2000000000000000) == 0)
                      {
                        v432 = v430 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v432)
                      {
                        if (((v431 >> 60) & ((v430 & 0x800000000000000) == 0)) != 0)
                        {
                          v434 = 11;
                        }

                        else
                        {
                          v434 = 7;
                        }

                        v487 = v421;
                        *&v488 = v434 | (v432 << 16);

                        *(&v488 + 1) = sub_1CF9E6B38();
                        sub_1CF9E69F8();
                        v486 = sub_1CF9E6B38();
                        *&v488 = v435;
                        *&v497 = 0;
                        *(&v497 + 1) = 0xE000000000000000;
                        sub_1CF9E6778();

                        MEMORY[0x1D3868CC0](123, 0xE100000000000000);
                        v436 = sub_1CF9E69D8();

                        if (__OFSUB__(v436, 2))
                        {
                          goto LABEL_280;
                        }

                        *&v495 = v436 - 2;
                        v437 = sub_1CF9E7F98();
                        MEMORY[0x1D3868CC0](v437);

                        MEMORY[0x1D3868CC0](125, 0xE100000000000000);
                        sub_1CF9E6778();

                        v438 = v497;
                        v439 = v490;
                        v440 = swift_isUniquelyReferenced_nonNull_native();
                        *&v497 = v439;
                        sub_1CF1D2C5C(1, v438, *(&v438 + 1), v440);

                        v490 = v497;
                        v421 = v487;
                      }
                    }

                    while (1)
                    {
                      v433 = v422 + 1;
                      if (__OFADD__(v422, 1))
                      {
                        goto LABEL_256;
                      }

                      if (v433 >= v427)
                      {

                        *&v497 = v490;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2838, &qword_1CFA12A68);
                        sub_1CEFCCCEC(&qword_1EC4C2840, &qword_1EC4C2838, &qword_1CFA12A68);
                        sub_1CEFE4E68();
                        v441 = sub_1CF9E6C18();
                        v443 = v442;

                        v498 = MEMORY[0x1E69E6158];
                        v499 = MEMORY[0x1E69E6160];
                        *&v497 = v441;
                        *(&v497 + 1) = v443;
                        sub_1CF054EA0(&v497, &v495);
                        LOBYTE(v441) = swift_isUniquelyReferenced_nonNull_native();
                        *&v494 = v414;
                        v444 = v496;
                        v445 = __swift_mutable_project_boxed_opaque_existential_1(&v495, v496);
                        v446 = *(*(v444 - 8) + 64);
                        v447 = MEMORY[0x1EEE9AC00](v445);
                        v449 = &v475[-((v448 + 15) & 0xFFFFFFFFFFFFFFF0)];
                        (*(v450 + 16))(v449, v447);
                        sub_1CF6F5920(*v449, v449[1], 0xD00000000000001BLL, 0x80000001CFA57A30, v441, &v494);
                        __swift_destroy_boxed_opaque_existential_1(&v495);
                        v414 = v494;
                        v416 = v493;
                        goto LABEL_240;
                      }

                      v426 = *(v423 + 8 * v433);
                      ++v422;
                      if (v426)
                      {
                        v422 = v433;
                        goto LABEL_226;
                      }
                    }
                  }

                  v380 = *(v377 + 64 + 8 * v383);
                  ++v382;
                  if (v380)
                  {
                    v382 = v383;
                    goto LABEL_204;
                  }
                }

LABEL_255:
                __break(1u);
LABEL_256:
                __break(1u);
LABEL_257:
                __break(1u);
LABEL_258:
                __break(1u);
LABEL_259:
                __break(1u);
LABEL_260:
                __break(1u);
LABEL_261:
                __break(1u);
LABEL_262:
                __break(1u);
LABEL_263:
                __break(1u);
LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                __break(1u);
LABEL_267:
                __break(1u);
LABEL_268:
                __break(1u);
LABEL_269:
                __break(1u);
                goto LABEL_270;
              }

LABEL_204:
              v384 = (v382 << 9) | (8 * __clz(__rbit64(v380)));
              v385 = *(*(v377 + 48) + v384);
              v386 = *(*(v377 + 56) + v384);
              v387 = *&v493[*(&v488 + 1)];
              v388 = *(v387 + 16);
              if (v388)
              {
                v389 = sub_1CF7D52B4(v385);
                if (v390)
                {
                  v388 = *(*(v387 + 56) + 8 * v389);
                }

                else
                {
                  v388 = 0;
                }
              }

              v135 = __OFSUB__(v386, v388);
              v391 = v386 - v388;
              if (v135)
              {
                goto LABEL_263;
              }

              v380 &= v380 - 1;
            }

            while (v391 < 1);
            v392 = sub_1CF7F5394(v385);
            *&v497 = 0xD00000000000001DLL;
            *(&v497 + 1) = v490;
            MEMORY[0x1D3868CC0](v392);

            v393 = v497;
            sub_1CEFF7124(v492);
            v394 = v500;
            LODWORD(v488) = swift_isUniquelyReferenced_nonNull_native();
            *&v497 = v394;
            v492 = *(&v393 + 1);
            v489 = v393;
            v395 = sub_1CEFE4328(v393, *(&v393 + 1));
            v397 = v394[2];
            v398 = (v396 & 1) == 0;
            v135 = __OFADD__(v397, v398);
            v399 = v397 + v398;
            if (v135)
            {
              goto LABEL_278;
            }

            if (v394[3] >= v399)
            {
              if ((v488 & 1) == 0)
              {
                v409 = v395;
                v410 = v396;
                sub_1CF7D012C();
                LOBYTE(v396) = v410;
                v395 = v409;
                v394 = v497;
              }

              v400 = v492;
              v500 = v394;
              if (v396)
              {
                goto LABEL_214;
              }
            }

            else
            {
              LODWORD(v487) = v396;
              sub_1CF7C55FC(v399, v488);
              v394 = v497;
              v400 = v492;
              v395 = sub_1CEFE4328(v489, v492);
              if ((v487 & 1) != (v401 & 1))
              {
                goto LABEL_283;
              }

              v500 = v394;
              if (v487)
              {
LABEL_214:
                v402 = v395;

                v395 = v402;
                goto LABEL_220;
              }
            }

            v394[(v395 >> 6) + 8] |= 1 << v395;
            v403 = (v394[6] + 16 * v395);
            *v403 = v489;
            v403[1] = v400;
            *(v394[7] + 8 * v395) = 0;
            v404 = v394[2];
            v135 = __OFADD__(v404, 1);
            v405 = v404 + 1;
            if (v135)
            {
              goto LABEL_282;
            }

            v394[2] = v405;
LABEL_220:
            v406 = v394[7];
            v407 = *(v406 + 8 * v395);
            v135 = __OFADD__(v407, v391);
            v408 = v407 + v391;
            if (v135)
            {
              goto LABEL_279;
            }

            *(v406 + 8 * v395) = v408;
            v492 = sub_1CF193338;
          }
        }

        v341 = *(v338 + 64 + 8 * v344);
        ++v343;
        if (!v341)
        {
          continue;
        }

        break;
      }

      v343 = v344;
LABEL_176:
      v345 = (v343 << 9) | (8 * __clz(__rbit64(v341)));
      v346 = *(*(v338 + 48) + v345);
      v347 = *(*(v338 + 56) + v345);
      v348 = *&v493[v489];
      v349 = *(v348 + 16);
      if (v349)
      {
        v350 = sub_1CF7D52B0(v346);
        if (v351)
        {
          v349 = *(*(v348 + 56) + 8 * v350);
        }

        else
        {
          v349 = 0;
        }
      }

      v135 = __OFSUB__(v347, v349);
      v352 = v347 - v349;
      if (v135)
      {
        goto LABEL_262;
      }

      v341 &= v341 - 1;
      if (v352 < 1)
      {
        continue;
      }

      break;
    }

    v353 = sub_1CF7F5AAC(v346);
    *&v497 = 0xD000000000000021;
    *(&v497 + 1) = v487;
    MEMORY[0x1D3868CC0](v353);

    v354 = v497;
    sub_1CEFF7124(v491);
    v355 = v500;
    LODWORD(v484) = swift_isUniquelyReferenced_nonNull_native();
    *&v497 = v355;
    v491 = *(&v354 + 1);
    v485 = v354;
    v356 = sub_1CEFE4328(v354, *(&v354 + 1));
    v358 = v355[2];
    v359 = (v357 & 1) == 0;
    v135 = __OFADD__(v358, v359);
    v360 = v358 + v359;
    if (v135)
    {
      goto LABEL_276;
    }

    if (v355[3] >= v360)
    {
      if ((v484 & 1) == 0)
      {
        v370 = v356;
        v371 = v357;
        sub_1CF7D012C();
        LOBYTE(v357) = v371;
        v356 = v370;
        v355 = v497;
      }

      v361 = v491;
      v500 = v355;
      if ((v357 & 1) == 0)
      {
        goto LABEL_190;
      }

LABEL_186:
      v363 = v356;

      v356 = v363;
LABEL_192:
      v367 = v355[7];
      v368 = *(v367 + 8 * v356);
      v135 = __OFADD__(v368, v352);
      v369 = v368 + v352;
      if (v135)
      {
        goto LABEL_277;
      }

      *(v367 + 8 * v356) = v369;
      v491 = sub_1CF193338;
      continue;
    }

    break;
  }

  LODWORD(v483) = v357;
  sub_1CF7C55FC(v360, v484);
  v355 = v497;
  v361 = v491;
  v356 = sub_1CEFE4328(v485, v491);
  if ((v483 & 1) == (v362 & 1))
  {
    v500 = v355;
    if (v483)
    {
      goto LABEL_186;
    }

LABEL_190:
    v355[(v356 >> 6) + 8] |= 1 << v356;
    v364 = (v355[6] + 16 * v356);
    *v364 = v485;
    v364[1] = v361;
    *(v355[7] + 8 * v356) = 0;
    v365 = v355[2];
    v135 = __OFADD__(v365, 1);
    v366 = v365 + 1;
    if (!v135)
    {
      v355[2] = v366;
      goto LABEL_192;
    }

LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
  }

LABEL_283:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF6CF14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1CF5174A4(2);
  v10 = v6;

  v7 = v10;
  if (v10)
  {
    v8 = [v10 integerValue];
    v7 = v10;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 == 0;

  sub_1CF1C8E7C(v8, v9, a1, a2);
}

uint64_t sub_1CF6CF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v76 = a4;
  v6 = sub_1CF9E6118();
  v77 = *(v6 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  v17 = *&v4[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_isInvalidated];
  v16 = *&v4[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_isInvalidated + 8];

  LOBYTE(v17) = v17(v18);

  if (v17)
  {
    return 0;
  }

  v20 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_shouldPause];
  if (!v20)
  {
    return 1;
  }

  v21 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_shouldPause + 8];

  v22 = v20();
  v23 = v22;
  v24 = *(&v22->isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore);
  if (*(&v22->isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause) != 1)
  {
    if (v24)
    {
      v42 = v24;
      sub_1CEFF7124(v20);
    }

    else
    {
      sub_1CEFF7124(v20);
    }

    return 1;
  }

  v74 = v22;
  if (v24)
  {
    v73 = v24;
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v26 = v5;
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E7288();

    v70 = v28;
    v72 = v27;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v71 = v26;
      v30 = v29;
      v69 = swift_slowAlloc();
      v78 = v69;
      *v30 = 136446722;
      v32 = *&v71[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v31 = *&v71[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v33 = sub_1CEFD0DF0(v32, v31, &v78);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v34 = sub_1CF9E7988();
      v36 = sub_1CEFD0DF0(v34, v35, &v78);

      *(v30 + 14) = v36;
      v37 = v72;
      v38 = v73;
      *(v30 + 22) = 2048;
      *(v30 + 24) = v76;
      _os_log_impl(&dword_1CEFC7000, v37, v70, "🧹 FPCK %{public}s pausing mid-run (%s:%lu) because pause checker indicated", v30, 0x20u);
      v39 = v69;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v39, -1, -1);
      v40 = v30;
      v26 = v71;
      MEMORY[0x1D386CDC0](v40, -1, -1);

      v41 = *(v77 + 8);
      v41(v12, v6);
    }

    else
    {

      v41 = *(v77 + 8);
      v41(v12, v6);
      v38 = v73;
    }

    sub_1CF9E74A8();
    v57 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v58 = v26;
    v59 = sub_1CF9E6108();
    v60 = v38;
    v61 = sub_1CF9E7288();

    if (os_log_type_enabled(v59, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v78 = v63;
      *v62 = 136446210;
      v64 = &v58[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v65 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v66 = *(v64 + 1);

      v67 = sub_1CEFD0DF0(v65, v66, &v78);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1CEFC7000, v59, v61, "🧹 FPCK %{public}s resuming mid-run", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1D386CDC0](v63, -1, -1);
      MEMORY[0x1D386CDC0](v62, -1, -1);
      sub_1CEFF7124(v20);

      v68 = v73;
    }

    else
    {
      sub_1CEFF7124(v20);

      v68 = v74;
    }

    v41(v9, v6);
    return 1;
  }

  v43 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v44 = v5;
  v45 = sub_1CF9E6108();
  v46 = sub_1CF9E7288();

  v73 = v45;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v78 = v72;
    *v47 = 136446722;
    v48 = &v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
    v50 = *&v44[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
    v49 = *(v48 + 1);

    v51 = sub_1CEFD0DF0(v50, v49, &v78);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = sub_1CF9E7988();
    v54 = sub_1CEFD0DF0(v52, v53, &v78);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2048;
    *(v47 + 24) = v76;
    v55 = v73;
    _os_log_impl(&dword_1CEFC7000, v73, v46, "🧹 FPCK %{public}s skipping mid-run (%s:%lu), shouldPause missing semaphore", v47, 0x20u);
    v56 = v72;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v56, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);
    sub_1CEFF7124(v20);
  }

  else
  {
    sub_1CEFF7124(v20);
  }

  (*(v77 + 8))(v15, v6);
  return 0;
}

void sub_1CF6CF8CC(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = sub_1CF9E6118();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  v9 = *MEMORY[0x1E699C720];
  v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v37 = v10;
  v11 = MEMORY[0x1E69E6158];
  sub_1CF9E7898();
  v12 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);
  v13 = [v12 pathComponents];
  v14 = sub_1CF9E6D48();

  v15 = *(v14 + 16);

  if (v15 >= 2)
  {
    v16 = [v12 stringByDeletingLastPathComponent];
    if (!v16)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v16 = sub_1CF9E6888();
    }

    v12 = v16;
  }

  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  *(inited + 96) = v11;
  *(inited + 72) = v17;
  *(inited + 80) = v19;
  v20 = *MEMORY[0x1E699C728];
  v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v37 = v21;
  sub_1CF9E7898();
  v23 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion);
  v22 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion + 8);
  *(inited + 168) = v11;
  *(inited + 144) = v23;
  *(inited + 152) = v22;

  sub_1CF4E0E00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
  swift_arrayDestroy();
  v24 = sub_1CF9E6618();

  v25 = [v7 sessionWithCommonProperties_];

  if (v25)
  {
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E7288();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1CEFC7000, v27, v28, "FPDRTCReporting: postReport with %ld entries", v29, 0xCu);
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v35);
    sub_1CF7BA9CC(a1);
    v30 = sub_1CF9E6618();

    [v25 postReportWithCategory:2 type:1 payload:v30 error:0];

    v36 = 0;
    if ([v25 flushMessagesSynchronouslyWithError_])
    {
      v31 = v36;
    }

    else
    {
      v32 = v36;
      v33 = sub_1CF9E57F8();

      swift_willThrow();
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF6CFD64()
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions + 1) & 0x10) != 0)
  {
    v7 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v8 = v0;
    v9 = sub_1CF9E6108();
    v10 = sub_1CF9E7288();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18[1] = v1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = *&v8[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v15 = *&v8[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v16 = sub_1CEFD0DF0(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1CEFC7000, v9, v10, "🧹 FPCK %{public}s: sleeping 10s before continuing", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D386CDC0](v13, -1, -1);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sleep(0xAu);
  }

  return 1;
}

uint64_t sub_1CF6CFF64()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason) & 0x20) != 0)
  {
    return 1;
  }

  v7 = v4;
  v8 = sub_1CF6CC544();
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
    swift_beginAccess();
    v11 = *(v0 + v10);
    *(v0 + v10) = v9;

    if ((*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions + 1) & 2) != 0)
    {
      sub_1CF6CF8CC(v9);
    }

    return 1;
  }

  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1CEFC7000, v14, v15, "🧹 ❌ Error generating telemetry report, report is empty", v16, 2u);
    MEMORY[0x1D386CDC0](v16, -1, -1);
  }

  (*(v2 + 8))(v6, v7);
  return 0;
}

uint64_t sub_1CF6D013C(uint64_t a1, uint64_t a2, uint64_t inited, uint64_t a4, objc_class *a5)
{
  v188 = a2;
  v206 = a4;
  v187 = a1;
  v217[25] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E53C8();
  v180 = *(v7 - 8);
  v181 = v7;
  v8 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v179 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v182 = *(v10 - 8);
  v183 = v10;
  v11 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v178 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v197 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v208 = &v178 - v20;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  v21 = *(v198 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v196 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v178 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = (&v178 - v28);
  v209 = sub_1CF9E5A58();
  v186 = *(v209 - 8);
  v30 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v207 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v210 = &v178 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v199 = &v178 - v35;
  v36 = sub_1CF9E5CF8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v178 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v42 = v41;
  v44 = *(v37 + 8);
  isEscapingClosureAtFileLocation = v37 + 8;
  v44(v40, v36);
  v45 = v42 * 1000000000.0;
  if (COERCE__INT64(fabs(v42 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v178 = v15;
  v46 = v189;
  *&v189[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime] = v45;
  v185 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions;
  *&v46[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions] = v188;
  v47 = &v46[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler];
  v48 = *&v46[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8];
  *v47 = v206;
  *(v47 + 1) = a5;

  if (inited >= 1)
  {
    v49 = *&v46[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker];
    if (v49)
    {
      *(v49 + 64) = inited;
      *(v49 + 72) = 0;
    }
  }

  v50 = v187;
  v51 = *(v187 + 16);
  if (v51)
  {
    v203 = v21;
    v204 = a5;
    v52 = v186;
    v54 = v186 + 16;
    v53 = *(v186 + 16);
    v202 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v55 = v199;
    v56 = v209;
    v53(v199, v187 + v202, v209);
    v205 = v53;
    v206 = v54;
    v53(v29, v55, v56);
    (*(v52 + 56))(v29, 0, 1, v56);
    v57 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
    v58 = v189;
    swift_beginAccess();

    sub_1CEFDA9E0(v29, &v58[v57], &unk_1EC4BE310, qword_1CF9FCBE0);
    swift_endAccess();
    v59 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs];
    *&v58[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs] = v50;

    v213 = MEMORY[0x1E69E7CC0];
    v60 = v51 - 1;
    if (v51 == 1)
    {

      v61 = MEMORY[0x1E69E7CC0];
      v62 = v52;
LABEL_25:
      v86 = v189;
      v87 = *&v189[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots];
      *&v189[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots] = v61;

      v88 = *&v86[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase];
      v29 = v185;
      if (v88 && (*(v88 + 90) & 1) != 0)
      {
        v89 = fpfs_current_or_default_log();
        v90 = v184;
        sub_1CF9E6128();
        v91 = v86;
        v92 = sub_1CF9E6108();
        v93 = sub_1CF9E7288();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v214 = v95;
          *v94 = 136446466;
          v96 = *&v91[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
          v97 = *&v91[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

          v98 = sub_1CEFD0DF0(v96, v97, &v214);

          *(v94 + 4) = v98;
          *(v94 + 12) = 2080;
          v99 = FPCKOptions.description.getter(v188);
          v101 = sub_1CEFD0DF0(v99, v100, &v214);

          *(v94 + 14) = v101;
          _os_log_impl(&dword_1CEFC7000, v92, v93, "🧹 FPCK %{public}s: launched with options: [%s] - will abort because sync is paused.", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v95, -1, -1);
          MEMORY[0x1D386CDC0](v94, -1, -1);
        }

        (*(v182 + 8))(v90, v183);
        result = (*(v62 + 8))(v199, v209);
        goto LABEL_67;
      }

      if ((v86[v185] & 8) != 0 && (sub_1CF6CB8B4() & 1) == 0)
      {
        v102 = *(v29 + v86);
        type metadata accessor for FSRepair();
        v103 = swift_allocObject();
        *(v103 + 16) = MEMORY[0x1E69E7CD0];
        *(v103 + 24) = (v102 & 0x800) != 0;
        v104 = *&v86[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair];
        *&v86[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair] = v103;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE860, &qword_1CF9FE750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FC330;
      v105 = swift_allocObject();
      *(v105 + 16) = v86;
      v214 = 0;
      v215 = 0xE000000000000000;
      v106 = v86;
      v107 = v86;
      sub_1CF9E7948();

      v214 = 0xD00000000000002CLL;
      v215 = 0x80000001CFA56C70;
      v108 = FPCKOptions.description.getter(v188);
      MEMORY[0x1D3868CC0](v108);

      MEMORY[0x1D3868CC0](23901, 0xE200000000000000);
      v109 = v214;
      v110 = v215;
      v111 = swift_allocObject();
      *(v111 + 16) = sub_1CF6F516C;
      *(v111 + 24) = v105;
      *(inited + 32) = 1;
      *(inited + 40) = sub_1CF6F5194;
      *(inited + 48) = v111;
      *(inited + 56) = v109;
      *(inited + 64) = v110;
      v112 = swift_allocObject();
      *(v112 + 16) = v107;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_1CF6F51AC;
      *(v113 + 24) = v112;
      *(inited + 72) = 2;
      *(inited + 80) = sub_1CF6FCF9C;
      *(inited + 88) = v113;
      *(inited + 96) = 0;
      *(inited + 104) = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = v107;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_1CF6F51D4;
      *(v115 + 24) = v114;
      *(inited + 112) = 3;
      *(inited + 120) = sub_1CF6FCF9C;
      *(inited + 128) = v115;
      *(inited + 136) = 0;
      *(inited + 144) = 0;
      v116 = swift_allocObject();
      *(v116 + 16) = v107;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_1CF6F51F4;
      *(v117 + 24) = v116;
      *(inited + 152) = 4;
      *(inited + 160) = sub_1CF6FCF9C;
      *(inited + 168) = v117;
      *(inited + 176) = 0;
      *(inited + 184) = 0;
      if ((*(v29 + v106 + 1) & 4) != 0)
      {
        v119 = swift_allocObject();
        *(v119 + 16) = v107;
        v120 = swift_allocObject();
        *(v120 + 16) = sub_1CF6F6774;
        *(v120 + 24) = v119;
        v121 = v107;
        inited = sub_1CF1F76A8(1, 5, 1, inited);
        *(inited + 16) = 5;
        *(inited + 192) = 5;
        *(inited + 200) = sub_1CF6FCF9C;
        *(inited + 208) = v120;
        *(inited + 216) = 0;
        *(inited + 224) = 0;
      }

      else
      {
        v118 = v107;
      }

      v122 = swift_allocObject();
      *(v122 + 16) = v107;
      a5 = swift_allocObject();
      *(a5 + 2) = sub_1CF6F521C;
      *(a5 + 3) = v122;
      isEscapingClosureAtFileLocation = *(inited + 16);
      v21 = *(inited + 24);
      v15 = isEscapingClosureAtFileLocation + 1;
      v40 = v107;
      if (isEscapingClosureAtFileLocation < v21 >> 1)
      {
LABEL_37:
        *(inited + 16) = v15;
        v123 = inited + 40 * isEscapingClosureAtFileLocation;
        *(v123 + 32) = 6;
        *(v123 + 40) = sub_1CF6FCF9C;
        *(v123 + 48) = a5;
        *(v123 + 56) = 0;
        *(v123 + 64) = 0;
        v124 = swift_allocObject();
        *(v124 + 16) = v40;
        v125 = swift_allocObject();
        *(v125 + 16) = sub_1CF6F5244;
        *(v125 + 24) = v124;
        v126 = *(inited + 16);
        v21 = *(inited + 24);
        v127 = v40;
        if (v126 >= v21 >> 1)
        {
          inited = sub_1CF1F76A8((v21 > 1), v126 + 1, 1, inited);
        }

        *(inited + 16) = v126 + 1;
        v128 = inited + 40 * v126;
        *(v128 + 32) = 7;
        *(v128 + 40) = sub_1CF6FCF9C;
        *(v128 + 48) = v125;
        *(v128 + 56) = 0;
        *(v128 + 64) = 0;
        v129 = swift_allocObject();
        *(v129 + 16) = v127;
        v130 = swift_allocObject();
        *(v130 + 16) = sub_1CF6FCFD0;
        *(v130 + 24) = v129;
        v131 = *(inited + 16);
        v132 = *(inited + 24);
        v133 = v127;
        if (v131 >= v132 >> 1)
        {
          inited = sub_1CF1F76A8((v132 > 1), v131 + 1, 1, inited);
        }

        *(inited + 16) = v131 + 1;
        v134 = inited + 40 * v131;
        *(v134 + 32) = 8;
        *(v134 + 40) = sub_1CF6FCF9C;
        *(v134 + 48) = v130;
        *(v134 + 56) = 0;
        *(v134 + 64) = 0;
        v135 = *(v29 + v189);
        if ((v135 & 0x10) != 0)
        {
          v136 = swift_allocObject();
          *(v136 + 16) = v133;
          v137 = swift_allocObject();
          *(v137 + 16) = sub_1CF6F674C;
          *(v137 + 24) = v136;
          v138 = *(inited + 16);
          v139 = *(inited + 24);
          v140 = v133;
          if (v138 >= v139 >> 1)
          {
            inited = sub_1CF1F76A8((v139 > 1), v138 + 1, 1, inited);
          }

          *(inited + 16) = v138 + 1;
          v141 = inited + 40 * v138;
          *(v141 + 32) = 9;
          *(v141 + 40) = sub_1CF6FCF9C;
          *(v141 + 48) = v137;
          *(v141 + 56) = 0;
          *(v141 + 64) = 0;
          v135 = *(v29 + v189);
        }

        if ((v135 & 0x20) != 0)
        {
          v142 = swift_allocObject();
          *(v142 + 16) = v133;
          v143 = swift_allocObject();
          *(v143 + 16) = sub_1CF6F672C;
          *(v143 + 24) = v142;
          v144 = *(inited + 16);
          v145 = *(inited + 24);
          v146 = v133;
          if (v144 >= v145 >> 1)
          {
            inited = sub_1CF1F76A8((v145 > 1), v144 + 1, 1, inited);
          }

          *(inited + 16) = v144 + 1;
          v147 = inited + 40 * v144;
          *(v147 + 32) = 10;
          *(v147 + 40) = sub_1CF6FCF9C;
          *(v147 + 48) = v143;
          *(v147 + 56) = 0;
          *(v147 + 64) = 0;
        }

        v148 = swift_allocObject();
        *(v148 + 16) = v133;
        v149 = swift_allocObject();
        *(v149 + 16) = sub_1CF6F5264;
        *(v149 + 24) = v148;
        v15 = *(inited + 16);
        isEscapingClosureAtFileLocation = *(inited + 24);
        v150 = (v15 + 1);
        v40 = v133;
        if (v15 >= isEscapingClosureAtFileLocation >> 1)
        {
          inited = sub_1CF1F76A8((isEscapingClosureAtFileLocation > 1), v15 + 1, 1, inited);
        }

        v29 = 0;
        *(inited + 16) = v150;
        v151 = inited + 40 * v15;
        *(v151 + 32) = 11;
        *(v151 + 40) = sub_1CF6FCF9C;
        *(v151 + 48) = v149;
        *(v151 + 56) = 0;
        *(v151 + 64) = 0;
        a5 = (inited + 64);
        while (1)
        {
          if (v29 >= *(inited + 16))
          {
            goto LABEL_69;
          }

          v152 = *(a5 - 1);
          isEscapingClosureAtFileLocation = *a5;
          v153 = *(a5 - 3);
          v15 = *(a5 - 2);
          LOBYTE(v214) = *(a5 - 32);

          swift_retain_n();
          v154 = v152;
          v155 = v200;
          v156 = sub_1CF6F5E20(&v214, v154, isEscapingClosureAtFileLocation, v40, v153, v15);
          v200 = v155;
          if (v155)
          {
            break;
          }

          v21 = v156;

          if ((v21 & 1) == 0 || (sub_1CF6CF224("launch(fromURLs:options:contentBarrier:resultHandler:)", 54, 2, 913) & 1) == 0)
          {
            (*(v186 + 8))(v199, v209);

            goto LABEL_60;
          }

          v29 = (v29 + 1);

          a5 = (a5 + 40);
          if (v150 == v29)
          {
            (*(v186 + 8))(v199, v209);
            goto LABEL_60;
          }
        }

        (*(v186 + 8))(v199, v209);

LABEL_60:

        goto LABEL_67;
      }

LABEL_73:
      inited = sub_1CF1F76A8((v21 > 1), v15, 1, inited);
      goto LABEL_37;
    }

    v66 = *(v52 + 72);
    v193 = v216;
    v194 = (v203 + 7);
    v191 = (v203 + 6);
    v192 = (v52 + 8);
    swift_bridgeObjectRetain_n();
    v190 = v66;
    v15 = v50 + v66 + v202;
    v61 = MEMORY[0x1E69E7CC0];
    v67 = v208;
    v68 = v198;
    while (1)
    {
      v201 = v61;
      v202 = v60;
      v69 = v209;
      v70 = v205;
      v205(v210, v15, v209);
      v71 = v207;
      v70(v207, v199, v69);
      v204 = type metadata accessor for FPCKDetachedRoot(0);
      v29 = objc_allocWithZone(v204);
      v72 = sub_1CF9E5A18();
      a5 = v73;
      v203 = &v178;
      v74 = MEMORY[0x1EEE9AC00](v72);
      v176 = v71;
      (*v194)(v67, 1, 1, v68, v74);
      v217[0] = 0;
      v21 = swift_allocObject();
      *(v21 + 16) = v67;
      *(v21 + 24) = sub_1CF6FCF28;
      *(v21 + 32) = &v178 - 4;
      *(v21 + 40) = v217;
      v40 = swift_allocObject();
      *(v40 + 2) = sub_1CF6FCF1C;
      *(v40 + 3) = v21;
      v216[2] = sub_1CF6FCFCC;
      v216[3] = v40;
      v214 = MEMORY[0x1E69E9820];
      v215 = 1107296256;
      v216[0] = sub_1CF005DF8;
      v216[1] = &block_descriptor_109_0;
      inited = _Block_copy(&v214);

      sub_1CF9E6978();
      LODWORD(v61) = fpfs_openat();

      _Block_release(inited);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      if (v217[0])
      {
        swift_willThrow();
        v76 = v208;
LABEL_66:

        swift_bridgeObjectRelease_n();
        v160 = *v192;
        v161 = v209;
        (*v192)(v210, v209);
        v160(v199, v161);
        sub_1CEFCCC44(v76, &qword_1EC4C23F8, &qword_1CFA11A58);
        v160(v207, v161);
        v162 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x30);
        v163 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x34);
        swift_deallocPartialClassInstance();

        goto LABEL_67;
      }

      v76 = v208;
      if ((v61 & 0x80000000) != 0)
      {
        if (!MEMORY[0x1D38683F0](v75))
        {
          goto LABEL_76;
        }

        if (MEMORY[0x1D38683F0]() == 9939394)
        {
          [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        }

        else
        {
          MEMORY[0x1D38683F0]();
          v157 = sub_1CF9E6138();
          if ((v157 & 0x100000000) != 0)
          {
            LODWORD(v214) = 22;
          }

          else
          {
            LODWORD(v214) = v157;
          }

          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v158 = v179;
          v159 = v181;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v180 + 8))(v158, v159);
        }

        swift_willThrow();
        goto LABEL_66;
      }

      v201 = v15;

      v77 = v197;
      sub_1CEFCCBDC(v76, v197, &qword_1EC4C23F8, &qword_1CFA11A58);
      v78 = v198;
      if ((*v191)(v77, 1, v198) == 1)
      {
        __break(1u);
      }

      v79 = v195;
      sub_1CEFE55D0(v77, v195, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFCCC44(v76, &qword_1EC4C23F8, &qword_1CFA11A58);
      v80 = v209;
      v205(v29 + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation, v210, v209);
      v81 = v196;
      sub_1CEFCCBDC(v79, v196, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFE55D0(v81, v29 + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFCCBDC(v79, v81, &qword_1EC4C2400, qword_1CFA11A60);
      *(v29 + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_inode) = *(v81 + *(v78 + 48));
      sub_1CEFCCC44(v81, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFE55D0(v79, v81, &qword_1EC4C2400, qword_1CFA11A60);
      *(v29 + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_shouldRefreshBookmark) = *(v81 + *(v78 + 64));
      sub_1CEFCCC44(v81, &unk_1EC4BE310, qword_1CF9FCBE0);
      v212.receiver = v29;
      v212.super_class = v204;
      v82 = objc_msgSendSuper2(&v212, sel_init);
      v83 = *v192;
      (*v192)(v210, v80);
      v83(v207, v80);
      v84 = v82;
      MEMORY[0x1D3868FA0]();
      v68 = v78;
      if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v85 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CF9E6D88();
      }

      sub_1CF9E6DE8();

      v61 = v213;
      v15 = v201 + v190;
      v60 = v202 - 1;
      v67 = v208;
      if (v202 == 1)
      {

        v62 = v186;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v61 = sub_1CF9E6888();
  v63 = sub_1CF9E6D28();
  v64 = FPInvalidParameterError();

  if (v64)
  {
    result = swift_willThrow();
LABEL_67:
    v164 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
LABEL_76:

  v214 = 0;
  v215 = 0xE000000000000000;
  sub_1CF9E7948();

  v214 = 0xD00000000000001ALL;
  v215 = 0x80000001CFA2DF30;
  v211 = v61;
  v165 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v165);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v166 = v214;
  v167 = v215;
  v168 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v169 = sub_1CF9E6108();
  v170 = sub_1CF9E72B8();

  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v214 = v172;
    *v171 = 136315650;
    v173 = sub_1CF9E7988();
    v175 = sub_1CEFD0DF0(v173, v174, &v214);

    *(v171 + 4) = v175;
    *(v171 + 12) = 2048;
    *(v171 + 14) = 315;
    *(v171 + 22) = 2080;
    *(v171 + 24) = sub_1CEFD0DF0(v166, v167, &v214);
    _os_log_impl(&dword_1CEFC7000, v169, v170, "[ASSERT] ‼️  %s:%lu: %s", v171, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v172, -1, -1);
    MEMORY[0x1D386CDC0](v171, -1, -1);
  }

  (*(v182 + 8))(v178, v183);
  v177 = 0;
  v176 = 315;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}