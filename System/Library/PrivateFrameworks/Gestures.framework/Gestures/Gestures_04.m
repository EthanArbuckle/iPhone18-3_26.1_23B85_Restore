uint64_t sub_18E6B92F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = sub_18E72B438();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6B9380(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t sub_18E6B94D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_18E6B959C(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_18E6B96AC(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *sub_18E6B9838(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_18E6B9948(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t sub_18E6B9AD4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_18E6B9C54(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_18E6B9E80(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6B9EE4()
{
  v1 = v0;
  v2 = *(*v0 + 240);
  v3 = *(v0 + v2);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for UpdateTracer();
    swift_allocObject();
    v4 = sub_18E6F8BE8();
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_18E688410(v5);
  }

  sub_18E69CD28(v3);
  return v4;
}

uint64_t sub_18E6B9F78()
{
  v1 = *(*v0 + 248);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = *(*v0 + 200);
    type metadata accessor for UpdateScheduler();
    v2 = swift_allocObject();
    *(v2 + 32) = MEMORY[0x1E69E7CC8];
    *(v2 + 16) = *(v0 + v3);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t GestureComponentController.__allocating_init(component:timeScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  GestureComponentController.init(component:timeScheduler:)(a1, a2, a3);
  return v9;
}

uint64_t *GestureComponentController.init(component:timeScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  *(v3 + *(*v3 + 208)) = MEMORY[0x1E69E7CC8];
  *(v3 + *(*v3 + 216)) = 0;
  v7 = v3 + *(*v3 + 224);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = (v3 + *(*v3 + 232));
  *v8 = 0;
  v8[1] = 0;
  *(v3 + *(*v3 + 240)) = 1;
  *(v3 + *(*v3 + 248)) = 0;
  (*(*(*(v6 + 176) - 8) + 32))(v3 + *(*v3 + 192), a1);
  v9 = (v3 + *(*v3 + 200));
  *v9 = a2;
  v9[1] = a3;
  swift_weakInit();
  return v3;
}

uint64_t GestureComponentController.__allocating_init(component:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 176);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  sub_18E6BA350();
  v9 = sub_18E72B408();
  type metadata accessor for DispatchTimeScheduler();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC8];
  v10[6] = &type metadata for UptimeTimeSource;
  v10[7] = &protocol witness table for UptimeTimeSource;
  v10[8] = v11;
  v10[9] = 0;
  v10[2] = v9;
  v12 = *(v2 + 48);
  v13 = *(v2 + 52);
  v14 = swift_allocObject();
  GestureComponentController.init(component:timeScheduler:)(v8, v10, &protocol witness table for DispatchTimeScheduler);
  (*(v5 + 8))(a1, v4);
  return v14;
}

unint64_t sub_18E6BA350()
{
  result = qword_1EAC8E260[0];
  if (!qword_1EAC8E260[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EAC8E260);
  }

  return result;
}

uint64_t GestureComponentController.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  if (!*(v1 + v4))
  {
    v5 = v3[24];
    (*(v3[23] + 32))(&v9, v3[22]);
    v6 = *(v1 + v4);
    *(v1 + v4) = v9;

    v7 = *(v1 + v4);
  }

  *a1 = result;
  return result;
}

uint64_t GestureComponentController.timeSource.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(*v1 + 200));
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  a1[3] = ObjectType;
  a1[4] = v7;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

BOOL GestureComponentController.canHandleEvents<A>(ofType:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*v4 + 184) + 40);
  v7 = *(*v4 + 176);
  v8 = v4 + *(*v4 + 192);
  return v6(a1, a3, a4, v7) >= a2;
}

uint64_t GestureComponentController.handleEvents<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_18E6BA6C0(a2, a2);
  (*(*v7 + 88))(a1, a2, a3);
  v8 = v3 + *(*v3 + 224);
  if (*(v8 + 16) == 1)
  {
    v9 = (v3 + *(*v3 + 200));
    v10 = *v9;
    v11 = v9[1];
    ObjectType = swift_getObjectType();
    *v8 = (*(*(v11 + 8) + 8))(ObjectType);
    *(v8 + 8) = v13;
    *(v8 + 16) = 0;
  }

  v14 = sub_18E6BA798(0, a2, a2, a3);
  (*(*v7 + 96))(v14);
}

void *sub_18E6BA6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*v2 + 208);
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_18E6EB450(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    type metadata accessor for EventStore();
    v9 = sub_18E6A4200();

    v10 = *(v3 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + v5);
    *(v3 + v5) = 0x8000000000000000;
    sub_18E6B7274(v9, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + v5) = v13;
  }

  return v9;
}

uint64_t sub_18E6BA798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v63 = a2;
  v64 = a3;
  v66 = a1;
  v7 = *v4;
  v8 = v7[23];
  v55 = v7[22];
  v56 = v8;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput();
  v51 = sub_18E72B438();
  v50 = *(v51 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x1EEE9AC00](v51);
  v13 = &v49 - v12;
  v58 = *(v9 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v49 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v57 = v9;
  v16 = sub_18E72B928();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v19;
  v21 = v5 + v7[28];
  if (v21[16])
  {
    __break(1u);
    return result;
  }

  v23 = *v21;
  v22 = *(v21 + 1);
  v24 = (v5 + v7[25]);
  v25 = *v24;
  v26 = v24[1];
  ObjectType = swift_getObjectType();
  v65[0] = v25;
  v28 = (*(*(v26 + 8) + 8))(ObjectType);
  v30 = v29;
  v49 = a4;
  v31 = sub_18E6BA6C0(v63, v64);
  v32 = sub_18E6B9EE4();
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v28;
  v65[3] = v30;
  v65[4] = v66;
  v65[5] = v32;
  v53 = v31;
  v54 = v32;
  v65[6] = v31;
  v33 = *(*v5 + 192);

  sub_18E722318(v65, v55, v56, v20);
  v34 = *(*v5 + 240);
  v35 = *(v5 + v34);
  if (v35)
  {
    v36 = *(v5 + v34);

    sub_18E6F71BC();
    sub_18E6F7398();
    sub_18E688410(v35);
  }

  v37 = v60;
  v62 = v20;
  sub_18E6FBFA4(v60, v13);
  v38 = v57;
  v39 = v58;
  v40 = (*(v58 + 48))(v13, 1, v57);
  v41 = v61;
  if (v40 == 1)
  {
    (*(v50 + 8))(v13, v51);
  }

  else
  {
    v42 = v52;
    (*(v39 + 32))();
    sub_18E6BAF04(v42, v63, v64, v49);
    if (v41)
    {

      (*(v39 + 8))(v42, v38);
      return (*(v59 + 8))(v62, v37);
    }

    (*(v39 + 8))(v42, v38);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = v62;
    sub_18E6BBDE8(Strong, v62);
    if (v41)
    {
      (*(v59 + 8))(v44, v37);
    }
  }

  v45 = v5 + *(*v5 + 232);
  v46 = *v45;
  if (*v45)
  {
    v47 = *(v45 + 1);

    v48 = v62;
    v46(v62);
    sub_18E6826D0(v46);

    return (*(v59 + 8))(v48, v37);
  }

  (*(v59 + 8))(v62, v37);
}

Swift::Void __swiftcall GestureComponentController.reset()()
{
  v1 = *v0;
  sub_18E6B9F78();
  sub_18E7225D0();

  v2 = *(v0 + *(*v0 + 208));
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + *(*v0 + 208));

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(**(*(v2 + 56) + ((v9 << 9) | (8 * v10))) + 104);

    v11(v12);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v13 = *(*v0 + 192);
      (*(*(v1 + 184) + 24))(*(v1 + 176));
      v14 = *(*v0 + 216);
      v15 = *(v0 + v14);
      *(v0 + v14) = 0;

      v16 = v0 + *(*v0 + 224);
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 1;
      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_18E6BAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*v4 + 184);
  v9 = *(*v4 + 176);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for GestureOutput();
  result = sub_18E6FED28(v10, &v19);
  v12 = v19;
  if (v19)
  {
    v17 = a3;
    v18 = a4;
    v20 = a2;
    v13 = *(&v19 + 1);
    if (*(v19 + 16))
    {
      sub_18E6B9F78();
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      v15[2] = v9;
      v15[3] = v17;
      v15[4] = v8;
      v15[5] = v18;
      v16 = v20;
      v15[6] = v14;
      v15[7] = v16;

      sub_18E722788(v12, sub_18E6BC224, v15, 0, 0);
    }

    if (*(v13 + 16))
    {
      sub_18E6B9F78();
      sub_18E722A20(v13);
      sub_18E6AF804(v12);
    }

    else
    {
      return sub_18E6AF804(v12);
    }
  }

  return result;
}

uint64_t sub_18E6BB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_18E6BB17C(a1, a3, a5, a7);
  }

  return result;
}

uint64_t sub_18E6BB17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E72AE18();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  return sub_18E6BA798(a1, a2, a3, a4);
}

uint64_t sub_18E6BB390()
{
  (*(*(*(*v0 + 176) - 8) + 8))(v0 + *(*v0 + 192));
  v1 = *(v0 + *(*v0 + 200));
  swift_unknownObjectRelease();
  v2 = *(v0 + *(*v0 + 208));

  v3 = *(v0 + *(*v0 + 216));

  v4 = (v0 + *(*v0 + 232));
  v5 = v4[1];
  sub_18E6826D0(*v4);
  sub_18E688410(*(v0 + *(*v0 + 240)));
  v6 = *(v0 + *(*v0 + 248));
}

uint64_t *GestureComponentController.deinit()
{
  v1 = *v0;
  swift_weakDestroy();
  (*(*(*(v1 + 176) - 8) + 8))(v0 + *(*v0 + 192));
  v2 = *(v0 + *(*v0 + 200));
  swift_unknownObjectRelease();
  v3 = *(v0 + *(*v0 + 208));

  v4 = *(v0 + *(*v0 + 216));

  v5 = (v0 + *(*v0 + 232));
  v6 = v5[1];
  sub_18E6826D0(*v5);
  sub_18E688410(*(v0 + *(*v0 + 240)));
  v7 = *(v0 + *(*v0 + 248));

  return v0;
}

uint64_t GestureComponentController.__deallocating_deinit()
{
  GestureComponentController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18E6BB660()
{
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_6;
    }

    (*(*v0 + 152))();
  }

LABEL_6:
}

uint64_t (*sub_18E6BB6F8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_18E6BB744;
}

