uint64_t sub_1C6B97DF0(uint64_t a1)
{
  v3 = sub_1C6D78760();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6996138])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v9 = *v7;
    *(v1 + 16) = 1;
    swift_beginAccess();
    v10 = *(v1 + 24);
    *(v1 + 24) = v9;
LABEL_9:

    return v1;
  }

  if (v8 == *MEMORY[0x1E6996140])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v11 = *v7;
    *(v1 + 16) = 2;
    swift_beginAccess();
    v12 = *(v1 + 32);
    *(v1 + 32) = v11;
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x1E6996148])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v13 = *v7;
    *(v1 + 16) = 3;
    swift_beginAccess();
    v14 = *(v1 + 40);
    *(v1 + 40) = v13;
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x1E6996130])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v15 = *v7;
    *(v1 + 16) = 4;
    swift_beginAccess();
    v16 = *(v1 + 48);
    *(v1 + 48) = v15;
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x1E6996120])
  {
    (*(v4 + 96))(v7, v3);
    v19 = *v7;
    v18 = v7[1];
    *(v1 + 16) = 5;
    v20 = objc_allocWithZone(MEMORY[0x1E695DF88]);
    v21 = sub_1C6D75E50();
    v22 = [v20 initWithData_];

    sub_1C6B1C9F0(v19, v18);
    (*(v4 + 8))(a1, v3);
    v23 = *(v1 + 56);
    *(v1 + 56) = v22;
  }

  else
  {
    v24 = *MEMORY[0x1E6996128];
    v25 = *(v4 + 8);
    v26 = v8;
    v25(a1, v3);
    if (v26 == v24)
    {
      *(v1 + 16) = 0;
    }

    else
    {
      v25(v7, v3);
      v27 = *(v1 + 24);

      v28 = *(v1 + 32);

      v29 = *(v1 + 40);

      v30 = *(v1 + 48);

      type metadata accessor for MutableFeature();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1C6B98210@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      swift_beginAccess();
      v10 = *(v1 + 40);
      v11 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v11 = v10;
      }

      *a1 = v11;
      v6 = MEMORY[0x1E6996148];
      goto LABEL_19;
    }

    if (v3 == 4)
    {
      swift_beginAccess();
      v7 = *(v1 + 48);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v8 = v7;
      }

      *a1 = v8;
      v6 = MEMORY[0x1E6996130];
      goto LABEL_19;
    }

    v17 = *(v1 + 56);
    if (v17)
    {
      v18 = v17;
      v17 = sub_1C6D75E60();
      v20 = v19;
    }

    else
    {
      v20 = 0xC000000000000000;
    }

    *a1 = v17;
    a1[1] = v20;
    v9 = MEMORY[0x1E6996120];
  }

  else
  {
    if (*(v1 + 16))
    {
      if (v3 == 1)
      {
        swift_beginAccess();
        v4 = *(v1 + 24);
        v5 = MEMORY[0x1E69E7CC0];
        if (v4)
        {
          v5 = v4;
        }

        *a1 = v5;
        v6 = MEMORY[0x1E6996138];
      }

      else
      {
        swift_beginAccess();
        v12 = *(v1 + 32);
        v13 = MEMORY[0x1E69E7CC0];
        if (v12)
        {
          v13 = v12;
        }

        *a1 = v13;
        v6 = MEMORY[0x1E6996140];
      }

LABEL_19:
      v14 = *v6;
      v15 = sub_1C6D78760();
      (*(*(v15 - 8) + 104))(a1, v14, v15);
    }

    v9 = MEMORY[0x1E6996128];
  }

  v21 = *v9;
  v22 = sub_1C6D78760();
  v23 = *(*(v22 - 8) + 104);

  return v23(a1, v21, v22);
}

uint64_t sub_1C6B98430()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MutableFeature.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MutableFeature.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6B98600()
{
  result = qword_1EC1D7168;
  if (!qword_1EC1D7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7168);
  }

  return result;
}

unint64_t sub_1C6B98654()
{
  result = qword_1EDCE7F38;
  if (!qword_1EDCE7F38)
  {
    sub_1C6B18CB8(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F38);
  }

  return result;
}

void sub_1C6B986D0()
{
  if (!qword_1EDCEA320)
  {
    sub_1C6D78760();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA320);
    }
  }
}

void *sub_1C6B98728(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1C6B9897C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C6B987B8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1C6B9897C((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1C6B98728(v12, v6, a2, a1);

    MEMORY[0x1CCA57100](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1C6B9897C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = sub_1C6D783E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v78 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v64 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v79 = (v64 - v15);
  result = MEMORY[0x1EEE9AC00](v14);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        return sub_1C6CC6BB4(v69, v65, v71, a3);
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6);
          v57 = *(a4 + 40);
          sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
          v58 = sub_1C6D79500();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, v6);
              sub_1C6B995C4(&qword_1EDCE5D20, MEMORY[0x1E6996088]);
              v62 = sub_1C6D79560();
              v63 = *v79;
              (*v79)(v13, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            result = (v63)(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            result = (v63)(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
          v36 = sub_1C6D79500();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              i(v13, *(v77 + 48) + v38 * v75, v6);
              sub_1C6B995C4(&qword_1EDCE5D20, MEMORY[0x1E6996088]);
              v42 = sub_1C6D79560();
              v43 = *v78;
              (*v78)(v13, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            result = (v43)(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            result = (v43)(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1C6B99064(uint64_t a1, int a2)
{
  v50 = a2;
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = sub_1C6D78810();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 16);
  if (!v56)
  {
    return result;
  }

  v44 = v11;
  v45 = v9;
  v43 = v2;
  v18 = 0;
  v19 = 0;
  v21 = *(v16 + 16);
  v20 = v16 + 16;
  v54 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v55 = v21;
  v22 = *(v20 + 56);
  v46 = v5 + 16;
  v47 = v5;
  v23 = (v5 + 8);
  v52 = (v20 - 8);
  v53 = v22;
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v12;
  v51 = v20;
  while (1)
  {
    v58 = v18;
    v59 = v19;
    v55(v17, v54 + v53 * v18, v12);
    v24 = sub_1C6D787E0();
    v25 = *(v24 + 16);
    v26 = sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
    v27 = MEMORY[0x1CCA55E50](v25, v4, v26);
    v61 = v27;
    v28 = *(v24 + 16);
    if (v28)
    {
      v29 = *(v47 + 80);
      v57 = v24;
      v30 = v24 + ((v29 + 32) & ~v29);
      v60 = *(v47 + 72);
      v31 = *(v47 + 16);
      v33 = v44;
      v32 = v45;
      do
      {
        v31(v33, v30, v4);
        sub_1C6C242F4(v32, v33);
        (*v23)(v32, v4);
        v30 += v60;
        --v28;
      }

      while (v28);

      v34 = v61;
      v17 = v48;
      v12 = v49;
      v19 = v59;
      if (!v59)
      {
LABEL_3:
        (*v52)(v17, v12);
        v19 = v34;
        goto LABEL_4;
      }
    }

    else
    {
      v34 = v27;

      v19 = v59;
      if (!v59)
      {
        goto LABEL_3;
      }
    }

    if (!v50)
    {
      v36 = *v52;

      v36(v17, v12);
      goto LABEL_16;
    }

    if (v50 == 1)
    {
      break;
    }

    v37 = sub_1C6B96720(v34, v19);

    if ((v37 & 1) == 0)
    {
      _s14FeaturesErrorsOMa(0);
      sub_1C6B995C4(&qword_1EC1D7170, _s14FeaturesErrorsOMa);
      swift_allocError();
      v39 = v38;
      sub_1C6B99B48();
      v41 = *(v40 + 48);
      *v39 = v19;
      v55(v39 + v41, v17, v12);
      goto LABEL_22;
    }

    (*v52)(v17, v12);

LABEL_4:
    v18 = v58 + 1;
    if (v58 + 1 == v56)
    {
    }
  }

  v35 = *(sub_1C6B987B8(v19, v34) + 16);

  if (!v35)
  {
    (*v52)(v17, v12);
LABEL_16:

    goto LABEL_4;
  }

  _s14FeaturesErrorsOMa(0);
  sub_1C6B995C4(&qword_1EC1D7170, _s14FeaturesErrorsOMa);
  swift_allocError();
  *v42 = v19;
  v42[1] = v34;
LABEL_22:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return (*v52)(v17, v12);
}

uint64_t sub_1C6B995C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B9960C(uint64_t a1)
{
  sub_1C6B99A64();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = v1;
  v9 = *(v1 + 16);
  v10 = &v8[*(v6 + 48)];
  *v8 = v9;
  v11 = sub_1C6D78760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v10, a1, v11);
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996138])
        {
          (*(v12 + 96))(v10, v11);
          v14 = *v10;
          v15 = sub_1C6B97CAC();
          if (*v16)
          {
            sub_1C6B38474(v14);
LABEL_23:
            (v15)(v32, 0);
            return v33;
          }

          goto LABEL_22;
        }
      }

      else if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996140])
      {
        (*(v12 + 96))(v10, v11);
        v21 = *v10;
        v15 = sub_1C6B97CFC();
        if (*v22)
        {
          sub_1C6B38654(v21);
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (v9 == 3)
  {
    if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996148])
    {
      (*(v12 + 96))(v10, v11);
      v19 = *v10;
      v15 = sub_1C6B97D4C();
      if (*v20)
      {
        sub_1C6B38740(v19);
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v9 == 4)
  {
    if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996130])
    {
      (*(v12 + 96))(v10, v11);
      v17 = *v10;
      v15 = sub_1C6B97D9C();
      if (*v18)
      {
        sub_1C6B3882C(v17);
        goto LABEL_23;
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if ((*(v12 + 88))(v10, v11) != *MEMORY[0x1E6996120])
  {
LABEL_21:
    type metadata accessor for MutableFeature.MutableFeatureErrors(0);
    sub_1C6B995C4(&qword_1EC1D7178, type metadata accessor for MutableFeature.MutableFeatureErrors);
    swift_allocError();
    v28 = *(v4 + 48);
    *v29 = v9;
    v13(&v29[v28], a1, v11);
    swift_willThrow();
    sub_1C6B99AEC(v8);
    return v33;
  }

  (*(v12 + 96))(v10, v11);
  v23 = *v10;
  v24 = *(v10 + 1);
  v25 = *(v33 + 56);
  if (v25)
  {
    v26 = v25;
    v27 = sub_1C6D75E50();
    [v26 appendData_];
    sub_1C6B1C9F0(v23, v24);
  }

  else
  {
    sub_1C6B1C9F0(*v10, *(v10 + 1));
  }

  return v33;
}

void sub_1C6B99A64()
{
  if (!qword_1EDCE2528)
  {
    sub_1C6D78760();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE2528);
    }
  }
}

uint64_t sub_1C6B99AEC(uint64_t a1)
{
  sub_1C6B99A64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6B99B48()
{
  if (!qword_1EC1D7180)
  {
    sub_1C6B99BB8();
    sub_1C6D78810();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7180);
    }
  }
}

void sub_1C6B99BB8()
{
  if (!qword_1EC1D7188)
  {
    sub_1C6D783E0();
    sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
    v0 = sub_1C6D79990();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7188);
    }
  }
}