uint64_t sub_18E6BB744(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  v6 = swift_weakLoadStrong();
  if (a2)
  {
    if (!v6)
    {
      if (!Strong)
      {
        goto LABEL_8;
      }

      v7 = *(*v4 + 152);

      v7(v8);
    }

    goto LABEL_6;
  }

  if (v6)
  {
LABEL_6:

LABEL_7:

    goto LABEL_8;
  }

  if (Strong)
  {
    (*(*v4 + 152))();
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t sub_18E6BB890(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (!Strong)
    {
      return result;
    }

    v6 = *(*v3 + 152);

    v6(v7);
  }
}

uint64_t AnyGestureComponentController.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E6BBB3C(uint64_t a1)
{
  v1 = *(a1 + 176);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_18E6BBDE8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_18E72B438();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v30 = *(AssociatedTypeWitness - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  v12 = type metadata accessor for GestureOutput();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v17 = sub_18E72B928();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v27 - v19);
  (*(v21 + 16))(&v27 - v19, v31, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v20;
    v32 = *v20 | 0x8000000000000000;
    v23 = *(*a1 + 344);
    v24 = v22;
    v23(&v32, 0);
    sub_18E683B98(v32);
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    GestureOutput.value.getter(v12, v8);
    v25 = v30;
    if ((*(v30 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v13 + 8))(v16, v12);
      (*(v28 + 8))(v8, v29);
    }

    else
    {
      (*(v25 + 32))(v11, v8, AssociatedTypeWitness);
      v26 = GestureOutput.isFinal.getter(v12);
      (*(*a1 + 328))(v11, v26 & 1, AssociatedTypeWitness);
      (*(v25 + 8))(v11, AssociatedTypeWitness);
      (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t GFGestureRelationType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0xD000000000000017;
      case 4:
        return 0x7365726975716572;
      case 5:
        return 0x6465726975716572;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x756C6378456E6163;
      case 1:
        return 0x63784565426E6163;
      case 2:
        return 0xD000000000000010;
    }
  }

  v9 = v2;
  v10 = v1;
  v11 = v3;
  v12 = v4;
  sub_18E72B5C8();

  strcpy(v8, "Unknown type: ");
  v8[15] = -18;
  v7 = GFGestureRelationType.description.getter(a1);
  MEMORY[0x193AD15C0](v7);

  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t GFGestureRelationRole.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x72616C75676572;
  }

  if (a1 == 1)
  {
    return 0x676E696B636F6C62;
  }

  v9 = v2;
  v10 = v1;
  v11 = v3;
  v12 = v4;
  sub_18E72B5C8();

  strcpy(v8, "Unknown role: ");
  v8[15] = -18;
  v7 = GFGestureRelationRole.description.getter(a1);
  MEMORY[0x193AD15C0](v7);

  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t GestureUpdateDriverToken.hashValue.getter()
{
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t sub_18E6BC54C()
{
  v1 = *v0;
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t sub_18E6BC5C0()
{
  v1 = *v0;
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t sub_18E6BC690()
{
  v1 = *(v0 + 16);

  sub_18E695864(*(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_18E6BC6D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 56 * v6);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = v12 + 56 * v3;
        v14 = (v12 + 56 * v6);
        if (v3 != v6 || v13 >= v14 + 56)
        {
          v15 = *v14;
          v16 = v14[1];
          v17 = v14[2];
          *(v13 + 48) = *(v14 + 6);
          *(v13 + 16) = v16;
          *(v13 + 32) = v17;
          *v13 = v15;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18E6BC884(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 2 * v6);
      result = MEMORY[0x193AD1DC0](*(a2 + 40), *v10, 2);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 2 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18E6BCA38()
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](0);
  return sub_18E72B8E8();
}

uint64_t sub_18E6BCAA4()
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](0);
  return sub_18E72B8E8();
}

uint64_t sub_18E6BCAF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6BCB4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6BCBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = sub_18E72B438();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v38 - v15;
  v17 = *(*(v8 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v25 = &v38 - v24;
  if (!*(a1 + 32))
  {
    v41 = v23;
    v42 = v21;
    v43 = v22;
    v27 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *(a1 + 16);
    v44[0] = *a1;
    v44[1] = v28;
    v45 = 0;
    v46 = v27;
    v47 = v26;
    v40 = *(a2 + 24);
    if (!sub_18E6AB27C())
    {
      v33 = MEMORY[0x1E69E7CC0];
      *a3 = 0;
      *(a3 + 8) = v33;
      *(a3 + 16) = v33;
      *(a3 + 24) = xmmword_18E72DB60;
LABEL_13:
      type metadata accessor for GestureOutput();
      return swift_storeEnumTagMultiPayload();
    }

    if ((*(v4 + 8) & 1) == 0)
    {
      *&v44[0] = *v4;
      v39 = v4;
      sub_18E6A38F4(v44);
      v34 = v43;
      if ((*(v43 + 48))(v16, 1, v8) != 1)
      {
        (*(v34 + 32))(v25, v16, v8);
        sub_18E6BCFF8(v25, v8, v40, a3);
        (*(v34 + 8))(v25, v8);
      }

      (*(v41 + 8))(v16, v42);
      if (*(v39 + 8) != 1)
      {
        goto LABEL_11;
      }
    }

    sub_18E6A3554(v13);
    v29 = v43;
    if ((*(v43 + 48))(v13, 1, v8) == 1)
    {
      (*(v41 + 8))(v13, v42);
      if (*(v4 + 8))
      {

        *a3 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        v31 = 0x800000018E73A450;
        *(a3 + 8) = MEMORY[0x1E69E7CC0];
        *(a3 + 16) = v30;
        v32 = 0xD000000000000011;
LABEL_12:
        *(a3 + 24) = v32;
        *(a3 + 32) = v31;
        goto LABEL_13;
      }

LABEL_11:

      v31 = 0x800000018E73A470;
      *a3 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      *(a3 + 8) = MEMORY[0x1E69E7CC0];
      *(a3 + 16) = v35;
      v32 = 0xD000000000000017;
      goto LABEL_12;
    }

    (*(v29 + 32))(v20, v13, v8);
    v37 = v40;
    (*(v40 + 16))(v44, v8, v40);
    *v4 = *&v44[0];
    *(v4 + 8) = 0;
    sub_18E6BCFF8(v20, v8, v37, a3);
    (*(v29 + 8))(v20, v8);
  }

  *a3 = 2;
  type metadata accessor for GestureOutput();
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6BCFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 24))(&v9, a2, a3);
  if (v9 <= 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v7 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(a2 - 8) + 16))(a4, a1, a2);
    type metadata accessor for GestureOutput();
    *v7 = 0u;
    v7[1] = 0u;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for EventSource.Failure();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_18E6BD1F8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_18E6BD20C(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_18E6BD220(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6BD2B0(unsigned int *a1, int a2)
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

_WORD *sub_18E6BD300(_WORD *result, int a2, int a3)
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

uint64_t sub_18E6BD394(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6BD41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6BD4B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6BD5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6BD650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t sub_18E6BD6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6BD780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t sub_18E6BD824(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18E6BD930(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_18E6BDAD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v25 = a4;
  v26 = a6;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DurationGate();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  (*(v12 + 16))(v15, v7, a5);
  (*(v12 + 32))(v19, v15, a5);
  v20 = &v19[*(v16 + 36)];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v19[*(v16 + 40)];
  v22 = v25;
  *v21 = a3;
  *(v21 + 1) = v22;
  swift_getWitnessTable();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  sub_18E6AE000(v27);
  *&result = sub_18E6AE018(v19, v27, v16, v26).n128_u64[0];
  return result;
}

uint64_t sub_18E6BDCE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a2;
  v30 = a1;
  v31 = a5;
  v9 = *(a4 + 16);
  v29 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for GestureOutput();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[2];
  v18 = a3[3];
  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
  v19 = (v6 + *(a4 + 36));
  v21 = *v19;
  v20 = v19[1];
  if (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0())
  {
    if (v35)
    {
      type metadata accessor for DurationGate.Failure();
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }

    *v14 = 1;
    v27 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = MEMORY[0x1E69E7CC0];
    *(v14 + 2) = v27;
    *(v14 + 3) = 0xD000000000000018;
    *(v14 + 4) = 0x800000018E73A4B0;
    v28 = v33;
    swift_storeEnumTagMultiPayload();
    sub_18E6BDF7C(0xD000000000000014, 0x800000018E73A4D0, a4, v31);
    v26 = v28;
  }

  else
  {
    memset(v34, 0, sizeof(v34));
    sub_18E6FEC1C(v30, v34, AssociatedTypeWitness, v14);
    v23 = (v6 + *(a4 + 40));
    v24 = *v23;
    v25 = v23[1];
    sub_18E6BDF7C(0xD000000000000014, 0x800000018E73A490, a4, v31);
    v26 = v33;
  }

  return (*(v32 + 8))(v14, v26);
}

uint64_t sub_18E6BDF7C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  sub_18E72B9B8();
  if (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) != 0 && (sub_18E72B958(), (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0()))
  {
    v8 = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
    v10 = v9;
    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    v13 = type metadata accessor for GestureOutput();
    return sub_18E6AF02C(v8, v10, a1, a2, v13);
  }

  else
  {
    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    v17 = type metadata accessor for GestureOutput();
    return sub_18E6AF478(v17, a4);
  }
}

uint64_t sub_18E6BE0C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6BE0FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6BE16C()
{
  v0 = sub_18E72AE18();
  __swift_allocate_value_buffer(v0, qword_1EAC99270);
  __swift_project_value_buffer(v0, qword_1EAC99270);
  return sub_18E72AE08();
}

uint64_t sub_18E6BE1E0()
{
  v0 = sub_18E72AE18();
  __swift_allocate_value_buffer(v0, qword_1EAC99288);
  __swift_project_value_buffer(v0, qword_1EAC99288);
  return sub_18E72AE08();
}

uint64_t sub_18E6BE2B8(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_18E72AE18();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_18E72AE28();
}

uint64_t sub_18E6BE368()
{
  if (qword_1ED6F7F80 != -1)
  {
    result = swift_once();
  }

  qword_1ED6F7F88 = 0;
  return result;
}

uint64_t _s8Gestures19GestureRelationRoleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6BE414()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t *sub_18E6BE458@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_18E6BE488@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result > 2uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GestureOutputEmptyReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GestureOutputEmptyReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18E6BE608()
{
  result = qword_1EAC8E5A0;
  if (!qword_1EAC8E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E5A0);
  }

  return result;
}

uint64_t sub_18E6BE65C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v17 = *(v16 + 8);
  v17(v18, v19, v16, 1.0 - a2);
  v17(a1, a4, a5, a2);
  (*(a5 + 16))(v15, v13, a4, a5);
  v20 = *(v9 + 8);
  v20(v13, a4);
  return (v20)(v15, a4);
}

uint64_t sub_18E6BE7E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v12, v4, a2);
  sub_18E6BE65C(a1, a4, v12, a2, a3);
  return (*(v9 + 8))(v12, a2);
}

uint64_t sub_18E6BE8EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for AnyGestureNode();
  v4 = sub_18E68D978(&qword_1ED6F7F48);
  result = MEMORY[0x193AD1810](v2, v3, v4);
  v6 = 0;
  v15 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * v12)));

    sub_18E6880B0(&v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v15;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6BEA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  if (a1 == a2)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v8 = sub_18E6879CC(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(a3 + 56) + 8 * v8);
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *(*(a3 + 56) + 8 * v8);
    }

    v12 = *(*(a3 + 56) + 8 * v8);

    v13 = sub_18E72B518();
  }

  else
  {
    v13 = *(v10 + 16);
  }

  if (v13 <= 0)
  {
    return 0;
  }

  if (!*(a4 + 16))
  {
    return 0;
  }

  v14 = sub_18E6879CC(a2);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(*(a4 + 56) + 8 * v14);
  if ((v16 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v17 = *(*(a4 + 56) + 8 * v14);
    }

    v18 = *(*(a4 + 56) + 8 * v14);

    v19 = sub_18E72B518();
  }

  else
  {
    v19 = *(v16 + 16);
  }

  if (v19 < 1)
  {
    return 0;
  }

  v24 = MEMORY[0x1E69E7CD0];
  v23 = 0;
  v20 = MEMORY[0x1EEE9AC00](a1);
  v22[2] = &v25;
  sub_18E6BED5C(v20, &v24, 1u, &v23, sub_18E6C02D4, v22, a3, a4);

  return v23;
}

BOOL sub_18E6BEBB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    return 1;
  }

  v3 = &v8;
  v4 = (*(*v2 + 304))(&v8);
  v5 = v9;
  if (v9 == 255)
  {
    v3 = &v10;
    (*(*v2 + 296))(&v10, v4);
    v5 = v11;
  }

  if (v5 <= 2)
  {
    return v5 >= 2;
  }

  v6 = *v3;
  if (v5 == 3)
  {
    sub_18E69E818(v6, 3);
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_18E6BEC98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_18E6BECE0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  v3 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v1);

  return v3;
}

uint64_t sub_18E6BED5C(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  result = sub_18E68CE2C(a1, *a2);
  if ((result & 1) == 0)
  {

    sub_18E6880B0(v34, a1);

    result = a5(&v35, a4);
    if (result)
    {
      v30 = a6;
      v14 = sub_18E68D214(a1, a3, a7, a8);
      v15 = v14;
      v29 = a5;
      if (v14 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18E72B518())
      {
        v17 = 0;
        while ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x193AD1B60](v17, v15);
          v19 = __OFADD__(v17++, 1);
          if (v19)
          {
            goto LABEL_27;
          }

LABEL_14:
          if (v18 != a1)
          {
            v20 = *a2;
            if ((*a2 & 0xC000000000000001) != 0)
            {
              if (v20 < 0)
              {
                v21 = *a2;
              }

              v22 = sub_18E72B558();

              if ((v22 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            else
            {
              if (!*(v20 + 16))
              {
                goto LABEL_7;
              }

              v23 = *(v20 + 40);
              sub_18E72B888();
              v24 = sub_18E72AFA8();
              MEMORY[0x193AD1DF0](v24);
              v25 = sub_18E72B8E8();
              v26 = -1 << *(v20 + 32);
              v27 = v25 & ~v26;
              if (((*(v20 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
                goto LABEL_7;
              }

              v28 = ~v26;
              while (*(*(v20 + 48) + 8 * v27) != a1)
              {
                v27 = (v27 + 1) & v28;
                if (((*(v20 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }
            }

            sub_18E6BED5C(v18, a2, a3, a4, v29, v30, a7, a8);
          }

LABEL_7:

          if (v17 == i)
          {
            goto LABEL_30;
          }
        }

        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v18 = *(v15 + 32 + 8 * v17);

        v19 = __OFADD__(v17++, 1);
        if (!v19)
        {
          goto LABEL_14;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:
    }
  }

  return result;
}

void sub_18E6BEFDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B8, &unk_18E731FB0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_18E6BF0AC(uint64_t a1)
{
  swift_bridgeObjectRetain_n();
  result = sub_18E6BE8EC(a1);
  v3 = 0;
  v15 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (v8 << 9) | (8 * v9);
    v11 = *(*(a1 + 48) + v10);
    v12 = *(*(a1 + 56) + v10);

    sub_18E68D3E0(v13);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      v14 = sub_18E687AA8(v15);

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E6BF1D4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_18E72B518();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
      result = sub_18E72B5A8();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_18E72B518();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x193AD1B60](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      sub_18E72B888();
      v11 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v11);
      result = sub_18E72B8E8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v6 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v9)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_16:
        *(v6 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v9;
        v18 = *(v3 + 16);
        v8 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (v8)
        {
          goto LABEL_29;
        }

        *(v3 + 16) = v19;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = v1 + 32;
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20 != v22)
    {
      v23 = *(v21 + 8 * v20);
      v24 = *(v3 + 40);
      sub_18E72B888();

      v25 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v25);
      result = sub_18E72B8E8();
      v26 = ~(-1 << *(v3 + 32));
      v27 = result & v26;
      v28 = (result & v26) >> 6;
      v29 = *(v6 + 8 * v28);
      v30 = 1 << (result & v26);
      v31 = *(v3 + 48);
      if ((v30 & v29) != 0)
      {
        while (*(v31 + 8 * v27) != v23)
        {
          v27 = (v27 + 1) & v26;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        *(v6 + 8 * v28) = v30 | v29;
        *(v31 + 8 * v27) = v23;
        v32 = *(v3 + 16);
        v8 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v33;
      }

      if (++v20 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18E6BF464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v63 = 0;
  v64 = 0xE000000000000000;
  v4 = sub_18E6BF0AC(a3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18E72B518())
  {
    v7 = 0;
    v46 = v5 & 0xC000000000000001;
    v40 = v5 + 32;
    v41 = v5 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0] >> 62;
    v43 = i;
    v44 = v5;
    v45 = v3;
    while (v46)
    {
      v51 = MEMORY[0x193AD1B60](v7, v5);
      v9 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      if (v9)
      {
        goto LABEL_40;
      }

LABEL_11:
      if (*(v3 + 16) && (v11 = sub_18E6879CC(v51), (v12 & 1) != 0))
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        if ((v13 & 0xC000000000000001) != 0)
        {
          goto LABEL_17;
        }
      }

      else if (v42 && sub_18E72B518())
      {
        v13 = sub_18E6BF1D4(v8);
        if ((v13 & 0xC000000000000001) != 0)
        {
LABEL_17:
          v14 = sub_18E72B518();
          if (v14)
          {
            goto LABEL_18;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E7CD0];
        if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
        {
          goto LABEL_17;
        }
      }

      v14 = *(v13 + 16);
      if (v14)
      {
LABEL_18:
        if (v14 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
          v8 = swift_allocObject();
          v15 = _swift_stdlib_malloc_size(v8);
          v16 = v15 - 32;
          if (v15 < 32)
          {
            v16 = v15 - 25;
          }

          *(v8 + 16) = v14;
          *(v8 + 24) = (2 * (v16 >> 3)) | 1;
        }

        v17 = sub_18E687B58(&v59, (v8 + 32), v14, v13);
        sub_18E687EE8();
        if (v17 != v14)
        {
          goto LABEL_41;
        }

        v47 = v10;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

LABEL_28:

      v47 = v10;
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

LABEL_29:
      if ((v8 & 0x4000000000000000) == 0)
      {
        v50 = *(v8 + 16);
        if (!v50)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

LABEL_37:
      v50 = sub_18E72B518();
      if (!v50)
      {
        goto LABEL_4;
      }

LABEL_31:
      if (v50 < 1)
      {
        goto LABEL_42;
      }

      v18 = 0;
      v48 = v8 & 0xC000000000000001;
      v49 = v8;
      do
      {
        if (v48)
        {
          v19 = MEMORY[0x193AD1B60](v18, v8);
        }

        else
        {
          v19 = *(v8 + 8 * v18 + 32);
        }

        ++v18;
        v57 = 0x202020200ALL;
        v58 = 0xE500000000000000;
        v20 = type metadata accessor for AnyGestureNode();
        v61 = v20;
        v21 = sub_18E68D978(&qword_1EAC8E5A8);
        v62 = v21;
        v59 = v51;
        v55 = 0;
        v56 = 0xE000000000000000;
        v22 = __swift_project_boxed_opaque_existential_1(&v59, v20);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v53 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v54 = AssociatedConformanceWitness;
        *__swift_allocate_boxed_opaque_existential_0(v52) = *(*v22 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(v52);
        v25 = v55;
        v26 = v56;
        __swift_destroy_boxed_opaque_existential_0(&v59);
        MEMORY[0x193AD15C0](v25, v26);

        MEMORY[0x193AD15C0](540945696, 0xE400000000000000);
        v61 = v20;
        v62 = v21;
        v59 = v19;
        v55 = 0;
        v56 = 0xE000000000000000;
        v27 = __swift_project_boxed_opaque_existential_1(&v59, v20);
        v53 = AssociatedTypeWitness;
        v54 = AssociatedConformanceWitness;
        *__swift_allocate_boxed_opaque_existential_0(v52) = *(*v27 + 16);

        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(v52);

        v28 = v55;
        v29 = v56;
        __swift_destroy_boxed_opaque_existential_0(&v59);
        MEMORY[0x193AD15C0](v28, v29);

        MEMORY[0x193AD15C0](59, 0xE100000000000000);
        MEMORY[0x193AD15C0](v57, v58);

        v8 = v49;
      }

      while (v50 != v18);
LABEL_4:

      v5 = v44;
      v7 = v47;
      v3 = v45;
      v8 = MEMORY[0x1E69E7CC0];
      if (v47 == v43)
      {

        v31 = v63;
        v30 = v64;
        goto LABEL_46;
      }
    }

    if (v7 >= *(v41 + 16))
    {
      goto LABEL_43;
    }

    v51 = *(v40 + 8 * v7);

    v9 = __OFADD__(v7, 1);
    v10 = v7 + 1;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v31 = 0;
  v30 = 0xE000000000000000;
LABEL_46:
  v59 = 0x2068706172676964;
  v60 = 0xE900000000000022;
  MEMORY[0x193AD15C0](a1, a2);
  MEMORY[0x193AD15C0](8069154, 0xE300000000000000);

  MEMORY[0x193AD15C0](v31, v30);

  v33 = v59;
  v32 = v60;
  v34 = sub_18E72B028();

  if (v34 <= 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = 10;
  }

  if (v34 <= 0)
  {
    v36 = 0xE000000000000000;
  }

  else
  {
    v36 = 0xE100000000000000;
  }

  v59 = v33;
  v60 = v32;

  MEMORY[0x193AD15C0](v35, v36);

  MEMORY[0x193AD15C0](125, 0xE100000000000000);

  return v59;
}

uint64_t sub_18E6BFA68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_18E6AB9A0();
  result = MEMORY[0x193AD1810](v2, &type metadata for EventID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_18E695BE4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_18E6BFADC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = result;
  v66 = 0;
  v67 = 0xE000000000000000;
  if (a3 < 0)
  {
    goto LABEL_70;
  }

  v4 = a3;
  if (!a3)
  {
    goto LABEL_5;
  }

  v5 = sub_18E69FA38(a3, 0);
  result = sub_18E69FEB4(&v63, (v5 + 4), v4, 0, v4);
  if (result != v4)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x1E69E7CC0];
  }

  v55 = v5[2];
  if (!v55)
  {

    v42 = 0;
    v43 = 0xE000000000000000;
LABEL_56:
    v63 = 0x2068706172676964;
    v64 = 0xE900000000000022;
    MEMORY[0x193AD15C0](v49, a2);
    MEMORY[0x193AD15C0](8069154, 0xE300000000000000);

    MEMORY[0x193AD15C0](v42, v43);

    v45 = v63;
    v44 = v64;
    v46 = sub_18E72B028();

    if (v46 <= 0)
    {
      v47 = 0;
    }

    else
    {
      v47 = 10;
    }

    if (v46 <= 0)
    {
      v48 = 0xE000000000000000;
    }

    else
    {
      v48 = 0xE100000000000000;
    }

    v63 = v45;
    v64 = v44;

    MEMORY[0x193AD15C0](v47, v48);

    MEMORY[0x193AD15C0](125, 0xE100000000000000);

    return v63;
  }

  v6 = 0;
  v54 = v5 + 4;
  v7 = v4 - 1;
  v51 = v4 - 1;
  v52 = v5;
  v53 = v4;
  while (v6 < v5[2])
  {
    v8 = v54[v6];
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5D0, &qword_18E72E030);
      v9 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v9);
      v10 = 0;
      v11 = result - 32;
      if (result < 32)
      {
        v11 = result - 25;
      }

      v9[2] = v4;
      v9[3] = 2 * (v11 >> 3);
      while (1)
      {
        v9[v10 + 4] = v10;
        if (v7 == v10)
        {
          break;
        }

        if (__OFADD__(++v10, 1))
        {
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
          goto LABEL_68;
        }
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v56 = v6;
    v12 = v9[2];
    if (v12)
    {
      v13 = 0;
      v14 = v9 + 4;
      v15 = v8 * v4;
      v16 = (v8 * v4) >> 64 != (v8 * v4) >> 63;
      v17 = MEMORY[0x1E69E7CD0];
      do
      {
        v19 = v14[v13];
        if (v19 != v8)
        {
          if (v16)
          {
            goto LABEL_63;
          }

          v20 = v15 + v19;
          if (__OFADD__(v15, v19))
          {
            goto LABEL_64;
          }

          if (v20 >= 0)
          {
            v21 = v15 + v19;
          }

          else
          {
            v21 = v20 + 63;
          }

          if ((v20 - (v21 & 0xFFFFFFFFFFFFFFC0)) < 0)
          {
            goto LABEL_65;
          }

          if (v20 < -63)
          {
            goto LABEL_66;
          }

          if (v21 >> 6 >= *(a4 + 16))
          {
            goto LABEL_67;
          }

          if ((*(a4 + 32 + 8 * (v21 >> 6)) & (1 << (v20 - (v21 & 0xC0u)))) != 0)
          {
            v22 = *(v17 + 40);
            v23 = v14[v13];
            result = sub_18E72B878();
            v24 = -1 << *(v17 + 32);
            v25 = result & ~v24;
            if ((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
            {
              v26 = ~v24;
              while (*(*(v17 + 48) + 8 * v25) != v19)
              {
                v25 = (v25 + 1) & v26;
                if (((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
                {
                  goto LABEL_21;
                }
              }
            }

            else
            {
LABEL_21:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v63 = v17;
              result = sub_18E6A0220(v19, v25, isUniquelyReferenced_nonNull_native);
              v17 = v63;
            }
          }
        }

        ++v13;
      }

      while (v13 != v12);

      v27 = *(v17 + 16);
      if (!v27)
      {
LABEL_44:

        v28 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

    else
    {

      v17 = MEMORY[0x1E69E7CD0];
      v27 = *(MEMORY[0x1E69E7CD0] + 16);
      if (!v27)
      {
        goto LABEL_44;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5D0, &qword_18E72E030);
    v28 = swift_allocObject();
    v29 = _swift_stdlib_malloc_size(v28);
    v30 = v29 - 32;
    if (v29 < 32)
    {
      v30 = v29 - 25;
    }

    v28[2] = v27;
    v28[3] = 2 * (v30 >> 3);
    v31 = sub_18E6A0340(&v63, v28 + 4, v27, v17);
    result = sub_18E687EE8();
    if (v31 != v27)
    {
      goto LABEL_69;
    }

LABEL_45:
    v32 = v28[2];
    if (v32)
    {
      v33 = v28 + 4;
      do
      {
        v38 = *v33++;
        v37 = v38;
        v61 = 0x202020200ALL;
        v62 = 0xE500000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5C0, &qword_18E72E020);
        if (swift_dynamicCast())
        {
          sub_18E689D58(&v58, &v63);
          __swift_project_boxed_opaque_existential_1(&v63, v65);
          *(&v59 + 1) = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(&v58);
          sub_18E72B5D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
          sub_18E72B6C8();
          __swift_destroy_boxed_opaque_existential_0(&v58);
          v40 = 0;
          v39 = 0xE000000000000000;
          __swift_destroy_boxed_opaque_existential_0(&v63);
        }

        else
        {
          AssociatedConformanceWitness = 0;
          v58 = 0u;
          v59 = 0u;
          sub_18E6C026C(&v58);
          v63 = v8;
          v40 = sub_18E72AFF8();
          v39 = v41;
        }

        MEMORY[0x193AD15C0](v40, v39);

        MEMORY[0x193AD15C0](540945696, 0xE400000000000000);
        if (swift_dynamicCast())
        {
          sub_18E689D58(&v58, &v63);
          __swift_project_boxed_opaque_existential_1(&v63, v65);
          *(&v59 + 1) = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(&v58);
          sub_18E72B5D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
          sub_18E72B6C8();
          __swift_destroy_boxed_opaque_existential_0(&v58);
          v36 = 0xE000000000000000;
          __swift_destroy_boxed_opaque_existential_0(&v63);
          v34 = 0;
        }

        else
        {
          AssociatedConformanceWitness = 0;
          v58 = 0u;
          v59 = 0u;
          sub_18E6C026C(&v58);
          v63 = v37;
          v34 = sub_18E72AFF8();
          v36 = v35;
        }

        MEMORY[0x193AD15C0](v34, v36);

        MEMORY[0x193AD15C0](59, 0xE100000000000000);
        MEMORY[0x193AD15C0](v61, v62);

        --v32;
      }

      while (v32);
    }

    v6 = v56 + 1;

    v7 = v51;
    v5 = v52;
    v4 = v53;
    if (v56 + 1 == v55)
    {

      v42 = v66;
      v43 = v67;
      goto LABEL_56;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_18E6C026C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5C8, &qword_18E72E028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_18E6C02D4(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = **(v2 + 16);
  if (*a1 == v4)
  {
    *a2 = 1;
  }

  return v3 != v4;
}

uint64_t sub_18E6C02FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E5D8, &qword_18E72E038);
    v3 = sub_18E72B5A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x193AD1DC0](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void *sub_18E6C0424(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for FailureDependencyGraph.Subgraph(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  return a1;
}

void *sub_18E6C04D4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for FailureDependencyGraph.Edge(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

void *sub_18E6C0584(void *a1, _OWORD *a2, uint64_t a3, void (*a4)(void))
{
  a4(*a1);
  v6 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t sub_18E6C05C8(uint64_t *a1, int a2)
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

uint64_t sub_18E6C0610(uint64_t result, int a2, int a3)
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

uint64_t sub_18E6C065C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_18E6C06F8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    v3 = v6 + 3;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 != 2)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  v9 = *a1;
}

void *sub_18E6C07E4(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 3;
  if (v6 < 3)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a2;
  }

  else if (v8 == 2)
  {
    v9 = *a2;
  }

  else if (v8 == 3)
  {
    v9 = *a2 | (a2[2] << 16);
  }

  else
  {
    v9 = *a2;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 3;
  v6 = v9 + 3;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 2)
  {
    *a1 = *a2;
    *(a1 + v5) = 2;
  }

  else if (v6 == 1)
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

unsigned __int8 *sub_18E6C0930(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 8uLL)
    {
      v7 = 8;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 3;
    if (v8 >= 3)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 3;
      v8 = v11 + 3;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 2)
    {
      v13 = *a1;
    }

    else
    {
      (*(v6 + 8))(a1, v5);
    }

    v14 = a2[v7];
    v15 = v14 - 3;
    if (v14 < 3)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
LABEL_36:
        if (v14 == 2)
        {
          *a1 = *a2;
          a1[v7] = 2;
        }

        else if (v14 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 1;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 0;
        }

        return a1;
      }

      v17 = *a2;
    }

    else if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
    }

    else
    {
      v17 = *a2;
    }

    v18 = (v17 | (v15 << (8 * v7))) + 3;
    v14 = v17 + 3;
    if (v7 < 4)
    {
      v14 = v18;
    }

    goto LABEL_36;
  }

  return a1;
}

void *sub_18E6C0B50(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 3;
  if (v5 < 3)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 3;
  v5 = v8 + 3;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 2)
  {
    *result = *a2;
    v11 = 2;
  }

  else
  {
    v10 = result;
    if (v5 == 1)
    {
      (*(v3 + 32))();
      result = v10;
      v11 = 1;
    }

    else
    {
      (*(v3 + 32))();
      result = v10;
      v11 = 0;
    }
  }

  *(result + v4) = v11;
  return result;
}

unsigned __int8 *sub_18E6C0C94(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 2)
  {
    v13 = *a1;
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v14 = *(a2 + v7);
  v15 = v14 - 3;
  if (v14 >= 3)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a2;
      }

      else if (v16 == 3)
      {
        v17 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v17 = *a2;
      }

LABEL_34:
      v18 = (v17 | (v15 << (8 * v7))) + 3;
      v14 = v17 + 3;
      if (v7 < 4)
      {
        v14 = v18;
      }

      goto LABEL_36;
    }

    if (v16)
    {
      v17 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v14 == 2)
  {
    *a1 = *a2;
    v19 = 2;
  }

  else if (v14 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v19 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v19 = 0;
  }

  a1[v7] = v19;
  return a1;
}

uint64_t sub_18E6C0EAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_18E6C0FC4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

uint64_t sub_18E6C117C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 3;
  if (v4 >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 3;
    LODWORD(v4) = v7 + 3;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_18E6C121C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_18E6C130C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for ReplicatingList.Storage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v20 - v14);
  (*(v16 + 16))(&v20 - v14, v3, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return (*(v6 + 32))(a2, v15, v5);
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v6 + 32))(v10, v15, v5);
  }

  else
  {
    v19 = *v15;
    sub_18E72B298();
  }

  (*(v11 + 8))(v5, v11);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_18E6C1510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 == 1)
  {
    (*(*(a3 - 8) + 32))(a4, a1, a3);
    type metadata accessor for ReplicatingList.Storage();
  }

  else
  {
    if (a2)
    {
      v7 = sub_18E6844A4(a1, a2, a3);
      (*(*(a3 - 8) + 8))(a1, a3);
      *a4 = v7;
    }

    else
    {
      (*(*(a3 - 8) + 32))(a4, a1, a3);
    }

    type metadata accessor for ReplicatingList.Storage();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6C1670(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = type metadata accessor for ReplicatingList.Storage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v14 - v8);
  (*(v6 + 16))(&v14 - v8, v2, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 8))(v9, v5);
      return 1;
    }

    else
    {
      v12 = *v9;
      v13 = sub_18E72B228();

      return v13;
    }
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }
}

uint64_t sub_18E6C17B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = type metadata accessor for ReplicatingList.Storage();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  (*(v13 + 16))(&v16 - v11, v4, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = (*(*(v8 - 8) + 32))(a3, v12, v8);
    if (!a1)
    {
      return result;
    }

    __break(1u);
  }

  else if (result == 2)
  {
    v15 = *v12;
    sub_18E72B298();
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6C190C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v9 = type metadata accessor for ReplicatingList.Storage();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v19 - v12);
  (*(v10 + 16))(&v19 - v12, v4, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    if (!a2)
    {
      v18 = *(v10 + 8);
      v18(v4, v9);
      (*(*(v8 - 8) + 32))(v4, a1, v8);
      swift_storeEnumTagMultiPayload();
      return v18(v13, v9);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v20 = *v13;
  sub_18E72B278();
  sub_18E72B1D8();
  v15 = v20;
  sub_18E68E2C0(a2, v20);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v17 = v15;
  }

  (*(*(v8 - 8) + 40))(v17 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * a2, a1, v8);
  (*(v10 + 8))(v4, v9);
  *v4 = v20;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6C1B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for ReplicatingList.Storage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v22 - v18);
  (*(v13 + 16))(&v22 - v18, v3, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = (*(v6 + 32))(v9, v19, v5);
    if (!a1)
    {
      (*(v11 + 8))(v5, v11);
      (*(v6 + 8))(v9, v5);
      swift_storeEnumTagMultiPayload();
      return (*(v13 + 40))(v3, v17, v12);
    }

    __break(1u);
    goto LABEL_10;
  }

  if (result != 2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v23 = *v19;
  sub_18E72B278();
  sub_18E72B248();
  (*(v6 + 8))(v9, v5);
  v21 = v23;
  if (sub_18E72B228() == 1)
  {
    sub_18E72B298();
    swift_storeEnumTagMultiPayload();
    (*(v13 + 40))(v3, v17, v12);
  }

  else
  {
    (*(v13 + 8))(v3, v12);
    *v3 = v21;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_18E6C1E54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v34 = *(v12 + 24);
  v13 = type metadata accessor for ReplicatingList.Storage();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = (&v31 - v19);
  if (a1 >= 1)
  {
    v32 = v20;
    v33 = v2;
    (*(v20 + 16))(&v31 - v19, v2, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v5 + 32))(v9, v21, v4);
        v23 = sub_18E6C2BD4(v4, v4);
        v24 = *(v23 + 52);
        v25 = *(v5 + 72);
        v26 = (*(v5 + 80) + *(v23 + 48)) & ~*(v5 + 80);
        swift_allocObject();
        sub_18E72B198();
        (*(v5 + 16))(v27, v9, v4);
        sub_18E72B278();
        sub_18E6C2234(a1, v4);
        v28 = sub_18E72B1C8();

        (*(v5 + 8))(v9, v4);
      }

      else
      {
        v29 = *v21;
        sub_18E72B298();
        sub_18E6C2234(a1, v4);
        (*(v5 + 8))(v9, v4);
        v28 = sub_18E72B1C8();
      }
    }

    else
    {
      (*(v5 + 32))(v11, v21, v4);
      if (a1 == 1)
      {
        (*(v34 + 8))(v4);
        (*(v5 + 8))(v11, v4);
LABEL_10:
        v30 = v33;
        swift_storeEnumTagMultiPayload();
        return (*(v32 + 40))(v30, v17, v13);
      }

      v28 = sub_18E6C2234(a1, v4);
      (*(v5 + 8))(v11, v4);
    }

    *v17 = v28;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6C2234(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 8))(v9, v8);
  v10 = sub_18E6844A4(v7, a1, a2);
  (*(v4 + 8))(v7, a2);
  return v10;
}

uint64_t sub_18E6C2328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for ReplicatingList.Storage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v31 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v30 - v18);
  if (a1 < 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = sub_18E6C1670(a2);
  v20 = __OFSUB__(result, a1);
  v21 = result - a1;
  if (v20)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_18E6C1670(a2);
  if (v21 < result)
  {
    v22 = v13;
    (*(v13 + 16))(v19, v2, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      return (*(v13 + 8))(v19, v12);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v24 = v30;
      (*(v30 + 32))(v9, v19, v6);
      v25 = v31;
      (*(v11 + 8))(v6, v11);
      (*(v24 + 8))(v9, v6);
    }

    else if (v21 == 1)
    {
      v25 = v31;
      v27 = *v19;
      sub_18E72B298();
    }

    else
    {
      if (v21)
      {
        *&v32 = *v19;
        sub_18E72B278();
        swift_getWitnessTable();
        sub_18E72B368();
        v32 = v34;
        v33 = v35;
        sub_18E72B468();
        swift_getWitnessTable();
        v28 = sub_18E72B288();
        v29 = v31;
        *v31 = v28;
        swift_storeEnumTagMultiPayload();
        return (*(v13 + 40))(v3, v29, v12);
      }

      v26 = *v19;
      sub_18E72B298();

      v25 = v31;
      (*(v11 + 8))(v6, v11);
      (*(v30 + 8))(v9, v6);
    }

    swift_storeEnumTagMultiPayload();
    return (*(v22 + 40))(v2, v25, v12);
  }

  return result;
}

uint64_t sub_18E6C270C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  result = sub_18E6C1670(a2);
  if (result == v3)
  {
    return result;
  }

  v4 = sub_18E6C1670(a2);
  v5 = sub_18E6C1670(a2);
  if (v4 > v3)
  {
    v6 = __OFSUB__(v5, v3);
    result = v5 - v3;
    if (!v6)
    {

      return sub_18E6C2328(result, a2);
    }

    goto LABEL_13;
  }

  v6 = __OFSUB__(v3, v5);
  result = v3 - v5;
  if (v6)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return sub_18E6C1E54(result, a2);
}

uint64_t sub_18E6C27CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E6C1670(a1);
  *a2 = result;
  return result;
}

void (*sub_18E6C27F4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_18E6C28C4(v6, *a2, a3);
  return sub_18E6C287C;
}

void sub_18E6C287C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_18E6C28C4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_18E6C17B8(a2, a3, v9);
  return sub_18E6C2994;
}