uint64_t sub_1C6B99C4C(uint64_t a1, uint64_t a2)
{
  sub_1C6B99A64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6B99CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B99A64();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1C6B99D34(uint64_t a1)
{
  sub_1C6B99A64();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1C6D78760();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_1C6B99E08()
{
  sub_1C6B99B48();
  if (v0 <= 0x3F)
  {
    sub_1C6B99EC8(319, &qword_1EC1D71B0, sub_1C6B99BB8);
    if (v1 <= 0x3F)
    {
      sub_1C6B99EC8(319, &qword_1EDCE5CD8, MEMORY[0x1E6996150]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C6B99EC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t ArticleUserEventHistoryFeaturesFactory.__allocating_init(bundleSubscriptionIsSubscribedProvider:dataProvider:)(uint64_t *a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1C6B9F1A8(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

uint64_t ArticleUserEventHistoryFeaturesFactory.init(bundleSubscriptionIsSubscribedProvider:dataProvider:)(uint64_t *a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1C6B9F0CC(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

uint64_t sub_1C6B9A0A0(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v321 = a3;
  v322 = a4;
  v305 = a1;
  v6 = MEMORY[0x1E69E6720];
  sub_1C6B9F664(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v311 = &v294 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v318 = &v294 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v329 = *(v12 - 8);
  v330 = v12;
  v13 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v327 = &v294 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v326 = &v294 - v16;
  sub_1C6B9F664(0, &qword_1EDCEA320, MEMORY[0x1E6996150], v6);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v297 = (&v294 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v296 = (&v294 - v21);
  v22 = sub_1C6D783E0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v308 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v307 = &v294 - v26;
  v304 = sub_1C6D78810();
  v303 = *(v304 - 8);
  v27 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v309 = &v294 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = type metadata accessor for EventArticleFeatures();
  v325 = *(v328 - 8);
  v29 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v328);
  v331 = &v294 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v294 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v294 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v324 = &v294 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v294 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v323 = &v294 - v43;
  if (qword_1EDCE96C8 != -1)
  {
LABEL_151:
    swift_once();
  }

  v44 = qword_1EDCE96D0;
  sub_1C6D79AC0();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();
  v334 = 0;
  v335 = 0;
  sub_1C6D79AC0();
  sub_1C6D78D30();
  v333 = v45;
  v46 = a2[1];
  v47 = v4[5];
  v48 = v4[6];
  v49 = __swift_project_boxed_opaque_existential_1(v4 + 2, v47);
  MEMORY[0x1EEE9AC00](v49);
  *(&v294 - 8) = &v335;
  *(&v294 - 7) = &v333;
  *(&v294 - 6) = v46;
  *(&v294 - 5) = &v334;
  *(&v294 - 4) = v4;
  *(&v294 - 3) = a2;
  v310 = a2;
  v50 = v322;
  *(&v294 - 2) = v321;
  *(&v294 - 1) = v50;
  SessionDataProviderType.visitSessions(reversed:stoppableVisitor:)(0, sub_1C6B9F2D0, (&v294 - 10), v47, v48);
  sub_1C6B9F664(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v52 = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C6D7EB10;
  v55 = v334;
  v54 = v335;
  v56 = MEMORY[0x1E69E6530];
  v57 = MEMORY[0x1E69E65A8];
  *(v53 + 56) = MEMORY[0x1E69E6530];
  *(v53 + 64) = v57;
  *(v53 + 32) = v55;
  *(v53 + 96) = v56;
  *(v53 + 104) = v57;
  *(v53 + 72) = v54;
  sub_1C6D79AC0();
  v317 = v44;
  sub_1C6D78D30();

  sub_1C6D77FA0();
  v58 = sub_1C6D77F90();
  v319 = v33;
  v295 = v36;
  if (v58)
  {
    v315 = v52;
    v316 = v46;
    v59 = v333;
    v322 = *(v333 + 16);
    if (v322)
    {
      a2 = 0;
      v321 = v333 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
      v4 = MEMORY[0x1E69E7CC8];
      v320 = v333;
      do
      {
        if (a2 >= *(v59 + 16))
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v60 = v323;
        sub_1C6B9F51C(v321 + *(v325 + 72) * a2, v323, type metadata accessor for EventArticleFeatures);
        v61 = v60[2];
        v62 = v60[3];
        v33 = *v60;
        v63 = v60[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v332 = v4;
        v36 = sub_1C6B5DEA8(v61, v62);
        v66 = v4[2];
        v67 = (v65 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_149;
        }

        v69 = v65;
        if (v4[3] >= v68)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v65)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_1C6B73864();
            v4 = v332;
            if (v69)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          sub_1C6B6FFA8(v68, isUniquelyReferenced_nonNull_native);
          v4 = v332;
          v70 = sub_1C6B5DEA8(v61, v62);
          if ((v69 & 1) != (v71 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          v36 = v70;
          if (v69)
          {
LABEL_13:

            goto LABEL_17;
          }
        }

        v4[(v36 >> 6) + 8] |= 1 << v36;
        v72 = (v4[6] + 16 * v36);
        *v72 = v61;
        v72[1] = v62;
        *(v4[7] + 8 * v36) = MEMORY[0x1E69E7CC0];
        v73 = v4[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_150;
        }

        v4[2] = v75;
LABEL_17:
        v76 = v4[7];
        v77 = *(v76 + 8 * v36);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        *(v76 + 8 * v36) = v77;
        if ((v78 & 1) == 0)
        {
          v77 = sub_1C6B6592C(0, *(v77 + 2) + 1, 1, v77);
          *(v76 + 8 * v36) = v77;
        }

        v80 = *(v77 + 2);
        v79 = *(v77 + 3);
        if (v80 >= v79 >> 1)
        {
          *(v76 + 8 * v36) = sub_1C6B6592C((v79 > 1), v80 + 1, 1, v77);
        }

        a2 = (a2 + 1);
        sub_1C6B9F584(v323, type metadata accessor for EventArticleFeatures);
        v81 = *(v76 + 8 * v36);
        *(v81 + 16) = v80 + 1;
        v82 = v81 + 16 * v80;
        *(v82 + 32) = v33;
        *(v82 + 40) = v63;
        v59 = v320;
      }

      while (v322 != a2);
    }

    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1C6D7E630;
    sub_1C6B855D0();
    v84 = MEMORY[0x1E69E6158];
    v85 = sub_1C6D794A0();
    v87 = v86;

    *(v83 + 56) = v84;
    *(v83 + 64) = sub_1C6B2064C();
    *(v83 + 32) = v85;
    *(v83 + 40) = v87;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v46 = v316;
  }

  v302 = *(v333 + 16);
  v88 = v46 <= v302;
  v89 = v46 - v302;
  if (!v88)
  {
    v90 = *v310;
    v91 = v310[2];
    v92 = v310[3];
    *v41 = 0;
    *(v41 + 1) = 0xE000000000000000;
    *(v41 + 2) = 0;
    *(v41 + 3) = 0xE000000000000000;
    *(v41 + 4) = 0;
    *(v41 + 5) = 0xE000000000000000;
    *(v41 + 6) = 0;
    *(v41 + 7) = 0xE000000000000000;
    *(v41 + 8) = 0;
    *(v41 + 9) = 0xE000000000000000;
    *(v41 + 10) = sub_1C6BFE220(0, 0xE000000000000000, v91);
    *(v41 + 11) = MEMORY[0x1E69E7CC0];
    *(v41 + 12) = 0;
    *(v41 + 13) = 0xE000000000000000;
    *(v41 + 28) = 0;
    *(v41 + 19) = v92;
    *(v41 + 20) = v90;
    v93 = v328;
    v94 = *(v329 + 56);
    v95 = v330;
    v94(&v41[*(v328 + 92)], 1, 1, v330);
    v94(&v41[*(v93 + 96)], 1, 1, v95);
    *(v41 + 132) = 0u;
    *(v41 + 116) = 0u;
    v96 = sub_1C6BF7BB8(v41, v89);
    sub_1C6B38920(v96);
  }

  sub_1C6B9F664(0, &qword_1EDCE7D20, sub_1C6B9F304, MEMORY[0x1E69E6F90]);
  sub_1C6B9F304();
  v322 = v97;
  v98 = (*(*(v97 - 8) + 80) + 32) & ~*(*(v97 - 8) + 80);
  v321 = *(*(v97 - 8) + 72);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1C6D81490;
  v301 = v99;
  v320 = v99 + v98;
  sub_1C6D783C0();
  v100 = v333;
  v101 = *(v333 + 16);
  v317 = v333;
  v315 = v101;
  if (v101)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v101, 0);
    v102 = v332;
    v103 = v100 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v104 = *(v325 + 72);
    v105 = v101;
    do
    {
      sub_1C6B9F51C(v103, v41, type metadata accessor for EventArticleFeatures);
      v107 = *(v41 + 2);
      v106 = *(v41 + 3);

      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v102;
      v109 = v102[2];
      v108 = v102[3];
      if (v109 >= v108 >> 1)
      {
        sub_1C6B39280((v108 > 1), v109 + 1, 1);
        v102 = v332;
      }

      v102[2] = v109 + 1;
      v110 = &v102[2 * v109];
      v110[4] = v107;
      v110[5] = v106;
      v103 += v104;
      --v105;
    }

    while (v105);
    v100 = v317;
    v101 = v315;
  }

  v111 = v320;
  v112 = v320 + *(v322 + 48);
  sub_1C6D78740();
  v113 = v111 + v321;
  sub_1C6D783C0();
  v114 = MEMORY[0x1E69E7CC0];
  if (v101)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v101, 0);
    v114 = v332;
    v115 = v100 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v116 = *(v325 + 72);
    do
    {
      sub_1C6B9F51C(v115, v41, type metadata accessor for EventArticleFeatures);
      v117 = *(v41 + 35);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v114;
      v119 = v114[2];
      v118 = v114[3];
      if (v119 >= v118 >> 1)
      {
        sub_1C6B392F0((v118 > 1), v119 + 1, 1);
        v114 = v332;
      }

      v114[2] = v119 + 1;
      *(v114 + v119 + 8) = v117;
      v115 += v116;
      --v101;
    }

    while (v101);
    v101 = v315;
  }

  v120 = *(v322 + 48);
  *(v113 + v120) = v114;
  v121 = *MEMORY[0x1E6996140];
  v122 = sub_1C6D78760();
  v306 = *(v122 - 8);
  v123 = *(v306 + 104);
  v312 = v121;
  v316 = v122;
  v314 = v306 + 104;
  v313 = v123;
  (v123)(v113 + v120, v121);
  v124 = v320 + 2 * v321;
  sub_1C6D783C0();
  v125 = MEMORY[0x1E69E7CC0];
  if (v101)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v101, 0);
    v125 = v332;
    v126 = v100 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v127 = *(v325 + 72);
    do
    {
      sub_1C6B9F51C(v126, v41, type metadata accessor for EventArticleFeatures);
      v128 = *(v41 + 36);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v125;
      v130 = v125[2];
      v129 = v125[3];
      if (v130 >= v129 >> 1)
      {
        sub_1C6B3922C((v129 > 1), v130 + 1, 1);
        v125 = v332;
      }

      v125[2] = v130 + 1;
      *(v125 + v130 + 8) = v128;
      v126 += v127;
      --v101;
    }

    while (v101);
    v101 = v315;
  }

  v131 = *(v322 + 48);
  *(v124 + v131) = v125;
  v313(v124 + v131, *MEMORY[0x1E6996138], v316);
  v132 = v320 + 3 * v321;
  v300 = 0xD000000000000012;
  sub_1C6D783C0();
  if (v101)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v101, 0);
    v133 = v332;
    v134 = v100 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v135 = *(v325 + 72);
    v136 = v101;
    do
    {
      sub_1C6B9F51C(v134, v41, type metadata accessor for EventArticleFeatures);
      v138 = *(v41 + 4);
      v137 = *(v41 + 5);

      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v133;
      v140 = v133[2];
      v139 = v133[3];
      if (v140 >= v139 >> 1)
      {
        sub_1C6B39280((v139 > 1), v140 + 1, 1);
        v133 = v332;
      }

      v133[2] = v140 + 1;
      v141 = &v133[2 * v140];
      v141[4] = v138;
      v141[5] = v137;
      v134 += v135;
      --v136;
    }

    while (v136);
    v100 = v317;
    v101 = v315;
  }

  v142 = v132 + *(v322 + 48);
  sub_1C6D78740();
  v143 = v320 + 4 * v321;
  sub_1C6D783C0();
  if (v101)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v101, 0);
    v144 = v332;
    v145 = v100 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v146 = *(v325 + 72);
    v147 = v101;
    do
    {
      sub_1C6B9F51C(v145, v41, type metadata accessor for EventArticleFeatures);
      v149 = *(v41 + 6);
      v148 = *(v41 + 7);

      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v144;
      v151 = v144[2];
      v150 = v144[3];
      if (v151 >= v150 >> 1)
      {
        sub_1C6B39280((v150 > 1), v151 + 1, 1);
        v144 = v332;
      }

      v144[2] = v151 + 1;
      v152 = &v144[2 * v151];
      v152[4] = v149;
      v152[5] = v148;
      v145 += v146;
      --v147;
    }

    while (v147);
    v100 = v317;
    v101 = v315;
  }

  v153 = v143 + *(v322 + 48);
  sub_1C6D78740();
  v154 = v320 + 5 * v321;
  v299 = 0xD000000000000017;
  sub_1C6D783C0();
  if (v101)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v101, 0);
    v155 = v332;
    v156 = v100 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v157 = *(v325 + 72);
    v158 = v101;
    do
    {
      sub_1C6B9F51C(v156, v41, type metadata accessor for EventArticleFeatures);
      v160 = *(v41 + 8);
      v159 = *(v41 + 9);

      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v155;
      v162 = v155[2];
      v161 = v155[3];
      if (v162 >= v161 >> 1)
      {
        sub_1C6B39280((v161 > 1), v162 + 1, 1);
        v155 = v332;
      }

      v155[2] = v162 + 1;
      v163 = &v155[2 * v162];
      v163[4] = v160;
      v163[5] = v159;
      v156 += v157;
      --v158;
    }

    while (v158);
    v100 = v317;
  }

  v164 = v154 + *(v322 + 48);
  sub_1C6D78740();
  v298 = v320 + 6 * v321;
  sub_1C6D783C0();
  v165 = *(v100 + 16);
  if (v165)
  {
    v166 = v324;
    v167 = v100 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v323 = *(v325 + 72);
    v168 = MEMORY[0x1E69E7CC0];
    v169 = v165;
    do
    {
      sub_1C6B9F51C(v167, v166, type metadata accessor for EventArticleFeatures);
      v332 = *(v166 + 80);
      sub_1C6B855D0();
      sub_1C6B9F480(&qword_1EDCE7F38, sub_1C6B855D0);

      v170 = sub_1C6D79530();
      v172 = v171;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = sub_1C6B6592C(0, *(v168 + 2) + 1, 1, v168);
      }

      v174 = *(v168 + 2);
      v173 = *(v168 + 3);
      v166 = v324;
      if (v174 >= v173 >> 1)
      {
        v168 = sub_1C6B6592C((v173 > 1), v174 + 1, 1, v168);
        v166 = v324;
      }

      sub_1C6B9F584(v166, type metadata accessor for EventArticleFeatures);
      *(v168 + 2) = v174 + 1;
      v175 = &v168[16 * v174];
      *(v175 + 4) = v170;
      *(v175 + 5) = v172;
      v167 += v323;
      --v169;
    }

    while (v169);
  }

  v176 = v298 + *(v322 + 48);
  sub_1C6D78740();
  v324 = (v320 - v321);
  v298 = v320 - v321 + 8 * v321;
  v323 = 0xD000000000000019;
  sub_1C6D783C0();
  if (v165)
  {
    v177 = v317 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v178 = *(v325 + 72);
    v179 = MEMORY[0x1E69E7CC0];
    v180 = v295;
    do
    {
      sub_1C6B9F51C(v177, v180, type metadata accessor for EventArticleFeatures);
      v332 = *(v180 + 88);
      sub_1C6B855D0();
      sub_1C6B9F480(&qword_1EDCE7F38, sub_1C6B855D0);

      v181 = sub_1C6D79530();
      v183 = v182;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v179 = sub_1C6B6592C(0, *(v179 + 2) + 1, 1, v179);
      }

      v185 = *(v179 + 2);
      v184 = *(v179 + 3);
      if (v185 >= v184 >> 1)
      {
        v179 = sub_1C6B6592C((v184 > 1), v185 + 1, 1, v179);
      }

      sub_1C6B9F584(v180, type metadata accessor for EventArticleFeatures);
      *(v179 + 2) = v185 + 1;
      v186 = &v179[16 * v185];
      *(v186 + 4) = v181;
      *(v186 + 5) = v183;
      v177 += v178;
      --v165;
    }

    while (v165);
  }

  v187 = v298 + *(v322 + 48);
  sub_1C6D78740();
  v188 = v320 + 8 * v321;
  sub_1C6D783C0();
  v189 = v315;
  if (v315)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v315, 0);
    v190 = v332;
    v191 = v317 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v192 = *(v325 + 72);
    v193 = v189;
    do
    {
      sub_1C6B9F51C(v191, v41, type metadata accessor for EventArticleFeatures);
      v195 = *(v41 + 12);
      v194 = *(v41 + 13);

      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v190;
      v197 = v190[2];
      v196 = v190[3];
      if (v197 >= v196 >> 1)
      {
        sub_1C6B39280((v196 > 1), v197 + 1, 1);
        v190 = v332;
      }

      v190[2] = v197 + 1;
      v198 = &v190[2 * v197];
      v198[4] = v195;
      v198[5] = v194;
      v191 += v192;
      --v193;
    }

    while (v193);
    v199 = v317;
    v189 = v315;
  }

  else
  {
    v199 = v317;
  }

  v200 = v188 + *(v322 + 48);
  sub_1C6D78740();
  v201 = v320 + 9 * v321;
  sub_1C6D783C0();
  v202 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v189, 0);
    v202 = v332;
    v203 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v204 = *(v325 + 72);
    v205 = v189;
    do
    {
      sub_1C6B9F51C(v203, v41, type metadata accessor for EventArticleFeatures);
      v206 = *(v41 + 28);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v202;
      v208 = v202[2];
      v207 = v202[3];
      if (v208 >= v207 >> 1)
      {
        sub_1C6B392F0((v207 > 1), v208 + 1, 1);
        v202 = v332;
      }

      v202[2] = v208 + 1;
      *(v202 + v208 + 8) = v206;
      v203 += v204;
      --v205;
    }

    while (v205);
    v189 = v315;
  }

  v209 = *(v322 + 48);
  *(v201 + v209) = v202;
  v313(v201 + v209, v312, v316);
  v210 = v320 + 10 * v321;
  sub_1C6D783C0();
  v211 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v189, 0);
    v211 = v332;
    v212 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v213 = *(v325 + 72);
    v214 = v189;
    do
    {
      sub_1C6B9F51C(v212, v41, type metadata accessor for EventArticleFeatures);
      v215 = *(v41 + 29);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v211;
      v217 = v211[2];
      v216 = v211[3];
      if (v217 >= v216 >> 1)
      {
        sub_1C6B392F0((v216 > 1), v217 + 1, 1);
        v211 = v332;
      }

      v211[2] = v217 + 1;
      *(v211 + v217 + 8) = v215;
      v212 += v213;
      --v214;
    }

    while (v214);
    v199 = v317;
    v189 = v315;
  }

  v218 = *(v322 + 48);
  *(v210 + v218) = v211;
  v313(v210 + v218, v312, v316);
  v219 = v320 + 11 * v321;
  sub_1C6D783C0();
  v220 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v189, 0);
    v220 = v332;
    v221 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v222 = *(v325 + 72);
    v223 = v189;
    do
    {
      sub_1C6B9F51C(v221, v41, type metadata accessor for EventArticleFeatures);
      v224 = *(v41 + 30);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v220;
      v226 = v220[2];
      v225 = v220[3];
      if (v226 >= v225 >> 1)
      {
        sub_1C6B392F0((v225 > 1), v226 + 1, 1);
        v220 = v332;
      }

      v220[2] = v226 + 1;
      *(v220 + v226 + 8) = v224;
      v221 += v222;
      --v223;
    }

    while (v223);
    v199 = v317;
    v189 = v315;
  }

  v227 = *(v322 + 48);
  *(v219 + v227) = v220;
  v313(v219 + v227, v312, v316);
  v228 = v320 + 12 * v321;
  sub_1C6D783C0();
  v229 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v189, 0);
    v229 = v332;
    v230 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v231 = *(v325 + 72);
    v232 = v189;
    do
    {
      sub_1C6B9F51C(v230, v41, type metadata accessor for EventArticleFeatures);
      v233 = *(v41 + 31);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v229;
      v235 = v229[2];
      v234 = v229[3];
      if (v235 >= v234 >> 1)
      {
        sub_1C6B392F0((v234 > 1), v235 + 1, 1);
        v229 = v332;
      }

      v229[2] = v235 + 1;
      *(v229 + v235 + 8) = v233;
      v230 += v231;
      --v232;
    }

    while (v232);
    v199 = v317;
    v189 = v315;
  }

  v236 = *(v322 + 48);
  *(v228 + v236) = v229;
  v313(v228 + v236, v312, v316);
  v237 = v320 + 13 * v321;
  sub_1C6D783C0();
  v238 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v189, 0);
    v238 = v332;
    v239 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v240 = *(v325 + 72);
    v241 = v189;
    do
    {
      sub_1C6B9F51C(v239, v41, type metadata accessor for EventArticleFeatures);
      v242 = *(v41 + 32);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v238;
      v244 = v238[2];
      v243 = v238[3];
      if (v244 >= v243 >> 1)
      {
        sub_1C6B392F0((v243 > 1), v244 + 1, 1);
        v238 = v332;
      }

      v238[2] = v244 + 1;
      *(v238 + v244 + 8) = v242;
      v239 += v240;
      --v241;
    }

    while (v241);
    v199 = v317;
    v189 = v315;
  }

  v245 = *(v322 + 48);
  *(v237 + v245) = v238;
  v313(v237 + v245, v312, v316);
  v246 = v320 + 14 * v321;
  sub_1C6D783C0();
  v247 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v189, 0);
    v247 = v332;
    v248 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v249 = *(v325 + 72);
    v250 = v189;
    do
    {
      sub_1C6B9F51C(v248, v41, type metadata accessor for EventArticleFeatures);
      v251 = *(v41 + 33);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v247;
      v253 = v247[2];
      v252 = v247[3];
      if (v253 >= v252 >> 1)
      {
        sub_1C6B392F0((v252 > 1), v253 + 1, 1);
        v247 = v332;
      }

      v247[2] = v253 + 1;
      *(v247 + v253 + 8) = v251;
      v248 += v249;
      --v250;
    }

    while (v250);
    v199 = v317;
    v189 = v315;
  }

  v254 = *(v322 + 48);
  *(v246 + v254) = v247;
  v313(v246 + v254, v312, v316);
  v255 = &v324[16 * v321];
  sub_1C6D783C0();
  v256 = MEMORY[0x1E69E7CC0];
  v257 = v319;
  if (v189)
  {
    v332 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v189, 0);
    v256 = v332;
    v258 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v259 = *(v325 + 72);
    do
    {
      v260 = v189;
      sub_1C6B9F51C(v258, v41, type metadata accessor for EventArticleFeatures);
      v261 = *(v41 + 34);
      sub_1C6B9F584(v41, type metadata accessor for EventArticleFeatures);
      v332 = v256;
      v263 = v256[2];
      v262 = v256[3];
      if (v263 >= v262 >> 1)
      {
        sub_1C6B392F0((v262 > 1), v263 + 1, 1);
        v256 = v332;
      }

      v256[2] = v263 + 1;
      *(v256 + v263 + 8) = v261;
      v258 += v259;
      --v189;
    }

    while (v260 != 1);
    v199 = v317;
  }

  v264 = *(v322 + 48);
  *&v255[v264] = v256;
  v313(&v255[v264], v312, v316);
  v265 = v309;
  sub_1C6D787D0();
  v266 = v310;
  v267 = v331;
  if (v310[3] > 0)
  {
    sub_1C6D783C0();
    v268 = *(v199 + 16);
    v269 = MEMORY[0x1E69E7CC0];
    if (v268)
    {
      v332 = MEMORY[0x1E69E7CC0];
      sub_1C6B39414(0, v268, 0);
      v269 = v332;
      v270 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
      v271 = *(v325 + 72);
      v272 = v330;
      v273 = (v329 + 48);
      do
      {
        sub_1C6B9F51C(v270, v257, type metadata accessor for EventArticleFeatures);
        v274 = v318;
        sub_1C6B9F374(v257 + *(v328 + 92), v318, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((*v273)(v274, 1, v272) == 1)
        {
          v275 = sub_1C6B9F3F4(v274, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v276 = *(v257 + 152);
          MEMORY[0x1EEE9AC00](v275);
          *(&v294 - 2) = v277;
          sub_1C6B9F480(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D78C30();
          v272 = v330;
        }

        else
        {
          sub_1C6B9F6C8(v274, v326, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        sub_1C6B9F584(v257, type metadata accessor for EventArticleFeatures);
        v332 = v269;
        v279 = *(v269 + 16);
        v278 = *(v269 + 24);
        if (v279 >= v278 >> 1)
        {
          sub_1C6B39414(v278 > 1, v279 + 1, 1);
          v272 = v330;
          v269 = v332;
        }

        *(v269 + 16) = v279 + 1;
        sub_1C6B9F6C8(v326, v269 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v279, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v270 += v271;
        --v268;
        v267 = v331;
        v257 = v319;
      }

      while (v268);
      v265 = v309;
      v266 = v310;
      v199 = v317;
    }

    v280 = v296;
    sub_1C6B9EDFC(v269, v296);

    (*(v306 + 56))(v280, 0, 1, v316);
    sub_1C6D78830();
  }

  if (*v266 >= 1)
  {
    sub_1C6D783C0();
    v281 = *(v199 + 16);
    v282 = MEMORY[0x1E69E7CC0];
    if (v281)
    {
      v332 = MEMORY[0x1E69E7CC0];
      sub_1C6B39414(0, v281, 0);
      v282 = v332;
      v283 = v199 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
      v284 = *(v325 + 72);
      v285 = (v329 + 48);
      v286 = v311;
      do
      {
        sub_1C6B9F51C(v283, v267, type metadata accessor for EventArticleFeatures);
        sub_1C6B9F374(v267 + *(v328 + 96), v286, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((*v285)(v286, 1, v330) == 1)
        {
          v287 = sub_1C6B9F3F4(v286, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v288 = *(v331 + 20);
          MEMORY[0x1EEE9AC00](v287);
          *(&v294 - 2) = v289;
          sub_1C6B9F480(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D78C30();
          v286 = v311;
          v267 = v331;
        }

        else
        {
          sub_1C6B9F6C8(v286, v327, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        sub_1C6B9F584(v267, type metadata accessor for EventArticleFeatures);
        v332 = v282;
        v291 = *(v282 + 16);
        v290 = *(v282 + 24);
        if (v291 >= v290 >> 1)
        {
          sub_1C6B39414(v290 > 1, v291 + 1, 1);
          v286 = v311;
          v282 = v332;
        }

        *(v282 + 16) = v291 + 1;
        sub_1C6B9F6C8(v327, v282 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v291, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v283 += v284;
        --v281;
        v267 = v331;
      }

      while (v281);
      v265 = v309;
    }

    v292 = v297;
    sub_1C6B9EDFC(v282, v297);

    (*(v306 + 56))(v292, 0, 1, v316);
    sub_1C6D78830();
  }

  (*(v303 + 32))(v305, v265, v304);

  return v302;
}

uint64_t sub_1C6B9C76C(uint64_t a1, BOOL *a2, uint64_t *a3, size_t *a4, uint64_t a5, void *a6, uint64_t a7, _OWORD *a8, uint64_t (*a9)(char *), uint64_t a10)
{
  v110 = a7;
  v116 = a6;
  v99 = a5;
  v119 = a4;
  v100 = sub_1C6D789A0();
  v14 = *(v100 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v91 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1C6B9F664(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v88 - v23;
  v24 = type metadata accessor for EventArticleFeatures();
  v97 = *(v24 - 8);
  v25 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v109 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v108 = (&v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v114 = &v88 - v31;
  v107 = type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation();
  v32 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v112 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9F664(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v17);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v111 = &v88 - v36;
  v115 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v37 = *(v115 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v117 = *(v96 - 8);
  v41 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v44 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    goto LABEL_31;
  }

  v113 = v40;
  v93 = v21;
  v88 = a2;
  *a3 = v45;
  if (qword_1EDCDF7A0 != -1)
  {
LABEL_32:
    v42 = swift_once();
  }

  v46 = *algn_1EDCF0308;
  v47 = MEMORY[0x1EEE9AC00](v42);
  *(&v88 - 2) = a1;
  v105 = v46;
  v106 = v48;
  result = (v48)(sub_1C6B9F514, v47);
  v50 = *(a1 + 16);
  a1 = *(v50 + 16);
  v51 = v112;
  v52 = v111;
  v53 = v99;
  if (a1)
  {
    v92 = a10;
    v95 = a9;
    v37 += 48;
    v54 = v14;
    v14 += 48;
    v89 = (v54 + 32);
    v90 = (v54 + 8);
    v104 = v50;
    v103 = v37;
    v94 = a8;
    v118 = v44;
    do
    {
      if (a1 > *(v50 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      --a1;
      sub_1C6B9F51C(v50 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * a1, v44, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (*(*v119 + 16) >= v53)
      {
        result = sub_1C6B9F584(v44, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        break;
      }

      if (__OFADD__(*v116, 1))
      {
        goto LABEL_30;
      }

      ++*v116;
      sub_1C6B9F374(v44, v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if ((*v37)(v52, 1, v115) == 1)
      {
        sub_1C6B9F3F4(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      }

      else
      {
        v55 = v53;
        v56 = v113;
        sub_1C6B9F6C8(v52, v113, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v57 = a8[7];
        v120[4] = a8[6];
        v120[5] = v57;
        v58 = a8[9];
        v120[6] = a8[8];
        v120[7] = v58;
        v59 = a8[3];
        v120[0] = a8[2];
        v120[1] = v59;
        v60 = a8[5];
        v120[2] = a8[4];
        v120[3] = v60;
        sub_1C6B9D638(v56, v120, v51);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v62 = *v51;
        v63 = *(v51 + 1);
        if (EnumCaseMultiPayload != 1)
        {
          sub_1C6B9F5EC();
          v66 = *(v65 + 48);
          v101 = *&v51[*(v65 + 64)];
          v67 = sub_1C6B9F6C8(&v51[v66], v114, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v68 = v118;
          if (v95)
          {
            v67 = v95(v118);
          }

          v69 = MEMORY[0x1EEE9AC00](v67);
          v102 = *&v62;
          *(&v88 - 2) = v62;
          *(&v88 - 1) = v63;
          v106(sub_1C6B9F65C, v69);
          sub_1C6B9F51C(v114, v108, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v70 = *(v96 + 24);
          v71 = MEMORY[0x1E69AA900];
          v72 = v98;
          sub_1C6B9F374(&v68[v70], v98, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          v73 = *v14;
          v74 = (*v14)(v72, 1, v100);
          sub_1C6B9F3F4(v72, &qword_1EDCE66F0, v71);
          v75 = 0.0;
          if (v74 != 1)
          {
            v76 = v93;
            sub_1C6B9F374(&v118[v70], v93, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            v77 = v100;
            if (v73(v76, 1, v100) == 1)
            {
              v78 = v91;
              sub_1C6D78990();
              if (v73(v76, 1, v77) != 1)
              {
                sub_1C6B9F3F4(v93, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              }
            }

            else
            {
              v78 = v91;
              (*v89)(v91, v76, v77);
            }

            sub_1C6D78970();
            v80 = v79;
            (*v90)(v78, v77);
            v75 = v80;
          }

          a8 = v94;
          sub_1C6C758F0(v101, v102, v63, *v94, v108, *(v94 + 2), *(v94 + 3), v109, v75);
          v81 = v119;
          v82 = *v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v81 = v82;
          v50 = v104;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v82 = sub_1C6B65E2C(0, v82[2] + 1, 1, v82);
            *v119 = v82;
          }

          v53 = v99;
          v44 = v118;
          v85 = v82[2];
          v84 = v82[3];
          if (v85 >= v84 >> 1)
          {
            v87 = sub_1C6B65E2C(v84 > 1, v85 + 1, 1, v82);
            *v119 = v87;
          }

          sub_1C6B9F584(v114, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B9F584(v113, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v86 = *v119;
          *(v86 + 16) = v85 + 1;
          sub_1C6B9F6C8(v109, v86 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v85, type metadata accessor for EventArticleFeatures);
          v51 = v112;
          v52 = v111;
          v37 = v103;
          goto LABEL_7;
        }

        v64 = MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        *(&v88 - 2) = v62;
        *(&v88 - 1) = v63;
        v106(sub_1C6B9F5E4, v64);

        v51 = v112;
        sub_1C6B9F584(v56, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v52 = v111;
        v53 = v55;
        v50 = v104;
        v37 = v103;
      }

      v44 = v118;
LABEL_7:
      result = sub_1C6B9F584(v44, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    }

    while (a1);
  }

  *v88 = *(*v119 + 16) >= v53;
  return result;
}

uint64_t sub_1C6B9D35C(void *a1)
{
  v2 = MEMORY[0x1E69AA900];
  sub_1C6B9F664(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v16 - v5;
  v7 = sub_1C6D789A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000013, 0x80000001C6D9C1A0);
  MEMORY[0x1CCA55B00](*a1, a1[1]);
  MEMORY[0x1CCA55B00](2108704, 0xE300000000000000);
  v12 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B9F374(a1 + *(v12 + 36), v6, &qword_1EDCE66F0, v2);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_1C6D78990();
    if (v13(v6, 1, v7) != 1)
    {
      sub_1C6B9F3F4(v6, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_1C6D79E60();
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1CCA55B00](0x206874697720, 0xE600000000000000);
  v16[1] = *(a1[2] + 16);
  v14 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v14);

  MEMORY[0x1CCA55B00](0x73746E65766520, 0xE700000000000000);
  return v17;
}

uint64_t sub_1C6B9D638@<X0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v174 = a2;
  v169 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v5 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v173 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B9F664(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v164 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v156 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v168 = &v156 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v156 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v156 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v167 = &v156 - v20;
  v21 = sub_1C6D78A00();
  v22 = *(v21 - 8);
  v170 = v21;
  v171 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v160 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v159 = &v156 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v156 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v158 = &v156 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v157 = &v156 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v165 = &v156 - v34;
  v35 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v172 = (&v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9F664(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v7);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = (&v156 - v44);
  v46 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = (&v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v45);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_1C6B9F3F4(v45, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    *a3 = -2.31584178e77;
    *(a3 + 1) = 0x80000001C6D9BD70;
  }

  else
  {
    sub_1C6B9F6C8(v45, v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B9F51C(a1, v41, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = v50;
    v54 = v41;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v98 = v174[2];
        if (v98 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v99 < v98)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v95 = "Article Visited Event with probability ";
        goto LABEL_43;
      case 2:
        v81 = v41;
        v82 = v173;
        v83 = sub_1C6B9F6C8(v81, v173, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        v84 = v174[4];
        if (v84 <= 0.0 || (v85 = v174[3], sub_1C6BFE0B4(v83, 0.0, 1.0), v86 >= v84))
        {
          v175 = 0;
          v176 = 0xE000000000000000;
          sub_1C6D79D50();
          MEMORY[0x1CCA55B00](0xD000000000000024, 0x80000001C6D9C080);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
          v115 = v175;
          v116 = v176;
          v117 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
          v118 = v82;
          goto LABEL_64;
        }

        v174 = v50;
        v87 = v168;
        v88 = *(v169 + 28);
        sub_1C6B9F374(v82 + v88, v168, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v90 = v170;
        v89 = v171;
        v91 = *(v171 + 48);
        if (v91(v87, 1, v170) == 1)
        {
          v92 = v166;
          sub_1C6D789F0();
          if (v91(v87, 1, v90) != 1)
          {
            sub_1C6B9F3F4(v87, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v92 = v166;
          (*(v89 + 32))(v166, v87, v90);
        }

        sub_1C6D789C0();
        v123 = v122;
        v172 = *(v89 + 8);
        v172(v92, v90);
        if (v85 > v123)
        {
          v175 = 0;
          v176 = 0xE000000000000000;
          sub_1C6D79D50();
          MEMORY[0x1CCA55B00](0xD000000000000021, 0x80000001C6D9C0B0);
          v124 = v164;
          sub_1C6B9F374(v173 + v88, v164, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          if (v91(v124, 1, v90) == 1)
          {
            v125 = v160;
            sub_1C6D789F0();
            if (v91(v124, 1, v90) != 1)
            {
              sub_1C6B9F3F4(v124, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v125 = v160;
            (*(v89 + 32))(v160, v124, v90);
          }

          sub_1C6D789C0();
          v172(v125, v90);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
          sub_1C6D79910();
          v115 = v175;
          v116 = v176;
          sub_1C6B9F584(v173, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
          v119 = v174;
          goto LABEL_65;
        }

        sub_1C6B9F5EC();
        v127 = v126;
        v128 = *(v126 + 48);
        *a3 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
        *(a3 + 1) = v129;
        sub_1C6B9F51C(v174, a3 + v128, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v130 = v163;
        sub_1C6B9F374(v173 + v88, v163, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        if (v91(v130, 1, v90) == 1)
        {
          v131 = v159;
          sub_1C6D789F0();
          if (v91(v130, 1, v90) != 1)
          {
            sub_1C6B9F3F4(v130, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v131 = v159;
          (*(v171 + 32))(v159, v130, v90);
        }

        v149 = *(v127 + 64);
        v150 = sub_1C6D789E0();
        v172(v131, v90);
        sub_1C6B9F584(v173, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        sub_1C6B9F584(v174, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        *(a3 + v149) = v150;
        type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation();
        return swift_storeEnumTagMultiPayload();
      case 3:
        v96 = v174[5];
        if (v96 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v97 < v96)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v73 = "Article Shared Event with probability ";
        goto LABEL_53;
      case 4:
        v76 = v174[6];
        if (v76 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v77 < v76)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v78 = "Article Liked Event with probability ";
        goto LABEL_67;
      case 5:
        v105 = v174[7];
        if (v105 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v106 < v105)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v69 = "ent with probability ";
        v70 = 0xD000000000000028;
        goto LABEL_68;
      case 6:
        v109 = v174[8];
        if (v109 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v110 < v109)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v78 = "Article Saved Event with probability ";
        goto LABEL_67;
      case 7:
        v74 = 0x80000001C6D9BE50;
        sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v75 = 0xD000000000000018;
        goto LABEL_61;
      case 8:
        v74 = 0x80000001C6D9BE30;
        sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v75 = 0xD00000000000001ALL;
        goto LABEL_61;
      case 9:
        v74 = 0x80000001C6D9BE10;
        sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v75 = 0xD00000000000001BLL;
        goto LABEL_61;
      case 10:
        v74 = 0x80000001C6D9BDF0;
        sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v75 = 0xD00000000000001DLL;
        goto LABEL_61;
      case 11:
        v74 = 0x80000001C6D9BDD0;
        sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v75 = 0xD00000000000001CLL;
        goto LABEL_61;
      case 12:
        v79 = v174[9];
        if (v79 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v80 < v79)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v78 = "Track Visited Event with probability ";
LABEL_67:
        v69 = (v78 - 32);
        v70 = 0xD000000000000025;
        goto LABEL_68;
      case 13:
        v107 = v174[10];
        if (v107 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v108 < v107)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v73 = "Track Listened Event with probability ";
        goto LABEL_53;
      case 14:
        v71 = v174[11];
        if (v71 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v72 < v71)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v73 = "Track Finished Event with probability ";
LABEL_53:
        v69 = (v73 - 32);
        v70 = 0xD000000000000026;
        goto LABEL_68;
      case 15:
        v93 = v174[12];
        if (v93 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v94 < v93)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v95 = "Article Unliked Event with probability ";
        goto LABEL_43;
      case 16:
        v67 = v174[13];
        if (v67 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v68 < v67)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v69 = "Event with probability ";
        v70 = 0xD00000000000002ALL;
        goto LABEL_68;
      case 17:
        v100 = v174[14];
        if (v100 > 0.0)
        {
          sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0);
          if (v101 < v100)
          {
            goto LABEL_56;
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        v95 = "Article Unsaved Event with probability ";
LABEL_43:
        v102 = (v95 - 32) | 0x8000000000000000;
        v70 = 0xD000000000000027;
        goto LABEL_69;
      case 18:
        v74 = 0x80000001C6D9BDB0;
        sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v75 = 0xD00000000000001ELL;
        goto LABEL_61;
      case 19:
        v74 = 0x80000001C6D9BD90;
        sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v75 = 0xD000000000000019;
LABEL_61:
        *a3 = v75;
        *(a3 + 1) = v74;
        goto LABEL_70;
      case 20:
        v103 = v174[15];
        if (v103 > 0.0 && (sub_1C6BFE0B4(EnumCaseMultiPayload, 0.0, 1.0), v104 < v103))
        {
LABEL_56:
          sub_1C6B9F5EC();
          v112 = *(v111 + 48);
          v113 = *(v111 + 64);
          *a3 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
          *(a3 + 1) = v114;
          sub_1C6B9F6C8(v50, a3 + v112, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          *(a3 + v113) = 0.0;
          type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation();
        }

        else
        {
          v175 = 0;
          v176 = 0xE000000000000000;
          sub_1C6D79D50();
          v69 = "Skipping Tag Muted event";
          v70 = 0xD00000000000002BLL;
LABEL_68:
          v102 = v69 | 0x8000000000000000;
LABEL_69:
          MEMORY[0x1CCA55B00](v70, v102);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
          v120 = v175;
          v121 = v176;
          sub_1C6B9F584(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          *a3 = v120;
          *(a3 + 1) = v121;
LABEL_70:
          type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation();
        }

        swift_storeEnumTagMultiPayload();
        return sub_1C6B9F584(v54, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      default:
        v55 = v172;
        v56 = sub_1C6B9F6C8(v41, v172, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v57 = v174[1];
        v58 = v171;
        if (v57 > 0.0)
        {
          v59 = *v174;
          sub_1C6BFE0B4(v56, 0.0, 1.0);
          if (v60 < v57)
          {
            v61 = *(v35 + 24);
            v62 = v167;
            sub_1C6B9F374(v55 + v61, v167, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            v63 = *(v58 + 48);
            v64 = v170;
            v65 = v63(v62, 1, v170);
            v174 = a3;
            if (v65 == 1)
            {
              v66 = v165;
              sub_1C6D789F0();
              if (v63(v62, 1, v64) != 1)
              {
                sub_1C6B9F3F4(v62, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
              }
            }

            else
            {
              v66 = v165;
              (*(v58 + 32))(v165, v62, v64);
            }

            sub_1C6D789C0();
            v133 = v132;
            v134 = *(v58 + 8);
            v134(v66, v64);
            if (v59 <= v133)
            {
              v173 = v134;
              sub_1C6B9F5EC();
              v138 = v137;
              v139 = v53;
              v140 = *(v137 + 48);
              v141 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
              v142 = v174;
              *v174 = v141;
              *(v142 + 1) = v143;
              sub_1C6B9F51C(v139, v142 + v140, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v144 = v161;
              sub_1C6B9F374(v172 + v61, v161, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
              v145 = v64;
              if (v63(v144, 1, v64) == 1)
              {
                v146 = v157;
                sub_1C6D789F0();
                v147 = v63(v144, 1, v64);
                v148 = v173;
                if (v147 != 1)
                {
                  sub_1C6B9F3F4(v144, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
                }
              }

              else
              {
                v146 = v157;
                (*(v171 + 32))(v157, v144, v64);
                v148 = v173;
              }

              v154 = *(v138 + 64);
              v155 = sub_1C6D789E0();
              v148(v146, v145);
              sub_1C6B9F584(v172, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              sub_1C6B9F584(v139, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              *(v174 + v154) = v155;
              type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation();
            }

            else
            {
              v175 = 0;
              v176 = 0xE000000000000000;
              sub_1C6D79D50();
              MEMORY[0x1CCA55B00](0xD000000000000021, 0x80000001C6D9C170);
              v135 = v162;
              sub_1C6B9F374(v172 + v61, v162, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
              if (v63(v135, 1, v64) == 1)
              {
                v136 = v158;
                sub_1C6D789F0();
                if (v63(v135, 1, v64) != 1)
                {
                  sub_1C6B9F3F4(v135, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
                }
              }

              else
              {
                v136 = v158;
                (*(v171 + 32))(v158, v135, v64);
              }

              sub_1C6D789C0();
              v134(v136, v64);
              sub_1C6D79910();
              MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
              sub_1C6D79910();
              v151 = v175;
              v152 = v176;
              sub_1C6B9F584(v172, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              sub_1C6B9F584(v53, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v153 = v174;
              *v174 = v151;
              *(v153 + 1) = v152;
              type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation();
            }

            return swift_storeEnumTagMultiPayload();
          }
        }

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C6D79D50();
        MEMORY[0x1CCA55B00](0xD000000000000024, 0x80000001C6D9C140);
        sub_1C6D79910();
        MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
        v115 = v175;
        v116 = v176;
        v117 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        v118 = v55;
LABEL_64:
        sub_1C6B9F584(v118, v117);
        v119 = v50;
LABEL_65:
        sub_1C6B9F584(v119, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        *a3 = v115;
        *(a3 + 1) = v116;
        break;
    }
  }

  type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation();
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C6B9ECFC(uint64_t a1, uint64_t a2)
{
  sub_1C6D79D50();

  MEMORY[0x1CCA55B00](a1, a2);
  return 0xD000000000000010;
}

unint64_t sub_1C6B9ED7C(uint64_t a1, uint64_t a2)
{
  sub_1C6D79D50();

  MEMORY[0x1CCA55B00](a1, a2);
  return 0xD000000000000017;
}

void sub_1C6B9EDFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v27 = a2;
    *&v28 = MEMORY[0x1E69E7CC0];
    sub_1C6B393F4(0, v9, 0);
    v10 = v28;
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1C6B9F51C(v11, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v13 = *v8;
      v14 = v8[1];
      sub_1C6B1CD10(*v8, v14);
      sub_1C6B9F584(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      *&v28 = v10;
      v16 = v10[2];
      v15 = v10[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_1C6B393F4((v15 > 1), v16 + 1, 1);
        v10 = v28;
      }

      v10[2] = v17;
      v18 = &v10[2 * v16];
      v18[4] = v13;
      v18[5] = v14;
      v11 += v12;
      --v9;
    }

    while (v9);
    v28 = xmmword_1C6D7F510;
    a2 = v27;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    v28 = xmmword_1C6D7F510;
    if (!v17)
    {
LABEL_11:

      v23 = *(&v28 + 1);
      *a2 = v28;
      a2[1] = v23;
      v24 = *MEMORY[0x1E6996120];
      v25 = sub_1C6D78760();
      (*(*(v25 - 8) + 104))(a2, v24, v25);
      return;
    }
  }

  v19 = 0;
  v20 = v10 + 5;
  while (v19 < v10[2])
  {
    ++v19;
    v22 = *(v20 - 1);
    v21 = *v20;
    sub_1C6B1CD10(v22, *v20);
    sub_1C6D75E80();
    sub_1C6B1C9F0(v22, v21);
    v20 += 2;
    if (v17 == v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t ArticleUserEventHistoryFeaturesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B9F0CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_2, a2, a4);
  sub_1C6B16F28(v13, a3 + 16);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  LOBYTE(v10) = (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  *(a3 + 56) = v10 & 1;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return a3;
}

uint64_t sub_1C6B9F1A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_1C6B9F0CC(a1, v12, v13, a4, a5);
}

void sub_1C6B9F304()
{
  if (!qword_1EDCEA340)
  {
    sub_1C6D783E0();
    sub_1C6D78760();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA340);
    }
  }
}

uint64_t sub_1C6B9F374(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B9F664(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B9F3F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B9F664(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6B9F480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation()
{
  result = qword_1EDCE0120;
  if (!qword_1EDCE0120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B9F51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B9F584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6B9F5EC()
{
  if (!qword_1EDCDFB20)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticle(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDCDFB20);
    }
  }
}

void sub_1C6B9F664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B9F6C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1C6B9F730@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  v4 = [a1 articleSeenConditions];
  [v4 duration];
  v52 = v5;

  v6 = [a1 articleSeenConditions];
  [v6 probability];
  v51 = v7;

  v8 = [a1 articleVisitedConditions];
  [v8 probability];
  v50 = v9;

  v10 = [a1 articleReadConditions];
  [v10 duration];
  v49 = v11;

  v12 = [a1 articleReadConditions];
  [v12 probability];
  v48 = v13;

  v14 = [a1 articleSharedConditions];
  [v14 probability];
  v47 = v15;

  v16 = [a1 articleLikedConditions];
  [v16 probability];
  v46 = v17;

  v18 = [a1 articleDislikedConditions];
  [v18 probability];
  v45 = v19;

  v20 = [a1 articleSavedConditions];
  [v20 probability];
  v22 = v21;

  v23 = [a1 trackVisitedConditions];
  [v23 probability];
  v25 = v24;

  v26 = [a1 trackListenedConditions];
  [v26 probability];
  v28 = v27;

  v29 = [a1 trackFinishedConditions];
  [v29 probability];
  v31 = v30;

  v32 = [a1 articleUnlikedConditions];
  [v32 probability];
  v34 = v33;

  v35 = [a1 articleUndislikedConditions];
  [v35 probability];
  v37 = v36;

  v38 = [a1 articleUnsavedConditions];
  [v38 probability];
  v40 = v39;

  v41 = [a1 notificationVendedConditions];
  [v41 probability];
  v43 = v42;

  *a2 = v52;
  *(a2 + 1) = v51;
  *(a2 + 2) = v50;
  *(a2 + 3) = v49;
  *(a2 + 4) = v48;
  *(a2 + 5) = v47;
  result = v45;
  *(a2 + 6) = v46;
  a2[7] = v45;
  *(a2 + 8) = v22;
  *(a2 + 9) = v25;
  *(a2 + 10) = v28;
  *(a2 + 11) = v31;
  *(a2 + 12) = v34;
  *(a2 + 13) = v37;
  *(a2 + 14) = v40;
  *(a2 + 15) = v43;
  return result;
}

void sub_1C6B9FA7C()
{
  sub_1C6B9F5EC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

char *NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:)(void *a1)
{
  [a1 clicks];
  if (v3 > 0.0 || (result = [a1 impressions], v5 > 0.0))
  {
    [v1 impressions];
    [a1 impressions];
    [a1 impressions];
    sub_1C6D798D0();
    v7 = v6;
    [v1 clicks];
    [a1 clicks];
    [a1 impressions];
    sub_1C6D798D0();
    [v1 setClicks_];
    [v1 setImpressions_];
    result = [v1 eventCount];
    if (result == -1)
    {
      __break(1u);
    }

    else
    {

      return [v1 setEventCount_];
    }
  }

  return result;
}

id NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = a1;
  [a1 clicks];
  if (v8 > 0.0 || (result = [v7 impressions], v10 > 0.0))
  {
    [v4 impressions];
    [v7 impressions];
    [v7 impressions];
    sub_1C6D798D0();
    v12 = v11;
    [v4 clicks];
    [v7 clicks];
    [v7 impressions];
    sub_1C6D798D0();
    v14 = v13;
    if (!a3)
    {
      goto LABEL_17;
    }

    v7 = a3;
    if (![v7 capAtBaseline])
    {

      goto LABEL_17;
    }

    if (qword_1EDCE7498 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      sub_1C6D79A90();
      sub_1C6B1D314();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C6D7E630;
      v16 = [v4 featureKey];
      if (v16)
      {
        v17 = v16;
        sub_1C6D795A0();
      }

      sub_1C6B95D68();
      v18 = sub_1C6D795F0();
      MEMORY[0x1CCA55B00](v18);

      v19 = MEMORY[0x1E69E6158];
      *(v15 + 56) = MEMORY[0x1E69E6158];
      v20 = sub_1C6B2064C();
      *(v15 + 64) = v20;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0xE000000000000000;
      sub_1C6D78D30();

      v21 = 0.0;
      if (v12 > 0.0)
      {
        v22 = v14 / v12;
        if (v14 / v12 <= 0.0)
        {
          v22 = 0.0;
        }

        v21 = 1.0;
        if (v22 <= 1.0)
        {
          v21 = v22;
        }
      }

      [a2 ctr];
      if (v23 < v21)
      {
        v14 = v12 * v23;
      }

      a2 = sub_1C6D79A90();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C6D807C0;
      sub_1C6D79910();
      *(v24 + 56) = v19;
      *(v24 + 64) = v20;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0xE000000000000000;
      sub_1C6D79910();
      *(v24 + 96) = v19;
      *(v24 + 104) = v20;
      *(v24 + 72) = 0;
      *(v24 + 80) = 0xE000000000000000;
      sub_1C6D79910();
      *(v24 + 136) = v19;
      *(v24 + 144) = v20;
      *(v24 + 112) = 0;
      *(v24 + 120) = 0xE000000000000000;
      sub_1C6D78D30();

LABEL_17:
      [v4 setClicks_];
      [v4 setImpressions_];
      v25 = [v4 eventCount];
      if (v25 != -1)
      {
        break;
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

    return [v4 setEventCount_];
  }

  return result;
}

void sub_1C6BA012C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v46[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1C6D79470();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D75B30();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1C6D79460();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1C864();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = objc_opt_self();
  v13 = a1;
  v14 = [v13 dictionary];
  sub_1C6D79490();

  v15 = sub_1C6D79480();

  v46[0] = 0;
  v16 = [v12 dataWithJSONObject:v15 options:2 error:v46];

  v17 = v46[0];
  if (v16)
  {
    v18 = sub_1C6D75E60();
    v20 = v19;

    v21 = sub_1C6D75B70();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1C6D75B60();
    sub_1C6D75B20();
    sub_1C6D75B40();
    v46[0] = v18;
    v46[1] = v20;
    sub_1C6B1CCBC();
    v24 = v45;
    v25 = sub_1C6D75B50();
    v27 = v26;

    if (!v24)
    {
      sub_1C6B1C9F0(v18, v20);

      v45 = sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620]);
      v29 = v41;
      v30 = v43;
      sub_1C6D79450();
      sub_1C6B1CD10(v25, v27);
      sub_1C6B1CD64(v25, v27);
      sub_1C6B1C9F0(v25, v27);
      v31 = v38;
      sub_1C6D79440();
      sub_1C6B1C9F0(v25, v27);
      (*(v42 + 8))(v29, v30);
      v32 = sub_1C6B1D0FC();
      v34 = v33;
      (*(v39 + 8))(v31, v40);
      v35 = v44;
      *v44 = v32;
      v35[1] = v34;
      v35[2] = v11;
      v35[3] = v13;
      goto LABEL_7;
    }

    sub_1C6B1C9F0(v18, v20);
  }

  else
  {
    v28 = v17;
    sub_1C6D75CC0();

    swift_willThrow();
  }

LABEL_7:
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t ComputeServiceConfiguration.version.getter()
{
  v1 = [*(v0 + 24) version];
  v2 = sub_1C6D795A0();

  return v2;
}

uint64_t ComputeServiceConfiguration.humanReadableIdentifier.getter()
{
  v1 = [*(v0 + 24) version];
  v2 = sub_1C6D795A0();

  return v2;
}

uint64_t ComputeServiceConfiguration.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ComputeServiceConfiguration.packageIDs.getter()
{
  v1 = [*(v0 + 24) packageAssetIDs];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C6D79780();

  return v3;
}

uint64_t ComputeServiceConfiguration.computeUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 24) mlComputeUnits];
  v4 = sub_1C6D78420();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x1E69960A0];
  }

  else
  {
    v6 = qword_1E8296F00[(v3 - 1)];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

id ComputeServiceConfiguration.graphUnloadIdleDuration.getter()
{
  v1 = [*(v0 + 24) unloadGraphOnBackgroundConfiguration];
  v2 = [v1 graphIdleDuration];

  return v2;
}

double ComputeServiceConfiguration.init(with:)@<D0>(uint64_t a1@<X8>)
{
  v3 = objc_allocWithZone(MEMORY[0x1E69B53E8]);
  v4 = sub_1C6D79480();

  v5 = [v3 initWithDictionary_];

  sub_1C6BA012C(v5, &v8);
  if (!v1)
  {
    v7 = v10;
    *a1 = v8;
    result = *&v9;
    *(a1 + 8) = v9;
    *(a1 + 24) = v7;
  }

  return result;
}

id ComputeServiceConfiguration.isIdentical(to:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = [*(v1 + 24) dictionary];
  if (result)
  {
    v4 = result;
    v5 = [v2 dictionary];
    sub_1C6D79490();

    v6 = sub_1C6D79480();

    v7 = [v4 isEqualToDictionary_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6BA0958()
{
  v1 = [*(v0 + 24) packageAssetIDs];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C6D79780();

  return v3;
}

uint64_t sub_1C6BA09B8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 24) mlComputeUnits];
  v4 = sub_1C6D78420();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x1E69960A0];
  }

  else
  {
    v6 = qword_1E8296F00[(v3 - 1)];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1C6BA0A5C()
{
  v1 = [*(v0 + 24) version];
  v2 = sub_1C6D795A0();

  return v2;
}

uint64_t sub_1C6BA0AB4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Digest.hex.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_1C6D796D0();
  sub_1C6BA0C44(0, &qword_1EDCE7F50, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
  sub_1C6B1D900();
  return sub_1C6D79660();
}

uint64_t sub_1C6BA0B6C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1C6B1D314();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7508];
  *(v4 + 16) = xmmword_1C6D7E630;
  v6 = MEMORY[0x1E69E7558];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_1C6D795C0();
  *a2 = result;
  a2[1] = v8;
  return result;
}

unint64_t sub_1C6BA0BF0()
{
  result = qword_1EC1D71B8;
  if (!qword_1EC1D71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D71B8);
  }

  return result;
}

void sub_1C6BA0C44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C6BA0C98()
{
  result = qword_1EDCE8F68;
  if (!qword_1EDCE8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F68);
  }

  return result;
}

uint64_t sub_1C6BA0CEC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C6BA0D60()
{
  result = qword_1EC1D71C0;
  if (!qword_1EC1D71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D71C0);
  }

  return result;
}

void sub_1C6BA0DB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v106 = a3;
  v110 = a2;
  v98 = sub_1C6D76950();
  v96 = *(v98 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1C6D768B0();
  v107 = *(v103 - 8);
  v9 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D775C0();
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = *(v99 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v108 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v92 - v15;
  v104 = sub_1C6D77C10();
  v112 = *(v104 - 8);
  v16 = *(v112 + 64);
  v17 = MEMORY[0x1EEE9AC00](v104);
  v105 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v92 - v19;
  v111 = sub_1C6D77880();
  v101 = *(v111 - 8);
  v21 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v117 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA1AC0();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C6D77290();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  (*(v32 + 16))(&v92 - v31, a1, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = sub_1C6D76F90();
    (*(*(v38 - 8) + 56))(a4, 1, 1, v38);
    return;
  }

  v95 = a4;
  (*(v25 + 8))(v28, v24);
  v33 = sub_1C6D77270();
  v34 = sub_1C6D77330();
  v36 = v35;

  if (v4)
  {
    return;
  }

  sub_1C6BA1B54(&qword_1EC1D6A30, MEMORY[0x1E69B47B0]);
  v37 = v111;
  sub_1C6D75AF0();
  v110 = 0;
  v93 = v34;
  sub_1C6D77840();
  sub_1C6D77BF0();
  v39 = *(v112 + 8);
  v40 = v104;
  v112 += 8;
  v94 = v39;
  v39(v20, v104);
  v42 = v99;
  v41 = v100;
  (*(v99 + 104))(v108, *MEMORY[0x1E69B4640], v100);
  sub_1C6BA1B54(&qword_1EC1D71C8, MEMORY[0x1E69B4648]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v115 == v113 && v116 == v114)
  {
    v43 = *(v42 + 8);
    v43(v108, v41);
    v43(v109, v41);

    v44 = v105;
  }

  else
  {
    v45 = sub_1C6D7A130();
    v46 = *(v42 + 8);
    v46(v108, v41);
    v46(v109, v41);

    v47 = v95;
    v44 = v105;
    if ((v45 & 1) == 0)
    {
      (*(v101 + 8))(v117, v37);
      sub_1C6B1C9F0(v93, v36);
      v77 = sub_1C6D76F90();
      (*(*(v77 - 8) + 56))(v47, 1, 1, v77);
      return;
    }
  }

  v109 = v36;
  v48 = v117;
  sub_1C6D77840();
  v49 = sub_1C6D77C00();
  v94(v44, v40);
  v50 = v102;
  sub_1C6D76A00();
  v51 = sub_1C6D768A0();
  v52 = v50;
  v53 = *(v107 + 8);
  v107 += 8;
  v53(v52, v103);
  if (v51 >= v49)
  {
    if (qword_1EDCE03B8 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1C6D7EB10;
    v66 = v105;
    sub_1C6D77840();
    v67 = sub_1C6D77C00();
    v94(v66, v40);
    v115 = v67;
    v68 = sub_1C6D7A0E0();
    v70 = v69;
    v71 = MEMORY[0x1E69E6158];
    *(v65 + 56) = MEMORY[0x1E69E6158];
    v72 = sub_1C6B2064C();
    *(v65 + 64) = v72;
    *(v65 + 32) = v68;
    *(v65 + 40) = v70;
    v73 = v102;
    sub_1C6D76A00();
    v74 = sub_1C6D768A0();
    v53(v73, v103);
    v115 = v74;
    v75 = sub_1C6D7A0E0();
    *(v65 + 96) = v71;
    *(v65 + 104) = v72;
    *(v65 + 72) = v75;
    *(v65 + 80) = v76;
    sub_1C6D79AC0();
    sub_1C6D78D30();
    sub_1C6B1C9F0(v93, v109);

    (*(v101 + 8))(v48, v111);
  }

  else
  {
    sub_1C6D77840();
    v54 = sub_1C6D77C00();
    v55 = v94;
    v94(v44, v40);
    v56 = v97;
    sub_1C6D76A20();
    v57 = sub_1C6D768A0();
    v58 = *(v96 + 8);
    v58(v56, v98);
    if (v54 < v57)
    {
      v59 = v95;
      v95[3] = v37;
      v60 = MEMORY[0x1E69B47B0];
      v59[4] = sub_1C6BA1B54(&qword_1EC1D71D0, MEMORY[0x1E69B47B0]);
      v59[5] = sub_1C6BA1B54(&qword_1EC1D71D8, v60);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v59);
      (*(v101 + 32))(boxed_opaque_existential_2, v48, v37);
      sub_1C6B1C9F0(v93, v109);
      v62 = *MEMORY[0x1E69E3608];
      v63 = sub_1C6D76F90();
      v64 = *(v63 - 8);
      (*(v64 + 104))(v59, v62, v63);
      (*(v64 + 56))(v59, 0, 1, v63);
      return;
    }

    v78 = v109;
    if (qword_1EDCE03B8 != -1)
    {
      swift_once();
    }

    v108 = qword_1EDCE03C0;
    sub_1C6B1D314();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1C6D7EB10;
    v80 = v105;
    sub_1C6D77840();
    v81 = sub_1C6D77C00();
    v55(v80, v104);
    v115 = v81;
    v82 = sub_1C6D7A0E0();
    v84 = v83;
    v85 = MEMORY[0x1E69E6158];
    *(v79 + 56) = MEMORY[0x1E69E6158];
    v86 = sub_1C6B2064C();
    *(v79 + 64) = v86;
    *(v79 + 32) = v82;
    *(v79 + 40) = v84;
    v87 = v97;
    sub_1C6D76A20();
    v88 = sub_1C6D768A0();
    v58(v87, v98);
    v115 = v88;
    v89 = sub_1C6D7A0E0();
    *(v79 + 96) = v85;
    *(v79 + 104) = v86;
    *(v79 + 72) = v89;
    *(v79 + 80) = v90;
    sub_1C6D79AC0();
    sub_1C6D78D30();
    sub_1C6B1C9F0(v93, v78);

    (*(v101 + 8))(v48, v111);
  }

  v91 = sub_1C6D76F90();
  (*(*(v91 - 8) + 56))(v95, 1, 1, v91);
}

void sub_1C6BA1AC0()
{
  if (!qword_1EDCE6098)
  {
    sub_1C6D77890();
    sub_1C6BA1B54(&qword_1EDCE5F40, MEMORY[0x1E69B47C8]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6098);
    }
  }
}

uint64_t sub_1C6BA1B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore()
{
  result = qword_1EDCE4E60;
  if (!qword_1EDCE4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BA1E08()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D71E0);
  __swift_project_value_buffer(v0, qword_1EC1D71E0);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "tag_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagIgnore._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5970 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D71E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagIgnore.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore() + 20);
  sub_1C6D78A40();
  sub_1C6BA26AC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
  sub_1C6BA26AC(&qword_1EC1D71F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA229C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA26AC(&qword_1EC1D7218, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA2318@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5970 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D71E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA23C0(uint64_t a1)
{
  v2 = sub_1C6BA26AC(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA242C()
{
  sub_1C6BA26AC(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);

  return sub_1C6D78C20();
}

uint64_t sub_1C6BA25C8(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6BA26AC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6BA26AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 24);
  sub_1C6BA28D4(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed()
{
  result = qword_1EDCE3B00;
  if (!qword_1EDCE3B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.recipe.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 20);
  sub_1C6BA28D4(v1 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6BA28D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BA57E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BA2944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.recipe.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(v1 + *(v7 + 20), v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BA2944(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = &a1[*(v8 + 20)];
  sub_1C6D78A30();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BA28D4(v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA2B68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(a1 + *(v8 + 20), v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BA2944(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = &a2[*(v9 + 20)];
  sub_1C6D78A30();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA2D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA31F8(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 20);
  sub_1C6BA28D4(a2 + v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.recipe.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 20);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = &v15[*(v10 + 20)];
    sub_1C6D78A30();
    v19 = *(v10 + 24);
    v20 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
    (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    }
  }

  else
  {
    sub_1C6BA2944(v9, v15);
  }

  return sub_1C6BA30C8;
}

void sub_1C6BA30C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6BA31F8((*a1)[5], v4);
    sub_1C6BA28D4(v9 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    sub_1C6BA2944(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6BA325C(v5);
  }

  else
  {
    sub_1C6BA28D4(v9 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    sub_1C6BA2944(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6BA31F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BA325C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.hasRecipe.getter()
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(v0 + *(v5 + 20), v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BA28D4(v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.clearRecipe()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 20);
  sub_1C6BA28D4(v0 + v1, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA35FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BA57E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BA367C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BA28D4(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA3814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 24);
  sub_1C6BA28D4(a2 + v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 24);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BA3B9C;
}

void sub_1C6BA3B9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BA28D4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BA28D4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BA28D4(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 24);
  sub_1C6BA28D4(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6BA40A4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7220);
  __swift_project_value_buffer(v0, qword_1EC1D7220);
  sub_1C6BA57E8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "recipe";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5978 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7220);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BA43C0();
    }

    else if (result == 2)
    {
      sub_1C6BA4474();
    }
  }

  return result;
}

uint64_t sub_1C6BA43C0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  sub_1C6BA57A0(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BA4474()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed() + 24);
  sub_1C6D78A00();
  sub_1C6BA57A0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BA4598(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BA47BC(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BA4598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(a1 + *(v14 + 20), v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BA28D4(v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  sub_1C6BA2944(v8, v13);
  sub_1C6BA57A0(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D78CF0();
  return sub_1C6BA325C(v13);
}

uint64_t sub_1C6BA47BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA35FC(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BA57A0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  sub_1C6BA57A0(&qword_1EC1D7238, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA4A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BA4BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA57A0(&qword_1EC1D7250, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA4C20@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5978 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7220);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA4CC8(uint64_t a1)
{
  v2 = sub_1C6BA57A0(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA4D34()
{
  sub_1C6BA57A0(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B33_RecipeSessionEventCookModeViewedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v52 - v9;
  sub_1C6BA56CC(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v52 - v20);
  sub_1C6BA56CC(0, &qword_1EC1D7258, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6BA35FC(v59 + v28, v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6BA35FC(v30, &v26[v29], qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BA35FC(v26, v21, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6BA2944(&v26[v29], v17);
      v37 = static Com_Apple_News_Personalization_SessionRecipe.== infix(_:_:)(v21, v17);
      sub_1C6BA325C(v17);
      sub_1C6BA325C(v21);
      sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6BA325C(v21);
LABEL_6:
    v33 = &qword_1EC1D7258;
    v34 = qword_1EDCE5428;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe;
    v36 = v26;
LABEL_14:
    sub_1C6BA5744(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6BA35FC(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6BA35FC(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BA57A0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6BA35FC(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6BA57A0(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6BA55D0()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6BA57E8(319, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6BA57E8(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6BA56CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BA57E8(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BA5744(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BA56CC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BA57A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6BA57E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.recipe.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  sub_1C6BA592C(v1 + v3);
  sub_1C6BA2944(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved()
{
  result = qword_1EDCE2A40;
  if (!qword_1EDCE2A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BA592C(uint64_t a1)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.recipe.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  sub_1C6BA5B4C(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BA2944(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = &a1[*(v8 + 20)];
  sub_1C6D78A30();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BA592C(v6);
  }

  return result;
}

uint64_t sub_1C6BA5B4C(uint64_t a1, uint64_t a2)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BA5BE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  sub_1C6BA5B4C(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BA2944(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = &a2[*(v9 + 20)];
  sub_1C6D78A30();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA592C(v7);
  }

  return result;
}

uint64_t sub_1C6BA5D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA31F8(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  sub_1C6BA592C(a2 + v9);
  sub_1C6BA2944(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.recipe.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  *(v5 + 12) = v16;
  sub_1C6BA5B4C(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = &v15[*(v10 + 20)];
    sub_1C6D78A30();
    v19 = *(v10 + 24);
    v20 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
    (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA592C(v9);
    }
  }

  else
  {
    sub_1C6BA2944(v9, v15);
  }

  return sub_1C6BA60C0;
}

void sub_1C6BA60C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6BA31F8((*a1)[5], v4);
    sub_1C6BA592C(v9 + v3);
    sub_1C6BA2944(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6BA61CC(v5, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  else
  {
    sub_1C6BA592C(v9 + v3);
    sub_1C6BA2944(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6BA61CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.hasRecipe.getter()
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  sub_1C6BA5B4C(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BA592C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.clearRecipe()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  sub_1C6BA592C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1C6BA6528()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7260);
  __swift_project_value_buffer(v0, qword_1EC1D7260);
  sub_1C6BA7420(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "recipe";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5980 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BA67C8();
    }
  }

  return result;
}

uint64_t sub_1C6BA67C8()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  sub_1C6BA73D8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.traverse<A>(visitor:)()
{
  result = sub_1C6BA68D4(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BA68D4(uint64_t a1)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  sub_1C6BA5B4C(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6BA592C(v5);
  }

  sub_1C6BA2944(v5, v10);
  sub_1C6BA73D8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D78CF0();
  return sub_1C6BA61CC(v10, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  sub_1C6BA73D8(&qword_1EC1D7278, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA6B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6BA6C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA73D8(&qword_1EC1D7290, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA6CA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5980 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA6D50(uint64_t a1)
{
  v2 = sub_1C6BA73D8(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA6DBC()
{
  sub_1C6BA73D8(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE5SavedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v24 - v11);
  sub_1C6BA7344();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  v19 = *(v14 + 56);
  sub_1C6BA5B4C(a1 + v18, v17);
  sub_1C6BA5B4C(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6BA592C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6BA73D8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6BA5B4C(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6BA61CC(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
LABEL_6:
    sub_1C6BA61CC(v17, sub_1C6BA7344);
    goto LABEL_7;
  }

  sub_1C6BA2944(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionRecipe.== infix(_:_:)(v12, v8);
  sub_1C6BA61CC(v8, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA61CC(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA592C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6BA7290()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6BA7420(319, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6BA7344()
{
  if (!qword_1EC1D7258)
  {
    sub_1C6BA7420(255, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7258);
    }
  }
}

uint64_t sub_1C6BA73D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6BA7420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 24);
  sub_1C6BA28D4(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed()
{
  result = qword_1EDCE29B0;
  if (!qword_1EDCE29B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.recipe.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 20);
  sub_1C6BA28D4(v1 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.recipe.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(v1 + *(v7 + 20), v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BA2944(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = &a1[*(v8 + 20)];
  sub_1C6D78A30();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BA28D4(v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA7824@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(a1 + *(v8 + 20), v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BA2944(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = &a2[*(v9 + 20)];
  sub_1C6D78A30();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA79E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA31F8(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 20);
  sub_1C6BA28D4(a2 + v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.recipe.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 20);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = &v15[*(v10 + 20)];
    sub_1C6D78A30();
    v19 = *(v10 + 24);
    v20 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
    (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    }
  }

  else
  {
    sub_1C6BA2944(v9, v15);
  }

  return sub_1C6BA30C8;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.hasRecipe.getter()
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(v0 + *(v5 + 20), v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BA28D4(v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.clearRecipe()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 20);
  sub_1C6BA28D4(v0 + v1, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA80C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BA28D4(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA8260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 24);
  sub_1C6BA28D4(a2 + v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 24);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BA3B9C;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BA28D4(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 24);
  sub_1C6BA28D4(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6BA8970()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7298);
  __swift_project_value_buffer(v0, qword_1EC1D7298);
  sub_1C6BA57E8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "recipe";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5988 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BA8C8C();
    }

    else if (result == 2)
    {
      sub_1C6BA8D40();
    }
  }

  return result;
}

uint64_t sub_1C6BA8C8C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  sub_1C6BA9DD8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BA8D40()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed() + 24);
  sub_1C6D78A00();
  sub_1C6BA9DD8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BA8E64(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BA9088(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BA8E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(a1 + *(v14 + 20), v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BA28D4(v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  sub_1C6BA2944(v8, v13);
  sub_1C6BA9DD8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D78CF0();
  return sub_1C6BA325C(v13);
}

uint64_t sub_1C6BA9088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA35FC(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BA9DD8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  sub_1C6BA9DD8(&qword_1EC1D72B0, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA93AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA9DD8(&qword_1EC1D72C8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA9428@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5988 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA94D0(uint64_t a1)
{
  v2 = sub_1C6BA9DD8(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA953C()
{
  sub_1C6BA9DD8(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE6ViewedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v52 - v9;
  sub_1C6BA56CC(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v52 - v20);
  sub_1C6BA56CC(0, &qword_1EC1D7258, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6BA35FC(v59 + v28, v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6BA35FC(v30, &v26[v29], qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BA35FC(v26, v21, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6BA2944(&v26[v29], v17);
      v37 = static Com_Apple_News_Personalization_SessionRecipe.== infix(_:_:)(v21, v17);
      sub_1C6BA325C(v17);
      sub_1C6BA325C(v21);
      sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6BA325C(v21);
LABEL_6:
    v33 = &qword_1EC1D7258;
    v34 = qword_1EDCE5428;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe;
    v36 = v26;
LABEL_14:
    sub_1C6BA5744(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6BA35FC(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6BA35FC(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BA9DD8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6BA35FC(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6BA9DD8(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_1C6BA9DD8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1C6BA9E64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 217))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 216);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C6BA9EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 216) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C6BA9F44(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C6D78760();
  v98 = *(v6 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BAAE9C(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v84 - v17;
  v97 = sub_1C6D783E0();
  v96 = *(v97 - 8);
  v18 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v84 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v84 - v26;
  v28 = *(v2 + 16);
  v29 = [a2 fullBodyEmbeddingDimension];
  v30 = [a2 maxSessionEvents];
  v31 = [a2 maxTopicIds];
  v32 = [a2 titleEmbeddingDimension];
  sub_1C6B9F730([a2 eventConditions], &v104);
  v103[0] = v29;
  v103[1] = v30;
  v103[2] = v31;
  v103[3] = v32;
  v100 = a1;
  v95 = sub_1C6B9A0A0(a1, v103, 0, 0);
  v33 = sub_1C6BAA970(v3);
  v87 = "subscriptionController";
  *&v92 = v27;
  sub_1C6D783C0();
  v34 = v33[2];
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v85 = v6;
    v101 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v34, 0);
    v36 = v101;
    v37 = v33 + 5;
    v38 = v34;
    do
    {
      v39 = *(v37 - 1);
      v40 = *v37;
      v101 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);

      if (v42 >= v41 >> 1)
      {
        sub_1C6B39280((v41 > 1), v42 + 1, 1);
        v36 = v101;
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      v37 += 3;
      --v38;
    }

    while (v38);
    v6 = v85;
    v44 = v98;
    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v44 = v98;
  }

  v45 = v93;
  sub_1C6D78740();
  v46 = *(v44 + 56);
  v46(v45, 0, 1, v6);
  sub_1C6D78830();
  v93 = "sessionEvent.followedTags";
  sub_1C6D783C0();
  if (v34)
  {
    v47 = v6;
    v101 = v35;
    sub_1C6B3922C(0, v34, 0);
    v48 = v101;
    v49 = *(v101 + 16);
    v50 = 6;
    do
    {
      v51 = v33[v50];
      v101 = v48;
      v52 = *(v48 + 24);
      if (v49 >= v52 >> 1)
      {
        sub_1C6B3922C((v52 > 1), v49 + 1, 1);
        v48 = v101;
      }

      *(v48 + 16) = v49 + 1;
      *(v48 + 4 * v49 + 32) = v51;
      v50 += 3;
      ++v49;
      --v34;
    }

    while (v34);

    v6 = v47;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  v53 = v94;
  *v94 = v48;
  (*(v44 + 104))(v53, *MEMORY[0x1E6996138], v6);
  v46(v53, 0, 1, v6);
  sub_1C6D78830();
  sub_1C6D77FA0();
  v54 = sub_1C6D77F90();
  v55 = v96;
  if (v54)
  {
    if (qword_1EDCE96C8 != -1)
    {
      swift_once();
    }

    v99 = qword_1EDCE96D0;
    sub_1C6BAAE9C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v94 = v56;
    v57 = swift_allocObject();
    v92 = xmmword_1C6D7E630;
    *(v57 + 16) = xmmword_1C6D7E630;
    v101 = 0;
    v102 = 0xE000000000000000;
    v58 = v88;
    sub_1C6D783C0();
    v59 = v89;
    sub_1C6D78820();
    v60 = *(v55 + 8);
    v60(v58, v97);
    v61 = v44;
    v62 = *(v44 + 48);
    if (v62(v59, 1, v6))
    {
      sub_1C6BAAF00(v59);
      v63 = 0x80000001C6D9C630;
      v64 = 0xD000000000000019;
    }

    else
    {
      v65 = v86;
      (*(v61 + 16))(v86, v59, v6);
      sub_1C6BAAF00(v59);
      v66 = sub_1C6D78750();
      v63 = v67;
      (*(v61 + 8))(v65, v6);
      v64 = v66;
    }

    v68 = v6;
    MEMORY[0x1CCA55B00](v64, v63);

    v69 = v101;
    v70 = v102;
    *(v57 + 56) = MEMORY[0x1E69E6158];
    v71 = sub_1C6B2064C();
    *(v57 + 64) = v71;
    *(v57 + 32) = v69;
    *(v57 + 40) = v70;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v72 = swift_allocObject();
    *(v72 + 16) = v92;
    v101 = 0;
    v102 = 0xE000000000000000;
    v73 = v90;
    sub_1C6D783C0();
    v74 = v91;
    sub_1C6D78820();
    v60(v73, v97);
    if (v62(v74, 1, v68))
    {
      sub_1C6BAAF00(v74);
      v75 = 0x80000001C6D9C630;
      v76 = 0xD000000000000019;
    }

    else
    {
      v77 = v98;
      v78 = v86;
      (*(v98 + 16))(v86, v74, v68);
      sub_1C6BAAF00(v74);
      v79 = sub_1C6D78750();
      v75 = v80;
      (*(v77 + 8))(v78, v68);
      v76 = v79;
    }

    MEMORY[0x1CCA55B00](v76, v75);

    v81 = v101;
    v82 = v102;
    *(v72 + 56) = MEMORY[0x1E69E6158];
    *(v72 + 64) = v71;
    *(v72 + 32) = v81;
    *(v72 + 40) = v82;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return v95;
}

void *sub_1C6BAA970(uint64_t a1)
{
  v2 = sub_1C6D75F50();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 subscriptionsWithType_];
    if (v12)
    {
      v13 = v12;
      sub_1C6BAAF8C();
      v14 = sub_1C6D79780();

      if (v14 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
      {
        v38 = v9;
        v39 = v6;
        v41 = v11;
        v16 = 0;
        v44 = v14 & 0xFFFFFFFFFFFFFF8;
        v45 = v14 & 0xC000000000000001;
        v36 = (v3 + 1);
        v37 = (v3 + 4);
        v43 = xmmword_1C6D7E630;
        v42 = MEMORY[0x1E69E7CC0];
        v40 = v2;
LABEL_6:
        v2 = v16;
        while (1)
        {
          if (v45)
          {
            v17 = MEMORY[0x1CCA56240](v2, v14);
          }

          else
          {
            if (v2 >= *(v44 + 16))
            {
              goto LABEL_31;
            }

            v17 = *(v14 + 8 * v2 + 32);
          }

          v3 = v17;
          v16 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          v18 = [v17 tagID];
          if (v18)
          {
            v19 = v18;
            v6 = sub_1C6D795A0();
            v21 = v20;

            v22 = [v3 dateAdded];
            if (v22)
            {
              v23 = v39;
              v24 = v22;
              sub_1C6D75F20();

              v25 = v38;
              v26 = v23;
              v27 = v40;
              (*v37)(v38, v26, v40);
              sub_1C6D75F10();
              v29 = v28;
              (*v36)(v25, v27);

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v30 = v42;
              }

              else
              {
                v30 = sub_1C6B65E60(0, v42[2] + 1, 1, v42);
              }

              v11 = v30[2];
              v31 = v30[3];
              v3 = (v11 + 1);
              if (v11 >= v31 >> 1)
              {
                v30 = sub_1C6B65E60((v31 > 1), v11 + 1, 1, v30);
              }

              v32 = v29;
              v30[2] = v3;
              v42 = v30;
              v33 = &v30[3 * v11];
              *(v33 + 4) = v6;
              *(v33 + 5) = v21;
              v33[12] = v32;
              if (v16 == i)
              {
LABEL_28:

                return v42;
              }

              goto LABEL_6;
            }

            if (qword_1EDCE96C8 != -1)
            {
              swift_once();
            }

            v11 = qword_1EDCE96D0;
            sub_1C6D79AA0();
            sub_1C6BAAE9C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
            v9 = swift_allocObject();
            *(v9 + 1) = v43;
            *(v9 + 7) = MEMORY[0x1E69E6158];
            *(v9 + 8) = sub_1C6B2064C();
            *(v9 + 4) = v6;
            *(v9 + 5) = v21;
            sub_1C6D78D30();
          }

          else
          {
            if (qword_1EDCE96C8 != -1)
            {
              swift_once();
            }

            v11 = qword_1EDCE96D0;
            sub_1C6D79AA0();
            sub_1C6D78D30();
          }

          ++v2;
          if (v16 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }
    }

    else
    {
    }
  }

  return &unk_1F4671770;
}

uint64_t ArticleEventFeaturesProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ArticleEventFeaturesProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1C6BAAE9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6BAAF00(uint64_t a1)
{
  sub_1C6BAAE9C(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6BAAF8C()
{
  result = qword_1EDCDF8E0;
  if (!qword_1EDCDF8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCDF8E0);
  }

  return result;
}

id FCPersonalizationData.createAggregate(for:clicks:impressions:)(double a1, double a2)
{
  v5 = sub_1C6D79570();
  v6 = [v2 createAggregateWith:v5 clicks:a1 impressions:a2];

  return v6;
}

uint64_t FCPersonalizationData.update(with:option:updateBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6BAB388();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D79950();
  (*(v10 + 16))(v12, a2, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v12, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1C6BABCD0;
  *(v16 + 24) = v15;
  v28 = sub_1C6BAB430;
  v29 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C6BAB458;
  v27 = &block_descriptor;
  v17 = _Block_copy(&aBlock);

  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1C6BAB4B4;
  *(v19 + 24) = v18;
  v28 = sub_1C6BAB504;
  v29 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C6BAB52C;
  v27 = &block_descriptor_12;
  v20 = _Block_copy(&aBlock);

  [v4 updateAggregatesWith:v13 creationBlock:v17 updateBlock:v20];
  _Block_release(v17);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_5;
  }

  v23 = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1C6BAB388()
{
  if (!qword_1EDCEA830)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA4D0, 0x1E69B6EE8);
    sub_1C6B0C790(&qword_1EDCEA4E0, &qword_1EDCEA4D0, 0x1E69B6EE8);
    v0 = sub_1C6D76200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA830);
    }
  }
}

uint64_t sub_1C6BAB430()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1C6BAB458(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1C6D795A0();
  v4 = v2(v3);

  return v4;
}

void sub_1C6BAB4B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v4 = a1;
  v2(&v6);
  v5 = v6;
}

uint64_t sub_1C6BAB504()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1C6BAB52C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t FCPersonalizationData.lookupAll()()
{
  v1 = [v0 allAggregates];
  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v2 = sub_1C6D79490();

  return v2;
}

uint64_t FCPersonalizationData.lookup(with:option:)(uint64_t a1, uint64_t a2)
{
  sub_1C6BAB388();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = sub_1C6D79950();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C6BABA88;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1C6BABCC4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6BAB458;
  aBlock[3] = &block_descriptor_22;
  v12 = _Block_copy(aBlock);

  v13 = [v2 lookupAggregatesWith:v8 creationBlock:v12];
  _Block_release(v12);

  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v14 = sub_1C6D79490();

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BAB884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BAB388();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a3, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x1E69E3220])
  {
    (*(v8 + 96))(v11, v7);
    v13 = *(v11 + 1);
    (*v11)(&v16, a1, a2);

    return v16;
  }

  else
  {
    if (v12 != *MEMORY[0x1E69E3228])
    {
      (*(v8 + 8))(v11, v7);
    }

    return 0;
  }
}

uint64_t objectdestroyTm()
{
  sub_1C6BAB388();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1C6BABB00(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  v8 = sub_1C6D79570();
  v9 = [v7 createAggregateWith:v8 clicks:a2 impressions:a3];

  *a1 = v9;
}

uint64_t sub_1C6BABBFC()
{
  v1 = [*v0 allAggregates];
  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v2 = sub_1C6D79490();

  return v2;
}

uint64_t ArticleUndislikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleUndislikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4590], v0);
  sub_1C6BAD140(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleUndislikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B4810], v0);
  sub_1C6BAD140(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleUndislikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CB0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUndislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6BAC43C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6BAC548(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77CA0();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleUndislikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CC0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUndislikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CE0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUndislikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CD0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6BACE80(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77CA0();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleUndislikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77CE0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6BAD140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6BAD1E0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6BAD2E0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CB0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUndislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6BAD430(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77CA0();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6BAD550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6BAD658(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77CA0();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6BAD744()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77CE0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.vendedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(v1 + *(v8 + 20), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended()
{
  result = qword_1EDCE3D00;
  if (!qword_1EDCE3D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BADA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(a1 + *(v9 + 20), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6BADC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 20);
  sub_1C6BAE5E8(a2 + v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.vendedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 20);
  sub_1C6BAE5E8(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventNotificationVended.vendedAt.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 20);
  *(v5 + 12) = v16;
  sub_1C6BAE568(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BAE5E8(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BAE078;
}

void sub_1C6BAE078(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventNotificationVended.hasVendedAt.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(v0 + *(v6 + 20), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BAE5E8(v5, &qword_1EDCE66F0, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventNotificationVended.clearVendedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 20);
  sub_1C6BAE5E8(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(v1 + *(v7 + 24), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6BAE568(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BB0874(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BAE5E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BB0874(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BAE658@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(a1 + *(v8 + 24), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6BAE81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 24);
  sub_1C6BAE5E8(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 24);
  sub_1C6BAE5E8(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventNotificationVended.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 24);
  *(v5 + 12) = v16;
  sub_1C6BAE568(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BAE5E8(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6BAEC68;
}

void sub_1C6BAEC68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventNotificationVended.hasArticle.getter()
{
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(v0 + *(v5 + 24), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BAE5E8(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventNotificationVended.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 24);
  sub_1C6BAE5E8(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v3 = *(v2 + 20);
  v4 = sub_1C6D789A0();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6BAF120()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D72D8);
  __swift_project_value_buffer(v0, qword_1EC1D72D8);
  sub_1C6BB0874(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "vended_at";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "article";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventNotificationVended._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D72D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BAF444();
    }

    else if (result == 2)
    {
      sub_1C6BAF4F8();
    }
  }

  return result;
}

uint64_t sub_1C6BAF444()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 20);
  sub_1C6D789A0();
  sub_1C6BB082C(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BAF4F8()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended() + 24);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6BB082C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BAF61C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BAF868(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BAF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(a1 + *(v15 + 20), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BAE5E8(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BB082C(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6BAF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BAE568(a1 + *(v14 + 24), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BAE5E8(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6BB082C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  sub_1C6BB082C(&qword_1EC1D72F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BAFB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = sub_1C6D789A0();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BAFC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BB082C(&qword_1EC1D7310, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BAFCA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D72D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BAFD4C(uint64_t a1)
{
  v2 = sub_1C6BB082C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BAFDB8()
{
  sub_1C6BB082C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B31_SessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v50 - v9;
  sub_1C6BB0758(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v50 - v20;
  sub_1C6BB0758(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v17);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  v58 = a1;
  sub_1C6BAE568(a1 + v28, v26, &qword_1EDCE66F0, v17);
  v30 = v59 + v28;
  v31 = v59;
  sub_1C6BAE568(v30, &v26[v29], &qword_1EDCE66F0, v17);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BAE568(v26, v21, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      v37 = v53;
      (*(v14 + 32))(v53, &v26[v29], v13);
      sub_1C6BB082C(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v38 = sub_1C6D79560();
      v39 = *(v14 + 8);
      v39(v37, v13);
      v39(v21, v13);
      sub_1C6BAE5E8(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v38 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v21, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v26;
LABEL_14:
    sub_1C6BB07D0(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BAE5E8(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v40 = *(v27 + 24);
  v41 = v55;
  v42 = *(v54 + 48);
  sub_1C6BAE568(v58 + v40, v55, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6BAE568(v31 + v40, v41 + v42, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v43 = v57;
  v44 = *(v56 + 48);
  if (v44(v41, 1, v57) == 1)
  {
    if (v44(v41 + v42, 1, v43) == 1)
    {
      sub_1C6BAE5E8(v41, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BB082C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v52;
  sub_1C6BAE568(v41, v52, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v44(v41 + v42, 1, v43) == 1)
  {
    sub_1C6B7F770(v45);
LABEL_13:
    v33 = &qword_1EC1D69F0;
    v34 = &qword_1EDCE52B0;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v36 = v41;
    goto LABEL_14;
  }

  v48 = v51;
  sub_1C6B483C8(v41 + v42, v51);
  v49 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v45, v48);
  sub_1C6B7F770(v48);
  sub_1C6B7F770(v45);
  sub_1C6BAE5E8(v41, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6BB065C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6BB0874(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6BB0874(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6BB0758(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BB0874(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BB07D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BB0758(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BB082C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6BB0874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6BB08D8(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA56240](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1C6BB1AA0(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1C6BB09CC(uint64_t a1)
{
  v2 = v1;
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  i = [v1 topics];
  if (!i)
  {
    goto LABEL_5;
  }

  sub_1C6BB2590();
  v13 = sub_1C6D79780();

  if (v13 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {

LABEL_5:
    v14 = swift_allocObject();
    v15 = __OFADD__(i, 2);
    v16 = i + 2;
    if (!v15)
    {
      break;
    }

    __break(1u);
LABEL_20:
    ;
  }

  v17 = v14;
  v18 = sub_1C6D763C0();
  *(v17 + 16) = MEMORY[0x1CCA559A0](v16, MEMORY[0x1E69E6158], v18, MEMORY[0x1E69E6168]);
  v19 = [v2 globalCohorts];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 cohortWithPreferredType_];

    if (v21)
    {
      v22 = [v21 hasRawClicks];
      v23 = &selRef_rawClicks;
      if (!v22)
      {
        v23 = &selRef_clicks;
      }

      [v21 *v23];
      [v21 clicks];
      [v21 impressions];
      sub_1C6D763A0();
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
      sub_1C6BC161C(v11, 42, 0xE100000000000000);
    }
  }

  v24 = [v2 publisherID];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1C6D795A0();
    v28 = v27;

    v29 = [v2 publisherCohorts];
    if (v29 && (v30 = v29, v31 = [v29 cohortWithPreferredType_], v30, v31))
    {
      v32 = [v31 hasRawClicks];
      v33 = &selRef_rawClicks;
      if (!v32)
      {
        v33 = &selRef_clicks;
      }

      [v31 *v33];
      [v31 clicks];
      [v31 impressions];
      sub_1C6D763A0();
      (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
      sub_1C6BC161C(v7, v26, v28);
    }

    else
    {
    }
  }

  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v17;
  aBlock[4] = sub_1C6BB25E4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6BB25F8;
  aBlock[3] = &block_descriptor_7;
  v35 = _Block_copy(aBlock);

  [v2 enumerateTopicCohortsWithBlock_];
  _Block_release(v35);
  swift_beginAccess();
  v36 = *(v17 + 16);

  return v36;
}

void sub_1C6BB0E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v18 - v11;
  v13 = [a3 cohortWithPreferredType_];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 hasRawClicks];
    v16 = &selRef_rawClicks;
    if (!v15)
    {
      v16 = &selRef_clicks;
    }

    [v14 *v16];
    [v14 clicks];
    [v14 impressions];
    sub_1C6D763A0();
    v17 = sub_1C6D763C0();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    swift_beginAccess();

    sub_1C6BC161C(v12, a1, a2);
    swift_endAccess();
  }
}

uint64_t sub_1C6BB104C()
{
  v1 = v0;
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = aBlock - v5;
  i = [v0 topics];
  if (!i)
  {
    goto LABEL_5;
  }

  sub_1C6BB2590();
  v8 = sub_1C6D79780();

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {

LABEL_5:
    v9 = swift_allocObject();
    v10 = __OFADD__(i, 2);
    v11 = i + 2;
    if (!v10)
    {
      break;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v12 = v9;
  v13 = sub_1C6D763C0();
  *(v12 + 16) = MEMORY[0x1CCA559A0](v11, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6168]);
  v14 = [v1 globalConversionStats];
  if (v14)
  {
    v15 = v14;
    [v14 conversions];
    [v15 conversions];
    [v15 impressions];
    sub_1C6D763A0();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    sub_1C6BC161C(v6, 42, 0xE100000000000000);
  }

  v16 = [v1 publisherID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C6D795A0();
    v20 = v19;

    v21 = [v1 publisherConversionStats];
    if (v21)
    {
      v22 = v21;
      [v21 conversions];
      [v22 conversions];
      [v22 impressions];
      sub_1C6D763A0();
      (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
      sub_1C6BC161C(v6, v18, v20);
    }

    else
    {
    }
  }

  aBlock[4] = sub_1C6BB25DC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6BB25F8;
  aBlock[3] = &block_descriptor_0;
  v23 = _Block_copy(aBlock);

  [v1 enumerateTopicConversionStatsWithBlock_];
  _Block_release(v23);
  swift_beginAccess();
  v24 = *(v12 + 16);

  return v24;
}

uint64_t sub_1C6BB1424(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;

  [a3 conversions];
  [a3 conversions];
  [a3 impressions];
  sub_1C6D763A0();
  v10 = sub_1C6D763C0();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  swift_beginAccess();
  sub_1C6BC161C(v9, a1, a2);
  return swift_endAccess();
}

void sub_1C6BB15A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1C6D795A0();
  v8 = v7;

  v9 = a3;
  v5(v6, v8, v9);
}

id sub_1C6BB1634()
{
  v1 = v0;
  v2 = sub_1C6D76190();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  i = [v1 topics];
  if (!i)
  {
    goto LABEL_5;
  }

  sub_1C6BB2590();
  v12 = sub_1C6D79780();

  if (v12 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {

LABEL_5:
    if (!__OFADD__(i, 1))
    {
      break;
    }

    __break(1u);
LABEL_29:
    ;
  }

  v13 = MEMORY[0x1CCA559A0](i + 1, MEMORY[0x1E69E6158], v2, MEMORY[0x1E69E6168]);
  v45 = v13;
  v14 = [v1 publisherID];
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  v43 = sub_1C6D795A0();
  v17 = v16;

  v18 = [v1 publisherTagMetadata];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 hasFlowRate];
    if (v20)
    {
      [v19 flowRate];
      v40 = v21;
    }

    else
    {
      v40 = 0.0;
    }

    if ([v19 hasSubscriptionRate])
    {
      [v19 subscriptionRate];
      v38 = v22;
    }

    else
    {
      v38 = 0.0;
    }

    v37 = [v19 hasQuality];
    v41 = v17;
    if (v37)
    {
      [v19 quality];
      v36 = v23;
    }

    else
    {
      v36 = 0.0;
    }

    v24 = [v19 hasContentAndRelevanceInfo];
    v42 = v3;
    if (v24)
    {
      LODWORD(v35) = v20;
      result = [v19 contentAndRelevanceInfo];
      if (!result)
      {
        __break(1u);
        goto LABEL_31;
      }

      v26 = result;
      [result contentRating];
    }

    v27 = [v19 hasContentAndRelevanceInfo];
    v28 = v27;
    if (!v27)
    {
LABEL_24:
      LOBYTE(v44) = v28 ^ 1;
      sub_1C6D76180();
      (*(v42 + 32))(v6, v10, v2);
      v30 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v30;
      sub_1C6BC4FE8(v6, v43, v41, isUniquelyReferenced_nonNull_native);

      v13 = v44;
      v45 = v44;
      goto LABEL_25;
    }

    v35 = v6;
    result = [v19 contentAndRelevanceInfo];
    if (result)
    {
      v29 = result;
      [result relevanceRating];

      v6 = v35;
      goto LABEL_24;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_25:
  v32 = [v1 topics];
  if (v32)
  {
    v33 = v32;
    sub_1C6BB2590();
    v34 = sub_1C6D79780();

    sub_1C6BB08D8(v34, &v45);

    return v45;
  }

  return v13;
}

id sub_1C6BB1AA0(id *a1, uint64_t a2)
{
  sub_1C6B21C54(0, &unk_1EDCEA840, MEMORY[0x1E69E31D0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v26 - v7;
  v9 = *a1;
  result = [*a1 tagID];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = result;
  v12 = sub_1C6D795A0();
  v38 = v13;

  if ([v9 hasFlowRate])
  {
    [v9 flowRate];
    v36 = v14;
  }

  else
  {
    v36 = 0;
  }

  if ([v9 hasSubscriptionRate])
  {
    [v9 subscriptionRate];
    v34 = v15;
  }

  else
  {
    v34 = 0;
  }

  if ([v9 hasQuality])
  {
    [v9 quality];
    v32 = v16;
  }

  else
  {
    v32 = 0;
  }

  if ([v9 hasOntologyLevel])
  {
    v30 = [v9 ontologyLevel];
  }

  else
  {
    v30 = 0;
  }

  v17 = [v9 hasContentAndRelevanceInfo];
  v18 = v17;
  if (!v17)
  {
    v27 = 0;
    goto LABEL_18;
  }

  result = [v9 contentAndRelevanceInfo];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = result;
  v20 = [result contentRating];

  v27 = v20;
LABEL_18:
  v21 = [v9 hasContentAndRelevanceInfo];
  v22 = v21;
  v29 = a2;
  v28 = v12;
  if (!v21)
  {
    v24 = v8;
    goto LABEL_22;
  }

  result = [v9 contentAndRelevanceInfo];
  if (result)
  {
    v23 = result;
    v24 = v8;
    [result relevanceRating];

LABEL_22:
    [v9 isManagedTopic];
    [v9 isManagedTopicWinner];
    [v9 isEligibleForGrouping];
    [v9 isEligibleForGroupingIfFavorited];
    [v9 isEligibleForGroupingIfAutofavorited];
    v40 = v18 ^ 1;
    v39 = v22 ^ 1;
    sub_1C6D76180();
    v25 = sub_1C6D76190();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    return sub_1C6BC189C(v24, v28, v38);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C6BB1E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = a1;
  sub_1C6B21C54(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v40 - v6;
  if ([v2 respondsToSelector_])
  {
    v8 = [v2 iAdCategories];
    if (v8)
    {
      v9 = v8;
      v57 = sub_1C6D79780();
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v10 = [v2 itemID];
  v11 = sub_1C6D795A0();
  v55 = v12;
  v56 = v11;

  v53 = [v2 respondsToSelector_];
  if (v53)
  {
    v54 = [v2 bodyTextLength];
  }

  else
  {
    v54 = 0;
  }

  v50 = [v2 halfLife];
  if (([v2 respondsToSelector_] & 1) != 0 && (v13 = objc_msgSend(v2, sel_halfLifeOverride)) != 0)
  {
    v52 = 0;
    v51 = v13;
  }

  else
  {
    v51 = 0.0;
    v52 = 1;
  }

  v49 = [v2 hasVideo];
  v48 = [v2 isANF];
  v47 = [v2 isPaid];
  if ([v2 respondsToSelector_])
  {
    v46 = [v2 isBundlePaid];
  }

  else
  {
    v46 = 0;
  }

  v14 = [v2 publishDate];
  if (v14)
  {
    v15 = v14;
    sub_1C6D75F20();

    v16 = sub_1C6D75F50();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  }

  else
  {
    v17 = sub_1C6D75F50();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  v18 = [v2 publisherID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1C6D795A0();
    v44 = v21;
    v45 = v20;
  }

  else
  {
    v44 = 0xE000000000000000;
    v45 = 0;
  }

  v22 = [v2 sourceFeedID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C6D795A0();
    v42 = v25;
    v43 = v24;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v26 = [v2 topicIDs];
  v58 = v7;
  if (v26)
  {
    v27 = v26;
    v41 = sub_1C6D79780();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B21C54(0, &qword_1EDCEA438, sub_1C6B620B4, MEMORY[0x1E69E6F90]);
  sub_1C6B620B4();
  v29 = v28;
  v30 = *(*(v28 - 8) + 72);
  v31 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C6D7EB10;
  v33 = v32 + v31;
  v40 = *(v29 + 48);
  v34 = *MEMORY[0x1E69E32C8];
  v35 = sub_1C6D763D0();
  v36 = *(*(v35 - 8) + 104);
  v36(v33, v34, v35);
  *(v33 + v40) = sub_1C6BB09CC(0);
  v37 = v33 + v30;
  v38 = *(v29 + 48);
  v36(v37, *MEMORY[0x1E69E32D0], v35);
  *(v37 + v38) = sub_1C6BB09CC(1);
  v40 = sub_1C6B60B8C(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1C6BB104C();
  if ([v2 respondsToSelector_])
  {
    [v2 hasAudioTrack];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 isFeatured];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 isFeatureCandidate];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 isEvergreen];
  }

  sub_1C6BB1634();
  if ([v2 respondsToSelector_])
  {
    [v2 reduceVisibility];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 webConverted];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 conditionalScore];
  }

  return sub_1C6D76150();
}

unint64_t sub_1C6BB2590()
{
  result = qword_1EDCEA8F0;
  if (!qword_1EDCEA8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA8F0);
  }

  return result;
}

uint64_t sub_1C6BB25FC(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1C6D783E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v72 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a2;
  v74 = a3;
  sub_1C6D784F0();
  if (v3)
  {
    return a1;
  }

  v67 = v11;
  v71 = v8;
  sub_1C6D78500();
  a1 = v76;

  v17 = [a1 tagScoringConfiguration];

  if (!v17)
  {
    sub_1C6BB31B8();
    v70 = swift_allocError();
    swift_willThrow();
    (*(v13 + 8))(v16, v72);
    return a1;
  }

  v68 = v7;
  v69 = v13;
  v18 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v18 = &selRef_nonBundleOutputConfiguration;
  }

  v19 = [v17 *v18];
  v20 = [v19 scoredTagsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  sub_1C6BB320C();
  v21 = sub_1C6D786D0();
  v70 = 0;
  v59 = v17;
  v23 = a3;
  v26 = *(a3 + 56);
  v25 = a3 + 56;
  v24 = v26;
  v27 = -1 << *(v23 + 32);
  if (-v27 < 64)
  {
    v28 = ~(-1 << -v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v24;
  v58[1] = -1 << *(v23 + 32);
  v30 = (63 - v27) >> 6;
  v62 = v21 + 32;
  v31 = v21;
  swift_bridgeObjectRetain_n();
  v63 = v31;

  v32 = 0;
  a1 = MEMORY[0x1E69E7CC8];
  v33 = 0;
  v34 = 0;
  v36 = v68;
  v35 = v69;
  v37 = v71;
  v61 = v23;
  v60 = v16;
  if (v29)
  {
    while (1)
    {
LABEL_18:
      v39 = *(v63 + 16);
      if (v33 == v39)
      {
LABEL_16:

        (*(v37 + 8))(v67, v36);
        (*(v35 + 8))(v16, v72);
        sub_1C6B688C4();

        swift_bridgeObjectRelease_n();
        return a1;
      }

      if (v33 >= v39)
      {
        goto LABEL_34;
      }

      v65 = v32;
      v66 = (v29 - 1) & v29;
      v40 = (*(v23 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v29)))));
      v41 = *v40;
      v42 = v40[1];
      v43 = *(v62 + 4 * v33);
      v44 = v33;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = a1;
      v47 = sub_1C6B5DEA8(v41, v42);
      v48 = a1[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_35;
      }

      v51 = v46;
      v52 = a1[3];
      v64 = v44 + 1;
      if (v52 < v50)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      sub_1C6B7337C();
      if (v51)
      {
LABEL_26:

        a1 = v75;
        *(v75[7] + 4 * v47) = v43;

        goto LABEL_30;
      }

LABEL_28:
      a1 = v75;
      v75[(v47 >> 6) + 8] |= 1 << v47;
      v54 = (a1[6] + 16 * v47);
      *v54 = v41;
      v54[1] = v42;
      *(a1[7] + 4 * v47) = v43;

      v55 = a1[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_36;
      }

      a1[2] = v57;
LABEL_30:
      v32 = v65;
      v34 = v65;
      v29 = v66;
      v23 = v61;
      v36 = v68;
      v35 = v69;
      v37 = v71;
      v16 = v60;
      v33 = v64;
      if (!v66)
      {
        goto LABEL_14;
      }
    }

    sub_1C6B6F710(v50, isUniquelyReferenced_nonNull_native);
    v47 = sub_1C6B5DEA8(v41, v42);
    if ((v51 & 1) != (v53 & 1))
    {
      goto LABEL_37;
    }

LABEL_25:
    if (v51)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

LABEL_14:
  while (1)
  {
    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v38 >= v30)
    {
      goto LABEL_16;
    }

    v29 = *(v25 + 8 * v38);
    ++v34;
    if (v29)
    {
      v32 = v38;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6BB2BE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v8 = sub_1C6D78810();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75F80();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D783E0();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [*(a1 + 24) tagScoringConfiguration];
  if (!v21)
  {
    sub_1C6BB31B8();
    swift_allocError();
    return swift_willThrow();
  }

  v49 = v11;
  v50 = a4;
  v51 = v4;
  v22 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v22 = &selRef_nonBundleOutputConfiguration;
  }

  v23 = *v22;
  v48 = v21;
  v24 = [v21 v23];
  v25 = [v24 scoredTagsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  sub_1C6D75F70();
  v26 = sub_1C6D75F60();
  v28 = v27;
  (*(v13 + 8))(v16, v12);
  v29 = v20;
  if (qword_1EDCE2538 != -1)
  {
    swift_once();
  }

  sub_1C6B1A360(0, &qword_1EDCEA8A0, sub_1C6B47670);
  v30 = swift_allocObject();
  v54 = xmmword_1C6D7E630;
  *(v30 + 16) = xmmword_1C6D7E630;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1C6B2064C();
  *(v30 + 32) = v26;
  *(v30 + 40) = v28;
  v47[1] = v28;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  v31 = v56;
  v32 = *(v56 + 16);
  if (!v32)
  {
    goto LABEL_10;
  }

  v47[0] = v26;
  v33 = sub_1C6B6732C(v32, 0);
  v34 = sub_1C6B67FC8(&v55, v33 + 4, v32, v31);

  result = sub_1C6B688C4();
  if (v34 == v32)
  {
    v29 = v20;
LABEL_10:
    sub_1C6B1A360(0, &qword_1EDCE7D20, sub_1C6B9F304);
    sub_1C6B9F304();
    v37 = v36 - 8;
    v38 = *(*(v36 - 8) + 72);
    v39 = (*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80);
    *(swift_allocObject() + 16) = v54;
    v40 = *(v37 + 56);
    sub_1C6D783C0();
    sub_1C6D78740();
    sub_1C6D787D0();
    sub_1C6B1A360(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
    v41 = v52;
    v42 = *(v52 + 72);
    v43 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v54;
    v45 = v53;
    (*(v41 + 16))(v44 + v43, v29, v53);
    sub_1C6B68E34(v44);
    swift_setDeallocating();
    v46 = *(v41 + 8);
    v46(v44 + v43, v45);
    swift_deallocClassInstance();
    sub_1C6D78790();

    return (v46)(v29, v45);
  }

  __break(1u);
  return result;
}