void sub_18E6C2994(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void *sub_18E6C2A08@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_18E6C2A20(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_18E6C2A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_18E72B6D8();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_18E6C2AC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_18E6C2B20(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_18E707F08();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_18E6C2BD4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_18E6C2C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for ReplicatingList.Storage();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_18E6C2CD8(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

    return v3;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 3;
      v9 = v12 + 3;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 == 2)
  {
    *a1 = *a2;
    *(a1 + v5) = 2;
  }

  else if (v9 == 1)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = 0;
  }

  return v3;
}

float64x2_t sub_18E6C2EFC@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_18E6C2F10(uint64_t a1)
{
  result = sub_18E6C2F38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6C2F38()
{
  result = qword_1EAC8E6E0;
  if (!qword_1EAC8E6E0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E6E0);
  }

  return result;
}

uint64_t EventPhase.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

unint64_t sub_18E6C301C()
{
  result = qword_1EAC8E6E8;
  if (!qword_1EAC8E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

float64x2_t sub_18E6C31FC@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E6C3210(uint64_t a1)
{
  result = sub_18E6C32DC(&qword_1EAC8E6F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6C3264(uint64_t a1)
{
  result = sub_18E6C32DC(&qword_1EAC8E6F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6C32DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AnyGestureNode.tag.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

Swift::Void __swiftcall AnyGestureNode.startTrackingEvents(with:)(Swift::OpaquePointer with)
{
  v1 = *(with._rawValue + 2);
  if (v1)
  {
    v2 = (with._rawValue + 32);
    do
    {
      v3 = *v2++;
      sub_18E695BE4(&v4, v3);
      --v1;
    }

    while (v1);
  }
}

void GestureNode.update(value:isFinalUpdate:)(unint64_t a1, char a2)
{
  if (*(*v2 + 368) == MEMORY[0x1E69E7CA8] + 8)
  {
    if (a2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    sub_18E6964A4(a1, v3, 0);
    sub_18E69E818(v4, v3);
  }

  else
  {
    sub_18E6C4554(a1, a2 & 1, 0);
  }
}

void GestureNode.update<A>(someValue:isFinalUpdate:)(uint64_t a1, char a2)
{
  v4 = *(*v2 + 368);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - v10;
  if (v4 == MEMORY[0x1E69E7CA8] + 8 && v8 == MEMORY[0x1E69E7CA8] + 8)
  {
    if (a2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    sub_18E6964A4(v7, v13, 0);
    sub_18E69E818(v14, v13);
  }

  else if (*(*(v8 - 8) + 64) == v9)
  {
    (*(v5 + 16))(&v15 - v10);
    sub_18E6C4554(v11, a2 & 1, 0);
    (*(v5 + 8))(v11, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t GestureNode.__allocating_init(traits:tag:relations:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_18E6C8474(a1, a2, a3, a4);

  return v4;
}

uint64_t AnyGestureNode.traits.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

uint64_t AnyGestureNode.tag.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t (*AnyGestureNode.tag.modify(void *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v3;

  return sub_18E6C3694;
}

uint64_t sub_18E6C3694(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 32);
  *(v1 + 24) = *a1;
}

uint64_t (*AnyGestureNode.traits.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;

  return sub_18E6C3704;
}

uint64_t sub_18E6C3704(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

uint64_t sub_18E6C3740(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_18E6C3784(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 64);
  *a1 = Strong;
  a1[1] = v4;
  return sub_18E6C37D4;
}

uint64_t sub_18E6C37D4(uint64_t *a1)
{
  v1 = *a1;
  *(a1[2] + 64) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_18E6C38D4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*v1 + 256);
    v4 = result + 32;
    do
    {
      v5 = *(v4 + 1);
      v6 = *(v4 + 2);
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      v10[0] = *v4;
      v10[1] = v5;
      v10[2] = v6;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      sub_18E67EEC4(v7, v8, v9);
      v3(v10);
      result = sub_18E682A3C(v7, v8, v9);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_18E6C39F8(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*v1 + 272);
    v4 = result + 32;
    do
    {
      v5 = *(v4 + 1);
      v6 = *(v4 + 2);
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      v10[0] = *v4;
      v10[1] = v5;
      v10[2] = v6;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      sub_18E67EEC4(v7, v8, v9);
      v3(v10);
      result = sub_18E682A3C(v7, v8, v9);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t AnyGestureNode.__deallocating_deinit()
{
  AnyGestureNode.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t GestureNode.delegate.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 192);
  return result;
}

uint64_t GestureNode.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*GestureNode.delegate.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 192);
  *a1 = Strong;
  a1[1] = v4;
  return sub_18E6C3F2C;
}

uint64_t sub_18E6C3F2C(uint64_t *a1)
{
  v1 = *a1;
  *(a1[2] + 192) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void (*GestureNode.container.modify(uint64_t **a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_18E6C3784(v3);
  return sub_18E6C3FE8;
}

void sub_18E6C3FE8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    sub_18E67F50C();
  }

  free(v3);
}

uint64_t GestureNode.init(traits:tag:relations:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_18E6C83D4(a1, a2, a3, a4);

  return v4;
}

uint64_t GestureNode.__allocating_init()()
{
  v7 = 0;
  _sSa8GesturesAA15GestureRelationVRszlE7defaultSayACGvgZ_0();
  v2 = v1;
  v3 = *(v0 + 48);
  v4 = *(v0 + 52);
  swift_allocObject();
  v5 = sub_18E6C83D4(&v7, 0, 0, v2);

  return v5;
}

uint64_t GestureNode.relations.getter()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[21];
  v4 = *(v3 + 16);
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  if (!v4)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_21:

    return v8;
  }

  v6 = 0;
  v23 = v3 + 32;
  v7 = (v2 + 48);
  v8 = MEMORY[0x1E69E7CC0];
  v22 = v3;
  while (v6 < *(v2 + 16))
  {
    if (v6 >= *(v3 + 16))
    {
      goto LABEL_23;
    }

    v10 = *(v7 - 2);
    v9 = *(v7 - 1);
    v11 = *(v23 + 8 * v6);
    v12 = *v7;
    sub_18E67EEC4(v10, v9, *v7);
    sub_18E67EEC4(v10, v9, v12);

    v14 = sub_18E6C8148(v13, v10, v9, v12);
    sub_18E682A3C(v10, v9, v12);
    sub_18E682A3C(v10, v9, v12);

    v15 = *(v14 + 16);
    v16 = *(v8 + 16);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v17 <= *(v8 + 24) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = sub_18E6EE080(result, v18, 1, v8);
      v8 = result;
      if (*(v14 + 16))
      {
LABEL_16:
        if ((*(v8 + 24) >> 1) - *(v8 + 16) < v15)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v8 + 16);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_27;
          }

          *(v8 + 16) = v21;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v6;
    v7 += 24;
    v3 = v22;
    if (v4 == v6)
    {
      goto LABEL_21;
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
  return result;
}

unint64_t sub_18E6C4348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[33];
  if (!v2)
  {
    *a1 = 0;
    *(a1 + 8) = -1;
    return result;
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < 0 || v3 >= v2)
  {
    goto LABEL_14;
  }

  v4 = v1[37];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v1[32];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[34];
  if (v6 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_19;
  }

  v9 = v6 % v7;
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9 < *(v8 + 16))
    {
      v10 = v8 + 16 * v9;
      v11 = *(v10 + 32);
      *a1 = v11;
      v12 = *(v10 + 40);
      *(a1 + 8) = v12;
      return sub_18E6AA03C(v11, v12);
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_18E6C43EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 368);
  type metadata accessor for GesturePhase();
  v4 = type metadata accessor for RingBuffer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  if (v3 == MEMORY[0x1E69E7CA8] + 8)
  {
    v10 = *(v1 + 272);
    v11 = *(v1 + 280);
    v12 = (v1 + 296);
    *a1 = *(v1 + 256);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    v13 = *(v1 + 288);
    *(a1 + 32) = v13;
    *(a1 + 40) = *v12;

    return sub_18E6AA03C(v11, v13);
  }

  else
  {
    sub_18E67DBC8(v8);
    sub_18E71F180(v4, a1);
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_18E6C4554(uint64_t a1, char a2, char a3)
{
  v7 = *(*v3 + 368);
  v8 = type metadata accessor for GesturePhase();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  if (v7 == MEMORY[0x1E69E7CA8] + 8)
  {
    if (a2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    sub_18E6964A4(v11, v14, a3 & 1);
    sub_18E69E818(v15, v14);
  }

  else
  {
    (*(*(v7 - 8) + 16))(v13, a1, v7);
    swift_storeEnumTagMultiPayload();
    sub_18E682A9C(v13, a3 & 1);
    (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_18E6C46E8(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v123 = a2;
  v122 = a1;
  v4 = sub_18E72AE18();
  v5 = *(v4 - 8);
  isa = v5[8].isa;
  v7 = MEMORY[0x1EEE9AC00](v4);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = *(v3 + 264);
  if (v11)
  {
    v129 = v10;
    v113 = &v112 - v9;
    v153 = 1;
    v12 = *(v3 + 256);
    v14 = *(v3 + 272);
    v13 = *(v3 + 280);
    v15 = *(v3 + 288);
    v16 = *(v3 + 296);
    v117 = *(v3 + 304);

    v115 = v13;
    v116 = v15;
    v17 = v15;
    v18 = v14;
    sub_18E6AA03C(v13, v17);
    v20 = v11;
    v118 = v16;
    v21 = v16;
    if (v11 < 1)
    {
LABEL_33:
      v142 = v12;
      v143 = v11;
      v144 = v18;
      v145 = v115;
      v146 = v116;
      *v147 = *v152;
      *&v147[3] = *&v152[3];
      v148 = v118;
      v149 = v117;
      v150 = v21;
      v151 = v20;
      sub_18E68B548(&v142, &qword_1EAC8E720, &qword_18E72E4A0);
      if (v11 >= 1)
      {
LABEL_34:
        if (swift_unknownObjectUnownedLoadStrong())
        {
          sub_18E6C5A18(v3);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v22 = v11;
      v23 = 0;
      v128 = v14 + 32;
      v126 = v5 + 2;
      v127 = v5 + 1;
      v114 = v22;
      v24 = v22 + 1;
      *&v19 = 136315650;
      v120 = v19;
      v21 = v118;
      v121 = v14;
      v125 = v12;
      v119 = v4;
      while (1)
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
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
          swift_once();
LABEL_41:
          v80 = qword_1EAC8E570;
          goto LABEL_47;
        }

        if (v21 >= *(v18 + 16))
        {
          goto LABEL_56;
        }

        if (!v12)
        {
          goto LABEL_57;
        }

        v135 = v24;
        v24 = v4;
        v27 = v128 + 16 * v21;
        v28 = *(v27 + 8);
        v14 = (v21 + 1) % v12;
        v29 = *(v3 + 240);
        v30 = *(v3 + 248);
        v136 = *v27;
        sub_18E6AA03C(v136, v28);
        sub_18E6AA03C(v29, v30);
        v132 = v14;
        v133 = v29;
        v134 = v30;
        v137 = v28;
        if (v28 <= 2)
        {
          v31 = sub_18E69C624(&v153, v122);
          if (v31)
          {
            break;
          }
        }

        v32 = *(v3 + 264);
        if (!v32)
        {
          goto LABEL_58;
        }

        v33 = *(v3 + 296);
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v34 = *(v3 + 272);
        if (v33 >= *(v34 + 16))
        {
          goto LABEL_60;
        }

        v35 = *(v3 + 256);
        if (!v35)
        {
          goto LABEL_61;
        }

        v36 = v34 + 16 * v33;
        v37 = *(v36 + 32);
        v38 = *(v36 + 40);
        *(v3 + 296) = (v33 + 1) % v35;
        v39 = __OFSUB__(v32, 1);
        v40 = v32 - 1;
        if (v39)
        {
          goto LABEL_62;
        }

        *(v3 + 264) = v40;
        v41 = *(v3 + 240);
        *(v3 + 240) = v37;
        v42 = *(v3 + 248);
        *(v3 + 248) = v38;
        sub_18E6AA03C(v37, v38);
        sub_18E69E818(v41, v42);
        v43 = *(v3 + 240);
        v44 = *(v3 + 248);
        if (v44 == 4)
        {
          v45 = v129;
          if (!v43)
          {
            v46 = *(v3 + 176);

            *(v3 + 176) = MEMORY[0x1E69E7CD0];
            v43 = *(v3 + 240);
            v44 = *(v3 + 248);
          }
        }

        else
        {
          v45 = v129;
        }

        v142 = v43;
        LOBYTE(v143) = v44;
        v140 = v29;
        v141 = v30;
        sub_18E6AA03C(v43, v44);
        v47 = sub_18E680FFC();
        v131 = v43;
        LODWORD(v130) = v44;
        if (v47)
        {
          v48 = qword_1EAC8E570;
          if (qword_1EAC8D8F8 != -1)
          {
            swift_once();
            v48 = qword_1EAC8E570;
          }
        }

        else
        {
          v48 = qword_1ED6F7FA0;
          if (qword_1ED6F7F98 != -1)
          {
            swift_once();
            v48 = qword_1ED6F7FA0;
          }
        }

        v49 = __swift_project_value_buffer(v24, v48);
        (v126->isa)(v45, v49, v24);
        v50 = v140;
        v51 = v141;
        v52 = v142;
        v53 = v143;
        sub_18E6AA03C(v140, v141);
        sub_18E6AA03C(v52, v53);

        sub_18E6AA03C(v50, v51);
        sub_18E6AA03C(v52, v53);
        v54 = sub_18E72ADF8();
        v55 = v24;
        v56 = sub_18E72B3E8();

        if (os_log_type_enabled(v54, v56))
        {
          v57 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v138 = v124;
          *v57 = v120;
          v58 = AnyGestureNode.debugLabel.getter();
          v60 = sub_18E6C5E8C(v58, v59, &v138);

          *(v57 + 4) = v60;
          *(v57 + 12) = 2080;
          v61 = sub_18E6C5B28(v50, v51);
          v63 = v62;
          sub_18E69E818(v50, v51);
          sub_18E69E818(v50, v51);
          v64 = sub_18E6C5E8C(v61, v63, &v138);

          *(v57 + 14) = v64;
          *(v57 + 22) = 2080;
          v65 = sub_18E6C5B28(v52, v53);
          v67 = v66;
          sub_18E69E818(v52, v53);
          sub_18E69E818(v52, v53);
          v68 = sub_18E6C5E8C(v65, v67, &v138);

          *(v57 + 24) = v68;
          _os_log_impl(&dword_18E67C000, v54, v56, "%s updated phase: %s -> %s", v57, 0x20u);
          v69 = v124;
          swift_arrayDestroy();
          MEMORY[0x193AD25C0](v69, -1, -1);
          v70 = v57;
          v18 = v121;
          MEMORY[0x193AD25C0](v70, -1, -1);

          v4 = v119;
          (v127->isa)(v129, v119);
        }

        else
        {
          sub_18E69E818(v52, v53);
          sub_18E69E818(v50, v51);
          sub_18E69E818(v52, v53);
          sub_18E69E818(v50, v51);

          (v127->isa)(v45, v55);
          v4 = v55;
        }

        v72 = v135;
        v71 = v136;
        Strong = swift_unknownObjectUnownedLoadStrong();
        v12 = v125;
        v21 = v132;
        v14 = v133;
        if (Strong)
        {
          v74 = Strong;
          v75 = swift_unknownObjectRetain();
          sub_18E6A2C3C(v3, (v75 + 208), v74);
          swift_unknownObjectRelease_n();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v25 = *(v3 + 192);
          ObjectType = swift_getObjectType();
          (*(v25 + 32))(v3, &v142, &v140, ObjectType, v25);
          sub_18E69E818(v71, v137);
          sub_18E69E818(v14, v134);
          sub_18E69E818(v131, v130);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_18E69E818(v71, v137);
          sub_18E69E818(v14, v134);
          sub_18E69E818(v131, v130);
        }

        v24 = v72 - 1;
        v23 = 1;
        if (v24 <= 1)
        {
          v20 = 0;
          v11 = v114;
          goto LABEL_33;
        }
      }

      sub_18E6C5430(*(v31 + 16));
      if (v76)
      {
        v130 = v135 - 2;
        v77 = *(v3 + 240);
        v78 = *(v3 + 248);
        v140 = v77;
        v141 = v78;
        v138 = v29;
        v139 = v30;
        sub_18E6AA03C(v77, v78);
        v79 = sub_18E680FFC();
        LODWORD(v135) = v78;
        v131 = v77;
        if (v79)
        {
          if (qword_1EAC8D8F8 == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_63;
        }

        if (qword_1ED6F7F98 != -1)
        {
          swift_once();
        }

        v80 = qword_1ED6F7FA0;
LABEL_47:
        v81 = __swift_project_value_buffer(v24, v80);
        (v126->isa)(v113, v81, v24);
        v82 = v138;
        v83 = v139;
        v84 = v140;
        v85 = v141;
        sub_18E6AA03C(v138, v139);
        sub_18E6AA03C(v84, v85);
        sub_18E6AA03C(v82, v83);
        v129 = v84;
        sub_18E6AA03C(v84, v85);

        v86 = sub_18E72ADF8();
        LODWORD(v84) = sub_18E72B3E8();

        LODWORD(v128) = v84;
        if (os_log_type_enabled(v86, v84))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v142 = v88;
          *v87 = v120;
          v126 = v86;
          v89 = AnyGestureNode.debugLabel.getter();
          v91 = sub_18E6C5E8C(v89, v90, &v142);

          *(v87 + 4) = v91;
          *(v87 + 12) = 2080;
          v92 = sub_18E6C5B28(v82, v83);
          v94 = v93;
          sub_18E69E818(v82, v83);
          sub_18E69E818(v82, v83);
          v95 = sub_18E6C5E8C(v92, v94, &v142);
          v12 = v125;

          *(v87 + 14) = v95;
          *(v87 + 22) = 2080;
          v96 = v129;
          v97 = sub_18E6C5B28(v129, v85);
          v99 = v98;
          sub_18E69E818(v96, v85);
          sub_18E69E818(v96, v85);
          v100 = sub_18E6C5E8C(v97, v99, &v142);

          *(v87 + 24) = v100;
          v101 = v126;
          _os_log_impl(&dword_18E67C000, v126, v128, "%s updated phase: %s -> %s", v87, 0x20u);
          swift_arrayDestroy();
          v102 = v88;
          v14 = v132;
          MEMORY[0x193AD25C0](v102, -1, -1);
          MEMORY[0x193AD25C0](v87, -1, -1);

          (v127->isa)(v113, v119);
        }

        else
        {
          v103 = v129;
          sub_18E69E818(v129, v85);
          sub_18E69E818(v82, v83);
          sub_18E69E818(v103, v85);
          sub_18E69E818(v82, v83);

          (v127->isa)(v113, v24);
        }

        v104 = swift_unknownObjectUnownedLoadStrong();
        v105 = v121;
        v106 = v134;
        v107 = v133;
        if (v104)
        {
          v108 = v104;
          v109 = swift_unknownObjectRetain();
          sub_18E6A2C3C(v3, (v109 + 208), v108);
          swift_unknownObjectRelease_n();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v110 = *(v3 + 192);
          v111 = swift_getObjectType();
          (*(v110 + 32))(v3, &v140, &v138, v111, v110);
          swift_unknownObjectRelease();
        }

        sub_18E69E818(v136, v137);

        v142 = v12;
        v143 = v114;
        v144 = v105;
        v145 = v115;
        v146 = v116;
        *v147 = *v152;
        *&v147[3] = *&v152[3];
        v148 = v118;
        v149 = v117;
        v150 = v14;
        v151 = v130;
        sub_18E68B548(&v142, &qword_1EAC8E720, &qword_18E72E4A0);
        sub_18E69E818(v107, v106);
        sub_18E69E818(v131, v135);
        goto LABEL_34;
      }

      v142 = v12;
      v143 = v114;
      v144 = v18;
      v145 = v115;
      v146 = v116;
      *v147 = *v152;
      *&v147[3] = *&v152[3];
      v148 = v118;
      v149 = v117;
      v150 = v14;
      v151 = v135 - 2;
      sub_18E68B548(&v142, &qword_1EAC8E720, &qword_18E72E4A0);

      sub_18E69E818(v29, v30);
      sub_18E69E818(v136, v137);
      if (v23)
      {
        goto LABEL_34;
      }
    }

    return sub_18E688410(v153);
  }

  return result;
}

void sub_18E6C5430(unsigned int a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_18E6AA03C(*(v1 + 40), *(v1 + 48));
    sub_18E69E818(v3, v4);
  }

  else
  {
    sub_18E6AA03C(*(v1 + 40), 0);
    if (v3 == a1)
    {
      return;
    }
  }

  v5 = *(v1 + 64);
  if (!v5)
  {
    goto LABEL_19;
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(v1 + 56);
  if (!v6)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v1 + 72);
  v8 = *(v1 + 96);
  if (v8 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_18;
  }

  v9 = v8 % v6;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v10 = v7 + 16 * v9;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  sub_18E6AA03C(v11, v12);
  sub_18E6C5D2C(a1, v11, v12, &v15);
  sub_18E69E818(v11, v12);
  v13 = v16;
  v14 = v15;
  if (v16 == 255)
  {
LABEL_20:
    sub_18E6AA028(v14, 255);
    __break(1u);
    return;
  }

  sub_18E69E818(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v14;
  *(v1 + 48) = v13;
}

uint64_t sub_18E6C5574()
{
  v1 = *v0;
  sub_18E694018((v0 + 184));
  v2 = *(*v0 + 384);
  v3 = *(v1 + 368);
  v4 = type metadata accessor for GesturePhaseQueue();
  v5 = *(*(v4 - 8) + 8);

  return v5(&v0[v2], v4);
}

uint64_t AnyGestureNode.hashValue.getter()
{
  sub_18E72B888();
  v0 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v0);
  return sub_18E72B8E8();
}

uint64_t sub_18E6C5694()
{
  v1 = *v0;
  sub_18E72B888();
  v2 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E6C56E0()
{
  v1 = *v0;
  v2 = sub_18E72AFA8();
  return MEMORY[0x193AD1DF0](v2);
}

uint64_t sub_18E6C5710()
{
  sub_18E72B888();
  v1 = *v0;
  v2 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E6C5754(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = (result + 240);
  v5 = *(result + 248);
  if (v5 < 4 || *v4)
  {
    v6 = *(result + 264);
    if (v6)
    {
      v7 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v7 < 0 || v7 >= v6)
      {
        goto LABEL_64;
      }

      v8 = *(result + 296);
      v9 = __OFADD__(v8, v7);
      v10 = v8 + v7;
      if (v9)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v11 = *(result + 256);
      if (!v11)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v12 = *(result + 272);
      if (v10 == 0x8000000000000000 && v11 == -1)
      {
        goto LABEL_70;
      }

      v13 = v10 % v11;
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v13 >= *(v12 + 16))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v14 = v12 + 16 * v13;
      v15 = (v14 + 32);
      v16 = *(v14 + 40);
    }

    else
    {
      v16 = *(result + 248);
      v15 = (result + 240);
    }

    result = *v15;
    if (v16 == 3)
    {
      v17 = *v15 >> 62 == 0;
      *v15;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      result = sub_18E683B80(result);
      goto LABEL_23;
    }

    if (v5 < 4 || !*v4)
    {
LABEL_23:
      v18 = *(v3 + 264);
      if (v18)
      {
        goto LABEL_24;
      }

LABEL_49:
      v26 = *(v3 + 248);
      if (v26 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v27 = *(result + 264);
    if (!v27)
    {
      goto LABEL_46;
    }

    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v28 < 0 || v28 >= v27)
    {
      goto LABEL_72;
    }

    v29 = *(result + 296);
    v9 = __OFADD__(v29, v28);
    v30 = v29 + v28;
    if (v9)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v31 = *(result + 256);
    if (!v31)
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v32 = *(result + 272);
    if (v30 == 0x8000000000000000 && v31 == -1)
    {
      goto LABEL_77;
    }

    v33 = v30 % v31;
    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

    if (v33 >= *(v32 + 16))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    if (*(v32 + 16 * v33 + 40) != 3)
    {
LABEL_46:
      result = sub_18E6959C4(result);
      if (result)
      {
        *(v1 + 40) = 0;
      }
    }
  }

  *(v1 + 41) = 1;
  v18 = *(v3 + 264);
  if (!v18)
  {
    goto LABEL_49;
  }

LABEL_24:
  v19 = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v19 < 0 || v19 >= v18)
  {
    goto LABEL_58;
  }

  v20 = *(v3 + 296);
  v9 = __OFADD__(v20, v19);
  v21 = v20 + v19;
  if (v9)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v22 = *(v3 + 256);
  if (!v22)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v23 = *(v3 + 272);
  if (v21 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_69;
  }

  v24 = v21 % v22;
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if (v24 >= *(v23 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v25 = v23 + 16 * v24;
  v26 = *(v25 + 40);
  if (v26 != 3)
  {
    v4 = (v25 + 32);
LABEL_50:
    if (v26 < 4 || *v4)
    {
      return result;
    }
  }

LABEL_52:
  sub_18E68E9DC(v3);

  v34 = *(v1 + 48);
  if (v34)
  {
    v35 = *(v3 + 16);
    v36 = *(v2 + 48);

    sub_18E68EB58((v34 + 16), v35);
    sub_18E68EB58((v34 + 24), v35);
  }

  return result;
}

uint64_t sub_18E6C5A18(uint64_t result)
{
  v2 = *(result + 248);
  v3 = v2 == 4 && *(result + 240) == 0;
  if (!v3)
  {
    if ((v2 & 0xFE) != 2)
    {
      return result;
    }

    v4 = v1;
    v5 = result;
    sub_18E6C4348(&v11);
    if (v12 == 255)
    {
      v7 = v5;
      if ((*(v5 + 248) & 0xFE) != 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = v12 & 0xFE;
      sub_18E6AA028(v11, v12);
      v3 = v6 == 2;
      v1 = v4;
      v7 = v5;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    v8 = *(v1 + 112);
    v9 = sub_18E687600(v5);
    sub_18E687F10(v9);

    v7 = v5;
LABEL_10:
    v10 = v7;

    sub_18E6880B0(&v11, v10);
  }

  return sub_18E68FEDC(result);
}

uint64_t sub_18E6C5B28(unint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_18E6AA03C(a1, 1);
      return 0x657669746361;
    }

    else
    {
      strcpy(v6, "blocked(by: ");
      BYTE5(v6[1]) = 0;
      HIWORD(v6[1]) = -5120;
      sub_18E6AA03C(a1, 0);
      v5 = sub_18E72B778();
      MEMORY[0x193AD15C0](v5);

      MEMORY[0x193AD15C0](41, 0xE100000000000000);
      return v6[0];
    }
  }

  else if (a2 == 2)
  {
    sub_18E6AA03C(a1, 2);
    return 0x6465646E65;
  }

  else if (a2 == 3)
  {
    sub_18E6AA03C(a1, 3);
    v3 = sub_18E6C5C8C();
    sub_18E69E818(a1, 3);
    return v3;
  }

  else if (a1)
  {
    sub_18E6AA03C(1uLL, 4);
    return 0x656C626973736F70;
  }

  else
  {
    sub_18E6AA03C(0, 4);
    return 1701602409;
  }
}

uint64_t sub_18E6C5C8C()
{
  v0 = GestureFailureReason.description.getter();
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    MEMORY[0x193AD15C0]();

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    return 0x2864656C696166;
  }

  else
  {

    return 0x64656C696166;
  }
}

void sub_18E6C5D2C(unsigned int a1@<W0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 <= 1u)
  {
    v7 = a2;
    v8 = a3 != 0;
LABEL_8:
    sub_18E6AA03C(v7, v8);
    v9 = 0;
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = a2;
    v8 = 2;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    sub_18E6AA03C(a2, 3);
    sub_18E69E818(a2, 3);
  }

  else
  {
    sub_18E6AA03C(a2 != 0, 4);
  }

  a1 = 0;
  v9 = -1;
LABEL_10:
  *a4 = a1;
  *(a4 + 8) = v9;
}

uint64_t sub_18E6C5DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  if (v2 >= *(v3 + 16))
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v1[1];
  if (v2 >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = v4 + 24 * v2;
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = *(v3 + 8 * v2 + 32);
  v9 = *(v5 + 48);
  v1[3] = v2 + 1;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  sub_18E67EEC4(v6, v7, v9);
}

uint64_t sub_18E6C5E8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18E6C5F58(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18E69F7B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_18E6C5F58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18E6C6064(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_18E72B618();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_18E6C6064(uint64_t a1, unint64_t a2)
{
  v4 = sub_18E6C60B0(a1, a2);
  sub_18E6C61E0(&unk_1F01A5150);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_18E6C60B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18E6C62CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18E72B618();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18E72B078();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18E6C62CC(v10, 0);
        result = sub_18E72B5B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18E6C61E0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_18E6C6340(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18E6C62CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E728, &qword_18E72E4A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18E6C6340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E728, &qword_18E72E4A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_18E6C6434(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
    v2 = sub_18E72B598();
    v17 = v2;
    sub_18E72B4D8();
    if (sub_18E72B548())
    {
      type metadata accessor for AnyGestureNode();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_18E688420(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        sub_18E72B888();
        v4 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v4);
        result = sub_18E72B8E8();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }

      while (sub_18E72B548());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_18E6C6634(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E718, &qword_18E72E498);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_18E72B888();
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          MEMORY[0x193AD1DF0](2);
          sub_18E70D89C(v35, v20);
          v24 = v21;
        }

        else
        {
          MEMORY[0x193AD1DF0](3);
          v24 = v20;
        }

        MEMORY[0x193AD1DF0](v24);
      }

      else if (v22)
      {
        MEMORY[0x193AD1DF0](1);
        _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x193AD1DF0](0);
        sub_18E72B8C8();
      }

      result = sub_18E72B8E8();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_18E6C6914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E730, &qword_18E72E4B0);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_18E72B878();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_18E6C6B38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_18E72B888();
  v5 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v5);
  sub_18E72B8E8();
  v6 = -1 << *(a2 + 32);
  result = sub_18E72B4B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_18E6C6BE0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  v7 = a1 & 0xFF0000;
  sub_18E72B8A8();
  if ((a1 & 0xFF0000) != 0x20000)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  result = sub_18E72B8E8();
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_15:
    *(a2 + 2) = 0;
    *a2 = 512;
    return result;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(v5 + 48) + 3 * v10);
    if (*v12 != a1 || ((((a1 & 0x100) != 0) ^ v12[1]) & 1) != 0)
    {
      goto LABEL_6;
    }

    v13 = v12[2];
    if (v13 != 2)
    {
      break;
    }

    if (v7 == 0x20000)
    {
      goto LABEL_12;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v7 == 0x20000 || (HIWORD(a1) & 1) != (v13 & 1))
  {
    goto LABEL_6;
  }

LABEL_12:
  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E6C7174();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 3 * v10);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = v17[2];
  *a2 = v18;
  *(a2 + 1) = v19;
  *(a2 + 2) = v17;
  result = sub_18E6C76D0(v10);
  *v2 = v20;
  return result;
}

unint64_t sub_18E6C6D9C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_18E72B518();
  v6 = swift_unknownObjectRetain();
  v7 = sub_18E6C6434(v6, v5);
  v16 = v7;
  v8 = *(v7 + 40);
  sub_18E72B888();

  v9 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v9);
  v10 = sub_18E72B8E8();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (*(*(v7 + 48) + 8 * v12) != a2)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v7 + 48) + 8 * v12);
  result = sub_18E68F790(v12);
  if (v14 == a2)
  {
    *v2 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_18E6C6ECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E718, &qword_18E72E498);
  v2 = *v0;
  v3 = sub_18E72B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_18E67EEC4(v19, v20, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_18E6C7034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E730, &qword_18E72E4B0);
  v2 = *v0;
  v3 = sub_18E72B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_18E6C7174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA20, &qword_18E72C8D8);
  v2 = *v0;
  v3 = sub_18E72B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v21[2] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 3 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = *v18;
      v20 = v18[1];
      LOBYTE(v18) = v18[2];
      v21 = (*(v4 + 48) + v17);
      *v21 = v19;
      v21[1] = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_18E6C72D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA28, &unk_18E72C8E0);
  v2 = *v0;
  v3 = sub_18E72B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_18E6C7410(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E718, &qword_18E72E498);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_18E72B888();
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          MEMORY[0x193AD1DF0](2);

          sub_18E70D89C(v34, v20);
          v24 = v21;
        }

        else
        {
          MEMORY[0x193AD1DF0](3);
          v24 = v20;
        }

        MEMORY[0x193AD1DF0](v24);
      }

      else if (v22)
      {
        MEMORY[0x193AD1DF0](1);

        _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x193AD1DF0](0);
        sub_18E72B8C8();
      }

      result = sub_18E72B8E8();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_38;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_36;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E6C76D0(unint64_t a1)
{
  result = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v24 = *v1;

    v8 = sub_18E72B4A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v10 = v24;
      do
      {
        v12 = *(v10 + 40);
        v13 = (*(v10 + 48) + 3 * v6);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        sub_18E72B888();
        MEMORY[0x193AD1DF0](v14);
        MEMORY[0x193AD1DF0](v15);
        sub_18E72B8A8();
        if (v16 != 2)
        {
          MEMORY[0x193AD1DF0](v16 & 1);
        }

        v17 = sub_18E72B8E8() & v7;
        if (a1 >= v9)
        {
          v10 = v24;
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v10 = v24;
          if (v17 >= v9)
          {
            goto LABEL_13;
          }
        }

        if (a1 >= v17)
        {
LABEL_13:
          v18 = *(v10 + 48);
          v19 = v18 + 3 * a1;
          v20 = (v18 + 3 * v6);
          if (a1 != v6 || v19 >= v20 + 3)
          {
            v11 = *v20;
            *(v19 + 2) = *(v20 + 2);
            *v19 = v11;
            a1 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    result = v24;
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(result + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v23;
    ++*(result + 36);
  }

  return result;
}

uint64_t sub_18E6C78E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v33 = *v4;
  v8 = *(*v4 + 40);
  sub_18E72B888();
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v34, a2);
      v9 = a3;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v9 = a2;
    }

    MEMORY[0x193AD1DF0](v9);
  }

  else if (a4)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  v10 = sub_18E72B8E8();
  v11 = -1 << *(v33 + 32);
  v12 = v10 & ~v11;
  if (((*(v33 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_36:
    v23 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = *v30;
    sub_18E67EEC4(a2, a3, a4);
    sub_18E6C7D0C(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v30 = *&v34[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v32 = ~v11;
  while (1)
  {
    v16 = *(v33 + 48) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (v19 <= 1)
    {
      break;
    }

    if (v19 != 2)
    {
      if (a4 == 3)
      {
        sub_18E682A3C(v17, v18, 3);
        sub_18E682A3C(a2, a3, 3);
        if (v17 == a2)
        {
          goto LABEL_39;
        }

        goto LABEL_14;
      }

LABEL_12:
      v13 = a2;
      v14 = a3;
      v15 = a4;
LABEL_13:
      sub_18E67EEC4(v13, v14, v15);
      sub_18E682A3C(v17, v18, v19);
      sub_18E682A3C(a2, a3, a4);
      goto LABEL_14;
    }

    if (a4 != 2)
    {
      sub_18E67EEC4(a2, a3, a4);
      v13 = v17;
      v14 = v18;
      v15 = 2;
      goto LABEL_13;
    }

    sub_18E67EEC4(a2, a3, 2);
    sub_18E67EEC4(v17, v18, 2);
    sub_18E67EEC4(a2, a3, 2);
    sub_18E67EEC4(v17, v18, 2);
    v22 = sub_18E7098C0(v17, a2);
    sub_18E682A3C(v17, v18, 2);
    sub_18E682A3C(a2, a3, 2);
    sub_18E682A3C(a2, a3, 2);
    sub_18E682A3C(v17, v18, 2);
    if ((v22 & 1) != 0 && v18 == a3)
    {
      goto LABEL_38;
    }

LABEL_14:
    v12 = (v12 + 1) & v32;
    if (((*(v33 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (!*(v16 + 16))
  {
    if (a4)
    {
      goto LABEL_12;
    }

    sub_18E682A3C(*v16, *(v16 + 8), 0);
    sub_18E682A3C(a2, a3, 0);
    if (v17 == a2)
    {
      goto LABEL_39;
    }

    goto LABEL_14;
  }

  if (a4 != 1)
  {
    sub_18E67EEC4(a2, a3, a4);
    v13 = v17;
    v14 = v18;
    v15 = 1;
    goto LABEL_13;
  }

  if (v17 != a2 || v18 != a3)
  {
    v21 = sub_18E72B7C8();
    sub_18E67EEC4(a2, a3, 1);
    sub_18E67EEC4(v17, v18, 1);
    sub_18E682A3C(v17, v18, 1);
    sub_18E682A3C(a2, a3, 1);
    if (v21)
    {
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  sub_18E682A3C(a2, a3, 1);
LABEL_38:
  sub_18E682A3C(a2, a3, v19);
LABEL_39:
  v26 = *(v33 + 48) + 24 * v12;
  v27 = *v26;
  v28 = *(v26 + 8);
  *a1 = *v26;
  *(a1 + 8) = v28;
  v29 = *(v26 + 16);
  *(a1 + 16) = v29;
  sub_18E67EEC4(v27, v28, v29);
  return 0;
}

uint64_t sub_18E6C7D0C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_18E6C6634(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_18E6C6ECC();
        goto LABEL_43;
      }

      sub_18E6C7410(v10 + 1);
    }

    v12 = *v5;
    v13 = *(*v5 + 40);
    sub_18E72B888();
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        MEMORY[0x193AD1DF0](2);
        sub_18E70D89C(v33, v9);
        v14 = a2;
      }

      else
      {
        MEMORY[0x193AD1DF0](3);
        v14 = v9;
      }

      MEMORY[0x193AD1DF0](v14);
    }

    else if (a3)
    {
      MEMORY[0x193AD1DF0](1);
      _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x193AD1DF0](0);
      sub_18E72B8C8();
    }

    result = sub_18E72B8E8();
    v15 = -1 << *(v12 + 32);
    a4 = result & ~v15;
    if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v16 = ~v15;
      do
      {
        v20 = *(v12 + 48) + 24 * a4;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        if (v23 > 1)
        {
          if (v23 == 2)
          {
            if (a3 != 2)
            {
              sub_18E67EEC4(v9, a2, a3);
              v17 = v21;
              v18 = v22;
              v19 = 2;
              goto LABEL_20;
            }

            sub_18E67EEC4(v9, a2, 2);
            sub_18E67EEC4(v21, v22, 2);
            sub_18E67EEC4(v9, a2, 2);
            sub_18E67EEC4(v21, v22, 2);
            v26 = sub_18E7098C0(v21, v9);
            sub_18E682A3C(v21, v22, 2);
            sub_18E682A3C(v9, a2, 2);
            sub_18E682A3C(v9, a2, 2);
            result = sub_18E682A3C(v21, v22, 2);
            if ((v26 & 1) != 0 && v22 == a2)
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (a3 != 3)
            {
LABEL_19:
              v17 = v9;
              v18 = a2;
              v19 = a3;
LABEL_20:
              sub_18E67EEC4(v17, v18, v19);
              sub_18E682A3C(v21, v22, v23);
              result = sub_18E682A3C(v9, a2, a3);
              goto LABEL_21;
            }

            sub_18E682A3C(v21, v22, 3);
            result = sub_18E682A3C(v9, a2, 3);
            if (v21 == v9)
            {
              goto LABEL_47;
            }
          }
        }

        else if (*(v20 + 16))
        {
          if (a3 != 1)
          {
            sub_18E67EEC4(v9, a2, a3);
            v17 = v21;
            v18 = v22;
            v19 = 1;
            goto LABEL_20;
          }

          if (v21 == v9 && v22 == a2)
          {
            goto LABEL_46;
          }

          v25 = sub_18E72B7C8();
          sub_18E67EEC4(v9, a2, 1);
          sub_18E67EEC4(v21, v22, 1);
          sub_18E682A3C(v21, v22, 1);
          result = sub_18E682A3C(v9, a2, 1);
          if (v25)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (a3)
          {
            goto LABEL_19;
          }

          sub_18E682A3C(*v20, *(v20 + 8), 0);
          result = sub_18E682A3C(v9, a2, 0);
          if (v21 == v9)
          {
            goto LABEL_47;
          }
        }

LABEL_21:
        a4 = (a4 + 1) & v16;
      }

      while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_43:
  v27 = *v32;
  *(*v32 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v28 = *(v27 + 48) + 24 * a4;
  *v28 = v9;
  *(v28 + 8) = a2;
  *(v28 + 16) = a3;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_46:
    sub_18E67EEC4(v9, a2, 1);
    sub_18E67EEC4(v9, a2, 1);
    sub_18E682A3C(v9, a2, 1);
    sub_18E682A3C(v9, a2, 1);
LABEL_47:
    result = sub_18E72B808();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

uint64_t sub_18E6C8148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_18E6EE388(0, v4, 0);
  v5 = v38;
  v7 = a1 + 56;
  v8 = -1 << *(a1 + 32);
  result = sub_18E72B498();
  v10 = result;
  v11 = a1;
  v12 = 0;
  v13 = a2;
  v14 = a3;
  v31 = v4;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v11 + 32))
  {
    v16 = v10 >> 6;
    if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v33 = v12;
    v34 = *(v11 + 36);
    v17 = (*(v11 + 48) + 3 * v10);
    v37 = *v17;
    v35 = v17[2];
    v36 = v17[1];
    result = sub_18E67EEC4(v13, v14, a4);
    v18 = a4;
    v20 = *(v38 + 16);
    v19 = *(v38 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_18E6EE388((v19 > 1), v20 + 1, 1);
    }

    *(v38 + 16) = v20 + 1;
    v21 = v38 + 32 * v20;
    *(v21 + 32) = v37;
    *(v21 + 33) = v36;
    *(v21 + 34) = v35;
    *(v21 + 40) = v13;
    *(v21 + 48) = v14;
    *(v21 + 56) = v18;
    v11 = a1;
    v15 = 1 << *(a1 + 32);
    if (v10 >= v15)
    {
      goto LABEL_22;
    }

    a4 = v18;
    v7 = a1 + 56;
    v22 = *(a1 + 56 + 8 * v16);
    if ((v22 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v10 & 0x3F));
    if (v23)
    {
      v15 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v16 << 6;
      v25 = v16 + 1;
      v26 = (a1 + 64 + 8 * v16);
      while (v25 < (v15 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_18E6C87A0(v10, v34, 0);
          v11 = a1;
          v13 = a2;
          v14 = a3;
          v15 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_18E6C87A0(v10, v34, 0);
      v11 = a1;
      v13 = a2;
      v14 = a3;
    }

LABEL_4:
    v12 = v33 + 1;
    v10 = v15;
    if (v33 + 1 == v31)
    {
      return v5;
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
  return result;
}

uint64_t sub_18E6C83D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *a1;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  v10 = *(v8 + 368);
  sub_18E71F59C(v4 + *(*v4 + 384));
  v12 = v9;
  return sub_18E67E5EC(&v12, a2, a3, a4);
}

uint64_t sub_18E6C8474(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_18E6C83D4(a1, a2, a3, a4);
}

unint64_t sub_18E6C84DC()
{
  result = qword_1EAC8E710;
  if (!qword_1EAC8E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E710);
  }

  return result;
}

uint64_t sub_18E6C87A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_18E6C87AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E738, &qword_18E72E4B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E6C881C()
{
  result = qword_1EAC8D8B0;
  if (!qword_1EAC8D8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E740, &qword_18E72E4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8D8B0);
  }

  return result;
}

Gestures::GestureTrait::AttributeKey sub_18E6C88B8()
{
  v0._countAndFlagsBits = 0x756F43746E696F70;
  v0._object = 0xEA0000000000746ELL;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

Gestures::GestureTrait::AttributeKey sub_18E6C8900()
{
  v0._countAndFlagsBits = 0x746E756F43706174;
  v0._object = 0xE800000000000000;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

Gestures::GestureTrait::AttributeKey sub_18E6C8944()
{
  v0._countAndFlagsBits = 0x446D756D696E696DLL;
  v0._object = 0xEF6E6F6974617275;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

Gestures::GestureTrait::AttributeKey sub_18E6C8994()
{
  v0._countAndFlagsBits = 0x4D6D756D6978616DLL;
  v0._object = 0xEF746E656D65766FLL;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

void *sub_18E6C89E4@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t sub_18E6C8A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v25 = sub_18E72B918();
  v24 = *(v25 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v40 + 1) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  sub_18E72B8F8();
  v23 = v9;
  sub_18E72B908();
  sub_18E72B6B8();

  sub_18E72B748();
  v40 = v37;
  v41 = v38;
  v39 = v36;
  if (*(&v38 + 1))
  {
    v28 = v4;
    v27 = a3;
    v26 = a2;
    while (1)
    {
      v11 = v39;
      sub_18E68A8E4(&v40, v35);
      if (!*(&v11 + 1))
      {
        break;
      }

      sub_18E6CA09C(v35, &v36);
      if (*(&v37 + 1))
      {
        sub_18E68A8E4(&v36, &v33);
        sub_18E69F7B4(&v33, v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD30, "8g");
        if ((swift_dynamicCast() & 1) == 0)
        {
          v31 = 0;
          memset(v30, 0, sizeof(v30));
          sub_18E68B548(v30, &qword_1EAC8DD38, &qword_18E72CD50);
LABEL_14:
          v13 = v34;
          v14 = __swift_project_boxed_opaque_existential_1(&v33, v34);
          v15 = sub_18E72B438();
          v16 = *(v15 - 8);
          v17 = *(v16 + 64);
          MEMORY[0x1EEE9AC00](v15);
          v19 = &v22 - v18;
          v20 = *(v13 - 8);
          (*(v20 + 16))(&v22 - v18, v14, v13);
          (*(v20 + 56))(v19, 0, 1, v13);
          sub_18E6C9080(v19, v11, *(&v11 + 1), v13);

          (*(v16 + 8))(v19, v15);
          __swift_destroy_boxed_opaque_existential_0(v35);
          __swift_destroy_boxed_opaque_existential_0(&v33);
          goto LABEL_4;
        }

        sub_18E689D58(v30, &v36);
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        if ((sub_18E72B318() & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_0(&v36);
          goto LABEL_14;
        }

        __swift_destroy_boxed_opaque_existential_0(v35);

        __swift_destroy_boxed_opaque_existential_0(&v36);
        v12 = &v33;
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_0(v35);

      sub_18E68B548(&v36, &qword_1EAC8DD40, &qword_18E72CD58);
LABEL_4:
      sub_18E72B748();
      v40 = v37;
      v41 = v38;
      v39 = v36;
      if (!*(&v38 + 1))
      {
        goto LABEL_15;
      }
    }

    v12 = v35;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v12);
    goto LABEL_4;
  }

LABEL_15:
  (*(v24 + 8))(v23, v25);
}

uint64_t sub_18E6C8EC8(uint64_t a1, uint64_t a2)
{
  v17[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  v16 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v17, v15);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_18E68B548(&v18, &qword_1EAC8DCC8, &qword_18E72CD10);
  v23 = v16;
  v18 = 0u;
  v19 = 0u;
  v21 = v15[0];
  v22 = v15[1];
  v20 = 0uLL;
  (*(a2 + 24))(&v18, a1, a2);
  v6 = sub_18E6C96B4();
  sub_18E6C9B94();
  v8 = v7;
  v10 = v9;

  MEMORY[0x193AD15C0](v8, v10);

  v11 = sub_18E6C9D10();
  v13 = v12;

  MEMORY[0x193AD15C0](v11, v13);

  sub_18E6A9C8C(&v18);
  return v6;
}

uint64_t sub_18E6C9080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v7 = sub_18E72B438();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v51 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  (*(v8 + 16))(v12, a1, v7);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    return (*(v8 + 8))(v12, v7);
  }

  (*(v13 + 32))(v19, v12, a4);
  v76 = 0;
  v77 = 0xE000000000000000;
  if (a3)
  {
    *&v67 = v51;
    *(&v67 + 1) = a3;

    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v67, *(&v67 + 1));
  }

  v21 = *(v13 + 16);
  v21(v17, v19, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCB8, &qword_18E72CD00);
  v22 = swift_dynamicCast();
  v23 = v52;
  if (v22)
  {
    sub_18E689D58(&v67, v73);
    v66[3] = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v66);
    v21(boxed_opaque_existential_0, v19, a4);
    sub_18E6A9C30(v23, &v60);
    v55 = 0u;
    v56 = 0u;
    *&v57 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    sub_18E69F7B4(v66, v58);
    v53[3] = v63;
    v53[4] = v64;
    v53[1] = v61;
    v53[2] = v62;
    v54 = v65;
    v53[0] = v60;
    if (*(&v64 + 1))
    {
      v69 = v62;
      v70 = v63;
      v71 = v64;
      v72 = v65;
      v67 = v60;
      v68 = v61;
      v25 = *(&v62 + 1);
      v26 = v60;
      sub_18E6A9C8C(&v67);
      result = __swift_destroy_boxed_opaque_existential_0(v66);
      v27 = (v26 & 8) == 0;
      v28 = __OFADD__(v25, v27);
      v29 = v25 + v27;
      if (v28)
      {
        __break(1u);
        return result;
      }

      v30 = v19;
      *(&v57 + 1) = v29;
    }

    else
    {
      v30 = v19;
      __swift_destroy_boxed_opaque_existential_0(v66);
      sub_18E68B548(v53, &qword_1EAC8DCC8, &qword_18E72CD10);
      *(&v57 + 1) = 0;
    }

    v69 = v57;
    v70 = v58[0];
    v71 = v58[1];
    v72 = v59;
    v67 = v55;
    v68 = v56;
    v31 = v74;
    v32 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v32 + 24))(&v67, v31, v32);
    v33 = sub_18E6C96B4();
    v35 = v34;
    sub_18E6C9B94();
    v37 = v36;
    v39 = v38;
    *&v60 = v33;
    *(&v60 + 1) = v35;

    MEMORY[0x193AD15C0](v37, v39);

    v40 = v60;
    v41 = sub_18E6C9D10();
    v43 = v42;
    v60 = v40;

    MEMORY[0x193AD15C0](v41, v43);

    MEMORY[0x193AD15C0](v60, *(&v60 + 1));

    sub_18E6A9C8C(&v67);
    __swift_destroy_boxed_opaque_existential_0(v73);
    v23 = v52;
  }

  else
  {
    *&v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_18E68B548(&v67, &qword_1EAC8DCC0, &qword_18E72CD08);
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    v30 = v19;
    sub_18E72B798();
    MEMORY[0x193AD15C0](v67, *(&v67 + 1));
  }

  v45 = v76;
  v44 = v77;
  v46 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v46 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = *(v23 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_18E6ED4A8(0, *(v47 + 2) + 1, 1, v47);
    }

    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_18E6ED4A8((v48 > 1), v49 + 1, 1, v47);
    }

    result = (*(v13 + 8))(v30, a4);
    *(v47 + 2) = v49 + 1;
    v50 = &v47[16 * v49];
    *(v50 + 4) = v45;
    *(v50 + 5) = v44;
    *(v23 + 80) = v47;
  }

  else
  {
    (*(v13 + 8))(v30, a4);
  }

  return result;
}